unint64_t sub_20C621694()
{
  result = qword_281105A88;
  if (!qword_281105A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF520, &unk_20C6559C8);
    sub_20C5E5558(&qword_281105830, &qword_27C7CF508, &qword_20C6559B0);
    sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A88);
  }

  return result;
}

uint64_t sub_20C621778(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_20C62190C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C62182C()
{
  result = qword_281105950;
  if (!qword_281105950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF530, &qword_20C6559E0);
    sub_20C5E5558(&qword_281105808, &qword_27C7CF538, &qword_20C6559E8);
    sub_20C5E5558(&qword_281105810, &qword_27C7CF540, &qword_20C6559F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105950);
  }

  return result;
}

unint64_t sub_20C62190C()
{
  result = qword_281105960;
  if (!qword_281105960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF548, &qword_20C6559F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF550, &qword_20C655A00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF558, &qword_20C655A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF560, &qword_20C655A10);
    sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
    sub_20C602C6C();
    swift_getOpaqueTypeConformance2();
    sub_20C621B24();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF568, &qword_20C655A18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF570, &qword_20C655A20);
    sub_20C621C60();
    swift_getOpaqueTypeConformance2();
    sub_20C621CB4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105960);
  }

  return result;
}

unint64_t sub_20C621B24()
{
  result = qword_281105AC8;
  if (!qword_281105AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF558, &qword_20C655A08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF560, &qword_20C655A10);
    sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
    sub_20C602C6C();
    swift_getOpaqueTypeConformance2();
    sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AC8);
  }

  return result;
}

unint64_t sub_20C621C60()
{
  result = qword_281106270;
  if (!qword_281106270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106270);
  }

  return result;
}

unint64_t sub_20C621CB4()
{
  result = qword_281105AC0;
  if (!qword_281105AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF570, &qword_20C655A20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF560, &qword_20C655A10);
    sub_20C5E5558(&qword_281105828, &qword_27C7CF560, &qword_20C655A10);
    sub_20C621C60();
    swift_getOpaqueTypeConformance2();
    sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AC0);
  }

  return result;
}

uint64_t sub_20C621DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF598, &qword_20C655AF8);
  sub_20C6226F0();
  return sub_20C64DCF0();
}

uint64_t sub_20C621E8C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_20C621DF0();
}

uint64_t sub_20C621E98@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20C64D880();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 2u)
  {
    v12 = (a2 + *(type metadata accessor for MarketingActionItem() + 32));
    v13 = v12[1];
    *&v42 = *v12;
    *(&v42 + 1) = v13;
    sub_20C602C18();

    v14 = sub_20C64D970();
    v16 = v15;
    v18 = v17 & 1;
    *&v39 = v14;
    *(&v39 + 1) = v15;
    *&v40 = v17 & 1;
    *(&v40 + 1) = v19;
    LOBYTE(v41) = 1;
    sub_20C5E573C(v14, v15, v17 & 1);

    sub_20C64D550();
    v39 = v42;
    v40 = v43;
    v41 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5B0, &qword_20C655B00);
    sub_20C62277C();
    sub_20C64D550();
    sub_20C5E56C0(v14, v16, v18);

LABEL_5:
    v36 = v43;
    v37 = v44;
    v38 = v45;
    *a3 = v42;
    *(a3 + 16) = v36;
    *(a3 + 32) = v37;
    *(a3 + 33) = v38;
    return result;
  }

  if (a1 == 3)
  {
    v21 = v9;
    v22 = (a2 + *(type metadata accessor for MarketingActionItem() + 32));
    v23 = v22[1];
    *&v42 = *v22;
    *(&v42 + 1) = v23;
    sub_20C602C18();

    v24 = sub_20C64D970();
    v26 = v25;
    v28 = v27;
    sub_20C64D800();
    sub_20C64D830();
    sub_20C64D870();

    (*(v7 + 104))(v11, *MEMORY[0x277CE0A10], v21);
    sub_20C64D8A0();

    (*(v7 + 8))(v11, v21);
    v29 = sub_20C64D950();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_20C5E56C0(v24, v26, v28 & 1);

    *&v39 = v29;
    *(&v39 + 1) = v31;
    *&v40 = v33 & 1;
    *(&v40 + 1) = v35;
    v41 = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF5B0, &qword_20C655B00);
    sub_20C62277C();
    result = sub_20C64D550();
    goto LABEL_5;
  }

  result = sub_20C64E2B0();
  __break(1u);
  return result;
}

uint64_t sub_20C622294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for MarketingActionItem() + 32));
  v8 = *v3;
  v9 = v3[1];
  sub_20C602C18();

  result = sub_20C64D970();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_20C622338@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 36));
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC88, &qword_20C653700) + 28);
  sub_20C64D350();
  *v10 = swift_getKeyPath();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(*(v12 - 8) + 16);

  return v13(a6, a1, v12);
}

uint64_t MarketingButtonStyle.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C622494()
{
  result = qword_27C7CF588;
  if (!qword_27C7CF588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF588);
  }

  return result;
}

unint64_t sub_20C6224F8()
{
  result = qword_281105870;
  if (!qword_281105870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF590, &qword_20C655AC0);
    sub_20C62257C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105870);
  }

  return result;
}

unint64_t sub_20C62257C()
{
  result = qword_281105968;
  if (!qword_281105968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF518, &qword_20C6559C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF508, &qword_20C6559B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF520, &unk_20C6559C8);
    sub_20C5E5558(&qword_281105830, &qword_27C7CF508, &qword_20C6559B0);
    sub_20C621694();
    swift_getOpaqueTypeConformance2();
    sub_20C621778(&qword_281105938, &qword_27C7CF4F8, &qword_20C6559A0, sub_20C6217FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105968);
  }

  return result;
}

unint64_t sub_20C6226F0()
{
  result = qword_27C7CF5A0;
  if (!qword_27C7CF5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF598, &qword_20C655AF8);
    sub_20C62277C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF5A0);
  }

  return result;
}

unint64_t sub_20C62277C()
{
  result = qword_27C7CF5A8;
  if (!qword_27C7CF5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF5B0, &qword_20C655B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF5A8);
  }

  return result;
}

unint64_t sub_20C6228F0()
{
  result = qword_281105B08;
  if (!qword_281105B08)
  {
    sub_20C64D2B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105B08);
  }

  return result;
}

unint64_t sub_20C622948()
{
  result = qword_281105AF0;
  if (!qword_281105AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF628, &unk_20C655BE0);
    sub_20C5E5558(&qword_2811058C8, &qword_27C7CEDD0, &unk_20C653790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AF0);
  }

  return result;
}

unint64_t sub_20C622A00()
{
  result = qword_27C7CF668;
  if (!qword_27C7CF668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF660, &unk_20C655C50);
    sub_20C622A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF668);
  }

  return result;
}

unint64_t sub_20C622A8C()
{
  result = qword_281105A60;
  if (!qword_281105A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF208, &qword_20C6545D0);
    sub_20C622B44();
    sub_20C5E5558(&qword_2811058E0, &qword_27C7CF670, &unk_20C655C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A60);
  }

  return result;
}

unint64_t sub_20C622B44()
{
  result = qword_281105AB8;
  if (!qword_281105AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF200, &unk_20C655C60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE290, &unk_20C655580);
    sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580);
    swift_getOpaqueTypeConformance2();
    sub_20C5E5558(&qword_281105898, &qword_27C7CEDD8, &qword_20C655590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AB8);
  }

  return result;
}

uint64_t sub_20C622CDC(uint64_t a1)
{
  v2 = sub_20C623350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C622D18(uint64_t a1)
{
  v2 = sub_20C623350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C622D54()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_20C622DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C6272B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C622DD4(uint64_t a1)
{
  v2 = sub_20C6232A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C622E10(uint64_t a1)
{
  v2 = sub_20C6232A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C622E4C(uint64_t a1)
{
  v2 = sub_20C6233A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C622E88(uint64_t a1)
{
  v2 = sub_20C6233A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C622EC4(uint64_t a1)
{
  v2 = sub_20C6232FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C622F00(uint64_t a1)
{
  v2 = sub_20C6232FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingButtonLayout.HorizontalAlignment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF678, &qword_20C655C80);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF680, &qword_20C655C88);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF688, &qword_20C655C90);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF690, &qword_20C655C98);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6232A8();
  sub_20C64E500();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_20C623350();
      v12 = v26;
      sub_20C64E3B0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_20C6232FC();
      v12 = v29;
      sub_20C64E3B0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_20C6233A4();
    sub_20C64E3B0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_20C6232A8()
{
  result = qword_27C7CF698;
  if (!qword_27C7CF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF698);
  }

  return result;
}

unint64_t sub_20C6232FC()
{
  result = qword_27C7CF6A0;
  if (!qword_27C7CF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF6A0);
  }

  return result;
}

unint64_t sub_20C623350()
{
  result = qword_27C7CF6A8;
  if (!qword_27C7CF6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF6A8);
  }

  return result;
}

unint64_t sub_20C6233A4()
{
  result = qword_27C7CF6B0;
  if (!qword_27C7CF6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF6B0);
  }

  return result;
}

uint64_t MarketingButtonLayout.HorizontalAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

uint64_t MarketingButtonLayout.HorizontalAlignment.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF6B8, &qword_20C655CA0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF6C0, &qword_20C655CA8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF6C8, &qword_20C655CB0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF6D0, &unk_20C655CB8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_20C6232A8();
  v20 = v43;
  sub_20C64E4F0();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_20C64E3A0();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_20C5DDAF4();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_20C64E290();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v30 = &type metadata for MarketingButtonLayout.HorizontalAlignment;
      sub_20C64E330();
      sub_20C64E280();
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
          sub_20C623350();
          sub_20C64E320();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_20C6232FC();
          v33 = v22;
          sub_20C64E320();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_20C6233A4();
        sub_20C64E320();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

_BYTE *MarketingButtonLayout.init(buttonAlignment:footnoteLineLimit:footnoteOffset:labelMaxWidth:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4 & 1;
  return result;
}

void static MarketingButtonLayout.default.getter(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x4024000000000000;
  *(a1 + 24) = 0x7FF0000000000000;
  *(a1 + 32) = 0;
}

unint64_t sub_20C623A54()
{
  v1 = 0x6C416E6F74747562;
  v2 = 0x65746F6E746F6F66;
  if (*v0 != 2)
  {
    v2 = 0x78614D6C6562616CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_20C623AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C6273C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C623B20(uint64_t a1)
{
  v2 = sub_20C625BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C623B5C(uint64_t a1)
{
  v2 = sub_20C625BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingButtonLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF6D8, &qword_20C655CC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v18 = *(v1 + 3);
  v19 = v10;
  v17 = v1[32];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C625BBC();
  sub_20C64E500();
  LOBYTE(v20) = v9;
  v22 = 0;
  sub_20C625C10();
  sub_20C64E410();
  if (!v2)
  {
    v13 = v17;
    v14 = v18;
    LOBYTE(v20) = 1;
    sub_20C64E400();
    v20 = v11;
    v22 = 2;
    sub_20C5EB44C();
    sub_20C64E410();
    v20 = v14;
    v21 = v13;
    v22 = 3;
    sub_20C64E3D0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MarketingButtonLayout.hash(into:)()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = v0[32];
  MEMORY[0x20F301800](*v0);
  MEMORY[0x20F301800](v1);
  v5 = 0.0;
  if (v2 != 0.0)
  {
    v5 = v2;
  }

  MEMORY[0x20F301820](*&v5);
  if (v4 == 1)
  {
    return sub_20C64E4C0();
  }

  sub_20C64E4C0();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return MEMORY[0x20F301820](v7);
}

uint64_t MarketingButtonLayout.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[32];
  sub_20C64E4A0();
  MarketingButtonLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t MarketingButtonLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF6F0, &qword_20C655CD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C625BBC();
  sub_20C64E4F0();
  if (!v2)
  {
    v21 = 0;
    sub_20C625C64();
    sub_20C64E390();
    v11 = v19;
    LOBYTE(v19) = 1;
    v18 = sub_20C64E380();
    v21 = 2;
    sub_20C5EB4A0();
    sub_20C64E390();
    v13 = v19;
    v21 = 3;
    sub_20C64E350();
    (*(v6 + 8))(v9, v5);
    v14 = v18;
    v15 = v19;
    v16 = v20;
    *a2 = v11;
    *(a2 + 8) = v14;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_20C624170()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[32];
  sub_20C64E4A0();
  MarketingButtonLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C6241E0()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = *(v0 + 3);
  v6 = v0[32];
  sub_20C64E4A0();
  MarketingButtonLayout.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t MarketingButtonState.loadState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MarketingButtonState() + 44);

  return sub_20C625D04(v3, a1);
}

uint64_t MarketingButtonState.loadState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MarketingButtonState() + 44);

  return sub_20C625D74(a1, v3);
}

uint64_t MarketingButtonState.init(layout:locale:placement:platform:isLocalAccount:isAppleAccountAvailable:isSupportedDeviceOwner:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = *a3;
  v20 = *(a3 + 1);
  v19 = *(a3 + 2);
  *a9 = *a1;
  *(a9 + 8) = v14;
  *(a9 + 16) = v15;
  *(a9 + 24) = v16;
  *(a9 + 32) = v17;
  v21 = type metadata accessor for MarketingButtonState();
  v22 = v21[5];
  v23 = sub_20C64CFE0();
  (*(*(v23 - 8) + 32))(a9 + v22, a2, v23);
  v24 = a9 + v21[6];
  *v24 = v18;
  *(v24 + 8) = v20;
  *(v24 + 16) = v19;
  *(a9 + v21[7]) = a4;
  sub_20C5E5658(a6, a9 + v21[9], &qword_27C7CEC80, &unk_20C6533B0);
  *(a9 + v21[8]) = a5;
  sub_20C5E5658(a7, a9 + v21[10], &qword_27C7CEC80, &unk_20C6533B0);
  return sub_20C5E5658(a8, a9 + v21[11], &qword_27C7CECC0, &qword_20C653470);
}

unint64_t sub_20C624478()
{
  v1 = *v0;
  v2 = 0x74756F79616CLL;
  v3 = 0x7461745364616F6CLL;
  if (v1 == 6)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0xD000000000000017;
  if (v1 == 4)
  {
    v4 = 0x416C61636F4C7369;
  }

  if (*v0 > 5u)
  {
    v4 = v3;
  }

  v5 = 0x6E656D6563616C70;
  if (v1 != 2)
  {
    v5 = 0x6D726F6674616C70;
  }

  if (*v0)
  {
    v2 = 0x656C61636F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_20C624580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C627548(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C6245B4(uint64_t a1)
{
  v2 = sub_20C6260C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6245F0(uint64_t a1)
{
  v2 = sub_20C6260C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingButtonState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF700, &qword_20C655CD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6260C8();
  sub_20C64E500();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v26 = *v3;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = 0;
  sub_20C62611C();
  sub_20C64E410();
  if (!v2)
  {
    v15 = type metadata accessor for MarketingButtonState();
    v16 = v15[5];
    v26 = 1;
    sub_20C64CFE0();
    sub_20C626918(&qword_27C7CE110, MEMORY[0x277CC9788]);
    sub_20C64E410();
    v17 = v3 + v15[6];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v26 = *v17;
    v27 = v18;
    v28 = v19;
    v31 = 2;
    sub_20C626170();

    sub_20C64E410();

    v26 = *(v3 + v15[7]);
    v31 = 3;
    sub_20C5F8B88();
    sub_20C64E410();
    v20 = *(v3 + v15[8]);
    v26 = 4;
    sub_20C64E3F0();
    v21 = v15[9];
    v26 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
    sub_20C6262D4(&qword_27C7CF720);
    sub_20C64E410();
    v22 = v15[10];
    v26 = 6;
    sub_20C64E410();
    v23 = v15[11];
    v26 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
    sub_20C626344(&qword_27C7CF728);
    sub_20C64E410();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t MarketingButtonState.hash(into:)()
{
  v1 = v0;
  v12 = *v0;
  v13 = *(v0 + 1);
  v14 = *(v0 + 2);
  v15 = *(v0 + 3);
  v16 = v0[32];
  MarketingButtonLayout.hash(into:)();
  v2 = type metadata accessor for MarketingButtonState();
  v3 = v2[5];
  sub_20C64CFE0();
  sub_20C626918(&qword_27C7CF740, MEMORY[0x277CC9788]);
  sub_20C64E000();
  v4 = &v1[v2[6]];
  v5 = *(v4 + 1);
  v6 = *(v4 + 2);
  MarketingOfferPlacement.rawValue.getter(*v4);
  sub_20C64E090();

  sub_20C64E4C0();
  if (v6)
  {
    sub_20C64E090();
  }

  MEMORY[0x20F301800](v1[v2[7]]);
  v7 = v1[v2[8]];
  sub_20C64E4C0();
  v8 = v2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  sub_20C64DEE0();
  v9 = &v1[v2[10]];
  sub_20C64DEE0();
  v10 = v2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  sub_20C626918(&qword_27C7CF748, type metadata accessor for MarketingOffer);
  return sub_20C64DEE0();
}

uint64_t MarketingButtonState.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingButtonState.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t MarketingButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  v3 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v42 = v39 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  v5 = *(*(v44 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v44);
  v43 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v39 - v8;
  v10 = sub_20C64CFE0();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF750, &qword_20C655CE0);
  v46 = *(v14 - 8);
  v47 = v14;
  v15 = *(v46 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v39 - v16;
  v18 = type metadata accessor for MarketingButtonState();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v22 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_20C6260C8();
  v48 = v17;
  v24 = v49;
  sub_20C64E4F0();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  v49 = v9;
  v25 = v45;
  v55 = 0;
  sub_20C62622C();
  sub_20C64E390();
  v26 = v52;
  v27 = v53;
  v28 = v54;
  *v21 = v51;
  *(v21 + 8) = v26;
  *(v21 + 3) = v27;
  v21[32] = v28;
  v51 = 1;
  sub_20C626918(&qword_27C7CE148, MEMORY[0x277CC9788]);
  sub_20C64E390();
  (*(v25 + 32))(&v21[v18[5]], v13, v10);
  v55 = 2;
  sub_20C626280();
  sub_20C64E390();
  v29 = &v21[v18[6]];
  *v29 = v51;
  *(v29 + 8) = v52;
  v55 = 3;
  sub_20C5F8CA8();
  v39[1] = 0;
  sub_20C64E390();
  v30 = v18;
  v21[v18[7]] = v51;
  v51 = 4;
  v31 = sub_20C64E370();
  v32 = v46;
  v21[v30[8]] = v31 & 1;
  v51 = 5;
  v33 = sub_20C6262D4(&qword_27C7CF768);
  v34 = v49;
  v39[0] = v33;
  sub_20C64E390();
  sub_20C5E5658(v34, &v21[v30[9]], &qword_27C7CEC80, &unk_20C6533B0);
  v51 = 6;
  v35 = v43;
  sub_20C64E390();
  sub_20C5E5658(v35, &v21[v30[10]], &qword_27C7CEC80, &unk_20C6533B0);
  v51 = 7;
  sub_20C626344(&qword_27C7CF770);
  v36 = v42;
  v37 = v47;
  sub_20C64E390();
  (*(v32 + 8))(v48, v37);
  sub_20C5E5658(v36, &v21[v30[11]], &qword_27C7CECC0, &qword_20C653470);
  sub_20C626418(v21, v40);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_20C62647C(v21);
}

uint64_t sub_20C6253E0()
{
  sub_20C64E4A0();
  MarketingButtonState.hash(into:)();
  return sub_20C64E4E0();
}

uint64_t sub_20C625424()
{
  sub_20C64E4A0();
  MarketingButtonState.hash(into:)();
  return sub_20C64E4E0();
}

FitnessMarketing::MarketingActionButtonLocalState __swiftcall MarketingActionButtonLocalState.init(isShowingServiceSubscriptionHandoff:isShowingNoSupportedDeviceAlert:)(Swift::Bool isShowingServiceSubscriptionHandoff, Swift::Bool isShowingNoSupportedDeviceAlert)
{
  *v2 = isShowingServiceSubscriptionHandoff;
  v2[1] = isShowingNoSupportedDeviceAlert;
  result.isShowingServiceSubscriptionHandoff = isShowingServiceSubscriptionHandoff;
  return result;
}

unint64_t sub_20C625498()
{
  if (*v0)
  {
    result = 0xD00000000000001FLL;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

uint64_t sub_20C6254D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000023 && 0x800000020C65A3C0 == a2;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000020C65A3F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

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

uint64_t sub_20C6255B4(uint64_t a1)
{
  v2 = sub_20C6264D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6255F0(uint64_t a1)
{
  v2 = sub_20C6264D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingActionButtonLocalState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF778, &qword_20C655CE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6264D8();
  sub_20C64E500();
  v15 = 0;
  sub_20C64E3F0();
  if (!v2)
  {
    v14 = 1;
    sub_20C64E3F0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t MarketingActionButtonLocalState.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20C64E4C0();
  return sub_20C64E4C0();
}

uint64_t MarketingActionButtonLocalState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20C64E4A0();
  sub_20C64E4C0();
  sub_20C64E4C0();
  return sub_20C64E4E0();
}

uint64_t MarketingActionButtonLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF788, &qword_20C655CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6264D8();
  sub_20C64E4F0();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_20C64E370();
    v15 = 1;
    v13 = sub_20C64E370();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
    a2[1] = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_20C625A34()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20C64E4A0();
  sub_20C64E4C0();
  sub_20C64E4C0();
  return sub_20C64E4E0();
}

uint64_t sub_20C625A94()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20C64E4C0();
  return sub_20C64E4C0();
}

uint64_t sub_20C625AD4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20C64E4A0();
  sub_20C64E4C0();
  sub_20C64E4C0();
  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing0B12ButtonLayoutV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  v5 = a2[32];
  if (a1[32])
  {
    return (a2[32] & 1) != 0;
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

unint64_t sub_20C625BBC()
{
  result = qword_27C7CF6E0;
  if (!qword_27C7CF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF6E0);
  }

  return result;
}

unint64_t sub_20C625C10()
{
  result = qword_27C7CF6E8;
  if (!qword_27C7CF6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF6E8);
  }

  return result;
}

unint64_t sub_20C625C64()
{
  result = qword_27C7CF6F8;
  if (!qword_27C7CF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF6F8);
  }

  return result;
}

uint64_t type metadata accessor for MarketingButtonState()
{
  result = qword_281106628;
  if (!qword_281106628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C625D04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C625D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s16FitnessMarketing0B11ButtonStateV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  v7 = a2[32];
  if (a1[32])
  {
    if (!a2[32])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 3) != *(a2 + 3))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  v8 = type metadata accessor for MarketingButtonState();
  if ((MEMORY[0x20F300320](&a1[v8[5]], &a2[v8[5]]) & 1) == 0)
  {
    return 0;
  }

  v9 = v8[6];
  v10 = &a1[v9];
  v12 = *&a1[v9 + 8];
  v11 = *&a1[v9 + 16];
  v13 = &a2[v9];
  v15 = *(v13 + 1);
  v14 = *(v13 + 2);
  v16 = *v13;
  v17 = MarketingOfferPlacement.rawValue.getter(*v10);
  v19 = v18;
  if (v17 == MarketingOfferPlacement.rawValue.getter(v16) && v19 == v20)
  {
  }

  else
  {
    v22 = sub_20C64E430();

    if ((v22 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (!v11)
  {

    if (v14)
    {
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (!v14)
  {
LABEL_30:

LABEL_31:

    return 0;
  }

  if (v12 == v15 && v11 == v14)
  {

LABEL_34:

    goto LABEL_35;
  }

  v23 = sub_20C64E430();

  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_35:
  if (a1[v8[7]] != a2[v8[7]])
  {
    return 0;
  }

  if (a1[v8[8]] != a2[v8[8]])
  {
    return 0;
  }

  v24 = v8[9];
  if ((sub_20C64DED0() & 1) == 0)
  {
    return 0;
  }

  v25 = v8[10];
  if ((sub_20C64DED0() & 1) == 0)
  {
    return 0;
  }

  v26 = v8[11];
  type metadata accessor for MarketingOffer();
  sub_20C626918(qword_2811061C0, type metadata accessor for MarketingOffer);

  return sub_20C64DED0();
}

unint64_t sub_20C6260C8()
{
  result = qword_27C7CF708;
  if (!qword_27C7CF708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF708);
  }

  return result;
}

unint64_t sub_20C62611C()
{
  result = qword_27C7CF710;
  if (!qword_27C7CF710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF710);
  }

  return result;
}

unint64_t sub_20C626170()
{
  result = qword_27C7CF718;
  if (!qword_27C7CF718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF718);
  }

  return result;
}

uint64_t sub_20C6261C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C62622C()
{
  result = qword_27C7CF758;
  if (!qword_27C7CF758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF758);
  }

  return result;
}

unint64_t sub_20C626280()
{
  result = qword_27C7CF760;
  if (!qword_27C7CF760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF760);
  }

  return result;
}

uint64_t sub_20C6262D4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C626344(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECC0, &qword_20C653470);
    sub_20C626918(&qword_27C7CF730, type metadata accessor for MarketingOffer);
    sub_20C626918(&qword_27C7CF738, type metadata accessor for MarketingOffer);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C626418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingButtonState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C62647C(uint64_t a1)
{
  v2 = type metadata accessor for MarketingButtonState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C6264D8()
{
  result = qword_27C7CF780;
  if (!qword_27C7CF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF780);
  }

  return result;
}

unint64_t sub_20C626530()
{
  result = qword_27C7CF790;
  if (!qword_27C7CF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF790);
  }

  return result;
}

unint64_t sub_20C626588()
{
  result = qword_27C7CF798;
  if (!qword_27C7CF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF798);
  }

  return result;
}

unint64_t sub_20C626628()
{
  result = qword_281106268;
  if (!qword_281106268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106268);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C626690(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[33])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20C6266D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void sub_20C626764()
{
  sub_20C64CFE0();
  if (v0 <= 0x3F)
  {
    sub_20C62682C();
    if (v1 <= 0x3F)
    {
      sub_20C626884();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C62682C()
{
  if (!qword_2811057D8)
  {
    v0 = sub_20C64DEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811057D8);
    }
  }
}

void sub_20C626884()
{
  if (!qword_2811057E0)
  {
    type metadata accessor for MarketingOffer();
    sub_20C626918(qword_2811061C0, type metadata accessor for MarketingOffer);
    v0 = sub_20C64DEF0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811057E0);
    }
  }
}

uint64_t sub_20C626918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MarketingActionButtonLocalState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for MarketingActionButtonLocalState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MarketingButtonState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingButtonState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C626C84()
{
  result = qword_27C7CF7A0;
  if (!qword_27C7CF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7A0);
  }

  return result;
}

unint64_t sub_20C626CDC()
{
  result = qword_27C7CF7A8;
  if (!qword_27C7CF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7A8);
  }

  return result;
}

unint64_t sub_20C626D34()
{
  result = qword_27C7CF7B0;
  if (!qword_27C7CF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7B0);
  }

  return result;
}

unint64_t sub_20C626D8C()
{
  result = qword_27C7CF7B8;
  if (!qword_27C7CF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7B8);
  }

  return result;
}

unint64_t sub_20C626DE4()
{
  result = qword_27C7CF7C0;
  if (!qword_27C7CF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7C0);
  }

  return result;
}

unint64_t sub_20C626E3C()
{
  result = qword_27C7CF7C8;
  if (!qword_27C7CF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7C8);
  }

  return result;
}

unint64_t sub_20C626E94()
{
  result = qword_27C7CF7D0;
  if (!qword_27C7CF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7D0);
  }

  return result;
}

unint64_t sub_20C626EEC()
{
  result = qword_27C7CF7D8;
  if (!qword_27C7CF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7D8);
  }

  return result;
}

unint64_t sub_20C626F44()
{
  result = qword_27C7CF7E0;
  if (!qword_27C7CF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7E0);
  }

  return result;
}

unint64_t sub_20C626F9C()
{
  result = qword_27C7CF7E8;
  if (!qword_27C7CF7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7E8);
  }

  return result;
}

unint64_t sub_20C626FF4()
{
  result = qword_27C7CF7F0;
  if (!qword_27C7CF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7F0);
  }

  return result;
}

unint64_t sub_20C62704C()
{
  result = qword_27C7CF7F8;
  if (!qword_27C7CF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF7F8);
  }

  return result;
}

unint64_t sub_20C6270A4()
{
  result = qword_27C7CF800;
  if (!qword_27C7CF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF800);
  }

  return result;
}

unint64_t sub_20C6270FC()
{
  result = qword_27C7CF808;
  if (!qword_27C7CF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF808);
  }

  return result;
}

unint64_t sub_20C627154()
{
  result = qword_27C7CF810;
  if (!qword_27C7CF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF810);
  }

  return result;
}

unint64_t sub_20C6271AC()
{
  result = qword_27C7CF818;
  if (!qword_27C7CF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF818);
  }

  return result;
}

unint64_t sub_20C627204()
{
  result = qword_27C7CF820;
  if (!qword_27C7CF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF820);
  }

  return result;
}

unint64_t sub_20C62725C()
{
  result = qword_27C7CF828;
  if (!qword_27C7CF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF828);
  }

  return result;
}

uint64_t sub_20C6272B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E696461656CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C6273C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C416E6F74747562 && a2 == 0xEF746E656D6E6769;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C65A360 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6E746F6F66 && a2 == 0xEE0074657366664FLL || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x78614D6C6562616CLL && a2 == 0xED00006874646957)
  {

    return 3;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C627548(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74756F79616CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x416C61636F4C7369 && a2 == 0xEE00746E756F6363 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020C65A380 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C65A3A0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = sub_20C64E430();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

__n128 AudioLanguageEngagementSheetFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t AudioLanguageEngagementSheetFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v153 = a3;
  v150 = a2;
  v6 = type metadata accessor for AudioLanguageEngagementSheet();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v147 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  v9 = *(*(v149 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v149);
  v12 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v145 = &v144 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v144 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v144 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA68, &qword_20C652AD0);
  v151 = *(v20 - 8);
  v152 = v20;
  v21 = *(v151 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v146 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v144 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v144 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v148 = &v144 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v144 - v32;
  v34 = type metadata accessor for AudioLanguageEngagementSheetAction();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v37 = (&v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v4[1];
  v155 = *v4;
  v156 = v38;
  v39 = v4[3];
  v157 = v4[2];
  v158 = v39;
  sub_20C62AF28(a4, v37, type metadata accessor for AudioLanguageEngagementSheetAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v89 = v88[12];
      v90 = v88[16];
      v91 = v88[20];
      v92 = &v26[v88[24]];
      v154[0] = 4;
      sub_20C628718();
      sub_20C64E230();
      sub_20C64E170();
      v93 = *MEMORY[0x277D043F0];
      v94 = sub_20C64DF10();
      (*(*(v94 - 8) + 104))(&v26[v90], v93, v94);
      v95 = *MEMORY[0x277D043E8];
      v96 = sub_20C64DF00();
      (*(*(v96 - 8) + 104))(&v26[v91], v95, v96);
      v97 = swift_allocObject();
      v98 = v156;
      v97[1] = v155;
      v97[2] = v98;
      v99 = v158;
      v97[3] = v157;
      v97[4] = v99;
      *v92 = &unk_20C656718;
      *(v92 + 1) = v97;
      v101 = v151;
      v100 = v152;
      (*(v151 + 104))(v26, *MEMORY[0x277D043B0], v152);
      v102 = v153;
      v103 = *v153;
      sub_20C62AEF0(&v155, v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_20C5F8738(0, v103[2] + 1, 1, v103);
      }

      v105 = v103[2];
      v104 = v103[3];
      if (v105 >= v104 >> 1)
      {
        v103 = sub_20C5F8738(v104 > 1, v105 + 1, 1, v103);
      }

      v103[2] = v105 + 1;
      result = (*(v101 + 32))(v103 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v105, v26, v100);
      goto LABEL_29;
    }

    v47 = v153;
    if (EnumCaseMultiPayload == 4)
    {
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v49 = v48[12];
      v50 = v48[16];
      v51 = v48[20];
      v52 = &v29[v48[24]];
      v154[0] = 2;
      sub_20C628718();
      sub_20C64E230();
      sub_20C64E170();
      v53 = *MEMORY[0x277D04400];
      v54 = sub_20C64DF10();
      (*(*(v54 - 8) + 104))(&v29[v50], v53, v54);
      v55 = swift_allocObject();
      v56 = v156;
      v55[1] = v155;
      v55[2] = v56;
      v57 = v158;
      v55[3] = v157;
      v55[4] = v57;
      *v52 = &unk_20C656730;
      *(v52 + 1) = v55;
      v58 = *MEMORY[0x277D043E8];
      v59 = sub_20C64DF00();
      (*(*(v59 - 8) + 104))(&v29[v51], v58, v59);
      v61 = v151;
      v60 = v152;
      (*(v151 + 104))(v29, *MEMORY[0x277D043B0], v152);
      v62 = *v47;
      sub_20C62AEF0(&v155, v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_20C5F8738(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_20C5F8738(v63 > 1, v64 + 1, 1, v62);
      }

      v62[2] = v64 + 1;
      result = (*(v61 + 32))(v62 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v64, v29, v60);
    }

    else
    {
      v126 = *(type metadata accessor for AudioLanguageEngagementSheetState() + 28);
      v127 = v150;
      sub_20C5DE2D0(v150 + v126, v12);
      v128 = swift_getEnumCaseMultiPayload();
      result = sub_20C5DBFC4(v12, &qword_27C7CE0F8, &qword_20C64FC10);
      if (v128 != 3)
      {
        return result;
      }

      sub_20C5DBFC4(v127 + v126, &qword_27C7CE0F8, &qword_20C64FC10);
      swift_storeEnumTagMultiPayload();
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v130 = v129[12];
      v131 = v129[16];
      v132 = v129[20];
      v133 = v146;
      v134 = &v146[v129[24]];
      v154[0] = 5;
      sub_20C628718();
      sub_20C64E230();
      sub_20C64E170();
      v135 = *MEMORY[0x277D04400];
      v136 = sub_20C64DF10();
      (*(*(v136 - 8) + 104))(&v133[v131], v135, v136);
      v137 = *MEMORY[0x277D043E0];
      v138 = sub_20C64DF00();
      (*(*(v138 - 8) + 104))(&v133[v132], v137, v138);
      *v134 = &unk_20C656708;
      *(v134 + 1) = 0;
      v140 = v151;
      v139 = v152;
      (*(v151 + 104))(v133, *MEMORY[0x277D043B0], v152);
      v62 = *v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_20C5F8738(0, v62[2] + 1, 1, v62);
      }

      v142 = v62[2];
      v141 = v62[3];
      if (v142 >= v141 >> 1)
      {
        v62 = sub_20C5F8738(v141 > 1, v142 + 1, 1, v62);
      }

      v62[2] = v142 + 1;
      result = (*(v140 + 32))(v62 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v142, v133, v139);
    }

    *v47 = v62;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v41 = v147;
        sub_20C5E5138(v37, v147);
        v42 = *(type metadata accessor for AudioLanguageEngagementSheetState() + 28);
        v43 = v150;
        sub_20C5DE2D0(v150 + v42, v17);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          sub_20C5DBFC4(v17, &qword_27C7CE0F8, &qword_20C64FC10);
          v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE248, &qword_20C64FF90) + 48);
          v45 = v145;
          sub_20C62AF28(v41, v145, type metadata accessor for AudioLanguageEngagementSheet);
          sub_20C64CF20();
          sub_20C62B458(v41, type metadata accessor for AudioLanguageEngagementSheet);
          swift_storeEnumTagMultiPayload();
          return sub_20C5DE384(v45, v43 + v42);
        }

        sub_20C62B458(v41, type metadata accessor for AudioLanguageEngagementSheet);
        v143 = v17;
        return sub_20C5DBFC4(v143, &qword_27C7CE0F8, &qword_20C64FC10);
      }

      v106 = v150 + *(type metadata accessor for AudioLanguageEngagementSheetState() + 24);
      v107 = sub_20C64CF80();
      v109 = v108;
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v111 = v110[12];
      v112 = v110[16];
      v113 = v110[20];
      v114 = &v33[v110[24]];
      v154[0] = 0;
      sub_20C628718();
      sub_20C64E230();
      sub_20C64E170();
      v115 = *MEMORY[0x277D04400];
      v116 = sub_20C64DF10();
      (*(*(v116 - 8) + 104))(&v33[v112], v115, v116);
      v117 = *MEMORY[0x277D043E8];
      v118 = sub_20C64DF00();
      (*(*(v118 - 8) + 104))(&v33[v113], v117, v118);
      v119 = swift_allocObject();
      v120 = v156;
      *(v119 + 16) = v155;
      *(v119 + 32) = v120;
      v121 = v158;
      *(v119 + 48) = v157;
      *(v119 + 64) = v121;
      *(v119 + 80) = v107;
      *(v119 + 88) = v109;
      *v114 = &unk_20C656750;
      *(v114 + 1) = v119;
      v123 = v151;
      v122 = v152;
      (*(v151 + 104))(v33, *MEMORY[0x277D043B0], v152);
      v102 = v153;
      v103 = *v153;
      sub_20C62AEF0(&v155, v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_20C5F8738(0, v103[2] + 1, 1, v103);
      }

      v125 = v103[2];
      v124 = v103[3];
      if (v125 >= v124 >> 1)
      {
        v103 = sub_20C5F8738(v124 > 1, v125 + 1, 1, v103);
      }

      v103[2] = v125 + 1;
      result = (*(v123 + 32))(v103 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v125, v33, v122);
LABEL_29:
      *v102 = v103;
      return result;
    }

    v65 = *v37;
    v66 = v37[1];
    v67 = v37[2];
    v68 = v37[3];
    v69 = v37[4];
    v70 = (v150 + *(type metadata accessor for AudioLanguageEngagementSheetState() + 28));
    sub_20C5DE2D0(v70, v19);
    if (swift_getEnumCaseMultiPayload() != 4)
    {

      v143 = v19;
      return sub_20C5DBFC4(v143, &qword_27C7CE0F8, &qword_20C64FC10);
    }

    v150 = v65;
    sub_20C5DBFC4(v19, &qword_27C7CE0F8, &qword_20C64FC10);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
    v72 = v71[12];
    v73 = v71[16];
    v74 = v71[20];
    v75 = v148;
    v76 = &v148[v71[24]];
    v154[0] = 1;
    sub_20C628718();
    sub_20C64E230();
    sub_20C64E170();
    v77 = *MEMORY[0x277D043F0];
    v78 = sub_20C64DF10();
    (*(*(v78 - 8) + 104))(&v75[v73], v77, v78);
    v79 = *MEMORY[0x277D043E8];
    v80 = sub_20C64DF00();
    (*(*(v80 - 8) + 104))(&v75[v74], v79, v80);
    v81 = swift_allocObject();
    v82 = v156;
    v81[1] = v155;
    v81[2] = v82;
    v83 = v158;
    v81[3] = v157;
    v81[4] = v83;
    *v76 = &unk_20C656740;
    *(v76 + 1) = v81;
    (*(v151 + 104))(v75, *MEMORY[0x277D043B0], v152);
    v84 = v153;
    v85 = *v153;
    sub_20C62AEF0(&v155, v154);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v85 = sub_20C5F8738(0, v85[2] + 1, 1, v85);
    }

    v87 = v85[2];
    v86 = v85[3];
    if (v87 >= v86 >> 1)
    {
      v85 = sub_20C5F8738(v86 > 1, v87 + 1, 1, v85);
    }

    v85[2] = v87 + 1;
    (*(v151 + 32))(v85 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v87, v148, v152);
    *v84 = v85;
    sub_20C5DBFC4(v70, &qword_27C7CE0F8, &qword_20C64FC10);
    *v70 = v150;
    v70[1] = v66;
    v70[2] = v67;
    v70[3] = v68;
    v70[4] = v69;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_20C628718()
{
  result = qword_27C7CF838;
  if (!qword_27C7CF838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF838);
  }

  return result;
}

uint64_t sub_20C62876C(uint64_t a1, int **a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 32) = sub_20C64E160();
  *(v4 + 40) = sub_20C64E150();
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 3);
  *(v4 + 48) = *(a2 + 2);
  *(v4 + 64) = v8;
  v12 = (v6 + *v6);
  v9 = v6[1];
  v10 = swift_task_alloc();
  *(v4 + 80) = v10;
  *v10 = v4;
  v10[1] = sub_20C628880;

  return v12();
}

uint64_t sub_20C628880()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  v11 = (v2[8] + *v2[8]);
  v5 = *(v2[8] + 4);
  v6 = swift_task_alloc();
  v2[11] = v6;
  *v6 = v4;
  v6[1] = sub_20C628A24;
  v7 = v2[9];
  v8 = v2[3];
  v9 = v2[2];

  return v11(v9, v8);
}

uint64_t sub_20C628A24()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v7 = sub_20C64E130();

    return MEMORY[0x2822009F8](sub_20C628DC0, v7, v6);
  }

  else
  {
    *(v3 + 120) = 1;
    v12 = (*(v3 + 48) + **(v3 + 48));
    v8 = *(*(v3 + 48) + 4);
    v9 = swift_task_alloc();
    *(v3 + 104) = v9;
    *v9 = v3;
    v9[1] = sub_20C628C18;
    v10 = *(v3 + 56);

    return v12(v3 + 120);
  }
}

uint64_t sub_20C628C18()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v14 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = *(v2 + 40);
    v6 = sub_20C64E130();
    v8 = v7;
    v9 = sub_20C628F6C;
  }

  else
  {
    v10 = *(v2 + 32);
    v11 = *(v2 + 40);
    v6 = sub_20C64E130();
    v8 = v12;
    v9 = sub_20C628D5C;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_20C628D5C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C628DC0()
{
  v1 = v0[5];

  v2 = v0[12];
  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v3 = sub_20C64D160();
  __swift_project_value_buffer(v3, qword_27C7DD450);
  v4 = v2;
  v5 = sub_20C64D140();
  v6 = sub_20C64E1B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20C5D2000, v5, v6, "[AudioLanguageEngagementSheetFeature] Failed to save result: %{public}@", v7, 0xCu);
    sub_20C5DBFC4(v8, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v8, -1, -1);
    MEMORY[0x20F301F10](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_20C628F6C()
{
  v1 = v0[5];

  v2 = v0[14];
  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v3 = sub_20C64D160();
  __swift_project_value_buffer(v3, qword_27C7DD450);
  v4 = v2;
  v5 = sub_20C64D140();
  v6 = sub_20C64E1B0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20C5D2000, v5, v6, "[AudioLanguageEngagementSheetFeature] Failed to save result: %{public}@", v7, 0xCu);
    sub_20C5DBFC4(v8, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v8, -1, -1);
    MEMORY[0x20F301F10](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_20C629118(uint64_t a1, int **a2)
{
  v2[2] = sub_20C64E160();
  v2[3] = sub_20C64E150();
  v4 = a2[1];
  v8 = (*a2 + **a2);
  v5 = (*a2)[1];
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_20C629220;

  return v8();
}

uint64_t sub_20C629220()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_20C64E130();
  if (v2)
  {
    v8 = sub_20C6293E0;
  }

  else
  {
    v8 = sub_20C62937C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20C62937C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C6293E0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_20C629444(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v4 = type metadata accessor for AudioLanguageEngagementSheetAction();
  v2[7] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(type metadata accessor for AudioLanguageEngagementSheet() - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v2[9] = v7;
  v2[10] = sub_20C64E160();
  v2[11] = sub_20C64E150();
  v8 = *(a2 + 24);
  v12 = (*(a2 + 16) + **(a2 + 16));
  v9 = *(*(a2 + 16) + 4);
  v10 = swift_task_alloc();
  v2[12] = v10;
  *v10 = v2;
  v10[1] = sub_20C6295BC;

  return v12(v7);
}

uint64_t sub_20C6295BC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v11 = *v1;
  v3[13] = v2;

  v8 = sub_20C64E130();
  v3[14] = v8;
  v3[15] = v7;
  if (v2)
  {
    v9 = sub_20C6299F0;
  }

  else
  {
    v9 = sub_20C62971C;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_20C62971C()
{
  v1 = v0[7];
  sub_20C62AF28(v0[9], v0[8], type metadata accessor for AudioLanguageEngagementSheet);
  swift_storeEnumTagMultiPayload();
  v2 = *(MEMORY[0x277D043C8] + 4);
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF860, &qword_20C6568A8);
  *v3 = v0;
  v3[1] = sub_20C629804;
  v5 = v0[8];
  v6 = v0[6];

  return MEMORY[0x282159B08](v5, v4);
}

uint64_t sub_20C629804()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 64);
  v7 = *v0;

  sub_20C62B458(v3, type metadata accessor for AudioLanguageEngagementSheetAction);
  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_20C62995C, v5, v4);
}

uint64_t sub_20C62995C()
{
  v1 = v0[11];
  v2 = v0[9];

  sub_20C62B458(v2, type metadata accessor for AudioLanguageEngagementSheet);
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20C6299F0()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = sub_20C64CEA0();
  v5 = [v4 domain];

  v6 = sub_20C64E050();
  v8 = v7;

  v9 = sub_20C64CEA0();
  v10 = [v9 code];

  swift_getErrorValue();
  v12 = v0[2];
  v11 = v0[3];
  v13 = v0[4];
  v14 = sub_20C64E450();
  *v2 = v6;
  v2[1] = v8;
  v2[2] = v10;
  v2[3] = v14;
  v2[4] = v15;
  swift_storeEnumTagMultiPayload();
  v16 = *(MEMORY[0x277D043C8] + 4);
  v17 = swift_task_alloc();
  v0[17] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF860, &qword_20C6568A8);
  *v17 = v0;
  v17[1] = sub_20C629B58;
  v19 = v0[8];
  v20 = v0[6];

  return MEMORY[0x282159B08](v19, v18);
}

uint64_t sub_20C629B58()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 64);
  v7 = *v0;

  sub_20C62B458(v3, type metadata accessor for AudioLanguageEngagementSheetAction);
  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_20C629CB0, v5, v4);
}

uint64_t sub_20C629CB0()
{
  v1 = v0[13];
  v2 = v0[11];

  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_20C629D30(uint64_t a1, int **a2)
{
  *(v2 + 16) = sub_20C64E160();
  v4 = sub_20C64E150();
  v5 = *a2;
  v6 = a2[1];
  *(v2 + 24) = v4;
  *(v2 + 32) = v5;
  *(v2 + 40) = v6;
  v7 = *(a2 + 3);
  *(v2 + 48) = *(a2 + 2);
  *(v2 + 64) = v7;
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  *(v2 + 80) = v9;
  *v9 = v2;
  v9[1] = sub_20C629E44;

  return v11();
}

uint64_t sub_20C629E44()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  v5 = *(v2 + 24);
  v6 = *(v2 + 16);
  if (v0)
  {

    v7 = sub_20C64E130();
    v9 = v8;
    v10 = sub_20C62B4B8;
  }

  else
  {
    v7 = sub_20C64E130();
    v9 = v11;
    v10 = sub_20C629FC8;
  }

  return MEMORY[0x2822009F8](v10, v7, v9);
}

uint64_t sub_20C629FC8()
{
  if (qword_27C7CDF70 != -1)
  {
    swift_once();
  }

  v2 = qword_27C7CE488;
  v1 = unk_27C7CE490;
  v7 = (v0[8] + *v0[8]);
  v3 = *(v0[8] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_20C62A100;
  v5 = v0[9];

  return v7(v2, v1);
}

uint64_t sub_20C62A100()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v7 = sub_20C64E130();

    return MEMORY[0x2822009F8](sub_20C62A638, v7, v6);
  }

  else
  {
    *(v3 + 136) = 1;
    v12 = (*(v3 + 48) + **(v3 + 48));
    v8 = *(*(v3 + 48) + 4);
    v9 = swift_task_alloc();
    *(v3 + 104) = v9;
    *v9 = v3;
    v9[1] = sub_20C62A2F4;
    v10 = *(v3 + 56);

    return v12(v3 + 136);
  }
}

uint64_t sub_20C62A2F4()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  v3[14] = v0;

  if (v0)
  {
    v4 = v3[2];
    v5 = v3[3];
    v7 = sub_20C64E130();

    return MEMORY[0x2822009F8](sub_20C62A86C, v7, v6);
  }

  else
  {
    v12 = (v3[4] + *v3[4]);
    v8 = *(v3[4] + 4);
    v9 = swift_task_alloc();
    v3[15] = v9;
    *v9 = v3;
    v9[1] = sub_20C62A4DC;
    v10 = v3[5];

    return v12();
  }
}

uint64_t sub_20C62A4DC()
{
  v2 = v0;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 128) = v2;

  v7 = sub_20C64E130();
  if (v2)
  {
    v8 = sub_20C62AAA0;
  }

  else
  {
    v8 = sub_20C62B4C0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20C62A638()
{
  v1 = v0[12];
  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v2 = sub_20C64D160();
  __swift_project_value_buffer(v2, qword_27C7DD450);
  v3 = v1;
  v4 = sub_20C64D140();
  v5 = sub_20C64E1B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20C5D2000, v4, v5, "[AudioLanguageEngagementSheetFeature] Failed to save result: %{public}@", v6, 0xCu);
    sub_20C5DBFC4(v7, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v7, -1, -1);
    MEMORY[0x20F301F10](v6, -1, -1);
  }

  else
  {
  }

  v14 = (v0[4] + *v0[4]);
  v10 = *(v0[4] + 4);
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_20C62A4DC;
  v12 = v0[5];

  return v14();
}

uint64_t sub_20C62A86C()
{
  v1 = v0[14];
  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v2 = sub_20C64D160();
  __swift_project_value_buffer(v2, qword_27C7DD450);
  v3 = v1;
  v4 = sub_20C64D140();
  v5 = sub_20C64E1B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20C5D2000, v4, v5, "[AudioLanguageEngagementSheetFeature] Failed to save result: %{public}@", v6, 0xCu);
    sub_20C5DBFC4(v7, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v7, -1, -1);
    MEMORY[0x20F301F10](v6, -1, -1);
  }

  else
  {
  }

  v14 = (v0[4] + *v0[4]);
  v10 = *(v0[4] + 4);
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_20C62A4DC;
  v12 = v0[5];

  return v14();
}

uint64_t sub_20C62AAA0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_20C62AB04(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for AudioLanguageEngagementSheetAction();
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  sub_20C64E160();
  v1[5] = sub_20C64E150();
  v5 = sub_20C64E130();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_20C62ABCC, v5, v4);
}

uint64_t sub_20C62ABCC()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = *(MEMORY[0x277D043C8] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF860, &qword_20C6568A8);
  *v4 = v0;
  v4[1] = sub_20C62AC8C;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x282159B08](v6, v5);
}

uint64_t sub_20C62AC8C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 32);
  v7 = *v0;

  sub_20C62B458(v3, type metadata accessor for AudioLanguageEngagementSheetAction);
  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_20C62ADE4, v5, v4);
}

uint64_t sub_20C62ADE4()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_20C62AE58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C62B4BC;

  return sub_20C629D30(a1, (v1 + 16));
}

uint64_t sub_20C62AF28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C62AF90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C62B4BC;

  return sub_20C629444(a1, v1 + 16);
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_20C62B078(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C5EE6B4;

  return sub_20C629118(a1, (v1 + 16));
}

uint64_t sub_20C62B110(uint64_t a1)
{
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20C62B4BC;

  return sub_20C62876C(a1, (v1 + 16), v4, v5);
}

unint64_t sub_20C62B250()
{
  result = qword_2811057E8;
  if (!qword_2811057E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811057E8);
  }

  return result;
}

uint64_t sub_20C62B2EC(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C62B348(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_20C62B390(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_20C62B404()
{
  result = qword_27C7CF858;
  if (!qword_27C7CF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF858);
  }

  return result;
}

uint64_t sub_20C62B458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s16FitnessMarketing18BubbleTipLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = *(a2 + 8);
  if (!v2)
  {
    if (!v4)
    {
      sub_20C5E8FFC(*a1, 0);
      sub_20C5E8FFC(v5, 0);
      return 1;
    }

    goto LABEL_8;
  }

  if (v2 == 1)
  {
    if (v4 == 1)
    {
      sub_20C5E8FFC(*a1, 1uLL);
      sub_20C5E8FFC(v5, 1uLL);
      return v4;
    }

    goto LABEL_8;
  }

  if (v4 < 2)
  {
LABEL_8:
    sub_20C5E8F84(*a2, *(a2 + 8));
    sub_20C5E8F84(v3, v2);
LABEL_9:
    v6 = v3;
LABEL_10:
    sub_20C5E8FFC(v6, v2);
    v7 = v5;
LABEL_11:
    sub_20C5E8FFC(v7, v4);
    return 0;
  }

  if (v3)
  {
    if (!v5)
    {
      sub_20C5E8F84(0, *(a2 + 8));
      sub_20C5E8F84(v3, v2);
      sub_20C5E8FFC(v3, v2);
      v7 = 0;
      goto LABEL_11;
    }

    sub_20C5E8F84(*a2, *(a2 + 8));
    sub_20C5E8F84(v3, v2);

    v9 = sub_20C64CF50();

    if ((v9 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      sub_20C5E8F84(*a2, *(a2 + 8));
      sub_20C5E8F84(0, v2);
      v6 = 0;
      goto LABEL_10;
    }

    sub_20C5E8F84(0, *(a2 + 8));
    sub_20C5E8F84(0, v2);
  }

  v10 = sub_20C64CF50();
  sub_20C5E8FFC(v3, v2);
  sub_20C5E8FFC(v5, v4);
  return v10 & 1;
}

uint64_t sub_20C62B68C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C62B6E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_20C62B73C(void *result, int a2)
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

uint64_t sub_20C62B780(uint64_t a1)
{
  v2 = sub_20C62BE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C62B7BC(uint64_t a1)
{
  v2 = sub_20C62BE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C62B7F8(uint64_t a1)
{
  v2 = sub_20C62BDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C62B834(uint64_t a1)
{
  v2 = sub_20C62BDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C62B870()
{
  v1 = 0x75536E6F74747562;
  if (*v0 != 1)
  {
    v1 = 7368564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6F74746F62;
  }
}

uint64_t sub_20C62B8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C62C874(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C62B8F4(uint64_t a1)
{
  v2 = sub_20C62BD50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C62B930(uint64_t a1)
{
  v2 = sub_20C62BD50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C62B96C(uint64_t a1)
{
  v2 = sub_20C62BDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C62B9A8(uint64_t a1)
{
  v2 = sub_20C62BDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingOfferTemplateFootnotePosition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF868, &qword_20C656940);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF870, &qword_20C656948);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF878, &qword_20C656950);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF880, &qword_20C656958);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C62BD50();
  sub_20C64E500();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_20C62BDF8();
      v12 = v26;
      sub_20C64E3B0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_20C62BDA4();
      v12 = v29;
      sub_20C64E3B0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_20C62BE4C();
    sub_20C64E3B0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_20C62BD50()
{
  result = qword_27C7CF888;
  if (!qword_27C7CF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF888);
  }

  return result;
}

unint64_t sub_20C62BDA4()
{
  result = qword_27C7CF890;
  if (!qword_27C7CF890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF890);
  }

  return result;
}

unint64_t sub_20C62BDF8()
{
  result = qword_27C7CF898;
  if (!qword_27C7CF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF898);
  }

  return result;
}

unint64_t sub_20C62BE4C()
{
  result = qword_27C7CF8A0;
  if (!qword_27C7CF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8A0);
  }

  return result;
}

uint64_t MarketingOfferTemplateFootnotePosition.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF8A8, &qword_20C656960);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF8B0, &qword_20C656968);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF8B8, &qword_20C656970);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF8C0, &unk_20C656978);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_20C62BD50();
  v20 = v43;
  sub_20C64E4F0();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_20C64E3A0();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_20C5DDAF4();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_20C64E290();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v30 = &type metadata for MarketingOfferTemplateFootnotePosition;
      sub_20C64E330();
      sub_20C64E280();
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
          sub_20C62BDF8();
          sub_20C64E320();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_20C62BDA4();
          v33 = v22;
          sub_20C64E320();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_20C62BE4C();
        sub_20C64E320();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t MarketingOfferTemplateFootnotePosition.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C62C4B8()
{
  result = qword_27C7CF8C8;
  if (!qword_27C7CF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8C8);
  }

  return result;
}

unint64_t sub_20C62C560()
{
  result = qword_27C7CF8D0;
  if (!qword_27C7CF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8D0);
  }

  return result;
}

unint64_t sub_20C62C5B8()
{
  result = qword_27C7CF8D8;
  if (!qword_27C7CF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8D8);
  }

  return result;
}

unint64_t sub_20C62C610()
{
  result = qword_27C7CF8E0;
  if (!qword_27C7CF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8E0);
  }

  return result;
}

unint64_t sub_20C62C668()
{
  result = qword_27C7CF8E8;
  if (!qword_27C7CF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8E8);
  }

  return result;
}

unint64_t sub_20C62C6C0()
{
  result = qword_27C7CF8F0;
  if (!qword_27C7CF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8F0);
  }

  return result;
}

unint64_t sub_20C62C718()
{
  result = qword_27C7CF8F8;
  if (!qword_27C7CF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF8F8);
  }

  return result;
}

unint64_t sub_20C62C770()
{
  result = qword_27C7CF900;
  if (!qword_27C7CF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF900);
  }

  return result;
}

unint64_t sub_20C62C7C8()
{
  result = qword_27C7CF908;
  if (!qword_27C7CF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF908);
  }

  return result;
}

unint64_t sub_20C62C820()
{
  result = qword_27C7CF910;
  if (!qword_27C7CF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF910);
  }

  return result;
}

uint64_t sub_20C62C874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75536E6F74747562 && a2 == 0xEE00656C74697462 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t BubbleTipPopover.init(store:preferredArrowEdges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE718, &qword_20C651A00);
  sub_20C64DD00();
  *(a4 + 24) = v9;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_20C5E0270;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 17) = a3;
  return result;
}

uint64_t BubbleTipPopover.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v10 = *(v2 + 32);
  *a2 = sub_20C64DE00();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF918, &qword_20C656DC8);
  return sub_20C62CAA4(v9, a1, a2 + *(v7 + 44));
}

uint64_t sub_20C62CAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v144 = a2;
  v147 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF938, &unk_20C656EC0);
  v148 = *(v4 - 8);
  v149 = v4;
  v5 = *(v148 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v146 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v145 = &v105 - v8;
  v9 = sub_20C64DFD0();
  v136 = *(v9 - 8);
  v137 = v9;
  v10 = *(v136 + 64);
  MEMORY[0x28223BE20](v9);
  v135 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_20C64DF90();
  v126 = *(v132 - 8);
  v12 = *(v126 + 64);
  v13 = MEMORY[0x28223BE20](v132);
  v117 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v139 = &v105 - v15;
  v119 = sub_20C64DF70();
  v116 = *(v119 - 8);
  v16 = *(v116 + 64);
  v17 = MEMORY[0x28223BE20](v119);
  v115 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v138 = &v105 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE728, &qword_20C651A18);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v129 = &v105 - v22;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF940, &qword_20C656ED0);
  v123 = *(v131 - 8);
  v23 = *(v123 + 64);
  MEMORY[0x28223BE20](v131);
  v140 = &v105 - v24;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF948, &qword_20C656ED8);
  v125 = *(v130 - 8);
  v25 = *(v125 + 64);
  MEMORY[0x28223BE20](v130);
  v121 = &v105 - v26;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF950, &qword_20C656EE0);
  v127 = *(v133 - 8);
  v27 = *(v127 + 64);
  MEMORY[0x28223BE20](v133);
  v122 = &v105 - v28;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF958, &qword_20C656EE8);
  v29 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v128 = &v105 - v30;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF960, &qword_20C656EF0);
  v31 = *(*(v142 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v142);
  v124 = &v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v134 = &v105 - v34;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF968, &qword_20C656EF8);
  v35 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v37 = (&v105 - v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF970, &unk_20C656F00);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v143 = &v105 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v105 - v42;
  v44 = *a1;
  v45 = *(a1 + 8);
  v46 = a1;
  v47 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
  sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48);
  v113 = v45;
  v114 = v44;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF20();

  v48 = v155;
  v150 = v43;
  if (v155 >= 2)
  {
    v112 = v37;
    v118 = v46;
    v110 = v154;
    if (v154)
    {
      v52 = *(v154 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel);
    }

    else
    {
      v52 = 0;
    }

    v111 = v48;
    v53 = *(v48 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_request);
    sub_20C64D220();
    swift_getKeyPath();
    sub_20C64DF20();

    v106 = v151;
    v107 = v152;
    v153 = sub_20C64DC00();
    sub_20C64D220();
    *(swift_allocObject() + 16) = v52;

    sub_20C64DD70();
    v54 = *(v118 + 17);
    sub_20C64D9C0();

    v55 = [v53 title];
    v109 = v52;
    if (v55)
    {
      v56 = v55;
      v57 = sub_20C64E050();
      v59 = v58;
    }

    else
    {
      v57 = 0;
      v59 = 0xE000000000000000;
    }

    v108 = v53;
    v60 = sub_20C5EC004(v106, v107);

    v61 = v138;
    sub_20C64DF60();
    v62 = v139;
    sub_20C64DF80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C0, &unk_20C651AA0);
    inited = swift_initStackObject();
    *(inited + 32) = 1701667182;
    *(inited + 16) = xmmword_20C6519F0;
    v64 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v57;
    *(inited + 56) = v59;
    *(inited + 72) = v64;
    strcpy((inited + 80), "impressionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x6954656C62627562;
    *(inited + 104) = 0xE900000000000070;
    *(inited + 120) = v64;
    *(inited + 128) = 0x6973736572706D69;
    v65 = MEMORY[0x277D83B88];
    *(inited + 136) = 0xEF7865646E496E6FLL;
    *(inited + 144) = -1;
    *(inited + 168) = v65;
    *(inited + 176) = 0x657079546469;
    *(inited + 216) = v64;
    *(inited + 184) = 0xE600000000000000;
    *(inited + 192) = 0x64695F737469;
    *(inited + 200) = 0xE600000000000000;
    v66 = sub_20C5F26C8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C8, &qword_20C650FB0);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v151 = v66;
    sub_20C5EC3E4(v60, sub_20C5F20C0, 0, isUniquelyReferenced_nonNull_native, &v151);

    v114 = v151;
    v68 = v126;
    v69 = v132;
    (*(v126 + 16))(v117, v62, v132);
    v70 = v116;
    v71 = v61;
    v72 = v119;
    (*(v116 + 16))(v115, v71, v119);
    v73 = MEMORY[0x277D84F90];
    sub_20C5F26C8(MEMORY[0x277D84F90]);
    sub_20C5F26C8(v73);
    v74 = v129;
    sub_20C64DFA0();
    (*(v68 + 8))(v139, v69);
    (*(v70 + 8))(v138, v72);
    v75 = sub_20C64DFB0();
    (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
    v76 = v135;
    sub_20C64DFC0();
    v151 = MEMORY[0x277CE0F78];
    v152 = MEMORY[0x277CE0F70];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v78 = v121;
    v79 = v131;
    v80 = v140;
    sub_20C64D9B0();
    (*(v136 + 8))(v76, v137);
    sub_20C5DBFC4(v74, &qword_27C7CE728, &qword_20C651A18);
    (*(v123 + 8))(v80, v79);
    v151 = v79;
    v152 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v81 = v122;
    v82 = v130;
    sub_20C64D9D0();
    (*(v125 + 8))(v78, v82);
    v83 = swift_allocObject();
    *(v83 + 16) = v109;
    v46 = v118;
    v84 = *(v118 + 16);
    *(v83 + 24) = *v118;
    *(v83 + 40) = v84;
    *(v83 + 56) = *(v46 + 32);
    v85 = v128;
    (*(v127 + 32))(v128, v81, v133);
    v86 = (v85 + *(v120 + 36));
    *v86 = sub_20C62E32C;
    v86[1] = v83;
    v86[2] = 0;
    v86[3] = 0;
    v87 = swift_allocObject();
    v88 = *(v46 + 16);
    *(v87 + 16) = *v46;
    *(v87 + 32) = v88;
    *(v87 + 48) = *(v46 + 32);
    v89 = v124;
    sub_20C5E5658(v85, v124, &qword_27C7CF958, &qword_20C656EE8);
    v90 = (v89 + *(v142 + 36));
    *v90 = 0;
    v90[1] = 0;
    v90[2] = sub_20C62E338;
    v90[3] = v87;
    v91 = v134;
    sub_20C5E5658(v89, v134, &qword_27C7CF960, &qword_20C656EF0);
    sub_20C5E574C(v91, v112, &qword_27C7CF960, &qword_20C656EF0);
    swift_storeEnumTagMultiPayload();
    sub_20C62E358(v46, &v151);
    sub_20C62E358(v46, &v151);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE768, &qword_20C656F50);
    sub_20C5F1F70();
    sub_20C62E390();
    v43 = v150;
    sub_20C64D550();

    sub_20C5DBFC4(v91, &qword_27C7CF960, &qword_20C656EF0);
  }

  else
  {
    v49 = sub_20C64DC00();
    v50 = swift_allocObject();
    v51 = *(v46 + 16);
    *(v50 + 16) = *v46;
    *(v50 + 32) = v51;
    *(v50 + 48) = *(v46 + 32);
    *v37 = v49;
    v37[1] = sub_20C62E578;
    v37[2] = v50;
    v37[3] = 0;
    v37[4] = 0;
    swift_storeEnumTagMultiPayload();
    sub_20C62E358(v46, &v151);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE768, &qword_20C656F50);
    sub_20C5F1F70();
    sub_20C62E390();
    sub_20C64D550();
  }

  v92 = swift_allocObject();
  v93 = *(v46 + 16);
  *(v92 + 16) = *v46;
  *(v92 + 32) = v93;
  *(v92 + 48) = *(v46 + 32);
  sub_20C62E358(v46, &v151);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF988, &qword_20C656F58);
  sub_20C5E5558(&qword_27C7CF990, &qword_27C7CF988, &qword_20C656F58);
  v94 = v145;
  sub_20C64DA90();

  v95 = v43;
  v96 = v143;
  sub_20C5E574C(v95, v143, &qword_27C7CF970, &unk_20C656F00);
  v98 = v148;
  v97 = v149;
  v99 = *(v148 + 16);
  v100 = v146;
  v99(v146, v94, v149);
  v101 = v147;
  sub_20C5E574C(v96, v147, &qword_27C7CF970, &unk_20C656F00);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF998, &unk_20C656F60);
  v99((v101 + *(v102 + 48)), v100, v97);
  v103 = *(v98 + 8);
  v103(v94, v97);
  sub_20C5DBFC4(v150, &qword_27C7CF970, &unk_20C656F00);
  v103(v100, v97);
  return sub_20C5DBFC4(v96, &qword_27C7CF970, &unk_20C656F00);
}

uint64_t sub_20C62DB48@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for BubbleTipAction();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_20C62DB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE780, &qword_20C651BD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v15[-v8 - 8];
  if (a1)
  {

    sub_20C64D120();
    v10 = swift_allocObject();
    v11 = *(a2 + 16);
    *(v10 + 16) = *a2;
    *(v10 + 32) = v11;
    *(v10 + 48) = *(a2 + 32);
    sub_20C62E358(a2, v17);
    sub_20C5E5558(&qword_27C7CE790, &qword_27C7CE780, &qword_20C651BD8);
    v12 = sub_20C64D170();

    (*(v5 + 8))(v9, v4);
    v13 = *(a2 + 24);
    v18 = *(a2 + 32);
    v19 = v13;
    v17[0] = v13;
    v17[1] = v18;
    v16 = v12;
    sub_20C5E574C(&v19, v15, &qword_27C7CE718, &qword_20C651A00);
    sub_20C5E574C(&v18, v15, &qword_27C7CF9A0, &unk_20C656F70);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE798, &qword_20C651BE8);
    sub_20C64DD20();

    sub_20C5DBFC4(&v19, &qword_27C7CE718, &qword_20C651A00);
    return sub_20C5DBFC4(&v18, &qword_27C7CF9A0, &unk_20C656F70);
  }

  return result;
}

void sub_20C62DDD4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for BubbleTipAction();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  if (v8 != 255)
  {
    v9 = *a1;
    v10 = *a2;
    v11 = a2[1];
    v12 = *(a2 + 16);
    sub_20C5F2AAC(v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
    sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48);
    sub_20C64D220();
    if ((v8 & 1) == 0)
    {
      sub_20C5F2ADC();
      v13 = v9;
      sub_20C64D0D0();
    }

    swift_storeEnumTagMultiPayload();
    sub_20C64DF40();

    sub_20C5F29F4(v7);
    sub_20C5F2AB8(v9, v8);
  }
}

uint64_t sub_20C62DFBC(uint64_t *a1)
{
  v2 = type metadata accessor for BubbleTipAction();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
  sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48);
  sub_20C64D220();
  swift_storeEnumTagMultiPayload();
  sub_20C64DF40();

  return sub_20C5F29F4(v5);
}

uint64_t sub_20C62E108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v10 = *(v2 + 32);
  *a2 = sub_20C64DE00();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF918, &qword_20C656DC8);
  return sub_20C62CAA4(v9, a1, a2 + *(v7 + 44));
}

uint64_t View.bubbleTipPopover(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 24);
  return MEMORY[0x20F300EE0](&v6, a2, &type metadata for BubbleTipPopover, a3);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_20C62E1FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_20C62E258(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_20C62E2C4()
{
  result = qword_27C7CF930;
  if (!qword_27C7CF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF930);
  }

  return result;
}

unint64_t sub_20C62E390()
{
  result = qword_27C7CF978;
  if (!qword_27C7CF978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF960, &qword_20C656EF0);
    sub_20C62E41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF978);
  }

  return result;
}

unint64_t sub_20C62E41C()
{
  result = qword_27C7CF980;
  if (!qword_27C7CF980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF958, &qword_20C656EE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF948, &qword_20C656ED8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF940, &qword_20C656ED0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CF980);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_20C5E3044();
  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t BubbleTipEnvironment.init(navigateToURL:makeEngagementDialogRequestStream:resetEngagementPlacement:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
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

uint64_t sub_20C62E610(uint64_t *a1, int a2)
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

uint64_t sub_20C62E658(uint64_t result, int a2, int a3)
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

uint64_t AudioLanguageEngagementSheetEnvironment.dismiss.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AudioLanguageEngagementSheetEnvironment.fetchAudioLanguageEngagementSheet.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AudioLanguageEngagementSheetEnvironment.updateAudioLanguageEngagementSheetAcknowledgment.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AudioLanguageEngagementSheetEnvironment.updateAudioLanguagePreference.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AudioLanguageEngagementSheetEnvironment.init(dismiss:fetchAudioLanguageEngagementSheet:updateAudioLanguageEngagementSheetAcknowledgment:updateAudioLanguagePreference:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_20C62E798(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64D540();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_20C64D550();
}

uint64_t sub_20C62E890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20C64D540();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_20C64D550();
}

uint64_t sub_20C62E988(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9D8, qword_20C657198);
  sub_20C5E5558(&qword_2811057C8, &qword_27C7CF9D8, qword_20C657198);

  return sub_20C64D220();
}

uint64_t sub_20C62EA54(uint64_t a1)
{
  v2 = sub_20C64D2D0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20C64D3B0();
}

uint64_t sub_20C62EB20(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = v2[16];
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  type metadata accessor for MarketingInlineView.FocusedButton();
  sub_20C64E1F0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_20C64D1D0();
  sub_20C64D1B0();
  return v4;
}

uint64_t sub_20C62EBF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_20C64D460();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B0, &qword_20C6570B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v20 - v11);
  sub_20C634054(v2, &v20 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_20C64D2D0();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    v16 = sub_20C64E1A0();
    v17 = sub_20C64D750();
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_20C6340C4(0x694474756F79614CLL, 0xEF6E6F6974636572, &v21);
      _os_log_impl(&dword_20C5D2000, v17, v16, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x20F301F10](v19, -1, -1);
      MEMORY[0x20F301F10](v18, -1, -1);
    }

    sub_20C64D450();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_20C62EEA4(char a1)
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](a1 & 1);
  return sub_20C64E4E0();
}

uint64_t sub_20C62EEEC(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_20C64D010();
  sub_20C64D000();
  return v4;
}

uint64_t sub_20C62EF48()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
  swift_getFunctionTypeMetadata2();
  return sub_20C64CFF0();
}

uint64_t sub_20C62EFD4(uint64_t a1)
{
  v1 = *(a1 + 68);
  v2 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
  swift_getFunctionTypeMetadata2();
  sub_20C64D010();
  sub_20C64D000();
  return v4;
}

uint64_t sub_20C62F084()
{
  sub_20C64E4A0();
  sub_20C62EE7C(v2, *v0);
  return sub_20C64E4E0();
}

uint64_t MarketingInlineView.init(store:makeImpressionMetrics:actionViewBuilder:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, char a6, uint64_t a7, char a8)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B0, &qword_20C6570B0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for MarketingInlineView();
  v12 = a5 + v11[14];
  type metadata accessor for MarketingInlineView.FocusedButton();
  swift_getWitnessTable();
  sub_20C64D1C0();
  *v12 = a6;
  *(v12 + 1) = a7;
  v12[16] = a8;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = a5 + v11[13];
  *v14 = sub_20C5E0270;
  *(v14 + 1) = v13;
  v14[16] = 0;
  v15 = (a5 + v11[15]);
  *v15 = a3;
  v15[1] = a4;
  v16 = v11[16];

  swift_getFunctionTypeMetadata1();
  sub_20C64CFF0();
  v17 = a5 + v11[17];
  sub_20C62EF48();
}

uint64_t sub_20C62F2CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9F0, &qword_20C657280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9F8, &qword_20C657288);
  sub_20C5E5558(&qword_281105800, &qword_27C7CF9F0, &qword_20C657280);
  sub_20C5E5558(&qword_281105838, &qword_27C7CF9F8, &qword_20C657288);
  return sub_20C64D590();
}

uint64_t sub_20C62F43C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C64CFE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20C64E030();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v6 = qword_281109B60;
  v7 = type metadata accessor for MarketingInlineView();
  sub_20C62E988(v7);
  swift_getKeyPath();
  sub_20C64DF30();

  result = sub_20C64D8D0();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_20C62F5F0@<X0>(char a1@<W3>, uint64_t a2@<X8>)
{
  v4 = sub_20C64CFE0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_20C64E030();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v8 = qword_281109B60;
  v25 = a1;
  v9 = type metadata accessor for MarketingInlineView();
  sub_20C62E988(v9);
  swift_getKeyPath();
  sub_20C64DF30();

  v10 = sub_20C64D8D0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_20C62E988(v9);
  swift_getKeyPath();
  sub_20C64DF30();

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (v25 == 1)
  {
    sub_20C602C18();

    v17 = sub_20C64D970();
    v18 = v21;
    v20 = v22;
    v19 = v23 & 1;
    sub_20C5E573C(v17, v21, v23 & 1);
  }

  sub_20C5E573C(v10, v12, v14 & 1);

  sub_20C633FA4(v17, v18, v19, v20);
  sub_20C633FE8(v17, v18, v19, v20);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  *(a2 + 56) = v20;
  sub_20C633FE8(v17, v18, v19, v20);
  sub_20C5E56C0(v10, v12, v14 & 1);
}

uint64_t sub_20C62F8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[1] = a6;
  v19[10] = a2;
  v19[11] = a3;
  v19[12] = a4;
  v19[13] = a5;
  v11 = type metadata accessor for MarketingInlineView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - v14;
  (*(v12 + 16))(v19 - v14, a1, v11);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  v19[8] = a1;
  return sub_20C64DD40();
}

uint64_t sub_20C62FA74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C64CFE0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_20C64E030();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v6 = qword_281109B60;
  v7 = type metadata accessor for MarketingInlineView();
  sub_20C62E988(v7);
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C64E080();
  sub_20C602C18();
  result = sub_20C64D970();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t MarketingInlineView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v112 = *(a1 - 1);
  v113 = *(v112 + 64);
  MEMORY[0x28223BE20](a1);
  v111 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C64D6F0();
  v109 = *(v4 - 8);
  v110 = v4;
  v5 = *(v109 + 64);
  MEMORY[0x28223BE20](v4);
  v108 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9A8, &qword_20C6570B8);
  sub_20C64D700();
  v7 = a1[3];
  v103 = sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF168, &unk_20C6570C0);
  v115 = sub_20C64D2E0();
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  v8 = a1[2];
  v9 = a1[4];
  v107 = a1;
  *&v173 = v8;
  *(&v173 + 1) = v9;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v10 = sub_20C64D2E0();
  *&v11 = v8;
  *(&v11 + 1) = v7;
  v102 = a1[5];
  *&v12 = v9;
  *(&v12 + 1) = v102;
  v117 = v12;
  v118 = v11;
  v174 = v12;
  v173 = v11;
  type metadata accessor for MarketingInlineView.FocusedButton();
  v13 = sub_20C64E1F0();
  *&v173 = v8;
  *(&v173 + 1) = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v172 = MEMORY[0x277CDF918];
  v14 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v95 = MEMORY[0x277CE0868];
  v104 = sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0);
  v169 = WitnessTable;
  v170 = v104;
  v16 = swift_getWitnessTable();
  v168 = swift_getWitnessTable();
  v105 = v13;
  v116 = swift_getWitnessTable();
  *&v173 = v10;
  *(&v173 + 1) = v13;
  *&v174 = v16;
  *(&v174 + 1) = v116;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  sub_20C64D2E0();
  v92 = MEMORY[0x277CE1198];
  v166 = swift_getWitnessTable();
  v167 = v14;
  swift_getWitnessTable();
  v97 = sub_20C64D340();
  v96 = sub_20C64D2E0();
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  v98 = sub_20C64D2E0();
  v99 = sub_20C64D2E0();
  v100 = sub_20C64D2E0();
  v101 = sub_20C64D2E0();
  v93 = sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  sub_20C64D2E0();
  v17 = swift_getWitnessTable();
  v18 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0);
  v164 = v17;
  v165 = v18;
  v162 = swift_getWitnessTable();
  v19 = MEMORY[0x277CDF918];
  v163 = MEMORY[0x277CDF918];
  v160 = swift_getWitnessTable();
  v161 = v19;
  v158 = swift_getWitnessTable();
  v159 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8);
  v156 = v20;
  v157 = v21;
  swift_getWitnessTable();
  sub_20C64D340();
  sub_20C64D2E0();
  v90 = sub_20C64D2E0();
  v91 = sub_20C64D2E0();
  v92 = sub_20C64D2E0();
  v94 = sub_20C64D560();
  v95 = sub_20C64DCA0();
  v22 = sub_20C630C78();
  v154 = v102;
  v155 = v22;
  v23 = swift_getWitnessTable();
  v24 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0);
  v152 = v23;
  v153 = v24;
  v25 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v150 = v25;
  v151 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520);
  v148 = v27;
  v149 = v28;
  v146 = swift_getWitnessTable();
  v147 = MEMORY[0x277CE01B0];
  v144 = swift_getWitnessTable();
  v29 = MEMORY[0x277CDF918];
  v145 = MEMORY[0x277CDF918];
  v142 = swift_getWitnessTable();
  v143 = MEMORY[0x277CDFC60];
  v140 = swift_getWitnessTable();
  v141 = v104;
  v30 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v138 = v23;
  v139 = v31;
  v136 = swift_getWitnessTable();
  v137 = v28;
  v134 = swift_getWitnessTable();
  v135 = MEMORY[0x277CE01B0];
  v132 = swift_getWitnessTable();
  v133 = v29;
  v32 = swift_getWitnessTable();
  v130 = v30;
  v131 = v32;
  v129 = swift_getWitnessTable();
  v33 = v95;
  v34 = swift_getWitnessTable();
  *&v173 = v33;
  *(&v173 + 1) = v34;
  v35 = v33;
  swift_getOpaqueTypeMetadata2();
  v100 = sub_20C64D560();
  v36 = sub_20C64DCA0();
  v106 = *(v36 - 8);
  v37 = *(v106 + 64);
  MEMORY[0x28223BE20](v36);
  v102 = &v87 - v38;
  v39 = sub_20C630CD0();
  *&v173 = v35;
  *(&v173 + 1) = v34;
  v40 = swift_getOpaqueTypeConformance2();
  v127 = v39;
  v128 = v40;
  v96 = swift_getWitnessTable();
  v126 = v96;
  v41 = swift_getWitnessTable();
  *&v173 = v36;
  *(&v173 + 1) = v41;
  v42 = v41;
  v91 = v41;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  v44 = *(v104 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v46 = &v87 - v45;
  *&v173 = v36;
  *(&v173 + 1) = v42;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = OpaqueTypeMetadata2;
  v87 = OpaqueTypeMetadata2;
  v88 = v47;
  v49 = v105;
  *&v173 = OpaqueTypeMetadata2;
  *(&v173 + 1) = v105;
  v50 = v116;
  *&v174 = v47;
  *(&v174 + 1) = v116;
  v101 = swift_getOpaqueTypeMetadata2();
  v115 = *(v101 - 8);
  v51 = *(v115 + 64);
  MEMORY[0x28223BE20](v101);
  v89 = &v87 - v52;
  v53 = sub_20C64D2E0();
  v103 = *(v53 - 8);
  v54 = *(v103 + 64);
  MEMORY[0x28223BE20](v53);
  v95 = &v87 - v55;
  *&v173 = v48;
  *(&v173 + 1) = v49;
  *&v174 = v47;
  *(&v174 + 1) = v50;
  v93 = swift_getOpaqueTypeConformance2();
  v124 = v93;
  v125 = MEMORY[0x277CE0790];
  v94 = swift_getWitnessTable();
  *&v173 = v53;
  *(&v173 + 1) = v94;
  v97 = MEMORY[0x277D09E68];
  v56 = swift_getOpaqueTypeMetadata2();
  v57 = *(v56 - 8);
  v98 = v56;
  v99 = v57;
  v58 = *(v57 + 64);
  v59 = MEMORY[0x28223BE20](v56);
  v90 = &v87 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v92 = &v87 - v61;
  v120 = v118;
  v121 = v117;
  v122 = v119;
  v62 = v102;
  sub_20C64DC90();
  sub_20C64D980();
  (*(v106 + 8))(v62, v36);
  v63 = v107;
  *&v173 = sub_20C62EB20(v107);
  *(&v173 + 1) = v64;
  LOBYTE(v174) = v65;
  v123 = 0;
  v66 = v108;
  sub_20C64D6E0();
  v67 = swift_checkMetadataState();
  v68 = v89;
  v69 = v87;
  MEMORY[0x20F300DD0](&v173, &v123, v66, v87, v67, v88, v116);
  (*(v109 + 8))(v66, v110);

  (*(v104 + 8))(v46, v69);
  v71 = v111;
  v70 = v112;
  (*(v112 + 16))(v111, v119, v63);
  v72 = v70;
  v73 = (*(v70 + 80) + 48) & ~*(v70 + 80);
  v74 = swift_allocObject();
  v75 = v117;
  *(v74 + 16) = v118;
  *(v74 + 32) = v75;
  (*(v72 + 32))(v74 + v73, v71, v63);
  v76 = v95;
  v77 = v101;
  sub_20C64DBA0();

  (*(v115 + 8))(v68, v77);
  v78 = v90;
  v79 = v94;
  sub_20C64D990();
  (*(v103 + 8))(v76, v53);
  *&v173 = v53;
  *(&v173 + 1) = v79;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v92;
  v82 = v78;
  v83 = v78;
  v84 = v98;
  sub_20C606460(v82, v98, v80);
  v85 = *(v99 + 8);
  v85(v83, v84);
  sub_20C606460(v81, v84, v80);
  return (v85)(v81, v84);
}

unint64_t sub_20C630C78()
{
  result = qword_281105888;
  if (!qword_281105888)
  {
    sub_20C64D700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105888);
  }

  return result;
}

unint64_t sub_20C630CD0()
{
  result = qword_281105958;
  if (!qword_281105958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9A8, &qword_20C6570B8);
    sub_20C5E5558(&qword_2811058F0, &qword_27C7CF9C8, &unk_20C657100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105958);
  }

  return result;
}

uint64_t sub_20C630D88@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v138 = a5;
  v136 = a1;
  v132 = a6;
  v10 = sub_20C64DFD0();
  v116 = *(v10 - 8);
  v117 = v10;
  v11 = *(v116 + 64);
  MEMORY[0x28223BE20](v10);
  v115 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE728, &qword_20C651A18);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v114 = &v108 - v15;
  sub_20C64D700();
  v134 = a3;
  v130 = sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF168, &unk_20C6570C0);
  v137 = sub_20C64D2E0();
  v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  v185 = a2;
  v186 = a4;
  v135 = a4;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  v121 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v16 = sub_20C64D2E0();
  v185 = a2;
  v186 = a3;
  v187 = a4;
  v188 = a5;
  type metadata accessor for MarketingInlineView.FocusedButton();
  v17 = sub_20C64E1F0();
  v185 = a2;
  v186 = a4;
  v133 = a2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v184 = MEMORY[0x277CDF918];
  v18 = MEMORY[0x277CDF918];
  WitnessTable = swift_getWitnessTable();
  v123 = MEMORY[0x277CE0868];
  v131 = sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0);
  v181 = WitnessTable;
  v182 = v131;
  v20 = swift_getWitnessTable();
  v180 = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v185 = v16;
  v186 = v17;
  v187 = v20;
  v188 = v21;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  sub_20C64D2E0();
  v120 = MEMORY[0x277CE1198];
  v178 = swift_getWitnessTable();
  v179 = v18;
  swift_getWitnessTable();
  v125 = sub_20C64D340();
  v124 = sub_20C64D2E0();
  v122 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  v126 = sub_20C64D2E0();
  v127 = sub_20C64D2E0();
  v128 = sub_20C64D2E0();
  v129 = sub_20C64D2E0();
  v121 = sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  sub_20C64D2E0();
  v22 = swift_getWitnessTable();
  v23 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0);
  v176 = v22;
  v177 = v23;
  v174 = swift_getWitnessTable();
  v24 = MEMORY[0x277CDF918];
  v175 = MEMORY[0x277CDF918];
  v172 = swift_getWitnessTable();
  v173 = v24;
  v170 = swift_getWitnessTable();
  v171 = v24;
  v25 = swift_getWitnessTable();
  v26 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8);
  v168 = v25;
  v169 = v26;
  swift_getWitnessTable();
  v118 = sub_20C64D340();
  v119 = sub_20C64D2E0();
  v120 = sub_20C64D2E0();
  v122 = sub_20C64D2E0();
  v123 = sub_20C64D2E0();
  v27 = sub_20C64D560();
  v28 = sub_20C64DCA0();
  v113 = *(v28 - 8);
  v29 = *(v113 + 64);
  MEMORY[0x28223BE20](v28);
  v112 = &v108 - v30;
  v31 = sub_20C630C78();
  v166 = v138;
  v167 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0);
  v164 = v32;
  v165 = v33;
  v34 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v162 = v34;
  v163 = v35;
  v36 = swift_getWitnessTable();
  v37 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520);
  v160 = v36;
  v161 = v37;
  v158 = swift_getWitnessTable();
  v159 = MEMORY[0x277CE01B0];
  v156 = swift_getWitnessTable();
  v157 = v24;
  v154 = swift_getWitnessTable();
  v155 = MEMORY[0x277CDFC60];
  v152 = swift_getWitnessTable();
  v153 = v131;
  v38 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v150 = v32;
  v151 = v39;
  v148 = swift_getWitnessTable();
  v149 = v37;
  v146 = swift_getWitnessTable();
  v147 = MEMORY[0x277CE01B0];
  v144 = swift_getWitnessTable();
  v145 = v24;
  v40 = swift_getWitnessTable();
  v142 = v38;
  v143 = v40;
  v121 = v27;
  v111 = swift_getWitnessTable();
  v141 = v111;
  v41 = swift_getWitnessTable();
  v131 = v28;
  v185 = v28;
  v186 = v41;
  v127 = v41;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = *(OpaqueTypeMetadata2 - 8);
  v43 = *(v120 + 64);
  v44 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v119 = &v108 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v118 = &v108 - v46;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9C8, &unk_20C657100);
  v110 = *(v126 - 8);
  v47 = *(v110 + 64);
  MEMORY[0x28223BE20](v126);
  v108 = &v108 - v48;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E0, &unk_20C657240);
  v49 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v124);
  v51 = (&v108 - v50);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9A8, &qword_20C6570B8);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v125 = &v108 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v108 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF9E8, &qword_20C657250);
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  v63 = &v108 - v62;
  v64 = type metadata accessor for MarketingOffer();
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v123 = &v108 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v52;
  v137 = OpaqueTypeMetadata2;
  v67 = sub_20C64D560();
  v129 = *(v67 - 8);
  v130 = v67;
  v68 = *(v129 + 64);
  MEMORY[0x28223BE20](v67);
  v70 = &v108 - v69;
  v185 = v133;
  v186 = v134;
  v187 = v135;
  v188 = v138;
  v122 = type metadata accessor for MarketingInlineView();
  sub_20C62E988(v122);
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C64DEA0();
  (*(v60 + 8))(v63, v59);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v72 = v125;
    v73 = v126;
    v109 = v70;
    v74 = v131;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v99 = *(v58 + 1);
        v100 = *(v58 + 3);
        v101 = *(v58 + 4);

        v102 = v108;
        sub_20C62F2CC(v100, v101, v122);

        v103 = v110;
        (*(v110 + 16))(v51, v102, v73);
        swift_storeEnumTagMultiPayload();
        sub_20C5E5558(&qword_2811058F0, &qword_27C7CF9C8, &unk_20C657100);
        sub_20C64D550();
        sub_20C630CD0();
        v80 = v74;
        v81 = v127;
        v185 = v74;
        v186 = v127;
        swift_getOpaqueTypeConformance2();
        v70 = v109;
        sub_20C62E798(v72, v128);
        sub_20C5DBFC4(v72, &qword_27C7CF9A8, &qword_20C6570B8);
        (*(v103 + 8))(v102, v73);
        goto LABEL_9;
      }

      v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC8, &qword_20C6534D8) + 48);
      v76 = v123;
      sub_20C6054D4(v58, v123);
      v77 = sub_20C64CF30();
      v78 = (*(*(v77 - 8) + 8))(&v58[v75], v77);
    }

    else
    {
      v76 = v123;
      v78 = sub_20C6054D4(v58, v123);
    }

    v84 = v136;
    v85 = v122;
    MEMORY[0x28223BE20](v78);
    v86 = v134;
    *(&v108 - 6) = v133;
    *(&v108 - 5) = v86;
    v87 = v138;
    *(&v108 - 4) = v135;
    *(&v108 - 3) = v87;
    *(&v108 - 2) = v84;
    *(&v108 - 1) = v76;
    v88 = v112;
    sub_20C64DC90();
    v89 = &v84[*(v85 + 15)];
    v90 = *(v89 + 1);
    v91 = v114;
    (*v89)(v76);
    v92 = sub_20C64DFB0();
    (*(*(v92 - 8) + 56))(v91, 0, 1, v92);
    v93 = v115;
    sub_20C64DFC0();
    v94 = v119;
    v80 = v74;
    v81 = v127;
    sub_20C64D9B0();
    (*(v116 + 8))(v93, v117);
    sub_20C5DBFC4(v91, &qword_27C7CE728, &qword_20C651A18);
    (*(v113 + 8))(v88, v74);
    v185 = v74;
    v186 = v81;
    v95 = swift_getOpaqueTypeConformance2();
    v96 = v118;
    v97 = v137;
    sub_20C606460(v94, v137, v95);
    v98 = *(v120 + 8);
    v98(v94, v97);
    sub_20C606460(v96, v97, v95);
    sub_20C630CD0();
    v70 = v109;
    sub_20C62E890(v94, v128, v97);
    v98(v94, v97);
    v98(v96, v97);
    sub_20C633BBC(v123);
LABEL_9:
    v83 = v129;
    v82 = v130;
    goto LABEL_10;
  }

  *v51 = sub_20C64DC00();
  swift_storeEnumTagMultiPayload();
  sub_20C5E5558(&qword_2811058F0, &qword_27C7CF9C8, &unk_20C657100);

  v79 = v125;
  sub_20C64D550();
  sub_20C630CD0();
  v80 = v131;
  v81 = v127;
  v185 = v131;
  v186 = v127;
  swift_getOpaqueTypeConformance2();
  sub_20C62E798(v79, v128);

  sub_20C5DBFC4(v79, &qword_27C7CF9A8, &qword_20C6570B8);
  v83 = v129;
  v82 = v130;
LABEL_10:
  v104 = sub_20C630CD0();
  v185 = v80;
  v186 = v81;
  v105 = swift_getOpaqueTypeConformance2();
  v139 = v104;
  v140 = v105;
  v106 = swift_getWitnessTable();
  sub_20C606460(v70, v82, v106);
  return (*(v83 + 8))(v70, v82);
}

uint64_t sub_20C6320B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v170 = a6;
  v165 = a5;
  v166 = a3;
  v167 = a4;
  v145 = a1;
  v146 = a2;
  v151 = a7;
  sub_20C64D700();
  v169 = sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1F0, &qword_20C6570E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B0, &qword_20C6570E8);
  sub_20C64D2E0();
  swift_getTupleTypeMetadata3();
  sub_20C64DE30();
  v158 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_20C64DD60();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9B8, &qword_20C6570F0);
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9C0, &qword_20C6570F8);
  sub_20C64D2E0();
  v157 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v159 = MEMORY[0x277CE0868];
  v242 = WitnessTable;
  v243 = sub_20C5E5558(&qword_2811058B0, &qword_27C7CF9B8, &qword_20C6570F0);
  v240 = swift_getWitnessTable();
  v241 = MEMORY[0x277CDF918];
  v8 = MEMORY[0x277CDF918];
  v238 = swift_getWitnessTable();
  v239 = v8;
  v236 = swift_getWitnessTable();
  v237 = v8;
  v234 = swift_getWitnessTable();
  v235 = sub_20C5E5558(&qword_281105988, &qword_27C7CF9C0, &qword_20C6570F8);
  swift_getWitnessTable();
  v161 = sub_20C64D340();
  v9 = sub_20C64D2E0();
  v156 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF180, &qword_20C654520);
  v163 = v9;
  v160 = sub_20C64D2E0();
  v162 = sub_20C64D2E0();
  v164 = sub_20C64D2E0();
  v137 = *(v164 - 8);
  v10 = *(v137 + 64);
  v11 = MEMORY[0x28223BE20](v164);
  v134 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v133 = &v127 - v13;
  v138 = sub_20C64D2D0();
  v136 = *(v138 - 8);
  v14 = *(v136 + 64);
  MEMORY[0x28223BE20](v138);
  v135 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B8, &unk_20C657110);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v141 = &v127 - v19;
  v20 = v167;
  v144 = *(v167 - 8);
  v21 = *(v144 + 64);
  MEMORY[0x28223BE20](v18);
  v153 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF168, &unk_20C6570C0);
  v168 = sub_20C64D2E0();
  v155 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF170, &qword_20C654518);
  v24 = v165;
  v23 = v166;
  v223 = v166;
  v224 = v165;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D2E0();
  v150 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF178, &unk_20C6570D0);
  v25 = sub_20C64D2E0();
  v223 = v23;
  v224 = v20;
  v225 = v24;
  v226 = v170;
  type metadata accessor for MarketingInlineView.FocusedButton();
  v26 = sub_20C64E1F0();
  v223 = v23;
  v224 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = MEMORY[0x277CDF918];
  v233 = MEMORY[0x277CDF918];
  v28 = swift_getWitnessTable();
  v29 = sub_20C5E5558(&qword_2811058A8, &qword_27C7CF178, &unk_20C6570D0);
  v230 = v28;
  v231 = v29;
  v159 = v29;
  v30 = swift_getWitnessTable();
  v229 = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v223 = v25;
  v224 = v26;
  v225 = v30;
  v226 = v31;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_20C64DE30();
  swift_getWitnessTable();
  sub_20C64DD60();
  sub_20C64D2E0();
  v227 = swift_getWitnessTable();
  v228 = v27;
  swift_getWitnessTable();
  v152 = sub_20C64D340();
  v154 = sub_20C64D2E0();
  v156 = sub_20C64D2E0();
  v157 = sub_20C64D2E0();
  v32 = sub_20C64D2E0();
  v127 = *(v32 - 8);
  v33 = *(v127 + 64);
  MEMORY[0x28223BE20](v32);
  v142 = &v127 - v34;
  v158 = v35;
  v36 = sub_20C64D2E0();
  v129 = *(v36 - 8);
  v37 = *(v129 + 64);
  MEMORY[0x28223BE20](v36);
  v143 = &v127 - v38;
  v155 = v39;
  v40 = sub_20C64D2E0();
  v132 = *(v40 - 8);
  v41 = *(v132 + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v131 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v128 = &v127 - v45;
  MEMORY[0x28223BE20](v44);
  v130 = &v127 - v46;
  v147 = v47;
  v48 = sub_20C64D560();
  v149 = *(v48 - 8);
  v150 = v48;
  v49 = *(v149 + 64);
  MEMORY[0x28223BE20](v48);
  v148 = &v127 - v50;
  v223 = v166;
  v224 = v167;
  v225 = v165;
  v51 = v170;
  v226 = v170;
  v52 = type metadata accessor for MarketingInlineView();
  v53 = v145;
  sub_20C62E988(v52);
  swift_getKeyPath();
  sub_20C64DF30();

  v139 = v223;
  v54 = sub_20C62EFD4(v52);
  v55 = type metadata accessor for MarketingOffer();
  v56 = v55[5];
  v140 = v52;
  sub_20C62E988(v52);
  swift_getKeyPath();
  v57 = v141;
  sub_20C64DF30();

  v58 = v146;
  v54(v146 + v56, v57);

  sub_20C5DBFC4(v57, &qword_27C7CF1B8, &unk_20C657110);
  v59 = (v58 + v55[8]);
  v60 = *v59;
  v61 = v59[1];
  v62 = (v58 + v55[7]);
  v63 = *v62;
  v64 = v62[1];
  v65 = v167;
  v171[2] = v166;
  v171[3] = v167;
  v171[4] = v165;
  v171[5] = v51;
  v171[6] = v53;
  v66 = (v144 + 8);
  v67 = MEMORY[0x277CE01B0];
  if (v139)
  {
    v68 = v134;
    v69 = v153;
    sub_20C64598C(v153, v60, v61, v63, v64, sub_20C63402C, v171, v140, v134, v166, v165);
    (*v66)(v69, v65);
    v70 = sub_20C630C78();
    v221 = v51;
    v222 = v70;
    v71 = swift_getWitnessTable();
    v72 = swift_getWitnessTable();
    v219 = v71;
    v220 = v72;
    v73 = swift_getWitnessTable();
    v167 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520);
    v217 = v73;
    v218 = v167;
    v215 = swift_getWitnessTable();
    v216 = v67;
    v213 = swift_getWitnessTable();
    v214 = MEMORY[0x277CDF918];
    v74 = v164;
    v75 = swift_getWitnessTable();
    v76 = v133;
    sub_20C606460(v68, v74, v75);
    v77 = *(v137 + 8);
    v77(v68, v74);
    sub_20C606460(v76, v74, v75);
    v78 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0);
    v211 = v71;
    v212 = v78;
    v79 = swift_getWitnessTable();
    v80 = swift_getWitnessTable();
    v209 = v79;
    v210 = v80;
    v207 = swift_getWitnessTable();
    v208 = v167;
    v205 = swift_getWitnessTable();
    v206 = MEMORY[0x277CE01B0];
    v203 = swift_getWitnessTable();
    v204 = MEMORY[0x277CDF918];
    v201 = swift_getWitnessTable();
    v202 = MEMORY[0x277CDFC60];
    v199 = swift_getWitnessTable();
    v200 = v159;
    v81 = v147;
    swift_getWitnessTable();
    v82 = v148;
    sub_20C62E890(v68, v81, v74);
    v77(v68, v74);
    v77(v76, v74);
    v83 = v82;
    v84 = MEMORY[0x277CDF918];
  }

  else
  {
    *&v124 = v166;
    *(&v124 + 1) = v165;
    v85 = v153;
    v86 = v140;
    sub_20C610D3C(v153, v60, v61, v63, v64, sub_20C63466C, v171, v140, v142, v124);
    (*v66)(v85, v65);
    sub_20C62E988(v86);
    swift_getKeyPath();
    sub_20C64DF30();

    if (v172 == 3)
    {
      v87 = sub_20C64DE00();
    }

    else
    {
      v87 = sub_20C64DDE0();
    }

    v153 = v87;
    v88 = MEMORY[0x277CDF918];
    v89 = v170;
    v90 = sub_20C630C78();
    v171[29] = v89;
    v171[30] = v90;
    v91 = swift_getWitnessTable();
    v167 = v91;
    v166 = MEMORY[0x277CDFC88];
    v92 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0);
    v171[27] = v91;
    v171[28] = v92;
    v93 = swift_getWitnessTable();
    v94 = swift_getWitnessTable();
    v171[25] = v93;
    v171[26] = v94;
    v95 = swift_getWitnessTable();
    v165 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520);
    v171[23] = v95;
    v171[24] = v165;
    v171[21] = swift_getWitnessTable();
    v171[22] = MEMORY[0x277CE01B0];
    v171[19] = swift_getWitnessTable();
    v171[20] = v88;
    v125 = v158;
    v126 = swift_getWitnessTable();
    v96 = v142;
    sub_20C64DB50();
    (*(v127 + 8))(v96, v125);
    swift_getKeyPath();
    v98 = v135;
    v97 = v136;
    v99 = v138;
    (*(v136 + 104))(v135, *MEMORY[0x277CDFA88], v138);
    v171[17] = v126;
    v171[18] = MEMORY[0x277CDFC60];
    v100 = v155;
    v101 = swift_getWitnessTable();
    v102 = v128;
    v103 = v143;
    sub_20C64DA50();

    (*(v97 + 8))(v98, v99);
    (*(v129 + 8))(v103, v100);
    v171[15] = v101;
    v171[16] = v159;
    v104 = v147;
    v105 = swift_getWitnessTable();
    v106 = v130;
    sub_20C606460(v102, v104, v105);
    v107 = *(v132 + 8);
    v107(v102, v104);
    v108 = v131;
    sub_20C606460(v106, v104, v105);
    v109 = swift_getWitnessTable();
    v171[13] = v167;
    v171[14] = v109;
    v171[11] = swift_getWitnessTable();
    v171[12] = v165;
    v171[9] = swift_getWitnessTable();
    v171[10] = MEMORY[0x277CE01B0];
    v171[7] = swift_getWitnessTable();
    v84 = MEMORY[0x277CDF918];
    v171[8] = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v83 = v148;
    sub_20C62E798(v108, v104);
    v107(v108, v104);
    v107(v106, v104);
  }

  v110 = sub_20C630C78();
  v197 = v170;
  v198 = v110;
  v111 = swift_getWitnessTable();
  v112 = sub_20C5E5558(&qword_27C7CF198, &qword_27C7CF168, &unk_20C6570C0);
  v195 = v111;
  v196 = v112;
  v113 = swift_getWitnessTable();
  v114 = swift_getWitnessTable();
  v193 = v113;
  v194 = v114;
  v115 = swift_getWitnessTable();
  v116 = sub_20C5E5558(&qword_281105B18, &qword_27C7CF180, &qword_20C654520);
  v191 = v115;
  v192 = v116;
  v189 = swift_getWitnessTable();
  v117 = MEMORY[0x277CE01B0];
  v190 = MEMORY[0x277CE01B0];
  v187 = swift_getWitnessTable();
  v188 = v84;
  v185 = swift_getWitnessTable();
  v186 = MEMORY[0x277CDFC60];
  v183 = swift_getWitnessTable();
  v184 = v159;
  v118 = swift_getWitnessTable();
  v119 = swift_getWitnessTable();
  v181 = v111;
  v182 = v119;
  v179 = swift_getWitnessTable();
  v180 = v116;
  v177 = swift_getWitnessTable();
  v178 = v117;
  v175 = swift_getWitnessTable();
  v176 = v84;
  v120 = swift_getWitnessTable();
  v173 = v118;
  v174 = v120;
  v121 = v150;
  v122 = swift_getWitnessTable();
  sub_20C606460(v83, v121, v122);
  return (*(v149 + 8))(v83, v121);
}

uint64_t sub_20C6335C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-v11 - 8];
  v24 = v13;
  *&v25 = v14;
  *(&v25 + 1) = v15;
  v26 = v16;
  v17 = type metadata accessor for MarketingInlineView();
  v18 = sub_20C62EEEC(v17);
  sub_20C62E988(v17);
  swift_getKeyPath();
  sub_20C64DF30();

  v22[0] = v24;
  v23 = v25;
  v18(v22);

  sub_20C606460(v10, a2, a4);
  v19 = *(v6 + 8);
  v19(v10, a2);
  sub_20C606460(v12, a2, a4);
  return (v19)(v12, a2);
}

uint64_t sub_20C633784()
{
  v0 = type metadata accessor for MarketingInlineView();
  sub_20C62E988(v0);
  sub_20C64DF40();
}

uint64_t sub_20C6337E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_20C633838(uint64_t a1)
{
  sub_20C633A3C();
  if (v2 <= 0x3F)
  {
    sub_20C633A94();
    if (v3 <= 0x3F)
    {
      v9 = *(a1 + 16);
      v8 = *(a1 + 24);
      v10 = *(a1 + 40);
      type metadata accessor for MarketingInlineView.FocusedButton();
      sub_20C64E1F0();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_20C64D1D0();
      if (v4 <= 0x3F)
      {
        sub_20C633B38();
        if (v5 <= 0x3F)
        {
          swift_getFunctionTypeMetadata1();
          sub_20C64D010();
          if (v6 <= 0x3F)
          {
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
            __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
            swift_getFunctionTypeMetadata2();
            sub_20C64D010();
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

void sub_20C633A3C()
{
  if (!qword_281105B30)
  {
    sub_20C64D2D0();
    v0 = sub_20C64D210();
    if (!v1)
    {
      atomic_store(v0, &qword_281105B30);
    }
  }
}

void sub_20C633A94()
{
  if (!qword_281105B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF9D8, qword_20C657198);
    sub_20C5E5558(&qword_2811057C8, &qword_27C7CF9D8, qword_20C657198);
    v0 = sub_20C64D230();
    if (!v1)
    {
      atomic_store(v0, &qword_281105B20);
    }
  }
}

unint64_t sub_20C633B38()
{
  result = qword_281105750;
  if (!qword_281105750)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_281105750);
  }

  return result;
}

uint64_t sub_20C633BBC(uint64_t a1)
{
  v2 = type metadata accessor for MarketingOffer();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C633C30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  return sub_20C62F5F0(v1[2], a1);
}

uint64_t objectdestroy_3Tm()
{
  v19 = *(v0 + 16);
  v18 = *(v0 + 24);
  v20 = *(v0 + 40);
  v1 = type metadata accessor for MarketingInlineView();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v0 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B0, &qword_20C6570B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_20C64D2D0();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = &v4[v1[13]];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = v7[16];
  sub_20C5E3044();
  v11 = *&v4[v1[14] + 8];

  v12 = *&v4[v1[15] + 8];

  v13 = v1[16];
  swift_getFunctionTypeMetadata1();
  v14 = sub_20C64D010();
  (*(*(v14 - 8) + 8))(&v4[v13], v14);
  v15 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE3F8, &unk_20C650590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CF1B8, &unk_20C657110);
  swift_getFunctionTypeMetadata2();
  v16 = sub_20C64D010();
  (*(*(v16 - 8) + 8))(&v4[v15], v16);
  return swift_deallocObject();
}

uint64_t sub_20C633ED4()
{
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v1 = *(*(type metadata accessor for MarketingInlineView() - 8) + 80);
  return sub_20C633784();
}

uint64_t sub_20C633FA4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C5E573C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C633FE8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_20C5E56C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_20C634054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF1B0, &qword_20C6570B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C6340C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_20C634190(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_20C5DFF60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_20C634190(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_20C63429C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_20C64E2A0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_20C63429C(uint64_t a1, unint64_t a2)
{
  v4 = sub_20C6342E8(a1, a2);
  sub_20C634418(&unk_28237C718);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_20C6342E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_20C634504(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_20C64E2A0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_20C64E0B0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_20C634504(v10, 0);
        result = sub_20C64E240();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_20C634418(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_20C634578(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_20C634504(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA00, &qword_20C657330);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_20C634578(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA00, &qword_20C657330);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_20C6346C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for MarketingOffer();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C5E574C(v2, v7, &qword_27C7CECC0, &qword_20C653470);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_20C63742C(v7, v12, type metadata accessor for MarketingOffer);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v7, &qword_27C7CECC0, &qword_20C653470);
LABEL_8:
    v16 = 1;
    return (*(v9 + 56))(a1, v16, 1, v8);
  }

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC8, &qword_20C6534D8) + 48);
  sub_20C63742C(v7, v12, type metadata accessor for MarketingOffer);
  v15 = sub_20C64CF30();
  (*(*(v15 - 8) + 8))(&v7[v14], v15);
LABEL_6:
  sub_20C63742C(v12, a1, type metadata accessor for MarketingOffer);
  v16 = 0;
  return (*(v9 + 56))(a1, v16, 1, v8);
}

void sub_20C634904()
{
  v1 = sub_20C64CF10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MarketingButtonFeature.TaskIdentifier();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C6374F4(v0, v9, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v13 = *(v9 + 1);
    v12 = *(v9 + 2);
    v14 = *v9;
    MEMORY[0x20F301800](EnumCaseMultiPayload != 0);
    MarketingOfferPlacement.rawValue.getter(v14);
    sub_20C64E090();

    sub_20C64E4C0();
    if (v12)
    {
      sub_20C64E090();
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    (*(v2 + 32))(v5, v9, v1);
    MEMORY[0x20F301800](2);
    sub_20C637AC0(&qword_281106850, MEMORY[0x277CC9260]);
    sub_20C64E000();
    (*(v2 + 8))(v5, v1);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v11 = *v9;
    MEMORY[0x20F301800](3);
    sub_20C64E1D0();
  }

  else
  {
    MEMORY[0x20F301800](4);
  }
}

uint64_t sub_20C634B84()
{
  sub_20C64E4A0();
  sub_20C634904();
  return sub_20C64E4E0();
}

uint64_t sub_20C634BC8()
{
  sub_20C64E4A0();
  sub_20C634904();
  return sub_20C64E4E0();
}

__n128 MarketingButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v2;
  v3 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v5;
  return result;
}

uint64_t MarketingButtonFeature.reduce(localState:sharedState:sideEffects:action:)(char *a1, char *a2, void **a3, uint64_t a4)
{
  v220 = a4;
  v211 = a3;
  v216 = a2;
  v218 = a1;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v191 = *(v215 - 1);
  v5 = *(v191 + 64);
  MEMORY[0x28223BE20](v215);
  v192 = &v184 - v6;
  v198 = type metadata accessor for MarketingAction();
  v7 = *(*(v198 - 8) + 64);
  MEMORY[0x28223BE20](v198);
  v197 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_20C64CF10();
  v214 = *(v199 - 8);
  v9 = *(v214 + 64);
  v10 = MEMORY[0x28223BE20](v199);
  v195 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = v11;
  MEMORY[0x28223BE20](v10);
  v193 = &v184 - v12;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  v13 = *(*(v201 - 8) + 64);
  MEMORY[0x28223BE20](v201);
  v202 = &v184 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE640, &qword_20C657390);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v205 = &v184 - v17;
  v204 = type metadata accessor for MarketingOffer();
  v217 = *(v204 - 8);
  v18 = *(v217 + 64);
  v19 = MEMORY[0x28223BE20](v204);
  v190 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v194 = &v184 - v21;
  MEMORY[0x28223BE20](v20);
  v213 = &v184 - v22;
  v219 = type metadata accessor for MarketingActionItem();
  v221 = *(v219 - 8);
  v23 = *(v221 + 64);
  v24 = MEMORY[0x28223BE20](v219);
  v189 = &v184 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v200 = &v184 - v26;
  MEMORY[0x28223BE20](v25);
  v212 = &v184 - v27;
  v208 = type metadata accessor for MarketingButtonFeature.TaskIdentifier();
  v28 = *(*(v208 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v208);
  v203 = &v184 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v184 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v184 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v207 = &v184 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v184 - v39;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA58, &qword_20C652AC0);
  v209 = *(v210 - 8);
  v41 = *(v209 + 64);
  v42 = MEMORY[0x28223BE20](v210);
  v206 = &v184 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v184 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v184 - v48;
  MEMORY[0x28223BE20](v47);
  v51 = &v184 - v50;
  v52 = type metadata accessor for MarketingButtonAction();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v55 = &v184 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4[3];
  v225 = v4[2];
  v226 = v56;
  v57 = v4[5];
  v227 = v4[4];
  v228 = v57;
  v58 = *v4;
  v59 = v4[1];
  v60 = v221;
  v223 = v58;
  v224 = v59;
  sub_20C6374F4(v220, v55, type metadata accessor for MarketingButtonAction);
  result = (*(v60 + 48))(v55, 6, v219);
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v218[1] = 1;
      }

      else
      {
        *v218 = 0;
      }

      return result;
    }

    if (result == 5)
    {
      v218[1] = 0;
      return result;
    }

    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
    v96 = v95[12];
    v97 = v95[16];
    v98 = v95[20];
    v99 = v206;
    v100 = &v206[v95[24]];
    v101 = v203;
    swift_storeEnumTagMultiPayload();
    sub_20C6374F4(v101, v207, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    sub_20C637AC0(&qword_281106348, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    sub_20C64E230();
    sub_20C637494(v101, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    v102 = *MEMORY[0x277D043F0];
    v103 = sub_20C64DF10();
    (*(*(v103 - 8) + 104))(&v99[v97], v102, v103);
    v104 = *MEMORY[0x277D043E0];
    v105 = sub_20C64DF00();
    (*(*(v105 - 8) + 104))(&v99[v98], v104, v105);
    v106 = swift_allocObject();
    v107 = v226;
    v106[3] = v225;
    v106[4] = v107;
    v108 = v228;
    v106[5] = v227;
    v106[6] = v108;
    v109 = v224;
    v106[1] = v223;
    v106[2] = v109;
    *v100 = &unk_20C6573A0;
    *(v100 + 1) = v106;
    sub_20C6373EC(&v223, v222);
    sub_20C64E170();
    v110 = v209;
    v111 = v210;
    (*(v209 + 104))(v99, *MEMORY[0x277D043B0], v210);
    v86 = v211;
    v87 = *v211;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_20C5F875C(0, v87[2] + 1, 1, v87);
    }

    v113 = v87[2];
    v112 = v87[3];
    if (v113 >= v112 >> 1)
    {
      v87 = sub_20C5F875C(v112 > 1, v113 + 1, 1, v87);
    }

    v87[2] = v113 + 1;
    result = (*(v110 + 32))(v87 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v113, v99, v111);
LABEL_23:
    *v86 = v87;
    return result;
  }

  v219 = v40;
  v220 = v51;
  v187 = v36;
  v185 = v33;
  v62 = v216;
  v188 = v49;
  v186 = v46;
  v63 = v214;
  v206 = v23;
  v64 = v217;
  v203 = v18;
  v65 = v215;
  v66 = v213;
  if (result)
  {
    if (result != 1)
    {
      *v218 = 1;
      return result;
    }

    v67 = v62 + *(type metadata accessor for MarketingButtonState() + 24);
    v68 = *v67;
    v70 = *(v67 + 1);
    v69 = *(v67 + 2);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
    v221 = v71[12];
    v72 = v71[16];
    v218 = v71[20];
    v73 = v220;
    v74 = (v220 + v71[24]);
    v75 = v219;
    *v219 = v68;
    *(v75 + 8) = v70;
    *(v75 + 16) = v69;
    swift_storeEnumTagMultiPayload();
    sub_20C6374F4(v75, v207, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    sub_20C637AC0(&qword_281106348, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    swift_bridgeObjectRetain_n();
    sub_20C64E230();
    sub_20C637494(v75, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    v76 = *MEMORY[0x277D043F0];
    v77 = sub_20C64DF10();
    (*(*(v77 - 8) + 104))(v73 + v72, v76, v77);
    v78 = *MEMORY[0x277D043E0];
    v79 = sub_20C64DF00();
    (*(*(v79 - 8) + 104))(&v218[v73], v78, v79);
    v80 = swift_allocObject();
    v81 = v226;
    *(v80 + 48) = v225;
    *(v80 + 64) = v81;
    v82 = v228;
    *(v80 + 80) = v227;
    *(v80 + 96) = v82;
    v83 = v224;
    *(v80 + 16) = v223;
    *(v80 + 32) = v83;
    *(v80 + 112) = v68;
    *(v80 + 120) = v70;
    *(v80 + 128) = v69;
    *v74 = &unk_20C6573E0;
    v74[1] = v80;
    sub_20C6373EC(&v223, v222);
    sub_20C64E170();
    v84 = v209;
    v85 = v210;
    (*(v209 + 104))(v73, *MEMORY[0x277D043B0], v210);
    v86 = v211;
    v87 = *v211;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_20C5F875C(0, v87[2] + 1, 1, v87);
    }

    v89 = v87[2];
    v88 = v87[3];
    if (v89 >= v88 >> 1)
    {
      v87 = sub_20C5F875C(v88 > 1, v89 + 1, 1, v87);
    }

    v87[2] = v89 + 1;
    result = (*(v84 + 32))(v87 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v89, v73, v85);
    goto LABEL_23;
  }

  v90 = v55;
  v91 = v212;
  sub_20C63742C(v90, v212, type metadata accessor for MarketingActionItem);
  v92 = type metadata accessor for MarketingButtonState();
  v93 = v62 + v92[11];
  v94 = v205;
  sub_20C6346C0(v205);
  if ((*(v64 + 48))(v94, 1, v204) == 1)
  {
    sub_20C637494(v91, type metadata accessor for MarketingActionItem);
    return sub_20C5DBFC4(v94, &qword_27C7CE640, &qword_20C657390);
  }

  v114 = v94;
  v115 = v66;
  sub_20C63742C(v114, v66, type metadata accessor for MarketingOffer);
  v116 = v202;
  if (*(v62 + v92[8]) != 1)
  {
    goto LABEL_38;
  }

  sub_20C5E574C(v62 + v92[10], v202, &qword_27C7CEC80, &unk_20C6533B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    if (*v116)
    {
      goto LABEL_31;
    }

LABEL_38:
    sub_20C637494(v66, type metadata accessor for MarketingOffer);
    return sub_20C637494(v91, type metadata accessor for MarketingActionItem);
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v116, &qword_27C7CEC80, &unk_20C6533B0);
    goto LABEL_38;
  }

  v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED08, &qword_20C6535D0) + 48);
  v119 = *v116;
  v120 = sub_20C64CF30();
  (*(*(v120 - 8) + 8))(&v116[v118], v120);
  if (v119 != 1)
  {
    goto LABEL_38;
  }

LABEL_31:
  v121 = v197;
  sub_20C6374F4(v91, v197, type metadata accessor for MarketingAction);
  if (swift_getEnumCaseMultiPayload())
  {
    v122 = v63;
    v215 = *(v63 + 32);
    v220 = v63 + 32;
    v123 = v193;
    v124 = v121;
    v125 = v199;
    (v215)(v193, v124, v199);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
    v218 = v126[12];
    v127 = v126[16];
    v219 = v126[20];
    v128 = v188;
    v216 = &v188[v126[24]];
    v129 = v187;
    (*(v122 + 16))(v187, v123, v125);
    swift_storeEnumTagMultiPayload();
    sub_20C6374F4(v129, v207, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    sub_20C637AC0(&qword_281106348, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    sub_20C64E230();
    sub_20C637494(v129, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    v130 = *MEMORY[0x277D043F0];
    v131 = sub_20C64DF10();
    (*(*(v131 - 8) + 104))(&v128[v127], v130, v131);
    v132 = v195;
    v133 = v199;
    v134 = v215;
    (v215)(v195, v123, v199);
    v135 = v194;
    sub_20C6374F4(v66, v194, type metadata accessor for MarketingOffer);
    sub_20C6374F4(v91, v200, type metadata accessor for MarketingActionItem);
    v136 = (*(v122 + 80) + 112) & ~*(v122 + 80);
    v137 = (v196 + *(v217 + 80) + v136) & ~*(v217 + 80);
    v138 = &v203[*(v221 + 80) + v137] & ~*(v221 + 80);
    v139 = swift_allocObject();
    v140 = v226;
    *(v139 + 3) = v225;
    *(v139 + 4) = v140;
    v141 = v228;
    *(v139 + 5) = v227;
    *(v139 + 6) = v141;
    v142 = v224;
    *(v139 + 1) = v223;
    *(v139 + 2) = v142;
    v134(&v139[v136], v132, v133);
    sub_20C63742C(v135, &v139[v137], type metadata accessor for MarketingOffer);
    v143 = &v139[v138];
    v144 = v188;
    sub_20C63742C(v200, v143, type metadata accessor for MarketingActionItem);
    v145 = v216;
    *v216 = &unk_20C6573C8;
    *(v145 + 1) = v139;
    sub_20C6373EC(&v223, v222);
    sub_20C64E170();
    v146 = *MEMORY[0x277D043E8];
    v147 = sub_20C64DF00();
    (*(*(v147 - 8) + 104))(&v144[v219], v146, v147);
    v148 = v209;
    v149 = v210;
    (*(v209 + 104))(v144, *MEMORY[0x277D043B0], v210);
    v150 = v211;
    v151 = *v211;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v151 = sub_20C5F875C(0, v151[2] + 1, 1, v151);
    }

    v153 = v151[2];
    v152 = v151[3];
    if (v153 >= v152 >> 1)
    {
      v151 = sub_20C5F875C(v152 > 1, v153 + 1, 1, v151);
    }

    sub_20C637494(v66, type metadata accessor for MarketingOffer);
    sub_20C637494(v91, type metadata accessor for MarketingActionItem);
    v151[2] = v153 + 1;
    result = (*(v148 + 32))(v151 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v153, v144, v149);
    *v150 = v151;
    return result;
  }

  v154 = v191;
  v155 = v192;
  v156 = v65;
  (*(v191 + 32))(v192, v121, v65);
  v157 = sub_20C64D0B0();
  if (!v157)
  {
    (*(v154 + 8))(v155, v65);
    goto LABEL_38;
  }

  v158 = v157;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
  v219 = v159[12];
  v160 = v159[16];
  v220 = v159[20];
  v161 = v186;
  v218 = &v186[v159[24]];
  v162 = v185;
  *v185 = v158;
  swift_storeEnumTagMultiPayload();
  sub_20C6374F4(v162, v207, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  sub_20C637AC0(&qword_281106348, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  v163 = v158;
  sub_20C64E230();
  sub_20C637494(v162, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  v164 = *MEMORY[0x277D043F0];
  v165 = sub_20C64DF10();
  (*(*(v165 - 8) + 104))(&v161[v160], v164, v165);
  v166 = v190;
  sub_20C6374F4(v115, v190, type metadata accessor for MarketingOffer);
  v167 = v189;
  sub_20C6374F4(v91, v189, type metadata accessor for MarketingActionItem);
  v168 = (*(v217 + 80) + 120) & ~*(v217 + 80);
  v169 = &v203[*(v221 + 80) + v168] & ~*(v221 + 80);
  v170 = swift_allocObject();
  v171 = v226;
  *(v170 + 48) = v225;
  *(v170 + 64) = v171;
  v172 = v228;
  *(v170 + 80) = v227;
  *(v170 + 96) = v172;
  v173 = v224;
  *(v170 + 16) = v223;
  *(v170 + 32) = v173;
  *(v170 + 112) = v163;
  sub_20C63742C(v166, v170 + v168, type metadata accessor for MarketingOffer);
  sub_20C63742C(v167, v170 + v169, type metadata accessor for MarketingActionItem);
  v174 = v218;
  *v218 = &unk_20C6573B8;
  *(v174 + 1) = v170;
  sub_20C6373EC(&v223, v222);
  v175 = v163;
  sub_20C64E170();
  v176 = *MEMORY[0x277D043E8];
  v177 = sub_20C64DF00();
  (*(*(v177 - 8) + 104))(&v161[v220], v176, v177);
  v178 = v209;
  v179 = v210;
  (*(v209 + 104))(v161, *MEMORY[0x277D043B0], v210);
  v180 = v211;
  v181 = *v211;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v181 = sub_20C5F875C(0, v181[2] + 1, 1, v181);
  }

  v183 = v181[2];
  v182 = v181[3];
  if (v183 >= v182 >> 1)
  {
    v181 = sub_20C5F875C(v182 > 1, v183 + 1, 1, v181);
  }

  (*(v191 + 8))(v192, v156);
  sub_20C637494(v115, type metadata accessor for MarketingOffer);
  sub_20C637494(v91, type metadata accessor for MarketingActionItem);
  v181[2] = v183 + 1;
  result = (*(v178 + 32))(v181 + ((*(v178 + 80) + 32) & ~*(v178 + 80)) + *(v178 + 72) * v183, v186, v179);
  *v180 = v181;
  return result;
}

uint64_t type metadata accessor for MarketingButtonFeature.TaskIdentifier()
{
  result = qword_281106308;
  if (!qword_281106308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C636520(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = sub_20C64E160();
  *(v5 + 48) = sub_20C64E150();
  *(v5 + 56) = *(a2 + 48);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  *(v5 + 72) = *(a2 + 80);
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  v15 = (v10 + *v10);
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v5 + 88) = v13;
  *v13 = v5;
  v13[1] = sub_20C636660;

  return v15(v5 + 16);
}

uint64_t sub_20C636660()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 56);
  v4 = *v0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v1 + 96) = v6;
  *v6 = v4;
  v6[1] = sub_20C636810;
  v7 = *(v1 + 64);

  return v9();
}

uint64_t sub_20C636810()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 72);
  v4 = *v0;

  v9 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  *(v1 + 104) = v6;
  *v6 = v4;
  v6[1] = sub_20C6369C0;
  v7 = *(v1 + 80);

  return v9();
}

uint64_t sub_20C6369C0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v7 = *v0;

  v5 = sub_20C64E130();

  return MEMORY[0x2822009F8](sub_20C636AFC, v5, v4);
}

uint64_t sub_20C636AFC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C636B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_20C64E160();
  v5[3] = sub_20C64E150();
  v10 = *(a2 + 24);
  v14 = (*(a2 + 16) + **(a2 + 16));
  v11 = *(*(a2 + 16) + 4);
  v12 = swift_task_alloc();
  v5[4] = v12;
  *v12 = v5;
  v12[1] = sub_20C636C8C;

  return v14(a3, a4, a5);
}

uint64_t sub_20C636C8C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *v2;
  *(*v2 + 40) = v1;

  v8 = *(v5 + 24);
  v9 = *(v5 + 16);
  if (v3)
  {
    v10 = sub_20C64E130();
    v12 = v11;
    v13 = sub_20C636E14;
  }

  else
  {

    v10 = sub_20C64E130();
    v12 = v14;
    v13 = sub_20C62B4C0;
  }

  return MEMORY[0x2822009F8](v13, v10, v12);
}

uint64_t sub_20C636E14()
{
  v1 = v0[3];

  if (qword_27C7CDF78 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v3 = sub_20C64D160();
  __swift_project_value_buffer(v3, qword_27C7DD450);
  v4 = v2;
  v5 = sub_20C64D140();
  v6 = sub_20C64E190();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[5];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20C5D2000, v5, v6, "purchase failed: %@", v9, 0xCu);
    sub_20C5DBFC4(v10, &qword_27C7CF388, &qword_20C6568A0);
    MEMORY[0x20F301F10](v10, -1, -1);
    MEMORY[0x20F301F10](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_20C636FC4(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_20C64E160();
  v5[3] = sub_20C64E150();
  v10 = a2[1];
  v14 = (*a2 + **a2);
  v11 = (*a2)[1];
  v12 = swift_task_alloc();
  v5[4] = v12;
  *v12 = v5;
  v12[1] = sub_20C629220;

  return v14(a3, a4, a5);
}

uint64_t sub_20C6370F0(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_20C64E160();
  v2[3] = sub_20C64E150();
  v4 = *(a2 + 40);
  v8 = (*(a2 + 32) + **(a2 + 32));
  v5 = *(*(a2 + 32) + 4);
  v6 = swift_task_alloc();
  v2[4] = v6;
  *v6 = v2;
  v6[1] = sub_20C6371F8;

  return v8();
}

uint64_t sub_20C6371F8()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_20C64E130();
  if (v2)
  {
    v8 = sub_20C637FD0;
  }

  else
  {
    v8 = sub_20C62B4C0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_20C637354(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20C62B4BC;

  return sub_20C6370F0(a1, v1 + 16);
}

uint64_t sub_20C63742C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C637494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C6374F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C63755C(uint64_t a1)
{
  v4 = *(type metadata accessor for MarketingOffer() - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for MarketingActionItem() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + 112);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C62B4BC;

  return sub_20C636B60(a1, v1 + 16, v9, v1 + v5, v1 + v8);
}

uint64_t sub_20C6376A4(uint64_t a1)
{
  v4 = *(sub_20C64CF10() - 8);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for MarketingOffer() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MarketingActionItem() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20C5EE6B4;

  return sub_20C636FC4(a1, (v1 + 16), v1 + v5, v1 + v8, v1 + v11);
}

uint64_t sub_20C637840(uint64_t a1)
{
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  v6 = *(v1 + 112);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20C62B4BC;

  return sub_20C636520(a1, v1 + 16, v6, v4, v5);
}

uint64_t sub_20C6379E8()
{
  result = sub_20C64CF10();
  if (v1 <= 0x3F)
  {
    result = sub_20C5F94D4(319, &qword_281105788, 0x277CEE438);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20C637AC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20C637B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64CF10();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MarketingButtonFeature.TaskIdentifier();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v47 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA08, &unk_20C657530);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v47 - v23;
  v25 = &v47 + *(v22 + 56) - v23;
  sub_20C6374F4(a1, &v47 - v23, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  sub_20C6374F4(a2, v25, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_20C6374F4(v24, v17, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
      v36 = *(v17 + 2);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_17:

        goto LABEL_18;
      }

      v37 = *(v17 + 1);
      v38 = *v25;
      v39 = *(v25 + 1);
      v40 = *(v25 + 2);
      v54[0] = *v17;
      v55 = v37;
      v56 = v36;
      v51[0] = v38;
      v52 = v39;
      v53 = v40;
      v29 = _s16FitnessMarketing0B9PlacementV2eeoiySbAC_ACtFZ_0(v54, v51);
    }

    else
    {
      sub_20C6374F4(v24, v19, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
      v30 = *(v19 + 2);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_17;
      }

      v41 = *(v19 + 1);
      v42 = *v19;
      v43 = *v25;
      v44 = *(v25 + 1);
      v45 = *(v25 + 2);
      v54[0] = v42;
      v55 = v41;
      v56 = v30;
      v51[0] = v43;
      v52 = v44;
      v53 = v45;
      v29 = _s16FitnessMarketing0B9PlacementV2eeoiySbAC_ACtFZ_0(v54, v51);
    }

    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20C6374F4(v24, v14, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = v48;
      v31 = v49;
      v33 = v25;
      v34 = v50;
      (*(v49 + 32))(v48, v33, v50);
      v29 = sub_20C64CEE0();
      v35 = *(v31 + 8);
      v35(v32, v34);
      v35(v14, v34);
      goto LABEL_21;
    }

    (*(v49 + 8))(v14, v50);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_20C6374F4(v24, v11, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
    v27 = *v11;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v28 = *v25;
      sub_20C5F94D4(0, &qword_27C7CFA10, 0x277D82BB8);
      v29 = sub_20C64E1C0();

LABEL_21:
      sub_20C637494(v24, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
      return v29 & 1;
    }

    goto LABEL_18;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_18:
    sub_20C5DBFC4(v24, &qword_27C7CFA08, &unk_20C657530);
    v29 = 0;
    return v29 & 1;
  }

  sub_20C637494(v24, type metadata accessor for MarketingButtonFeature.TaskIdentifier);
  v29 = 1;
  return v29 & 1;
}

uint64_t MarketingArtworkPosition.hashValue.getter()
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](0);
  return sub_20C64E4E0();
}

unint64_t sub_20C63804C()
{
  result = qword_27C7CFA18;
  if (!qword_27C7CFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA18);
  }

  return result;
}

unint64_t sub_20C6380C4()
{
  v1 = 0x676F6C6169446F6ELL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_20C638138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C6391D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C638160(uint64_t a1)
{
  v2 = sub_20C6386AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63819C(uint64_t a1)
{
  v2 = sub_20C6386AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6381D8(uint64_t a1)
{
  v2 = sub_20C6387A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C638214(uint64_t a1)
{
  v2 = sub_20C6387A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C638250(uint64_t a1)
{
  v2 = sub_20C638754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63828C(uint64_t a1)
{
  v2 = sub_20C638754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6382C8(uint64_t a1)
{
  v2 = sub_20C638700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C638304(uint64_t a1)
{
  v2 = sub_20C638700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BubbleTipError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA20, &qword_20C6575D0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA28, &qword_20C6575D8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA30, &qword_20C6575E0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA38, &qword_20C6575E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C6386AC();
  sub_20C64E500();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_20C638754();
      v12 = v26;
      sub_20C64E3B0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_20C638700();
      v12 = v29;
      sub_20C64E3B0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_20C6387A8();
    sub_20C64E3B0();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_20C6386AC()
{
  result = qword_27C7CFA40;
  if (!qword_27C7CFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA40);
  }

  return result;
}

unint64_t sub_20C638700()
{
  result = qword_27C7CFA48;
  if (!qword_27C7CFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA48);
  }

  return result;
}

unint64_t sub_20C638754()
{
  result = qword_27C7CFA50;
  if (!qword_27C7CFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA50);
  }

  return result;
}

unint64_t sub_20C6387A8()
{
  result = qword_27C7CFA58;
  if (!qword_27C7CFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA58);
  }

  return result;
}

uint64_t BubbleTipError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA60, &qword_20C6575F0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA68, &qword_20C6575F8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA70, &qword_20C657600);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFA78, &unk_20C657608);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_20C6386AC();
  v20 = v43;
  sub_20C64E4F0();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_20C64E3A0();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_20C5DDAF4();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_20C64E290();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
      *v30 = &type metadata for BubbleTipError;
      sub_20C64E330();
      sub_20C64E280();
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
          sub_20C638754();
          sub_20C64E320();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_20C638700();
          v33 = v22;
          sub_20C64E320();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_20C6387A8();
        sub_20C64E320();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

uint64_t BubbleTipError.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C638E14()
{
  result = qword_27C7CFA80;
  if (!qword_27C7CFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA80);
  }

  return result;
}

unint64_t sub_20C638EBC()
{
  result = qword_27C7CFA88;
  if (!qword_27C7CFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA88);
  }

  return result;
}

unint64_t sub_20C638F14()
{
  result = qword_27C7CFA90;
  if (!qword_27C7CFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA90);
  }

  return result;
}

unint64_t sub_20C638F6C()
{
  result = qword_27C7CFA98;
  if (!qword_27C7CFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFA98);
  }

  return result;
}

unint64_t sub_20C638FC4()
{
  result = qword_27C7CFAA0;
  if (!qword_27C7CFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAA0);
  }

  return result;
}

unint64_t sub_20C63901C()
{
  result = qword_27C7CFAA8;
  if (!qword_27C7CFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAA8);
  }

  return result;
}

unint64_t sub_20C639074()
{
  result = qword_27C7CFAB0;
  if (!qword_27C7CFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAB0);
  }

  return result;
}

unint64_t sub_20C6390CC()
{
  result = qword_27C7CFAB8;
  if (!qword_27C7CFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAB8);
  }

  return result;
}

unint64_t sub_20C639124()
{
  result = qword_27C7CFAC0;
  if (!qword_27C7CFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAC0);
  }

  return result;
}

unint64_t sub_20C63917C()
{
  result = qword_27C7CFAC8;
  if (!qword_27C7CFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFAC8);
  }

  return result;
}

uint64_t sub_20C6391D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000020C65A480 == a2;
  if (v3 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C65A4A0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676F6C6169446F6ELL && a2 == 0xEF74736575716552)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

unint64_t sub_20C639300()
{
  v1 = *v0;
  v2 = 0x6568536863746566;
  v3 = 0x5364656863746566;
  if (v1 != 4)
  {
    v3 = 0x6570704177656976;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000016;
  if (v1 != 1)
  {
    v4 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_20C6393DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C63B73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C639404(uint64_t a1)
{
  v2 = sub_20C63A030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C639440(uint64_t a1)
{
  v2 = sub_20C63A030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C63947C(uint64_t a1)
{
  v2 = sub_20C63A28C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6394B8(uint64_t a1)
{
  v2 = sub_20C63A28C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C639508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C63B950(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_20C639530(uint64_t a1)
{
  v2 = sub_20C63A1E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63956C(uint64_t a1)
{
  v2 = sub_20C63A1E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C6395A8(uint64_t a1)
{
  v2 = sub_20C63A190();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6395E4(uint64_t a1)
{
  v2 = sub_20C63A190();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C639620(uint64_t a1)
{
  v2 = sub_20C63A13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63965C(uint64_t a1)
{
  v2 = sub_20C63A13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C639698(uint64_t a1)
{
  v2 = sub_20C63A238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C6396D4(uint64_t a1)
{
  v2 = sub_20C63A238();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C639710(uint64_t a1)
{
  v2 = sub_20C63A0E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C63974C(uint64_t a1)
{
  v2 = sub_20C63A0E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheetAction.encode(to:)(void *a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAD0, &qword_20C657AA0);
  v62 = *(v65 - 8);
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v65);
  v59 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAD8, &qword_20C657AA8);
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v50 - v6;
  v57 = type metadata accessor for AudioLanguageEngagementSheet();
  v7 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAE0, &qword_20C657AB0);
  v55 = *(v9 - 8);
  v56 = v9;
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v9);
  v54 = &v50 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAE8, &qword_20C657AB8);
  v61 = *(v63 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v58 = &v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAF0, &qword_20C657AC0);
  v52 = *(v14 - 8);
  v53 = v14;
  v15 = *(v52 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFAF8, &qword_20C657AC8);
  v50 = *(v51 - 8);
  v18 = *(v50 + 64);
  MEMORY[0x28223BE20](v51);
  v20 = &v50 - v19;
  v21 = type metadata accessor for AudioLanguageEngagementSheetAction();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB00, &qword_20C657AD0);
  v68 = *(v25 - 8);
  v69 = v25;
  v26 = *(v68 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v50 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C63A030();
  v30 = v28;
  sub_20C64E500();
  sub_20C63A084(v71, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v73 = 1;
      sub_20C63A238();
      v46 = v69;
      sub_20C64E3B0();
      (*(v52 + 8))(v17, v53);
      return (*(v68 + 8))(v28, v46);
    }

    v34 = v69;
    if (EnumCaseMultiPayload == 4)
    {
      v78 = 3;
      sub_20C63A190();
      v36 = v54;
      sub_20C64E3B0();
      (*(v55 + 8))(v36, v56);
    }

    else
    {
      v80 = 5;
      sub_20C63A0E8();
      v49 = v59;
      sub_20C64E3B0();
      (*(v62 + 8))(v49, v65);
    }

    return (*(v68 + 8))(v30, v34);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v72 = 0;
      sub_20C63A28C();
      v48 = v69;
      sub_20C64E3B0();
      (*(v50 + 8))(v20, v51);
      return (*(v68 + 8))(v30, v48);
    }

    v32 = v60;
    sub_20C63AF40(v24, v60, type metadata accessor for AudioLanguageEngagementSheet);
    v79 = 4;
    sub_20C63A13C();
    v33 = v64;
    v34 = v69;
    sub_20C64E3B0();
    sub_20C63AFA8(&qword_27C7CE138);
    v35 = v67;
    sub_20C64E410();
    (*(v66 + 8))(v33, v35);
    sub_20C5ED0CC(v32);
    return (*(v68 + 8))(v30, v34);
  }

  v37 = *v24;
  v38 = v24[1];
  v39 = v24[3];
  v71 = v24[2];
  v40 = v24[4];
  v77 = 2;
  sub_20C63A1E4();
  v41 = v58;
  v42 = v69;
  v43 = v30;
  sub_20C64E3B0();
  v76 = 0;
  v44 = v63;
  v45 = v70;
  sub_20C64E3E0();
  if (v45)
  {
  }

  else
  {
    v70 = v39;

    v75 = 1;
    sub_20C64E400();
    v74 = 2;
    sub_20C64E3E0();
  }

  (*(v61 + 8))(v41, v44);
  return (*(v68 + 8))(v43, v42);
}

uint64_t type metadata accessor for AudioLanguageEngagementSheetAction()
{
  result = qword_27C7CFB78;
  if (!qword_27C7CFB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C63A030()
{
  result = qword_27C7CFB08;
  if (!qword_27C7CFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB08);
  }

  return result;
}

uint64_t sub_20C63A084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C63A0E8()
{
  result = qword_27C7CFB10;
  if (!qword_27C7CFB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB10);
  }

  return result;
}

unint64_t sub_20C63A13C()
{
  result = qword_27C7CFB18;
  if (!qword_27C7CFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB18);
  }

  return result;
}

unint64_t sub_20C63A190()
{
  result = qword_27C7CFB20;
  if (!qword_27C7CFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB20);
  }

  return result;
}

unint64_t sub_20C63A1E4()
{
  result = qword_27C7CFB28;
  if (!qword_27C7CFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB28);
  }

  return result;
}

unint64_t sub_20C63A238()
{
  result = qword_27C7CFB30;
  if (!qword_27C7CFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB30);
  }

  return result;
}

unint64_t sub_20C63A28C()
{
  result = qword_27C7CFB38;
  if (!qword_27C7CFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB38);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheetAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB40, &qword_20C657AD8);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v93 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB48, &qword_20C657AE0);
  v7 = *(v6 - 8);
  v88 = v6;
  v89 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v92 = &v74 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB50, &qword_20C657AE8);
  v82 = *(v83 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v96 = &v74 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB58, &qword_20C657AF0);
  v84 = *(v12 - 8);
  v85 = v12;
  v13 = *(v84 + 64);
  MEMORY[0x28223BE20](v12);
  v95 = &v74 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB60, &qword_20C657AF8);
  v81 = *(v94 - 8);
  v15 = *(v81 + 64);
  MEMORY[0x28223BE20](v94);
  v91 = &v74 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB68, &qword_20C657B00);
  v79 = *(v80 - 8);
  v17 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v90 = &v74 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFB70, &unk_20C657B08);
  v97 = *(v19 - 8);
  v20 = *(v97 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - v21;
  v23 = type metadata accessor for AudioLanguageEngagementSheetAction();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v74 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v74 - v31;
  v34 = a1[3];
  v33 = a1[4];
  v100 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_20C63A030();
  v35 = v99;
  sub_20C64E4F0();
  if (!v35)
  {
    v76 = v27;
    v75 = v30;
    v36 = v94;
    v37 = v95;
    v38 = v96;
    v78 = v23;
    v77 = v32;
    v39 = v98;
    v99 = v19;
    v40 = sub_20C64E3A0();
    v41 = (2 * *(v40 + 16)) | 1;
    v101 = v40;
    v102 = v40 + 32;
    v103 = 0;
    v104 = v41;
    v42 = sub_20C5DDAF8();
    if (v42 != 6 && v103 == v104 >> 1)
    {
      if (v42 > 2u)
      {
        if (v42 == 3)
        {
          v105 = 3;
          sub_20C63A190();
          v59 = v99;
          sub_20C64E320();
          v60 = v97;
          (*(v82 + 8))(v38, v83);
          (*(v60 + 8))(v22, v59);
          swift_unknownObjectRelease();
          v64 = v77;
          goto LABEL_17;
        }

        v52 = v99;
        v53 = v97;
        if (v42 != 4)
        {
          v105 = 5;
          sub_20C63A0E8();
          v63 = v93;
          sub_20C64E320();
          (*(v86 + 8))(v63, v87);
          (*(v53 + 8))(v22, v52);
          swift_unknownObjectRelease();
          v64 = v77;
          goto LABEL_17;
        }

        v105 = 4;
        sub_20C63A13C();
        v54 = v92;
        sub_20C64E320();
        type metadata accessor for AudioLanguageEngagementSheet();
        sub_20C63AFA8(&qword_27C7CE130);
        v55 = v76;
        v56 = v88;
        sub_20C64E390();
        (*(v89 + 8))(v54, v56);
        (*(v53 + 8))(v22, v52);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v64 = v77;
        sub_20C63AF40(v55, v77, type metadata accessor for AudioLanguageEngagementSheetAction);
        v39 = v98;
      }

      else
      {
        if (!v42)
        {
          v105 = 0;
          sub_20C63A28C();
          v57 = v90;
          v58 = v99;
          sub_20C64E320();
          (*(v79 + 8))(v57, v80);
          (*(v97 + 8))(v22, v58);
          swift_unknownObjectRelease();
          v64 = v77;
          goto LABEL_17;
        }

        if (v42 == 1)
        {
          v105 = 1;
          sub_20C63A238();
          v43 = v91;
          v44 = v99;
          sub_20C64E320();
          v45 = v97;
          (*(v81 + 8))(v43, v36);
          (*(v45 + 8))(v22, v44);
          swift_unknownObjectRelease();
          v64 = v77;
LABEL_17:
          swift_storeEnumTagMultiPayload();
          goto LABEL_18;
        }

        v105 = 2;
        sub_20C63A1E4();
        v61 = v37;
        sub_20C64E320();
        v62 = v97;
        v105 = 0;
        v65 = v85;
        v66 = sub_20C64E360();
        v68 = v67;
        v69 = v66;
        v105 = 1;
        v96 = sub_20C64E380();
        v105 = 2;
        v93 = sub_20C64E360();
        v94 = v70;
        (*(v84 + 8))(v61, v65);
        (*(v62 + 8))(v22, v99);
        swift_unknownObjectRelease();
        v71 = v75;
        *v75 = v69;
        v71[1] = v68;
        v73 = v93;
        v72 = v94;
        v71[2] = v96;
        v71[3] = v73;
        v71[4] = v72;
        swift_storeEnumTagMultiPayload();
        v64 = v77;
        sub_20C63AF40(v71, v77, type metadata accessor for AudioLanguageEngagementSheetAction);
      }

LABEL_18:
      sub_20C63AF40(v64, v39, type metadata accessor for AudioLanguageEngagementSheetAction);
      return __swift_destroy_boxed_opaque_existential_1(v100);
    }

    v46 = sub_20C64E290();
    swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0) + 48);
    *v48 = v78;
    v50 = v99;
    sub_20C64E330();
    sub_20C64E280();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
    swift_willThrow();
    (*(v97 + 8))(v22, v50);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v100);
}

uint64_t sub_20C63AF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C63AFA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioLanguageEngagementSheet();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20C63B01C()
{
  sub_20C63B090();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AudioLanguageEngagementSheet();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C63B090()
{
  if (!qword_27C7CFB88)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C7CFB88);
    }
  }
}

unint64_t sub_20C63B168()
{
  result = qword_27C7CFB90;
  if (!qword_27C7CFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB90);
  }

  return result;
}

unint64_t sub_20C63B1C0()
{
  result = qword_27C7CFB98;
  if (!qword_27C7CFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFB98);
  }

  return result;
}

unint64_t sub_20C63B218()
{
  result = qword_27C7CFBA0;
  if (!qword_27C7CFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBA0);
  }

  return result;
}

unint64_t sub_20C63B270()
{
  result = qword_27C7CFBA8;
  if (!qword_27C7CFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBA8);
  }

  return result;
}

unint64_t sub_20C63B2C8()
{
  result = qword_27C7CFBB0;
  if (!qword_27C7CFBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBB0);
  }

  return result;
}

unint64_t sub_20C63B320()
{
  result = qword_27C7CFBB8;
  if (!qword_27C7CFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBB8);
  }

  return result;
}

unint64_t sub_20C63B378()
{
  result = qword_27C7CFBC0;
  if (!qword_27C7CFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBC0);
  }

  return result;
}

unint64_t sub_20C63B3D0()
{
  result = qword_27C7CFBC8;
  if (!qword_27C7CFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBC8);
  }

  return result;
}

unint64_t sub_20C63B428()
{
  result = qword_27C7CFBD0;
  if (!qword_27C7CFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBD0);
  }

  return result;
}

unint64_t sub_20C63B480()
{
  result = qword_27C7CFBD8;
  if (!qword_27C7CFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBD8);
  }

  return result;
}

unint64_t sub_20C63B4D8()
{
  result = qword_27C7CFBE0;
  if (!qword_27C7CFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBE0);
  }

  return result;
}

unint64_t sub_20C63B530()
{
  result = qword_27C7CFBE8;
  if (!qword_27C7CFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBE8);
  }

  return result;
}

unint64_t sub_20C63B588()
{
  result = qword_27C7CFBF0;
  if (!qword_27C7CFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBF0);
  }

  return result;
}

unint64_t sub_20C63B5E0()
{
  result = qword_27C7CFBF8;
  if (!qword_27C7CFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFBF8);
  }

  return result;
}

unint64_t sub_20C63B638()
{
  result = qword_27C7CFC00;
  if (!qword_27C7CFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFC00);
  }

  return result;
}

unint64_t sub_20C63B690()
{
  result = qword_27C7CFC08;
  if (!qword_27C7CFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFC08);
  }

  return result;
}

unint64_t sub_20C63B6E8()
{
  result = qword_27C7CFC10;
  if (!qword_27C7CFC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CFC10);
  }

  return result;
}

uint64_t sub_20C63B73C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x800000020C65A4C0 == a2;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C65A4E0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C65A500 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6568536863746566 && a2 == 0xEA00000000007465 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5364656863746566 && a2 == 0xEC00000074656568 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 5;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C63B950(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t BubbleTipFeature.init(environment:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = a1[2];
  v3 = a2 + *(type metadata accessor for BubbleTipFeature(0) + 20);
  return sub_20C64CF60();
}

uint64_t sub_20C63BAB4()
{
  v1 = sub_20C64CF70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s16FitnessMarketing14TaskIdentifierOMa_0(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C63E424(v0, v9, _s16FitnessMarketing14TaskIdentifierOMa_0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v11 = *v9;
    v12 = *(v9 + 1);
    if (EnumCaseMultiPayload)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270);
      (*(v2 + 32))(v5, &v9[*(v15 + 48)], v1);
      v14 = 1;
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270);
      (*(v2 + 32))(v5, &v9[*(v13 + 48)], v1);
      v14 = 0;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v16 = *v9;
    v17 = *(v9 + 1);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC28, &qword_20C658248);
    (*(v2 + 32))(v5, &v9[*(v18 + 48)], v1);
    v14 = 3;
LABEL_8:
    MEMORY[0x20F301800](v14);
    sub_20C64E090();

    goto LABEL_9;
  }

  (*(v2 + 32))(v5, v9, v1);
  MEMORY[0x20F301800](2);
LABEL_9:
  sub_20C64019C(&qword_281106830, MEMORY[0x277CC95F0]);
  sub_20C64E000();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_20C63BD68()
{
  sub_20C64E4A0();
  sub_20C63BAB4();
  return sub_20C64E4E0();
}

uint64_t sub_20C63BDAC()
{
  sub_20C64E4A0();
  sub_20C63BAB4();
  return sub_20C64E4E0();
}

void BubbleTipFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v333 = a4;
  v331 = a3;
  v324 = a1;
  v306 = sub_20C64CF10();
  v305 = *(v306 - 1);
  v4 = *(v305 + 64);
  MEMORY[0x28223BE20](v306);
  v300 = &v298 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v303 = &v298 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v304 = &v298 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC18, &qword_20C658238);
  v317 = *(v11 - 8);
  v318 = v11;
  v12 = *(v317 + 64);
  MEMORY[0x28223BE20](v11);
  v316 = &v298 - v13;
  v327 = type metadata accessor for BubbleTipFeature(0);
  v325 = *(v327 - 8);
  v14 = *(v325 + 64);
  v15 = MEMORY[0x28223BE20](v327);
  v313 = &v298 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v314 = &v298 - v18;
  v326 = v19;
  MEMORY[0x28223BE20](v17);
  v315 = &v298 - v20;
  v330 = sub_20C64CF70();
  v335 = *(v330 - 8);
  v21 = *(v335 + 64);
  MEMORY[0x28223BE20](v330);
  v308 = &v298 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC20, &qword_20C658240);
  v320 = *(v311 - 1);
  v23 = *(v320 + 64);
  MEMORY[0x28223BE20](v311);
  v319 = &v298 - v24;
  v329 = _s16FitnessMarketing14TaskIdentifierOMa_0(0);
  v25 = *(*(v329 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v329);
  v299 = (&v298 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = MEMORY[0x28223BE20](v26);
  v302 = (&v298 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v298 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = (&v298 - v34);
  v36 = MEMORY[0x28223BE20](v33);
  v310 = &v298 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v312 = (&v298 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v298 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v298 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v328 = &v298 - v47;
  MEMORY[0x28223BE20](v46);
  v49 = &v298 - v48;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA48, &qword_20C652AB0);
  v336 = *(v334 - 8);
  v50 = *(v336 + 64);
  v51 = MEMORY[0x28223BE20](v334);
  v301 = &v298 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v307 = &v298 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = &v298 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v321 = &v298 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v322 = &v298 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v323 = &v298 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v66 = &v298 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = &v298 - v68;
  MEMORY[0x28223BE20](v67);
  v309 = &v298 - v70;
  v71 = type metadata accessor for BubbleTipAction();
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v74 = (&v298 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C63E424(v333, v74, type metadata accessor for BubbleTipAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v151 = v324;
        v152 = v324[1];
        v333 = *v324;
        v153 = v333;
        v154 = v324[2];
        v155 = v324[3];

        sub_20C5E8FFC(v154, v155);
        *(v151 + 1) = xmmword_20C658220;
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
        v157 = v156[12];
        v158 = v156[16];
        v324 = v156[20];
        v159 = v321;
        v160 = &v321[v156[24]];
        v161 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270) + 48);
        *v35 = v153;
        v35[1] = v152;
        v162 = v332;
        (*(v335 + 16))(v35 + v161, v332 + *(v327 + 20), v330);
        swift_storeEnumTagMultiPayload();
        sub_20C63E424(v35, v328, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0);

        sub_20C64E230();
        sub_20C640D18(v35, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E170();
        v163 = *MEMORY[0x277D04400];
        v164 = sub_20C64DF10();
        (*(*(v164 - 8) + 104))(&v159[v158], v163, v164);
        v165 = *MEMORY[0x277D043E0];
        v166 = sub_20C64DF00();
        (*(*(v166 - 8) + 104))(v324 + v159, v165, v166);
        v167 = v313;
        sub_20C63E424(v162, v313, type metadata accessor for BubbleTipFeature);
        v168 = (*(v325 + 80) + 16) & ~*(v325 + 80);
        v169 = (v326 + v168 + 7) & 0xFFFFFFFFFFFFFFF8;
        v170 = swift_allocObject();
        sub_20C63FC98(v167, v170 + v168);
        v171 = (v170 + v169);
        v172 = v334;
        *v171 = v333;
        v171[1] = v152;
        *v160 = &unk_20C658280;
        *(v160 + 1) = v170;
        v173 = v336;
        (*(v336 + 104))(v159, *MEMORY[0x277D043B0], v172);
        v174 = v331;
        v175 = *v331;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = sub_20C5F8780(0, v175[2] + 1, 1, v175);
        }

        v177 = v175[2];
        v176 = v175[3];
        if (v177 >= v176 >> 1)
        {
          v175 = sub_20C5F8780(v176 > 1, v177 + 1, 1, v175);
        }

        v175[2] = v177 + 1;
        (*(v173 + 32))(v175 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v177, v321, v172);
      }

      else
      {
        v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
        v230 = v229[12];
        v231 = v229[16];
        v232 = v229[20];
        v233 = &v57[v229[24]];
        (*(v335 + 16))(v32, v332 + *(v327 + 20), v330);
        swift_storeEnumTagMultiPayload();
        sub_20C63E424(v32, v328, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E230();
        sub_20C640D18(v32, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E170();
        v234 = *MEMORY[0x277D04400];
        v235 = sub_20C64DF10();
        (*(*(v235 - 8) + 104))(&v57[v231], v234, v235);
        v236 = *MEMORY[0x277D043E8];
        v237 = sub_20C64DF00();
        (*(*(v237 - 8) + 104))(&v57[v232], v236, v237);
        *v233 = &unk_20C658268;
        *(v233 + 1) = 0;
        v238 = v336;
        v239 = v334;
        (*(v336 + 104))(v57, *MEMORY[0x277D043B0], v334);
        v174 = v331;
        v175 = *v331;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v175 = sub_20C5F8780(0, v175[2] + 1, 1, v175);
        }

        v241 = v175[2];
        v240 = v175[3];
        if (v241 >= v240 >> 1)
        {
          v175 = sub_20C5F8780(v240 > 1, v241 + 1, 1, v175);
        }

        v175[2] = v241 + 1;
        (*(v238 + 32))(v175 + ((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v241, v57, v239);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v108 = v324;
        v109 = v324[1];
        v323 = *v324;
        v110 = v324[2];
        v111 = v324[3];
        sub_20C5E8F84(v110, v111);
        v112 = v336;
        v333 = v110;
        v321 = v109;
        if (v111 >= 2)
        {
          sub_20C5E8F84(v110, v111);

          sub_20C5E8FFC(v108[2], v108[3]);
          v113 = v111;
        }

        else
        {

          sub_20C5E8FFC(v110, v111);
          v113 = 0;
        }

        v108[2] = 0;
        v108[3] = v113;
        v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
        v243 = v242[12];
        v244 = v242[16];
        v324 = v242[20];
        v245 = v322;
        v246 = &v322[v242[24]];
        v247 = v332;
        v248 = v310;
        (*(v335 + 16))(v310, v332 + *(v327 + 20), v330);
        swift_storeEnumTagMultiPayload();
        sub_20C63E424(v248, v328, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E230();
        sub_20C640D18(v248, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E170();
        v249 = *MEMORY[0x277D04400];
        v250 = sub_20C64DF10();
        (*(*(v250 - 8) + 104))(&v245[v244], v249, v250);
        v251 = *MEMORY[0x277D043E8];
        v252 = sub_20C64DF00();
        (*(*(v252 - 8) + 104))(v324 + v245, v251, v252);
        v253 = v247;
        v254 = v314;
        sub_20C63E424(v253, v314, type metadata accessor for BubbleTipFeature);
        v255 = (*(v325 + 80) + 16) & ~*(v325 + 80);
        v256 = (v326 + v255 + 7) & 0xFFFFFFFFFFFFFFF8;
        v257 = swift_allocObject();
        sub_20C63FC98(v254, v257 + v255);
        v258 = (v257 + v256);
        v259 = v321;
        *v258 = v323;
        v258[1] = v259;
        *v246 = &unk_20C658290;
        *(v246 + 1) = v257;
        v260 = v334;
        (*(v112 + 104))(v245, *MEMORY[0x277D043B0], v334);
        v261 = v331;
        v262 = *v331;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v262 = sub_20C5F8780(0, v262[2] + 1, 1, v262);
        }

        v264 = v262[2];
        v263 = v262[3];
        if (v264 >= v263 >> 1)
        {
          v262 = sub_20C5F8780(v263 > 1, v264 + 1, 1, v262);
        }

        sub_20C5E8FFC(v333, v111);
        v262[2] = v264 + 1;
        (*(v112 + 32))(v262 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v264, v322, v260);
        *v261 = v262;
        return;
      }

      v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v204 = v203[12];
      v205 = v203[16];
      v206 = v203[20];
      v207 = &v69[v203[24]];
      (*(v335 + 16))(v45, v332 + *(v327 + 20), v330);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v45, v328, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E230();
      sub_20C640D18(v45, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      v208 = *MEMORY[0x277D04400];
      v209 = sub_20C64DF10();
      (*(*(v209 - 8) + 104))(&v69[v205], v208, v209);
      v210 = *MEMORY[0x277D043E8];
      v211 = sub_20C64DF00();
      (*(*(v211 - 8) + 104))(&v69[v206], v210, v211);
      *v207 = &unk_20C6582B0;
      *(v207 + 1) = 0;
      v212 = v336;
      (*(v336 + 104))(v69, *MEMORY[0x277D043B0], v334);
      v174 = v331;
      v175 = *v331;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v175 = sub_20C5F8780(0, v175[2] + 1, 1, v175);
      }

      v214 = v175[2];
      v213 = v175[3];
      if (v214 >= v213 >> 1)
      {
        v175 = sub_20C5F8780(v213 > 1, v214 + 1, 1, v175);
      }

      v175[2] = v214 + 1;
      (*(v212 + 32))(v175 + ((*(v212 + 80) + 32) & ~*(v212 + 80)) + *(v212 + 72) * v214, v69, v334);
    }

    *v174 = v175;
    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v114 = v336;
    if (EnumCaseMultiPayload == 2)
    {
      v115 = v74[1];
      v333 = *v74;
      v324 = v115;
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v117 = v116[12];
      v118 = v116[16];
      v119 = v116[20];
      v120 = &v66[v116[24]];
      v121 = *(v335 + 16);
      v327 = v332 + *(v327 + 20);
      v335 += 16;
      v322 = v121;
      (v121)(v42);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v42, v328, _s16FitnessMarketing14TaskIdentifierOMa_0);
      v318 = sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E230();
      sub_20C640D18(v42, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      v122 = *MEMORY[0x277D043F0];
      v123 = sub_20C64DF10();
      v124 = *(v123 - 8);
      v316 = *(v124 + 104);
      v317 = v123;
      v314 = v124 + 104;
      (v316)(&v66[v118], v122);
      v125 = *MEMORY[0x277D043E8];
      v126 = sub_20C64DF00();
      v127 = *(v126 - 8);
      v128 = *(v127 + 104);
      v313 = v126;
      v311 = v128;
      v310 = (v127 + 104);
      (v128)(&v66[v119], v125);
      *v120 = &unk_20C658298;
      *(v120 + 1) = 0;
      v129 = *(v114 + 104);
      LODWORD(v320) = *MEMORY[0x277D043B0];
      v321 = (v114 + 104);
      v319 = v129;
      (v129)(v66);
      v130 = *v331;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v130 = sub_20C5F8780(0, v130[2] + 1, 1, v130);
      }

      v132 = v130[2];
      v131 = v130[3];
      if (v132 >= v131 >> 1)
      {
        v130 = sub_20C5F8780(v131 > 1, v132 + 1, 1, v130);
      }

      v130[2] = v132 + 1;
      v133 = *(v336 + 32);
      v308 = ((*(v336 + 80) + 32) & ~*(v336 + 80));
      v307 = *(v336 + 72);
      v134 = v334;
      v336 += 32;
      v309 = v133;
      (v133)(&v308[v130 + v307 * v132], v66, v334);
      v135 = v116[12];
      v136 = v116[16];
      v305 = v116[20];
      v137 = v323;
      v306 = (v323 + v116[24]);
      v138 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC30, &qword_20C658270) + 48);
      v139 = v312;
      v140 = v333;
      v141 = v324;
      *v312 = v333;
      *(v139 + 8) = v141;
      (v322)(v139 + v138, v327, v330);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v139, v328, _s16FitnessMarketing14TaskIdentifierOMa_0);

      sub_20C64E230();
      sub_20C640D18(v139, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      (v316)(v137 + v136, *MEMORY[0x277D04400], v317);
      (v311)(v137 + v305, *MEMORY[0x277D043E0], v313);
      v142 = v315;
      sub_20C63E424(v332, v315, type metadata accessor for BubbleTipFeature);
      v143 = (*(v325 + 80) + 16) & ~*(v325 + 80);
      v144 = (v326 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
      v145 = swift_allocObject();
      sub_20C63FC98(v142, v145 + v143);
      v146 = (v145 + v144);
      *v146 = v140;
      v146[1] = v141;
      v147 = v306;
      *v306 = &unk_20C6582A8;
      v147[1] = v145;
      (v319)(v137, v320, v134);
      v149 = v130[2];
      v148 = v130[3];
      if (v149 >= v148 >> 1)
      {
        v130 = sub_20C5F8780(v148 > 1, v149 + 1, 1, v130);
      }

      v150 = v331;
      v130[2] = v149 + 1;
      (v309)(&v308[v130 + v149 * v307], v323, v134);
      *v150 = v130;
    }

    else
    {
      v215 = v331;
      v216 = v334;
      if ((*v74 & 1) == 0)
      {
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
        v218 = v217[12];
        v219 = v217[16];
        v333 = v217[20];
        v220 = v309;
        v221 = &v309[v217[24]];
        (*(v335 + 16))(v49, v332 + *(v327 + 20), v330);
        swift_storeEnumTagMultiPayload();
        sub_20C63E424(v49, v328, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E230();
        sub_20C640D18(v49, _s16FitnessMarketing14TaskIdentifierOMa_0);
        sub_20C64E170();
        v222 = *MEMORY[0x277D04400];
        v223 = sub_20C64DF10();
        (*(*(v223 - 8) + 104))(&v220[v219], v222, v223);
        v224 = *MEMORY[0x277D043E8];
        v225 = sub_20C64DF00();
        (*(*(v225 - 8) + 104))(&v220[v333], v224, v225);
        *v221 = &unk_20C6582B8;
        *(v221 + 1) = 0;
        (*(v114 + 104))(v220, *MEMORY[0x277D043B0], v216);
        v226 = *v215;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v226 = sub_20C5F8780(0, v226[2] + 1, 1, v226);
        }

        v228 = v226[2];
        v227 = v226[3];
        if (v228 >= v227 >> 1)
        {
          v226 = sub_20C5F8780(v227 > 1, v228 + 1, 1, v226);
        }

        v226[2] = v228 + 1;
        (*(v114 + 32))(v226 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v228, v309, v216);
        *v215 = v226;
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v179 = v319;
    v178 = v320;
    v180 = v311;
    (*(v320 + 32))(v319, v74, v311);
    v181 = sub_20C64D0B0();
    if (v181)
    {
      v182 = v181;
      v183 = [objc_allocWithZone(MEMORY[0x277CEE890]) init];
      v184 = [objc_opt_self() systemGray6Color];
      [v183 setBackgroundColor_];

      v185 = sub_20C64D110();
      v186 = *(v185 + 48);
      v187 = *(v185 + 52);
      swift_allocObject();
      v188 = v182;
      v189 = v183;
      v190 = sub_20C64D100();

      v191 = v308;
      sub_20C64CF60();
      v192 = type metadata accessor for BubbleTipModelWrapper();
      v193 = *(v192 + 48);
      v194 = *(v192 + 52);
      v195 = swift_allocObject();
      *(v195 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel) = 0;
      v196 = *(v335 + 32);
      v197 = v330;
      v196(v195 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_identifier, v191, v330);
      *(v195 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel) = v190;
      sub_20C64CF60();

      (*(v320 + 8))(v319, v180);
      v198 = type metadata accessor for BubbleTipRequestWrapper();
      v199 = *(v198 + 48);
      v200 = *(v198 + 52);
      v201 = swift_allocObject();
      v196(v201 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_identifier, v191, v197);
      *(v201 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_request) = v188;
      v202 = v324;
      sub_20C5E8FFC(v324[2], v324[3]);
      v202[2] = v195;
      v202[3] = v201;
    }

    else
    {
      (*(v178 + 8))(v179, v180);
    }
  }

  else
  {
    v76 = v332;
    v78 = v316;
    v77 = v317;
    v79 = v318;
    (*(v317 + 32))(v316, v74, v318);
    v80 = sub_20C64D0B0();
    if (!v80)
    {
      (*(v77 + 8))(v78, v79);
      return;
    }

    v81 = v80;
    v82 = [v80 originalRequest];
    v83 = [v81 selectedActionIdentifier];
    if (!v83)
    {
      sub_20C64E050();
      v83 = sub_20C64E040();
    }

    v84 = [v82 locateActionWithIdentifier_];

    if (!v84)
    {
      (*(v77 + 8))(v78, v79);

      return;
    }

    v85 = [v84 style];
    if (v85)
    {
      if (v85 != 2)
      {
        (*(v77 + 8))(v78, v79);

        return;
      }

      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v87 = v86[16];
      v325 = v86[12];
      v326 = v87;
      v333 = v86[20];
      v88 = v307;
      v89 = &v307[v86[24]];
      v90 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC28, &qword_20C658248) + 48);
      v91 = [v81 &off_277DA43D8 + 5];
      v92 = sub_20C64E050();
      v94 = v93;

      v95 = v302;
      *v302 = v92;
      *(v95 + 8) = v94;
      (*(v335 + 16))(v95 + v90, v76 + *(v327 + 20), v330);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v95, v328, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E230();
      sub_20C640D18(v95, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      v96 = *MEMORY[0x277D043F0];
      v97 = sub_20C64DF10();
      (*(*(v97 - 8) + 104))(&v88[v326], v96, v97);
      v98 = *MEMORY[0x277D043E8];
      v99 = sub_20C64DF00();
      (*(*(v99 - 8) + 104))(&v88[v333], v98, v99);
      *v89 = &unk_20C658260;
      *(v89 + 1) = 0;
      v100 = v88;
      v101 = v334;
      (*(v336 + 104))(v100, *MEMORY[0x277D043B0], v334);
      v102 = *v331;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_20C5F8780(0, v102[2] + 1, 1, v102);
      }

      v104 = v102[2];
      v103 = v102[3];
      v106 = v317;
      v105 = v318;
      v107 = v316;
      if (v104 >= v103 >> 1)
      {
        v102 = sub_20C5F8780(v103 > 1, v104 + 1, 1, v102);
      }

      (*(v106 + 8))(v107, v105);
      v102[2] = v104 + 1;
      (*(v336 + 32))(v102 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v104, v307, v101);
    }

    else
    {
      v265 = [v84 deepLink];
      if (v265)
      {
        v266 = v303;
        v267 = v265;
        sub_20C64CEF0();

        v268 = 0;
        v269 = v305;
        v270 = v304;
      }

      else
      {
        v268 = 1;
        v269 = v305;
        v270 = v304;
        v266 = v303;
      }

      v271 = v306;
      (*(v269 + 56))(v266, v268, 1, v306);
      sub_20C63E3B4(v266, v270);
      if ((*(v269 + 48))(v270, 1, v271))
      {
        (*(v77 + 8))(v78, v79);

        sub_20C5DBFC4(v270, &qword_27C7CF080, &qword_20C654360);
        return;
      }

      v272 = v270;
      v273 = v300;
      (*(v269 + 16))(v300, v272, v271);
      sub_20C5DBFC4(v272, &qword_27C7CF080, &qword_20C654360);
      v274 = v76;
      v333 = sub_20C64CEC0();
      v326 = v275;
      (*(v269 + 8))(v273, v271);
      v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF830, &qword_20C656700);
      v277 = v276[16];
      v323 = v276[12];
      v324 = v277;
      v325 = v276[20];
      v278 = v301;
      v279 = &v301[v276[24]];
      v280 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CFC28, &qword_20C658248) + 48);
      v281 = [v81 selectedActionIdentifier];
      v282 = sub_20C64E050();
      v284 = v283;

      v285 = v299;
      *v299 = v282;
      *(v285 + 8) = v284;
      (*(v335 + 16))(v285 + v280, v274 + *(v327 + 20), v330);
      swift_storeEnumTagMultiPayload();
      sub_20C63E424(v285, v328, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64019C(&qword_281105F48, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E230();
      sub_20C640D18(v285, _s16FitnessMarketing14TaskIdentifierOMa_0);
      sub_20C64E170();
      v286 = *MEMORY[0x277D043F0];
      v287 = sub_20C64DF10();
      (*(*(v287 - 8) + 104))(v324 + v278, v286, v287);
      v288 = *MEMORY[0x277D043E8];
      v289 = sub_20C64DF00();
      (*(*(v289 - 8) + 104))(&v278[v325], v288, v289);
      v290 = swift_allocObject();
      v291 = v334;
      v292 = v326;
      *(v290 + 16) = v333;
      *(v290 + 24) = v292;
      *v279 = &unk_20C658258;
      *(v279 + 1) = v290;
      (*(v336 + 104))(v278, *MEMORY[0x277D043B0], v291);
      v102 = *v331;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_20C5F8780(0, v102[2] + 1, 1, v102);
      }

      v294 = v102[2];
      v293 = v102[3];
      v296 = v317;
      v295 = v318;
      v297 = v316;
      if (v294 >= v293 >> 1)
      {
        v102 = sub_20C5F8780(v293 > 1, v294 + 1, 1, v102);
      }

      (*(v296 + 8))(v297, v295);
      v102[2] = v294 + 1;
      (*(v336 + 32))(v102 + ((*(v336 + 80) + 32) & ~*(v336 + 80)) + *(v336 + 72) * v294, v301, v291);
    }

    *v331 = v102;
  }
}