uint64_t type metadata accessor for OnboardingState()
{
  result = qword_2810E1FE0;
  if (!qword_2810E1FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B64284C()
{
  sub_24B6428D8();
  if (v0 <= 0x3F)
  {
    sub_24B642930();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B6428D8()
{
  if (!qword_2810E1D00)
  {
    v0 = sub_24B696908();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E1D00);
    }
  }
}

void sub_24B642930()
{
  if (!qword_2810E1D78[0])
  {
    type metadata accessor for OnboardingModality();
    v0 = sub_24B696938();
    if (!v1)
    {
      atomic_store(v0, qword_2810E1D78);
    }
  }
}

uint64_t sub_24B64299C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OnboardingArtwork();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + a3[8] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = sub_24B695648();
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[10];

    return v18(v19, a2, v17);
  }
}

uint64_t type metadata accessor for OnboardingArtwork()
{
  result = qword_2810E1E78;
  if (!qword_2810E1E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for OnboardingModality()
{
  result = qword_2810E1DC0;
  if (!qword_2810E1DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B642C0C()
{
  type metadata accessor for OnboardingArtwork();
  if (v0 <= 0x3F)
  {
    sub_24B642DE8();
    if (v1 <= 0x3F)
    {
      sub_24B642F0C();
      if (v2 <= 0x3F)
      {
        sub_24B695648();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B642CD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24B696938();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24B642D2C()
{
  sub_24B642CD8(319, &qword_2810E2020, MEMORY[0x277D09D68]);
  if (v0 <= 0x3F)
  {
    sub_24B642CD8(319, &qword_2810E2038, MEMORY[0x277CC9260]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24B642DE8()
{
  if (!qword_2810E1FF0)
  {
    sub_24B695728();
    sub_24B642E7C(&qword_2810E2008, MEMORY[0x277D09E00]);
    v0 = sub_24B695798();
    if (!v1)
    {
      atomic_store(v0, &qword_2810E1FF0);
    }
  }
}

uint64_t sub_24B642E7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B642EC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24B642F0C()
{
  if (!qword_2810E1E48[0])
  {
    type metadata accessor for OnboardingArtwork();
    v0 = sub_24B696938();
    if (!v1)
    {
      atomic_store(v0, qword_2810E1E48);
    }
  }
}

uint64_t type metadata accessor for OnboardingDetail()
{
  result = qword_2810E1F30;
  if (!qword_2810E1F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B642FB0()
{
  sub_24B6430C4(319, qword_2810E1E48, type metadata accessor for OnboardingArtwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24B642DE8();
    if (v1 <= 0x3F)
    {
      sub_24B6430C4(319, &qword_2810E1D10, type metadata accessor for OnboardingModality, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_24B643128();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24B6430C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_24B643128()
{
  if (!qword_2810E1D18[0])
  {
    v0 = sub_24B696938();
    if (!v1)
    {
      atomic_store(v0, qword_2810E1D18);
    }
  }
}

uint64_t sub_24B64318C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OnboardingArtwork();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v17 = sub_24B695648();
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + a4[10];

    return v18(v19, a2, a2, v17);
  }

  return result;
}

uint64_t OnboardingState.init(selectedModalityIdentifiers:presentedModality:isPresentingModalityPickerDismissalConfirmationAlert:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v8 = type metadata accessor for OnboardingState();
  v9 = *(v8 + 20);
  v10 = type metadata accessor for OnboardingModality();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  *a4 = a1;
  result = sub_24B643408(a2, &a4[v9]);
  a4[*(v8 + 24)] = a3;
  return result;
}

uint64_t sub_24B643408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B643478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B643580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24B643694()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B6436D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v7 = *(a3 + 16);
    type metadata accessor for OnboardingArtwork();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v10 = sub_24B695708();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 48);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24B6437DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v6 = *(a4 + 16);
    type metadata accessor for OnboardingArtwork();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v8 = sub_24B695708();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 48);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_24B6438CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3B8, &unk_24B697580);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  type metadata accessor for OnboardingModality();
  type metadata accessor for TVOnboardingModalityCardButton();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  swift_getOpaqueTypeConformance2();
  sub_24B64E7A4(&qword_27F02D3D8);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality);
  swift_getOpaqueTypeConformance2();
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  sub_24B64E3F8();
  sub_24B696538();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964C8();
  swift_getWitnessTable();
  sub_24B695888();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0);
  sub_24B64E44C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  sub_24B64E530();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  sub_24B6959A8();
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600);
  swift_getWitnessTable();
  sub_24B64E750();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  sub_24B696938();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B64E7A4(&qword_27F02D4B0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  sub_24B695C78();
  sub_24B6963E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4C0, &qword_24B697610);
  swift_getOpaqueTypeConformance2();
  sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B64E810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4D8, &qword_24B697618);
  sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4E8, &unk_24B697620);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4F0, &unk_24B69A260);
  sub_24B65C890(&qword_27F02D4F8, &qword_27F02D4F0, &unk_24B69A260);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6446D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v41 = *(*v3 + 80);
  v4 = (v41 + 32) & ~v41;
  v5 = *(*v3 + 64);
  v6 = type metadata accessor for OnboardingModality();
  v43 = *(*(v6 - 1) + 64);
  v40 = *(*(v6 - 1) + 80);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + v4 + 16);
  sub_24B654DC8();
  v10 = *(v0 + v4 + 32);

  v11 = *(v0 + v4 + 40);

  v12 = *(v0 + v4 + 56);

  v13 = *(v0 + v4 + 72);

  v14 = *(v0 + v4 + 96);

  v15 = *(v0 + v4 + 104);

  v16 = v3[14];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v17 = sub_24B695708();
  (*(*(v17 - 8) + 8))(v0 + v4 + v16, v17);
  v44 = v0;
  v42 = (v4 + v5 + v40) & ~v40;
  v18 = v0 + v42;
  v19 = sub_24B695718();
  v20 = *(v19 - 8);
  v39 = *(v20 + 48);
  if (!v39(v18, 1, v19))
  {
    (*(v20 + 8))(v18, v19);
  }

  v21 = swift_checkMetadataState();
  v22 = *(v21 + 20);
  v23 = sub_24B695658();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (!v25(v18 + v22, 1, v23))
  {
    (*(v24 + 8))(v18 + v22, v23);
  }

  v26 = v18 + v6[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_24B695728();
    (*(*(v27 - 8) + 8))(v26, v27);
  }

  else
  {
    v28 = *(v26 + 8);
  }

  v29 = v18 + v6[6];
  if (!(*(*(v21 - 8) + 48))(v29, 1, v21))
  {
    if (!v39(v29, 1, v19))
    {
      (*(v20 + 8))(v29, v19);
    }

    v30 = *(v21 + 20);
    if (!v25(v29 + v30, 1, v23))
    {
      (*(v24 + 8))(v29 + v30, v23);
    }
  }

  v31 = v18 + v6[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_24B695728();
    (*(*(v32 - 8) + 8))(v31, v32);
  }

  else
  {
    v33 = *(v31 + 8);
  }

  v34 = *(v18 + v6[8] + 8);

  v35 = v6[10];
  v36 = sub_24B695648();
  v37 = *(*(v36 - 8) + 8);
  v37(v18 + v35, v36);
  v37(v18 + v6[11], v36);

  return MEMORY[0x2821FE8E8](v44, v42 + v43, v41 | v40 | 7);
}

uint64_t sub_24B644BB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B695B18();
  *a1 = result;
  return result;
}

uint64_t sub_24B644BE4(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B695B28();
}

uint64_t sub_24B644C50()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B644C88()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v5);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = *(v0 + v5 + 16);
  sub_24B654DC8();
  v11 = *(v7 + 4);

  v12 = *(v7 + 5);

  v13 = *(v7 + 7);

  v14 = *(v7 + 9);

  v15 = *(v7 + 12);

  v16 = *(v7 + 13);

  v17 = v3[14];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v18 = sub_24B695708();
  (*(*(v18 - 8) + 8))(&v7[v17], v18);
  v19 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v4 | 7);
}

uint64_t sub_24B644E10()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v51 = *(*v3 + 80);
  v4 = (v51 + 32) & ~v51;
  v5 = *(*v3 + 64);
  v6 = type metadata accessor for OnboardingModality();
  v50 = *(*(v6 - 1) + 80);
  v7 = (v4 + v5 + v50) & ~v50;
  v48 = *(*(v6 - 1) + 64);
  v8 = sub_24B6956B8();
  v53 = *(v8 - 8);
  v54 = v8;
  v47 = *(v53 + 80);
  v52 = *(v53 + 64);
  v9 = (v0 + v4);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  sub_24B654DC8();
  v13 = v9[4];

  v14 = v9[5];

  v15 = v9[7];

  v16 = v9[9];

  v17 = v9[12];

  v18 = v9[13];

  v19 = v3[14];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v20 = sub_24B695708();
  (*(*(v20 - 8) + 8))(v9 + v19, v20);
  v55 = v0;
  v49 = v7;
  v21 = v0 + v7;
  v22 = sub_24B695718();
  v23 = *(v22 - 8);
  v46 = *(v23 + 48);
  if (!v46(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  v45 = v23;
  v24 = swift_checkMetadataState();
  v25 = *(v24 + 20);
  v26 = sub_24B695658();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (!v28(v21 + v25, 1, v26))
  {
    (*(v27 + 8))(v21 + v25, v26);
  }

  v29 = v21 + v6[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_24B695728();
    (*(*(v30 - 8) + 8))(v29, v30);
  }

  else
  {
    v31 = *(v29 + 8);
  }

  v32 = v21 + v6[6];
  if (!(*(*(v24 - 8) + 48))(v32, 1, v24))
  {
    if (!v46(v32, 1, v22))
    {
      (*(v45 + 8))(v32, v22);
    }

    v33 = *(v24 + 20);
    if (!v28(v32 + v33, 1, v26))
    {
      (*(v27 + 8))(v32 + v33, v26);
    }
  }

  v34 = v21 + v6[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_24B695728();
    (*(*(v35 - 8) + 8))(v34, v35);
  }

  else
  {
    v36 = *(v34 + 8);
  }

  v37 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + v47 + 16) & ~v47;
  v39 = *(v21 + v6[8] + 8);

  v40 = v6[10];
  v41 = sub_24B695648();
  v42 = *(*(v41 - 8) + 8);
  v42(v21 + v40, v41);
  v42(v21 + v6[11], v41);
  v43 = *(v55 + v37 + 8);

  (*(v53 + 8))(v55 + v38, v54);

  return MEMORY[0x2821FE8E8](v55, v38 + v52, v51 | v50 | v47 | 7);
}

uint64_t sub_24B6453C0@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_24B645410()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B645448()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B645480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a3 + 16);
    type metadata accessor for OnboardingArtwork();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v9 = sub_24B695708();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24B645570(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v6 = *(a4 + 16);
    type metadata accessor for OnboardingArtwork();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v8 = sub_24B695708();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_24B64565C(uint64_t *a1)
{
  v1 = *a1;
  sub_24B6959A8();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D970, &qword_24B6981B0);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  sub_24B695888();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D978, &qword_24B6981B8);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D980, &unk_24B6981C0);
  sub_24B65C890(qword_27F02D988, &qword_27F02D980, &unk_24B6981C0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  sub_24B695C78();
  sub_24B6963E8();
  swift_getOpaqueTypeConformance2();
  sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6459C8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24B645A18()
{
  v1 = type metadata accessor for OnboardingModality();
  v31 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 7);

  v30 = (v31 + 64) & ~v31;
  v5 = &v0[v30];
  v6 = sub_24B695718();
  v7 = *(v6 - 8);
  v28 = *(v7 + 48);
  if (!v28(&v0[v30], 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v26 = v7;
  v8 = type metadata accessor for OnboardingArtwork();
  v9 = *(v8 + 20);
  v10 = sub_24B695658();
  v11 = *(v10 - 8);
  v27 = *(v11 + 48);
  if (!v27(&v5[v9], 1, v10))
  {
    (*(v11 + 8))(&v5[v9], v10);
  }

  v25 = v11;
  v12 = &v5[v1[5]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24B695728();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  else
  {
    v14 = *(v12 + 1);
  }

  v15 = &v5[v1[6]];
  if (!(*(*(v8 - 8) + 48))(v15, 1, v8))
  {
    if (!v28(v15, 1, v6))
    {
      (*(v26 + 8))(v15, v6);
    }

    v16 = *(v8 + 20);
    if (!v27(&v15[v16], 1, v10))
    {
      (*(v25 + 8))(&v15[v16], v10);
    }
  }

  v17 = &v5[v1[7]];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_24B695728();
    (*(*(v18 - 8) + 8))(v17, v18);
  }

  else
  {
    v19 = *(v17 + 1);
  }

  v20 = *&v5[v1[8] + 8];

  v21 = v1[10];
  v22 = sub_24B695648();
  v23 = *(*(v22 - 8) + 8);
  v23(&v5[v21], v22);
  v23(&v5[v1[11]], v22);

  return MEMORY[0x2821FE8E8](v0, v30 + v29, v31 | 7);
}

uint64_t sub_24B645E10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OnboardingModality();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_24B645EBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OnboardingModality();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B645F60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for OnboardingModalityCardButton();
  v35 = *(*(v3 - 8) + 80);
  v32 = *(*(v3 - 8) + 64);
  v33 = (v35 + 32) & ~v35;
  v36 = v0;
  v4 = v0 + v33;
  v5 = *(v4 + 8);

  v34 = v3;
  v31 = v4;
  v6 = v4 + *(v3 + 48);
  v7 = sub_24B695718();
  v8 = *(v7 - 8);
  v30 = *(v8 + 48);
  if (!v30(v6, 1, v7))
  {
    (*(v8 + 8))(v6, v7);
  }

  v9 = type metadata accessor for OnboardingArtwork();
  v10 = *(v9 + 20);
  v11 = sub_24B695658();
  v12 = *(v11 - 8);
  v29 = *(v12 + 48);
  if (!v29(v6 + v10, 1, v11))
  {
    (*(v12 + 8))(v6 + v10, v11);
  }

  v13 = type metadata accessor for OnboardingModality();
  v14 = v6 + v13[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24B695728();
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  else
  {
    v16 = *(v14 + 8);
  }

  v17 = v6 + v13[6];
  if (!(*(*(v9 - 8) + 48))(v17, 1, v9))
  {
    if (!v30(v17, 1, v7))
    {
      (*(v8 + 8))(v17, v7);
    }

    v18 = *(v9 + 20);
    if (!v29(v17 + v18, 1, v11))
    {
      (*(v12 + 8))(v17 + v18, v11);
    }
  }

  v19 = v6 + v13[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_24B695728();
    (*(*(v20 - 8) + 8))(v19, v20);
  }

  else
  {
    v21 = *(v19 + 8);
  }

  v22 = *(v6 + v13[8] + 8);

  v23 = v13[10];
  v24 = sub_24B695648();
  v25 = *(*(v24 - 8) + 8);
  v25(v6 + v23, v24);
  v25(v6 + v13[11], v24);
  v26 = *(v31 + *(v34 + 52) + 8);

  v27 = *(v31 + *(v34 + 56) + 8);

  return MEMORY[0x2821FE8E8](v36, v33 + v32, v35 | 7);
}

uint64_t sub_24B646384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B695A58();
  *a1 = result;
  return result;
}

uint64_t sub_24B6463B0(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B695A68();
}

uint64_t sub_24B6463DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02DC88, &qword_24B698660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B646474@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B695A98();
  *a1 = result;
  return result;
}

uint64_t sub_24B6464C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_24B695DA8();
  sub_24B6959A8();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DBF0, &qword_24B698610);
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DBF8, &qword_24B698618);
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC00, &qword_24B698620);
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC08, &qword_24B698628);
  sub_24B6959A8();
  sub_24B66B7C4(&qword_27F02DC10, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02DC18, &qword_27F02DBF0, &qword_24B698610);
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02DC20, &qword_27F02DBF8, &qword_24B698618);
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02DC28, &qword_27F02DC00, &qword_24B698620);
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02DC30, &qword_27F02DC08, &qword_24B698628);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6468BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OnboardingModality();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_24B646968(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OnboardingModality();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B646A0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B695AB8();
  *a1 = result;
  return result;
}

uint64_t sub_24B646A38(uint64_t *a1)
{
  v1 = *a1;

  return sub_24B695AC8();
}

uint64_t sub_24B646A64@<X0>(uint64_t a1@<X8>)
{
  result = sub_24B695AF8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_24B646A98(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_24B695B08();
}

uint64_t sub_24B646AC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF30, &qword_24B698D70);
  sub_24B6959A8();
  sub_24B695988();
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02DF38, &qword_27F02DF30, &qword_24B698D70);
  swift_getWitnessTable();
  sub_24B66F8DC(&qword_27F02DF40, MEMORY[0x277CDD9F8]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DF48, &unk_24B698D78);
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964A8();
  sub_24B695CD8();
  swift_getWitnessTable();
  sub_24B66F8DC(&qword_27F02DF50, MEMORY[0x277CDE0B8]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  sub_24B6959A8();
  swift_getOpaqueTypeConformance2();
  sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B646E60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24B695698();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24B646FEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_24B695698();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_24B6471B0()
{
  v1 = 0x546E6F6974636573;
  if (*v0 != 1)
  {
    v1 = 0x7461507865646E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974696C61646F6DLL;
  }
}

uint64_t sub_24B647218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B676ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B647248()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B647280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a3 + 16);
    type metadata accessor for OnboardingArtwork();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v9 = sub_24B695708();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24B647370(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v6 = *(a4 + 16);
    type metadata accessor for OnboardingArtwork();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
    swift_getFunctionTypeMetadata2();
    v8 = sub_24B695708();
    v9 = *(*(v8 - 8) + 56);
    v10 = v5 + *(a4 + 36);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_24B64745C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E338, &qword_24B69A118);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E340, &qword_24B69A128);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E348, &qword_24B69A130);
  type metadata accessor for OnboardingModalityCardButton();
  sub_24B6959A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B65C890(&qword_27F02E350, &qword_27F02E348, &qword_24B69A130);
  sub_24B696538();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B696678();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  sub_24B64E3F8();
  sub_24B696538();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E330, &qword_24B69A110);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E358, &qword_24B69A138);
  sub_24B6959A8();
  sub_24B696938();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02E360, &qword_27F02E358, &qword_24B69A138);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  sub_24B6959A8();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695888();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E368, &qword_24B69A140);
  sub_24B6959A8();
  sub_24B6959A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E370, &qword_24B69A148);
  swift_getOpaqueTypeConformance2();
  sub_24B65C890(&qword_27F02E378, &qword_27F02E368, &qword_24B69A140);
  swift_getWitnessTable();
  swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E380, &qword_24B69A150);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02E388, &qword_24B69A158);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02DC80, &qword_24B69A160);
  sub_24B68BDF8(&qword_27F02E390, &qword_27F02E388, &qword_24B69A158, sub_24B678B24);
  sub_24B65C890(&qword_27F02DCD8, &qword_27F02DC80, &qword_24B69A160);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B6959A8();
  sub_24B6965B8();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_24B695958();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  sub_24B695C78();
  sub_24B6963E8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4C0, &qword_24B697610);
  swift_getWitnessTable();
  sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B64E810();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4D8, &qword_24B697618);
  sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24B6480C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B695AD8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B648128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24B65F544();
  *a1 = result;
  return result;
}

uint64_t sub_24B648154()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for OnboardingModalityPickerView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = sub_24B695938();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = (v0 + v5);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  sub_24B654DC8();
  v17 = v3[11];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v18 = sub_24B695708();
  (*(*(v18 - 8) + 8))(v13 + v17, v18);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_24B648310()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B648348()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for OnboardingModalityPickerView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(*v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v5;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = *(v0 + v5 + 16);
  sub_24B654DC8();
  v11 = v3[11];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v12 = sub_24B695708();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);
  v13 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_24B6484A0@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  result = type metadata accessor for OnboardingModalityPickerState();
  *a2 = *(*(a1 + *(result + 28)) + 16) > 4uLL;
  return result;
}

uint64_t sub_24B6484E4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for OnboardingModalityPickerView() - 8);
  v45 = *(*v3 + 80);
  v4 = (v45 + 33) & ~v45;
  v5 = *(*v3 + 64);
  v6 = type metadata accessor for OnboardingModality();
  v44 = *(*(v6 - 1) + 80);
  v7 = (v4 + v5 + v44) & ~v44;
  v42 = *(*(v6 - 1) + 64);
  v8 = sub_24B6956B8();
  v47 = *(v8 - 8);
  v48 = v8;
  v41 = *(v47 + 80);
  v46 = *(v47 + 64);
  v9 = (v0 + v4);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  sub_24B654DC8();
  v13 = v3[11];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v14 = sub_24B695708();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v43 = v7;
  v15 = v0 + v7;
  v16 = sub_24B695718();
  v17 = *(v16 - 8);
  v40 = *(v17 + 48);
  if (!v40(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v38 = v17;
  v18 = swift_checkMetadataState();
  v19 = *(v18 + 20);
  v20 = sub_24B695658();
  v21 = *(v20 - 8);
  v39 = *(v21 + 48);
  if (!v39(v15 + v19, 1, v20))
  {
    (*(v21 + 8))(v15 + v19, v20);
  }

  v22 = v15 + v6[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_24B695728();
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  else
  {
    v24 = *(v22 + 8);
  }

  v25 = v15 + v6[6];
  if (!(*(*(v18 - 8) + 48))(v25, 1, v18))
  {
    if (!v40(v25, 1, v16))
    {
      (*(v38 + 8))(v25, v16);
    }

    v26 = *(v18 + 20);
    if (!v39(v25 + v26, 1, v20))
    {
      (*(v21 + 8))(v25 + v26, v20);
    }
  }

  v27 = v15 + v6[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_24B695728();
    (*(*(v28 - 8) + 8))(v27, v28);
  }

  else
  {
    v29 = *(v27 + 8);
  }

  v30 = (v42 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + v41 + 16) & ~v41;
  v32 = *(v15 + v6[8] + 8);

  v33 = v6[10];
  v34 = sub_24B695648();
  v35 = *(*(v34 - 8) + 8);
  v35(v15 + v33, v34);
  v35(v15 + v6[11], v34);
  v36 = *(v0 + v30 + 8);

  (*(v47 + 8))(v0 + v31, v48);

  return MEMORY[0x2821FE8E8](v0, v31 + v46, v45 | v44 | v41 | 7);
}

uint64_t sub_24B648A38()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for OnboardingModalityPickerView() - 8);
  v45 = *(*v3 + 80);
  v4 = (v45 + 32) & ~v45;
  v5 = *(*v3 + 64);
  v6 = type metadata accessor for OnboardingModality();
  v44 = *(*(v6 - 1) + 80);
  v7 = (v4 + v5 + v44) & ~v44;
  v42 = *(*(v6 - 1) + 64);
  v8 = sub_24B6956B8();
  v47 = *(v8 - 8);
  v48 = v8;
  v41 = *(v47 + 80);
  v46 = *(v47 + 64);
  v9 = (v0 + v4);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  sub_24B654DC8();
  v13 = v3[11];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v14 = sub_24B695708();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);
  v43 = v7;
  v15 = v0 + v7;
  v16 = sub_24B695718();
  v17 = *(v16 - 8);
  v40 = *(v17 + 48);
  if (!v40(v15, 1, v16))
  {
    (*(v17 + 8))(v15, v16);
  }

  v38 = v17;
  v18 = swift_checkMetadataState();
  v19 = *(v18 + 20);
  v20 = sub_24B695658();
  v21 = *(v20 - 8);
  v39 = *(v21 + 48);
  if (!v39(v15 + v19, 1, v20))
  {
    (*(v21 + 8))(v15 + v19, v20);
  }

  v22 = v15 + v6[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_24B695728();
    (*(*(v23 - 8) + 8))(v22, v23);
  }

  else
  {
    v24 = *(v22 + 8);
  }

  v25 = v15 + v6[6];
  if (!(*(*(v18 - 8) + 48))(v25, 1, v18))
  {
    if (!v40(v25, 1, v16))
    {
      (*(v38 + 8))(v25, v16);
    }

    v26 = *(v18 + 20);
    if (!v39(v25 + v26, 1, v20))
    {
      (*(v21 + 8))(v25 + v26, v20);
    }
  }

  v27 = v15 + v6[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = sub_24B695728();
    (*(*(v28 - 8) + 8))(v27, v28);
  }

  else
  {
    v29 = *(v27 + 8);
  }

  v30 = (v42 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + v41 + 16) & ~v41;
  v32 = *(v15 + v6[8] + 8);

  v33 = v6[10];
  v34 = sub_24B695648();
  v35 = *(*(v34 - 8) + 8);
  v35(v15 + v33, v34);
  v35(v15 + v6[11], v34);
  v36 = *(v0 + v30 + 8);

  (*(v47 + 8))(v0 + v31, v48);

  return MEMORY[0x2821FE8E8](v0, v31 + v46, v45 | v44 | v41 | 7);
}

uint64_t sub_24B648FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B649028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24B6490A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24B649160(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24B649278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24B64939C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D500, &unk_24B697690);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24B64954C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B64956C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_27F02D2E0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F02D2E0);
    }
  }
}

double OnboardingModalityDetailLayout.headerAspectRatio.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

__n128 OnboardingModalityDetailLayout.bodyContentMargins.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 OnboardingModalityDetailLayout.init(headerAspectRatio:bodyContentMargins:titleToSubtitleSpacing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  result = *a1;
  v6 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v6;
  *(a2 + 48) = a5;
  return result;
}

uint64_t sub_24B649614()
{
  v1 = *v0;
  sub_24B696AF8();
  MEMORY[0x24C246C70](v1);
  return sub_24B696B38();
}

uint64_t sub_24B64965C()
{
  v1 = *v0;
  sub_24B696AF8();
  MEMORY[0x24C246C70](v1);
  return sub_24B696B38();
}

unint64_t sub_24B6496A0()
{
  v1 = 0xD000000000000016;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_24B6496F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24B649EF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24B649728(uint64_t a1)
{
  v2 = sub_24B649A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B649764(uint64_t a1)
{
  v2 = sub_24B649A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityDetailLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D2E8, &qword_24B697100);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v11;
  v12 = v1[6];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B649A38();
  sub_24B696B58();
  *&v17 = v9;
  *(&v17 + 1) = v10;
  v19 = 0;
  type metadata accessor for CGSize();
  sub_24B649DD0(&qword_27F02D2F8);
  sub_24B696AB8();
  if (!v2)
  {
    v17 = v16;
    v18 = v15;
    v19 = 1;
    sub_24B649A8C();
    sub_24B696AB8();
    *&v17 = v12;
    v19 = 2;
    sub_24B649AE0();
    sub_24B696AB8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24B649A38()
{
  result = qword_27F02D2F0;
  if (!qword_27F02D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D2F0);
  }

  return result;
}

unint64_t sub_24B649A8C()
{
  result = qword_27F02D300;
  if (!qword_27F02D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D300);
  }

  return result;
}

unint64_t sub_24B649AE0()
{
  result = qword_27F02D308;
  if (!qword_27F02D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D308);
  }

  return result;
}

uint64_t OnboardingModalityDetailLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D310, &qword_24B697108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B649A38();
  sub_24B696B48();
  if (!v2)
  {
    type metadata accessor for CGSize();
    v19 = 0;
    sub_24B649DD0(&qword_27F02D318);
    sub_24B696A38();
    v11 = v17;
    v19 = 1;
    sub_24B649E14();
    sub_24B696A38();
    v15 = v18;
    v16 = v17;
    v19 = 2;
    sub_24B649E68();
    sub_24B696A38();
    (*(v6 + 8))(v9, v5);
    v13 = v17;
    *a2 = v11;
    v14 = v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = v14;
    *(a2 + 48) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_24B649DD0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B649E14()
{
  result = qword_27F02D320;
  if (!qword_27F02D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D320);
  }

  return result;
}

unint64_t sub_24B649E68()
{
  result = qword_27F02D328;
  if (!qword_27F02D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D328);
  }

  return result;
}

uint64_t sub_24B649EF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024B69B160 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B69B180 == a2 || (sub_24B696AD8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B69B1A0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B696AD8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

BOOL _s17FitnessOnboarding0B20ModalityDetailLayoutV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    return a1[3].f64[0] == a2[3].f64[0];
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24B64A098(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B64A0B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingModalityDetailLayout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingModalityDetailLayout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B64A264()
{
  result = qword_27F02D330;
  if (!qword_27F02D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D330);
  }

  return result;
}

unint64_t sub_24B64A2BC()
{
  result = qword_27F02D338;
  if (!qword_27F02D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D338);
  }

  return result;
}

unint64_t sub_24B64A314()
{
  result = qword_27F02D340;
  if (!qword_27F02D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D340);
  }

  return result;
}

uint64_t sub_24B64A3E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OnboardingArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B64A4AC(a1, a3, &qword_27F02D348, &unk_24B697310);
  v5 = type metadata accessor for OnboardingArtwork();
  return sub_24B64A4AC(a2, a3 + *(v5 + 20), &qword_27F02D350, &unk_24B69A7E0);
}

uint64_t sub_24B64A4AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24B64A514()
{
  if (*v0)
  {
    result = 0x6574616C706D6574;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

uint64_t sub_24B64A564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_24B696AD8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B696AD8();

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

uint64_t sub_24B64A658(uint64_t a1)
{
  v2 = sub_24B64A8D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B64A694(uint64_t a1)
{
  v2 = sub_24B64A8D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D358, &qword_24B697320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B64A8D0();
  sub_24B696B58();
  v11[15] = 0;
  sub_24B695718();
  sub_24B64BB8C(&qword_2810E2030, MEMORY[0x277D09D68]);
  sub_24B696A78();
  if (!v1)
  {
    v9 = *(type metadata accessor for OnboardingArtwork() + 20);
    v11[14] = 1;
    sub_24B695658();
    sub_24B64BB8C(&qword_2810E2048, MEMORY[0x277CC9260]);
    sub_24B696A78();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24B64A8D0()
{
  result = qword_2810E1EA0[0];
  if (!qword_2810E1EA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810E1EA0);
  }

  return result;
}

uint64_t OnboardingArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v28 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D360, &qword_24B697328);
  v27 = *(v29 - 8);
  v11 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v13 = &v24 - v12;
  v14 = type metadata accessor for OnboardingArtwork();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B64A8D0();
  sub_24B696B48();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v19 = v17;
  v20 = v27;
  sub_24B695718();
  v31 = 0;
  sub_24B64BB8C(&qword_27F02D368, MEMORY[0x277D09D68]);
  v21 = v28;
  v22 = v29;
  sub_24B6969F8();
  sub_24B64A4AC(v21, v19, &qword_27F02D348, &unk_24B697310);
  sub_24B695658();
  v30 = 1;
  sub_24B64BB8C(&qword_27F02D370, MEMORY[0x277CC9260]);
  sub_24B6969F8();
  (*(v20 + 8))(v13, v22);
  sub_24B64A4AC(v7, v19 + *(v25 + 20), &qword_27F02D350, &unk_24B69A7E0);
  sub_24B64ACD4(v19, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B64AD38(v19);
}

uint64_t sub_24B64ACD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B64AD38(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OnboardingArtwork.hash(into:)()
{
  v1 = v0;
  v2 = sub_24B695658();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = sub_24B695718();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  sub_24B64A3E0(v1, &v23 - v16, &qword_27F02D348, &unk_24B697310);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    sub_24B696B18();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    sub_24B696B18();
    sub_24B64BB8C(&qword_27F02D378, MEMORY[0x277D09D68]);
    sub_24B6967D8();
    (*(v10 + 8))(v13, v9);
  }

  v18 = type metadata accessor for OnboardingArtwork();
  sub_24B64A3E0(v1 + *(v18 + 20), v8, &qword_27F02D350, &unk_24B69A7E0);
  v20 = v25;
  v19 = v26;
  if ((*(v25 + 48))(v8, 1, v26) == 1)
  {
    return sub_24B696B18();
  }

  v22 = v24;
  (*(v20 + 32))(v24, v8, v19);
  sub_24B696B18();
  sub_24B64BB8C(&qword_27F02D380, MEMORY[0x277CC9260]);
  sub_24B6967D8();
  return (*(v20 + 8))(v22, v19);
}

uint64_t OnboardingArtwork.hashValue.getter()
{
  sub_24B696AF8();
  OnboardingArtwork.hash(into:)();
  return sub_24B696B38();
}

uint64_t sub_24B64B1B0()
{
  sub_24B696AF8();
  OnboardingArtwork.hash(into:)();
  return sub_24B696B38();
}

uint64_t sub_24B64B1F4()
{
  sub_24B696AF8();
  OnboardingArtwork.hash(into:)();
  return sub_24B696B38();
}

BOOL _s17FitnessOnboarding0B7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B695658();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v44 - v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D398, &qword_24B698080);
  v10 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v44 - v11;
  v12 = sub_24B695718();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A0, &unk_24B697530);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v44 - v24;
  v26 = *(v23 + 56);
  v48 = a1;
  sub_24B64A3E0(a1, &v44 - v24, &qword_27F02D348, &unk_24B697310);
  v49 = a2;
  sub_24B64A3E0(a2, &v25[v26], &qword_27F02D348, &unk_24B697310);
  v27 = *(v13 + 48);
  if (v27(v25, 1, v12) != 1)
  {
    sub_24B64A3E0(v25, v20, &qword_27F02D348, &unk_24B697310);
    if (v27(&v25[v26], 1, v12) != 1)
    {
      (*(v13 + 32))(v16, &v25[v26], v12);
      sub_24B64BB8C(&qword_2810E2028, MEMORY[0x277D09D68]);
      v31 = sub_24B6967E8();
      v32 = *(v13 + 8);
      v32(v16, v12);
      v32(v20, v12);
      sub_24B64BB2C(v25, &qword_27F02D348, &unk_24B697310);
      if ((v31 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v13 + 8))(v20, v12);
LABEL_6:
    v28 = &qword_27F02D3A0;
    v29 = &unk_24B697530;
    v30 = v25;
LABEL_14:
    sub_24B64BB2C(v30, v28, v29);
    return 0;
  }

  if (v27(&v25[v26], 1, v12) != 1)
  {
    goto LABEL_6;
  }

  sub_24B64BB2C(v25, &qword_27F02D348, &unk_24B697310);
LABEL_8:
  v33 = *(type metadata accessor for OnboardingArtwork() + 20);
  v34 = v47;
  v35 = *(v46 + 48);
  sub_24B64A3E0(v48 + v33, v47, &qword_27F02D350, &unk_24B69A7E0);
  sub_24B64A3E0(v49 + v33, v34 + v35, &qword_27F02D350, &unk_24B69A7E0);
  v37 = v50;
  v36 = v51;
  v38 = *(v50 + 48);
  if (v38(v34, 1, v51) == 1)
  {
    if (v38(v34 + v35, 1, v36) == 1)
    {
      sub_24B64BB2C(v34, &qword_27F02D350, &unk_24B69A7E0);
      return 1;
    }

    goto LABEL_13;
  }

  v39 = v45;
  sub_24B64A3E0(v34, v45, &qword_27F02D350, &unk_24B69A7E0);
  if (v38(v34 + v35, 1, v36) == 1)
  {
    (*(v37 + 8))(v39, v36);
LABEL_13:
    v28 = &qword_27F02D398;
    v29 = &qword_24B698080;
    v30 = v34;
    goto LABEL_14;
  }

  v41 = v44;
  (*(v37 + 32))(v44, v34 + v35, v36);
  sub_24B64BB8C(&qword_2810E2040, MEMORY[0x277CC9260]);
  v42 = sub_24B6967E8();
  v43 = *(v37 + 8);
  v43(v41, v36);
  v43(v39, v36);
  sub_24B64BB2C(v34, &qword_27F02D350, &unk_24B69A7E0);
  return (v42 & 1) != 0;
}

uint64_t getEnumTagSinglePayload for OnboardingArtwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingArtwork.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24B64BA28()
{
  result = qword_27F02D390;
  if (!qword_27F02D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D390);
  }

  return result;
}

unint64_t sub_24B64BA80()
{
  result = qword_2810E1E90;
  if (!qword_2810E1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E1E90);
  }

  return result;
}

unint64_t sub_24B64BAD8()
{
  result = qword_2810E1E98;
  if (!qword_2810E1E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810E1E98);
  }

  return result;
}

uint64_t sub_24B64BB2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24B64BB8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B64BC0C(char a1)
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](a1 & 1);
  return sub_24B696B38();
}

uint64_t sub_24B64BC54()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D598, "dU");
  v5 = sub_24B65C890(&qword_27F02D5A0, &qword_27F02D598, "dU");

  return MEMORY[0x282130840](v1, v2, v3, v4, v5);
}

uint64_t sub_24B64BCF4()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D638, &qword_24B6977C0);
  sub_24B695828();
  return v2;
}

uint64_t sub_24B64BD50()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D638, &qword_24B6977C0);
  return sub_24B695838();
}

uint64_t sub_24B64BDB0()
{
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D638, &qword_24B6977C0);
  sub_24B695848();
  return v2;
}

uint64_t sub_24B64BE10(uint64_t a1)
{
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
  sub_24B696938();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695878();
  sub_24B695848();
  return v5;
}

uint64_t sub_24B64BED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3D0, &qword_24B697598);
  sub_24B696428();
  return v1;
}

uint64_t sub_24B64BF1C()
{
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D640, &qword_24B6977C8);
  sub_24B696438();
  return v2;
}

uint64_t sub_24B64BF74()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D640, &qword_24B6977C8);
  return sub_24B696448();
}

BOOL sub_24B64BFD0(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_24B64BBD4(*a1, *a2);
}

uint64_t sub_24B64BFE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_24B64BC0C(*v1);
}

uint64_t sub_24B64BFF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_24B64BBE4(a1, *v2);
}

uint64_t sub_24B64C004(uint64_t a1, uint64_t a2)
{
  sub_24B696AF8();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_24B64BBE4(v7, *v2);
  return sub_24B696B38();
}

uint64_t sub_24B64C04C()
{
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  return sub_24B6956E8();
}

uint64_t sub_24B64C0CC(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 16);
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  sub_24B695708();
  sub_24B6956F8();
  return v4;
}

uint64_t sub_24B64C154(uint64_t a1)
{
  v3 = sub_24B695698();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24B696868();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B696848();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D658, &unk_24B6977E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D668, &qword_24B6977F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v33 - v22;
  v33[1] = a1;
  v34 = v1;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B6966D8();
  sub_24B689A78(v23);
  sub_24B64BB2C(v14, &qword_27F02D658, &unk_24B6977E0);
  (*(v16 + 8))(v19, v15);
  v24 = type metadata accessor for OnboardingDetail();
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
  {
    sub_24B64BB2C(v23, &qword_27F02D668, &qword_24B6977F0);
LABEL_5:
    sub_24B6967F8();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    goto LABEL_6;
  }

  v25 = &v23[*(v24 + 28)];
  v27 = *v25;
  v26 = *(v25 + 1);

  sub_24B65B688(v23, type metadata accessor for OnboardingDetail);
  if (!v26)
  {
    goto LABEL_5;
  }

  sub_24B696838();
  sub_24B696828();
  sub_24B696818();

  sub_24B696828();
  sub_24B696858();
  type metadata accessor for LocalizationBundle();
  v28 = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
LABEL_6:
  v31 = v29;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  return sub_24B696878();
}

uint64_t TVOnboardingModalityPickerView.init(store:artworkViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24B695868();
  *(a3 + 24) = v11;
  *(a3 + 40) = v12;
  *(a3 + 56) = v13;
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
  swift_getWitnessTable();
  sub_24B695868();
  *(a3 + 64) = v11;
  *(a3 + 72) = *(&v11 + 1);
  *(a3 + 80) = v12;
  *(a3 + 88) = sub_24B64BED0();
  *(a3 + 96) = v6;
  *(a3 + 104) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *a3 = sub_24B64C754;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  v9 = a3 + *(type metadata accessor for TVOnboardingModalityPickerView() + 48);
  return sub_24B64C04C();
}

uint64_t sub_24B64C754()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t TVOnboardingModalityPickerView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v204 = a2;
  v202 = *(a1 - 8);
  v3 = *(v202 + 64);
  MEMORY[0x28223BE20](a1);
  v200 = v4;
  v201 = v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v203 = v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v195 = v173 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3B0, &qword_24B697578);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v199 = v173 - v12;
  v13 = sub_24B695648();
  v197 = *(v13 - 8);
  v198 = v13;
  v14 = *(v197 + 64);
  MEMORY[0x28223BE20](v13);
  v196 = v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24B695698();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v194 = v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B696868();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v192 = v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3B8, &unk_24B697580);
  v189 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v188 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v208 = type metadata accessor for OnboardingModality();
  v193 = a1;
  v22 = *(a1 + 24);
  v210 = *(a1 + 16);
  v211 = v22;
  v23 = type metadata accessor for TVOnboardingModalityCardButton();
  WitnessTable = swift_getWitnessTable();
  v223 = v23;
  v224 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v223 = v23;
  v224 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v186 = MEMORY[0x277D84F48];
  v28 = sub_24B64E7A4(&qword_27F02D3D8);
  v223 = OpaqueTypeMetadata2;
  v190 = v28;
  v191 = v26;
  v224 = v26;
  v225 = OpaqueTypeConformance2;
  v226 = v28;
  v29 = v28;
  v185 = MEMORY[0x277CDEEB0];
  v30 = swift_getOpaqueTypeMetadata2();
  v223 = OpaqueTypeMetadata2;
  v224 = v26;
  v225 = OpaqueTypeConformance2;
  v226 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v223 = v30;
  v224 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v223 = v30;
  v224 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v207 = MEMORY[0x277CE14C0];
  v36 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  v223 = v35;
  v224 = v36;
  v206 = MEMORY[0x277D09D28];
  v37 = swift_getOpaqueTypeConformance2();
  v223 = v32;
  v224 = v33;
  v225 = v34;
  v226 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v39 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality);
  v223 = v32;
  v224 = v33;
  v225 = v34;
  v226 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v223 = v208;
  v224 = v38;
  v225 = v39;
  v226 = v40;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v41 = sub_24B6964E8();
  v187 = MEMORY[0x277CE1198];
  v42 = swift_getWitnessTable();
  v223 = v41;
  v224 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v44 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v45 = sub_24B64E3F8();
  v223 = v189;
  v224 = &type metadata for OnboardingModalityPickerSectionType;
  v225 = v43;
  v226 = v44;
  v227 = v45;
  sub_24B696538();
  v223 = v41;
  v224 = v42;
  v244 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964C8();
  v183 = MEMORY[0x277CE1138];
  swift_getWitnessTable();
  v46 = sub_24B695888();
  v47 = swift_getWitnessTable();
  v223 = v46;
  v224 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v223 = v46;
  v224 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v223 = v48;
  v224 = v49;
  swift_getOpaqueTypeMetadata2();
  v184 = sub_24B6959A8();
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
  v51 = sub_24B696938();
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v189 = MEMORY[0x277CDF028];
  v55 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0);
  v56 = sub_24B64E44C();
  v223 = v53;
  v224 = MEMORY[0x277CE1350];
  v225 = v54;
  v226 = v55;
  v227 = MEMORY[0x277CE1340];
  v228 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v223 = v52;
  v224 = v57;
  v188 = MEMORY[0x277D09E70];
  v58 = swift_getOpaqueTypeConformance2();
  v243 = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v223 = v50;
  v224 = v51;
  v225 = v58;
  v226 = v59;
  swift_getOpaqueTypeMetadata2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  v61 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  v62 = sub_24B64E530();
  v223 = v61;
  v224 = v62;
  v63 = swift_getOpaqueTypeConformance2();
  v223 = v60;
  v224 = v51;
  v225 = v63;
  v226 = v59;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v64 = sub_24B6959A8();
  v65 = swift_getWitnessTable();
  v66 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600);
  v241 = v65;
  v242 = v66;
  v67 = swift_getWitnessTable();
  v68 = sub_24B64E750();
  v223 = v64;
  v224 = &type metadata for TVServicesButtonStyle;
  v225 = v67;
  v226 = v68;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  v69 = sub_24B6959A8();
  v239 = swift_getWitnessTable();
  v240 = MEMORY[0x277CDFC60];
  v70 = swift_getWitnessTable();
  v223 = v69;
  v224 = v70;
  v71 = swift_getOpaqueTypeMetadata2();
  v223 = v69;
  v224 = v70;
  v72 = swift_getOpaqueTypeConformance2();
  v223 = v71;
  v224 = v51;
  v225 = v72;
  v226 = v59;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  sub_24B6959A8();
  sub_24B696938();
  v237 = v211;
  v238 = MEMORY[0x277CE0880];
  v236 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B695C48();
  v73 = sub_24B6959A8();
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v234 = v74;
  v235 = v75;
  v76 = swift_getWitnessTable();
  v223 = v73;
  v77 = v190;
  v78 = v191;
  v224 = v191;
  v225 = v76;
  v226 = v190;
  v79 = swift_getOpaqueTypeMetadata2();
  v223 = v73;
  v224 = v78;
  v225 = v76;
  v226 = v77;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = sub_24B64E7A4(&qword_27F02D4B0);
  v223 = v79;
  v224 = v78;
  v225 = v80;
  v226 = v81;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4B8, &qword_24B697608);
  v173[1] = sub_24B695C78();
  v82 = sub_24B6963E8();
  v175 = *(v82 - 8);
  v83 = *(v175 + 64);
  MEMORY[0x28223BE20](v82);
  v205 = v173 - v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4C0, &qword_24B697610);
  v223 = v79;
  v224 = v78;
  v225 = v80;
  v226 = v81;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  v232 = v86;
  v233 = v87;
  v173[0] = swift_getWitnessTable();
  v231 = v173[0];
  v88 = swift_getWitnessTable();
  v89 = sub_24B64E810();
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4D8, &qword_24B697618);
  v91 = sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618);
  v223 = v90;
  v224 = v91;
  v92 = swift_getOpaqueTypeConformance2();
  v223 = v82;
  v93 = v82;
  v173[5] = v85;
  v174 = v82;
  v224 = MEMORY[0x277D837D0];
  v225 = v85;
  v94 = MEMORY[0x277CE0BD8];
  v226 = MEMORY[0x277CE0BD8];
  v173[3] = v89;
  v173[4] = v88;
  v227 = v88;
  v228 = v89;
  v95 = v89;
  v229 = v92;
  v173[2] = v92;
  v230 = MEMORY[0x277CE0BC8];
  v96 = swift_getOpaqueTypeMetadata2();
  v190 = *(v96 - 8);
  v97 = *(v190 + 64);
  MEMORY[0x28223BE20](v96);
  v207 = v173 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4E8, &unk_24B697620);
  v223 = v93;
  v224 = MEMORY[0x277D837D0];
  v225 = v85;
  v226 = v94;
  v227 = v88;
  v228 = v95;
  v229 = v92;
  v100 = MEMORY[0x277CE0BC8];
  v230 = MEMORY[0x277CE0BC8];
  v101 = swift_getOpaqueTypeConformance2();
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D4F0, &unk_24B69A260);
  v103 = sub_24B65C890(&qword_27F02D4F8, &qword_27F02D4F0, &unk_24B69A260);
  v223 = v102;
  v224 = v103;
  v104 = swift_getOpaqueTypeConformance2();
  v223 = v96;
  v224 = v99;
  v225 = v94;
  v105 = v208;
  v226 = v208;
  v227 = v101;
  v228 = v104;
  v229 = v100;
  v106 = swift_getOpaqueTypeMetadata2();
  v188 = *(v106 - 8);
  v107 = *(v188 + 64);
  MEMORY[0x28223BE20](v106);
  v206 = v173 - v108;
  v191 = v96;
  v223 = v96;
  v184 = v99;
  v224 = v99;
  v225 = v94;
  v226 = v105;
  v180 = v101;
  v227 = v101;
  v176 = v104;
  v228 = v104;
  v229 = v100;
  v109 = swift_getOpaqueTypeConformance2();
  v223 = v106;
  v224 = v109;
  v110 = swift_getOpaqueTypeMetadata2();
  v186 = *(v110 - 8);
  v111 = *(v186 + 64);
  MEMORY[0x28223BE20](v110);
  v183 = v173 - v112;
  v189 = v106;
  v223 = v106;
  v185 = v109;
  v224 = v109;
  v113 = swift_getOpaqueTypeConformance2();
  v187 = v110;
  v223 = v110;
  v179 = v113;
  v224 = v113;
  v114 = swift_getOpaqueTypeMetadata2();
  v181 = *(v114 - 8);
  v182 = v114;
  v115 = *(v181 + 64);
  v116 = MEMORY[0x28223BE20](v114);
  v177 = v173 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v116);
  v178 = v173 - v118;
  v120 = v210;
  v119 = v211;
  v218 = v210;
  v219 = v211;
  v121 = v209;
  v220 = v209;
  sub_24B6963D8();
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v123 = [objc_opt_self() bundleForClass_];
  v124 = v193;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v221 = sub_24B696878();
  v222 = v125;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696738();

  v215 = v120;
  v216 = v119;
  v217 = v121;
  v212 = v120;
  v213 = v119;
  v214 = v121;
  v126 = v195;
  v127 = v174;
  v128 = v205;
  sub_24B696228();

  (*(v175 + 8))(v128, v127);
  v129 = v124;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v130 = swift_checkMetadataState();
  v131 = (*(*(v130 - 8) + 48))(v126, 1, v130);
  v208 = v130;
  if (v131 == 1)
  {
    sub_24B64BB2C(v126, &qword_27F02D3A8, &qword_24B697570);
    v133 = v197;
    v132 = v198;
    v134 = v199;
    (*(v197 + 56))(v199, 1, 1, v198);
    sub_24B695628();
    if ((*(v133 + 48))(v134, 1, v132) != 1)
    {
      sub_24B64BB2C(v134, &qword_27F02D3B0, &qword_24B697578);
    }
  }

  else
  {
    v136 = v197;
    v135 = v198;
    v137 = v126 + *(v130 + 40);
    v138 = v199;
    (*(v197 + 16))(v199, v137, v198);
    sub_24B65B688(v126, type metadata accessor for OnboardingModality);
    (*(v136 + 56))(v138, 0, 1, v135);
    (*(v136 + 32))(v196, v138, v135);
  }

  v205 = sub_24B695FD8();
  v198 = v140;
  v199 = v139;
  LODWORD(v197) = v141;
  v142 = v201;
  v143 = v202;
  v196 = *(v202 + 16);
  (v196)(v201, v121, v124);
  v195 = sub_24B6968D8();
  v144 = sub_24B6968C8();
  v145 = (*(v143 + 80) + 48) & ~*(v143 + 80);
  v146 = swift_allocObject();
  v147 = MEMORY[0x277D85700];
  v146[2] = v144;
  v146[3] = v147;
  v148 = v211;
  v146[4] = v210;
  v146[5] = v148;
  v202 = *(v143 + 32);
  (v202)(v146 + v145, v142, v129);
  (v196)(v142, v209, v129);
  v149 = sub_24B6968C8();
  v150 = swift_allocObject();
  v150[2] = v149;
  v151 = v210;
  v150[3] = MEMORY[0x277D85700];
  v150[4] = v151;
  v150[5] = v211;
  (v202)(v150 + v145, v142, v129);
  sub_24B6964F8();
  LODWORD(v202) = v225;
  sub_24B64BC54();
  swift_getKeyPath();
  v152 = v203;
  sub_24B696718();

  v201 = v173;
  MEMORY[0x28223BE20](v153);
  v154 = v191;
  LOBYTE(v151) = v197;
  v155 = v205;
  v156 = v199;
  v157 = v207;
  sub_24B696218();

  sub_24B6557C0(v155, v156, v151 & 1);

  sub_24B64BB2C(v152, &qword_27F02D3A8, &qword_24B697570);
  (*(v190 + 8))(v157, v154);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F02D508, &qword_24B69A180);
  v158 = *(sub_24B6959E8() - 8);
  v159 = *(v158 + 72);
  v160 = (*(v158 + 80) + 32) & ~*(v158 + 80);
  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_24B697540;
  sub_24B6959D8();
  v162 = v183;
  v163 = v189;
  v164 = v206;
  MEMORY[0x24C246420](2, v161, v189, v185);

  (*(v188 + 8))(v164, v163);
  v165 = v177;
  v166 = v187;
  sub_24B695FF8();
  (*(v186 + 8))(v162, v166);
  v168 = v181;
  v167 = v182;
  v169 = *(v181 + 16);
  v170 = v178;
  v169(v178, v165, v182);
  v171 = *(v168 + 8);
  v171(v165, v167);
  v169(v204, v170, v167);
  return (v171)(v170, v167);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24B64E3F8()
{
  result = qword_27F02D408;
  if (!qword_27F02D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D408);
  }

  return result;
}

unint64_t sub_24B64E44C()
{
  result = qword_27F02D438;
  if (!qword_27F02D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
    sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0);
    sub_24B65C890(&qword_27F02D440, &qword_27F02D448, &qword_24B6975D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D438);
  }

  return result;
}

unint64_t sub_24B64E530()
{
  result = qword_27F02D460;
  if (!qword_27F02D460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
    sub_24B64E5E8();
    sub_24B65C890(&qword_27F02D488, &qword_27F02D490, &qword_24B69A3D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D460);
  }

  return result;
}

unint64_t sub_24B64E5E8()
{
  result = qword_27F02D468;
  if (!qword_27F02D468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D470, &qword_24B6975E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
    sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0);
    sub_24B64E44C();
    swift_getOpaqueTypeConformance2();
    sub_24B65C890(&qword_27F02D478, &qword_27F02D480, &unk_24B6975F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D468);
  }

  return result;
}

unint64_t sub_24B64E750()
{
  result = qword_27F02D4A8;
  if (!qword_27F02D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D4A8);
  }

  return result;
}

uint64_t sub_24B64E7A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B64E810()
{
  result = qword_27F02D4D0;
  if (!qword_27F02D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D4D0);
  }

  return result;
}

uint64_t sub_24B64E864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v202 = a1;
  v198 = a4;
  v204 = a2;
  v205 = a3;
  v201 = type metadata accessor for TVOnboardingModalityPickerView();
  v189 = *(v201 - 8);
  v187 = *(v189 + 64);
  MEMORY[0x28223BE20](v201);
  v188 = &v160 - v4;
  v186 = sub_24B695D98();
  v185 = *(v186 - 8);
  v5 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v184 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for OnboardingModality();
  v162 = *(v199 - 8);
  v7 = *(v162 + 64);
  MEMORY[0x28223BE20](v199);
  v163 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3B8, &unk_24B697580);
  v193 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v196 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v9 = type metadata accessor for TVOnboardingModalityCardButton();
  WitnessTable = swift_getWitnessTable();
  v207 = v9;
  v208 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v207 = v9;
  v208 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v195 = MEMORY[0x277D84F48];
  v14 = sub_24B64E7A4(&qword_27F02D3D8);
  v207 = OpaqueTypeMetadata2;
  v208 = v12;
  v203 = v12;
  v209 = OpaqueTypeConformance2;
  v210 = v14;
  v15 = v14;
  v200 = v14;
  v194 = MEMORY[0x277CDEEB0];
  v16 = swift_getOpaqueTypeMetadata2();
  v207 = OpaqueTypeMetadata2;
  v208 = v12;
  v209 = OpaqueTypeConformance2;
  v210 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v207 = v16;
  v208 = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v207 = v16;
  v208 = v17;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v192 = MEMORY[0x277CE14C0];
  v22 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  v207 = v21;
  v208 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v207 = v18;
  v208 = v19;
  v209 = v20;
  v210 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v25 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality);
  v207 = v18;
  v208 = v19;
  v209 = v20;
  v210 = v23;
  v26 = swift_getOpaqueTypeConformance2();
  v207 = v199;
  v208 = v24;
  v209 = v25;
  v210 = v26;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v27 = sub_24B6964E8();
  v196 = MEMORY[0x277CE1198];
  v28 = swift_getWitnessTable();
  v207 = v27;
  v208 = v28;
  v29 = swift_getOpaqueTypeMetadata2();
  v30 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v31 = sub_24B64E3F8();
  v207 = v193;
  v208 = &type metadata for OnboardingModalityPickerSectionType;
  v209 = v29;
  v210 = v30;
  v211 = v31;
  sub_24B696538();
  v207 = v27;
  v208 = v28;
  v213 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_24B6964C8();
  swift_getWitnessTable();
  v32 = sub_24B695888();
  v33 = swift_getWitnessTable();
  v207 = v32;
  v208 = v33;
  v34 = swift_getOpaqueTypeMetadata2();
  v207 = v32;
  v208 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v207 = v34;
  v208 = v35;
  swift_getOpaqueTypeMetadata2();
  v193 = sub_24B6959A8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
  v37 = sub_24B696938();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v41 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0);
  v42 = sub_24B64E44C();
  v207 = v39;
  v208 = MEMORY[0x277CE1350];
  v209 = v40;
  v210 = v41;
  v211 = MEMORY[0x277CE1340];
  v212 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v207 = v38;
  v208 = v43;
  v44 = swift_getOpaqueTypeConformance2();
  v206[13] = swift_getWitnessTable();
  v45 = swift_getWitnessTable();
  v207 = v36;
  v208 = v37;
  v209 = v44;
  v210 = v45;
  swift_getOpaqueTypeMetadata2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  v48 = sub_24B64E530();
  v207 = v47;
  v208 = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v207 = v46;
  v208 = v37;
  v209 = v49;
  v210 = v45;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v50 = sub_24B6959A8();
  v51 = swift_getWitnessTable();
  v52 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600);
  v206[11] = v51;
  v206[12] = v52;
  v53 = swift_getWitnessTable();
  v54 = sub_24B64E750();
  v207 = v50;
  v208 = &type metadata for TVServicesButtonStyle;
  v209 = v53;
  v210 = v54;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964E8();
  v55 = sub_24B6959A8();
  v206[9] = swift_getWitnessTable();
  v206[10] = MEMORY[0x277CDFC60];
  v56 = swift_getWitnessTable();
  v207 = v55;
  v208 = v56;
  v57 = swift_getOpaqueTypeMetadata2();
  v207 = v55;
  v208 = v56;
  v58 = swift_getOpaqueTypeConformance2();
  v207 = v57;
  v208 = v37;
  v209 = v58;
  v210 = v45;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  v59 = sub_24B696688();
  v60 = swift_getWitnessTable();
  v171 = v59;
  v170 = v60;
  v61 = sub_24B6964E8();
  v173 = *(v61 - 8);
  v62 = *(v173 + 64);
  MEMORY[0x28223BE20](v61);
  v172 = &v160 - v63;
  sub_24B6959A8();
  v64 = sub_24B696938();
  v206[7] = v205;
  v206[8] = MEMORY[0x277CE0880];
  v206[6] = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v169 = v64;
  v167 = v65;
  sub_24B695C48();
  v66 = sub_24B6959A8();
  v178 = *(v66 - 8);
  v67 = *(v178 + 64);
  MEMORY[0x28223BE20](v66);
  v168 = &v160 - v68;
  v174 = v61;
  v69 = swift_getWitnessTable();
  v70 = swift_getWitnessTable();
  v166 = v69;
  v206[4] = v69;
  v206[5] = v70;
  v71 = swift_getWitnessTable();
  v72 = v203;
  v207 = v66;
  v208 = v203;
  v73 = v200;
  v209 = v71;
  v210 = v200;
  v74 = swift_getOpaqueTypeMetadata2();
  v182 = *(v74 - 8);
  v75 = *(v182 + 64);
  MEMORY[0x28223BE20](v74);
  v179 = &v160 - v76;
  v180 = v66;
  v207 = v66;
  v208 = v72;
  v175 = v71;
  v209 = v71;
  v210 = v73;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = sub_24B64E7A4(&qword_27F02D4B0);
  v197 = v74;
  v207 = v74;
  v208 = v72;
  v196 = v77;
  v209 = v77;
  v210 = v78;
  v195 = v78;
  v79 = swift_getOpaqueTypeMetadata2();
  v183 = *(v79 - 8);
  v80 = *(v183 + 64);
  v81 = MEMORY[0x28223BE20](v79);
  v181 = &v160 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = MEMORY[0x28223BE20](v81);
  v176 = &v160 - v84;
  MEMORY[0x28223BE20](v83);
  v177 = &v160 - v85;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4B8, &qword_24B697608);
  v165 = *(v86 - 8);
  v87 = *(v165 + 64);
  MEMORY[0x28223BE20](v86);
  v164 = &v160 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D658, &unk_24B6977E0);
  v90 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89 - 8);
  v92 = &v160 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  v94 = *(v93 - 8);
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v93);
  v97 = &v160 - v96;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D668, &qword_24B6977F0);
  v99 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98 - 8);
  v101 = &v160 - v100;
  v102 = type metadata accessor for OnboardingDetail();
  v103 = *(v102 - 8);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  v106 = &v160 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = v79;
  v193 = v86;
  v192 = sub_24B695C78();
  v191 = *(v192 - 8);
  v107 = *(v191 + 64);
  MEMORY[0x28223BE20](v192);
  v190 = &v160 - v108;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B6966D8();
  sub_24B689A78(v101);
  sub_24B64BB2C(v92, &qword_27F02D658, &unk_24B6977E0);
  (*(v94 + 8))(v97, v93);
  if ((*(v103 + 48))(v101, 1, v102) != 1)
  {
    sub_24B65B620(v101, v106, type metadata accessor for OnboardingDetail);
    v117 = sub_24B695BE8();
    MEMORY[0x28223BE20](v117);
    v118 = v204;
    v119 = v205;
    *(&v160 - 4) = v204;
    *(&v160 - 3) = v119;
    v120 = v202;
    *(&v160 - 2) = v202;
    *(&v160 - 1) = v106;
    v121 = v172;
    v122 = sub_24B6964D8();
    MEMORY[0x28223BE20](v122);
    *(&v160 - 4) = v118;
    *(&v160 - 3) = v119;
    *(&v160 - 2) = v106;
    *(&v160 - 1) = v120;
    sub_24B696648();
    v123 = v168;
    v124 = v174;
    sub_24B696098();
    (*(v173 + 8))(v121, v124);
    v125 = v201;
    v173 = sub_24B64BDB0();
    v207 = v173;
    v208 = v126;
    v209 = v127;
    v210 = v128;
    v174 = v128;
    v129 = sub_24B64BF1C();
    v161 = v106;
    if (v130)
    {
      v131 = v130;
      v132 = v123;
LABEL_11:
      v206[0] = v129;
      v206[1] = v131;
      v137 = v184;
      sub_24B695D88();
      v138 = v179;
      v139 = v180;
      v140 = v203;
      MEMORY[0x24C246290](&v207, v206, v137, v180, v203, v175, v200);
      (*(v185 + 8))(v137, v186);

      (*(v178 + 8))(v132, v139);
      v207 = sub_24B64BCF4();
      v208 = v141;
      v142 = v189;
      v143 = v188;
      (*(v189 + 16))(v188, v120, v125);
      v144 = (*(v142 + 80) + 32) & ~*(v142 + 80);
      v145 = swift_allocObject();
      v146 = v205;
      *(v145 + 16) = v204;
      *(v145 + 24) = v146;
      (*(v142 + 32))(v145 + v144, v143, v125);
      v147 = v176;
      v110 = v197;
      v148 = v140;
      v112 = v196;
      v113 = v195;
      sub_24B6962C8();

      (*(v182 + 8))(v138, v110);
      v207 = v110;
      v208 = v148;
      v209 = v112;
      v210 = v113;
      v205 = swift_getOpaqueTypeConformance2();
      v149 = v183;
      v150 = *(v183 + 16);
      v151 = v177;
      v152 = v194;
      v150(v177, v147, v194);
      v153 = *(v149 + 8);
      v153(v147, v152);
      v154 = v181;
      v150(v181, v151, v152);
      sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
      v116 = v190;
      sub_24B67712C(v154, v152);
      v153(v154, v152);
      v153(v151, v152);
      sub_24B65B688(v161, type metadata accessor for OnboardingDetail);
      v111 = v203;
      goto LABEL_12;
    }

    sub_24B64BC54();
    swift_getKeyPath();
    sub_24B696718();

    if (*(v206[0] + 16))
    {
      v133 = *(v206[0] + 40);

      if (*(v133 + 16))
      {
        v132 = v123;
        v134 = v163;
        sub_24B65B404(v133 + ((*(v162 + 80) + 32) & ~*(v162 + 80)), v163);

        v135 = (v134 + *(v199 + 32));
        v136 = *v135;
        v131 = v135[1];

        sub_24B65B688(v134, type metadata accessor for OnboardingModality);
        v129 = v136;
        goto LABEL_11;
      }

      v132 = v123;
    }

    else
    {
      v132 = v123;
    }

    v129 = 0;
    v131 = 0;
    goto LABEL_11;
  }

  sub_24B64BB2C(v101, &qword_27F02D668, &qword_24B6977F0);
  v109 = v164;
  sub_24B695908();
  v110 = v197;
  v111 = v203;
  v207 = v197;
  v208 = v203;
  v112 = v196;
  v113 = v195;
  v209 = v196;
  v210 = v195;
  swift_getOpaqueTypeConformance2();
  sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  v114 = v190;
  v115 = v193;
  sub_24B677224(v109, v194, v193);
  (*(v165 + 8))(v109, v115);
  v116 = v114;
LABEL_12:
  v207 = v110;
  v208 = v111;
  v209 = v112;
  v210 = v113;
  v155 = swift_getOpaqueTypeConformance2();
  v156 = sub_24B65C890(&qword_27F02D4C8, &qword_27F02D4B8, &qword_24B697608);
  v206[2] = v155;
  v206[3] = v156;
  v157 = v192;
  swift_getWitnessTable();
  v158 = v191;
  (*(v191 + 16))(v198, v116, v157);
  return (*(v158 + 8))(v116, v157);
}

uint64_t sub_24B6502EC@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X2>, void (*a3)(void, void, void)@<X3>, uint64_t a4@<X8>)
{
  v178 = a2;
  v167 = a1;
  v171 = a4;
  v170 = sub_24B695D98();
  v169 = *(v170 - 8);
  v5 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v168 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  v147 = a3;
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
  v8 = sub_24B696938();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v12 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0);
  v13 = sub_24B64E44C();
  v190 = v10;
  v191 = MEMORY[0x277CE1350];
  v192 = v11;
  v193 = v12;
  v194 = MEMORY[0x277CE1340];
  v195 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v190 = v9;
  v191 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  v189[10] = swift_getWitnessTable();
  v180 = MEMORY[0x277D84F48];
  WitnessTable = swift_getWitnessTable();
  v190 = v7;
  v191 = v8;
  v192 = v15;
  v193 = WitnessTable;
  v17 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  v20 = sub_24B64E530();
  v190 = v19;
  v191 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v190 = v18;
  v191 = v8;
  v154 = v8;
  v192 = v21;
  v193 = v17;
  v22 = v17;
  v157 = v17;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v23 = sub_24B6959A8();
  v177 = MEMORY[0x277CE1138];
  v24 = swift_getWitnessTable();
  v25 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600);
  v189[8] = v24;
  v189[9] = v25;
  v148 = MEMORY[0x277CDFAD8];
  v26 = swift_getWitnessTable();
  v27 = sub_24B64E750();
  v190 = v23;
  v191 = &type metadata for TVServicesButtonStyle;
  v192 = v26;
  v193 = v27;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v28 = sub_24B6964E8();
  v166 = *(v28 - 8);
  v29 = *(v166 + 64);
  MEMORY[0x28223BE20](v28);
  v161 = &v131 - v30;
  v155 = v28;
  v31 = sub_24B6959A8();
  v164 = *(v31 - 8);
  v32 = *(v164 + 64);
  MEMORY[0x28223BE20](v31);
  v160 = &v131 - v33;
  v179 = MEMORY[0x277CE1198];
  v153 = swift_getWitnessTable();
  v189[6] = v153;
  v189[7] = MEMORY[0x277CDFC60];
  v34 = swift_getWitnessTable();
  v190 = v31;
  v191 = v34;
  v150 = v31;
  v35 = v34;
  v151 = v34;
  v182 = MEMORY[0x277D09E60];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v158 = OpaqueTypeMetadata2;
  v165 = *(OpaqueTypeMetadata2 - 8);
  v37 = *(v165 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v152 = &v131 - v38;
  v190 = v31;
  v191 = v35;
  v156 = swift_getOpaqueTypeConformance2();
  v190 = OpaqueTypeMetadata2;
  v191 = v8;
  v192 = v156;
  v193 = v22;
  v162 = MEMORY[0x277CDE748];
  v163 = swift_getOpaqueTypeMetadata2();
  v181 = *(v163 - 8);
  v39 = *(v181 + 64);
  v40 = MEMORY[0x28223BE20](v163);
  v149 = &v131 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v159 = &v131 - v42;
  v176 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v175 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v43 = type metadata accessor for OnboardingModality();
  v44 = type metadata accessor for TVOnboardingModalityCardButton();
  v45 = swift_getWitnessTable();
  v190 = v44;
  v191 = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v190 = v44;
  v191 = v45;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = sub_24B64E7A4(&qword_27F02D3D8);
  v190 = v46;
  v191 = v47;
  v192 = v48;
  v193 = v49;
  v50 = swift_getOpaqueTypeMetadata2();
  v190 = v46;
  v191 = v47;
  v192 = v48;
  v193 = v49;
  v51 = swift_getOpaqueTypeConformance2();
  v190 = v50;
  v191 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v190 = v50;
  v191 = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v56 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  v190 = v55;
  v191 = v56;
  v57 = swift_getOpaqueTypeConformance2();
  v190 = v52;
  v191 = v53;
  v192 = v54;
  v193 = v57;
  v58 = swift_getOpaqueTypeMetadata2();
  v59 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality);
  v190 = v52;
  v191 = v53;
  v192 = v54;
  v193 = v57;
  v60 = swift_getOpaqueTypeConformance2();
  v190 = v43;
  v191 = v58;
  v192 = v59;
  v193 = v60;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v61 = sub_24B6964E8();
  v62 = swift_getWitnessTable();
  v190 = v61;
  v191 = v62;
  v63 = swift_getOpaqueTypeMetadata2();
  v64 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v65 = sub_24B64E3F8();
  v190 = v176;
  v191 = &type metadata for OnboardingModalityPickerSectionType;
  v192 = v63;
  v193 = v64;
  v194 = v65;
  sub_24B696538();
  v190 = v61;
  v191 = v62;
  v189[5] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v143 = sub_24B6964C8();
  v142 = swift_getWitnessTable();
  v66 = sub_24B695888();
  v144 = *(v66 - 8);
  v67 = *(v144 + 64);
  MEMORY[0x28223BE20](v66);
  v140 = &v131 - v68;
  v69 = swift_getWitnessTable();
  v190 = v66;
  v191 = v69;
  v70 = v69;
  v136 = v69;
  v71 = swift_getOpaqueTypeMetadata2();
  v132 = v71;
  v139 = *(v71 - 8);
  v72 = *(v139 + 64);
  MEMORY[0x28223BE20](v71);
  v133 = &v131 - v73;
  v190 = v66;
  v191 = v70;
  v138 = swift_getOpaqueTypeConformance2();
  v190 = v71;
  v191 = v138;
  v137 = swift_getOpaqueTypeMetadata2();
  v141 = *(v137 - 8);
  v74 = *(v141 + 64);
  MEMORY[0x28223BE20](v137);
  v135 = &v131 - v75;
  v172 = sub_24B6959A8();
  v180 = *(v172 - 8);
  v76 = *(v180 + 64);
  v77 = MEMORY[0x28223BE20](v172);
  v179 = (&v131 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v77);
  v175 = &v131 - v79;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D678, &qword_24B697848);
  v80 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v82 = &v131 - v81;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3B8, &unk_24B697580);
  v176 = *(v146 - 8);
  v83 = *(v176 + 64);
  v84 = MEMORY[0x28223BE20](v146);
  v173 = &v131 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v174 = &v131 - v86;
  v87 = v178;
  v88 = v147;
  v134 = type metadata accessor for TVOnboardingModalityPickerView();
  v89 = v167;
  sub_24B65192C(v134, v82);
  v177 = sub_24B65C890(&qword_27F02D680, &qword_27F02D678, &qword_24B697848);
  sub_24B696008();
  sub_24B64BB2C(v82, &qword_27F02D678, &qword_24B697848);
  sub_24B695DE8();
  v183 = v87;
  v184 = v88;
  v185 = v89;
  v90 = v140;
  sub_24B6770A8();
  v91 = v133;
  sub_24B6961A8();
  (*(v144 + 8))(v90, v66);
  v92 = v135;
  v93 = v132;
  v94 = v138;
  sub_24B696008();
  (*(v139 + 8))(v91, v93);
  sub_24B696648();
  v190 = v93;
  v191 = v94;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = v137;
  v97 = v179;
  sub_24B696248();
  (*(v141 + 8))(v92, v96);
  v189[3] = v95;
  v189[4] = MEMORY[0x277CDFC60];
  v98 = v172;
  v148 = swift_getWitnessTable();
  v99 = v180;
  v100 = *(v180 + 16);
  v144 = v180 + 16;
  v147 = v100;
  v100(v175, v97, v98);
  v101 = *(v99 + 8);
  v180 = v99 + 8;
  v178 = v101;
  v101(v97, v98);
  v102 = v161;
  v103 = v134;
  sub_24B653510(v134, v161);
  sub_24B696648();
  v104 = v155;
  v105 = v160;
  sub_24B696248();
  (*(v166 + 8))(v102, v104);
  v106 = v152;
  v107 = v150;
  sub_24B696008();
  (*(v164 + 8))(v105, v107);
  v190 = sub_24B64BE10(v103);
  v191 = v108;
  LOBYTE(v192) = v109;
  LOBYTE(v189[0]) = 1;
  v110 = v168;
  sub_24B695D78();
  v111 = swift_checkMetadataState();
  v112 = v149;
  v113 = v158;
  v114 = v156;
  v115 = v157;
  MEMORY[0x24C246290](&v190, v189, v110, v158, v111, v156, v157);
  (*(v169 + 8))(v110, v170);

  (*(v165 + 8))(v106, v113);
  v190 = v113;
  v191 = v111;
  v192 = v114;
  v193 = v115;
  v170 = swift_getOpaqueTypeConformance2();
  v116 = v181;
  v117 = *(v181 + 16);
  v118 = v159;
  v119 = v163;
  v117(v159, v112, v163);
  v120 = *(v116 + 8);
  v181 = v116 + 8;
  v121 = v112;
  v120(v112, v119);
  v122 = v120;
  v123 = v173;
  v124 = v146;
  (*(v176 + 16))(v173, v174, v146);
  v190 = v123;
  v125 = v179;
  v126 = v175;
  v127 = v172;
  v147(v179, v175, v172);
  v191 = v125;
  v117(v121, v118, v119);
  v192 = v121;
  v189[0] = v124;
  v189[1] = v127;
  v189[2] = v119;
  v186 = v145;
  v187 = v177;
  v186 = swift_getOpaqueTypeConformance2();
  v187 = v148;
  v188 = v170;
  sub_24B66D504(&v190, 3uLL, v189);
  v122(v118, v119);
  v128 = v178;
  v178(v126, v127);
  v129 = *(v176 + 8);
  v129(v174, v124);
  v122(v121, v119);
  v128(v179, v127);
  return (v129)(v173, v124);
}

uint64_t sub_24B65192C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24B695B38();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D708, &qword_24B6979A8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  return sub_24B655814(v2, a2 + *(v5 + 44));
}

uint64_t sub_24B651990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v18 = a2;
  v19 = a3;
  v20 = a1;
  v21 = a4;
  v17[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  type metadata accessor for OnboardingModality();
  type metadata accessor for TVOnboardingModalityCardButton();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  swift_getOpaqueTypeConformance2();
  sub_24B64E7A4(&qword_27F02D3D8);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality);
  swift_getOpaqueTypeConformance2();
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v4 = sub_24B6964E8();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v29 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v30 = sub_24B64E3F8();
  sub_24B696538();
  v26 = v4;
  v27 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v6 = sub_24B6964C8();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  sub_24B695B38();
  v22 = v18;
  v23 = v19;
  v24 = v20;
  sub_24B6964B8();
  swift_getWitnessTable();
  v14 = v7[2];
  v14(v13, v11, v6);
  v15 = v7[1];
  v15(v11, v6);
  v14(v21, v13, v6);
  return (v15)(v13, v6);
}

uint64_t sub_24B651F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v61 = a1;
  v62 = a2;
  v67 = a4;
  v63 = a3;
  v60 = type metadata accessor for TVOnboardingModalityPickerView();
  v65 = *(v60 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v60);
  v64 = v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C0, &qword_24B69A120);
  v56 = v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v58 = type metadata accessor for OnboardingModality();
  v6 = type metadata accessor for TVOnboardingModalityCardButton();
  WitnessTable = swift_getWitnessTable();
  v70 = v6;
  v71 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v70 = v6;
  v71 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_24B64E7A4(&qword_27F02D3D8);
  v70 = OpaqueTypeMetadata2;
  v71 = v9;
  v72 = OpaqueTypeConformance2;
  v73 = v11;
  v12 = swift_getOpaqueTypeMetadata2();
  v70 = OpaqueTypeMetadata2;
  v71 = v9;
  v72 = OpaqueTypeConformance2;
  v73 = v11;
  v13 = swift_getOpaqueTypeConformance2();
  v70 = v12;
  v71 = v13;
  v14 = MEMORY[0x277D7EDA0];
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v70 = v12;
  v71 = v13;
  v57 = v14;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v19 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  v70 = v18;
  v71 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v70 = v15;
  v71 = v16;
  v72 = v17;
  v73 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality);
  v70 = v15;
  v71 = v16;
  v72 = v17;
  v73 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v70 = v58;
  v71 = v21;
  v72 = v22;
  v73 = v23;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v24 = sub_24B6964E8();
  v59 = v24;
  v58 = swift_getWitnessTable();
  v70 = v24;
  v71 = v58;
  v25 = swift_getOpaqueTypeMetadata2();
  v55 = v25;
  v26 = sub_24B65C890(&qword_27F02D400, &qword_27F02D3C0, &qword_24B69A120);
  v54 = v26;
  v53 = sub_24B64E3F8();
  v70 = v5;
  v71 = &type metadata for OnboardingModalityPickerSectionType;
  v72 = v25;
  v73 = v26;
  v74 = v53;
  v27 = sub_24B696538();
  v28 = *(v27 - 8);
  v29 = v28[8];
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v52 = v51 - v33;
  v34 = v60;
  v35 = v61;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v36 = sub_24B68B38C(v70);

  v69 = v36;
  v51[1] = swift_getKeyPath();
  v37 = v64;
  v38 = v65;
  v39 = v35;
  v40 = v34;
  (*(v65 + 16))(v64, v39, v34);
  v41 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v42 = swift_allocObject();
  v43 = v62;
  v44 = v63;
  *(v42 + 16) = v62;
  *(v42 + 24) = v44;
  (*(v38 + 32))(v42 + v41, v37, v40);
  v45 = swift_allocObject();
  v45[2] = v43;
  v45[3] = v44;
  v45[4] = sub_24B65BB68;
  v45[5] = v42;
  v70 = v59;
  v71 = v58;
  v50 = swift_getOpaqueTypeConformance2();
  sub_24B696528();
  v68 = v50;
  swift_getWitnessTable();
  v46 = v28[2];
  v47 = v52;
  v46(v52, v32, v27);
  v48 = v28[1];
  v48(v32, v27);
  v46(v67, v47, v27);
  return (v48)(v47, v27);
}

uint64_t sub_24B652640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v20[3] = a4;
  v20[4] = a5;
  v21 = a1;
  v22 = a3;
  v23 = a6;
  v20[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v20[1] = type metadata accessor for OnboardingModality();
  type metadata accessor for TVOnboardingModalityCardButton();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  swift_getOpaqueTypeConformance2();
  sub_24B64E7A4(&qword_27F02D3D8);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v26 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v24 = sub_24B6964E8();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v15 = *(a2 + 8);
  LOBYTE(v24) = *a2;
  WitnessTable = v15;
  v16 = type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B652AE0(&v24, v21, v16, v12);
  v17 = v8[2];
  v17(v14, v12, OpaqueTypeMetadata2);
  v18 = v8[1];
  v18(v12, OpaqueTypeMetadata2);
  v17(v23, v14, OpaqueTypeMetadata2);
  return (v18)(v14, OpaqueTypeMetadata2);
}

uint64_t sub_24B652AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v81 = a1;
  v84 = a2;
  v90 = a4;
  v5 = sub_24B6967C8();
  v88 = *(v5 - 8);
  v89 = v5;
  v6 = *(v88 + 64);
  MEMORY[0x28223BE20](v5);
  v87 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B696758();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24B696778();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v83 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A0, &unk_24B697930);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = v70 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
  v76 = type metadata accessor for OnboardingModality();
  v77 = a3;
  v17 = *(a3 + 16);
  v79 = *(a3 + 24);
  v80 = v17;
  v18 = type metadata accessor for TVOnboardingModalityCardButton();
  WitnessTable = swift_getWitnessTable();
  v99 = v18;
  v100 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v99 = v18;
  v100 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_24B64E7A4(&qword_27F02D3D8);
  v99 = OpaqueTypeMetadata2;
  v100 = v21;
  v101 = OpaqueTypeConformance2;
  v102 = v23;
  v24 = swift_getOpaqueTypeMetadata2();
  v99 = OpaqueTypeMetadata2;
  v100 = v21;
  v101 = OpaqueTypeConformance2;
  v102 = v23;
  v25 = swift_getOpaqueTypeConformance2();
  v99 = v24;
  v100 = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v99 = v24;
  v100 = v25;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v30 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  v99 = v29;
  v100 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v99 = v26;
  v100 = v27;
  v101 = v28;
  v102 = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v33 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality);
  v99 = v26;
  v100 = v27;
  v101 = v28;
  v102 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v99 = v76;
  v100 = v32;
  v101 = v33;
  v102 = v34;
  sub_24B695768();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  v70[1] = swift_getWitnessTable();
  v35 = sub_24B6964E8();
  v73 = v35;
  v78 = *(v35 - 8);
  v36 = *(v78 + 64);
  MEMORY[0x28223BE20](v35);
  v70[0] = v70 - v37;
  v74 = swift_getWitnessTable();
  v99 = v35;
  v100 = v74;
  v38 = swift_getOpaqueTypeMetadata2();
  v75 = *(v38 - 8);
  v76 = v38;
  v39 = *(v75 + 64);
  v40 = MEMORY[0x28223BE20](v38);
  v71 = v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v72 = v70 - v42;
  v43 = sub_24B695698();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v47 = v70 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v82;
  LOBYTE(v32) = *v81;
  v49 = *(v81 + 8);
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v50 = OnboardingModalityPickerSectionType.name(locale:)(v47);
  v52 = v51;
  (*(v44 + 8))(v47, v43);
  sub_24B695BE8();
  v91 = v80;
  v92 = v79;
  v93 = v50;
  v94 = v52;
  v95 = v32;
  v53 = v84;
  v96 = v49;
  v97 = v84;
  v98 = v48;
  v54 = v70[0];
  sub_24B6964D8();
  sub_24B696768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A8, &unk_24B69A4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B697550;
  *(inited + 32) = 1701667182;
  v56 = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v50;
  *(inited + 56) = v52;
  *(inited + 72) = v56;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x666C656873;
  *(inited + 104) = 0xE500000000000000;
  *(inited + 120) = v56;
  *(inited + 128) = 0x6973736572706D69;
  *(inited + 136) = 0xEF7865646E496E6FLL;
  v99 = v53;
  *(inited + 144) = sub_24B696AC8();
  *(inited + 152) = v57;
  *(inited + 168) = v56;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v56;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B68B66C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6B0, &qword_24B697940);
  swift_arrayDestroy();
  sub_24B696748();
  v58 = MEMORY[0x277D84F90];
  sub_24B68B66C(MEMORY[0x277D84F90]);
  sub_24B68B66C(v58);
  v59 = v85;
  sub_24B696788();
  v60 = sub_24B696798();
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  v61 = v87;
  sub_24B6967B8();
  v62 = v71;
  v63 = v73;
  sub_24B696038();
  (*(v88 + 8))(v61, v89);
  sub_24B64BB2C(v59, &qword_27F02D6A0, &unk_24B697930);
  (*(v78 + 8))(v54, v63);
  v65 = v75;
  v64 = v76;
  v66 = *(v75 + 16);
  v67 = v72;
  v66(v72, v62, v76);
  v68 = *(v65 + 8);
  v68(v62, v64);
  v66(v90, v67, v64);
  return (v68)(v67, v64);
}

uint64_t sub_24B653510@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
  sub_24B696938();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0);
  v5 = sub_24B64E44C();
  v30 = MEMORY[0x277CE1340];
  v31 = v5;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  sub_24B64E530();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  sub_24B6964C8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v6 = sub_24B6959A8();
  v23 = swift_getWitnessTable();
  v24 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600);
  v26 = v6;
  v27 = &type metadata for TVServicesButtonStyle;
  v28 = swift_getWitnessTable();
  v29 = sub_24B64E750();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B696688();
  swift_getWitnessTable();
  v7 = sub_24B6964E8();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v20 = v3;
  v21 = v4;
  v22 = v18;
  sub_24B695BD8();
  sub_24B6964D8();
  swift_getWitnessTable();
  v15 = v8[2];
  v15(v14, v12, v7);
  v16 = v8[1];
  v16(v12, v7);
  v15(v19, v14, v7);
  return (v16)(v14, v7);
}

uint64_t sub_24B653A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a5;
  v55 = a4;
  v45 = a2;
  v49 = *(a3 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B6959A8();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v48 = &v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v18 = type metadata accessor for OnboardingArtwork();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_24B696938();
  v53 = *(v51 - 8);
  v23 = *(v53 + 64);
  v24 = MEMORY[0x28223BE20](v51);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v52 = &v45 - v27;
  sub_24B64A3E0(a1, v17, &qword_27F02D670, &qword_24B697840);
  v28 = (*(v19 + 48))(v17, 1, v18);
  v29 = MEMORY[0x277CE0880];
  if (v28 == 1)
  {
    sub_24B64BB2C(v17, &qword_27F02D670, &qword_24B697840);
    (*(v50 + 56))(v26, 1, 1, v9);
    v61 = v55;
    v62 = v29;
    swift_getWitnessTable();
  }

  else
  {
    sub_24B65B620(v17, v22, type metadata accessor for OnboardingArtwork);
    v30 = v55;
    v31 = type metadata accessor for TVOnboardingModalityPickerView();
    v32 = sub_24B64C0CC(v31);
    v33 = a1 + *(type metadata accessor for OnboardingDetail() + 20);
    v34 = v47;
    v32(v22, v33);

    sub_24B6959B8();
    sub_24B695E28();
    v35 = v46;
    sub_24B696178();
    (*(v49 + 8))(v34, a3);
    sub_24B65B688(v22, type metadata accessor for OnboardingArtwork);
    v56 = v30;
    v57 = MEMORY[0x277CE0880];
    swift_getWitnessTable();
    v36 = v50;
    v37 = *(v50 + 16);
    v38 = v48;
    v37(v48, v35, v9);
    v39 = *(v36 + 8);
    v39(v35, v9);
    v37(v35, v38, v9);
    v39(v38, v9);
    v29 = MEMORY[0x277CE0880];
    (*(v36 + 32))(v26, v35, v9);
    (*(v36 + 56))(v26, 0, 1, v9);
  }

  v40 = v52;
  sub_24B6770C0(v26, v52);
  v41 = v53;
  v42 = *(v53 + 8);
  v43 = v51;
  v42(v26, v51);
  v59 = v55;
  v60 = v29;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  (*(v41 + 16))(v54, v40, v43);
  return (v42)(v40, v43);
}

uint64_t sub_24B654034(uint64_t a1, uint64_t *a2)
{
  if (a2[1])
  {
    v2 = *a2;
    v3 = a2[1];
  }

  else
  {
    type metadata accessor for TVOnboardingModalityPickerView();
    sub_24B64BF1C();
  }

  type metadata accessor for TVOnboardingModalityPickerView();

  return sub_24B64BF74();
}

uint64_t sub_24B6540C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4D8, &qword_24B697618);
  sub_24B65C890(&qword_27F02D4E0, &qword_27F02D4D8, &qword_24B697618);
  return sub_24B6956C8();
}

uint64_t sub_24B654178()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_24B6540C8();
}

uint64_t sub_24B654184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v84 = a4;
  v85 = a3;
  v90 = a2;
  v5 = type metadata accessor for TVOnboardingModalityPickerView();
  v92 = *(v5 - 8);
  v72 = *(v92 + 64);
  MEMORY[0x28223BE20](v5);
  v87 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D648, &unk_24B6977D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v64 - v9;
  v11 = sub_24B695698();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24B696868();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4F0, &unk_24B69A260);
  v91 = *(v88 - 8);
  v19 = *(v91 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v64 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4E8, &unk_24B697620);
  v82 = *(v21 - 8);
  v83 = v21;
  v22 = *(v82 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v81 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v80 = &v64 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v79 = &v64 - v28;
  MEMORY[0x28223BE20](v27);
  v89 = &v64 - v29;
  v66 = v18;
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = ObjCClassFromMetadata;
  v77 = objc_opt_self();
  v31 = [v77 bundleForClass_];
  v65 = a1;
  sub_24B64BC54();
  swift_getKeyPath();
  v71 = v14;
  sub_24B696718();

  v93 = sub_24B696878();
  v94 = v32;
  sub_24B6957E8();
  v75 = sub_24B695808();
  v33 = *(v75 - 8);
  v74 = *(v33 + 56);
  v76 = v33 + 56;
  v64 = v10;
  v74(v10, 0, 1, v75);
  v34 = v92;
  v73 = *(v92 + 16);
  v35 = v87;
  v36 = v5;
  v73(v87, a1, v5);
  v37 = *(v34 + 80);
  v67 = (v37 + 32) & ~v37;
  v38 = swift_allocObject();
  v39 = v85;
  *(v38 + 16) = v90;
  *(v38 + 24) = v39;
  v70 = *(v34 + 32);
  v92 = v34 + 32;
  v70(v38 + ((v37 + 32) & ~v37), v35, v36);
  v69 = sub_24B64E810();
  v40 = v86;
  sub_24B696488();
  v68 = sub_24B65C890(&qword_27F02D4F8, &qword_27F02D4F0, &unk_24B69A260);
  v41 = v88;
  sub_24B696028();
  v42 = *(v91 + 8);
  v91 += 8;
  v42(v40, v41);
  sub_24B6967F8();
  v43 = [v77 bundleForClass_];
  v44 = v65;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v93 = sub_24B696878();
  v94 = v45;
  v46 = v64;
  sub_24B6957F8();
  v74(v46, 0, 1, v75);
  v47 = v87;
  v73(v87, v44, v36);
  v48 = v67;
  v49 = swift_allocObject();
  v50 = v85;
  *(v49 + 16) = v90;
  *(v49 + 24) = v50;
  v70(v49 + v48, v47, v36);
  v51 = v86;
  sub_24B696488();
  v52 = v79;
  v53 = v88;
  sub_24B696028();
  v42(v51, v53);
  v55 = v82;
  v54 = v83;
  v56 = *(v82 + 16);
  v57 = v80;
  v58 = v89;
  v56(v80, v89, v83);
  v59 = v81;
  v56(v81, v52, v54);
  v60 = v84;
  v56(v84, v57, v54);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D650, &unk_24B69A270);
  v56(&v60[*(v61 + 48)], v59, v54);
  v62 = *(v55 + 8);
  v62(v52, v54);
  v62(v58, v54);
  v62(v59, v54);
  return (v62)(v57, v54);
}

uint64_t sub_24B6549E4()
{
  v0 = type metadata accessor for OnboardingModalityPickerAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v3, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B654AC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24B695698();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_24B696868();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B696878();
  sub_24B64E810();
  result = sub_24B695FE8();
  *a1 = result;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v11;
  return result;
}

uint64_t sub_24B654C84@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_24B654AC8(a1);
}

uint64_t sub_24B654C90@<X0>(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A8, &qword_24B697570);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v6 = type metadata accessor for OnboardingModality();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  result = sub_24B64BB2C(v5, &qword_27F02D3A8, &qword_24B697570);
  *a1 = v7;
  return result;
}

uint64_t sub_24B654DD0@<X0>(BOOL *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = *(*(type metadata accessor for TVOnboardingModalityPickerView() - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];

  return sub_24B654C90(a1);
}

uint64_t sub_24B654E60()
{
  v0 = type metadata accessor for OnboardingModalityPickerAction();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  sub_24B65B688(v3, type metadata accessor for OnboardingModalityPickerAction);
  sub_24B64BF1C();
  if (!v4)
  {
    sub_24B64BCF4();
  }

  return sub_24B64BD50();
}

uint64_t objectdestroy_10Tm()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v3 = (type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + 2);
  swift_unknownObjectRelease();
  v8 = *&v0[v5];
  v9 = *&v0[v5 + 8];
  v10 = v0[v5 + 16];
  sub_24B654DC8();
  v11 = *&v0[v5 + 32];

  v12 = *&v0[v5 + 40];

  v13 = *&v0[v5 + 56];

  v14 = *&v0[v5 + 72];

  v15 = *&v0[v5 + 96];

  v16 = *&v0[v5 + 104];

  v17 = v3[14];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v18 = sub_24B695708();
  (*(*(v18 - 8) + 8))(&v0[v5 + v17], v18);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_24B6550DC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(*(type metadata accessor for TVOnboardingModalityPickerView() - 8) + 80);
  v4 = v0[2];
  v5 = v0[3];

  return sub_24B654E60();
}

uint64_t sub_24B65517C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37 = a3;
  v38 = a4;
  v41 = a1;
  v42 = a5;
  v6 = type metadata accessor for OnboardingModality();
  v39 = *(v6 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TVOnboardingModalityPickerView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - v11;
  v12 = sub_24B695698();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_24B696868();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D4F0, &unk_24B69A260);
  v17 = *(v16 - 8);
  v35 = v16;
  v36 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v43 = sub_24B696878();
  v44 = v23;
  v24 = v33;
  (*(v9 + 16))(v33, a2, v8);
  v25 = v34;
  sub_24B65B404(v41, v34);
  v26 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v27 = (v10 + *(v39 + 80) + v26) & ~*(v39 + 80);
  v28 = swift_allocObject();
  v29 = v38;
  *(v28 + 16) = v37;
  *(v28 + 24) = v29;
  (*(v9 + 32))(v28 + v26, v24, v8);
  sub_24B65B620(v25, v28 + v27, type metadata accessor for OnboardingModality);
  sub_24B64E810();
  sub_24B696498();
  sub_24B65C890(&qword_27F02D4F8, &qword_27F02D4F0, &unk_24B69A260);
  v30 = v35;
  sub_24B696028();
  return (*(v36 + 8))(v20, v30);
}

uint64_t sub_24B6555E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OnboardingModalityPickerAction();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  sub_24B65B404(a2, v6);
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v6, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B6556D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24B695648();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OnboardingModality();
  (*(v5 + 16))(v8, a1 + *(v9 + 44), v4);
  result = sub_24B695FD8();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_24B6557C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_24B655814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D710, &qword_24B6979B0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  *v11 = sub_24B695BE8();
  *(v11 + 1) = 0x4024000000000000;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D718, &qword_24B6979B8);
  sub_24B6559D0(a1, &v11[*(v12 + 44)]);
  sub_24B696658();
  sub_24B695918();
  v13 = &v11[*(v5 + 44)];
  v14 = v17[1];
  *v13 = v17[0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v17[2];
  sub_24B64A3E0(v11, v9, &qword_27F02D710, &qword_24B6979B0);
  sub_24B64A3E0(v9, a2, &qword_27F02D710, &qword_24B6979B0);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D720, &qword_24B6979C0) + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_24B64BB2C(v11, &qword_27F02D710, &qword_24B6979B0);
  return sub_24B64BB2C(v9, &qword_27F02D710, &qword_24B6979B0);
}

uint64_t sub_24B6559D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v75 = a1;
  v84 = a2;
  v2 = sub_24B695698();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v83 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B696868();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v82 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24B696848();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v72 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_24B695F28();
  v11 = *(v85 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v85);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D728, &qword_24B6979C8);
  v87 = *(v15 - 8);
  v88 = v15;
  v16 = v87[8];
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v89 = &v72 - v19;
  v74 = type metadata accessor for TVOnboardingModalityPickerView();
  *&v101 = sub_24B64C154(v74);
  *(&v101 + 1) = v20;
  v81 = sub_24B64E810();
  v21 = sub_24B695FE8();
  v23 = v22;
  v25 = v24;
  sub_24B695F08();
  sub_24B695EC8();

  v80 = *MEMORY[0x277CE0A10];
  v78 = v11[13];
  v79 = v11 + 13;
  v26 = v14;
  v27 = v14;
  v28 = v85;
  v78(v27);
  v73 = v26;
  sub_24B695F58();

  v29 = v11[1];
  v76 = v11 + 1;
  v77 = v29;
  v29(v26, v28);
  v30 = sub_24B695FC8();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_24B6557C0(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v38 = swift_getKeyPath();
  LOBYTE(v101) = v34 & 1;
  LOBYTE(v96) = 0;
  v39 = sub_24B695D08();
  *&v101 = v30;
  *(&v101 + 1) = v32;
  LOBYTE(v102) = v34 & 1;
  *(&v102 + 1) = v36;
  *&v103 = KeyPath;
  BYTE8(v103) = 0;
  *&v104 = v38;
  *(&v104 + 1) = 2;
  LOBYTE(v105) = 0;
  HIDWORD(v105) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D730, &unk_24B697A30);
  sub_24B65C668();
  sub_24B696028();
  v94[2] = v103;
  v94[3] = v104;
  v95 = v105;
  v94[0] = v101;
  v94[1] = v102;
  sub_24B64BB2C(v94, &qword_27F02D730, &unk_24B697A30);
  sub_24B696838();
  sub_24B696828();
  *&v101 = 5;
  sub_24B696808();
  sub_24B696828();
  sub_24B696858();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [objc_opt_self() bundleForClass_];
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  *&v101 = sub_24B696878();
  *(&v101 + 1) = v42;
  v43 = sub_24B695FE8();
  v45 = v44;
  v47 = v46;
  sub_24B695EB8();
  v48 = v73;
  v49 = v85;
  (v78)(v73, v80, v85);
  sub_24B695F58();

  v77(v48, v49);
  v50 = sub_24B695FC8();
  v82 = v51;
  v83 = v50;
  v53 = v52;
  v85 = v54;

  sub_24B6557C0(v43, v45, v47 & 1);

  v55 = swift_getKeyPath();
  v81 = v55;
  v56 = swift_getKeyPath();
  LOBYTE(v43) = v53 & 1;
  LOBYTE(v101) = v53 & 1;
  LOBYTE(v96) = 0;
  v80 = sub_24B695D28();
  v57 = v86;
  v58 = v87[2];
  v59 = v88;
  v58(v86, v89, v88);
  v60 = v84;
  v58(v84, v57, v59);
  v61 = &v60[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D790, &unk_24B697A60) + 48)];
  v63 = v82;
  v62 = v83;
  *&v96 = v83;
  *(&v96 + 1) = v82;
  LOBYTE(v97) = v43;
  *(&v97 + 1) = *v91;
  DWORD1(v97) = *&v91[3];
  v64 = v85;
  *(&v97 + 1) = v85;
  *&v98 = v55;
  BYTE8(v98) = 0;
  HIDWORD(v98) = *&v90[3];
  *(&v98 + 9) = *v90;
  *&v99 = v56;
  *(&v99 + 1) = 2;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v92;
  BYTE3(v100) = v93;
  LODWORD(v55) = v80;
  HIDWORD(v100) = v80;
  v65 = v96;
  v66 = v97;
  v67 = v98;
  v68 = v99;
  *(v61 + 8) = v100;
  *(v61 + 2) = v67;
  *(v61 + 3) = v68;
  *v61 = v65;
  *(v61 + 1) = v66;
  sub_24B64A3E0(&v96, &v101, &qword_27F02D730, &unk_24B697A30);
  v69 = v88;
  v70 = v87[1];
  v70(v89, v88);
  *&v101 = v62;
  *(&v101 + 1) = v63;
  LOBYTE(v102) = v43;
  *(&v102 + 1) = *v91;
  DWORD1(v102) = *&v91[3];
  *(&v102 + 1) = v64;
  *&v103 = v81;
  BYTE8(v103) = 0;
  *(&v103 + 9) = *v90;
  HIDWORD(v103) = *&v90[3];
  *&v104 = v56;
  *(&v104 + 1) = 2;
  LOBYTE(v105) = 0;
  BYTE3(v105) = v93;
  *(&v105 + 1) = v92;
  HIDWORD(v105) = v55;
  sub_24B64BB2C(&v101, &qword_27F02D730, &unk_24B697A30);
  return (v70)(v86, v69);
}

uint64_t sub_24B6561C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v88 = a6;
  v89 = a5;
  v91 = a4;
  v92 = a9;
  v90 = a3;
  v81 = a1;
  v84 = a7;
  v85 = a8;
  v87 = type metadata accessor for TVOnboardingModalityPickerView();
  v83 = *(v87 - 8);
  v86 = *(v83 + 64);
  MEMORY[0x28223BE20](v87);
  v82 = &v73 - v10;
  v11 = type metadata accessor for OnboardingModality();
  v80 = v11;
  v12 = type metadata accessor for TVOnboardingModalityCardButton();
  WitnessTable = swift_getWitnessTable();
  *&v105 = v12;
  *(&v105 + 1) = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  *&v105 = v12;
  *(&v105 + 1) = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = sub_24B64E7A4(&qword_27F02D3D8);
  *&v105 = OpaqueTypeMetadata2;
  *(&v105 + 1) = v15;
  *&v106 = OpaqueTypeConformance2;
  *(&v106 + 1) = v17;
  v18 = swift_getOpaqueTypeMetadata2();
  *&v105 = OpaqueTypeMetadata2;
  *(&v105 + 1) = v15;
  *&v106 = OpaqueTypeConformance2;
  *(&v106 + 1) = v17;
  v19 = swift_getOpaqueTypeConformance2();
  *&v105 = v18;
  *(&v105 + 1) = v19;
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  *&v105 = v18;
  *(&v105 + 1) = v19;
  v22 = swift_getOpaqueTypeConformance2();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v24 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  *&v105 = v23;
  *(&v105 + 1) = v24;
  v25 = swift_getOpaqueTypeConformance2();
  *&v105 = v20;
  *(&v105 + 1) = v21;
  *&v106 = v22;
  *(&v106 + 1) = v25;
  v26 = swift_getOpaqueTypeMetadata2();
  v79 = v26;
  v27 = sub_24B65BD48(&qword_27F02D3F8, type metadata accessor for OnboardingModality);
  v75 = v27;
  *&v105 = v20;
  *(&v105 + 1) = v21;
  *&v106 = v22;
  *(&v106 + 1) = v25;
  v74 = swift_getOpaqueTypeConformance2();
  *&v105 = v11;
  *(&v105 + 1) = v26;
  *&v106 = v27;
  *(&v106 + 1) = v74;
  v28 = sub_24B695768();
  v77 = *(v28 - 8);
  v78 = v28;
  v29 = *(v77 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v73 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v76 = &v73 - v32;
  v33 = sub_24B695F28();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v73 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v105 = v81;
  *(&v105 + 1) = a2;
  sub_24B64E810();

  v38 = sub_24B695FE8();
  v40 = v39;
  LOBYTE(v27) = v41;
  sub_24B695F68();
  (*(v34 + 104))(v37, *MEMORY[0x277CE0A10], v33);
  sub_24B695F58();

  (*(v34 + 8))(v37, v33);
  v42 = sub_24B695FC8();
  v44 = v43;
  LOBYTE(v21) = v45;

  sub_24B6557C0(v38, v40, v27 & 1);

  LODWORD(v105) = sub_24B695D18();
  v46 = sub_24B695FB8();
  v48 = v47;
  LOBYTE(v40) = v49;
  v51 = v50;
  sub_24B6557C0(v42, v44, v21 & 1);

  LOBYTE(v42) = sub_24B695E48();
  sub_24B695818();
  LOBYTE(v100[0]) = v40 & 1;
  LOBYTE(v95[0]) = 0;
  *&v101 = v46;
  *(&v101 + 1) = v48;
  LOBYTE(v102) = v40 & 1;
  *(&v102 + 1) = v105;
  DWORD1(v102) = *(&v105 + 3);
  *(&v102 + 1) = v51;
  LOBYTE(v103) = v42;
  *(&v103 + 1) = v96;
  DWORD1(v103) = *(&v96 + 3);
  *(&v103 + 1) = v52;
  *v104 = v53;
  *&v104[8] = v54;
  *&v104[16] = v55;
  v104[24] = 0;
  sub_24B6965F8();
  v57 = v82;
  v56 = v83;
  v58 = v87;
  (*(v83 + 16))(v82, v88, v87);
  v59 = v56;
  v60 = (*(v56 + 80) + 40) & ~*(v56 + 80);
  v61 = (v86 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
  v62 = swift_allocObject();
  v63 = v85;
  *(v62 + 2) = v84;
  *(v62 + 3) = v63;
  *(v62 + 4) = v89;
  (*(v59 + 32))(&v62[v60], v57, v58);
  v64 = &v62[v61];
  *v64 = v90 & 1;
  *(v64 + 1) = v91;
  swift_bridgeObjectRetain_n();
  v65 = v73;
  sub_24B695758();
  v66 = v78;
  v67 = swift_getWitnessTable();
  v69 = v76;
  v68 = v77;
  v70 = *(v77 + 16);
  v70(v76, v65, v66);
  v71 = *(v68 + 8);
  v71(v65, v66);
  v98 = v103;
  v99[0] = *v104;
  *(v99 + 9) = *&v104[9];
  v96 = v101;
  v97 = v102;
  v100[0] = &v96;
  v70(v65, v69, v66);
  v100[1] = v65;
  sub_24B64A3E0(&v101, &v105, &qword_27F02D3C8, &qword_24B697590);
  v95[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3C8, &qword_24B697590);
  v95[1] = v66;
  v93 = sub_24B65B7DC();
  v94 = v67;
  sub_24B66D504(v100, 2uLL, v95);
  sub_24B64BB2C(&v101, &qword_27F02D3C8, &qword_24B697590);
  v71(v69, v66);
  v71(v65, v66);
  v107 = v98;
  v108[0] = v99[0];
  *(v108 + 9) = *(v99 + 9);
  v105 = v96;
  v106 = v97;
  return sub_24B64BB2C(&v105, &qword_27F02D3C8, &qword_24B697590);
}

uint64_t sub_24B656A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v176 = a8;
  v177 = a1;
  v172 = a6;
  v173 = a2;
  v170 = a5;
  v174 = a4;
  v167 = a9;
  v168 = a3;
  v10 = sub_24B6967C8();
  v165 = *(v10 - 8);
  v166 = v10;
  v11 = *(v165 + 64);
  MEMORY[0x28223BE20](v10);
  v164 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B696758();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v163 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_24B695618();
  v16 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v159 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B696778();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v161 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A0, &unk_24B697930);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v162 = &v122 - v23;
  v171 = type metadata accessor for OnboardingModality();
  v132 = *(v171 - 8);
  v131 = *(v132 + 64);
  v24 = MEMORY[0x28223BE20](v171);
  v143 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v130 = &v122 - v26;
  v178 = a7;
  v27 = type metadata accessor for TVOnboardingModalityPickerView();
  v128 = *(v27 - 8);
  v129 = *(v128 + 64);
  MEMORY[0x28223BE20](v27);
  v127 = &v122 - v28;
  v29 = type metadata accessor for TVOnboardingModalityCardButton();
  v139 = *(v29 - 8);
  v30 = *(v139 + 64);
  MEMORY[0x28223BE20](v29);
  v137 = &v122 - v31;
  WitnessTable = swift_getWitnessTable();
  v181 = v29;
  v182 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v140 = *(OpaqueTypeMetadata2 - 8);
  v34 = *(v140 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v138 = &v122 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
  v141 = v29;
  v181 = v29;
  v182 = WitnessTable;
  v136 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = sub_24B64E7A4(&qword_27F02D3D8);
  v181 = OpaqueTypeMetadata2;
  v182 = v36;
  v183 = OpaqueTypeConformance2;
  v184 = v38;
  v39 = swift_getOpaqueTypeMetadata2();
  v157 = *(v39 - 8);
  v40 = *(v157 + 64);
  MEMORY[0x28223BE20](v39);
  v154 = &v122 - v41;
  v142 = OpaqueTypeMetadata2;
  v181 = OpaqueTypeMetadata2;
  v182 = v36;
  v134 = OpaqueTypeConformance2;
  v135 = v36;
  v183 = OpaqueTypeConformance2;
  v184 = v38;
  v133 = v38;
  v42 = swift_getOpaqueTypeConformance2();
  v181 = v39;
  v182 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v155 = *(v43 - 8);
  v44 = *(v155 + 64);
  MEMORY[0x28223BE20](v43);
  v153 = &v122 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E0, &qword_24B6975A0);
  v158 = v39;
  v181 = v39;
  v182 = v42;
  v151 = v42;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3E8, &qword_24B6975A8);
  v49 = sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  v181 = v48;
  v182 = v49;
  v50 = swift_getOpaqueTypeConformance2();
  v156 = v43;
  v181 = v43;
  v182 = v46;
  v152 = v46;
  v150 = v47;
  v183 = v47;
  v184 = v50;
  v147 = v50;
  v51 = swift_getOpaqueTypeMetadata2();
  v148 = *(v51 - 8);
  v149 = v51;
  v52 = *(v148 + 64);
  v53 = MEMORY[0x28223BE20](v51);
  v145 = &v122 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v146 = &v122 - v55;
  v175 = sub_24B6956B8();
  v56 = *(v175 - 8);
  v57 = *(v56 + 64);
  v58 = MEMORY[0x28223BE20](v175);
  v124 = &v122 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v122 - v59;
  MEMORY[0x24C245810](v173, v168);
  v61 = v27;
  v122 = v27;
  v62 = v174;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v63 = v177;
  v64 = (v177 + *(v171 + 32));
  v65 = *v64;
  v125 = v64[1];
  v126 = v65;
  v123 = sub_24B67731C(v65, v125, v181);

  v67 = v127;
  v66 = v128;
  (*(v128 + 16))(v127, v62, v61);
  v68 = v130;
  sub_24B65B404(v63, v130);
  v169 = v56;
  v69 = *(v56 + 16);
  v144 = v60;
  v69(&v122 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v175);
  v70 = v66;
  v71 = (*(v66 + 80) + 33) & ~*(v66 + 80);
  v72 = (v129 + *(v132 + 80) + v71) & ~*(v132 + 80);
  v73 = (v131 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = (*(v56 + 80) + v73 + 16) & ~*(v56 + 80);
  v75 = swift_allocObject();
  v76 = v176;
  *(v75 + 16) = v178;
  *(v75 + 24) = v76;
  LOBYTE(v61) = v123;
  LODWORD(v168) = v123 & 1;
  *(v75 + 32) = v123 & 1;
  v77 = *(v70 + 32);
  v78 = v122;
  v77(v75 + v71, v67, v122);
  v79 = v172;
  sub_24B65B620(v68, v75 + v72, type metadata accessor for OnboardingModality);
  v80 = v75 + v73;
  v81 = v175;
  LODWORD(v132) = v170 & 1;
  *v80 = v170 & 1;
  *(v80 + 8) = v79;
  (*(v169 + 32))(v75 + v74, v124, v81);

  v82 = sub_24B64C0CC(v78);
  v84 = v83;
  if (v61)
  {
    v85 = 0;
  }

  else
  {
    sub_24B64BC54();
    swift_getKeyPath();
    sub_24B696718();

    v85 = v181;
  }

  v86 = v143;
  sub_24B65B404(v177, v143);
  v120 = v176;
  v87 = v137;
  sub_24B66D6D4(sub_24B65BD30, v75, v82, v84, v85, v168, v86, v137);
  sub_24B695DE8();
  sub_24B696648();
  v88 = v138;
  v89 = v141;
  sub_24B696208();
  (*(v139 + 8))(v87, v89);
  v181 = sub_24B64BDB0();
  v182 = v90;
  v183 = v91;
  v184 = v92;
  v179 = v126;
  v180 = v125;

  v93 = v154;
  v94 = v142;
  sub_24B696258();

  (*(v140 + 8))(v88, v94);
  v95 = v173;
  sub_24B696768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6A8, &unk_24B69A4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B697550;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v97 = v177;
  v98 = v177 + *(v171 + 40);
  sub_24B695608();
  sub_24B65BD48(&qword_27F02D6B8, MEMORY[0x277CC8B30]);
  v99 = sub_24B696898();
  v100 = MEMORY[0x277D837D0];
  *(inited + 48) = v99;
  *(inited + 56) = v101;
  *(inited + 72) = v100;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  strcpy((inited + 96), "ModalityLockup");
  *(inited + 111) = -18;
  *(inited + 120) = v100;
  *(inited + 128) = 0x6973736572706D69;
  *(inited + 136) = 0xEF7865646E496E6FLL;
  v181 = v95;
  *(inited + 144) = sub_24B696AC8();
  *(inited + 152) = v102;
  *(inited + 168) = v100;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v100;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B68B66C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6B0, &qword_24B697940);
  swift_arrayDestroy();
  sub_24B696748();
  v103 = MEMORY[0x277D84F90];
  sub_24B68B66C(MEMORY[0x277D84F90]);
  sub_24B68B66C(v103);
  v104 = v162;
  sub_24B696788();
  v105 = sub_24B696798();
  (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
  v106 = v164;
  sub_24B6967A8();
  v107 = v153;
  v108 = v158;
  sub_24B696038();
  (*(v165 + 8))(v106, v166);
  sub_24B64BB2C(v104, &qword_27F02D6A0, &unk_24B697930);
  v109 = (*(v157 + 8))(v93, v108);
  MEMORY[0x28223BE20](v109);
  v110 = v176;
  *(&v122 - 8) = v178;
  *(&v122 - 7) = v110;
  *(&v122 - 48) = v168;
  *(&v122 - 5) = v174;
  *(&v122 - 4) = v97;
  *(&v122 - 24) = v132;
  v112 = v144;
  v111 = v145;
  v120 = v172;
  v121 = v144;
  v113 = v156;
  sub_24B6960D8();
  (*(v155 + 8))(v107, v113);
  v115 = v148;
  v114 = v149;
  v116 = *(v148 + 16);
  v117 = v146;
  v116(v146, v111, v149);
  v118 = *(v115 + 8);
  v118(v111, v114);
  v116(v167, v117, v114);
  v118(v117, v114);
  return (*(v169 + 8))(v112, v175);
}

uint64_t sub_24B657A48(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for OnboardingModalityPickerAction();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  if (a1)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  }

  else
  {
    swift_getKeyPath();
    sub_24B696718();

    if (v19[15])
    {
      return result;
    }

    sub_24B64BC54();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  }

  v16 = *(v14 + 48);
  v17 = *(v14 + 64);
  sub_24B65B404(a3, v13);
  v13[v16] = a4 & 1;
  v18 = sub_24B6956B8();
  (*(*(v18 - 8) + 16))(&v13[v17], a6, v18);
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v13, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B657C20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3E8, &qword_24B6975A8);
  sub_24B65C890(&qword_27F02D3F0, &qword_27F02D3E8, &qword_24B6975A8);
  return sub_24B6956C8();
}

uint64_t sub_24B657CE0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v120 = a6;
  v113 = a5;
  v107 = a4;
  v119 = a3;
  v112 = a9;
  v13 = sub_24B6956B8();
  v126 = *(v13 - 8);
  v14 = *(v126 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = type metadata accessor for OnboardingModality();
  v117 = *(v15 - 8);
  v16 = *(v117 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v131 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a7;
  v114 = a8;
  v17 = type metadata accessor for TVOnboardingModalityPickerView();
  v118 = *(v17 - 8);
  v115 = *(v118 + 64);
  MEMORY[0x28223BE20](v17);
  v116 = &v97 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6C0, &qword_24B697970);
  v122 = *(v19 - 8);
  v123 = v19;
  v20 = *(v122 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v109 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v105 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6C8, &qword_24B697978);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v111 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v110 = &v97 - v30;
  MEMORY[0x28223BE20](v29);
  v103 = &v97 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6D0, &qword_24B697980);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v108 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v128 = &v97 - v36;
  v104 = a1;
  v129 = a2;
  v124 = v25;
  v125 = v24;
  v121 = v14;
  v132 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v17;
  v130 = v13;
  if (a1)
  {
    v37 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38 = v13;
    v39 = v16;
    v40 = v120;
    v41 = v17;
    v102 = 0x754265766F6D6552;
    v101 = 0xEB000000006E6F74;
    v42 = v116;
    v43 = v126;
LABEL_6:
    v50 = v118;
    v51 = v41;
    (*(v118 + 16))(v42, a2, v41);
    v52 = v131;
    sub_24B65B404(v119, v131);
    (*(v43 + 16))(v37, v40, v38);
    v53 = (*(v50 + 80) + 33) & ~*(v50 + 80);
    v54 = v43;
    v55 = (v115 + *(v117 + 80) + v53) & ~*(v117 + 80);
    v100 = v39 + 7;
    v98 = (v39 + 7 + v55) & 0xFFFFFFFFFFFFFFF8;
    v56 = v54;
    v99 = (*(v54 + 80) + v98 + 16) & ~*(v54 + 80);
    v57 = swift_allocObject();
    v46 = v127;
    v58 = v114;
    *(v57 + 16) = v127;
    *(v57 + 24) = v58;
    v104 &= 1u;
    *(v57 + 32) = v104;
    (*(v50 + 32))(v57 + v53, v42, v51);
    sub_24B65B620(v52, v57 + v55, type metadata accessor for OnboardingModality);
    v59 = v57 + v98;
    v107 &= 1u;
    *v59 = v107;
    v60 = v113;
    *(v59 + 8) = v113;
    (*(v56 + 32))(v57 + v99, v132, v130);
    MEMORY[0x28223BE20](v60);
    *(&v97 - 4) = v46;
    *(&v97 - 3) = v61;
    *(&v97 - 16) = v104;
    *(&v97 - 1) = v129;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6D8, &qword_24B697988);
    sub_24B65C890(&qword_27F02D6E0, &qword_27F02D6D8, &qword_24B697988);
    v62 = v105;
    sub_24B696468();
    v49 = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6E8, &qword_24B697990);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_24B697540;
    v64 = v101;
    *(v63 + 32) = v102;
    *(v63 + 40) = v64;
    sub_24B65C890(&qword_27F02D6F0, &qword_27F02D6C0, &qword_24B697970);
    v65 = v103;
    v66 = v123;
    sub_24B696028();
    a2 = v129;

    (*(v122 + 8))(v62, v66);
    v67 = v124;
    v68 = v125;
    v69 = v128;
    v70 = v65;
    v45 = v100;
    (*(v124 + 32))(v128, v70, v125);
    v71 = *(v67 + 56);
    v72 = v68;
    v48 = v118;
    v47 = v119;
    v71(v69, 0, 1, v72);
    goto LABEL_7;
  }

  v44 = v126;
  v38 = v13;
  v41 = v17;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  if ((v133 & 1) == 0)
  {
    v39 = v16;
    v102 = 0x6F74747542646441;
    v101 = 0xE90000000000006ELL;
    v43 = v44;
    v37 = v132;
    v40 = v120;
    v42 = v116;
    goto LABEL_6;
  }

  (*(v25 + 56))(v128, 1, 1, v24);
  v45 = v16 + 7;
  v107 &= 1u;
  v46 = v127;
  v48 = v118;
  v47 = v119;
  v49 = v117;
LABEL_7:
  v73 = v116;
  v74 = v106;
  (*(v48 + 16))(v116, a2, v106);
  sub_24B65B404(v47, v131);
  v75 = v126;
  (*(v126 + 16))(v132, v120, v130);
  v76 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v77 = (v115 + *(v49 + 80) + v76) & ~*(v49 + 80);
  v78 = (v45 + v77) & 0xFFFFFFFFFFFFFFF8;
  v79 = (*(v75 + 80) + v78 + 16) & ~*(v75 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v46;
  v81 = v114;
  *(v80 + 24) = v114;
  (*(v48 + 32))(v80 + v76, v73, v74);
  sub_24B65B620(v131, v80 + v77, type metadata accessor for OnboardingModality);
  v82 = v80 + v78;
  *v82 = v107;
  *(v82 + 8) = v113;
  v83 = (*(v75 + 32))(v80 + v79, v132, v130);
  MEMORY[0x28223BE20](v83);
  *(&v97 - 4) = v127;
  *(&v97 - 3) = v81;
  *(&v97 - 2) = v129;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6D8, &qword_24B697988);
  sub_24B65C890(&qword_27F02D6E0, &qword_27F02D6D8, &qword_24B697988);
  v84 = v109;
  sub_24B696468();
  sub_24B65C890(&qword_27F02D6F0, &qword_27F02D6C0, &qword_24B697970);
  v85 = v110;
  v86 = v123;
  sub_24B696028();
  (*(v122 + 8))(v84, v86);
  v87 = v128;
  v88 = v108;
  sub_24B64A3E0(v128, v108, &qword_27F02D6D0, &qword_24B697980);
  v90 = v124;
  v89 = v125;
  v91 = *(v124 + 16);
  v92 = v111;
  v91(v111, v85, v125);
  v93 = v112;
  sub_24B64A3E0(v88, v112, &qword_27F02D6D0, &qword_24B697980);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D6F8, &qword_24B697998);
  v91((v93 + *(v94 + 48)), v92, v89);
  v95 = *(v90 + 8);
  v95(v85, v89);
  sub_24B64BB2C(v87, &qword_27F02D6D0, &qword_24B697980);
  v95(v92, v89);
  return sub_24B64BB2C(v88, &qword_27F02D6D0, &qword_24B697980);
}

uint64_t sub_24B658918(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for OnboardingModalityPickerAction();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 64);
  sub_24B65B404(a3, v12);
  v12[v14] = a4 & 1;
  v16 = sub_24B6956B8();
  (*(*(v16 - 8) + 16))(&v12[v15], a6, v16);
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v12, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B658A84()
{
  v0 = sub_24B695698();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24B696868();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B696878();
  sub_24B64E810();
  return sub_24B696418();
}

uint64_t sub_24B658CB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for OnboardingModalityPickerAction();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D700, &qword_24B6979A0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  sub_24B65B404(a2, v11);
  v11[v13] = a3 & 1;
  v15 = sub_24B6956B8();
  (*(*(v15 - 8) + 16))(&v11[v14], a5, v15);
  swift_storeEnumTagMultiPayload();
  sub_24B696728();

  return sub_24B65B688(v11, type metadata accessor for OnboardingModalityPickerAction);
}

uint64_t sub_24B658E14()
{
  v0 = sub_24B695698();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_24B696868();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  sub_24B696878();
  sub_24B64E810();
  return sub_24B696418();
}

uint64_t sub_24B658FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a1;
  v103 = a4;
  v102 = sub_24B6958B8();
  v101 = *(v102 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D410, &qword_24B6975B0);
  v82 = a2;
  v83 = a3;
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
  v9 = sub_24B696938();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D418, &qword_24B6975B8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D420, &qword_24B6975C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v13 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0);
  v14 = sub_24B64E44C();
  v113 = v11;
  v114 = MEMORY[0x277CE1350];
  v115 = v12;
  v116 = v13;
  v117 = MEMORY[0x277CE1340];
  v118 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v113 = v10;
  v114 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeConformance2();
  v112[6] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v113 = v8;
  v114 = v9;
  v115 = v16;
  v116 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D450, &qword_24B6975D8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D458, &qword_24B6975E0);
  v20 = sub_24B64E530();
  v113 = v19;
  v114 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v113 = v18;
  v114 = v9;
  v115 = v21;
  v116 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v97 = sub_24B696688();
  v96 = swift_getWitnessTable();
  v22 = sub_24B6964C8();
  v99 = *(v22 - 8);
  v23 = *(v99 + 64);
  MEMORY[0x28223BE20](v22);
  v95 = &v80 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D498, &qword_24B697600);
  v93 = v22;
  v25 = sub_24B6959A8();
  v89 = v25;
  v98 = *(v25 - 8);
  v26 = *(v98 + 64);
  MEMORY[0x28223BE20](v25);
  v94 = &v80 - v27;
  v28 = swift_getWitnessTable();
  v90 = v28;
  v29 = sub_24B65C890(&qword_27F02D4A0, &qword_27F02D498, &qword_24B697600);
  v112[4] = v28;
  v112[5] = v29;
  v30 = swift_getWitnessTable();
  v88 = v30;
  v87 = sub_24B64E750();
  v113 = v25;
  v114 = &type metadata for TVServicesButtonStyle;
  v115 = v30;
  v116 = v87;
  v91 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v105 = *(OpaqueTypeMetadata2 - 8);
  v31 = *(v105 + 64);
  v32 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v85 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v86 = &v80 - v34;
  v84 = sub_24B695F28();
  v35 = *(v84 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v84);
  v38 = &v80 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_24B695698();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = sub_24B696868();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = sub_24B696848();
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43 - 8);
  sub_24B696838();
  sub_24B696828();
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v45 = *(v113 + 16);

  v112[0] = v45;
  sub_24B696808();
  sub_24B696828();
  v113 = 5;
  sub_24B696808();
  sub_24B696828();
  sub_24B696858();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = [objc_opt_self() bundleForClass_];
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v113 = sub_24B696878();
  v114 = v48;
  sub_24B64E810();
  v49 = sub_24B695FE8();
  v51 = v50;
  LOBYTE(v18) = v52;
  sub_24B695F48();
  v53 = v84;
  (*(v35 + 104))(v38, *MEMORY[0x277CE0A10], v84);
  sub_24B695F58();

  (*(v35 + 8))(v38, v53);
  v54 = sub_24B695FC8();
  v56 = v55;
  LOBYTE(v19) = v57;

  sub_24B6557C0(v49, v51, v18 & 1);

  LODWORD(v113) = sub_24B695D28();
  v58 = sub_24B695FB8();
  v80 = v59;
  v81 = v60;
  v84 = v61;
  sub_24B6557C0(v54, v56, v19 & 1);

  v106 = v82;
  v107 = v83;
  v108 = v104;
  sub_24B695B48();
  v62 = v95;
  sub_24B6964B8();
  v63 = v101;
  v64 = v100;
  v65 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x277CDF420], v102);
  v66 = v94;
  v67 = v93;
  sub_24B6960E8();
  (*(v63 + 8))(v64, v65);
  (*(v99 + 8))(v62, v67);
  v68 = v85;
  v69 = v89;
  v70 = v88;
  v71 = v87;
  sub_24B6960C8();
  (*(v98 + 8))(v66, v69);
  v113 = v69;
  v114 = &type metadata for TVServicesButtonStyle;
  v115 = v70;
  v116 = v71;
  v104 = swift_getOpaqueTypeConformance2();
  v72 = v105;
  v73 = *(v105 + 16);
  v74 = v86;
  v75 = v68;
  v76 = OpaqueTypeMetadata2;
  v73(v86, v68, OpaqueTypeMetadata2);
  v77 = *(v72 + 8);
  v105 = v72 + 8;
  v77(v68, v76);
  v78 = v80;
  v113 = v58;
  v114 = v80;
  LOBYTE(v69) = v81 & 1;
  LOBYTE(v115) = v81 & 1;
  v116 = v84;
  v112[0] = &v113;
  v73(v75, v74, v76);
  v112[1] = v75;
  sub_24B65B70C(v58, v78, v69);

  v111[0] = MEMORY[0x277CE0BD8];
  v111[1] = v76;
  v109 = MEMORY[0x277CE0BC8];
  v110 = v104;
  sub_24B66D504(v112, 2uLL, v111);
  sub_24B6557C0(v58, v78, v69);

  v77(v74, v76);
  v77(v75, v76);
  sub_24B6557C0(v113, v114, v115);
}

uint64_t sub_24B659CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v149 = a1;
  v138 = a4;
  v129 = sub_24B696318();
  v127 = *(v129 - 8);
  v6 = *(v127 + 64);
  MEMORY[0x28223BE20](v129);
  v126 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D458, &qword_24B6975E0);
  v130 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v124 = &v105 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D450, &qword_24B6975D8);
  v132 = v11;
  v137 = *(v11 - 8);
  v12 = *(v137 + 64);
  MEMORY[0x28223BE20](v11);
  v136 = &v105 - v13;
  v142 = a2;
  v143 = a3;
  type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
  v14 = sub_24B696938();
  v133 = sub_24B64E530();
  v164 = v8;
  v165 = v133;
  v154 = MEMORY[0x277D09E70];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v131 = OpaqueTypeConformance2;
  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v164 = v11;
  v165 = v14;
  v108 = v14;
  v166 = OpaqueTypeConformance2;
  v167 = v16;
  v17 = v16;
  v114 = v16;
  v150 = MEMORY[0x277CDEEB0];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v134 = *(OpaqueTypeMetadata2 - 8);
  v18 = *(v134 + 64);
  v19 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v125 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v128 = &v105 - v21;
  v140 = type metadata accessor for TVOnboardingModalityPickerView();
  v152 = *(v140 - 8);
  v118 = *(v152 + 64);
  MEMORY[0x28223BE20](v140);
  v23 = &v105 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D420, &qword_24B6975C0);
  v139 = v24;
  v153 = *(v24 - 8);
  v25 = *(v153 + 64);
  MEMORY[0x28223BE20](v24);
  v141 = &v105 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D418, &qword_24B6975B8);
  v105 = v27;
  v122 = *(v27 - 8);
  v28 = *(v122 + 64);
  MEMORY[0x28223BE20](v27);
  v120 = &v105 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D410, &qword_24B6975B0);
  v113 = v30;
  v123 = *(v30 - 8);
  v31 = *(v123 + 8);
  MEMORY[0x28223BE20](v30);
  v121 = &v105 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D428, &qword_24B6975C8);
  v146 = v33;
  v34 = sub_24B65C890(&qword_27F02D430, &qword_27F02D420, &qword_24B6975C0);
  v148 = v34;
  v147 = sub_24B64E44C();
  v164 = v24;
  v165 = MEMORY[0x277CE1350];
  v166 = v33;
  v167 = v34;
  v168 = MEMORY[0x277CE1340];
  v169 = v147;
  v106 = swift_getOpaqueTypeConformance2();
  v164 = v27;
  v165 = v106;
  v115 = swift_getOpaqueTypeConformance2();
  v164 = v30;
  v165 = v14;
  v166 = v115;
  v167 = v17;
  v145 = swift_getOpaqueTypeMetadata2();
  v154 = *(v145 - 8);
  v35 = *(v154 + 64);
  v36 = MEMORY[0x28223BE20](v145);
  v144 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v151 = &v105 - v38;
  v39 = v152;
  v119 = *(v152 + 16);
  v40 = v23;
  v107 = v23;
  v41 = v149;
  v42 = v140;
  v119(v23, v149, v140);
  v117 = *(v39 + 80);
  v43 = (v117 + 32) & ~v117;
  v112 = v43;
  v44 = swift_allocObject();
  v45 = v142;
  v46 = v143;
  *(v44 + 16) = v142;
  *(v44 + 24) = v46;
  v47 = *(v39 + 32);
  v152 = v39 + 32;
  v116 = v47;
  v47(v44 + v43, v40, v42);
  v158 = v45;
  v159 = v46;
  v160 = v41;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D688, &qword_24B697870);
  v110 = sub_24B65B750();
  v48 = v141;
  sub_24B696468();
  sub_24B6965D8();
  v49 = v120;
  v50 = v139;
  sub_24B6962E8();
  v51 = *(v153 + 8);
  v153 += 8;
  v109 = v51;
  v51(v48, v50);
  v52 = v121;
  v53 = v105;
  sub_24B696028();
  (*(v122 + 8))(v49, v53);
  v164 = sub_24B64BE10(v42);
  v165 = v54;
  LOBYTE(v166) = v55;
  LOBYTE(v163[0]) = 0;
  v56 = swift_checkMetadataState();
  v57 = v144;
  v58 = v113;
  v59 = v115;
  v60 = v114;
  sub_24B696258();

  (*(v123 + 1))(v52, v58);
  v164 = v58;
  v165 = v56;
  v166 = v59;
  v167 = v60;
  v61 = v60;
  v122 = swift_getOpaqueTypeConformance2();
  v62 = v154;
  v63 = *(v154 + 16);
  v120 = (v154 + 16);
  v121 = v63;
  v64 = v145;
  (v63)(v151, v57, v145);
  v65 = *(v62 + 8);
  v154 = v62 + 8;
  v123 = v65;
  v65(v57, v64);
  v66 = v107;
  v67 = v149;
  v68 = v140;
  v119(v107, v149, v140);
  v69 = v112;
  v70 = swift_allocObject();
  v71 = v142;
  v72 = v143;
  *(v70 + 16) = v142;
  *(v70 + 24) = v72;
  v73 = v68;
  v116(v70 + v69, v66, v68);
  v155 = v71;
  v156 = v72;
  v157 = v67;
  v74 = v141;
  sub_24B696468();
  sub_24B6965D8();
  v75 = v124;
  v76 = v139;
  sub_24B6962E8();
  v109(v74, v76);
  (*(v127 + 104))(v126, *MEMORY[0x277CE0EE0], v129);
  v77 = sub_24B696388();
  KeyPath = swift_getKeyPath();
  v79 = &v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D470, &qword_24B6975E8) + 36)];
  v80 = v75;
  *v79 = KeyPath;
  v79[1] = v77;
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v81 = *(v164 + 16);

  v82 = swift_getKeyPath();
  v83 = swift_allocObject();
  *(v83 + 16) = v81 == 0;
  v84 = v80;
  v85 = (v80 + *(v130 + 36));
  *v85 = v82;
  v85[1] = sub_24B65B924;
  v85[2] = v83;
  v86 = v136;
  sub_24B696028();
  sub_24B64BB2C(v84, &qword_27F02D458, &qword_24B6975E0);
  v164 = sub_24B64BE10(v73);
  v165 = v87;
  LOBYTE(v166) = v88;
  LOBYTE(v163[0]) = 1;
  v89 = v125;
  v90 = v132;
  v91 = v131;
  sub_24B696258();

  (*(v137 + 8))(v86, v90);
  v164 = v90;
  v165 = v56;
  v166 = v91;
  v167 = v61;
  v153 = swift_getOpaqueTypeConformance2();
  v92 = v134;
  v93 = *(v134 + 16);
  v94 = v128;
  v95 = OpaqueTypeMetadata2;
  v93(v128, v89, OpaqueTypeMetadata2);
  v96 = *(v92 + 8);
  v97 = v89;
  v96(v89, v95);
  v98 = v144;
  v99 = v151;
  v100 = v145;
  (v121)(v144, v151, v145);
  v164 = v98;
  v93(v97, v94, v95);
  v165 = v97;
  v163[0] = v100;
  v163[1] = v95;
  v161 = v122;
  v162 = v153;
  sub_24B66D504(&v164, 2uLL, v163);
  v96(v94, v95);
  v101 = v100;
  v102 = v100;
  v103 = v123;
  v123(v99, v101);
  v96(v97, v95);
  return v103(v98, v102);
}

double sub_24B65ACB0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_24B695698();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_24B696868();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24B6967F8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  type metadata accessor for TVOnboardingModalityPickerView();
  sub_24B64BC54();
  swift_getKeyPath();
  sub_24B696718();

  v8 = sub_24B695FA8();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_24B695E88();
  sub_24B695818();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_24B696648();
  sub_24B6959F8();
  *&v25[55] = v29;
  *&v25[71] = v30;
  *&v25[87] = v31;
  *&v25[103] = v32;
  *&v25[7] = v26;
  *&v25[23] = v27;
  *&v25[39] = v28;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v15;
  *(a1 + 40) = v17;
  *(a1 + 48) = v19;
  *(a1 + 56) = v21;
  *(a1 + 64) = v23;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v25[64];
  *(a1 + 153) = *&v25[80];
  *(a1 + 169) = *&v25[96];
  *(a1 + 184) = *(&v32 + 1);
  *(a1 + 73) = *v25;
  *(a1 + 89) = *&v25[16];
  result = *&v25[32];
  *(a1 + 105) = *&v25[32];
  *(a1 + 121) = *&v25[48];
  return result;
}

uint64_t sub_24B65AFA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D428, &qword_24B6975C8) + 36));
  v5 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D448, &qword_24B6975D0) + 28);
  sub_24B695A08();
  *v4 = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D420, &qword_24B6975C0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, a1, v6);
}

void sub_24B65B0A0(uint64_t a1)
{
  sub_24B65B244();
  if (v2 <= 0x3F)
  {
    sub_24B65B2E8();
    if (v3 <= 0x3F)
    {
      v5 = *(a1 + 16);
      v4 = *(a1 + 24);
      type metadata accessor for TVOnboardingModalityPickerView.FocusableButton();
      sub_24B696938();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_24B695878();
      if (v6 <= 0x3F)
      {
        sub_24B65B37C();
        if (v7 <= 0x3F)
        {
          type metadata accessor for OnboardingArtwork();
          __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
          swift_getFunctionTypeMetadata2();
          sub_24B695708();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24B65B244()
{
  if (!qword_27F02D590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D598, "dU");
    sub_24B65C890(&qword_27F02D5A0, &qword_27F02D598, "dU");
    v0 = sub_24B6958D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F02D590);
    }
  }
}

void sub_24B65B2E8()
{
  if (!qword_27F02D5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
    sub_24B64E7A4(&qword_27F02D3D8);
    v0 = sub_24B695878();
    if (!v1)
    {
      atomic_store(v0, &qword_27F02D5A8);
    }
  }
}

void sub_24B65B37C()
{
  if (!qword_27F02D5B0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3D0, &qword_24B697598);
    v0 = sub_24B696458();
    if (!v1)
    {
      atomic_store(v0, qword_27F02D5B0);
    }
  }
}

uint64_t sub_24B65B404(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingModality();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B65B468()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OnboardingModality() - 8);
  v7 = v0 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24B6555E0(v0 + v4, v7);
}

uint64_t sub_24B65B584(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(*(type metadata accessor for TVOnboardingModalityPickerView() - 8) + 80);

  return sub_24B654034(a1, a2);
}

uint64_t sub_24B65B620(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B65B688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B65B70C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_24B65B724@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_24B65ACB0(a1);
}

unint64_t sub_24B65B750()
{
  result = qword_27F02D690;
  if (!qword_27F02D690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D688, &qword_24B697870);
    sub_24B65B7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D690);
  }

  return result;
}

unint64_t sub_24B65B7DC()
{
  result = qword_27F02D698;
  if (!qword_27F02D698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D3C8, &qword_24B697590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D698);
  }

  return result;
}

uint64_t sub_24B65B868()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for TVOnboardingModalityPickerView() - 8) + 80);
  return sub_24B6549E4();
}

double sub_24B65B8E8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_24B65ACB0(a1);
}

uint64_t sub_24B65B92C(uint64_t a1)
{
  v2 = sub_24B695A18();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24B695A88();
}

uint64_t objectdestroy_38Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*v3 + 64);
  v7 = *(v0 + v5);
  v8 = *(v0 + v5 + 8);
  v9 = *(v0 + v5 + 16);
  sub_24B654DC8();
  v10 = *(v0 + v5 + 32);

  v11 = *(v0 + v5 + 40);

  v12 = *(v0 + v5 + 56);

  v13 = *(v0 + v5 + 72);

  v14 = *(v0 + v5 + 96);

  v15 = *(v0 + v5 + 104);

  v16 = v3[14];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v17 = sub_24B695708();
  (*(*(v17 - 8) + 8))(v0 + v5 + v16, v17);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t sub_24B65BB68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v10 = v3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_24B652640(a1, a2, v10, v7, v8, a3);
}

uint64_t sub_24B65BC0C(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1 + 1);
}

uint64_t sub_24B65BC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = v3[4];
  v12 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 1);

  return sub_24B656A50(a1, a2, v11, v3 + v10, v13, v14, v7, v8, a3);
}

uint64_t sub_24B65BD48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_88Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = (type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v51 = *(*v3 + 80);
  v4 = (v51 + 33) & ~v51;
  v5 = *(*v3 + 64);
  v6 = type metadata accessor for OnboardingModality();
  v50 = *(*(v6 - 1) + 80);
  v7 = (v4 + v5 + v50) & ~v50;
  v48 = *(*(v6 - 1) + 64);
  v8 = sub_24B6956B8();
  v53 = *(v8 - 8);
  v54 = v8;
  v47 = *(v53 + 80);
  v52 = *(v53 + 64);
  v9 = (v0 + v4);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v9 + 16);
  sub_24B654DC8();
  v13 = v9[4];

  v14 = v9[5];

  v15 = v9[7];

  v16 = v9[9];

  v17 = v9[12];

  v18 = v9[13];

  v19 = v3[14];
  type metadata accessor for OnboardingArtwork();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D500, &unk_24B697690);
  swift_getFunctionTypeMetadata2();
  v20 = sub_24B695708();
  (*(*(v20 - 8) + 8))(v9 + v19, v20);
  v55 = v0;
  v49 = v7;
  v21 = v0 + v7;
  v22 = sub_24B695718();
  v23 = *(v22 - 8);
  v46 = *(v23 + 48);
  if (!v46(v21, 1, v22))
  {
    (*(v23 + 8))(v21, v22);
  }

  v45 = v23;
  v24 = swift_checkMetadataState();
  v25 = *(v24 + 20);
  v26 = sub_24B695658();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (!v28(v21 + v25, 1, v26))
  {
    (*(v27 + 8))(v21 + v25, v26);
  }

  v29 = v21 + v6[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_24B695728();
    (*(*(v30 - 8) + 8))(v29, v30);
  }

  else
  {
    v31 = *(v29 + 8);
  }

  v32 = v21 + v6[6];
  if (!(*(*(v24 - 8) + 48))(v32, 1, v24))
  {
    if (!v46(v32, 1, v22))
    {
      (*(v45 + 8))(v32, v22);
    }

    v33 = *(v24 + 20);
    if (!v28(v32 + v33, 1, v26))
    {
      (*(v27 + 8))(v32 + v33, v26);
    }
  }

  v34 = v21 + v6[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = sub_24B695728();
    (*(*(v35 - 8) + 8))(v34, v35);
  }

  else
  {
    v36 = *(v34 + 8);
  }

  v37 = (v48 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + v47 + 16) & ~v47;
  v39 = *(v21 + v6[8] + 8);

  v40 = v6[10];
  v41 = sub_24B695648();
  v42 = *(*(v41 - 8) + 8);
  v42(v21 + v40, v41);
  v42(v21 + v6[11], v41);
  v43 = *(v55 + v37 + 8);

  (*(v53 + 8))(v55 + v38, v54);

  return MEMORY[0x2821FE8E8](v55, v38 + v52, v51 | v50 | v47 | 7);
}

uint64_t sub_24B65C37C(uint64_t (*a1)(uint64_t, unint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v5 = (*(v4 + 80) + 33) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for OnboardingModality() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_24B6956B8() - 8);
  v11 = *(v1 + 32);
  v12 = *(v1 + v9);
  v13 = *(v1 + v9 + 8);
  v14 = v1 + ((v9 + *(v10 + 80) + 16) & ~*(v10 + 80));

  return a1(v11, v1 + v5, v1 + v8, v12, v13, v14, v2, v3);
}

uint64_t sub_24B65C4F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_24B658A84();
}

uint64_t sub_24B65C500()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for TVOnboardingModalityPickerView() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OnboardingModality() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_24B6956B8() - 8);
  v10 = *(v0 + v8);
  v11 = *(v0 + v8 + 8);
  v12 = v0 + ((v8 + *(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_24B658CB4(v0 + v4, v0 + v7, v10, v11, v12);
}

uint64_t sub_24B65C65C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_24B658E14();
}

unint64_t sub_24B65C668()
{
  result = qword_27F02D738;
  if (!qword_27F02D738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D730, &unk_24B697A30);
    sub_24B65C720();
    sub_24B65C890(&qword_27F02D780, &qword_27F02D788, &unk_24B698E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D738);
  }

  return result;
}

unint64_t sub_24B65C720()
{
  result = qword_27F02D740;
  if (!qword_27F02D740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D748, &unk_24B69A590);
    sub_24B65C7D8();
    sub_24B65C890(&qword_27F02D770, &qword_27F02D778, &unk_24B697A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D740);
  }

  return result;
}

unint64_t sub_24B65C7D8()
{
  result = qword_27F02D750;
  if (!qword_27F02D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D758, &unk_24B697A40);
    sub_24B65C890(&qword_27F02D760, &qword_27F02D768, &unk_24B69A5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D750);
  }

  return result;
}

uint64_t sub_24B65C890(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24B65C92C(uint64_t a1)
{
  v2 = sub_24B65CEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B65C968(uint64_t a1)
{
  v2 = sub_24B65CEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B65C9A4()
{
  if (*v0)
  {
    return 0x6F65646976;
  }

  else
  {
    return 0x6F69647561;
  }
}

uint64_t sub_24B65C9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69647561 && a2 == 0xE500000000000000;
  if (v6 || (sub_24B696AD8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B696AD8();

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

uint64_t sub_24B65CAA4(uint64_t a1)
{
  v2 = sub_24B65CE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B65CAE0(uint64_t a1)
{
  v2 = sub_24B65CE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B65CB1C(uint64_t a1)
{
  v2 = sub_24B65CEA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B65CB58(uint64_t a1)
{
  v2 = sub_24B65CEA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityPickerSectionType.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D798, &qword_24B697A70);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D7A0, &qword_24B697A78);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D7A8, &qword_24B697A80);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B65CE50();
  sub_24B696B58();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_24B65CEA4();
    sub_24B696A58();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_24B65CEF8();
    sub_24B696A58();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_24B65CE50()
{
  result = qword_27F02D7B0;
  if (!qword_27F02D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7B0);
  }

  return result;
}

unint64_t sub_24B65CEA4()
{
  result = qword_27F02D7B8;
  if (!qword_27F02D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7B8);
  }

  return result;
}

unint64_t sub_24B65CEF8()
{
  result = qword_27F02D7C0;
  if (!qword_27F02D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7C0);
  }

  return result;
}

uint64_t sub_24B65CF68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24B65D024(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t OnboardingModalityPickerSectionType.hashValue.getter(char a1)
{
  sub_24B696AF8();
  MEMORY[0x24C246C70](a1 & 1);
  return sub_24B696B38();
}

uint64_t sub_24B65D024(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D808, &qword_24B697DE8);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D810, &qword_24B697DF0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D818, &qword_24B697DF8);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B65CE50();
  v15 = v32;
  sub_24B696B48();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_24B696A48();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_24B67188C();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_24B6969A8();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D820, &unk_24B697E00) + 48);
    *v24 = &type metadata for OnboardingModalityPickerSectionType;
    sub_24B6969D8();
    sub_24B696998();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_24B65CEA4();
    sub_24B6969C8();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_24B65CEF8();
    sub_24B6969C8();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_24B65D4E4()
{
  result = qword_27F02D7C8;
  if (!qword_27F02D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7C8);
  }

  return result;
}

unint64_t sub_24B65D57C()
{
  result = qword_27F02D7D0;
  if (!qword_27F02D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7D0);
  }

  return result;
}

unint64_t sub_24B65D5D4()
{
  result = qword_27F02D7D8;
  if (!qword_27F02D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7D8);
  }

  return result;
}

unint64_t sub_24B65D62C()
{
  result = qword_27F02D7E0;
  if (!qword_27F02D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7E0);
  }

  return result;
}

unint64_t sub_24B65D684()
{
  result = qword_27F02D7E8;
  if (!qword_27F02D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7E8);
  }

  return result;
}

unint64_t sub_24B65D6DC()
{
  result = qword_27F02D7F0;
  if (!qword_27F02D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7F0);
  }

  return result;
}

unint64_t sub_24B65D734()
{
  result = qword_27F02D7F8;
  if (!qword_27F02D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D7F8);
  }

  return result;
}

unint64_t sub_24B65D78C()
{
  result = qword_27F02D800;
  if (!qword_27F02D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D800);
  }

  return result;
}

unint64_t sub_24B65D858()
{
  result = qword_27F02D828;
  if (!qword_27F02D828)
  {
    sub_24B695DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D828);
  }

  return result;
}

FitnessOnboarding::OnboardingModalityPickerSection __swiftcall OnboardingModalityPickerSection.init(type:modalities:)(FitnessOnboarding::OnboardingModalityPickerSectionType type, Swift::OpaquePointer modalities)
{
  *v2 = type & 1;
  *(v2 + 8) = modalities;
  result.modalities = modalities;
  result.type = type;
  return result;
}

uint64_t sub_24B65D8D0()
{
  if (*v0)
  {
    result = 0x6974696C61646F6DLL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_24B65D908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_24B696AD8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974696C61646F6DLL && a2 == 0xEA00000000007365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B696AD8();

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

uint64_t sub_24B65D9EC(uint64_t a1)
{
  v2 = sub_24B65DC50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B65DA28(uint64_t a1)
{
  v2 = sub_24B65DC50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OnboardingModalityPickerSection.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D830, &qword_24B697E70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B65DC50();
  sub_24B696B58();
  v15 = v9;
  v14 = 0;
  sub_24B65DCA4();
  sub_24B696AB8();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D848, &qword_24B697E78);
    sub_24B65DF70(&qword_2810E1D08, &qword_2810E1DD0);
    sub_24B696AB8();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_24B65DC50()
{
  result = qword_27F02D838;
  if (!qword_27F02D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D838);
  }

  return result;
}

unint64_t sub_24B65DCA4()
{
  result = qword_27F02D840;
  if (!qword_27F02D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D840);
  }

  return result;
}

uint64_t OnboardingModalityPickerSection.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D850, &qword_24B697E80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B65DC50();
  sub_24B696B48();
  if (!v2)
  {
    v16 = 0;
    sub_24B65DF1C();
    sub_24B696A38();
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D848, &qword_24B697E78);
    v15 = 1;
    sub_24B65DF70(&qword_27F02D860, &qword_27F02D868);
    sub_24B696A38();
    (*(v6 + 8))(v9, v5);
    v13 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24B65DF1C()
{
  result = qword_27F02D858;
  if (!qword_27F02D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D858);
  }

  return result;
}

uint64_t sub_24B65DF70(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F02D848, &qword_24B697E78);
    sub_24B65F4FC(a2, type metadata accessor for OnboardingModality);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OnboardingModalityPickerSection.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_24B65E060(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B65E060(uint64_t a1, uint64_t a2)
{
  v159 = type metadata accessor for OnboardingArtwork();
  v151 = *(v159 - 8);
  v4 = *(v151 + 64);
  MEMORY[0x28223BE20](v159);
  v152 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D670, &qword_24B697840);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v121 - v8;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D888, &unk_24B698070);
  v10 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v158 = &v121 - v11;
  v154 = sub_24B695658();
  v12 = *(v154 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v154);
  v147 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D350, &unk_24B69A7E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v136 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v145 = &v121 - v19;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D398, &qword_24B698080);
  v20 = *(*(v153 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v153);
  v23 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v150 = &v121 - v24;
  v155 = sub_24B695718();
  v25 = *(v155 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v155);
  v148 = &v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D348, &unk_24B697310);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v146 = &v121 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D3A0, &unk_24B697530);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v144 = &v121 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v156 = &v121 - v38;
  v157 = type metadata accessor for OnboardingModality();
  v39 = *(*(v157 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v157);
  v42 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v45 = &v121 - v44;
  v46 = *(a1 + 16);
  if (v46 != *(a2 + 16))
  {
LABEL_56:
    v117 = 0;
    return v117 & 1;
  }

  if (!v46 || a1 == a2)
  {
    v117 = 1;
    return v117 & 1;
  }

  v47 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v48 = a1 + v47;
  v49 = a2 + v47;
  v141 = (v25 + 48);
  v126 = (v25 + 32);
  v127 = (v25 + 8);
  v132 = (v12 + 48);
  v124 = (v12 + 32);
  v125 = (v12 + 8);
  v128 = *(v43 + 72);
  v123 = v23;
  v50 = v150;
  v122 = v32;
  v142 = v34;
  v51 = v156;
  v131 = v9;
  v143 = (v151 + 48);
  v139 = &v121 - v44;
  v140 = v42;
  while (1)
  {
    v151 = v46;
    v138 = v48;
    result = sub_24B65B404(v48, v45);
    if (!v151)
    {
      break;
    }

    sub_24B65B404(v49, v42);
    v53 = *(v142 + 48);
    sub_24B64A3E0(v45, v51, &qword_27F02D348, &unk_24B697310);
    sub_24B64A3E0(v42, v51 + v53, &qword_27F02D348, &unk_24B697310);
    v54 = *v141;
    v55 = v155;
    v56 = (*v141)(v51, 1, v155);
    v137 = v49;
    v130 = v54;
    if (v56 == 1)
    {
      if (v54(v51 + v53, 1, v55) != 1)
      {
        goto LABEL_43;
      }

      sub_24B64BB2C(v51, &qword_27F02D348, &unk_24B697310);
      v57 = v143;
      v45 = v139;
      v42 = v140;
    }

    else
    {
      v58 = v146;
      sub_24B64A3E0(v51, v146, &qword_27F02D348, &unk_24B697310);
      if (v54(v51 + v53, 1, v55) == 1)
      {
        (*v127)(v58, v55);
LABEL_43:
        sub_24B64BB2C(v51, &qword_27F02D3A0, &unk_24B697530);
        v45 = v139;
        v42 = v140;
        goto LABEL_55;
      }

      v59 = v148;
      (*v126)(v148, v51 + v53, v55);
      sub_24B65F4FC(&qword_2810E2028, MEMORY[0x277D09D68]);
      v60 = sub_24B6967E8();
      v61 = v58;
      v62 = *v127;
      (*v127)(v59, v55);
      v62(v61, v55);
      sub_24B64BB2C(v156, &qword_27F02D348, &unk_24B697310);
      v57 = v143;
      v45 = v139;
      v42 = v140;
      if ((v60 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v63 = *(v159 + 20);
    v64 = *(v153 + 48);
    sub_24B64A3E0(&v45[v63], v50, &qword_27F02D350, &unk_24B69A7E0);
    sub_24B64A3E0(&v42[v63], v50 + v64, &qword_27F02D350, &unk_24B69A7E0);
    v65 = *v132;
    v66 = v154;
    v67 = (*v132)(v50, 1, v154);
    v129 = v65;
    if (v67 == 1)
    {
      if (v65(v50 + v64, 1, v66) != 1)
      {
        goto LABEL_45;
      }

      sub_24B64BB2C(v50, &qword_27F02D350, &unk_24B69A7E0);
    }

    else
    {
      v68 = v65;
      v69 = v145;
      sub_24B64A3E0(v50, v145, &qword_27F02D350, &unk_24B69A7E0);
      if (v68(v50 + v64, 1, v66) == 1)
      {
        (*v125)(v69, v66);
LABEL_45:
        v118 = &qword_27F02D398;
        v119 = &qword_24B698080;
        v120 = v50;
        goto LABEL_54;
      }

      v70 = v147;
      (*v124)(v147, v50 + v64, v66);
      sub_24B65F4FC(&qword_2810E2040, MEMORY[0x277CC9260]);
      v71 = sub_24B6967E8();
      v72 = v69;
      v73 = *v125;
      v74 = v70;
      v57 = v143;
      (*v125)(v74, v66);
      v75 = v72;
      v50 = v150;
      v73(v75, v66);
      sub_24B64BB2C(v50, &qword_27F02D350, &unk_24B69A7E0);
      if ((v71 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v76 = *(v157 + 20);
    v77 = sub_24B695728();
    v78 = MEMORY[0x277D09E00];
    v79 = sub_24B65F4FC(&qword_2810E2010, MEMORY[0x277D09E00]);
    v80 = sub_24B65F4FC(&qword_2810E2008, v78);
    v81 = v157;
    if ((sub_24B695788() & 1) == 0)
    {
      goto LABEL_55;
    }

    v133 = v80;
    v134 = v79;
    v135 = v77;
    v82 = *(v81 + 24);
    v83 = *(v149 + 48);
    v84 = v158;
    sub_24B64A3E0(&v45[v82], v158, &qword_27F02D670, &qword_24B697840);
    sub_24B64A3E0(&v42[v82], v84 + v83, &qword_27F02D670, &qword_24B697840);
    v85 = *v57;
    if ((*v57)(v84, 1, v159) == 1)
    {
      if (v85(v158 + v83, 1, v159) != 1)
      {
        goto LABEL_47;
      }

LABEL_29:
      sub_24B64BB2C(v158, &qword_27F02D670, &qword_24B697840);
      v106 = v157;
      goto LABEL_32;
    }

    v86 = v159;
    v87 = v158;
    v88 = v131;
    sub_24B64A3E0(v158, v131, &qword_27F02D670, &qword_24B697840);
    if (v85(v87 + v83, 1, v86) == 1)
    {
      sub_24B65F438(v88, type metadata accessor for OnboardingArtwork);
LABEL_47:
      v118 = &qword_27F02D888;
      v119 = &unk_24B698070;
      goto LABEL_53;
    }

    v89 = v152;
    sub_24B65F498(v87 + v83, v152);
    v90 = *(v142 + 48);
    v91 = v88;
    v92 = v144;
    sub_24B64A3E0(v91, v144, &qword_27F02D348, &unk_24B697310);
    sub_24B64A3E0(v89, v92 + v90, &qword_27F02D348, &unk_24B697310);
    v93 = v155;
    v94 = v130;
    if (v130(v92, 1, v155) == 1)
    {
      v95 = v94(v92 + v90, 1, v93);
      v96 = v123;
      if (v95 != 1)
      {
        goto LABEL_49;
      }

      sub_24B64BB2C(v92, &qword_27F02D348, &unk_24B697310);
      v45 = v139;
      v42 = v140;
    }

    else
    {
      v97 = v122;
      sub_24B64A3E0(v92, v122, &qword_27F02D348, &unk_24B697310);
      v98 = v94(v92 + v90, 1, v93);
      v96 = v123;
      if (v98 == 1)
      {
        (*v127)(v97, v93);
LABEL_49:
        sub_24B64BB2C(v92, &qword_27F02D3A0, &unk_24B697530);
        v45 = v139;
        v42 = v140;
        goto LABEL_52;
      }

      v99 = v148;
      (*v126)(v148, v92 + v90, v93);
      sub_24B65F4FC(&qword_2810E2028, MEMORY[0x277D09D68]);
      LODWORD(v130) = sub_24B6967E8();
      v100 = v97;
      v101 = *v127;
      (*v127)(v99, v93);
      v101(v100, v93);
      sub_24B64BB2C(v92, &qword_27F02D348, &unk_24B697310);
      v45 = v139;
      v42 = v140;
      if ((v130 & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    v102 = *(v159 + 20);
    v103 = *(v153 + 48);
    sub_24B64A3E0(&v131[v102], v96, &qword_27F02D350, &unk_24B69A7E0);
    sub_24B64A3E0(v152 + v102, v96 + v103, &qword_27F02D350, &unk_24B69A7E0);
    v104 = v154;
    v105 = v129;
    if (v129(v96, 1, v154) == 1)
    {
      if (v105(v96 + v103, 1, v104) != 1)
      {
        goto LABEL_51;
      }

      sub_24B64BB2C(v96, &qword_27F02D350, &unk_24B69A7E0);
      sub_24B65F438(v152, type metadata accessor for OnboardingArtwork);
      sub_24B65F438(v131, type metadata accessor for OnboardingArtwork);
      v50 = v150;
      goto LABEL_29;
    }

    v107 = v136;
    sub_24B64A3E0(v96, v136, &qword_27F02D350, &unk_24B69A7E0);
    if (v105(v96 + v103, 1, v104) == 1)
    {
      (*v125)(v107, v104);
LABEL_51:
      sub_24B64BB2C(v96, &qword_27F02D398, &qword_24B698080);
LABEL_52:
      sub_24B65F438(v152, type metadata accessor for OnboardingArtwork);
      sub_24B65F438(v131, type metadata accessor for OnboardingArtwork);
      v118 = &qword_27F02D670;
      v119 = &qword_24B697840;
LABEL_53:
      v120 = v158;
LABEL_54:
      sub_24B64BB2C(v120, v118, v119);
LABEL_55:
      sub_24B65F438(v42, type metadata accessor for OnboardingModality);
      sub_24B65F438(v45, type metadata accessor for OnboardingModality);
      goto LABEL_56;
    }

    v108 = v147;
    (*v124)(v147, v96 + v103, v104);
    sub_24B65F4FC(&qword_2810E2040, MEMORY[0x277CC9260]);
    LODWORD(v130) = sub_24B6967E8();
    v109 = *v125;
    (*v125)(v108, v104);
    v109(v107, v104);
    sub_24B64BB2C(v96, &qword_27F02D350, &unk_24B69A7E0);
    sub_24B65F438(v152, type metadata accessor for OnboardingArtwork);
    sub_24B65F438(v131, type metadata accessor for OnboardingArtwork);
    sub_24B64BB2C(v158, &qword_27F02D670, &qword_24B697840);
    v50 = v150;
    v106 = v157;
    if ((v130 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_32:
    v110 = v106[7];
    if ((sub_24B695788() & 1) == 0)
    {
      goto LABEL_55;
    }

    v111 = v106[8];
    v112 = *&v45[v111];
    v113 = *&v45[v111 + 8];
    v114 = &v42[v111];
    if ((v112 != *v114 || v113 != *(v114 + 1)) && (sub_24B696AD8() & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v45[v106[9]] != v42[v106[9]])
    {
      goto LABEL_55;
    }

    v115 = v106[10];
    if ((sub_24B695638() & 1) == 0)
    {
      goto LABEL_55;
    }

    v116 = v106[11];
    v117 = sub_24B695638();
    sub_24B65F438(v42, type metadata accessor for OnboardingModality);
    sub_24B65F438(v45, type metadata accessor for OnboardingModality);
    if (v117)
    {
      v46 = v151 - 1;
      v49 = v137 + v128;
      v48 = v138 + v128;
      v51 = v156;
      if (v151 != 1)
      {
        continue;
      }
    }

    return v117 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24B65F268(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_24B65E060(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B65F28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B65F2D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B65F334()
{
  result = qword_27F02D870;
  if (!qword_27F02D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D870);
  }

  return result;
}

unint64_t sub_24B65F38C()
{
  result = qword_27F02D878;
  if (!qword_27F02D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D878);
  }

  return result;
}

unint64_t sub_24B65F3E4()
{
  result = qword_27F02D880;
  if (!qword_27F02D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D880);
  }

  return result;
}

uint64_t sub_24B65F438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B65F498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingArtwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B65F4FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B65F544()
{
  v50 = type metadata accessor for OnboardingModality();
  v0 = *(v50 - 8);
  v1 = *(v0 + 64);
  v2 = (MEMORY[0x28223BE20])();
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v49 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v53 = &v49 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D658, &unk_24B6977E0);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D668, &qword_24B6977F0);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v49 - v17;
  v19 = type metadata accessor for OnboardingDetail();
  v24 = *(v19 - 8);
  v20 = *(v24 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(type metadata accessor for OnboardingModalityPickerState() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D660, &unk_24B698E60);
  sub_24B6966D8();
  sub_24B689A78(v18);
  sub_24B64BB2C(v14, &qword_27F02D658, &unk_24B6977E0);
  v25 = *(v24 + 48);
  LOBYTE(v24) = v24 + 48;
  if (v25(v18, 1, v19) == 1)
  {
    sub_24B64BB2C(v18, &qword_27F02D668, &qword_24B6977F0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_24B65FC24(v18, v22, type metadata accessor for OnboardingDetail);
    v28 = *(v19 + 24);
    v49 = v22;
    v29 = *&v22[v28];
    v30 = *(v29 + 16);
    v51 = v30;
    if (v30)
    {
      v23 = 0;
      v31 = MEMORY[0x277D84F90];
      v32 = v50;
      do
      {
        v33 = *(v29 + 16);
        if (v23 >= v33)
        {
          __break(1u);
          goto LABEL_39;
        }

        v34 = (*(v0 + 80) + 32) & ~*(v0 + 80);
        v24 = *(v0 + 72);
        sub_24B65B404(v29 + v34 + v24 * v23, v10);
        if (v10[*(v32 + 36)])
        {
          sub_24B65FCAC(v10, type metadata accessor for OnboardingModality);
        }

        else
        {
          sub_24B65FC24(v10, v53, type metadata accessor for OnboardingModality);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24B65FC8C(0, *(v31 + 16) + 1, 1);
            v31 = v54;
          }

          v37 = *(v31 + 16);
          v36 = *(v31 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_24B65FC8C(v36 > 1, v37 + 1, 1);
            v31 = v54;
          }

          *(v31 + 16) = v37 + 1;
          sub_24B65FC24(v53, v31 + v34 + v37 * v24, type metadata accessor for OnboardingModality);
          v32 = v50;
          v30 = v51;
        }

        ++v23;
      }

      while (v30 != v23);
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
      v32 = v50;
    }

    if (*(v31 + 16))
    {
      LOBYTE(v24) = 1;
      v27 = sub_24B660DB0(0, 1, 1, MEMORY[0x277D84F90]);
      v23 = *(v27 + 2);
      v33 = *(v27 + 3);
      v30 = v23 + 1;
      if (v23 >= v33 >> 1)
      {
        goto LABEL_40;
      }

      while (1)
      {
        *(v27 + 2) = v30;
        v38 = &v27[16 * v23];
        v38[32] = v24;
        *(v38 + 5) = v31;
        v30 = v51;
        v53 = v27;
        if (!v51)
        {
          break;
        }

LABEL_18:
        v39 = 0;
        v31 = MEMORY[0x277D84F90];
        while (1)
        {
          v33 = *(v29 + 16);
          if (v39 >= v33)
          {
            break;
          }

          v23 = (*(v0 + 80) + 32) & ~*(v0 + 80);
          v40 = *(v0 + 72);
          sub_24B65B404(v29 + v23 + v40 * v39, v6);
          if (v6[*(v32 + 36)] == 1)
          {
            sub_24B65FC24(v6, v52, type metadata accessor for OnboardingModality);
            v41 = swift_isUniquelyReferenced_nonNull_native();
            v54 = v31;
            if ((v41 & 1) == 0)
            {
              sub_24B65FC8C(0, *(v31 + 16) + 1, 1);
              v31 = v54;
            }

            v24 = *(v31 + 16);
            v42 = *(v31 + 24);
            if (v24 >= v42 >> 1)
            {
              sub_24B65FC8C(v42 > 1, v24 + 1, 1);
              v31 = v54;
            }

            *(v31 + 16) = v24 + 1;
            sub_24B65FC24(v52, v31 + v23 + v24 * v40, type metadata accessor for OnboardingModality);
            v30 = v51;
          }

          else
          {
            sub_24B65FCAC(v6, type metadata accessor for OnboardingModality);
          }

          if (v30 == ++v39)
          {
            goto LABEL_30;
          }
        }

LABEL_39:
        __break(1u);
LABEL_40:
        v27 = sub_24B660DB0((v33 > 1), v30, 1, v27);
      }
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
      v53 = MEMORY[0x277D84F90];
      if (v30)
      {
        goto LABEL_18;
      }
    }

    v31 = MEMORY[0x277D84F90];
LABEL_30:
    if (*(v31 + 16))
    {
      v26 = v53;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v44 = v49;
      if ((v43 & 1) == 0)
      {
        v26 = sub_24B660DB0(0, *(v26 + 2) + 1, 1, v26);
      }

      v46 = *(v26 + 2);
      v45 = *(v26 + 3);
      if (v46 >= v45 >> 1)
      {
        v26 = sub_24B660DB0((v45 > 1), v46 + 1, 1, v26);
      }

      sub_24B65FCAC(v44, type metadata accessor for OnboardingDetail);
      *(v26 + 2) = v46 + 1;
      v47 = &v26[16 * v46];
      v47[32] = 0;
      *(v47 + 5) = v31;
    }

    else
    {
      sub_24B65FCAC(v49, type metadata accessor for OnboardingDetail);

      return v53;
    }
  }

  return v26;
}

uint64_t sub_24B65FC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_24B65FC8C(size_t a1, int64_t a2, char a3)
{
  result = sub_24B65FD0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24B65FCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_24B65FD0C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F02D890, &qword_24B698088);
  v10 = *(type metadata accessor for OnboardingModality() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for OnboardingModality() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_24B65FF20(void *a1, double a2, double a3)
{
  v5 = a1;
  OnboardingHostingController.preferredContentSize.setter(a2, a3);
}

id OnboardingHostingController.preferredContentSize.setter(double a1, double a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_setPreferredContentSize_, a1, a2);
}

void (*OnboardingHostingController.preferredContentSize.modify(uint64_t *a1))(objc_super **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 16) = xmmword_24B698090;
  *(v3 + 32) = v1;
  return sub_24B660040;
}

void sub_24B660040(objc_super **a1)
{
  v1 = *a1;
  v2 = *&(*a1)[1].receiver;
  v3 = *&(*a1)[1].super_class;
  receiver = (*a1)[2].receiver;
  ObjectType = swift_getObjectType();
  v1->receiver = receiver;
  v1->super_class = ObjectType;
  [(objc_super *)v1 setPreferredContentSize:v2, v3];

  free(v1);
}

uint64_t OnboardingHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_24B660454(a1);
  (*(*(*(v2 + class metadata base offset for OnboardingHostingController) - 8) + 8))(a1);
  return v5;
}

uint64_t OnboardingHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_24B660454(a1);
  (*(*(*(v3 + class metadata base offset for OnboardingHostingController) - 8) + 8))(a1);
  return v4;
}

void *OnboardingHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for OnboardingHostingController);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = sub_24B695C28();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id OnboardingHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id OnboardingHostingController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id OnboardingHostingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24B660454(uint64_t a1)
{
  v2 = *(*(*((*MEMORY[0x277D85000] & *v1) + class metadata base offset for OnboardingHostingController) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - v3);
  return sub_24B695C38();
}

__n128 OnboardingModalityDetailFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t OnboardingModalityDetailFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3)
{
  v27 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D918, ":S");
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v10 = *v3;
  v9 = v3[1];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D920, &qword_24B6980C8);
  v12 = v11[12];
  v13 = v11[16];
  v14 = v11[20];
  v15 = &v8[v11[24]];
  sub_24B660884();
  sub_24B696968();
  v16 = *MEMORY[0x277D043F0];
  v17 = sub_24B696708();
  (*(*(v17 - 8) + 104))(&v8[v13], v16, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  *(v18 + 24) = v9;
  *v15 = &unk_24B6980D8;
  *(v15 + 1) = v18;
  v19 = v27;

  sub_24B6968E8();
  v20 = *MEMORY[0x277D043E8];
  v21 = sub_24B6966F8();
  (*(*(v21 - 8) + 104))(&v8[v14], v20, v21);
  (*(v5 + 104))(v8, *MEMORY[0x277D043B0], v4);
  v22 = *v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_24B6610D8(0, v22[2] + 1, 1, v22, &qword_27F02D968, &qword_24B6981A8, &qword_27F02D918, ":S");
  }

  v24 = v22[2];
  v23 = v22[3];
  if (v24 >= v23 >> 1)
  {
    v22 = sub_24B6610D8(v23 > 1, v24 + 1, 1, v22, &qword_27F02D968, &qword_24B6981A8, &qword_27F02D918, ":S");
  }

  v22[2] = v24 + 1;
  result = (*(v5 + 32))(v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v8, v4);
  *v19 = v22;
  return result;
}

unint64_t sub_24B660884()
{
  result = qword_27F02D928;
  if (!qword_27F02D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D928);
  }

  return result;
}

uint64_t sub_24B6608D8(uint64_t a1, int *a2)
{
  v2[2] = sub_24B6968D8();
  v2[3] = sub_24B6968C8();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_24B6609E8;

  return v7();
}

uint64_t sub_24B6609E8()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_24B6968B8();
  if (v2)
  {
    v8 = sub_24B660BA8;
  }

  else
  {
    v8 = sub_24B660B44;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24B660B44()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24B660BA8()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_24B660C0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24B660CB4;

  return sub_24B6608D8(a1, v5);
}

uint64_t sub_24B660CB4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_24B660DB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F02D950, &qword_24B698190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_24B660EC0()
{
  result = qword_27F02D930;
  if (!qword_27F02D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D930);
  }

  return result;
}

unint64_t sub_24B660F18()
{
  result = qword_27F02D938;
  if (!qword_27F02D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D938);
  }

  return result;
}

unint64_t sub_24B660F70()
{
  result = qword_27F02D940;
  if (!qword_27F02D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D940);
  }

  return result;
}

unint64_t sub_24B660FC8()
{
  result = qword_27F02D948;
  if (!qword_27F02D948)
  {
    type metadata accessor for OnboardingModalityDetailState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F02D948);
  }

  return result;
}

uint64_t sub_24B661020(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24B661068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}