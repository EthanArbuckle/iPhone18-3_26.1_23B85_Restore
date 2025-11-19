unint64_t sub_20C41E1BC()
{
  result = qword_27C7BB1C8;
  if (!qword_27C7BB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1C8);
  }

  return result;
}

unint64_t sub_20C41E214()
{
  result = qword_27C7BB1D0;
  if (!qword_27C7BB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1D0);
  }

  return result;
}

unint64_t sub_20C41E26C()
{
  result = qword_27C7BB1D8;
  if (!qword_27C7BB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1D8);
  }

  return result;
}

unint64_t sub_20C41E2C4()
{
  result = qword_27C7BB1E0;
  if (!qword_27C7BB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1E0);
  }

  return result;
}

unint64_t sub_20C41E31C()
{
  result = qword_27C7BB1E8;
  if (!qword_27C7BB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1E8);
  }

  return result;
}

unint64_t sub_20C41E374()
{
  result = qword_27C7BB1F0;
  if (!qword_27C7BB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1F0);
  }

  return result;
}

unint64_t sub_20C41E3CC()
{
  result = qword_27C7BB1F8;
  if (!qword_27C7BB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1F8);
  }

  return result;
}

unint64_t sub_20C41E424()
{
  result = qword_27C7BB200;
  if (!qword_27C7BB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB200);
  }

  return result;
}

unint64_t sub_20C41E47C()
{
  result = qword_27C7BB208;
  if (!qword_27C7BB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB208);
  }

  return result;
}

unint64_t sub_20C41E4D4()
{
  result = qword_27C7BB210;
  if (!qword_27C7BB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB210);
  }

  return result;
}

unint64_t sub_20C41E52C()
{
  result = qword_27C7BB218;
  if (!qword_27C7BB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB218);
  }

  return result;
}

unint64_t sub_20C41E584()
{
  result = qword_27C7BB220;
  if (!qword_27C7BB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB220);
  }

  return result;
}

unint64_t sub_20C41E5DC()
{
  result = qword_27C7BB228;
  if (!qword_27C7BB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB228);
  }

  return result;
}

unint64_t sub_20C41E634()
{
  result = qword_27C7BB230;
  if (!qword_27C7BB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB230);
  }

  return result;
}

unint64_t sub_20C41E68C()
{
  result = qword_27C7BB238;
  if (!qword_27C7BB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB238);
  }

  return result;
}

unint64_t sub_20C41E6E4()
{
  result = qword_27C7BB240;
  if (!qword_27C7BB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB240);
  }

  return result;
}

unint64_t sub_20C41E73C()
{
  result = qword_27C7BB248;
  if (!qword_27C7BB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB248);
  }

  return result;
}

uint64_t sub_20C41E790(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x800000020C467650 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000020C467670 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C467690 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C4676B0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C4676D0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C4676F0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_20C4608D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657A695377656976 && a2 == 0xEF6465676E616843)
  {

    return 7;
  }

  else
  {
    v5 = sub_20C4608D0();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_20C41EA38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A695377656976 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t sub_20C41EB48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t sub_20C41EC64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB250, &qword_20C462D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C41ECCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C41ED84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C4608D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C41EE04(uint64_t a1)
{
  v2 = sub_20C41F768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41EE40(uint64_t a1)
{
  v2 = sub_20C41F768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C41EE7C()
{
  v1 = 0x6546726174617661;
  if (*v0 != 1)
  {
    v1 = 0x6176416863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_20C41EEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C4206DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C41EF1C(uint64_t a1)
{
  v2 = sub_20C41F5EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41EF58(uint64_t a1)
{
  v2 = sub_20C41F5EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C41EF94(uint64_t a1)
{
  v2 = sub_20C41F6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41EFD0(uint64_t a1)
{
  v2 = sub_20C41F6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C41F00C(uint64_t a1)
{
  v2 = sub_20C41F910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41F048(uint64_t a1)
{
  v2 = sub_20C41F910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonogramAction.encode(to:)(void *a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB258, &qword_20C462D30);
  v38 = *(v40 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x28223BE20](v40);
  v36 = &v32 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB260, &qword_20C462D38);
  v37 = *(v39 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  v35 = &v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB270, &qword_20C462D48);
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = type metadata accessor for MonogramAction();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB278, &qword_20C462D50);
  v18 = *(v41 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v41);
  v21 = &v32 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C41F5EC();
  sub_20C4609C0();
  sub_20C41F640(v42, v17);
  v23 = (*(v7 + 48))(v17, 2, v6);
  if (v23)
  {
    if (v23 == 1)
    {
      v43 = 0;
      sub_20C41F910();
      v24 = v41;
      sub_20C460870();
      (*(v32 + 8))(v13, v33);
      return (*(v18 + 8))(v21, v24);
    }

    else
    {
      v45 = 2;
      sub_20C41F6A4();
      v30 = v36;
      v31 = v41;
      sub_20C460870();
      (*(v38 + 8))(v30, v40);
      return (*(v18 + 8))(v21, v31);
    }
  }

  else
  {
    v26 = v34;
    sub_20C41F6F8(v17, v34);
    v44 = 1;
    sub_20C41F768();
    v27 = v35;
    v28 = v41;
    sub_20C460870();
    sub_20C420144(&qword_27C7BB298);
    v29 = v39;
    sub_20C4608B0();
    (*(v37 + 8))(v27, v29);
    sub_20C41F8A8(v26);
    return (*(v18 + 8))(v21, v28);
  }
}

uint64_t type metadata accessor for MonogramAction()
{
  result = qword_27C7BB2F0;
  if (!qword_27C7BB2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C41F5EC()
{
  result = qword_27C7BB280;
  if (!qword_27C7BB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB280);
  }

  return result;
}

uint64_t sub_20C41F640(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C41F6A4()
{
  result = qword_27C7BB288;
  if (!qword_27C7BB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB288);
  }

  return result;
}

uint64_t sub_20C41F6F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C41F768()
{
  result = qword_27C7BB290;
  if (!qword_27C7BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB290);
  }

  return result;
}

uint64_t sub_20C41F7BC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Monogram();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C41F800()
{
  result = qword_27C7BB2B0;
  if (!qword_27C7BB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB2B0);
  }

  return result;
}

unint64_t sub_20C41F854()
{
  result = qword_27C7BB2B8;
  if (!qword_27C7BB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB2B8);
  }

  return result;
}

uint64_t sub_20C41F8A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C41F910()
{
  result = qword_27C7BB2C0;
  if (!qword_27C7BB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB2C0);
  }

  return result;
}

uint64_t MonogramAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB2C8, &qword_20C462D58);
  v60 = *(v55 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v55);
  v59 = &v49 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB2D0, &qword_20C462D60);
  v56 = *(v54 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v58 = &v49 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB2D8, &qword_20C462D68);
  v57 = *(v53 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v53);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB2E0, &unk_20C462D70);
  v62 = *(v10 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = type metadata accessor for MonogramAction();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_20C41F5EC();
  v23 = v63;
  sub_20C4609B0();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v63 = v14;
  v25 = v57;
  v24 = v58;
  v50 = v18;
  v51 = v20;
  v26 = v59;
  v27 = v60;
  v52 = 0;
  v28 = v61;
  v29 = sub_20C460850();
  v30 = (2 * *(v29 + 16)) | 1;
  v65 = v29;
  v66 = v29 + 32;
  v67 = 0;
  v68 = v30;
  v31 = sub_20C41ED38();
  if (v31 != 3 && v67 == v68 >> 1)
  {
    if (v31)
    {
      v32 = v62;
      if (v31 == 1)
      {
        v69 = 1;
        sub_20C41F768();
        v33 = v24;
        v34 = v52;
        sub_20C4607F0();
        if (!v34)
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
          sub_20C420144(&qword_27C7BB2E8);
          v36 = v50;
          v37 = v54;
          sub_20C460840();
          (*(v56 + 8))(v33, v37);
          (*(v32 + 8))(v13, v10);
          swift_unknownObjectRelease();
          (*(*(v35 - 8) + 56))(v36, 0, 2, v35);
          v38 = v51;
          sub_20C4200E0(v36, v51);
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v69 = 2;
      sub_20C41F6A4();
      v46 = v52;
      sub_20C4607F0();
      if (v46)
      {
LABEL_16:
        (*(v32 + 8))(v13, v10);
        goto LABEL_10;
      }

      (*(v27 + 8))(v26, v55);
      (*(v32 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
      v38 = v51;
      (*(*(v48 - 8) + 56))(v51, 2, 2, v48);
    }

    else
    {
      v69 = 0;
      sub_20C41F910();
      v44 = v52;
      sub_20C4607F0();
      v45 = v62;
      if (v44)
      {
        (*(v62 + 8))(v13, v10);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v64);
      }

      (*(v25 + 8))(v9, v53);
      (*(v45 + 8))(v13, v10);
      swift_unknownObjectRelease();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
      v38 = v51;
      (*(*(v47 - 8) + 56))(v51, 1, 2, v47);
    }

LABEL_19:
    sub_20C4200E0(v38, v28);
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v39 = sub_20C460770();
  swift_allocError();
  v41 = v40;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670) + 48);
  *v41 = v63;
  sub_20C460800();
  sub_20C460760();
  (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
  swift_willThrow();
  (*(v62 + 8))(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v64);
}

uint64_t sub_20C4200E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonogramAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C420144(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB268, &qword_20C462D40);
    sub_20C41F7BC(&qword_27C7BB2A0);
    sub_20C41F7BC(&qword_27C7BB2A8);
    sub_20C41F800();
    sub_20C41F854();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C420268()
{
  sub_20C4202C0();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20C4202C0()
{
  if (!qword_28110B3B8)
  {
    type metadata accessor for Monogram();
    sub_20C4139F0();
    v0 = sub_20C460980();
    if (!v1)
    {
      atomic_store(v0, &qword_28110B3B8);
    }
  }
}

unint64_t sub_20C420370()
{
  result = qword_27C7BB300;
  if (!qword_27C7BB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB300);
  }

  return result;
}

unint64_t sub_20C4203C8()
{
  result = qword_27C7BB308;
  if (!qword_27C7BB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB308);
  }

  return result;
}

unint64_t sub_20C420420()
{
  result = qword_27C7BB310;
  if (!qword_27C7BB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB310);
  }

  return result;
}

unint64_t sub_20C420478()
{
  result = qword_27C7BB318;
  if (!qword_27C7BB318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB318);
  }

  return result;
}

unint64_t sub_20C4204D0()
{
  result = qword_27C7BB320;
  if (!qword_27C7BB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB320);
  }

  return result;
}

unint64_t sub_20C420528()
{
  result = qword_27C7BB328;
  if (!qword_27C7BB328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB328);
  }

  return result;
}

unint64_t sub_20C420580()
{
  result = qword_27C7BB330;
  if (!qword_27C7BB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB330);
  }

  return result;
}

unint64_t sub_20C4205D8()
{
  result = qword_27C7BB338;
  if (!qword_27C7BB338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB338);
  }

  return result;
}

unint64_t sub_20C420630()
{
  result = qword_27C7BB340;
  if (!qword_27C7BB340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB340);
  }

  return result;
}

unint64_t sub_20C420688()
{
  result = qword_27C7BB348;
  if (!qword_27C7BB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB348);
  }

  return result;
}

uint64_t sub_20C4206DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6546726174617661 && a2 == 0xED00006465686374 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6176416863746566 && a2 == 0xEB00000000726174)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t sub_20C420818(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState();
  (*(*(State - 8) + 16))(a2, a1, State);
  return a2;
}

uint64_t sub_20C420884(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState();
  (*(*(State - 8) + 40))(a2, a1, State);
  return a2;
}

uint64_t sub_20C420954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C4608D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C4209E4(uint64_t a1)
{
  v2 = sub_20C420BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C420A20(uint64_t a1)
{
  v2 = sub_20C420BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonogramState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB350, &qword_20C4631B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C420BC0();
  sub_20C4609C0();
  type metadata accessor for MonogramLoadState();
  sub_20C420EC0(&qword_27C7BB360);
  sub_20C4608B0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_20C420BC0()
{
  result = qword_27C7BB358;
  if (!qword_27C7BB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB358);
  }

  return result;
}

uint64_t MonogramState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  State = type metadata accessor for MonogramLoadState();
  v5 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB368, &qword_20C4631C0);
  v19 = *(v7 - 8);
  v8 = *(v19 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MonogramState();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C420BC0();
  sub_20C4609B0();
  if (!v2)
  {
    v16 = v20;
    sub_20C420EC0(&qword_27C7BB370);
    v17 = v21;
    sub_20C460840();
    (*(v19 + 8))(v10, v7);
    sub_20C420F04(v17, v14, type metadata accessor for MonogramLoadState);
    sub_20C420F04(v14, v16, type metadata accessor for MonogramState);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MonogramState()
{
  result = qword_27C7BB378;
  if (!qword_27C7BB378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C420EC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MonogramLoadState();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C420F04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C420F84(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB350, &qword_20C4631B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C420BC0();
  sub_20C4609C0();
  type metadata accessor for MonogramLoadState();
  sub_20C420EC0(&qword_27C7BB360);
  sub_20C4608B0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_20C421118()
{
  result = type metadata accessor for MonogramLoadState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20C421198()
{
  result = qword_27C7BB388;
  if (!qword_27C7BB388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB388);
  }

  return result;
}

unint64_t sub_20C4211F0()
{
  result = qword_27C7BB390;
  if (!qword_27C7BB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB390);
  }

  return result;
}

unint64_t sub_20C421248()
{
  result = qword_27C7BB398;
  if (!qword_27C7BB398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB398);
  }

  return result;
}

uint64_t sub_20C4212B0()
{
  v1 = 0x656D614E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x41676E697373696DLL;
  }
}

uint64_t sub_20C421318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C4223B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C421340(uint64_t a1)
{
  v2 = sub_20C42188C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42137C(uint64_t a1)
{
  v2 = sub_20C42188C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C4213B8(uint64_t a1)
{
  v2 = sub_20C421988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C4213F4(uint64_t a1)
{
  v2 = sub_20C421988();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C421430(uint64_t a1)
{
  v2 = sub_20C421934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42146C(uint64_t a1)
{
  v2 = sub_20C421934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C4214A8(uint64_t a1)
{
  v2 = sub_20C4218E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C4214E4(uint64_t a1)
{
  v2 = sub_20C4218E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonogramError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3A0, &qword_20C463370);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3A8, &qword_20C463378);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3B0, &qword_20C463380);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3B8, &qword_20C463388);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C42188C();
  sub_20C4609C0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_20C421934();
      v12 = v26;
      sub_20C460870();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_20C4218E0();
      v12 = v29;
      sub_20C460870();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_20C421988();
    sub_20C460870();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_20C42188C()
{
  result = qword_27C7BB3C0;
  if (!qword_27C7BB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB3C0);
  }

  return result;
}

unint64_t sub_20C4218E0()
{
  result = qword_27C7BB3C8;
  if (!qword_27C7BB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB3C8);
  }

  return result;
}

unint64_t sub_20C421934()
{
  result = qword_27C7BB3D0;
  if (!qword_27C7BB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB3D0);
  }

  return result;
}

unint64_t sub_20C421988()
{
  result = qword_27C7BB3D8;
  if (!qword_27C7BB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB3D8);
  }

  return result;
}

uint64_t MonogramError.hashValue.getter()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

uint64_t MonogramError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3E0, &qword_20C463390);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3E8, &qword_20C463398);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3F0, &qword_20C4633A0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB3F8, &unk_20C4633A8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_20C42188C();
  v20 = v43;
  sub_20C4609B0();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_20C460850();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_20C41ED38();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_20C460770();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670) + 48);
      *v30 = &type metadata for MonogramError;
      sub_20C460800();
      sub_20C460760();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_20C421934();
          sub_20C4607F0();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_20C4218E0();
          v33 = v22;
          sub_20C4607F0();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_20C421988();
        sub_20C4607F0();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_20C422004()
{
  result = qword_27C7BB400;
  if (!qword_27C7BB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB400);
  }

  return result;
}

unint64_t sub_20C42209C()
{
  result = qword_27C7BB408;
  if (!qword_27C7BB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB408);
  }

  return result;
}

unint64_t sub_20C4220F4()
{
  result = qword_27C7BB410;
  if (!qword_27C7BB410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB410);
  }

  return result;
}

unint64_t sub_20C42214C()
{
  result = qword_27C7BB418;
  if (!qword_27C7BB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB418);
  }

  return result;
}

unint64_t sub_20C4221A4()
{
  result = qword_27C7BB420;
  if (!qword_27C7BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB420);
  }

  return result;
}

unint64_t sub_20C4221FC()
{
  result = qword_27C7BB428;
  if (!qword_27C7BB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB428);
  }

  return result;
}

unint64_t sub_20C422254()
{
  result = qword_27C7BB430;
  if (!qword_27C7BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB430);
  }

  return result;
}

unint64_t sub_20C4222AC()
{
  result = qword_27C7BB438;
  if (!qword_27C7BB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB438);
  }

  return result;
}

unint64_t sub_20C422304()
{
  result = qword_27C7BB440;
  if (!qword_27C7BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB440);
  }

  return result;
}

unint64_t sub_20C42235C()
{
  result = qword_27C7BB448;
  if (!qword_27C7BB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB448);
  }

  return result;
}

uint64_t sub_20C4223B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x41676E697373696DLL && a2 == 0xEE0044495344746CLL;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6F6ELL && a2 == 0xE600000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C467730 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

double DynamicImageAssetLocalState.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_20C422500()
{
  if (*v0)
  {
    return 0x657A695377656976;
  }

  else
  {
    return 0x79654B6568636163;
  }
}

uint64_t sub_20C422534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B6568636163 && a2 == 0xE800000000000000;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657A695377656976 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C422610(uint64_t a1)
{
  v2 = sub_20C422900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42264C(uint64_t a1)
{
  v2 = sub_20C422900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicImageAssetLocalState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB450, &unk_20C463860);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = v1[3];
  v30 = v1[2];
  v31 = v8;
  v32 = v1[4];
  v9 = v1[1];
  v28 = *v1;
  v29 = v9;
  v10 = *(v1 + 10);
  v15 = *(v1 + 11);
  v16 = v10;
  v14 = *(v1 + 96);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40B904(&v28, &v23);
  sub_20C422900();
  sub_20C4609C0();
  v24 = v29;
  v25 = v30;
  v26 = v31;
  v27 = v32;
  v23 = v28;
  v22 = 0;
  sub_20C40B974();
  sub_20C460880();
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[0] = v23;
  v21[1] = v24;
  sub_20C40B440(v21, &qword_27C7BAC68, &unk_20C464890);
  if (!v2)
  {
    v18 = v16;
    v19 = v15;
    v20 = v14;
    v17 = 1;
    type metadata accessor for CGSize();
    sub_20C40BDA0(&qword_28110B3E0);
    sub_20C460880();
  }

  return (*(v33 + 8))(v7, v4);
}

unint64_t sub_20C422900()
{
  result = qword_27C7BB458;
  if (!qword_27C7BB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB458);
  }

  return result;
}

uint64_t DynamicImageAssetLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB460, &qword_20C463870);
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v8 = &v19 - v7;
  v56 = 1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C422900();
  sub_20C4609B0();
  if (v2)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45 = 0uLL;
    v46 = 0uLL;
    v47 = v24;
    v48 = v23;
    v49 = v26;
    v50 = v25;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v55 = v56;
  }

  else
  {
    v21 = v5;
    v58 = 0;
    sub_20C40BDE4();
    v10 = v22;
    sub_20C460810();
    v19 = v37;
    v20 = v38;
    v23 = v40;
    v24 = v39;
    v25 = v42;
    v26 = v41;
    v13 = v43;
    v12 = v44;
    memset(v36, 0, sizeof(v36));
    sub_20C40B440(v36, &qword_27C7BAC68, &unk_20C464890);
    type metadata accessor for CGSize();
    v57 = 1;
    sub_20C40BDA0(&qword_27C7BAC78);
    sub_20C460810();
    (*(v21 + 8))(v8, v10);
    v21 = *(&v34 + 1);
    v22 = v34;
    LOBYTE(v10) = v35;
    v56 = v35;
    v27 = v19;
    v28 = v20;
    v15 = v23;
    v14 = v24;
    *&v29 = v24;
    *(&v29 + 1) = v23;
    *&v30 = v26;
    *(&v30 + 1) = v25;
    *&v31 = v13;
    *(&v31 + 1) = v12;
    v32 = v34;
    v33 = v35;
    *(a2 + 96) = v35;
    v16 = v28;
    *a2 = v27;
    *(a2 + 16) = v16;
    v17 = v30;
    *(a2 + 32) = v29;
    *(a2 + 48) = v17;
    v18 = v32;
    *(a2 + 64) = v31;
    *(a2 + 80) = v18;
    sub_20C422CE8(&v27, &v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45 = v19;
    v46 = v20;
    v47 = v14;
    v48 = v15;
    v49 = v26;
    v50 = v25;
    v51 = v13;
    v52 = v12;
    v53 = v22;
    v54 = v21;
    v55 = v10;
  }

  return sub_20C422CB8(&v45);
}

uint64_t DynamicImageAssetLocalState.hash(into:)()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  v4 = *(v0 + 96);
  if (v1)
  {
    v6 = *v0;
    *&v7[8] = *(v0 + 24);
    *&v7[24] = *(v0 + 40);
    *&v7[40] = *(v0 + 56);
    *&v7[56] = *(v0 + 9);
    *v7 = *(v0 + 2);
    sub_20C460950();
    v8 = *v0;
    v9 = v1;
    v10 = *(v0 + 24);
    v11 = *(v0 + 40);
    v12 = *(v0 + 56);
    v13 = *(v0 + 9);
    sub_20C40C520(&v8, v14);
    ImageAssetCacheKey.hash(into:)();
    v14[2] = *&v7[16];
    v14[3] = *&v7[32];
    v14[4] = *&v7[48];
    v14[0] = v6;
    v14[1] = *v7;
    sub_20C40C57C(v14);
    if (v4)
    {
      return sub_20C460950();
    }
  }

  else
  {
    sub_20C460950();
    if (v4)
    {
      return sub_20C460950();
    }
  }

  sub_20C460950();
  return sub_20C40C1A4(v2, v3);
}

uint64_t DynamicImageAssetLocalState.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 10);
  v3 = *(v0 + 11);
  v4 = *(v0 + 96);
  sub_20C460930();
  if (!v1)
  {
    sub_20C460950();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_20C460950();
    sub_20C40C1A4(v2, v3);
    return sub_20C460970();
  }

  v11 = *v0;
  *v12 = v1;
  *&v12[8] = *(v0 + 24);
  *&v12[24] = *(v0 + 40);
  *&v12[40] = *(v0 + 56);
  *&v12[56] = *(v0 + 9);
  v6 = v11;
  v7 = *v12;
  v8 = *&v12[16];
  v9 = *&v12[32];
  v10 = *&v12[48];
  sub_20C460950();
  sub_20C40C520(&v11, v13);
  ImageAssetCacheKey.hash(into:)();
  v13[2] = v8;
  v13[3] = v9;
  v13[4] = v10;
  v13[0] = v6;
  v13[1] = v7;
  sub_20C40C57C(v13);
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_20C460950();
  return sub_20C460970();
}

uint64_t sub_20C422F9C()
{
  sub_20C460930();
  DynamicImageAssetLocalState.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C422FE0()
{
  sub_20C460930();
  DynamicImageAssetLocalState.hash(into:)();
  return sub_20C460970();
}

BOOL _s12FitnessAsset012DynamicImageB10LocalStateV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v47 = a1[2];
  v48 = v4;
  v49 = a1[4];
  v5 = a1[1];
  v45 = *a1;
  v46 = v5;
  v7 = *(a1 + 10);
  v6 = *(a1 + 11);
  v8 = *(a1 + 96);
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = a2[1];
  v50[0] = *a2;
  v50[1] = v12;
  v50[3] = v10;
  v50[4] = v11;
  v50[2] = v9;
  v14 = *(a2 + 10);
  v13 = *(a2 + 11);
  v15 = *(a2 + 96);
  v16 = v46;
  v17 = v12;
  if (v46)
  {
    v37 = *a1;
    *&v38[8] = *(a1 + 24);
    *&v38[24] = *(a1 + 40);
    *&v38[40] = *(a1 + 56);
    v18 = *(a1 + 9);
    *v38 = v46;
    *&v38[56] = v18;
    v32 = v37;
    v33 = *v38;
    v34 = *&v38[16];
    v35 = *&v38[32];
    v36 = *&v38[48];
    if (v12)
    {
      v30 = *a2;
      *&v31[8] = *(a2 + 24);
      *&v31[24] = *(a2 + 40);
      *&v31[40] = *(a2 + 56);
      *&v31[56] = *(a2 + 9);
      *v31 = v12;
      v19 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v32, &v30);
      v28[2] = *&v31[16];
      v28[3] = *&v31[32];
      v28[4] = *&v31[48];
      v28[0] = v30;
      v28[1] = *v31;
      sub_20C40B904(&v45, v29);
      sub_20C40B904(v50, v29);
      sub_20C40B904(&v37, v29);
      sub_20C40C57C(v28);
      v29[2] = v34;
      v29[3] = v35;
      v29[4] = v36;
      v29[0] = v32;
      v29[1] = v33;
      sub_20C40C57C(v29);
      v30 = *a1;
      *&v31[8] = *(a1 + 24);
      *&v31[24] = *(a1 + 40);
      *&v31[40] = *(a1 + 56);
      v20 = *(a1 + 9);
      *v31 = v16;
      *&v31[56] = v20;
      sub_20C40B440(&v30, &qword_27C7BAC68, &unk_20C464890);
      if (!v19)
      {
        return 0;
      }

      if (v8)
      {
        return (v15 & 1) != 0;
      }

      return (v15 & 1) == 0 && v7 == v14 && v6 == v13;
    }

    *&v31[16] = *&v38[16];
    *&v31[32] = *&v38[32];
    *&v31[48] = *&v38[48];
    v30 = v37;
    *v31 = *v38;
    sub_20C40B904(&v45, v29);
    sub_20C40B904(v50, v29);
    sub_20C40B904(&v37, v29);
    sub_20C40C57C(&v30);
LABEL_10:
    v37 = *a1;
    *&v38[8] = *(a1 + 24);
    *&v38[24] = *(a1 + 40);
    *&v38[40] = *(a1 + 56);
    v21 = *(a1 + 9);
    *v38 = v16;
    *&v38[56] = v21;
    v39 = *a2;
    v22 = *(a2 + 24);
    v23 = *(a2 + 40);
    v24 = *(a2 + 56);
    v25 = *(a2 + 9);
    v40 = v17;
    v44 = v25;
    v43 = v24;
    v42 = v23;
    v41 = v22;
    sub_20C40B440(&v37, &qword_27C7BACA0, &qword_20C463AC0);
    return 0;
  }

  if (v12)
  {
    sub_20C40B904(&v45, &v37);
    sub_20C40B904(v50, &v37);
    goto LABEL_10;
  }

  v37 = *a1;
  *&v38[8] = *(a1 + 24);
  *&v38[24] = *(a1 + 40);
  *&v38[40] = *(a1 + 56);
  v27 = *(a1 + 9);
  *v38 = 0;
  *&v38[56] = v27;
  sub_20C40B904(&v45, &v32);
  sub_20C40B904(v50, &v32);
  sub_20C40B440(&v37, &qword_27C7BAC68, &unk_20C464890);
  if ((v8 & 1) == 0)
  {
    return (v15 & 1) == 0 && v7 == v14 && v6 == v13;
  }

  return (v15 & 1) != 0;
}

unint64_t sub_20C423360()
{
  result = qword_27C7BB468;
  if (!qword_27C7BB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB468);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20C4233E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_20C42343C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_20C4234D0()
{
  result = qword_27C7BB470;
  if (!qword_27C7BB470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB470);
  }

  return result;
}

unint64_t sub_20C423528()
{
  result = qword_27C7BB478;
  if (!qword_27C7BB478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB478);
  }

  return result;
}

unint64_t sub_20C423580()
{
  result = qword_27C7BB480;
  if (!qword_27C7BB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB480);
  }

  return result;
}

void sub_20C4235D4()
{
  qword_27C7C40A0 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v0 = qword_27C7C40A0;
  [v0 setCountLimit_];
  [v0 baf:0 setEvictsObjectsWhenApplicationEntersBackground:?];
}

uint64_t MonogramFeature.init(environment:fetcher:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1[1];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = a1[2];
  return sub_20C423670(a2, (a3 + 3));
}

uint64_t sub_20C423670(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t MonogramFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, unint64_t a2, char **a3, uint64_t a4)
{
  v135 = a4;
  v136 = a2;
  v133 = a3;
  v128 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB488, &qword_20C463AD0);
  v134 = *(v132 - 8);
  v4 = *(v134 + 64);
  v5 = MEMORY[0x28223BE20](v132);
  v7 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v130 = &v119 - v9;
  MEMORY[0x28223BE20](v8);
  v129 = &v119 - v10;
  v127 = sub_20C45FC90();
  v126 = *(v127 - 1);
  v11 = *(v126 + 64);
  v12 = MEMORY[0x28223BE20](v127);
  v124 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v125 = &v119 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v119 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v119 - v24;
  State = type metadata accessor for MonogramLoadState();
  v27 = *(*(State - 8) + 64);
  v28 = MEMORY[0x28223BE20](State - 8);
  v30 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v119 - v31;
  v33 = type metadata accessor for MonogramAction();
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x28223BE20](v33 - 8);
  v37 = &v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v39 = &v119 - v38;
  sub_20C42701C(v135, &v119 - v38, type metadata accessor for MonogramAction);
  v135 = v16;
  v40 = (*(v16 + 48))(v39, 2, v15);
  if (!v40)
  {
    sub_20C41F6F8(v39, v20);
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
    v89 = *(v88 + 48);
    sub_20C4243BC(v20, v30);
    sub_20C45FC80();
    sub_20C40B440(v20, &qword_27C7BB268, &qword_20C462D40);
    (*(*(v88 - 8) + 56))(v30, 0, 2, v88);
    return sub_20C420884(v30, v136);
  }

  if (v40 == 1)
  {
    v41 = v136;
    sub_20C42701C(v136, v32, type metadata accessor for MonogramLoadState);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
    result = (*(*(v42 - 8) + 48))(v32, 2, v42);
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      goto LABEL_5;
    }

    v110 = *(v42 + 48);
    sub_20C41F6F8(v32, v25);
    v111 = v126;
    v112 = &v32[v110];
    v113 = v125;
    v114 = v127;
    (*(v126 + 32))(v125, v112, v127);
    sub_20C4243BC(v25, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v111 + 8))(v113, v114);
      sub_20C40B440(v25, &qword_27C7BB268, &qword_20C462D40);
      return sub_20C40B440(v23, &qword_27C7BB268, &qword_20C462D40);
    }

    v115 = v124;
    sub_20C45FC80();
    sub_20C45FC60();
    v117 = v116;
    v118 = *(v111 + 8);
    v118(v115, v114);
    v118(v113, v114);
    result = sub_20C40B440(v25, &qword_27C7BB268, &qword_20C462D40);
    if (v117 > 600.0)
    {
LABEL_5:
      (*(v135 + 56))(v37, 2, 2, v15);
      v44 = v41;
      v45 = v133;
      v46 = v131;
      MonogramFeature.reduce(localState:sharedState:sideEffects:action:)(v128, v44, v133, v37);
      sub_20C427084(v37, type metadata accessor for MonogramAction);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
      v48 = v47[12];
      v49 = v47[16];
      v50 = v47[20];
      v51 = v129;
      v52 = &v129[v47[24]];
      LOBYTE(v137) = 1;
      v136 = sub_20C42442C();
      sub_20C460720();
      v53 = *MEMORY[0x277D043F0];
      v54 = sub_20C460410();
      v55 = *(v54 - 8);
      v56 = *(v55 + 104);
      LODWORD(v135) = v53;
      v128 = v54;
      v127 = v56;
      v126 = v55 + 104;
      (v56)(&v51[v49], v53);
      v57 = *MEMORY[0x277D043E0];
      v58 = sub_20C460400();
      v59 = *(v58 - 8);
      v60 = *(v59 + 104);
      LODWORD(v125) = v57;
      v124 = v58;
      v123 = v60;
      v122 = v59 + 104;
      (v60)(&v51[v50], v57);
      sub_20C4267F4(v46, &v137);
      v61 = swift_allocObject();
      v62 = v140;
      *(v61 + 48) = v139;
      *(v61 + 64) = v62;
      *(v61 + 80) = v141;
      *(v61 + 96) = v142;
      v63 = v138;
      *(v61 + 16) = v137;
      *(v61 + 32) = v63;
      *v52 = &unk_20C463AF8;
      *(v52 + 1) = v61;
      sub_20C4605F0();
      v64 = v134;
      v65 = *(v134 + 104);
      v121 = *MEMORY[0x277D043B0];
      v66 = v132;
      v120 = v65;
      v65(v51);
      v67 = *v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_20C426D44(0, *(v67 + 2) + 1, 1, v67, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
      }

      v69 = *(v67 + 2);
      v68 = *(v67 + 3);
      if (v69 >= v68 >> 1)
      {
        v67 = sub_20C426D44(v68 > 1, v69 + 1, 1, v67, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
      }

      *(v67 + 2) = v69 + 1;
      v72 = *(v64 + 32);
      v71 = v64 + 32;
      v70 = v72;
      v73 = (*(v71 + 48) + 32) & ~*(v71 + 48);
      v74 = *(v71 + 40);
      v134 = v71;
      v72(&v67[v73 + v74 * v69], v129, v66);
      v75 = v47[12];
      v76 = v47[16];
      v77 = v47[20];
      v78 = v130;
      v79 = &v130[v47[24]];
      LOBYTE(v137) = 2;
      sub_20C460720();
      (v127)(&v78[v76], v135, v128);
      v80 = &v78[v77];
      v81 = v132;
      v123(v80, v125, v124);
      sub_20C4267F4(v131, &v137);
      v82 = swift_allocObject();
      v83 = v140;
      *(v82 + 48) = v139;
      *(v82 + 64) = v83;
      *(v82 + 80) = v141;
      *(v82 + 96) = v142;
      v84 = v138;
      *(v82 + 16) = v137;
      *(v82 + 32) = v84;
      *v79 = &unk_20C463B08;
      *(v79 + 1) = v82;
      sub_20C4605F0();
      v120(v78, v121, v81);
      v86 = *(v67 + 2);
      v85 = *(v67 + 3);
      if (v86 >= v85 >> 1)
      {
        v67 = sub_20C426D44(v85 > 1, v86 + 1, 1, v67, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
      }

      *(v67 + 2) = v86 + 1;
      v87 = v133;
      result = v70(&v67[v73 + v86 * v74], v130, v81);
      *v87 = v67;
    }
  }

  else
  {
    v90 = v136;
    sub_20C427084(v136, type metadata accessor for MonogramLoadState);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
    (*(*(v91 - 8) + 56))(v90, 2, 2, v91);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
    v93 = v92[12];
    v94 = v92[16];
    v95 = v92[20];
    v96 = &v7[v92[24]];
    LOBYTE(v137) = 0;
    sub_20C42442C();
    sub_20C460720();
    v97 = *MEMORY[0x277D04400];
    v98 = sub_20C460410();
    (*(*(v98 - 8) + 104))(&v7[v94], v97, v98);
    sub_20C4267F4(v131, &v137);
    v99 = swift_allocObject();
    v100 = v140;
    *(v99 + 48) = v139;
    *(v99 + 64) = v100;
    *(v99 + 80) = v141;
    *(v99 + 96) = v142;
    v101 = v138;
    *(v99 + 16) = v137;
    *(v99 + 32) = v101;
    *v96 = &unk_20C463AE8;
    *(v96 + 1) = v99;
    sub_20C4605F0();
    v102 = *MEMORY[0x277D043E8];
    v103 = sub_20C460400();
    (*(*(v103 - 8) + 104))(&v7[v95], v102, v103);
    v104 = v134;
    v105 = v132;
    (*(v134 + 104))(v7, *MEMORY[0x277D043B0], v132);
    v106 = v133;
    v107 = *v133;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_20C426D44(0, v107[2] + 1, 1, v107, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
    }

    v109 = v107[2];
    v108 = v107[3];
    if (v109 >= v108 >> 1)
    {
      v107 = sub_20C426D44(v108 > 1, v109 + 1, 1, v107, &qword_27C7BB500, &qword_20C463C70, &qword_27C7BB488, &qword_20C463AD0);
    }

    v107[2] = v109 + 1;
    result = (*(v104 + 32))(v107 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v109, v7, v105);
    *v106 = v107;
  }

  return result;
}

uint64_t sub_20C4243BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C42442C()
{
  result = qword_27C7BB4A0;
  if (!qword_27C7BB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB4A0);
  }

  return result;
}

uint64_t sub_20C424480(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(type metadata accessor for MonogramAction() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4F0, &qword_20C463C60);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4F8, &qword_20C463C68);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_20C4605E0();
  v2[12] = sub_20C4605D0();
  v11 = sub_20C4605A0();
  v2[13] = v11;
  v2[14] = v10;

  return MEMORY[0x2822009F8](sub_20C424618, v11, v10);
}

uint64_t sub_20C424618()
{
  v1 = v0[3];
  v2 = *(v1 + 24);
  v7 = (*(v1 + 16) + **(v1 + 16));
  v3 = *(*(v1 + 16) + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_20C42470C;
  v5 = v0[7];

  return v7(v5);
}

uint64_t sub_20C42470C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_20C42482C, v4, v3);
}

uint64_t sub_20C42482C()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_20C460600();
  (*(v3 + 8))(v2, v4);
  v5 = v0[11];
  v6 = sub_20C4605D0();
  v0[16] = v6;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_20C42491C;
  v9 = v0[10];
  v10 = v0[8];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 19, v6, v11, v10);
}

uint64_t sub_20C42491C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v7 = *v0;

  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_20C424A60, v5, v4);
}

uint64_t sub_20C424A60()
{
  if (*(v0 + 152) == 1)
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 56);
    v3 = *(v0 + 32);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 32);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
    (*(*(v7 - 8) + 56))(v6, 2, 2, v7);
    v8 = *(MEMORY[0x277D043C8] + 4);
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
    *v9 = v0;
    v9[1] = sub_20C424BF4;
    v11 = *(v0 + 32);
    v12 = *(v0 + 16);

    return MEMORY[0x282159B08](v11, v10);
  }
}

uint64_t sub_20C424BF4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_20C427084(v3, type metadata accessor for MonogramAction);
  v4 = *(v1 + 112);
  v5 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_20C424D4C, v5, v4);
}

uint64_t sub_20C424D4C()
{
  v1 = v0[11];
  v2 = sub_20C4605D0();
  v0[16] = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_20C42491C;
  v5 = v0[10];
  v6 = v0[8];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 19, v2, v7, v6);
}

uint64_t sub_20C424E08(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = *(*(type metadata accessor for MonogramAction() - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = sub_20C4605E0();
  v2[16] = sub_20C4605D0();
  v5 = sub_20C4605A0();
  v2[17] = v5;
  v2[18] = v4;

  return MEMORY[0x2822009F8](sub_20C424ED0, v5, v4);
}

uint64_t sub_20C424ED0()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 40);
  v6 = (*(v1 + 32) + **(v1 + 32));
  v3 = *(*(v1 + 32) + 4);
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_20C424FC4;

  return v6(v0 + 56);
}

uint64_t sub_20C424FC4()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v6 = *v0;

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_20C4250E4, v4, v3);
}

uint64_t sub_20C4250E4()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_20C460630();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v6 = v0[15];
  v7 = sub_20C4605D0();
  v0[20] = v7;
  v8 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v9 = *(MEMORY[0x277D856D8] + 4);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_20C4252BC;
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 23, v7, v11);
}

uint64_t sub_20C4252BC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v8 = *v1;

  if (!v0)
  {
    v5 = v2[20];

    v6 = v2[17];
    v7 = v2[18];

    return MEMORY[0x2822009F8](sub_20C4253D0, v6, v7);
  }

  return result;
}

uint64_t sub_20C4253D0()
{
  if (*(v0 + 184) == 1)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 112);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 112);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
    (*(*(v6 - 8) + 56))(v5, 2, 2, v6);
    v7 = *(MEMORY[0x277D043C8] + 4);
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
    *v8 = v0;
    v8[1] = sub_20C425530;
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    return MEMORY[0x282159B08](v10, v9);
  }
}

uint64_t sub_20C425530()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 112);
  v7 = *v0;

  sub_20C427084(v3, type metadata accessor for MonogramAction);
  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_20C425688, v5, v4);
}

uint64_t sub_20C425688()
{
  v1 = v0[15];
  v2 = sub_20C4605D0();
  v0[20] = v2;
  v3 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v4 = *(MEMORY[0x277D856D8] + 4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_20C4252BC;
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 23, v2, v6);
}

uint64_t sub_20C425764(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = *(*(type metadata accessor for MonogramAction() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(*(type metadata accessor for Monogram() - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  sub_20C4605E0();
  v2[7] = sub_20C4605D0();
  v6 = sub_20C4605A0();
  v2[8] = v6;
  v2[9] = v5;

  return MEMORY[0x2822009F8](sub_20C425854, v6, v5);
}

uint64_t sub_20C425854()
{
  v1 = *(v0 + 32);
  v2 = v1[1];
  v6 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_20C425940;

  return v6();
}

uint64_t sub_20C425940(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v7 = *(v3 + 72);
  v8 = *(v3 + 64);
  if (v1)
  {
    v9 = sub_20C4261F4;
  }

  else
  {
    v9 = sub_20C425A84;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C425A84()
{
  v1 = v0[4];
  v2 = v1[9];
  v3 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v2);
  v4 = *(v3 + 8);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_20C425BBC;
  v7 = v0[11];
  v8 = v0[6];
  v9 = v0[3];

  return v11(v8, v9, v7, v2, v3);
}

uint64_t sub_20C425BBC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_20C4264F0;
  }

  else
  {
    v7 = sub_20C425CF8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20C425CF8()
{
  v1 = v0[5];
  sub_20C42701C(v0[6], v1, type metadata accessor for Monogram);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  swift_storeEnumTagMultiPayload();
  (*(*(v2 - 8) + 56))(v1, 0, 2, v2);
  v3 = *(MEMORY[0x277D043C8] + 4);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
  *v4 = v0;
  v4[1] = sub_20C425E2C;
  v6 = v0[5];
  v7 = v0[3];

  return MEMORY[0x282159B08](v6, v5);
}

uint64_t sub_20C425E2C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 40);
  v7 = *v0;

  sub_20C427084(v3, type metadata accessor for MonogramAction);
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20C425F84, v5, v4);
}

uint64_t sub_20C425F84()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  sub_20C427084(v1, type metadata accessor for Monogram);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20C426020()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 40);
  v7 = *v0;

  sub_20C427084(v3, type metadata accessor for MonogramAction);
  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_20C426178, v5, v4);
}

uint64_t sub_20C426178()
{
  v1 = *(v0 + 56);

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20C4261F4()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 136);
    if (qword_28110B658 != -1)
    {
      swift_once();
    }

    v4 = sub_20C460000();
    __swift_project_value_buffer(v4, qword_28110E2C0);
    v5 = sub_20C45FFE0();
    v6 = sub_20C460660();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_20C4139F0();
      swift_allocError();
      *v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_20C404000, v5, v6, "Failed to fetch Account Avatar: %@", v7, 0xCu);
      sub_20C40B440(v8, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v8, -1, -1);
      MEMORY[0x20F2FB570](v7, -1, -1);
    }

    v11 = *(v0 + 40);

    *v11 = v3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v11, 0, 2, v12);
    v13 = *(MEMORY[0x277D043C8] + 4);
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
    *v14 = v0;
    v14[1] = sub_20C426020;
    v16 = *(v0 + 40);
    v17 = *(v0 + 24);

    return MEMORY[0x282159B08](v16, v15);
  }

  else
  {
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 40);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_20C4264F0()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 136);
    if (qword_28110B658 != -1)
    {
      swift_once();
    }

    v4 = sub_20C460000();
    __swift_project_value_buffer(v4, qword_28110E2C0);
    v5 = sub_20C45FFE0();
    v6 = sub_20C460660();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_20C4139F0();
      swift_allocError();
      *v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_20C404000, v5, v6, "Failed to fetch Account Avatar: %@", v7, 0xCu);
      sub_20C40B440(v8, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v8, -1, -1);
      MEMORY[0x20F2FB570](v7, -1, -1);
    }

    v11 = *(v0 + 40);

    *v11 = v3;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v11, 0, 2, v12);
    v13 = *(MEMORY[0x277D043C8] + 4);
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E8, &qword_20C463C58);
    *v14 = v0;
    v14[1] = sub_20C426020;
    v16 = *(v0 + 40);
    v17 = *(v0 + 24);

    return MEMORY[0x282159B08](v16, v15);
  }

  else
  {
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 40);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_20C42682C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C413D30;

  return sub_20C425764(a1, v1 + 16);
}

uint64_t sub_20C4268CC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C414268;

  return sub_20C424480(a1, v1 + 16);
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_20C4269B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C414268;

  return sub_20C424E08(a1, v1 + 16);
}

unint64_t sub_20C426AE0()
{
  result = qword_28110B428;
  if (!qword_28110B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B428);
  }

  return result;
}

uint64_t sub_20C426B7C(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_20C426BE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C426C30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20C426CA8()
{
  result = qword_27C7BB4C0;
  if (!qword_27C7BB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB4C0);
  }

  return result;
}

size_t sub_20C426D44(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20C42701C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C427084(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MonogramEnvironment.init(fetchPrimaryAccount:makeAccountChangedStream:makeRemoteBrowsingIdentityUpdatedStream:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_20C427108(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C427150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C4271AC()
{
  v0 = sub_20C460000();
  __swift_allocate_value_buffer(v0, qword_28110E2C0);
  __swift_project_value_buffer(v0, qword_28110E2C0);
  return sub_20C45FFF0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_20C4272A8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CEC820]) initWithAccount_];
  v0[21] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_20C4273EC;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB518, &qword_20C463D28);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_20C427818;
    v0[13] = &block_descriptor;
    v0[14] = v3;
    [v2 performRequestWithHandler_];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v1);
}

uint64_t sub_20C4273EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_20C4277A8;
  }

  else
  {
    v3 = sub_20C4274FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C4274FC()
{
  v28 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 152);
  if (v2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v4 photoData];
      if (v6)
      {
        v7 = v6;
        v8 = sub_20C45FC50();
        v10 = v9;

        v11 = [v4 cropRect];
        if (v11)
        {
          v25 = 0;
          v26 = 0;
          v27 = 1;
          v12 = v11;
          MEMORY[0x20F2FABF0](v11, &v25);

          if ((v27 & 1) == 0)
          {
            v13 = v25;
            v14 = v26;
            v15 = objc_allocWithZone(MEMORY[0x277D755B8]);
            sub_20C4279B8(v8, v10);
            v16 = sub_20C45FC40();
            v17 = [v15 initWithData_];

            sub_20C427964(v8, v10);
            if (v17)
            {
              v18 = [v17 CGImage];

              if (v18)
              {
                v30.origin = v13;
                v30.size = v14;
                v19 = CGImageCreateWithImageInRect(v18, v30);

                if (v19)
                {
                  v20 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

                  sub_20C427964(v8, v10);
                  v21 = *(v0 + 8);

                  return v21(v20);
                }
              }
            }
          }
        }

        sub_20C427964(v8, v10);
      }

      else
      {
      }
    }
  }

  sub_20C4139F0();
  swift_allocError();
  *v23 = 2;
  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_20C4277A8()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[22];
  v4 = v0[1];

  return v4();
}

uint64_t sub_20C427818(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;
    v12 = a2;
    v13 = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_20C427900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_20C427964(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20C4279B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20C427A0C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C427AA0;

  return MonogramFetcher.fetchAccountProfileImage(_:for:)(v4, a2);
}

uint64_t sub_20C427AA0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t MonogramView.init(store:font:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_20C4142D4;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 24) = a3;
  return result;
}

uint64_t sub_20C427C18@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  State = type metadata accessor for MonogramLoadState();
  v3 = *(*(State - 8) + 64);
  MEMORY[0x28223BE20](State - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5C0, &qword_20C463E98);
  sub_20C417418(&qword_27C7BB5C8, &qword_27C7BB5C0, &qword_20C463E98);
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  if ((*(*(v16 - 8) + 48))(v5, 2, v16))
  {
    sub_20C429728(v5, type metadata accessor for MonogramLoadState);
  }

  else
  {
    v17 = *(v16 + 48);
    sub_20C41F6F8(v5, v12);
    v18 = sub_20C45FC90();
    (*(*(v18 - 8) + 8))(&v5[v17], v18);
    sub_20C41F6F8(v12, v10);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = v24;
      sub_20C429788(v10, v24);
      v19 = 0;
      goto LABEL_6;
    }

    sub_20C40B440(v10, &qword_27C7BB268, &qword_20C462D40);
  }

  v19 = 1;
  v20 = v24;
LABEL_6:
  v21 = type metadata accessor for Monogram();
  return (*(*(v21 - 8) + 56))(v20, v19, 1, v21);
}

uint64_t MonogramView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB520, "\nL");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB528, "NL");
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB530, &qword_20C463D70);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB538, &qword_20C463D78);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = v1[1];
  v22 = *(v1 + 16);
  v23 = v1[3];
  v32 = *v1;
  v33 = v23;
  v35 = v32;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  sub_20C428210(v5);
  sub_20C4603E0();
  sub_20C4600A0();
  sub_20C409BD0(v5, v10, &qword_27C7BB520, "\nL");
  v24 = &v10[*(v7 + 44)];
  v25 = v44;
  *(v24 + 4) = v43;
  *(v24 + 5) = v25;
  *(v24 + 6) = v45;
  v26 = v40;
  *v24 = v39;
  *(v24 + 1) = v26;
  v27 = v42;
  *(v24 + 2) = v41;
  *(v24 + 3) = v27;
  LOBYTE(v5) = sub_20C4602F0();
  sub_20C409BD0(v10, v15, &qword_27C7BB528, "NL");
  v15[*(v12 + 44)] = v5;
  v28 = swift_allocObject();
  v29 = v33;
  *(v28 + 16) = v32;
  *(v28 + 24) = v21;
  *(v28 + 32) = v22;
  *(v28 + 40) = v29;
  sub_20C409BD0(v15, v20, &qword_27C7BB530, &qword_20C463D70);
  v30 = &v20[*(v17 + 44)];
  *v30 = sub_20C4287BC;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  sub_20C409BD0(v20, v34, &qword_27C7BB538, &qword_20C463D78);
  sub_20C414B3C();
}

void sub_20C428210(uint64_t a1@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB568, &qword_20C463E68);
  v3 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v5 = v32 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5D0, &qword_20C463EA0);
  v6 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v8 = (v32 - v7);
  v9 = sub_20C4603C0();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5D8, &qword_20C463EA8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = (v32 - v15);
  v18 = *v1;
  v17 = v1[1];
  v19 = *(v1 + 16);
  v20 = v1[3];
  v37 = *v1;
  v38 = v17;
  v39 = v19;
  v40 = v20;
  sub_20C427C18(v32 - v15);
  v21 = type metadata accessor for Monogram();
  if ((*(*(v21 - 8) + 48))(v16, 1, v21) == 1)
  {
    sub_20C40B440(v16, &qword_27C7BB5D8, &qword_20C463EA8);
  }

  else
  {
    v32[1] = a1;
    v23 = *v16;
    v22 = v16[1];

    sub_20C429728(v16, type metadata accessor for Monogram);
    if (qword_27C7BAC00 != -1)
    {
      swift_once();
    }

    v24 = qword_27C7C40A0;
    v37 = v23;
    v38 = v22;
    v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF88, &qword_20C461DF8));
    v26 = sub_20C45FE40();
    v27 = [v24 objectForKey_];

    if (v27)
    {
      v28 = v27;
      sub_20C4603A0();
      v30 = v33;
      v29 = v34;
      (*(v33 + 104))(v12, *MEMORY[0x277CE0FE0], v34);
      v31 = sub_20C4603D0();

      (*(v30 + 8))(v12, v29);
      *v8 = v31;
      swift_storeEnumTagMultiPayload();
      sub_20C429334();

      sub_20C460220();

      return;
    }
  }

  v37 = v18;
  v38 = v17;
  v39 = v19;
  v40 = v20;
  sub_20C4287F0(v5);
  sub_20C409B04(v5, v8, &qword_27C7BB568, &qword_20C463E68);
  swift_storeEnumTagMultiPayload();
  sub_20C429334();
  sub_20C460220();
  sub_20C40B440(v5, &qword_27C7BB568, &qword_20C463E68);
}

uint64_t sub_20C428658()
{
  v0 = type metadata accessor for MonogramAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5C0, &qword_20C463E98);
  sub_20C417418(&qword_27C7BB5C8, &qword_27C7BB5C0, &qword_20C463E98);
  sub_20C460020();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  (*(*(v4 - 8) + 56))(v3, 1, 2, v4);
  sub_20C460440();

  return sub_20C429728(v3, type metadata accessor for MonogramAction);
}

uint64_t sub_20C4287BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_20C428658();
}

uint64_t sub_20C4287F0@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v2 = sub_20C460080();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v76 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v75 = &v67 - v6;
  v7 = sub_20C4603C0();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB578, &qword_20C463E70);
  v10 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v79 = &v67 - v11;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5E0, &qword_20C463EB0);
  v12 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v81 = (&v67 - v13);
  v71 = sub_20C45FBD0();
  v14 = *(v71 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v71);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_20C45FBE0();
  v69 = *(v70 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5D8, &qword_20C463EA8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v67 - v23;
  v25 = sub_20C45FC10();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v67 - v31;
  v33 = *(v1 + 16);
  v34 = *(v1 + 3);
  v85 = *v1;
  v86 = v33;
  v87 = v34;
  sub_20C427C18(v24);
  v35 = type metadata accessor for Monogram();
  if ((*(*(v35 - 8) + 48))(v24, 1, v35) == 1)
  {
    sub_20C40B440(v24, &qword_27C7BB5D8, &qword_20C463EA8);
    sub_20C4603B0();
    v37 = v72;
    v36 = v73;
    v38 = v74;
    (*(v73 + 104))(v72, *MEMORY[0x277CE0FE0], v74);
    v39 = sub_20C4603D0();

    (*(v36 + 8))(v37, v38);
    v40 = sub_20C460230();
    *&v85 = v39;
    DWORD2(v85) = v40;
    v41 = v75;
    sub_20C460070();
    v42 = v76;
    sub_20C460060();
    v43 = v78;
    v44 = *(v77 + 8);
    v44(v41, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB580, &qword_20C463E78);
    sub_20C4294B4();
    v45 = v79;
    sub_20C460350();
    v44(v42, v43);

    v46 = (v45 + *(v82 + 36));
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5A8, &qword_20C463E88) + 28);
    sub_20C460140();
    v48 = sub_20C460150();
    (*(*(v48 - 8) + 56))(v46 + v47, 0, 1, v48);
    *v46 = swift_getKeyPath();
    sub_20C409B04(v45, v81, &qword_27C7BB578, &qword_20C463E70);
    swift_storeEnumTagMultiPayload();
    sub_20C4293C0();
    sub_20C460220();
    return sub_20C40B440(v45, &qword_27C7BB578, &qword_20C463E70);
  }

  else
  {
    v50 = *(v26 + 16);
    v51 = &v24[*(v35 + 20)];
    v68 = v25;
    v50(v30, v51, v25);
    sub_20C429728(v24, type metadata accessor for Monogram);
    (*(v26 + 32))(v32, v30, v25);
    v52 = v71;
    (*(v14 + 104))(v17, *MEMORY[0x277CC8E30], v71);
    MEMORY[0x20F2FA120](v17);
    (*(v14 + 8))(v17, v52);
    sub_20C4295FC();
    v53 = v70;
    sub_20C45FC00();
    (*(v69 + 8))(v20, v53);
    v84 = v85;
    sub_20C429654();
    v54 = sub_20C460310();
    v56 = v55;
    v58 = v57;
    v59 = sub_20C460300();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    sub_20C4296A8(v54, v56, v58 & 1);

    v66 = v81;
    *v81 = v59;
    v66[1] = v61;
    *(v66 + 16) = v63 & 1;
    v66[3] = v65;
    swift_storeEnumTagMultiPayload();
    sub_20C4293C0();
    sub_20C460220();
    return (*(v26 + 8))(v32, v68);
  }
}

uint64_t sub_20C429050(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C429098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20C4290D8()
{
  result = qword_27C7BB540;
  if (!qword_27C7BB540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB538, &qword_20C463D78);
    sub_20C429164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB540);
  }

  return result;
}

unint64_t sub_20C429164()
{
  result = qword_27C7BB548;
  if (!qword_27C7BB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB530, &qword_20C463D70);
    sub_20C42921C();
    sub_20C417418(&qword_27C7BB5B0, &qword_27C7BB5B8, &qword_20C463E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB548);
  }

  return result;
}

unint64_t sub_20C42921C()
{
  result = qword_27C7BB550;
  if (!qword_27C7BB550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB528, "NL");
    sub_20C4292A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB550);
  }

  return result;
}

unint64_t sub_20C4292A8()
{
  result = qword_27C7BB558;
  if (!qword_27C7BB558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB520, "\nL");
    sub_20C429334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB558);
  }

  return result;
}

unint64_t sub_20C429334()
{
  result = qword_27C7BB560;
  if (!qword_27C7BB560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB568, &qword_20C463E68);
    sub_20C4293C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB560);
  }

  return result;
}

unint64_t sub_20C4293C0()
{
  result = qword_27C7BB570;
  if (!qword_27C7BB570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB578, &qword_20C463E70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB580, &qword_20C463E78);
    sub_20C4294B4();
    swift_getOpaqueTypeConformance2();
    sub_20C417418(&qword_27C7BB5A0, &qword_27C7BB5A8, &qword_20C463E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB570);
  }

  return result;
}

unint64_t sub_20C4294B4()
{
  result = qword_27C7BB588;
  if (!qword_27C7BB588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB580, &qword_20C463E78);
    sub_20C417418(&qword_27C7BB590, &qword_27C7BB598, &qword_20C463E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB588);
  }

  return result;
}

uint64_t sub_20C42956C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F0, &qword_20C463EE8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_20C4296B8(a1, &v6 - v4);
  return sub_20C460100();
}

unint64_t sub_20C4295FC()
{
  result = qword_27C7BB5E8;
  if (!qword_27C7BB5E8)
  {
    sub_20C45FBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB5E8);
  }

  return result;
}

unint64_t sub_20C429654()
{
  result = qword_28110B410;
  if (!qword_28110B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B410);
  }

  return result;
}

uint64_t sub_20C4296A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_20C4296B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F0, &qword_20C463EE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C429728(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C429788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Monogram();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImageSequenceView.init(imagesNamed:startFrame:endFrame:bundle:framesPerSecond:repeatCount:isAnimating:flipsContentForRightToLeftDirection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  if (a4)
  {
    a3 = *(result + 16) - 1;
  }

  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a6;
  *(a9 + 32) = a5;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8 & 1;
  *(a9 + 49) = a10 & 1;
  return result;
}

id ImageSequenceView.makeUIView(context:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setContentMode_];
  [v0 setClipsToBounds_];

  ImageSequenceView.updateUIView(_:context:)(v0);
  return v0;
}

unint64_t ImageSequenceView.updateUIView(_:context:)(void *a1)
{
  v6 = v2[1];
  v5 = v2[2];
  if (v5 < v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    v23 = sub_20C4607A0();
    if (!v23)
    {
      goto LABEL_30;
    }

LABEL_18:
    v24 = __OFSUB__(v23, 1);
    result = v23 - 1;
    if (v24)
    {
      __break(1u);
    }

    else if ((v4 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(v4 + 8 * result + 32);
LABEL_23:
        v27 = v26;
        goto LABEL_31;
      }

      __break(1u);
      return result;
    }

    v26 = MEMORY[0x20F2FACB0](result, v4);
    goto LABEL_23;
  }

  v34 = *(v2 + 48);
  v7 = *(v2 + 49);
  v8 = *v2;
  v4 = MEMORY[0x277D84F90];
  v9 = (*v2 + 16 * v6 + 40);
  v3 = v2[4];
  v32 = v2[3];
  v36 = MEMORY[0x277D84F90];
  v1 = v5 + 1;
  do
  {
    if (v7)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v6 >= *(v8 + 16))
      {
        goto LABEL_27;
      }

      v11 = *(v9 - 1);
      v12 = *v9;

      v13 = sub_20C4604C0();

      v14 = [objc_opt_self() imageNamed:v13 inBundle:v3 withConfiguration:0];

      if (v14)
      {
        v15 = [v14 imageFlippedForRightToLeftLayoutDirection];

        if (v15)
        {
LABEL_14:
          MEMORY[0x20F2FAAB0]();
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v21 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_20C460570();
          }

          sub_20C460580();
          v4 = v36;
        }
      }
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v6 >= *(v8 + 16))
      {
        goto LABEL_26;
      }

      v16 = *(v9 - 1);
      v17 = *v9;

      v18 = v3;
      v19 = sub_20C4604C0();

      v20 = [objc_opt_self() imageNamed:v19 inBundle:v18 withConfiguration:0];

      if (v20)
      {
        goto LABEL_14;
      }
    }

    ++v6;
    v9 += 2;
  }

  while (v1 != v6);
  v3 = a1;
  LODWORD(v10) = 1132068864;
  [a1 setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v22) = 1132068864;
  [a1 setContentCompressionResistancePriority:0 forAxis:v22];
  v1 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_29;
  }

  v23 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v23)
  {
    goto LABEL_18;
  }

LABEL_30:
  v27 = 0;
LABEL_31:
  [v3 setImage_];

  sub_20C406B94();
  v28 = sub_20C460560();
  [v3 setAnimationImages_];

  if (v1)
  {
    v29 = sub_20C4607A0();
  }

  else
  {
    v29 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v3 setAnimationDuration_];
  v30 = &selRef_startAnimating;
  if (!v34)
  {
    v30 = &selRef_stopAnimating;
  }

  v31 = *v30;

  return [v3 v31];
}

unint64_t sub_20C429C20()
{
  result = qword_28110B7B0;
  if (!qword_28110B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B7B0);
  }

  return result;
}

id sub_20C429C74()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v0 setContentMode_];
  [v0 setClipsToBounds_];

  ImageSequenceView.updateUIView(_:context:)(v0);
  return v0;
}

uint64_t sub_20C429D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C429F00();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_20C429DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C429F00();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_20C429E14()
{
  sub_20C429F00();
  sub_20C4601F0();
  __break(1u);
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_20C429E58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C429EA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20C429F00()
{
  result = qword_28110B7A8;
  if (!qword_28110B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B7A8);
  }

  return result;
}

uint64_t DynamicImageAssetEnvironment.init(fetchRemoteImage:evaluateImageAssetCacheKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_20C429F60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C429FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DynamicPredicateLogicalDescriptor.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_20C45FF30();
  v10 = sub_20C45FF40();
  DynamicPredicateDescriptor.makePredicateExpression<A>(using:)(a1, v10, a2, a3, v15);

  if (!v4)
  {
    v12 = sub_20C45FF50();
    DynamicPredicateDescriptor.makePredicateExpression<A>(using:)(a1, v12, a2, a3, v14);

    a4[3] = &type metadata for ArtworkPredicateLogicalOperation;
    a4[4] = &protocol witness table for ArtworkPredicateLogicalOperation;
    v13 = swift_allocObject();
    *a4 = v13;
    sub_20C42A130(v15, v13 + 16);
    sub_20C42A130(v14, v13 + 56);
    *(v13 + 96) = v9 & 1;
    __swift_destroy_boxed_opaque_existential_1(v14);
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

uint64_t sub_20C42A130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t DynamicImageAssetState.loadStateRegistries.getter()
{
  v1 = *(v0 + *(type metadata accessor for DynamicImageAssetState() + 20));
}

uint64_t DynamicImageAssetState.loadStateRegistries.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DynamicImageAssetState() + 20);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20C42A374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t DynamicImageAssetState.init(descriptor:layoutEnvironment:loadStateRegistries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v9 = type metadata accessor for DynamicImageAssetState();
  v10 = v9[6];
  v11 = type metadata accessor for ImageAsset();
  (*(*(v11 - 8) + 56))(a4 + v10, 1, 1, v11);
  v12 = v9[7];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  (*(*(v13 - 8) + 32))(a4 + v12, a1, v13);
  result = sub_20C42A374(a2, a4, &qword_27C7BB5F8, &unk_20C4640A0);
  *(a4 + v9[5]) = a3;
  return result;
}

unint64_t sub_20C42A560()
{
  v1 = 0x7470697263736564;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_20C42A5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C42BFF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C42A61C(uint64_t a1)
{
  v2 = sub_20C42A974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42A658(uint64_t a1)
{
  v2 = sub_20C42A974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicImageAssetState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB610, &qword_20C4640B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C42A974();
  sub_20C4609C0();
  v19 = 0;
  type metadata accessor for DynamicArtworkLayoutEnvironment();
  sub_20C4064C0(&qword_27C7BB0A0, type metadata accessor for DynamicArtworkLayoutEnvironment);
  sub_20C460880();
  if (!v2)
  {
    v11 = type metadata accessor for DynamicImageAssetState();
    v15[1] = *(v3 + v11[5]);
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB620, &unk_20C4640C0);
    sub_20C42A9C8();
    sub_20C4608B0();
    v12 = v11[6];
    v17 = 2;
    type metadata accessor for ImageAsset();
    sub_20C4064C0(&qword_28110BC98, type metadata accessor for ImageAsset);
    sub_20C460880();
    v13 = v11[7];
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
    sub_20C417418(&qword_27C7BB630, &qword_27C7BB608, &qword_20C4640B0);
    sub_20C4608B0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_20C42A974()
{
  result = qword_27C7BB618;
  if (!qword_27C7BB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB618);
  }

  return result;
}

unint64_t sub_20C42A9C8()
{
  result = qword_27C7BB628;
  if (!qword_27C7BB628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB620, &unk_20C4640C0);
    sub_20C4064C0(&qword_28110BC98, type metadata accessor for ImageAsset);
    sub_20C41056C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB628);
  }

  return result;
}

uint64_t DynamicImageAssetState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  v32 = *(v35 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB638, &qword_20C4640D8);
  v36 = *(v39 - 8);
  v13 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v15 = &v32 - v14;
  v16 = type metadata accessor for DynamicImageAssetState();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v37 = v16;
  v21 = *(v16 + 24);
  v22 = type metadata accessor for ImageAsset();
  v23 = *(*(v22 - 8) + 56);
  v41 = v21;
  v23(&v19[v21], 1, 1, v22);
  v24 = a1[3];
  v25 = a1[4];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_20C42A974();
  v38 = v15;
  v26 = v40;
  sub_20C4609B0();
  if (v26)
  {
    v28 = v41;
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_20C40B440(v19, &qword_27C7BB5F8, &unk_20C4640A0);
    return sub_20C40B440(&v19[v28], &qword_27C7BB600, &unk_20C464880);
  }

  else
  {
    v27 = v36;
    v47 = 0;
    sub_20C4064C0(&qword_27C7BB140, type metadata accessor for DynamicArtworkLayoutEnvironment);
    sub_20C460810();
    sub_20C42A374(v12, v19, &qword_27C7BB5F8, &unk_20C4640A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB620, &unk_20C4640C0);
    v46 = 1;
    sub_20C42B078();
    sub_20C460840();
    *&v19[*(v37 + 20)] = v43;
    v45 = 2;
    sub_20C4064C0(&qword_27C7BAF30, type metadata accessor for ImageAsset);
    sub_20C460810();
    sub_20C42A374(v8, &v19[v41], &qword_27C7BB600, &unk_20C464880);
    v44 = 3;
    sub_20C417418(&qword_27C7BB648, &qword_27C7BB608, &qword_20C4640B0);
    v30 = v34;
    v29 = v35;
    sub_20C460840();
    (*(v27 + 8))(v38, v39);
    (*(v32 + 32))(&v19[*(v37 + 28)], v30, v29);
    sub_20C42B134(v19, v33);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_20C42BCC8(v19, type metadata accessor for DynamicImageAssetState);
  }
}

unint64_t sub_20C42B078()
{
  result = qword_27C7BB640;
  if (!qword_27C7BB640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB620, &unk_20C4640C0);
    sub_20C4064C0(&qword_27C7BAF30, type metadata accessor for ImageAsset);
    sub_20C410934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB640);
  }

  return result;
}

uint64_t sub_20C42B134(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicImageAssetState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DynamicImageAssetState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v25 = type metadata accessor for ImageAsset();
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v25);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v24 - v18;
  sub_20C409B04(v2, &v24 - v18, &qword_27C7BB5F8, &unk_20C4640A0);
  if ((*(v12 + 48))(v19, 1, v11) == 1)
  {
    sub_20C460950();
  }

  else
  {
    sub_20C42BC60(v19, v15, type metadata accessor for DynamicArtworkLayoutEnvironment);
    sub_20C460950();
    DynamicArtworkLayoutEnvironment.hash(into:)();
    sub_20C42BCC8(v15, type metadata accessor for DynamicArtworkLayoutEnvironment);
  }

  v20 = type metadata accessor for DynamicImageAssetState();
  sub_20C412334(a1, *(v2 + v20[5]));
  sub_20C409B04(v2 + v20[6], v10, &qword_27C7BB600, &unk_20C464880);
  if ((*(v4 + 48))(v10, 1, v25) == 1)
  {
    sub_20C460950();
  }

  else
  {
    v21 = v24;
    sub_20C42BC60(v10, v24, type metadata accessor for ImageAsset);
    sub_20C460950();
    ImageAsset.hash(into:)();
    sub_20C42BCC8(v21, type metadata accessor for ImageAsset);
  }

  v22 = v20[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  sub_20C417418(&qword_27C7BB650, &qword_27C7BB608, &qword_20C4640B0);
  return sub_20C460460();
}

uint64_t DynamicImageAssetState.hashValue.getter()
{
  sub_20C460930();
  DynamicImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C42B5B0()
{
  sub_20C460930();
  DynamicImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C42B5F4()
{
  sub_20C460930();
  DynamicImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t _s12FitnessAsset012DynamicImageB5StateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v46 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB678, &qword_20C4642F0);
  v10 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v52 = &v46 - v11;
  v12 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB680, &qword_20C4642F8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v46 - v24;
  v26 = *(v23 + 56);
  v53 = a1;
  sub_20C409B04(a1, &v46 - v24, &qword_27C7BB5F8, &unk_20C4640A0);
  sub_20C409B04(a2, &v25[v26], &qword_27C7BB5F8, &unk_20C4640A0);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) == 1)
  {
    if (v27(&v25[v26], 1, v12) == 1)
    {
      sub_20C40B440(v25, &qword_27C7BB5F8, &unk_20C4640A0);
      goto LABEL_9;
    }

LABEL_6:
    v28 = &qword_27C7BB680;
    v29 = &qword_20C4642F8;
    v30 = v25;
LABEL_7:
    sub_20C40B440(v30, v28, v29);
    goto LABEL_18;
  }

  sub_20C409B04(v25, v20, &qword_27C7BB5F8, &unk_20C4640A0);
  if (v27(&v25[v26], 1, v12) == 1)
  {
    sub_20C42BCC8(v20, type metadata accessor for DynamicArtworkLayoutEnvironment);
    goto LABEL_6;
  }

  sub_20C42BC60(&v25[v26], v16, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v31 = _s12FitnessAsset31DynamicArtworkLayoutEnvironmentV2eeoiySbAC_ACtFZ_0(v20, v16);
  sub_20C42BCC8(v16, type metadata accessor for DynamicArtworkLayoutEnvironment);
  sub_20C42BCC8(v20, type metadata accessor for DynamicArtworkLayoutEnvironment);
  sub_20C40B440(v25, &qword_27C7BB5F8, &unk_20C4640A0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v32 = type metadata accessor for DynamicImageAssetState();
  v33 = v53;
  if ((sub_20C411008(*(v53 + v32[5]), *(a2 + v32[5])) & 1) == 0)
  {
    goto LABEL_18;
  }

  v34 = v32[6];
  v35 = *(v49 + 48);
  v36 = v52;
  sub_20C409B04(v33 + v34, v52, &qword_27C7BB600, &unk_20C464880);
  sub_20C409B04(a2 + v34, v36 + v35, &qword_27C7BB600, &unk_20C464880);
  v37 = v51;
  v38 = *(v50 + 48);
  if (v38(v36, 1, v51) != 1)
  {
    v39 = v48;
    sub_20C409B04(v36, v48, &qword_27C7BB600, &unk_20C464880);
    if (v38(v36 + v35, 1, v37) != 1)
    {
      v40 = v36 + v35;
      v41 = v47;
      sub_20C42BC60(v40, v47, type metadata accessor for ImageAsset);
      v42 = _s12FitnessAsset05ImageB0V2eeoiySbAC_ACtFZ_0(v39, v41);
      sub_20C42BCC8(v41, type metadata accessor for ImageAsset);
      sub_20C42BCC8(v39, type metadata accessor for ImageAsset);
      sub_20C40B440(v36, &qword_27C7BB600, &unk_20C464880);
      if (v42)
      {
        goto LABEL_17;
      }

LABEL_18:
      v44 = 0;
      return v44 & 1;
    }

    sub_20C42BCC8(v39, type metadata accessor for ImageAsset);
    goto LABEL_15;
  }

  if (v38(v36 + v35, 1, v37) != 1)
  {
LABEL_15:
    v28 = &qword_27C7BB678;
    v29 = &qword_20C4642F0;
    v30 = v36;
    goto LABEL_7;
  }

  sub_20C40B440(v36, &qword_27C7BB600, &unk_20C464880);
LABEL_17:
  v43 = v32[7];
  type metadata accessor for Artwork();
  sub_20C4064C0(&qword_28110B638, type metadata accessor for Artwork);
  v44 = sub_20C45FD90();
  return v44 & 1;
}

uint64_t sub_20C42BC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C42BCC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for AssetPlatform(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AssetPlatform(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_20C42BEEC()
{
  result = qword_27C7BB660;
  if (!qword_27C7BB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB660);
  }

  return result;
}

unint64_t sub_20C42BF44()
{
  result = qword_27C7BB668;
  if (!qword_27C7BB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB668);
  }

  return result;
}

unint64_t sub_20C42BF9C()
{
  result = qword_27C7BB670;
  if (!qword_27C7BB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB670);
  }

  return result;
}

uint64_t sub_20C42BFF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x800000020C467710 == a2;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C4677A0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C4677C0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t ImageAsset.cropCode.getter()
{
  v1 = (v0 + *(type metadata accessor for ImageAsset() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ImageAsset.fileType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ImageAsset();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ImageAsset.init(backgroundColor:cropCode:fileType:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  sub_20C409B04(a1, a5, &qword_27C7BAC10, &qword_20C462070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB688, &qword_20C464A40);
  sub_20C45FE50();
  sub_20C40B440(a2, &qword_27C7BB688, &qword_20C464A40);
  sub_20C40B440(a1, &qword_27C7BAC10, &qword_20C462070);
  v10 = type metadata accessor for ImageAsset();
  v11 = (a5 + v10[5]);
  *v11 = v13;
  v11[1] = v14;
  *(a5 + v10[6]) = v9;
  return sub_20C409BD0(a4, a5 + v10[7], &qword_27C7BAC18, &unk_20C464A00);
}

uint64_t sub_20C42C354()
{
  v1 = 0x756F72676B636162;
  v2 = 0x65707954656C6966;
  if (*v0 != 2)
  {
    v2 = 0x6574616C706D6574;
  }

  if (*v0)
  {
    v1 = 0x65646F43706F7263;
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

uint64_t sub_20C42C3E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C42DA08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C42C40C(uint64_t a1)
{
  v2 = sub_20C42D70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C42C448(uint64_t a1)
{
  v2 = sub_20C42D70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAsset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB690, &qword_20C464300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C42D70C();
  sub_20C4609C0();
  v17[15] = 0;
  sub_20C45FD00();
  sub_20C405D3C(qword_28110B4E0, MEMORY[0x277D09D68]);
  sub_20C460880();
  if (!v2)
  {
    v11 = type metadata accessor for ImageAsset();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v17[14] = 1;
    sub_20C460890();
    v17[13] = *(v3 + v11[6]);
    v17[12] = 2;
    sub_20C42D760();
    sub_20C4608B0();
    v15 = v11[7];
    v17[11] = 3;
    sub_20C45FC30();
    sub_20C405D3C(&qword_28110BEB8, MEMORY[0x277CC9260]);
    sub_20C460880();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ImageAsset.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB698, &qword_20C464308);
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = type metadata accessor for ImageAsset();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20C42D70C();
  v21 = v34;
  sub_20C4609B0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v22 = v32;
  v23 = v18;
  v34 = v6;
  sub_20C45FD00();
  v40 = 0;
  sub_20C405D3C(&qword_27C7BAC30, MEMORY[0x277D09D68]);
  v24 = v33;
  sub_20C460810();
  sub_20C409BD0(v10, v23, &qword_27C7BAC10, &qword_20C462070);
  v39 = 1;
  v25 = sub_20C460820();
  v26 = (v23 + v15[5]);
  *v26 = v25;
  v26[1] = v27;
  v37 = 2;
  sub_20C42D7B4();
  sub_20C460840();
  *(v23 + v15[6]) = v38;
  sub_20C45FC30();
  v36 = 3;
  sub_20C405D3C(&qword_27C7BAC38, MEMORY[0x277CC9260]);
  v28 = v34;
  sub_20C460810();
  (*(v22 + 8))(v14, v24);
  sub_20C409BD0(v28, v23 + v15[7], &qword_27C7BAC18, &unk_20C464A00);
  sub_20C42D808(v23, v31);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_20C42D86C(v23);
}

uint64_t ImageAsset.hash(into:)()
{
  v1 = v0;
  v2 = sub_20C45FC30();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - v7;
  v9 = sub_20C45FD00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  sub_20C409B04(v1, &v25 - v16, &qword_27C7BAC10, &qword_20C462070);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_20C460950();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_20C460950();
    sub_20C405D3C(&qword_28110B4D8, MEMORY[0x277D09D68]);
    sub_20C460460();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for ImageAsset();
  v19 = (v1 + v18[5]);
  v20 = *v19;
  v21 = v19[1];
  sub_20C4604F0();
  *(v1 + v18[6]);
  sub_20C4604F0();

  sub_20C409B04(v1 + v18[7], v8, &qword_27C7BAC18, &unk_20C464A00);
  v22 = v26;
  if ((*(v26 + 48))(v8, 1, v2) == 1)
  {
    return sub_20C460950();
  }

  v24 = v25;
  (*(v22 + 32))(v25, v8, v2);
  sub_20C460950();
  sub_20C405D3C(&qword_28110BEB0, MEMORY[0x277CC9260]);
  sub_20C460460();
  return (*(v22 + 8))(v24, v2);
}

uint64_t ImageAsset.hashValue.getter()
{
  sub_20C460930();
  ImageAsset.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C42CFCC()
{
  sub_20C460930();
  ImageAsset.hash(into:)();
  return sub_20C460970();
}

uint64_t sub_20C42D010()
{
  sub_20C460930();
  ImageAsset.hash(into:)();
  return sub_20C460970();
}

BOOL _s12FitnessAsset05ImageB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FC30();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v57 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC48, &qword_20C4613F0);
  v10 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v60 = &v57 - v11;
  v12 = sub_20C45FD00();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC50, &qword_20C4613F8);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v57 - v24;
  v26 = *(v23 + 56);
  sub_20C409B04(a1, &v57 - v24, &qword_27C7BAC10, &qword_20C462070);
  sub_20C409B04(a2, &v25[v26], &qword_27C7BAC10, &qword_20C462070);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) == 1)
  {
    if (v27(&v25[v26], 1, v12) == 1)
    {
      sub_20C40B440(v25, &qword_27C7BAC10, &qword_20C462070);
      goto LABEL_11;
    }

LABEL_6:
    v28 = &qword_27C7BAC50;
    v29 = &qword_20C4613F8;
    v30 = v25;
LABEL_7:
    sub_20C40B440(v30, v28, v29);
    return 0;
  }

  sub_20C409B04(v25, v20, &qword_27C7BAC10, &qword_20C462070);
  if (v27(&v25[v26], 1, v12) == 1)
  {
    (*(v13 + 8))(v20, v12);
    goto LABEL_6;
  }

  (*(v13 + 32))(v16, &v25[v26], v12);
  sub_20C405D3C(&qword_28110B4D0, MEMORY[0x277D09D68]);
  v32 = sub_20C4604B0();
  v33 = *(v13 + 8);
  v33(v16, v12);
  v33(v20, v12);
  sub_20C40B440(v25, &qword_27C7BAC10, &qword_20C462070);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v34 = type metadata accessor for ImageAsset();
  v35 = v34[5];
  v36 = *(a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  if ((v36 != *v38 || v37 != v38[1]) && (sub_20C4608D0() & 1) == 0)
  {
    return 0;
  }

  v39 = v34[6];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40)
  {
    v42 = 6778986;
  }

  else
  {
    v42 = 6778480;
  }

  if (v41)
  {
    v43 = 6778986;
  }

  else
  {
    v43 = 6778480;
  }

  if (v42 == v43)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v44 = sub_20C4608D0();
    swift_bridgeObjectRelease_n();
    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  v45 = v34[7];
  v46 = *(v59 + 48);
  v47 = a1 + v45;
  v48 = v60;
  sub_20C409B04(v47, v60, &qword_27C7BAC18, &unk_20C464A00);
  sub_20C409B04(a2 + v45, v48 + v46, &qword_27C7BAC18, &unk_20C464A00);
  v50 = v61;
  v49 = v62;
  v51 = *(v61 + 48);
  if (v51(v48, 1, v62) == 1)
  {
    if (v51(v48 + v46, 1, v49) == 1)
    {
      sub_20C40B440(v48, &qword_27C7BAC18, &unk_20C464A00);
      return 1;
    }

    goto LABEL_28;
  }

  v52 = v58;
  sub_20C409B04(v48, v58, &qword_27C7BAC18, &unk_20C464A00);
  if (v51(v48 + v46, 1, v49) == 1)
  {
    (*(v50 + 8))(v52, v49);
LABEL_28:
    v28 = &qword_27C7BAC48;
    v29 = &qword_20C4613F0;
    v30 = v48;
    goto LABEL_7;
  }

  v53 = v48 + v46;
  v54 = v57;
  (*(v50 + 32))(v57, v53, v49);
  sub_20C405D3C(&qword_28110BEA8, MEMORY[0x277CC9260]);
  v55 = sub_20C4604B0();
  v56 = *(v50 + 8);
  v56(v54, v49);
  v56(v52, v49);
  sub_20C40B440(v48, &qword_27C7BAC18, &unk_20C464A00);
  return (v55 & 1) != 0;
}

unint64_t sub_20C42D70C()
{
  result = qword_28110BCB0;
  if (!qword_28110BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BCB0);
  }

  return result;
}

unint64_t sub_20C42D760()
{
  result = qword_28110B580[0];
  if (!qword_28110B580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28110B580);
  }

  return result;
}

unint64_t sub_20C42D7B4()
{
  result = qword_27C7BB6A0;
  if (!qword_27C7BB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB6A0);
  }

  return result;
}

uint64_t sub_20C42D808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C42D86C(uint64_t a1)
{
  v2 = type metadata accessor for ImageAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C42D904()
{
  result = qword_27C7BB6A8;
  if (!qword_27C7BB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB6A8);
  }

  return result;
}

unint64_t sub_20C42D95C()
{
  result = qword_28110BCA0;
  if (!qword_28110BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BCA0);
  }

  return result;
}

unint64_t sub_20C42D9B4()
{
  result = qword_28110BCA8;
  if (!qword_28110BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BCA8);
  }

  return result;
}

uint64_t sub_20C42DA08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65707954656C6966 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t ImageAssetEnvironment.init(fetchRemoteImage:evaluateImageAssetCacheKey:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void ImageAssetCache.insertImage(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = *(v12 + 24);
  sub_20C45FE20();
  (*(v7 + 16))(v10, a2, v6);
  v14 = sub_20C45FE30();
  [v11 setObject:a1 forKey:v14];
}

id ImageAssetCache.image(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v11 = *(v10 + 24);
  sub_20C45FE20();
  (*(v5 + 16))(v8, a1, v4);
  v12 = sub_20C45FE30();
  v13 = [v9 objectForKey_];

  return v13;
}

void ImageAssetCache.init(countLimit:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C7BB6B0, &qword_20C464558);
  sub_20C45FE20();
  sub_20C406B94();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = v4;
  v5 = v4;
  [v5 setCountLimit_];
  [v5 baf:0 setEvictsObjectsWhenApplicationEntersBackground:?];
}

uint64_t sub_20C42DE7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_20C42DED0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C42DF18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AssetPlatform.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656E6F6870;
  v2 = 30324;
  if (a1 != 2)
  {
    v2 = 0x6863746177;
  }

  if (a1)
  {
    v1 = 0x74656C626174;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C42E004(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x656E6F6870;
  v3 = *a1;
  v4 = 0xE500000000000000;
  v5 = 0xE200000000000000;
  v6 = 30324;
  if (v3 != 2)
  {
    v6 = 0x6863746177;
    v5 = 0xE500000000000000;
  }

  v7 = 0x74656C626174;
  if (*a1)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v7 = 0x656E6F6870;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  v10 = 0xE500000000000000;
  v11 = 0xE200000000000000;
  v12 = 30324;
  if (*a2 != 2)
  {
    v12 = 0x6863746177;
    v11 = 0xE500000000000000;
  }

  if (*a2)
  {
    v2 = 0x74656C626174;
    v10 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_20C4608D0();
  }

  return v15 & 1;
}

uint64_t sub_20C42E11C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s12FitnessAsset0B8PlatformO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_20C42E14C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656E6F6870;
  v4 = 0xE200000000000000;
  v5 = 30324;
  if (*v1 != 2)
  {
    v5 = 0x6863746177;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x74656C626174;
    v2 = 0xE600000000000000;
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

uint64_t sub_20C42E280()
{
  v1 = *v0;
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

uint64_t sub_20C42E32C()
{
  *v0;
  *v0;
  *v0;
  sub_20C4604F0();
}

uint64_t sub_20C42E3C4()
{
  v1 = *v0;
  sub_20C460930();
  sub_20C4604F0();

  return sub_20C460970();
}

uint64_t _s12FitnessAsset0B8PlatformO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_20C4607E0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_20C42E4BC()
{
  result = qword_27C7BB738;
  if (!qword_27C7BB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB740, &qword_20C464618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB738);
  }

  return result;
}

unint64_t sub_20C42E524()
{
  result = qword_27C7BB748;
  if (!qword_27C7BB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB748);
  }

  return result;
}

unint64_t sub_20C42E588()
{
  result = qword_27C7BB750;
  if (!qword_27C7BB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB750);
  }

  return result;
}

void sub_20C42E5DC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    if (a1)
    {
      sub_20C42E830();
      v5 = v4;
      v6 = a1;
      v7 = sub_20C4606C0();

      if (v7)
      {
        return;
      }

      v4 = *(v2 + 16);
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
  }

  *(v2 + 16) = a1;
  v8 = a1;

  v9 = *(v2 + 24);

  [v9 setContact_];
}

uint64_t AvatarViewControllerWrapper.Coordinator.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id AvatarViewControllerWrapper.makeUIViewController(context:)()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB758, &qword_20C464700);
  sub_20C4602D0();
  v2 = *(v9 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_20C42E830();
  v3 = v2;
  v4 = v1;
  v5 = sub_20C4606C0();

  if ((v5 & 1) == 0)
  {
    v2 = *(v9 + 16);
LABEL_4:
    *(v9 + 16) = v1;
    v6 = v1;

    [*(v9 + 24) setContact_];
  }

  sub_20C4602D0();
  v7 = [*(v9 + 24) wrappedViewController];

  return v7;
}

unint64_t sub_20C42E830()
{
  result = qword_27C7BB760;
  if (!qword_27C7BB760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C7BB760);
  }

  return result;
}

uint64_t AvatarViewControllerWrapper.updateUIViewController(_:context:)()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB758, &qword_20C464700);
  sub_20C4602D0();
  v2 = *(v8 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  sub_20C42E830();
  v3 = v2;
  v4 = v1;
  v5 = sub_20C4606C0();

  if ((v5 & 1) == 0)
  {
    v2 = *(v8 + 16);
LABEL_4:
    *(v8 + 16) = v1;
    v6 = v1;

    [*(v8 + 24) setContact_];
  }
}

uint64_t AvatarViewControllerWrapper.makeCoordinator()()
{
  type metadata accessor for AvatarViewControllerWrapper.Coordinator();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = [objc_allocWithZone(SMUAvatarViewController) init];
  return v0;
}

unint64_t sub_20C42E9C8()
{
  result = qword_27C7BB768;
  if (!qword_27C7BB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB768);
  }

  return result;
}

id sub_20C42EA1C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB758, &qword_20C464700);
  sub_20C4602D0();
  sub_20C42E5DC(v1);

  sub_20C4602D0();
  v2 = [*(v4 + 24) wrappedViewController];

  return v2;
}

uint64_t sub_20C42EAC4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB758, &qword_20C464700);
  sub_20C4602D0();
  sub_20C42E5DC(v1);
}

id sub_20C42EB34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AvatarViewControllerWrapper.Coordinator();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = [objc_allocWithZone(SMUAvatarViewController) init];
  *(v2 + 24) = result;
  *a1 = v2;
  return result;
}

uint64_t sub_20C42EBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C42ECE0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_20C42EC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C42ECE0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_20C42EC90()
{
  sub_20C42ECE0();
  sub_20C4602B0();
  __break(1u);
}

unint64_t sub_20C42ECE0()
{
  result = qword_27C7BB770;
  if (!qword_27C7BB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB770);
  }

  return result;
}

BOOL sub_20C42ED34()
{
  v1 = v0;
  v2 = sub_20C45FC90();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - v18;
  sub_20C409B04(v1, &v30 - v18, &qword_27C7BAF10, &qword_20C4640D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 1;
    }

    v21 = sub_20C45FCC0();
    (*(*(v21 - 8) + 8))(v19, v21);
  }

  else
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
    sub_20C409BD0(v19, v15, &qword_27C7BAF60, &unk_20C462050);
    v23 = v30;
    v24 = &v19[v22];
    v25 = v31;
    (*(v30 + 32))(v8, v24, v31);
    sub_20C409B04(v15, v13, &qword_27C7BAF60, &unk_20C462050);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_20C45FC80();
      sub_20C45FC60();
      v27 = v26;
      v28 = *(v23 + 8);
      v28(v6, v25);
      v28(v8, v25);
      sub_20C40B440(v15, &qword_27C7BAF60, &unk_20C462050);
      sub_20C40B440(v13, &qword_27C7BAF60, &unk_20C462050);
      return v27 > 600.0;
    }

    (*(v23 + 8))(v8, v25);
    sub_20C40B440(v15, &qword_27C7BAF60, &unk_20C462050);
    sub_20C40B440(v13, &qword_27C7BAF60, &unk_20C462050);
  }

  return 0;
}

uint64_t sub_20C42F0B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_20C45FF30();
  v6 = sub_20C45FF40();
  sub_20C42F1BC(v11, a1, v6);

  if (!v2)
  {
    v8 = sub_20C45FF50();
    sub_20C42F1BC(v10, a1, v8);

    a2[3] = &type metadata for ArtworkPredicateLogicalOperation;
    a2[4] = &protocol witness table for ArtworkPredicateLogicalOperation;
    v9 = swift_allocObject();
    *a2 = v9;
    sub_20C42A130(v11, v9 + 16);
    sub_20C42A130(v10, v9 + 56);
    *(v9 + 96) = v5 & 1;
    __swift_destroy_boxed_opaque_existential_1(v10);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return result;
}

uint64_t sub_20C42F1BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v39 = a1;
  v40 = a3;
  v4 = sub_20C45FF60();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C45FF90();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C45FFD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C45FE80();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v28 = swift_projectBox();
      v30 = v35;
      v29 = v36;
      (*(v35 + 16))(v11, v28, v36);
      sub_20C437EDC(v39, v40);
      return (*(v30 + 8))(v11, v29);
    }

    else
    {
      v32 = swift_projectBox();
      v34 = v37;
      v33 = v38;
      (*(v37 + 16))(v7, v32, v38);
      sub_20C42F0B8(v39, v40);
      return (*(v34 + 8))(v7, v33);
    }
  }

  else if (v22)
  {
    v31 = swift_projectBox();
    (*(v13 + 16))(v16, v31, v12);
    sub_20C436A64(v39, v40);
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    v23 = swift_projectBox();
    (*(v18 + 16))(v21, v23, v17);
    v24 = sub_20C45FE70();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAED8, &qword_20C461BC0);
    v26 = v40;
    v40[3] = v25;
    v26[4] = sub_20C40FF88();
    *v26 = v24 & 1;
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_20C42F574()
{
  v44 = sub_20C45FC30();
  v43 = *(v44 - 8);
  v0 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v38 - v4;
  v5 = sub_20C45FD00();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for ImageAsset();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C45FCC0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DynamicImageAssetFeature.TaskIdentifier(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C43A9C4(v45, v24, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48)];
    v26 = *(v25 + 4);
    v54 = *(v25 + 3);
    v55 = v26;
    v27 = *(v25 + 2);
    v52 = *(v25 + 1);
    v53 = v27;
    v51 = *v25;
    sub_20C43AA2C(v24, v15, type metadata accessor for ImageAsset);
    MEMORY[0x20F2FAEA0](1);
    sub_20C409B04(v15, v11, &qword_27C7BAC10, &qword_20C462070);
    v28 = v41;
    if ((*(v41 + 48))(v11, 1, v5) == 1)
    {
      sub_20C460950();
    }

    else
    {
      v30 = v39;
      (*(v28 + 32))(v39, v11, v5);
      sub_20C460950();
      sub_20C43BD3C(&qword_28110B4D8, MEMORY[0x277D09D68]);
      sub_20C460460();
      (*(v28 + 8))(v30, v5);
    }

    v31 = v44;
    v32 = v43;
    v33 = &v15[v12[5]];
    v34 = *v33;
    v35 = *(v33 + 1);
    sub_20C4604F0();
    v15[v12[6]];
    sub_20C4604F0();

    v36 = v42;
    sub_20C409B04(&v15[v12[7]], v42, &qword_27C7BAC18, &unk_20C464A00);
    if ((*(v32 + 48))(v36, 1, v31) == 1)
    {
      sub_20C460950();
    }

    else
    {
      v37 = v40;
      (*(v32 + 32))(v40, v36, v31);
      sub_20C460950();
      sub_20C43BD3C(&qword_28110BEB0, MEMORY[0x277CC9260]);
      sub_20C460460();
      (*(v32 + 8))(v37, v31);
    }

    v48 = v53;
    v49 = v54;
    v50 = v55;
    v46 = v51;
    v47 = v52;
    ImageAssetCacheKey.hash(into:)();
    sub_20C40C57C(&v51);
    return sub_20C43AA94(v15, type metadata accessor for ImageAsset);
  }

  else
  {
    (*(v17 + 32))(v20, v24, v16);
    MEMORY[0x20F2FAEA0](0);
    sub_20C43BD3C(&qword_28110BE90, MEMORY[0x277CC95F0]);
    sub_20C460460();
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t sub_20C42FC28()
{
  sub_20C460930();
  sub_20C42F574();
  return sub_20C460970();
}

uint64_t sub_20C42FC6C()
{
  sub_20C460930();
  sub_20C42F574();
  return sub_20C460970();
}

void sub_20C42FCAC()
{
  qword_27C7C40A8 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v0 = qword_27C7C40A8;
  [v0 setCountLimit_];
  [v0 baf:0 setEvictsObjectsWhenApplicationEntersBackground:?];
}

__n128 DynamicImageAssetFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C45FCB0();
  v4 = (a2 + *(type metadata accessor for DynamicImageAssetFeature(0) + 20));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v6;
  return result;
}

uint64_t DynamicImageAssetFeature.dispose(localState:sharedState:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ImageAsset();
  v44 = *(v3 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF50, &unk_20C464870);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v12 = *(a2 + *(type metadata accessor for DynamicImageAssetState() + 20));
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v45 = v12;
  v46 = a2;

  v19 = 0;
  v20 = 0;
  v43 = v11;
  if (v16)
  {
    while (1)
    {
      v49 = v20;
      v21 = v19;
LABEL_13:
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v45;
      v27 = v50;
      sub_20C43A9C4(*(v45 + 48) + *(v44 + 72) * v25, v50, type metadata accessor for ImageAsset);
      v28 = *(*(v26 + 56) + 8 * v25);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      v30 = *(v29 + 48);
      v31 = v27;
      v32 = v48;
      sub_20C43AA2C(v31, v48, type metadata accessor for ImageAsset);
      *(v32 + v30) = v28;
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);

      v23 = v21;
      v33 = v32;
      v11 = v43;
      v20 = v49;
LABEL_14:
      sub_20C409BD0(v33, v11, &qword_27C7BAF50, &unk_20C464870);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
      {
      }

      v35 = *&v11[*(v34 + 48)];
      v36 = v50;
      v37 = sub_20C43AA2C(v11, v50, type metadata accessor for ImageAsset);
      MEMORY[0x28223BE20](v37);
      *(&v42 - 2) = v47;
      v38 = sub_20C43A808(sub_20C4302F4, (&v42 - 4), v35);

      MEMORY[0x28223BE20](v39);
      *(&v42 - 2) = v46;
      *(&v42 - 1) = v36;
      sub_20C430638(sub_20C43A988, (&v42 - 4), v38);

      result = sub_20C43AA94(v36, type metadata accessor for ImageAsset);
      v19 = v23;
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v22 = v19 + 1;
    }

    else
    {
      v22 = v17;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v17)
      {
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
        v41 = v48;
        (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
        v33 = v41;
        v16 = 0;
        goto LABEL_14;
      }

      v16 = *(v13 + 8 * v21);
      ++v19;
      if (v16)
      {
        v49 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20C4301F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  v9 = sub_20C45FCC0();
  (*(*(v9 - 8) + 16))(v8, a3, v9);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a3) = sub_20C452F50(a2, v8);
  sub_20C40B440(v8, &qword_27C7BAF10, &qword_20C4640D0);
  return a3 & 1;
}

uint64_t sub_20C4302FC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-v8];
  v10 = type metadata accessor for ImageAsset();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a1[3];
  v23[2] = a1[2];
  v23[3] = v14;
  v23[4] = a1[4];
  v15 = a1[1];
  v23[0] = *a1;
  v23[1] = v15;
  sub_20C43A9C4(a3, v13, type metadata accessor for ImageAsset);
  v16 = a2 + *(type metadata accessor for DynamicImageAssetState() + 20);
  v17 = sub_20C4304EC(v22, v13);
  if (*v18)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
    sub_20C40C520(v23, v21);
    sub_20C453554(v9, v23);
  }

  (v17)(v22, 0);
  return sub_20C43AA94(v13, type metadata accessor for ImageAsset);
}

void (*sub_20C4304EC(uint64_t *a1, uint64_t a2))(void *a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for ImageAsset() - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_20C43A9C4(a2, v8, type metadata accessor for ImageAsset);
  v6[5] = sub_20C43B2D0(v6, v9);
  return sub_20C4305C8;
}

void sub_20C4305C8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_20C43AA94(v2, type metadata accessor for ImageAsset);
  free(v2);

  free(v1);
}

uint64_t sub_20C430638(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + 80 * (__clz(__rbit64(v9)) | (v13 << 6)));
      v30[0] = *v14;
      v15 = v14[4];
      v17 = v14[1];
      v16 = v14[2];
      v30[3] = v14[3];
      v30[4] = v15;
      v30[1] = v17;
      v30[2] = v16;
      v18 = v14[3];
      v27 = v14[2];
      v28 = v18;
      v29 = v14[4];
      v19 = v14[1];
      v25 = *v14;
      v26 = v19;
      sub_20C40C520(v30, &v20);
      a1(&v25);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v22 = v27;
      v23 = v28;
      v24 = v29;
      v20 = v25;
      v21 = v26;
      result = sub_20C40C57C(&v20);
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v22 = v27;
    v23 = v28;
    v24 = v29;
    v20 = v25;
    v21 = v26;
    sub_20C40C57C(&v20);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DynamicImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, char *a4)
{
  v383 = a1;
  v384 = a4;
  v385 = a2;
  v375 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v358 = &v334 - v6;
  v7 = sub_20C45FCC0();
  v370 = *(v7 - 8);
  v371 = v7;
  v8 = *(v370 + 64);
  MEMORY[0x28223BE20](v7);
  v346 = &v334 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = type metadata accessor for DynamicImageAssetFeature(0);
  v350 = *(v374 - 8);
  v10 = *(v350 + 64);
  MEMORY[0x28223BE20](v374);
  v351 = v11;
  v352 = &v334 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = type metadata accessor for DynamicImageAssetFeature.TaskIdentifier(0);
  v12 = *(*(v361 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v361);
  v336 = &v334 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v342 = &v334 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v341 = &v334 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v360 = &v334 - v20;
  MEMORY[0x28223BE20](v19);
  v349 = &v334 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4E0, &qword_20C463C50);
  v362 = *(v22 - 8);
  v363 = v22;
  v23 = *(v362 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v337 = &v334 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v344 = &v334 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v343 = &v334 - v29;
  MEMORY[0x28223BE20](v28);
  v359 = &v334 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v356 = &v334 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v355 = &v334 - v36;
  MEMORY[0x28223BE20](v35);
  v357 = &v334 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v42 = &v334 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v354 = &v334 - v43;
  v44 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v376 = *(v44 - 8);
  v377 = v44;
  v45 = *(v376 + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v334 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46);
  v364 = &v334 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v367 = &v334 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v366 = &v334 - v54;
  MEMORY[0x28223BE20](v53);
  v347 = &v334 - v55;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v378 = *(v381 - 8);
  v56 = *(v378 + 64);
  v57 = MEMORY[0x28223BE20](v381);
  v369 = &v334 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v373 = &v334 - v59;
  v60 = type metadata accessor for ImageAsset();
  v61 = *(v60 - 8);
  v379 = v60;
  v380 = v61;
  v62 = *(v61 + 64);
  v63 = MEMORY[0x28223BE20](v60);
  v335 = &v334 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v63);
  v353 = &v334 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v340 = &v334 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v372 = &v334 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v338 = &v334 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v345 = &v334 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v76 = &v334 - v75;
  v77 = MEMORY[0x28223BE20](v74);
  v339 = &v334 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v365 = &v334 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v83 = &v334 - v82;
  v84 = MEMORY[0x28223BE20](v81);
  v348 = &v334 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v368 = &v334 - v87;
  MEMORY[0x28223BE20](v86);
  v89 = &v334 - v88;
  v90 = type metadata accessor for DynamicImageAssetAction();
  v91 = *(*(v90 - 8) + 64);
  v92 = MEMORY[0x28223BE20](v90);
  v94 = &v334 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v92);
  v96 = (&v334 - v95);
  sub_20C43A9C4(v384, &v334 - v95, type metadata accessor for DynamicImageAssetAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v99 = (v96 + *(v98 + 48));
        v100 = v99[3];
        v412[3] = v99[4];
        v412[1] = v99[2];
        v412[2] = v100;
        v101 = v99[1];
        v411 = *v99;
        v412[0] = v101;
        v102 = (v96 + *(v98 + 64));
        v103 = *v102;
        v104 = v102[1];
        sub_20C43AA2C(v96, v89, type metadata accessor for ImageAsset);
        v105 = v373;
        swift_storeEnumTagMultiPayload();
        v438 = v412[1];
        v439 = v412[2];
        v440 = v412[3];
        v436 = v411;
        v437 = v412[0];
        v106 = v385;
        sub_20C43C69C(v105, v89, &v436);
        sub_20C40B440(v105, &qword_27C7BAF10, &qword_20C4640D0);
        sub_20C40C57C(&v411);
        v42 = v354;
        sub_20C409B04(v106, v354, &qword_27C7BB5F8, &unk_20C4640A0);
        if ((*(v376 + 48))(v42, 1, v377) == 1)
        {
          sub_20C43AA94(v89, type metadata accessor for ImageAsset);
LABEL_22:
          v114 = &qword_27C7BB5F8;
          v115 = &unk_20C4640A0;
          v116 = v42;
          return sub_20C40B440(v116, v114, v115);
        }

        v167 = v347;
        sub_20C43AA2C(v42, v347, type metadata accessor for DynamicArtworkLayoutEnvironment);
        v168 = &v94[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48)];
        sub_20C43A9C4(v167, v94, type metadata accessor for DynamicArtworkLayoutEnvironment);
        *v168 = v103;
        *(v168 + 1) = v104;
        swift_storeEnumTagMultiPayload();
        DynamicImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(v383, v106, v375, v94);
        sub_20C43AA94(v94, type metadata accessor for DynamicImageAssetAction);
        sub_20C43AA94(v167, type metadata accessor for DynamicArtworkLayoutEnvironment);
        v132 = type metadata accessor for ImageAsset;
        return sub_20C43AA94(v89, v132);
      }

      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v134 = (v96 + *(v133 + 48));
      v135 = v134[3];
      v412[3] = v134[4];
      v136 = v134[1];
      v412[1] = v134[2];
      v412[2] = v135;
      v411 = *v134;
      v412[0] = v136;
      v388 = v412[1];
      v389 = v135;
      v390 = v412[3];
      v386 = v411;
      v387 = v136;
      v137 = (v96 + *(v133 + 64));
      v138 = *v137;
      v139 = v137[1];
      v140 = v368;
      sub_20C43AA2C(v96, v368, type metadata accessor for ImageAsset);
      v141 = v383;
      if ((*(v383 + 96) & 1) == 0 && v138 == *(v383 + 80) && v139 == *(v383 + 88) || !*(v383 + 16))
      {
        v192 = *(v383 + 48);
        v438 = *(v383 + 32);
        v439 = v192;
        v440 = *(v383 + 64);
        v193 = *(v383 + 16);
        v436 = *v383;
        v437 = v193;
        sub_20C40C520(&v411, &v434);
        sub_20C40B440(&v436, &qword_27C7BAC68, &unk_20C464890);
        v194 = v389;
        v141[2] = v388;
        v141[3] = v194;
        v141[4] = v390;
        v195 = v387;
        *v141 = v386;
        v141[1] = v195;
      }

      v438 = v412[1];
      v439 = v412[2];
      v440 = v412[3];
      v436 = v411;
      v437 = v412[0];
      v196 = v357;
      sub_20C43C7F4(v140, &v436, v357);
      v197 = *(v378 + 48);
      v198 = v381;
      v199 = v197(v196, 1, v381);
      v200 = v382;
      v201 = v369;
      if (v199 == 1)
      {
        swift_storeEnumTagMultiPayload();
        if (v197(v196, 1, v198) != 1)
        {
          sub_20C40B440(v196, &qword_27C7BAFB8, &unk_20C461F90);
        }
      }

      else
      {
        sub_20C409BD0(v196, v369, &qword_27C7BAF10, &qword_20C4640D0);
      }

      if (!sub_20C42ED34())
      {
        sub_20C40C57C(&v411);
        sub_20C40B440(v201, &qword_27C7BAF10, &qword_20C4640D0);
        return sub_20C43AA94(v140, type metadata accessor for ImageAsset);
      }

      v203 = v373;
      (*(v370 + 16))(v373, v200, v371);
      swift_storeEnumTagMultiPayload();
      v438 = v412[1];
      v439 = v412[2];
      v440 = v412[3];
      v436 = v411;
      v437 = v412[0];
      sub_20C43C69C(v203, v140, &v436);
      sub_20C40B440(v203, &qword_27C7BAF10, &qword_20C4640D0);
      v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
      v205 = v204[12];
      v206 = v204[16];
      v383 = v204[20];
      v207 = v359;
      v384 = &v359[v204[24]];
      v385 = v206;
      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120);
      v209 = v349;
      v210 = (v349 + *(v208 + 48));
      sub_20C43A9C4(v140, v349, type metadata accessor for ImageAsset);
      v211 = v412[2];
      v210[2] = v412[1];
      v210[3] = v211;
      v210[4] = v412[3];
      v212 = v412[0];
      *v210 = v411;
      v210[1] = v212;
      swift_storeEnumTagMultiPayload();
      sub_20C43A9C4(v209, v360, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
      sub_20C40C520(&v411, &v436);
      sub_20C43BD3C(&qword_27C7BB778, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
      sub_20C460720();
      sub_20C43AA94(v209, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
      sub_20C4605F0();
      v213 = *MEMORY[0x277D043E0];
      v214 = sub_20C460400();
      (*(*(v214 - 8) + 104))(&v207[v383], v213, v214);
      v215 = v348;
      sub_20C43A9C4(v140, v348, type metadata accessor for ImageAsset);
      v216 = v352;
      sub_20C43A9C4(v200, v352, type metadata accessor for DynamicImageAssetFeature);
      v217 = (*(v380 + 80) + 16) & ~*(v380 + 80);
      v218 = (v62 + v217 + 7) & 0xFFFFFFFFFFFFFFF8;
      v219 = (*(v350 + 80) + v218 + 16) & ~*(v350 + 80);
      v220 = (v351 + v219 + 7) & 0xFFFFFFFFFFFFFFF8;
      v221 = swift_allocObject();
      sub_20C43AA2C(v215, v221 + v217, type metadata accessor for ImageAsset);
      v222 = (v221 + v218);
      *v222 = v138;
      v222[1] = v139;
      sub_20C43AA2C(v216, v221 + v219, type metadata accessor for DynamicImageAssetFeature);
      v223 = (v221 + v220);
      v224 = v412[2];
      v223[2] = v412[1];
      v223[3] = v224;
      v223[4] = v412[3];
      v225 = v412[0];
      *v223 = v411;
      v223[1] = v225;
      v226 = v384;
      *v384 = &unk_20C4648F8;
      *(v226 + 1) = v221;
      v227 = *MEMORY[0x277D043F8];
      v228 = sub_20C460410();
      (*(*(v228 - 8) + 104))(&v207[v385], v227, v228);
      v230 = v362;
      v229 = v363;
      (*(v362 + 104))(v207, *MEMORY[0x277D043B0], v363);
      v231 = v375;
      v232 = *v375;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v232 = sub_20C426CFC(0, v232[2] + 1, 1, v232);
      }

      v234 = v232[2];
      v233 = v232[3];
      if (v234 >= v233 >> 1)
      {
        v232 = sub_20C426CFC(v233 > 1, v234 + 1, 1, v232);
      }

      sub_20C40B440(v369, &qword_27C7BAF10, &qword_20C4640D0);
      sub_20C43AA94(v368, type metadata accessor for ImageAsset);
      v232[2] = v234 + 1;
      result = (*(v230 + 32))(v232 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v234, v359, v229);
      goto LABEL_100;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v118 = *(v96 + *(v117 + 48));
      v119 = (v96 + *(v117 + 64));
      v120 = v119[3];
      v412[3] = v119[4];
      v412[1] = v119[2];
      v412[2] = v120;
      v121 = v119[1];
      v411 = *v119;
      v412[0] = v121;
      sub_20C43AA2C(v96, v83, type metadata accessor for ImageAsset);
      v438 = v412[1];
      v439 = v412[2];
      v440 = v412[3];
      v436 = v411;
      v437 = v412[0];
      v122 = v355;
      sub_20C43C7F4(v83, &v436, v355);
      if ((*(v378 + 48))(v122, 1, v381) == 1)
      {
        sub_20C43AA94(v83, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v411);
        v114 = &qword_27C7BAFB8;
        v115 = &unk_20C461F90;
        v116 = v122;
        return sub_20C40B440(v116, v114, v115);
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_20C43AA94(v83, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v411);
        v114 = &qword_27C7BAF10;
        v115 = &qword_20C4640D0;
        v116 = v122;
        return sub_20C40B440(v116, v114, v115);
      }

      v183 = v370;
      v182 = v371;
      v184 = v346;
      (*(v370 + 32))(v346, v122, v371);
      if ((sub_20C45FCA0() & 1) == 0)
      {
        sub_20C40C57C(&v411);
        (*(v183 + 8))(v184, v182);
        return sub_20C43AA94(v83, type metadata accessor for ImageAsset);
      }

      v185 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
      v186 = v373;
      *v373 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
      swift_storeEnumTagMultiPayload();
      sub_20C45FC80();
      swift_storeEnumTagMultiPayload();
      v438 = v412[1];
      v439 = v412[2];
      v440 = v412[3];
      v436 = v411;
      v437 = v412[0];
      sub_20C43C69C(v186, v83, &v436);
      sub_20C40B440(v186, &qword_27C7BAF10, &qword_20C4640D0);
      (*(v183 + 8))(v184, v182);
      v187 = v83;
      goto LABEL_70;
    }

    v152 = (v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
    v153 = *v152;
    v154 = v152[1];
    v155 = v366;
    sub_20C43AA2C(v96, v366, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v156 = type metadata accessor for DynamicImageAssetState();
    v157 = v385;
    v158 = v365;
    v159 = v382;
    sub_20C4357E8(v385 + *(v156 + 28), v155, v365);
    v160 = *(v156 + 24);
    sub_20C40B440(v157 + v160, &qword_27C7BB600, &unk_20C464880);
    sub_20C43A9C4(v158, v157 + v160, type metadata accessor for ImageAsset);
    (*(v380 + 56))(v157 + v160, 0, 1, v379);
    v161 = v159 + *(v374 + 20);
    v162 = *(v161 + 24);
    (*(v161 + 16))(&v434, v158, v153, v154);
    v438 = v435[1];
    v439 = v435[2];
    v440 = v435[3];
    v436 = v434;
    v437 = v435[0];
    v428 = v434;
    v243 = *&v435[0];
    v427 = *(&v435[3] + 1);
    v426 = *(&v435[2] + 8);
    v425 = *(&v435[1] + 8);
    v424 = *(v435 + 8);
    v244 = v383;
    v245 = *(v383 + 48);
    v433 = *(v383 + 64);
    v246 = *(v383 + 32);
    v432 = v245;
    v431 = v246;
    v247 = *(v383 + 16);
    v429 = *v383;
    v430 = v247;
    v423 = v429;
    v248 = v247;
    v249 = *(v383 + 40);
    v419 = *(v383 + 24);
    v420 = v249;
    v421 = *(v383 + 56);
    v422 = *(v383 + 72);
    if (*&v435[0])
    {
      v411 = v434;
      *(v412 + 8) = *(v435 + 8);
      *(&v412[1] + 8) = *(&v435[1] + 8);
      *(&v412[2] + 8) = *(&v435[2] + 8);
      *&v412[0] = *&v435[0];
      *(&v412[3] + 1) = *(&v435[3] + 1);
      v406 = v434;
      v407 = v412[0];
      v408 = v412[1];
      v409 = v412[2];
      v410 = v412[3];
      if (v248)
      {
        v392 = *v383;
        *(v393 + 8) = *(v383 + 24);
        *(&v393[1] + 8) = *(v383 + 40);
        *(&v393[2] + 8) = *(v383 + 56);
        *(&v393[3] + 1) = *(v383 + 72);
        *&v393[0] = v248;
        v250 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v406, &v392);
        v396 = v393[1];
        v397 = v393[2];
        v398 = v393[3];
        v394 = v392;
        v395 = v393[0];
        sub_20C40C520(&v436, v391);
        sub_20C40C520(&v436, v391);
        sub_20C409B04(&v429, v391, &qword_27C7BAC68, &unk_20C464890);
        sub_20C409B04(&v411, v391, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40C57C(&v394);
        v401 = v408;
        v402 = v409;
        v403 = v410;
        v399 = v406;
        v400 = v407;
        sub_20C40C57C(&v399);
        v404 = v434;
        *(v405 + 8) = *(v435 + 8);
        *(&v405[1] + 8) = *(&v435[1] + 8);
        *(&v405[2] + 8) = *(&v435[2] + 8);
        *&v405[0] = v243;
        *(&v405[3] + 1) = *(&v435[3] + 1);
        sub_20C40B440(&v404, &qword_27C7BAC68, &unk_20C464890);
        if (v250)
        {
          sub_20C40C57C(&v436);
          sub_20C40C57C(&v436);
LABEL_91:
          sub_20C43AA94(v365, type metadata accessor for ImageAsset);
          return sub_20C43AA94(v366, type metadata accessor for DynamicArtworkLayoutEnvironment);
        }

        goto LABEL_81;
      }

      v405[1] = v412[1];
      v405[2] = v412[2];
      v405[3] = v412[3];
      v404 = v411;
      v405[0] = v412[0];
      sub_20C40C520(&v436, &v399);
      sub_20C40C520(&v436, &v399);
      sub_20C409B04(&v429, &v399, &qword_27C7BAC68, &unk_20C464890);
      sub_20C409B04(&v411, &v399, &qword_27C7BAC68, &unk_20C464890);
      sub_20C40C57C(&v404);
    }

    else
    {
      if (!v248)
      {
        v411 = v434;
        *(v412 + 8) = *(v435 + 8);
        *(&v412[1] + 8) = *(&v435[1] + 8);
        *(&v412[2] + 8) = *(&v435[2] + 8);
        *&v412[0] = 0;
        *(&v412[3] + 1) = *(&v435[3] + 1);
        sub_20C409B04(&v429, &v406, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40B440(&v411, &qword_27C7BAC68, &unk_20C464890);
        goto LABEL_91;
      }

      sub_20C40C520(&v436, &v411);
      sub_20C40C520(&v436, &v411);
      sub_20C409B04(&v429, &v411, &qword_27C7BAC68, &unk_20C464890);
    }

    v411 = v434;
    *(v412 + 8) = *(v435 + 8);
    *(&v412[1] + 8) = *(&v435[1] + 8);
    *(&v412[2] + 8) = *(&v435[2] + 8);
    *&v412[0] = v243;
    *(&v412[3] + 1) = *(&v435[3] + 1);
    v413 = v423;
    v414 = v248;
    v418 = v422;
    v417 = v421;
    v416 = v420;
    v415 = v419;
    sub_20C40B440(&v411, &qword_27C7BACA0, &qword_20C463AC0);
LABEL_81:
    v289 = *(v244 + 48);
    v412[1] = *(v244 + 32);
    v412[2] = v289;
    v412[3] = *(v244 + 64);
    v290 = *(v244 + 16);
    v411 = *v244;
    v412[0] = v290;
    sub_20C40B440(&v411, &qword_27C7BAC68, &unk_20C464890);
    *v244 = v428;
    *(v244 + 16) = v243;
    v291 = v425;
    *(v244 + 24) = v424;
    *(v244 + 40) = v291;
    *(v244 + 56) = v426;
    *(v244 + 72) = v427;
    v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
    v385 = v292[12];
    v293 = v292[16];
    v294 = v292[20];
    v268 = v343;
    v295 = &v343[v292[24]];
    v296 = v341;
    (*(v370 + 16))(v341, v159, v371);
    swift_storeEnumTagMultiPayload();
    sub_20C43A9C4(v296, v360, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
    sub_20C43BD3C(&qword_27C7BB778, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
    sub_20C460720();
    sub_20C43AA94(v296, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
    v297 = *MEMORY[0x277D04400];
    v298 = sub_20C460410();
    (*(*(v298 - 8) + 104))(&v268[v293], v297, v298);
    v299 = *MEMORY[0x277D043E0];
    v300 = sub_20C460400();
    (*(*(v300 - 8) + 104))(&v268[v294], v299, v300);
    v301 = v365;
    v302 = v339;
    sub_20C43A9C4(v365, v339, type metadata accessor for ImageAsset);
    v303 = (*(v380 + 80) + 16) & ~*(v380 + 80);
    v304 = (v62 + v303 + 7) & 0xFFFFFFFFFFFFFFF8;
    v305 = swift_allocObject();
    sub_20C43AA2C(v302, v305 + v303, type metadata accessor for ImageAsset);
    v306 = (v305 + v304);
    v307 = v439;
    v306[2] = v438;
    v306[3] = v307;
    v306[4] = v440;
    v308 = v437;
    *v306 = v436;
    v306[1] = v308;
    v309 = (v305 + ((v304 + 87) & 0xFFFFFFFFFFFFFFF8));
    *v309 = v153;
    v309[1] = v154;
    *v295 = &unk_20C4648D8;
    *(v295 + 1) = v305;
    sub_20C4605F0();
    v284 = v362;
    v283 = v363;
    (*(v362 + 104))(v268, *MEMORY[0x277D043B0], v363);
    v231 = v375;
    v232 = *v375;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v232 = sub_20C426CFC(0, v232[2] + 1, 1, v232);
    }

    v286 = v232[2];
    v310 = v232[3];
    v287 = v286 + 1;
    if (v286 >= v310 >> 1)
    {
      v232 = sub_20C426CFC(v310 > 1, v286 + 1, 1, v232);
    }

    sub_20C43AA94(v301, type metadata accessor for ImageAsset);
    v288 = v366;
LABEL_99:
    sub_20C43AA94(v288, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v232[2] = v287;
    result = (*(v284 + 32))(v232 + ((*(v284 + 80) + 32) & ~*(v284 + 80)) + *(v284 + 72) * v286, v268, v283);
LABEL_100:
    *v231 = v232;
    return result;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v107 = v385;
    if (EnumCaseMultiPayload == 4)
    {
      v108 = (v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
      v109 = v108[3];
      v412[3] = v108[4];
      v412[1] = v108[2];
      v412[2] = v109;
      v110 = v108[1];
      v411 = *v108;
      v412[0] = v110;
      v111 = v96;
      v112 = v76;
      sub_20C43AA2C(v111, v76, type metadata accessor for ImageAsset);
      v438 = v412[1];
      v439 = v412[2];
      v440 = v412[3];
      v436 = v411;
      v437 = v412[0];
      v113 = v356;
      sub_20C43C7F4(v112, &v436, v356);
      if ((*(v378 + 48))(v113, 1, v381) == 1)
      {
        sub_20C43AA94(v112, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v411);
        v114 = &qword_27C7BAFB8;
        v115 = &unk_20C461F90;
        v116 = v113;
        return sub_20C40B440(v116, v114, v115);
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_20C43AA94(v112, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v411);
        v114 = &qword_27C7BAF10;
        v115 = &qword_20C4640D0;
        v116 = v113;
        return sub_20C40B440(v116, v114, v115);
      }

      (*(v370 + 8))(v113, v371);
      if (qword_28110B658 != -1)
      {
        swift_once();
      }

      v169 = sub_20C460000();
      __swift_project_value_buffer(v169, qword_28110E2C0);
      v170 = v345;
      sub_20C43A9C4(v112, v345, type metadata accessor for ImageAsset);
      sub_20C40C520(&v411, &v436);
      v171 = sub_20C45FFE0();
      v172 = sub_20C460680();
      sub_20C40C57C(&v411);
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        *&v429 = v174;
        *v173 = 141558530;
        *(v173 + 4) = 1752392040;
        *(v173 + 12) = 2080;
        sub_20C43A9C4(v170, v338, type metadata accessor for ImageAsset);
        v175 = sub_20C4604E0();
        v177 = v176;
        sub_20C43AA94(v170, type metadata accessor for ImageAsset);
        v178 = sub_20C43A260(v175, v177, &v429);

        *(v173 + 14) = v178;
        *(v173 + 22) = 2082;
        v438 = v412[1];
        v439 = v412[2];
        v440 = v412[3];
        v436 = v411;
        v437 = v412[0];
        sub_20C40C520(&v411, &v434);
        v179 = sub_20C4604E0();
        v181 = sub_20C43A260(v179, v180, &v429);

        *(v173 + 24) = v181;
        _os_log_impl(&dword_20C404000, v171, v172, "Loaded %{mask.hash}s (%{public}s)", v173, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2FB570](v174, -1, -1);
        MEMORY[0x20F2FB570](v173, -1, -1);
      }

      else
      {

        sub_20C43AA94(v170, type metadata accessor for ImageAsset);
      }

      v259 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
      v260 = v373;
      sub_20C43A9C4(v112, v373, type metadata accessor for ImageAsset);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
      swift_storeEnumTagMultiPayload();
      sub_20C45FC80();
      swift_storeEnumTagMultiPayload();
      v438 = v412[1];
      v439 = v412[2];
      v440 = v412[3];
      v436 = v411;
      v437 = v412[0];
      sub_20C43C69C(v260, v112, &v436);
      sub_20C40B440(v260, &qword_27C7BAF10, &qword_20C4640D0);
      v187 = v112;
LABEL_70:
      sub_20C43AA94(v187, type metadata accessor for ImageAsset);
      return sub_20C40C57C(&v411);
    }

    v142 = (v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
    v143 = *v142;
    v144 = v142[1];
    v145 = v367;
    sub_20C43AA2C(v96, v367, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v146 = type metadata accessor for DynamicImageAssetState();
    v147 = v372;
    v148 = v382;
    sub_20C4357E8(v107 + *(v146 + 28), v145, v372);
    v149 = *(v146 + 24);
    sub_20C40B440(v107 + v149, &qword_27C7BB600, &unk_20C464880);
    sub_20C43A9C4(v147, v107 + v149, type metadata accessor for ImageAsset);
    (*(v380 + 56))(v107 + v149, 0, 1, v379);
    v150 = v148 + *(v374 + 20);
    v151 = *(v150 + 24);
    (*(v150 + 16))(&v434, v147, v143, v144);
    v438 = v435[1];
    v439 = v435[2];
    v440 = v435[3];
    v436 = v434;
    v437 = v435[0];
    v428 = v434;
    v235 = *&v435[0];
    v427 = *(&v435[3] + 1);
    v426 = *(&v435[2] + 8);
    v425 = *(&v435[1] + 8);
    v424 = *(v435 + 8);
    v236 = v383;
    v237 = *(v383 + 48);
    v433 = *(v383 + 64);
    v238 = *(v383 + 32);
    v432 = v237;
    v431 = v238;
    v239 = *(v383 + 16);
    v429 = *v383;
    v430 = v239;
    v423 = v429;
    v240 = v239;
    v241 = *(v383 + 40);
    v419 = *(v383 + 24);
    v420 = v241;
    v421 = *(v383 + 56);
    v422 = *(v383 + 72);
    if (*&v435[0])
    {
      v411 = v434;
      *(v412 + 8) = *(v435 + 8);
      *(&v412[1] + 8) = *(&v435[1] + 8);
      *(&v412[2] + 8) = *(&v435[2] + 8);
      *&v412[0] = *&v435[0];
      *(&v412[3] + 1) = *(&v435[3] + 1);
      v406 = v434;
      v407 = v412[0];
      v408 = v412[1];
      v409 = v412[2];
      v410 = v412[3];
      if (v240)
      {
        v392 = *v383;
        *(v393 + 8) = *(v383 + 24);
        *(&v393[1] + 8) = *(v383 + 40);
        *(&v393[2] + 8) = *(v383 + 56);
        *(&v393[3] + 1) = *(v383 + 72);
        *&v393[0] = v240;
        v242 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v406, &v392);
        v396 = v393[1];
        v397 = v393[2];
        v398 = v393[3];
        v394 = v392;
        v395 = v393[0];
        sub_20C40C520(&v436, v391);
        sub_20C40C520(&v436, v391);
        sub_20C409B04(&v429, v391, &qword_27C7BAC68, &unk_20C464890);
        sub_20C409B04(&v411, v391, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40C57C(&v394);
        v401 = v408;
        v402 = v409;
        v403 = v410;
        v399 = v406;
        v400 = v407;
        sub_20C40C57C(&v399);
        v404 = v434;
        *(v405 + 8) = *(v435 + 8);
        *(&v405[1] + 8) = *(&v435[1] + 8);
        *(&v405[2] + 8) = *(&v435[2] + 8);
        *&v405[0] = v235;
        *(&v405[3] + 1) = *(&v435[3] + 1);
        sub_20C40B440(&v404, &qword_27C7BAC68, &unk_20C464890);
        if (v242)
        {
          sub_20C40C57C(&v436);
          sub_20C40C57C(&v436);
LABEL_89:
          v311 = v367;
          sub_20C43AA94(v372, type metadata accessor for ImageAsset);
          return sub_20C43AA94(v311, type metadata accessor for DynamicArtworkLayoutEnvironment);
        }

LABEL_74:
        v261 = *(v236 + 48);
        v412[1] = *(v236 + 32);
        v412[2] = v261;
        v412[3] = *(v236 + 64);
        v262 = *(v236 + 16);
        v411 = *v236;
        v412[0] = v262;
        sub_20C40B440(&v411, &qword_27C7BAC68, &unk_20C464890);
        *v236 = v428;
        *(v236 + 16) = v235;
        v263 = v425;
        *(v236 + 24) = v424;
        *(v236 + 40) = v263;
        *(v236 + 56) = v426;
        *(v236 + 72) = v427;
        v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
        v265 = v264[12];
        v266 = v264[16];
        v267 = v264[20];
        v268 = v344;
        v269 = &v344[v264[24]];
        v270 = v342;
        (*(v370 + 16))(v342, v148, v371);
        swift_storeEnumTagMultiPayload();
        sub_20C43A9C4(v270, v360, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        sub_20C43BD3C(&qword_27C7BB778, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        sub_20C460720();
        sub_20C43AA94(v270, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        v271 = *MEMORY[0x277D04400];
        v272 = sub_20C460410();
        (*(*(v272 - 8) + 104))(&v268[v266], v271, v272);
        v273 = *MEMORY[0x277D043E0];
        v274 = sub_20C460400();
        (*(*(v274 - 8) + 104))(&v268[v267], v273, v274);
        v275 = v340;
        sub_20C43A9C4(v372, v340, type metadata accessor for ImageAsset);
        v276 = (*(v380 + 80) + 16) & ~*(v380 + 80);
        v277 = (v62 + v276 + 7) & 0xFFFFFFFFFFFFFFF8;
        v278 = swift_allocObject();
        sub_20C43AA2C(v275, v278 + v276, type metadata accessor for ImageAsset);
        v279 = (v278 + v277);
        v280 = v439;
        v279[2] = v438;
        v279[3] = v280;
        v279[4] = v440;
        v281 = v437;
        *v279 = v436;
        v279[1] = v281;
        v282 = (v278 + ((v277 + 87) & 0xFFFFFFFFFFFFFFF8));
        *v282 = v143;
        v282[1] = v144;
        *v269 = &unk_20C4648C0;
        *(v269 + 1) = v278;
        sub_20C4605F0();
        v284 = v362;
        v283 = v363;
        (*(v362 + 104))(v268, *MEMORY[0x277D043B0], v363);
        v231 = v375;
        v232 = *v375;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v232 = sub_20C426CFC(0, v232[2] + 1, 1, v232);
        }

        v286 = v232[2];
        v285 = v232[3];
        v287 = v286 + 1;
        if (v286 >= v285 >> 1)
        {
          v232 = sub_20C426CFC(v285 > 1, v286 + 1, 1, v232);
        }

        sub_20C43AA94(v372, type metadata accessor for ImageAsset);
        v288 = v367;
        goto LABEL_99;
      }

      v405[1] = v412[1];
      v405[2] = v412[2];
      v405[3] = v412[3];
      v404 = v411;
      v405[0] = v412[0];
      sub_20C40C520(&v436, &v399);
      sub_20C40C520(&v436, &v399);
      sub_20C409B04(&v429, &v399, &qword_27C7BAC68, &unk_20C464890);
      sub_20C409B04(&v411, &v399, &qword_27C7BAC68, &unk_20C464890);
      sub_20C40C57C(&v404);
    }

    else
    {
      if (!v240)
      {
        v411 = v434;
        *(v412 + 8) = *(v435 + 8);
        *(&v412[1] + 8) = *(&v435[1] + 8);
        *(&v412[2] + 8) = *(&v435[2] + 8);
        *&v412[0] = 0;
        *(&v412[3] + 1) = *(&v435[3] + 1);
        sub_20C409B04(&v429, &v406, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40B440(&v411, &qword_27C7BAC68, &unk_20C464890);
        goto LABEL_89;
      }

      sub_20C40C520(&v436, &v411);
      sub_20C40C520(&v436, &v411);
      sub_20C409B04(&v429, &v411, &qword_27C7BAC68, &unk_20C464890);
    }

    v411 = v434;
    *(v412 + 8) = *(v435 + 8);
    *(&v412[1] + 8) = *(&v435[1] + 8);
    *(&v412[2] + 8) = *(&v435[2] + 8);
    *&v412[0] = v235;
    *(&v412[3] + 1) = *(&v435[3] + 1);
    v413 = v423;
    v414 = v240;
    v418 = v422;
    v417 = v421;
    v416 = v420;
    v415 = v419;
    sub_20C40B440(&v411, &qword_27C7BACA0, &qword_20C463AC0);
    goto LABEL_74;
  }

  v123 = v385;
  if (EnumCaseMultiPayload == 6)
  {
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
    v125 = (v96 + *(v124 + 48));
    v127 = *v125;
    v126 = v125[1];
    v89 = v364;
    sub_20C43AA2C(v96, v364, type metadata accessor for DynamicArtworkLayoutEnvironment);
    sub_20C40B440(v123, &qword_27C7BB5F8, &unk_20C4640A0);
    sub_20C43A9C4(v89, v123, type metadata accessor for DynamicArtworkLayoutEnvironment);
    (*(v376 + 56))(v123, 0, 1, v377);
    v128 = v383;
    *(v383 + 80) = v127;
    *(v128 + 88) = v126;
    *(v128 + 96) = 0;
    v129 = type metadata accessor for DynamicImageAssetState();
    v130 = v358;
    sub_20C409B04(v123 + *(v129 + 24), v358, &qword_27C7BB600, &unk_20C464880);
    if ((*(v380 + 48))(v130, 1, v379) == 1)
    {
      sub_20C40B440(v130, &qword_27C7BB600, &unk_20C464880);
      v131 = &v94[*(v124 + 48)];
      sub_20C43A9C4(v89, v94, type metadata accessor for DynamicArtworkLayoutEnvironment);
      *v131 = v127;
      v131[1] = v126;
      swift_storeEnumTagMultiPayload();
      DynamicImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(v128, v123, v375, v94);
      sub_20C43AA94(v94, type metadata accessor for DynamicImageAssetAction);
      v132 = type metadata accessor for DynamicArtworkLayoutEnvironment;
      return sub_20C43AA94(v89, v132);
    }

    v188 = v353;
    sub_20C43AA2C(v130, v353, type metadata accessor for ImageAsset);
    v189 = v382;
    v190 = v382 + *(v374 + 20);
    v191 = *(v190 + 24);
    (*(v190 + 16))(&v434, v188, v127, v126);
    v438 = v435[1];
    v439 = v435[2];
    v440 = v435[3];
    v436 = v434;
    v437 = v435[0];
    v428 = v434;
    v251 = *&v435[0];
    v427 = *(&v435[3] + 1);
    v426 = *(&v435[2] + 8);
    v425 = *(&v435[1] + 8);
    v424 = *(v435 + 8);
    v252 = *(v128 + 48);
    v433 = *(v128 + 64);
    v253 = *(v128 + 32);
    v432 = v252;
    v431 = v253;
    v254 = *(v128 + 16);
    v429 = *v128;
    v430 = v254;
    v423 = v429;
    v255 = v254;
    v256 = *(v128 + 40);
    v419 = *(v128 + 24);
    v420 = v256;
    v421 = *(v128 + 56);
    v422 = *(v128 + 72);
    if (*&v435[0])
    {
      v411 = v434;
      *(v412 + 8) = *(v435 + 8);
      *(&v412[1] + 8) = *(&v435[1] + 8);
      *(&v412[2] + 8) = *(&v435[2] + 8);
      *&v412[0] = *&v435[0];
      *(&v412[3] + 1) = *(&v435[3] + 1);
      v406 = v434;
      v407 = v412[0];
      v408 = v412[1];
      v409 = v412[2];
      v410 = v412[3];
      if (v255)
      {
        v392 = *v128;
        *(v393 + 8) = *(v128 + 24);
        *(&v393[1] + 8) = *(v128 + 40);
        *(&v393[2] + 8) = *(v128 + 56);
        *(&v393[3] + 1) = *(v128 + 72);
        *&v393[0] = v255;
        v257 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v406, &v392);
        v396 = v393[1];
        v397 = v393[2];
        v398 = v393[3];
        v394 = v392;
        v395 = v393[0];
        sub_20C40C520(&v436, v391);
        sub_20C40C520(&v436, v391);
        sub_20C409B04(&v429, v391, &qword_27C7BAC68, &unk_20C464890);
        sub_20C409B04(&v411, v391, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40C57C(&v394);
        v401 = v408;
        v402 = v409;
        v403 = v410;
        v399 = v406;
        v400 = v407;
        sub_20C40C57C(&v399);
        v404 = v434;
        *(v405 + 8) = *(v435 + 8);
        *(&v405[1] + 8) = *(&v435[1] + 8);
        *(&v405[2] + 8) = *(&v435[2] + 8);
        *&v405[0] = v251;
        *(&v405[3] + 1) = *(&v435[3] + 1);
        sub_20C40B440(&v404, &qword_27C7BAC68, &unk_20C464890);
        v258 = v364;
        if (v257)
        {
          sub_20C40C57C(&v436);
          sub_20C40C57C(&v436);
LABEL_102:
          sub_20C43AA94(v353, type metadata accessor for ImageAsset);
          return sub_20C43AA94(v258, type metadata accessor for DynamicArtworkLayoutEnvironment);
        }

LABEL_94:
        v312 = *(v128 + 48);
        v412[1] = *(v128 + 32);
        v412[2] = v312;
        v412[3] = *(v128 + 64);
        v313 = *(v128 + 16);
        v411 = *v128;
        v412[0] = v313;
        sub_20C40B440(&v411, &qword_27C7BAC68, &unk_20C464890);
        *v128 = v428;
        *(v128 + 16) = v251;
        v314 = v425;
        *(v128 + 24) = v424;
        *(v128 + 40) = v314;
        *(v128 + 56) = v426;
        *(v128 + 72) = v427;
        v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
        v316 = v315[12];
        v317 = v315[16];
        v318 = v315[20];
        v319 = v336;
        v268 = v337;
        v320 = &v337[v315[24]];
        (*(v370 + 16))(v336, v189, v371);
        swift_storeEnumTagMultiPayload();
        sub_20C43A9C4(v319, v360, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        sub_20C43BD3C(&qword_27C7BB778, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        sub_20C460720();
        sub_20C43AA94(v319, type metadata accessor for DynamicImageAssetFeature.TaskIdentifier);
        v321 = *MEMORY[0x277D04400];
        v322 = sub_20C460410();
        (*(*(v322 - 8) + 104))(&v268[v317], v321, v322);
        v323 = *MEMORY[0x277D043E0];
        v324 = sub_20C460400();
        (*(*(v324 - 8) + 104))(&v268[v318], v323, v324);
        v325 = v335;
        sub_20C43A9C4(v353, v335, type metadata accessor for ImageAsset);
        v326 = (*(v380 + 80) + 16) & ~*(v380 + 80);
        v327 = (v62 + v326 + 7) & 0xFFFFFFFFFFFFFFF8;
        v328 = swift_allocObject();
        sub_20C43AA2C(v325, v328 + v326, type metadata accessor for ImageAsset);
        v329 = (v328 + v327);
        v330 = v439;
        v329[2] = v438;
        v329[3] = v330;
        v329[4] = v440;
        v331 = v437;
        *v329 = v436;
        v329[1] = v331;
        v332 = (v328 + ((v327 + 87) & 0xFFFFFFFFFFFFFFF8));
        *v332 = v127;
        v332[1] = v126;
        *v320 = &unk_20C4648B0;
        *(v320 + 1) = v328;
        sub_20C4605F0();
        v284 = v362;
        v283 = v363;
        (*(v362 + 104))(v268, *MEMORY[0x277D043B0], v363);
        v231 = v375;
        v232 = *v375;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v232 = sub_20C426CFC(0, v232[2] + 1, 1, v232);
        }

        v286 = v232[2];
        v333 = v232[3];
        v287 = v286 + 1;
        if (v286 >= v333 >> 1)
        {
          v232 = sub_20C426CFC(v333 > 1, v286 + 1, 1, v232);
        }

        sub_20C43AA94(v353, type metadata accessor for ImageAsset);
        v288 = v364;
        goto LABEL_99;
      }

      v405[1] = v412[1];
      v405[2] = v412[2];
      v405[3] = v412[3];
      v404 = v411;
      v405[0] = v412[0];
      sub_20C40C520(&v436, &v399);
      sub_20C40C520(&v436, &v399);
      sub_20C409B04(&v429, &v399, &qword_27C7BAC68, &unk_20C464890);
      sub_20C409B04(&v411, &v399, &qword_27C7BAC68, &unk_20C464890);
      sub_20C40C57C(&v404);
    }

    else
    {
      if (!v255)
      {
        v411 = v434;
        *(v412 + 8) = *(v435 + 8);
        *(&v412[1] + 8) = *(&v435[1] + 8);
        *(&v412[2] + 8) = *(&v435[2] + 8);
        *&v412[0] = 0;
        *(&v412[3] + 1) = *(&v435[3] + 1);
        sub_20C409B04(&v429, &v406, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40B440(&v411, &qword_27C7BAC68, &unk_20C464890);
        v258 = v364;
        goto LABEL_102;
      }

      sub_20C40C520(&v436, &v411);
      sub_20C40C520(&v436, &v411);
      sub_20C409B04(&v429, &v411, &qword_27C7BAC68, &unk_20C464890);
    }

    v411 = v434;
    *(v412 + 8) = *(v435 + 8);
    *(&v412[1] + 8) = *(&v435[1] + 8);
    *(&v412[2] + 8) = *(&v435[2] + 8);
    *&v412[0] = v251;
    *(&v412[3] + 1) = *(&v435[3] + 1);
    v413 = v423;
    v414 = v255;
    v418 = v422;
    v417 = v421;
    v416 = v420;
    v415 = v419;
    sub_20C40B440(&v411, &qword_27C7BACA0, &qword_20C463AC0);
    goto LABEL_94;
  }

  v163 = *v96;
  v164 = v96[1];
  v165 = v383;
  *(v383 + 80) = *v96;
  *(v165 + 88) = v164;
  *(v165 + 96) = 0;
  sub_20C409B04(v123, v42, &qword_27C7BB5F8, &unk_20C4640A0);
  if ((*(v376 + 48))(v42, 1, v377) == 1)
  {
    goto LABEL_22;
  }

  sub_20C43AA2C(v42, v48, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v202 = &v94[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48)];
  sub_20C43A9C4(v48, v94, type metadata accessor for DynamicArtworkLayoutEnvironment);
  *v202 = v163;
  *(v202 + 1) = v164;
  swift_storeEnumTagMultiPayload();
  DynamicImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(v165, v123, v375, v94);
  sub_20C43AA94(v94, type metadata accessor for DynamicImageAssetAction);
  return sub_20C43AA94(v48, type metadata accessor for DynamicArtworkLayoutEnvironment);
}

uint64_t sub_20C433C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 496) = a3;
  *(v6 + 504) = a4;
  *(v6 + 480) = a5;
  *(v6 + 488) = a6;
  *(v6 + 464) = a1;
  *(v6 + 472) = a2;
  v7 = sub_20C4605B0();
  *(v6 + 512) = v7;
  v8 = *(v7 - 8);
  *(v6 + 520) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 528) = swift_task_alloc();
  v10 = type metadata accessor for DynamicImageAssetAction();
  *(v6 + 536) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v6 + 544) = swift_task_alloc();
  v12 = type metadata accessor for ImageAsset();
  *(v6 + 552) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 584) = swift_task_alloc();
  sub_20C4605E0();
  *(v6 + 592) = sub_20C4605D0();
  v15 = sub_20C4605A0();
  *(v6 + 600) = v15;
  *(v6 + 608) = v14;

  return MEMORY[0x2822009F8](sub_20C433E0C, v15, v14);
}

uint64_t sub_20C433E0C()
{
  v32 = v0;
  if (qword_28110B658 != -1)
  {
    swift_once();
  }

  v1 = v0[73];
  v2 = v0[59];
  v3 = sub_20C460000();
  v0[77] = __swift_project_value_buffer(v3, qword_28110E2C0);
  sub_20C43A9C4(v2, v1, type metadata accessor for ImageAsset);
  v4 = sub_20C45FFE0();
  v5 = sub_20C460680();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[73];
  if (v6)
  {
    v8 = v0[72];
    v9 = v0[69];
    v11 = v0[60];
    v10 = v0[61];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v31 = v13;
    *v12 = 141558530;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2080;
    sub_20C43A9C4(v7, v8, type metadata accessor for ImageAsset);
    v14 = sub_20C4604E0();
    v16 = v15;
    sub_20C43AA94(v7, type metadata accessor for ImageAsset);
    v17 = sub_20C43A260(v14, v16, &v31);

    *(v12 + 14) = v17;
    *(v12 + 22) = 2082;
    v0[54] = v11;
    v0[55] = v10;
    type metadata accessor for CGSize();
    v18 = sub_20C4604E0();
    v20 = sub_20C43A260(v18, v19, &v31);

    *(v12 + 24) = v20;
    _os_log_impl(&dword_20C404000, v4, v5, "Fetching %{mask.hash}s (%{public}s)", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2FB570](v13, -1, -1);
    MEMORY[0x20F2FB570](v12, -1, -1);
  }

  else
  {

    sub_20C43AA94(v7, type metadata accessor for ImageAsset);
  }

  v21 = v0[62];
  v22 = (v21 + *(type metadata accessor for DynamicImageAssetFeature(0) + 20));
  v23 = v22[1];
  v30 = (*v22 + **v22);
  v24 = (*v22)[1];
  v25 = swift_task_alloc();
  v0[78] = v25;
  *v25 = v0;
  v25[1] = sub_20C434150;
  v26.n128_u64[0] = v0[60];
  v27.n128_u64[0] = v0[61];
  v28 = v0[59];

  return v30(v28, v26, v27);
}

uint64_t sub_20C434150(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 624);
  v6 = *v2;
  *(v4 + 632) = a1;
  *(v4 + 640) = v1;

  v7 = *(v3 + 608);
  v8 = *(v3 + 600);
  if (v1)
  {
    v9 = sub_20C4350D0;
  }

  else
  {
    v9 = sub_20C434298;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C434298()
{
  v96 = v0;
  v1 = *(v0 + 640);
  sub_20C460620();
  if (v1)
  {

    *(v0 + 656) = v1;
    v2 = *(v0 + 528);
    v3 = *(v0 + 512);
    *(v0 + 448) = v1;
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
    v5 = swift_dynamicCast();
    v6 = *(v0 + 616);
    if (v5)
    {
      v7 = *(v0 + 592);
      v8 = *(v0 + 568);
      v9 = *(v0 + 472);

      sub_20C43A9C4(v9, v8, type metadata accessor for ImageAsset);
      v10 = sub_20C45FFE0();
      v11 = sub_20C460660();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 576);
        v13 = *(v0 + 568);
        v14 = *(v0 + 552);
        v16 = *(v0 + 480);
        v15 = *(v0 + 488);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v95[0] = v18;
        *v17 = 136315394;
        sub_20C43A9C4(v13, v12, type metadata accessor for ImageAsset);
        v19 = sub_20C4604E0();
        v21 = v20;
        sub_20C43AA94(v13, type metadata accessor for ImageAsset);
        v22 = sub_20C43A260(v19, v21, v95);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2080;
        *(v0 + 416) = v16;
        *(v0 + 424) = v15;
        type metadata accessor for CGSize();
        v23 = sub_20C4604E0();
        v25 = sub_20C43A260(v23, v24, v95);

        *(v17 + 14) = v25;
        _os_log_impl(&dword_20C404000, v10, v11, "Fetching %s for %s cancelled", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2FB570](v18, -1, -1);
        MEMORY[0x20F2FB570](v17, -1, -1);
      }

      else
      {
        v61 = *(v0 + 568);

        sub_20C43AA94(v61, type metadata accessor for ImageAsset);
      }

      (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));

      v62 = *(v0 + 584);
      v63 = *(v0 + 576);
      v64 = *(v0 + 568);
      v65 = *(v0 + 560);
      v66 = *(v0 + 544);
      v67 = *(v0 + 528);

      v68 = *(v0 + 8);

      return v68();
    }

    v45 = *(v0 + 560);
    v46 = *(v0 + 472);

    sub_20C43A9C4(v46, v45, type metadata accessor for ImageAsset);
    v47 = v1;
    v48 = sub_20C45FFE0();
    v49 = sub_20C460660();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 576);
      v51 = *(v0 + 560);
      v52 = *(v0 + 552);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v95[0] = v94;
      *v53 = 136446466;
      sub_20C43A9C4(v51, v50, type metadata accessor for ImageAsset);
      v55 = sub_20C4604E0();
      v57 = v56;
      sub_20C43AA94(v51, type metadata accessor for ImageAsset);
      v58 = sub_20C43A260(v55, v57, v95);

      *(v53 + 4) = v58;
      *(v53 + 12) = 2114;
      v59 = v1;
      v60 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v60;
      *v54 = v60;
      _os_log_impl(&dword_20C404000, v48, v49, "unable to fetch %{public}s: %{public}@", v53, 0x16u);
      sub_20C40B440(v54, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v54, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x20F2FB570](v94, -1, -1);
      MEMORY[0x20F2FB570](v53, -1, -1);
    }

    else
    {
      v70 = *(v0 + 560);

      sub_20C43AA94(v70, type metadata accessor for ImageAsset);
    }

    *(v0 + 456) = v1;
    v71 = v1;
    v72 = swift_dynamicCast();
    v73 = *(v0 + 544);
    v74 = *(v0 + 536);
    v75 = *(v0 + 504);
    v76 = *(v0 + 472);
    if (v72)
    {
      v77 = *(v0 + 680);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v79 = *(v78 + 48);
      v80 = (v73 + *(v78 + 64));
      sub_20C43A9C4(v76, v73, type metadata accessor for ImageAsset);
      *(v73 + v79) = v77;
      *v80 = *v75;
      v81 = v75[4];
      v83 = v75[1];
      v82 = v75[2];
      v80[3] = v75[3];
      v80[4] = v81;
      v80[1] = v83;
      v80[2] = v82;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v75, v0 + 96);
      v84 = *(MEMORY[0x277D043C8] + 4);
      v42 = swift_task_alloc();
      *(v0 + 672) = v42;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
      *v42 = v0;
      v44 = sub_20C434F78;
    }

    else
    {
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v86 = *(v85 + 48);
      v87 = (v73 + *(v85 + 64));
      sub_20C43A9C4(v76, v73, type metadata accessor for ImageAsset);
      *(v73 + v86) = 0;
      *v87 = *v75;
      v88 = v75[4];
      v90 = v75[1];
      v89 = v75[2];
      v87[3] = v75[3];
      v87[4] = v88;
      v87[1] = v90;
      v87[2] = v89;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v75, v0 + 16);
      v91 = *(MEMORY[0x277D043C8] + 4);
      v42 = swift_task_alloc();
      *(v0 + 664) = v42;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
      *v42 = v0;
      v44 = sub_20C434D5C;
    }
  }

  else
  {
    if (qword_27C7BAC08 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 632);
    v27 = *(v0 + 544);
    v28 = *(v0 + 536);
    v29 = *(v0 + 504);
    v30 = *(v0 + 472);
    v31 = qword_27C7C40A8;
    *(v0 + 176) = *v29;
    v32 = v29[4];
    v34 = v29[1];
    v33 = v29[2];
    *(v0 + 224) = v29[3];
    *(v0 + 240) = v32;
    *(v0 + 192) = v34;
    *(v0 + 208) = v33;
    v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB030, &qword_20C464A30));
    sub_20C40C520(v29, v0 + 256);
    v36 = sub_20C45FE40();
    [v31 setObject:v26 forKey:v36];

    v37 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
    sub_20C43A9C4(v30, v27, type metadata accessor for ImageAsset);
    *v37 = *v29;
    v38 = v29[4];
    v40 = v29[1];
    v39 = v29[2];
    v37[3] = v29[3];
    v37[4] = v38;
    v37[1] = v40;
    v37[2] = v39;
    swift_storeEnumTagMultiPayload();
    sub_20C40C520(v29, v0 + 336);
    v41 = *(MEMORY[0x277D043C8] + 4);
    v42 = swift_task_alloc();
    *(v0 + 648) = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
    *v42 = v0;
    v44 = sub_20C434B44;
  }

  v42[1] = v44;
  v92 = *(v0 + 544);
  v93 = *(v0 + 464);

  return MEMORY[0x282159B08](v92, v43);
}

uint64_t sub_20C434B44()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 544);
  v7 = *v0;

  sub_20C43AA94(v3, type metadata accessor for DynamicImageAssetAction);
  v4 = *(v1 + 608);
  v5 = *(v1 + 600);

  return MEMORY[0x2822009F8](sub_20C434C9C, v5, v4);
}

uint64_t sub_20C434C9C()
{
  v1 = v0[79];
  v2 = v0[74];

  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[68];
  v8 = v0[66];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20C434D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 544);
  v7 = *v0;

  sub_20C43AA94(v3, type metadata accessor for DynamicImageAssetAction);
  v4 = *(v1 + 608);
  v5 = *(v1 + 600);

  return MEMORY[0x2822009F8](sub_20C434EB4, v5, v4);
}

uint64_t sub_20C434EB4()
{
  v1 = v0[82];
  v2 = v0[74];

  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[68];
  v8 = v0[66];

  v9 = v0[1];

  return v9();
}

uint64_t sub_20C434F78()
{
  v1 = *v0;
  v2 = *(*v0 + 672);
  v3 = *(*v0 + 544);
  v7 = *v0;

  sub_20C43AA94(v3, type metadata accessor for DynamicImageAssetAction);
  v4 = *(v1 + 608);
  v5 = *(v1 + 600);

  return MEMORY[0x2822009F8](sub_20C43C698, v5, v4);
}

uint64_t sub_20C4350D0()
{
  v80 = v0;
  v1 = *(v0 + 640);
  *(v0 + 656) = v1;
  v2 = *(v0 + 528);
  v3 = *(v0 + 512);
  *(v0 + 448) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 616);
  if (v5)
  {
    v7 = *(v0 + 592);
    v8 = *(v0 + 568);
    v9 = *(v0 + 472);

    sub_20C43A9C4(v9, v8, type metadata accessor for ImageAsset);
    v10 = sub_20C45FFE0();
    v11 = sub_20C460660();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 576);
      v13 = *(v0 + 568);
      v14 = *(v0 + 552);
      v16 = *(v0 + 480);
      v15 = *(v0 + 488);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v79 = v18;
      *v17 = 136315394;
      sub_20C43A9C4(v13, v12, type metadata accessor for ImageAsset);
      v19 = sub_20C4604E0();
      v21 = v20;
      sub_20C43AA94(v13, type metadata accessor for ImageAsset);
      v22 = sub_20C43A260(v19, v21, &v79);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2080;
      *(v0 + 416) = v16;
      *(v0 + 424) = v15;
      type metadata accessor for CGSize();
      v23 = sub_20C4604E0();
      v25 = sub_20C43A260(v23, v24, &v79);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_20C404000, v10, v11, "Fetching %s for %s cancelled", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FB570](v18, -1, -1);
      MEMORY[0x20F2FB570](v17, -1, -1);
    }

    else
    {
      v42 = *(v0 + 568);

      sub_20C43AA94(v42, type metadata accessor for ImageAsset);
    }

    (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));

    v43 = *(v0 + 584);
    v44 = *(v0 + 576);
    v45 = *(v0 + 568);
    v46 = *(v0 + 560);
    v47 = *(v0 + 544);
    v48 = *(v0 + 528);

    v49 = *(v0 + 8);

    return v49();
  }

  else
  {
    v26 = *(v0 + 560);
    v27 = *(v0 + 472);

    sub_20C43A9C4(v27, v26, type metadata accessor for ImageAsset);
    v28 = v1;
    v29 = sub_20C45FFE0();
    v30 = sub_20C460660();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 576);
      v32 = *(v0 + 560);
      v33 = *(v0 + 552);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = v78;
      *v34 = 136446466;
      sub_20C43A9C4(v32, v31, type metadata accessor for ImageAsset);
      v36 = sub_20C4604E0();
      v38 = v37;
      sub_20C43AA94(v32, type metadata accessor for ImageAsset);
      v39 = sub_20C43A260(v36, v38, &v79);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2114;
      v40 = v1;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v41;
      *v35 = v41;
      _os_log_impl(&dword_20C404000, v29, v30, "unable to fetch %{public}s: %{public}@", v34, 0x16u);
      sub_20C40B440(v35, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x20F2FB570](v78, -1, -1);
      MEMORY[0x20F2FB570](v34, -1, -1);
    }

    else
    {
      v51 = *(v0 + 560);

      sub_20C43AA94(v51, type metadata accessor for ImageAsset);
    }

    *(v0 + 456) = v1;
    v52 = v1;
    v53 = swift_dynamicCast();
    v54 = *(v0 + 544);
    v55 = *(v0 + 536);
    v56 = *(v0 + 504);
    v57 = *(v0 + 472);
    if (v53)
    {
      v58 = *(v0 + 680);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v60 = *(v59 + 48);
      v61 = (v54 + *(v59 + 64));
      sub_20C43A9C4(v57, v54, type metadata accessor for ImageAsset);
      *(v54 + v60) = v58;
      *v61 = *v56;
      v62 = v56[4];
      v64 = v56[1];
      v63 = v56[2];
      v61[3] = v56[3];
      v61[4] = v62;
      v61[1] = v64;
      v61[2] = v63;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v56, v0 + 96);
      v65 = *(MEMORY[0x277D043C8] + 4);
      v66 = swift_task_alloc();
      *(v0 + 672) = v66;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
      *v66 = v0;
      v68 = sub_20C434F78;
    }

    else
    {
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v70 = *(v69 + 48);
      v71 = (v54 + *(v69 + 64));
      sub_20C43A9C4(v57, v54, type metadata accessor for ImageAsset);
      *(v54 + v70) = 0;
      *v71 = *v56;
      v72 = v56[4];
      v74 = v56[1];
      v73 = v56[2];
      v71[3] = v56[3];
      v71[4] = v72;
      v71[1] = v74;
      v71[2] = v73;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v56, v0 + 16);
      v75 = *(MEMORY[0x277D043C8] + 4);
      v66 = swift_task_alloc();
      *(v0 + 664) = v66;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
      *v66 = v0;
      v68 = sub_20C434D5C;
    }

    v66[1] = v68;
    v76 = *(v0 + 544);
    v77 = *(v0 + 464);

    return MEMORY[0x282159B08](v76, v67);
  }
}

uint64_t sub_20C4357E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB688, &qword_20C464A40);
  v5 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v58 - v9;
  v10 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7C0, &qword_20C464A48);
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7C8, &qword_20C464A50);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - v20;
  v64 = type metadata accessor for Artwork();
  v22 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7D0, &qword_20C464A58);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v58 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  v61 = a1;
  v32 = sub_20C45FD80();
  v62 = a2;
  v70 = a2;
  sub_20C436880(sub_20C43C3BC, v32, v31);

  v65 = v31;
  sub_20C409B04(v31, v29, &qword_27C7BB7D0, &qword_20C464A58);
  if ((*(v18 + 48))(v29, 1, v17) == 1)
  {
    sub_20C40B440(v29, &qword_27C7BB7D0, &qword_20C464A58);
    sub_20C45FD70();
    v33 = v60;
    sub_20C45FDB0();
    v34 = *(v59 + 8);
    v34(v16, v33);
    sub_20C45FD70();
    v35 = sub_20C45FDC0();
    v37 = v36;
    v34(v16, v33);
    if (qword_28110B658 != -1)
    {
      swift_once();
    }

    v38 = sub_20C460000();
    __swift_project_value_buffer(v38, qword_28110E2C0);
    v39 = v63;
    sub_20C43A9C4(v62, v63, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v40 = sub_20C45FFE0();
    v41 = sub_20C460660();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v71 = v43;
      *v42 = 136446210;
      v44 = DynamicArtworkLayoutEnvironment.description.getter();
      v46 = v45;
      sub_20C43AA94(v39, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v47 = sub_20C43A260(v44, v46, &v71);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_20C404000, v40, v41, "[DynamicAssetFeature] Failed to find preferred artwork for environment %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x20F2FB570](v43, -1, -1);
      MEMORY[0x20F2FB570](v42, -1, -1);
    }

    else
    {

      sub_20C43AA94(v39, type metadata accessor for DynamicArtworkLayoutEnvironment);
    }
  }

  else
  {
    (*(v18 + 32))(v21, v29, v17);
    sub_20C45FD50();
    v48 = sub_20C45FD60();
    if (v49)
    {
      v35 = v48;
    }

    else
    {
      v35 = 0;
    }

    if (v49)
    {
      v37 = v49;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    (*(v18 + 8))(v21, v17);
  }

  v50 = v66;
  sub_20C409B04(v24, v66, &qword_27C7BAC10, &qword_20C462070);
  v71 = v35;
  v72 = v37;
  sub_20C45FDD0();
  sub_20C43BD3C(&qword_27C7BB7D8, MEMORY[0x277D09E00]);
  v51 = v67;
  sub_20C45FE60();
  v52 = *(v64 + 20);
  v53 = type metadata accessor for ImageAsset();
  v54 = v69;
  sub_20C409B04(&v24[v52], v69 + v53[7], &qword_27C7BAC18, &unk_20C464A00);
  sub_20C409B04(v50, v54, &qword_27C7BAC10, &qword_20C462070);
  sub_20C45FE50();
  sub_20C40B440(v51, &qword_27C7BB688, &qword_20C464A40);
  sub_20C40B440(v50, &qword_27C7BAC10, &qword_20C462070);
  sub_20C43AA94(v24, type metadata accessor for Artwork);
  result = sub_20C40B440(v65, &qword_27C7BB7D0, &qword_20C464A58);
  v56 = v72;
  v57 = (v54 + v53[5]);
  *v57 = v71;
  v57[1] = v56;
  *(v54 + v53[6]) = 1;
  return result;
}

uint64_t sub_20C435F4C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 96) = a1;
  v6 = type metadata accessor for DynamicImageAssetAction();
  *(v5 + 136) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  sub_20C4605E0();
  *(v5 + 152) = sub_20C4605D0();
  v9 = sub_20C4605A0();
  *(v5 + 160) = v9;
  *(v5 + 168) = v8;

  return MEMORY[0x2822009F8](sub_20C43601C, v9, v8);
}

uint64_t sub_20C43601C()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
  v8 = (v2 + *(v7 + 48));
  v9 = (v2 + *(v7 + 64));
  sub_20C43A9C4(v6, v2, type metadata accessor for ImageAsset);
  *v8 = *v5;
  v10 = v5[4];
  v12 = v5[1];
  v11 = v5[2];
  v8[3] = v5[3];
  v8[4] = v10;
  v8[1] = v12;
  v8[2] = v11;
  *v9 = v4;
  v9[1] = v3;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(v5, (v0 + 2));
  v13 = *(MEMORY[0x277D043C8] + 4);
  v14 = swift_task_alloc();
  v0[22] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
  *v14 = v0;
  v14[1] = sub_20C436170;
  v16 = v0[18];
  v17 = v0[12];

  return MEMORY[0x282159B08](v16, v15);
}

uint64_t sub_20C436170()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 144);
  v7 = *v0;

  sub_20C43AA94(v3, type metadata accessor for DynamicImageAssetAction);
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C4362C8, v5, v4);
}

uint64_t sub_20C4362C8()
{
  v2 = v0[18];
  v1 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20C436334(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 96) = a1;
  v6 = type metadata accessor for DynamicImageAssetAction();
  *(v5 + 136) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  sub_20C4605E0();
  *(v5 + 152) = sub_20C4605D0();
  v9 = sub_20C4605A0();
  *(v5 + 160) = v9;
  *(v5 + 168) = v8;

  return MEMORY[0x2822009F8](sub_20C436404, v9, v8);
}

uint64_t sub_20C436404()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
  v8 = (v2 + *(v7 + 48));
  v9 = (v2 + *(v7 + 64));
  sub_20C43A9C4(v6, v2, type metadata accessor for ImageAsset);
  *v8 = *v5;
  v10 = v5[4];
  v12 = v5[1];
  v11 = v5[2];
  v8[3] = v5[3];
  v8[4] = v10;
  v8[1] = v12;
  v8[2] = v11;
  *v9 = v4;
  v9[1] = v3;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(v5, (v0 + 2));
  v13 = *(MEMORY[0x277D043C8] + 4);
  v14 = swift_task_alloc();
  v0[22] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7B0, &unk_20C464A20);
  *v14 = v0;
  v14[1] = sub_20C436558;
  v16 = v0[18];
  v17 = v0[12];

  return MEMORY[0x282159B08](v16, v15);
}

uint64_t sub_20C436558()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 144);
  v7 = *v0;

  sub_20C43AA94(v3, type metadata accessor for DynamicImageAssetAction);
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C43C694, v5, v4);
}

uint64_t sub_20C4366B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DynamicArtworkLayoutEnvironment();
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7C8, &qword_20C464A50);
  v8 = sub_20C45FD40();
  sub_20C43A9C4(a2, v7, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v9 = *v7 + 1;
  v10 = v7[1] + 1;
  v11 = &v7[v4[8]];
  v12 = sub_20C45FDE0();
  v14 = v13;
  v15 = v7[v4[9]];
  v16 = &v7[v4[10]];
  v17 = sub_20C45FDE0();
  v19 = v18;
  sub_20C43AA94(v7, type metadata accessor for DynamicArtworkLayoutEnvironment);
  v29[0] = v9;
  v29[1] = v10;
  v29[2] = v12;
  v29[3] = v14;
  v30 = v15;
  v31 = v17;
  v32 = v19;
  v20 = v25[1];
  sub_20C42F1BC(v29, v8, v26);

  sub_20C43C3DC(v29);
  if (v20)
  {

    return 0;
  }

  else
  {
    v22 = v27;
    v23 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    (*(v23 + 16))(&v33, v22, v23);
    v21 = v33;
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  return v21;
}

uint64_t sub_20C436880@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7C8, &qword_20C464A50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_20C436A64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v199 = a2;
  v2 = *(a1 + 8);
  v186 = *a1;
  v187 = a1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  *&v188 = v2;
  *(&v188 + 1) = v4;
  v189 = v3;
  v190 = *(a1 + 32);
  v5 = *(a1 + 48);
  *&v191 = *(a1 + 40);
  *(&v191 + 1) = v5;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7E0, &qword_20C464A60);
  v6 = *(*(v203 - 8) + 64);
  MEMORY[0x28223BE20](v203);
  v204 = &v181 - v7;
  v219 = sub_20C45FEF0();
  v8 = *(v219 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v219);
  v12 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v181 - v13;
  v202 = sub_20C45FF00();
  v15 = *(*(v202 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v202);
  v185 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v182 = &v181 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v183 = &v181 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v197 = &v181 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v184 = &v181 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v196 = (&v181 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v195 = (&v181 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v194 = (&v181 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v198 = &v181 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v193 = &v181 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v201 = &v181 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v200 = &v181 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v181 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v181 - v43;
  sub_20C45FFB0();
  sub_20C45FED0();
  v45 = MEMORY[0x277D0A8D8];
  v192 = v44;
  sub_20C43AA94(v44, MEMORY[0x277D0A8D8]);
  sub_20C45FFC0();
  sub_20C45FED0();
  sub_20C43AA94(v42, v45);
  v46 = sub_20C45FEE0();
  v47 = *(v8 + 8);
  v48 = v12;
  v49 = v219;
  v47(v48, v219);
  v47(v14, v49);
  if ((v46 & 1) == 0)
  {
    sub_20C43C430();
    swift_allocError();
    v71 = 6;
LABEL_61:
    *v70 = v71;
    return swift_willThrow();
  }

  v50 = sub_20C45FFA0();
  v51 = v200;
  sub_20C45FFB0();
  v52 = v201;
  sub_20C45FFC0();
  v53 = v204;
  v54 = (v204 + *(v203 + 48));
  v55 = MEMORY[0x277D0A8D8];
  sub_20C43AA2C(v51, v204, MEMORY[0x277D0A8D8]);
  sub_20C43AA2C(v52, v54, v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v72 = v193;
      sub_20C43A9C4(v53, v193, MEMORY[0x277D0A8D8]);
      v73 = *v72;
      v74 = swift_getEnumCaseMultiPayload();
      if (!v74)
      {
        v142 = v192;
        sub_20C43A9C4(v54, v192, MEMORY[0x277D0A8D8]);
        LOBYTE(v142) = *v142;
        v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB828, &qword_20C464AF8);
        v144 = v199;
        v199[3] = v143;
        v144[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
        *v144 = v73;
        *(v144 + 1) = v142;
        *(v144 + 2) = v50;
LABEL_67:
        v180 = MEMORY[0x277D0A8D8];
        sub_20C43AA94(v54, MEMORY[0x277D0A8D8]);
        v105 = v53;
        v104 = v180;
        return sub_20C43AA94(v105, v104);
      }

      if (v74 == 3)
      {
        v75 = v184;
        sub_20C43A9C4(v54, v184, MEMORY[0x277D0A8D8]);
        v76 = sub_20C45FF20();
        v77 = *(v76 - 8);
        if ((*(v77 + 88))(v75, v76) == *MEMORY[0x277D0A918])
        {
          v78 = sub_20C45FE10();
          MEMORY[0x28223BE20](v78);
          *(&v181 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v181 - 1) = sub_20C43C484();
          KeyPath = swift_getKeyPath();
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB808, &qword_20C464AA8);
          v81 = v199;
          v199[3] = v80;
          v81[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
          v82 = swift_allocObject();
          v83 = v186;
          *&v209 = KeyPath;
          *(&v209 + 1) = v186;
          v84 = *(&v188 + 1);
          v85 = v188;
          v210 = v188;
          v86 = v189;
          *&v211 = v189;
          v87 = v190;
          BYTE8(v211) = v190;
          v88 = *(&v191 + 1);
          v89 = v191;
          v212 = v191;
          v90 = v188;
          *(v82 + 24) = v209;
          *(v82 + 40) = v90;
          v91 = v212;
          *(v82 + 56) = v211;
          *v81 = v82;
          *(v82 + 16) = v78;
          *(v82 + 72) = v91;
          *(v82 + 88) = v50;
          v213 = KeyPath;
LABEL_64:
          v214 = v83;
          *&v215 = v85;
          *(&v215 + 1) = v84;
          v216 = v86;
          v217 = v87;
          *&v218 = v89;
          *(&v218 + 1) = v88;
          sub_20C43C4D8(v187, v206);
          goto LABEL_65;
        }

        (*(v77 + 8))(v75, v76);
      }

      goto LABEL_44;
    }

    v106 = v194;
    sub_20C43A9C4(v53, v194, MEMORY[0x277D0A8D8]);
    v93 = *v106;
    v107 = swift_getEnumCaseMultiPayload();
    if (v107 != 1)
    {
      if (v107 == 3)
      {
        v108 = v185;
        sub_20C43A9C4(v54, v185, MEMORY[0x277D0A8D8]);
        v109 = sub_20C45FF20();
        v110 = *(v109 - 8);
        v111 = (*(v110 + 88))(v108, v109);
        if (v111 == *MEMORY[0x277D0A910])
        {
          MEMORY[0x28223BE20](v111);
          *(&v181 - 2) = &type metadata for ArtworkPredicateInput;
          *(&v181 - 1) = sub_20C43C484();
          v112 = swift_getKeyPath();
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB808, &qword_20C464AA8);
          v114 = v199;
          v199[3] = v113;
          v114[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
          v115 = swift_allocObject();
          v83 = v186;
          *&v209 = v112;
          *(&v209 + 1) = v186;
          v84 = *(&v188 + 1);
          v85 = v188;
          v210 = v188;
          v86 = v189;
          *&v211 = v189;
          v87 = v190;
          BYTE8(v211) = v190;
          v88 = *(&v191 + 1);
          v89 = v191;
          v212 = v191;
          v116 = v188;
          *(v115 + 24) = v209;
          *(v115 + 40) = v116;
          v117 = v212;
          *(v115 + 56) = v211;
          *v114 = v115;
          *(v115 + 16) = v93;
          *(v115 + 72) = v117;
          *(v115 + 88) = v50;
LABEL_63:
          v213 = v112;
          goto LABEL_64;
        }

        (*(v110 + 8))(v108, v109);
      }

LABEL_44:
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v148 = v197;
        sub_20C43A9C4(v54, v197, MEMORY[0x277D0A8D8]);
        v149 = sub_20C45FF20();
        v150 = *(v149 - 8);
        v151 = (*(v150 + 88))(v148, v149);
        if (v151 == *MEMORY[0x277D0A918] || v151 == *MEMORY[0x277D0A910])
        {
          goto LABEL_60;
        }

        (*(v150 + 8))(v148, v149);
      }

      v152 = swift_getEnumCaseMultiPayload();
      if (v152 < 3)
      {
        goto LABEL_54;
      }

      if (v152 == 3)
      {
        v153 = swift_getEnumCaseMultiPayload();
        if (v153 < 3)
        {
          v54 = v53;
LABEL_54:
          sub_20C43AA94(v54, MEMORY[0x277D0A8D8]);
          sub_20C43C430();
          swift_allocError();
          v71 = 2;
          goto LABEL_61;
        }

        if (v153 == 3)
        {
          sub_20C43C430();
          swift_allocError();
          *v170 = 10;
          swift_willThrow();
          return sub_20C40B440(v53, &qword_27C7BB7E0, &qword_20C464A60);
        }

        v154 = v54;
        v54 = v53;
      }

      else
      {
        v154 = v53;
      }

      sub_20C43AA94(v154, MEMORY[0x277D0A8D8]);
      goto LABEL_54;
    }

    v145 = v192;
    sub_20C43A9C4(v54, v192, MEMORY[0x277D0A8D8]);
    v94 = *v145;
    sub_20C43AA94(v54, MEMORY[0x277D0A8D8]);
LABEL_40:
    sub_20C43AA94(v53, MEMORY[0x277D0A8D8]);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7F8, &qword_20C464A70);
    v147 = v199;
    v199[3] = result;
    v147[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
    *v147 = v93;
    v147[1] = v94;
    *(v147 + 16) = v50;
    return result;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v92 = v195;
    sub_20C43A9C4(v53, v195, MEMORY[0x277D0A8D8]);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_44;
    }

    v93 = *v92;
    v94 = *v54;
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload == 3)
  {
    LODWORD(v219) = v50;
    v57 = v198;
    sub_20C43A9C4(v53, v198, MEMORY[0x277D0A8D8]);
    v58 = sub_20C45FF20();
    v59 = *(v58 - 8);
    v60 = *(v59 + 88);
    v61 = v60(v57, v58);
    v62 = v61;
    if (v61 == *MEMORY[0x277D0A918])
    {
      v63 = swift_getEnumCaseMultiPayload();
      if (v63)
      {
        if (v63 == 3)
        {
          v64 = v183;
          sub_20C43A9C4(v54, v183, MEMORY[0x277D0A8D8]);
          if (v60(v64, v58) == v62)
          {
            if (qword_28110B658 != -1)
            {
              swift_once();
            }

            v65 = sub_20C460000();
            __swift_project_value_buffer(v65, qword_28110E2C0);
            v66 = sub_20C45FFE0();
            v67 = sub_20C460660();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v213 = v69;
              *v68 = 136315138;
              *(v68 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v213);
              _os_log_impl(&dword_20C404000, v66, v67, "%s", v68, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v69);
              MEMORY[0x20F2FB570](v69, -1, -1);
              MEMORY[0x20F2FB570](v68, -1, -1);
            }

LABEL_36:

            v123 = *(&v191 + 1);
            v124 = v219;
            MEMORY[0x28223BE20](v125);
            *(&v181 - 2) = &type metadata for ArtworkPredicateInput;
            *(&v181 - 1) = sub_20C43C484();
            v126 = swift_getKeyPath();
            v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB818, &qword_20C464AB8);
            v128 = v199;
            v199[3] = v127;
            v128[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
            v129 = swift_allocObject();
            *v128 = v129;
            v130 = v186;
            *&v206[0] = v126;
            *(&v206[0] + 1) = v186;
            v131 = v188;
            v206[1] = v188;
            v132 = v189;
            *&v207 = v189;
            v133 = v190;
            BYTE8(v207) = v190;
            v134 = v191;
            *&v208 = v191;
            *(&v208 + 1) = v123;
            *&v209 = v126;
            *(&v209 + 1) = v186;
            v210 = v188;
            *&v211 = v189;
            BYTE8(v211) = v190;
            *&v212 = v191;
            *(&v212 + 1) = v123;
            v135 = v206[0];
            v136 = v188;
            v137 = v208;
            *(v129 + 48) = v207;
            *(v129 + 64) = v137;
            *(v129 + 16) = v135;
            *(v129 + 32) = v136;
            v138 = v209;
            v139 = v210;
            v140 = v212;
            *(v129 + 112) = v211;
            *(v129 + 128) = v140;
            *(v129 + 80) = v138;
            *(v129 + 96) = v139;
            *(v129 + 144) = v124;
            v213 = v126;
            v214 = v130;
            v215 = v131;
            v216 = v132;
            v217 = v133;
            *&v218 = v134;
            *(&v218 + 1) = v123;
            sub_20C43C4D8(v187, v205);
            sub_20C409B04(v206, v205, &qword_27C7BB810, &qword_20C464AB0);
            v141 = v205;
LABEL_66:
            sub_20C409B04(&v209, v141, &qword_27C7BB810, &qword_20C464AB0);
            sub_20C40B440(&v213, &qword_27C7BB810, &qword_20C464AB0);
            goto LABEL_67;
          }

LABEL_59:
          (*(v59 + 8))(v64, v58);
          goto LABEL_60;
        }

        goto LABEL_60;
      }

      v155 = v192;
      v156 = sub_20C43A9C4(v54, v192, MEMORY[0x277D0A8D8]);
      v157 = *v155;
      MEMORY[0x28223BE20](v156);
      *(&v181 - 2) = &type metadata for ArtworkPredicateInput;
      *(&v181 - 1) = sub_20C43C484();
      v158 = swift_getKeyPath();
      sub_20C43C4D8(v187, &v213);
      v159 = sub_20C45FE10();
      v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB820, &qword_20C464AC0);
      v161 = v199;
      v199[3] = v160;
      v161[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
      v162 = swift_allocObject();
      *v161 = v162;
      v163 = v186;
      *&v209 = v158;
      *(&v209 + 1) = v186;
      v164 = v188;
      v210 = v188;
      v165 = v189;
      *&v211 = v189;
      v166 = v190;
      BYTE8(v211) = v190;
      v167 = v191;
      v212 = v191;
      v168 = v188;
      *(v162 + 16) = v209;
      *(v162 + 32) = v168;
      v169 = v212;
      *(v162 + 48) = v211;
      *(v162 + 64) = v169;
      *(v162 + 80) = v159;
      *(v162 + 88) = v219;
      v213 = v158;
      v214 = v163;
      v215 = v164;
      v216 = v165;
      v217 = v166;
      v218 = v167;
LABEL_65:
      v141 = v206;
      goto LABEL_66;
    }

    if (v61 == *MEMORY[0x277D0A910])
    {
      v118 = swift_getEnumCaseMultiPayload();
      if (v118 != 1)
      {
        if (v118 == 3)
        {
          v64 = v182;
          sub_20C43A9C4(v54, v182, MEMORY[0x277D0A8D8]);
          if (v60(v64, v58) == v62)
          {
            if (qword_28110B658 != -1)
            {
              swift_once();
            }

            v119 = sub_20C460000();
            __swift_project_value_buffer(v119, qword_28110E2C0);
            v66 = sub_20C45FFE0();
            v120 = sub_20C460660();
            if (os_log_type_enabled(v66, v120))
            {
              v121 = swift_slowAlloc();
              v122 = swift_slowAlloc();
              v213 = v122;
              *v121 = 136315138;
              *(v121 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v213);
              _os_log_impl(&dword_20C404000, v66, v120, "%s", v121, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v122);
              MEMORY[0x20F2FB570](v122, -1, -1);
              MEMORY[0x20F2FB570](v121, -1, -1);
            }

            goto LABEL_36;
          }

          goto LABEL_59;
        }

LABEL_60:
        v171 = MEMORY[0x277D0A8D8];
        sub_20C43AA94(v54, MEMORY[0x277D0A8D8]);
        sub_20C43AA94(v53, v171);
        sub_20C43C430();
        swift_allocError();
        v71 = 5;
        goto LABEL_61;
      }

      v172 = v192;
      v173 = sub_20C43A9C4(v54, v192, MEMORY[0x277D0A8D8]);
      v174 = *v172;
      MEMORY[0x28223BE20](v173);
      *(&v181 - 2) = &type metadata for ArtworkPredicateInput;
      *(&v181 - 1) = sub_20C43C484();
      v112 = swift_getKeyPath();
      v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB820, &qword_20C464AC0);
      v176 = v199;
      v199[3] = v175;
      v176[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
      v177 = swift_allocObject();
      *v176 = v177;
      v83 = v186;
      *&v209 = v112;
      *(&v209 + 1) = v186;
      v84 = *(&v188 + 1);
      v85 = v188;
      v210 = v188;
      v86 = v189;
      *&v211 = v189;
      v87 = v190;
      BYTE8(v211) = v190;
      v88 = *(&v191 + 1);
      v89 = v191;
      v212 = v191;
      v178 = v188;
      *(v177 + 16) = v209;
      *(v177 + 32) = v178;
      v179 = v212;
      *(v177 + 48) = v211;
      *(v177 + 64) = v179;
      *(v177 + 80) = v174;
      *(v177 + 88) = v219;
      goto LABEL_63;
    }

    (*(v59 + 8))(v198, v58);
    goto LABEL_44;
  }

  v95 = v196;
  sub_20C43A9C4(v53, v196, MEMORY[0x277D0A8D8]);
  v96 = v95[1];
  if (swift_getEnumCaseMultiPayload() != 4)
  {

    goto LABEL_44;
  }

  v97 = *v95;
  v98 = *v54;
  v99 = v54[1];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7F0, &qword_20C464A68);
  v101 = v50;
  v102 = v199;
  v199[3] = v100;
  v102[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
  v103 = swift_allocObject();
  *v102 = v103;
  *(v103 + 16) = v97;
  *(v103 + 24) = v96;
  *(v103 + 32) = v98;
  *(v103 + 40) = v99;
  *(v103 + 48) = v101;
  v104 = MEMORY[0x277D0A8D8];
  v105 = v53;
  return sub_20C43AA94(v105, v104);
}