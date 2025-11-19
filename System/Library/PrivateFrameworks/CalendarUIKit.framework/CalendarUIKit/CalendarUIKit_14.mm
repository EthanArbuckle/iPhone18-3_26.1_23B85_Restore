uint64_t type metadata accessor for CreateFamilyCalendarFlow()
{
  result = qword_1EC4675A0;
  if (!qword_1EC4675A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CACDE8F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CAD4CC04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1CACDF6CC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C784();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1CACDEAD8(uint64_t a1, char a2, uint64_t a3)
{
  v6 = sub_1CAD4C784();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  FamilyCalendarFlow = type metadata accessor for CreateFamilyCalendarFlow();
  (*(a3 + *(FamilyCalendarFlow + 24)))(a1, a2 & 1);
  sub_1CACDE8F0(v9);
  sub_1CAD4C774();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1CACDEBE4(uint64_t a1, uint64_t a2)
{
  FamilyCalendarFlow = type metadata accessor for CreateFamilyCalendarFlow();
  (*(*(FamilyCalendarFlow - 8) + 16))(a2, a1, FamilyCalendarFlow);
  return a2;
}

uint64_t sub_1CACDEC48(uint64_t a1, uint64_t a2)
{
  FamilyCalendarFlow = type metadata accessor for CreateFamilyCalendarFlow();
  (*(*(FamilyCalendarFlow - 8) + 32))(a2, a1, FamilyCalendarFlow);
  return a2;
}

uint64_t sub_1CACDECAC(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for CreateFamilyCalendarFlow() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CACDEAD8(a1, a2 & 1, v6);
}

uint64_t CreateFamilyCalendarFlow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467538);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = (v1 + *(type metadata accessor for CreateFamilyCalendarFlow() + 20));
  v6 = *v5;
  v23 = v5[1];
  v24 = v6;
  v36 = v6;
  v37 = v23;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467530);
  sub_1CAD4D9B4();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  swift_getKeyPath();
  v36 = v7;
  v37 = v8;
  v38 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467540);
  sub_1CAD4DAD4();

  v10 = v34;
  v21 = v35;

  v32 = v10;
  v33 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467550);
  sub_1CAB23B0C(&qword_1EC467558, &qword_1EC467548);
  sub_1CAB23B0C(&qword_1EC467560, &qword_1EC467548);
  sub_1CAB23B0C(&qword_1EC467568, &qword_1EC467548);
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView();
  v12 = sub_1CACDF280();
  v13 = sub_1CACDF2D4();
  v14 = sub_1CACDF328(&qword_1EC467580, type metadata accessor for CreateFamilyCalendarShareeView);
  v26 = &type metadata for CreateFamilyCalendarView;
  v27 = &type metadata for CreateFamilyCalendarViewModel.FamilyCalendarScreens;
  v28 = FamilyCalendarShareeView;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  swift_getOpaqueTypeConformance2();
  sub_1CAD4C914();
  v15 = CUIKAppTintColor();
  v16 = sub_1CAD4D7D4();
  KeyPath = swift_getKeyPath();
  v26 = v16;
  v18 = sub_1CAD4C754();
  v19 = &v4[*(v2 + 36)];
  *v19 = KeyPath;
  v19[1] = v18;
  v26 = v24;
  v27 = v23;
  sub_1CAD4D994();
  type metadata accessor for CreateFamilyCalendarViewModel();
  sub_1CACDF3D0();
  sub_1CACDF328(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4D4F4();

  return sub_1CAB34D08(v4);
}

uint64_t sub_1CACDF10C()
{
  type metadata accessor for CreateFamilyCalendarViewModel();
  sub_1CACDF328(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel);
  sub_1CAD4C6D4();
  sub_1CAD4D984();
  type metadata accessor for CreateFamilyCalendarShareeView();
  sub_1CACDF280();
  sub_1CACDF2D4();
  sub_1CACDF328(&qword_1EC467580, type metadata accessor for CreateFamilyCalendarShareeView);
  sub_1CAD4D644();
}

unint64_t sub_1CACDF280()
{
  result = qword_1EC467570;
  if (!qword_1EC467570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467570);
  }

  return result;
}

unint64_t sub_1CACDF2D4()
{
  result = qword_1EC467578;
  if (!qword_1EC467578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467578);
  }

  return result;
}

uint64_t sub_1CACDF328(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CACDF378@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1CCAA5DB0]();
  *a1 = result;
  return result;
}

unint64_t sub_1CACDF3D0()
{
  result = qword_1EC467588;
  if (!qword_1EC467588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467538);
    sub_1CAB23B0C(&qword_1EC467590, &qword_1EC467598);
    sub_1CAB23B0C(&qword_1EC463FF8, &qword_1EC464000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467588);
  }

  return result;
}

void sub_1CACDF4F8()
{
  sub_1CACDF5F4(319, &qword_1EC463A50, MEMORY[0x1E697BF88], MEMORY[0x1E697DCC8]);
  if (v0 <= 0x3F)
  {
    sub_1CACDF5F4(319, qword_1EC4675B0, type metadata accessor for CreateFamilyCalendarViewModel, MEMORY[0x1E6981788]);
    if (v1 <= 0x3F)
    {
      sub_1CABA5BAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CACDF5F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CACDF658(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1CACDF6CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACDF75C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CACDF7E4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 41) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 41) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1CACDF968(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 41) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 41] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

uint64_t sub_1CACDFC20(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1CAD4DD74();
}

uint64_t sub_1CACDFDF0(uint64_t a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4646C8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464DD8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467638);
  v4 = *(a1 + 16);
  v21 = v3;
  v22 = v4;
  swift_getTupleTypeMetadata();
  sub_1CAD4DD64();
  swift_getWitnessTable();
  v5 = sub_1CAD4DA24();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15[-v10];
  v12 = *(a1 + 24);
  v16 = v4;
  v17 = v12;
  v18 = v1;
  sub_1CAD4CC94();
  sub_1CAD4DA14();
  swift_getWitnessTable();
  sub_1CAC06984(v9);
  v13 = *(v6 + 8);
  v13(v9, v5);
  sub_1CAC06984(v11);
  return (v13)(v11, v5);
}

uint64_t sub_1CACE0024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v43 = a3;
  v39 = a2;
  v4 = a1;
  v41 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v38 = &v36 - v8;
  v9 = *v7;
  sub_1CAD4DC94();
  sub_1CAD4C744();
  *&v66[6] = v63[5];
  *&v66[22] = v63[6];
  *&v66[38] = v64;
  *&v65[10] = *v66;
  *v65 = v9;
  *&v65[8] = 256;
  *&v65[26] = *&v66[16];
  *&v65[42] = *&v66[32];
  v37 = v4;
  v10 = *(v4 + 8);
  v11 = *(v4 + 16);
  *&v65[56] = *(&v64 + 1);
  *v66 = v10;
  *&v66[8] = v11;
  sub_1CABA6054();

  v12 = sub_1CAD4D444();
  v14 = v13;
  v16 = v15;
  *v66 = sub_1CAD4D8A4();
  v17 = sub_1CAD4D3E4();
  v19 = v18;
  LOBYTE(v4) = v20;
  v22 = v21;
  sub_1CABA6128(v12, v14, v16 & 1);

  v23 = sub_1CAD4D204();
  sub_1CAD4C5F4();
  LOBYTE(v63[0]) = v4 & 1;
  LOBYTE(v56) = 0;
  *v66 = v17;
  *&v66[8] = v19;
  v66[16] = v4 & 1;
  *&v66[17] = v61[0];
  *&v66[20] = *(v61 + 3);
  *&v66[24] = v22;
  v66[32] = v23;
  *&v66[33] = v52;
  *&v66[36] = *(&v52 + 3);
  *&v66[40] = v24;
  *&v66[48] = v25;
  *&v66[56] = v26;
  *&v66[64] = v27;
  v66[72] = 0;
  v28 = v37;
  LOBYTE(v4) = *(v37 + 40);
  v29 = v39;
  v30 = type metadata accessor for ColorField();
  v31 = v38;
  sub_1CAC06984(v28 + *(v30 + 40));
  v56 = *v65;
  v57 = *&v65[16];
  v58 = *&v65[32];
  v59 = *&v65[48];
  v54 = *&v66[32];
  v55[0] = *&v66[48];
  *(v55 + 9) = *&v66[57];
  v52 = *v66;
  v53 = *&v66[16];
  v60[0] = &v56;
  v60[1] = &v52;
  v49 = 0;
  v50 = v4;
  v51 = v4 ^ 1;
  v60[2] = &v49;
  v33 = v40;
  v32 = v41;
  (*(v41 + 16))(v40, v31, v29);
  v60[3] = v33;
  sub_1CAB23A9C(v65, v61, &qword_1EC4646C8);
  sub_1CAB23A9C(v66, v61, &qword_1EC464DD8);
  v48[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646C8);
  v48[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464DD8);
  v48[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467638);
  v48[3] = v29;
  v44 = sub_1CAC0584C();
  v45 = sub_1CAC1ADF0();
  v46 = sub_1CACE0490();
  v47 = v43;
  sub_1CACDFC20(v60, 4uLL, v48);
  sub_1CAB21B68(v66, &qword_1EC464DD8);
  sub_1CAB21B68(v65, &qword_1EC4646C8);
  v34 = *(v32 + 8);
  v34(v31, v29);
  v34(v33, v29);
  v61[2] = v54;
  v62[0] = v55[0];
  *(v62 + 9) = *(v55 + 9);
  v61[0] = v52;
  v61[1] = v53;
  sub_1CAB21B68(v61, &qword_1EC464DD8);
  v63[0] = v56;
  v63[1] = v57;
  v63[2] = v58;
  v63[3] = v59;
  return sub_1CAB21B68(v63, &qword_1EC4646C8);
}

unint64_t sub_1CACE0490()
{
  result = qword_1EC467640;
  if (!qword_1EC467640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC467638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC467640);
  }

  return result;
}

uint64_t sub_1CACE0510(uint64_t a1)
{
  v2 = sub_1CAD4C1B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_1CAC929E8(&unk_1F4A9FD90);
  swift_arrayDestroy();
  sub_1CACE0810(a1, v8);
  v13 = sub_1CAD4C1D4();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v8, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1CAD4C1C4();
    (*(v14 + 8))(v8, v13);
    sub_1CAD4C1A4();
    (*(v3 + 8))(v5, v2);
    v16 = sub_1CAD4C174();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v11, 1, v16) == 1)
    {

      sub_1CACE0880(v11);
    }

    else
    {
      v18 = sub_1CAD4C164();
      v20 = v19;
      (*(v17 + 8))(v11, v16);
      v21 = sub_1CABF3384(v18, v20, v12);

      if (v21)
      {
        return sub_1CAD4D8A4();
      }
    }

    return sub_1CAD4D804();
  }

  return result;
}

uint64_t sub_1CACE0810(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACE0880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CACE08E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v72 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v67 - v8;
  v75 = type metadata accessor for EventAlarmTrigger();
  v10 = MEMORY[0x1EEE9AC00](v75);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v74 = &v67 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v73 = (&v67 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v76 = (&v67 - v17);
  v89 = type metadata accessor for EventAlarmModelObject();
  v18 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v77 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467668);
  MEMORY[0x1EEE9AC00](v80);
  v81 = &v67 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v78 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v84 = &v67 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v83 = &v67 - v26;
  v85 = type metadata accessor for UIAlarm(0);
  MEMORY[0x1EEE9AC00](v85);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a2 + 16);
  if (!v30)
  {
    return 0;
  }

  v69 = v9;
  v70 = v4;
  v86 = a1;
  v31 = a2 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  v32 = (v18 + 48);
  v82 = *(v27 + 72);
  v67 = (v5 + 8);
  v33 = &unk_1CAD5FE80;
  v34 = v89;
  v88 = v32;
  v71 = v12;
  v68 = (v5 + 32);
  v79 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    v87 = v30;
    sub_1CACE8D20(v31, v29, type metadata accessor for UIAlarm);
    v35 = v33;
    v36 = v83;
    sub_1CAB23A9C(v29, v83, &qword_1EC465488);
    v37 = *v32;
    v38 = (*v32)(v36, 1, v34);
    v39 = v36;
    v33 = v35;
    sub_1CAB21B68(v39, &qword_1EC465488);
    if (v38 == 1)
    {
      v40 = v29[*(v85 + 20)] ^ 1;
    }

    else
    {
      v40 = 0;
    }

    v41 = v86;
    v42 = v84;
    sub_1CAB23A9C(v86, v84, &qword_1EC465488);
    v43 = v37(v42, 1, v89);
    sub_1CAB21B68(v42, &qword_1EC465488);
    if (v43 == 1)
    {
      v44 = *(v85 + 20);
      v45 = *(v41 + v44);
      v32 = v88;
      v34 = v89;
      if ((v40 & 1) == v45)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v32 = v88;
      v34 = v89;
      if (v40)
      {
        goto LABEL_32;
      }

      v44 = *(v85 + 20);
      v45 = *(v86 + v44);
    }

    v46 = v29[v44];
    if (v46 != v45)
    {
      goto LABEL_32;
    }

    if (v46 & v45)
    {
      goto LABEL_35;
    }

    v47 = v81;
    v48 = *(v80 + 48);
    sub_1CAB23A9C(v29, v81, &qword_1EC465488);
    sub_1CAB23A9C(v86, v47 + v48, &qword_1EC465488);
    if (v37(v47, 1, v34) == 1)
    {
      break;
    }

    v49 = v78;
    sub_1CAB23A9C(v47, v78, &qword_1EC465488);
    if (v37(v47 + v48, 1, v34) == 1)
    {
      sub_1CACE8BEC(v49, type metadata accessor for EventAlarmModelObject);
      v33 = v35;
      goto LABEL_18;
    }

    v52 = v77;
    sub_1CACE8B84(v47 + v48, v77, type metadata accessor for EventAlarmModelObject);
    v33 = v35;
    if (*(v49 + *(v34 + 20)) != *(v52 + *(v34 + 20)))
    {
      goto LABEL_30;
    }

    v53 = v76;
    sub_1CACE8D20(v49, v76, type metadata accessor for EventAlarmTrigger);
    if (swift_getEnumCaseMultiPayload() == 1 || (v54 = *v76, v53 = v73, sub_1CACE8D20(v52, v73, type metadata accessor for EventAlarmTrigger), swift_getEnumCaseMultiPayload() == 1))
    {
      sub_1CACE8BEC(v53, type metadata accessor for EventAlarmTrigger);
      v55 = v74;
      sub_1CACE8D20(v49, v74, type metadata accessor for EventAlarmTrigger);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_29;
      }

      v56 = *v68;
      v57 = v69;
      v58 = v70;
      (*v68)(v69, v74, v70);
      v59 = v52;
      v60 = v71;
      sub_1CACE8D20(v59, v71, type metadata accessor for EventAlarmTrigger);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v29 = v79;
      if (EnumCaseMultiPayload != 1)
      {
        (*v67)(v57, v58);
        v55 = v60;
        v52 = v77;
        v49 = v78;
LABEL_29:
        sub_1CACE8BEC(v55, type metadata accessor for EventAlarmTrigger);
        v34 = v89;
        v47 = v81;
LABEL_30:
        sub_1CACE8BEC(v52, type metadata accessor for EventAlarmModelObject);
        sub_1CACE8BEC(v49, type metadata accessor for EventAlarmModelObject);
        v50 = v47;
        v51 = &qword_1EC465488;
        goto LABEL_31;
      }

      v62 = v57;
      v63 = v72;
      v56(v72, v71, v58);
      v64 = sub_1CAD4C0A4();
      v65 = *v67;
      (*v67)(v63, v58);
      v65(v62, v58);
    }

    else
    {
      v64 = v54 == *v73;
      v29 = v79;
    }

    sub_1CACE8BEC(v77, type metadata accessor for EventAlarmModelObject);
    sub_1CACE8BEC(v78, type metadata accessor for EventAlarmModelObject);
    sub_1CAB21B68(v81, &qword_1EC465488);
    sub_1CACE8BEC(v29, type metadata accessor for UIAlarm);
    v34 = v89;
    if (v64)
    {
      return 1;
    }

LABEL_33:
    v31 += v82;
    v30 = v87 - 1;
    if (v87 == 1)
    {
      return 0;
    }
  }

  if (v37(v47 + v48, 1, v34) != 1)
  {
LABEL_18:
    v50 = v47;
    v51 = &qword_1EC467668;
LABEL_31:
    sub_1CAB21B68(v50, v51);
    v29 = v79;
LABEL_32:
    sub_1CACE8BEC(v29, type metadata accessor for UIAlarm);
    goto LABEL_33;
  }

  sub_1CAB21B68(v47, &qword_1EC465488);
  v29 = v79;
LABEL_35:
  sub_1CACE8BEC(v29, type metadata accessor for UIAlarm);
  return 1;
}

uint64_t sub_1CACE12AC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

void *sub_1CACE139C()
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v57 - v1;
  v63 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v57 - v6;
  v8 = type metadata accessor for UIAlarm(0);
  v61 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v57 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v59 = &v57 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v57 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v57 - v16;
  v18 = type metadata accessor for EventAlarmModelObject();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v0 + *(v8 + 24));
  v23 = sub_1CACE1F9C();
  v65 = v8;
  v66 = v18;
  v64 = v0;
  v62 = v19;
  if (v24)
  {
    v25 = *(v19 + 56);
    v26 = MEMORY[0x1E69E7CC0];
    v27 = v61;
  }

  else
  {
    *v21 = v23;
    type metadata accessor for EventAlarmTrigger();
    swift_storeEnumTagMultiPayload();
    *(v21 + *(v18 + 20)) = 1;
    sub_1CACE8D20(v21, v7, type metadata accessor for EventAlarmModelObject);
    v28 = v18;
    v25 = *(v19 + 56);
    v25(v7, 0, 1, v28);
    v25(v17, 1, 1, v28);

    sub_1CACE8CB0(v7, v17);
    v17[*(v8 + 20)] = 0;
    *&v17[*(v8 + 24)] = v22;
    v26 = sub_1CAD351A0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v30 = v26[2];
    v29 = v26[3];
    if (v30 >= v29 >> 1)
    {
      v26 = sub_1CAD351A0(v29 > 1, v30 + 1, 1, v26);
    }

    sub_1CACE8BEC(v21, type metadata accessor for EventAlarmModelObject);
    v26[2] = v30 + 1;
    v27 = v61;
    sub_1CACE8B84(v17, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v61 + 72) * v30, type metadata accessor for UIAlarm);
    v8 = v65;
  }

  v31 = v66;
  v25(v7, 1, 1, v66);
  v25(v15, 1, 1, v31);

  sub_1CACE8CB0(v7, v15);
  v15[*(v8 + 20)] = 0;
  *&v15[*(v8 + 24)] = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1CAD351A0(0, v26[2] + 1, 1, v26);
  }

  v33 = v26[2];
  v32 = v26[3];
  if (v33 >= v32 >> 1)
  {
    v26 = sub_1CAD351A0(v32 > 1, v33 + 1, 1, v26);
  }

  v26[2] = v33 + 1;
  v61 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v60 = *(v27 + 72);
  sub_1CACE8B84(v15, v26 + v61 + v60 * v33, type metadata accessor for UIAlarm);
  v70 = v26;
  v34 = OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event;
  v35 = v68;
  sub_1CAB23A9C(v22 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, v68, &qword_1EC463FA8);
  v36 = v67;
  MEMORY[0x1CCAA6D30](v69);
  sub_1CAB21B68(v35, &qword_1EC463FA8);
  v37 = sub_1CACE1DD4();
  sub_1CACE8BEC(v36, type metadata accessor for EventModelObject);
  if (v37)
  {
    v38 = v66;
    v25(v7, 1, 1, v66);
    v39 = v59;
    v25(v59, 1, 1, v38);

    sub_1CACE8CB0(v7, v39);
    v40 = v65;
    *(v39 + *(v65 + 20)) = 1;
    *(v39 + *(v40 + 24)) = v22;
    v42 = v26[2];
    v41 = v26[3];
    if (v42 >= v41 >> 1)
    {
      v26 = sub_1CAD351A0(v41 > 1, v42 + 1, 1, v26);
    }

    v43 = v64;
    v44 = v61;
    v45 = v62;
    v26[2] = v42 + 1;
    sub_1CACE8B84(v39, v26 + v44 + v42 * v60, type metadata accessor for UIAlarm);
    v70 = v26;
  }

  else
  {
    v43 = v64;
    v40 = v65;
    v45 = v62;
  }

  v46 = v68;
  sub_1CAB23A9C(v22 + v34, v68, &qword_1EC463FA8);
  v47 = v67;
  MEMORY[0x1CCAA6D30](v69);
  sub_1CAB21B68(v46, &qword_1EC463FA8);
  v48 = *(v47 + *(v63 + 36));
  sub_1CACE8BEC(v47, type metadata accessor for EventModelObject);
  if (v48 == 1)
  {
    v49 = sub_1CACE4FA0();
  }

  else
  {
    v49 = sub_1CACE53E0();
  }

  v50 = v49;
  if ((sub_1CACE08E8(v43, v49) & 1) == 0 && (*(v43 + *(v40 + 20)) & 1) == 0)
  {
    v51 = v58;
    sub_1CAB23A9C(v43, v58, &qword_1EC465488);
    v52 = (*(v45 + 48))(v51, 1, v66);
    sub_1CAB21B68(v51, &qword_1EC465488);
    if (v52 != 1)
    {
      v53 = v57;
      sub_1CACE8D20(v43, v57, type metadata accessor for UIAlarm);
      v55 = v26[2];
      v54 = v26[3];
      if (v55 >= v54 >> 1)
      {
        v26 = sub_1CAD351A0(v54 > 1, v55 + 1, 1, v26);
      }

      v26[2] = v55 + 1;
      sub_1CACE8B84(v53, v26 + v61 + v55 * v60, type metadata accessor for UIAlarm);
      v70 = v26;
    }
  }

  sub_1CAD0F4CC(v50);
  return v70;
}

void (*sub_1CACE1BC8(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(type metadata accessor for EventModelObject() - 8) + 64);
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  a1[3] = v7;
  sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, v7, &qword_1EC463FA8);
  MEMORY[0x1CCAA6D30](v6);
  return sub_1CACE1CF8;
}

void sub_1CACE1CF8(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_1CACE8D20(*(a1 + 8), v3, type metadata accessor for EventModelObject);
    sub_1CAD4DAC4();
    sub_1CAB21B68(v2, &qword_1EC463FA8);
    sub_1CACE8BEC(v4, type metadata accessor for EventModelObject);
  }

  else
  {
    sub_1CAD4DAC4();
    sub_1CAB21B68(v2, &qword_1EC463FA8);
  }

  free(v2);
  free(v4);

  free(v3);
}

BOOL sub_1CACE1DD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464E38);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for EventModelObject();
  if (*(v0 + *(v4 + 36)))
  {
    return 0;
  }

  v5 = v4;
  sub_1CAB23A9C(v0 + *(v4 + 144), v3, &qword_1EC464E38);
  v6 = type metadata accessor for EventAttendeeModelObject(0);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1CAB21B68(v3, &qword_1EC464E38);
  }

  else
  {
    v7 = *&v3[*(v6 + 44)];
    sub_1CACE8BEC(v3, type metadata accessor for EventAttendeeModelObject);
    if (v7 == 3)
    {
      return 0;
    }
  }

  if (*(v0 + *(v5 + 112)) == 3)
  {
    return 0;
  }

  if (sub_1CACE5E64())
  {
    return 0;
  }

  v8 = (v0 + *(v5 + 84));
  v9 = v8[9];
  v23 = v8[8];
  v24 = v9;
  v25 = v8[10];
  v10 = v8[5];
  v19 = v8[4];
  v20 = v10;
  v11 = v8[7];
  v21 = v8[6];
  v22 = v11;
  v12 = v8[1];
  v15 = *v8;
  v16 = v12;
  v13 = v8[3];
  v17 = v8[2];
  v18 = v13;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v15) == 1)
  {
    return 0;
  }

  return v16 || *(&v19 + 1) >> 60 != 15;
}

uint64_t sub_1CACE1F9C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - v3;
  v5 = type metadata accessor for EventModelObject();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v32 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event;
  sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, v4, &qword_1EC463FA8);
  MEMORY[0x1CCAA6D30](v2);
  sub_1CAB21B68(v4, &qword_1EC463FA8);
  v15 = v13[*(v5 + 36)];
  sub_1CACE8BEC(v13, type metadata accessor for EventModelObject);
  sub_1CAB23A9C(v1 + v14, v4, &qword_1EC463FA8);
  if (v15 == 1)
  {
    MEMORY[0x1CCAA6D30](v2);
    sub_1CAB21B68(v4, &qword_1EC463FA8);
    v16 = &v11[*(v5 + 104)];
    v17 = type metadata accessor for EventCalendarModelObject();
    if ((*(*(v17 - 8) + 48))(v16, 1, v17) || (v18 = *(v16 + 184), v19 = *(v16 + 216), v38 = *(v16 + 200), v39[0] = v19, *(v39 + 10) = *(v16 + 226), v20 = *(v16 + 120), v21 = *(v16 + 152), v34 = *(v16 + 136), v35 = v21, v36 = *(v16 + 168), v37 = v18, v32 = *(v16 + 104), v33 = v20, sub_1CABED4EC(&v32) == 1))
    {
      v22 = v11;
LABEL_8:
      sub_1CACE8BEC(v22, type metadata accessor for EventModelObject);
      return 0;
    }

    v30 = *(v16 + 25);
    sub_1CACE8BEC(v11, type metadata accessor for EventModelObject);
    return v30;
  }

  else
  {
    MEMORY[0x1CCAA6D30](v2);
    sub_1CAB21B68(v4, &qword_1EC463FA8);
    v23 = &v8[*(v5 + 104)];
    v24 = type metadata accessor for EventCalendarModelObject();
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) || (v25 = *(v23 + 184), v26 = *(v23 + 216), v38 = *(v23 + 200), v39[0] = v26, *(v39 + 10) = *(v23 + 226), v27 = *(v23 + 120), v28 = *(v23 + 152), v34 = *(v23 + 136), v35 = v28, v36 = *(v23 + 168), v37 = v25, v32 = *(v23 + 104), v33 = v27, sub_1CABED4EC(&v32) == 1))
    {
      v22 = v8;
      goto LABEL_8;
    }

    v31 = *(v23 + 23);
    sub_1CACE8BEC(v8, type metadata accessor for EventModelObject);
    return v31;
  }
}

void *sub_1CACE2350()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v80 = v67 - v2;
  v79 = type metadata accessor for EventAlarmModelObject();
  v75 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v4 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for UIAlarm(0);
  v81 = *(v78 - 8);
  v5 = MEMORY[0x1EEE9AC00](v78);
  v76 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v68 = v67 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v67 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v67 - v12;
  v14 = type metadata accessor for EventModelObject();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v71 = v67 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v67 - v20;
  v77 = v0;
  v72 = OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event;
  sub_1CAB23A9C(v0 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, v13, &qword_1EC463FA8);
  v74 = v11;
  MEMORY[0x1CCAA6D30](v11);
  v73 = v13;
  sub_1CAB21B68(v13, &qword_1EC463FA8);
  v69 = v14;
  v22 = *&v21[*(v14 + 116)];

  sub_1CACE8BEC(v21, type metadata accessor for EventModelObject);
  v23 = MEMORY[0x1E69E7CC0];
  v70 = v17;
  if (v22)
  {
    v24 = *(v22 + 16);
    if (v24)
    {
      v82 = MEMORY[0x1E69E7CC0];
      sub_1CACBA148(0, v24, 0);
      v23 = v82;
      v25 = *(v75 + 80);
      v67[1] = v22;
      v26 = v22 + ((v25 + 32) & ~v25);
      v27 = *(v75 + 72);
      v28 = (v75 + 56);
      do
      {
        sub_1CACE8D20(v26, v4, type metadata accessor for EventAlarmModelObject);
        v29 = v80;
        sub_1CACE8B84(v4, v80, type metadata accessor for EventAlarmModelObject);
        v30 = *v28;
        v31 = v79;
        (*v28)(v29, 0, 1, v79);
        v30(v10, 1, 1, v31);
        sub_1CACE8CB0(v29, v10);
        v32 = v77;
        v33 = v78;
        v10[*(v78 + 20)] = 0;
        *&v10[*(v33 + 24)] = v32;
        v82 = v23;
        v35 = v23[2];
        v34 = v23[3];

        if (v35 >= v34 >> 1)
        {
          sub_1CACBA148(v34 > 1, v35 + 1, 1);
          v23 = v82;
        }

        v23[2] = v35 + 1;
        sub_1CACE8B84(v10, v23 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v35, type metadata accessor for UIAlarm);
        v26 += v27;
        --v24;
      }

      while (v24);
    }
  }

  v36 = v76;
  v37 = v77;
  v38 = v75;
  v39 = [objc_opt_self() isTravelAdvisorySupported];
  v41 = v73;
  v40 = v74;
  v42 = v72;
  if (!v39)
  {
    goto LABEL_25;
  }

  sub_1CAB23A9C(v37 + v72, v73, &qword_1EC463FA8);
  v43 = v37;
  v44 = v71;
  MEMORY[0x1CCAA6D30](v40);
  sub_1CAB21B68(v41, &qword_1EC463FA8);
  v45 = sub_1CACE1DD4();
  sub_1CACE8BEC(v44, type metadata accessor for EventModelObject);
  if (!v45)
  {
    v37 = v43;
    v36 = v76;
    goto LABEL_25;
  }

  sub_1CAB23A9C(v43 + v42, v41, &qword_1EC463FA8);
  v46 = v70;
  MEMORY[0x1CCAA6D30](v40);
  sub_1CAB21B68(v41, &qword_1EC463FA8);
  v47 = *(v46 + *(v69 + 100));
  v37 = v43;
  if (v47 == 2)
  {
    sub_1CACE8BEC(v46, type metadata accessor for EventModelObject);
    v36 = v76;
    goto LABEL_25;
  }

  if (v47 == 1)
  {
    sub_1CACE8BEC(v46, type metadata accessor for EventModelObject);
    v36 = v76;
    goto LABEL_18;
  }

  v36 = v76;
  if (v47)
  {
    sub_1CACE8BEC(v46, type metadata accessor for EventModelObject);
    goto LABEL_25;
  }

  v48 = [objc_opt_self() shared];
  if (!v48)
  {
    __break(1u);

    __break(1u);
    return result;
  }

  v49 = v48;
  v50 = [v48 get_enableTravelAdvisoriesForAutomaticBehavior];

  sub_1CACE8BEC(v46, type metadata accessor for EventModelObject);
  if (v50)
  {
LABEL_18:
    v51 = v38;
    v52 = *(v38 + 56);
    v54 = v79;
    v53 = v80;
    v52(v80, 1, 1, v79);
    v55 = v37;
    v56 = v68;
    v52(v68, 1, 1, v54);
    sub_1CACE8CB0(v53, v56);
    v57 = v78;
    *(v56 + *(v78 + 20)) = 1;
    *(v56 + *(v57 + 24)) = v55;
    v37 = v55;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1CAD351A0(0, v23[2] + 1, 1, v23);
    }

    v59 = v23[2];
    v58 = v23[3];
    v38 = v51;
    if (v59 >= v58 >> 1)
    {
      v23 = sub_1CAD351A0(v58 > 1, v59 + 1, 1, v23);
    }

    v23[2] = v59 + 1;
    sub_1CACE8B84(v68, v23 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v59, type metadata accessor for UIAlarm);
  }

LABEL_25:
  v60 = *(v38 + 56);
  v62 = v79;
  v61 = v80;
  v60(v80, 1, 1, v79);
  v60(v36, 1, 1, v62);
  sub_1CACE8CB0(v61, v36);
  v63 = v78;
  *(v36 + *(v78 + 20)) = 0;
  *(v36 + *(v63 + 24)) = v37;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1CAD351A0(0, v23[2] + 1, 1, v23);
  }

  v65 = v23[2];
  v64 = v23[3];
  if (v65 >= v64 >> 1)
  {
    v23 = sub_1CAD351A0(v64 > 1, v65 + 1, 1, v23);
  }

  v23[2] = v65 + 1;
  sub_1CACE8B84(v36, v23 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v65, type metadata accessor for UIAlarm);
  v82 = v23;

  sub_1CACE6050(&v82);

  return v82;
}

uint64_t sub_1CACE2C48(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v3 = sub_1CAD4C0F4();
  v77 = *(v3 - 8);
  v78 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v76 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v75 - v6;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467670);
  MEMORY[0x1EEE9AC00](v80);
  v83 = &v75 - v7;
  v81 = type metadata accessor for EventAlarmTrigger();
  v8 = MEMORY[0x1EEE9AC00](v81);
  v79 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v82 = &v75 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v85 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v75 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v89 = &v75 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v88 = &v75 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v86 = &v75 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v90 = &v75 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v75 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v75 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v75 - v32;
  v34 = type metadata accessor for EventAlarmModelObject();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v75 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v75 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v75 - v42;
  v91 = a1;
  sub_1CAB23A9C(a1, v33, &qword_1EC465488);
  v44 = *(v35 + 48);
  if (v44(v33, 1, v34) == 1)
  {
    sub_1CAB21B68(v33, &qword_1EC465488);
    v45 = 0;
  }

  else
  {
    sub_1CACE8B84(v33, v43, type metadata accessor for EventAlarmModelObject);
    v45 = v43[*(v34 + 20)];
    sub_1CACE8BEC(v43, type metadata accessor for EventAlarmModelObject);
  }

  sub_1CAB23A9C(v92, v31, &qword_1EC465488);
  if (v44(v31, 1, v34) != 1)
  {
    sub_1CACE8B84(v31, v41, type metadata accessor for EventAlarmModelObject);
    v51 = v41[*(v34 + 20)];
    sub_1CACE8BEC(v41, type metadata accessor for EventAlarmModelObject);
    if (v45 == v51)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_1CAB23A9C(v91, v28, &qword_1EC465488);
    if (v44(v28, 1, v34) == 1)
    {
      sub_1CAB21B68(v28, &qword_1EC465488);
      LOBYTE(v28) = 0;
    }

    else
    {
      sub_1CACE8B84(v28, v38, type metadata accessor for EventAlarmModelObject);
      LOBYTE(v28) = v38[*(v34 + 20)];
      sub_1CACE8BEC(v38, type metadata accessor for EventAlarmModelObject);
    }

    return v28 & 1;
  }

  sub_1CAB21B68(v31, &qword_1EC465488);
  if (v45)
  {
    goto LABEL_10;
  }

LABEL_6:
  v46 = *(type metadata accessor for UIAlarm(0) + 20);
  v47 = v91;
  LODWORD(v28) = *(v91 + v46);
  v48 = *(v92 + v46);
  if (v28 != v48)
  {
    return v28 & 1;
  }

  v49 = v90;
  sub_1CAB23A9C(v91, v90, &qword_1EC465488);
  if (v44(v49, 1, v34) == 1)
  {
    v50 = v49;
  }

  else
  {
    v52 = v85;
    sub_1CACE8D20(v49, v85, type metadata accessor for EventAlarmTrigger);
    sub_1CACE8BEC(v49, type metadata accessor for EventAlarmModelObject);
    v53 = v52;
    v54 = v87;
    sub_1CACE8B84(v53, v87, type metadata accessor for EventAlarmTrigger);
    v55 = v86;
    sub_1CAB23A9C(v92, v86, &qword_1EC465488);
    if (v44(v55, 1, v34) != 1)
    {
      v65 = v79;
      sub_1CACE8D20(v55, v79, type metadata accessor for EventAlarmTrigger);
      sub_1CACE8BEC(v55, type metadata accessor for EventAlarmModelObject);
      v66 = v82;
      sub_1CACE8B84(v65, v82, type metadata accessor for EventAlarmTrigger);
      v67 = *(v80 + 48);
      v28 = v83;
      sub_1CACE8D20(v54, v83, type metadata accessor for EventAlarmTrigger);
      sub_1CACE8D20(v66, v28 + v67, type metadata accessor for EventAlarmTrigger);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v69 = v77;
          v68 = v78;
          v70 = *(v77 + 32);
          v71 = v75;
          v70(v75, v28, v78);
          v72 = v28 + v67;
          v73 = v76;
          v70(v76, v72, v68);
          LOBYTE(v28) = sub_1CAD4C094();
          v74 = *(v69 + 8);
          v74(v73, v68);
          v74(v71, v68);
          sub_1CACE8BEC(v66, type metadata accessor for EventAlarmTrigger);
          sub_1CACE8BEC(v54, type metadata accessor for EventAlarmTrigger);
        }

        else
        {
          sub_1CACE8BEC(v66, type metadata accessor for EventAlarmTrigger);
          sub_1CACE8BEC(v54, type metadata accessor for EventAlarmTrigger);
          (*(v77 + 8))(v28, v78);
          LOBYTE(v28) = 1;
        }
      }

      else
      {
        sub_1CACE8BEC(v66, type metadata accessor for EventAlarmTrigger);
        sub_1CACE8BEC(v54, type metadata accessor for EventAlarmTrigger);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*(v77 + 8))(v28 + v67, v78);
          LOBYTE(v28) = 0;
        }

        else
        {
          LOBYTE(v28) = *(v28 + v67) < *v28;
        }
      }

      return v28 & 1;
    }

    sub_1CACE8BEC(v54, type metadata accessor for EventAlarmTrigger);
    v50 = v55;
  }

  sub_1CAB21B68(v50, &qword_1EC465488);
  v56 = v88;
  sub_1CAB23A9C(v47, v88, &qword_1EC465488);
  v57 = v44(v56, 1, v34);
  sub_1CAB21B68(v56, &qword_1EC465488);
  if (v57 == 1)
  {
    v58 = v28;
  }

  else
  {
    v58 = 1;
  }

  LODWORD(v90) = v58;
  v59 = v89;
  sub_1CAB23A9C(v92, v89, &qword_1EC465488);
  v60 = v44(v59, 1, v34);
  sub_1CAB21B68(v59, &qword_1EC465488);
  v61 = v48 ^ 1;
  if (v60 != 1)
  {
    v61 = 0;
  }

  if (v61)
  {
    if (!v90)
    {
      goto LABEL_22;
    }
  }

  else if (v90)
  {
LABEL_22:
    LOBYTE(v28) = 1;
    return v28 & 1;
  }

  v62 = v84;
  sub_1CAB23A9C(v91, v84, &qword_1EC465488);
  v63 = v44(v62, 1, v34);
  sub_1CAB21B68(v62, &qword_1EC465488);
  if (v63 == 1)
  {
    LOBYTE(v28) = v28 ^ 1;
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  return v28 & 1;
}

uint64_t sub_1CACE36C8(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v76 - v6;
  v86 = type metadata accessor for EventAlarmModelObject();
  v88 = *(v86 - 8);
  v7 = MEMORY[0x1EEE9AC00](v86);
  v78 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v76 - v9;
  v89 = type metadata accessor for EventModelObject();
  v10 = MEMORY[0x1EEE9AC00](v89);
  v77 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v82 = &v76 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v84);
  v92 = &v76 - v13;
  v14 = type metadata accessor for UIAlarm(0);
  v15 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v79 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v76 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4654E8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v85 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v76 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v76 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467660);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v76 - v32;
  v34 = *(v31 + 56);
  v87 = a1;
  sub_1CAB23A9C(a1, &v76 - v32, &qword_1EC4654E8);
  sub_1CAB23A9C(v93, &v33[v34], &qword_1EC4654E8);
  v35 = *(v15 + 48);
  if (v35(v33, 1, v14) == 1)
  {
    if (v35(&v33[v34], 1, v14) == 1)
    {
      return sub_1CAB21B68(v33, &qword_1EC4654E8);
    }
  }

  else
  {
    sub_1CAB23A9C(v33, v29, &qword_1EC4654E8);
    if (v35(&v33[v34], 1, v14) != 1)
    {
      sub_1CACE8B84(&v33[v34], v21, type metadata accessor for UIAlarm);
      v43 = sub_1CACE870C(v29, v21);
      sub_1CACE8BEC(v21, type metadata accessor for UIAlarm);
      sub_1CACE8BEC(v29, type metadata accessor for UIAlarm);
      result = sub_1CAB21B68(v33, &qword_1EC4654E8);
      if (v43)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1CACE8BEC(v29, type metadata accessor for UIAlarm);
  }

  sub_1CAB21B68(v33, &qword_1EC467660);
LABEL_7:
  sub_1CAB23A9C(v87, v27, &qword_1EC4654E8);
  if (v35(v27, 1, v14) != 1)
  {
    v40 = v91;
    sub_1CACE8B84(v27, v91, type metadata accessor for UIAlarm);
    v37 = v89;
    v39 = v92;
    if (*(v40 + *(v14 + 5)) == 1)
    {
      sub_1CAB23A9C(v90 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, v92, &qword_1EC463FA8);
      v41 = v82;
      MEMORY[0x1CCAA6D30](v84);
      *&v41[*(v37 + 100)] = 1;
      v39 = v92;
      sub_1CAD4DAC4();
      sub_1CAB21B68(v39, &qword_1EC463FA8);
    }

    v42 = v81;
    sub_1CAB23A9C(v91, v81, &qword_1EC465488);
    if ((*(v88 + 48))(v42, 1, v86) == 1)
    {
      sub_1CAB21B68(v42, &qword_1EC465488);
      v38 = v93;
      goto LABEL_29;
    }

    v87 = v35;
    sub_1CACE8B84(v42, v83, type metadata accessor for EventAlarmModelObject);
    v44 = OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event;
    sub_1CAB23A9C(v90 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, v39, &qword_1EC463FA8);
    v45 = v77;
    v46 = v84;
    MEMORY[0x1CCAA6D30](v84);
    sub_1CAB21B68(v39, &qword_1EC463FA8);
    v47 = *(v45 + *(v37 + 116));

    sub_1CACE8BEC(v45, type metadata accessor for EventModelObject);
    if (v47)
    {
    }

    else
    {
      sub_1CAB23A9C(v90 + v44, v39, &qword_1EC463FA8);
      v48 = v82;
      MEMORY[0x1CCAA6D30](v46);
      v49 = *(v37 + 116);

      *&v48[v49] = MEMORY[0x1E69E7CC0];
      sub_1CAD4DAC4();
      sub_1CAB21B68(v39, &qword_1EC463FA8);
    }

    v50 = sub_1CACE1BC8(v94);
    v52 = v50;
    v53 = *(v37 + 116);
    if (*(v51 + v53))
    {
      v54 = v51;
      v39 = &v76;
      MEMORY[0x1EEE9AC00](v50);
      *(&v76 - 2) = v91;
      v55 = (v54 + v53);
      v56 = sub_1CACE60F8(sub_1CACE8FB0, (&v76 - 4));
      v57 = *(*(v54 + v53) + 16);
      if (v57 < v56)
      {
        __break(1u);
        goto LABEL_43;
      }

      sub_1CABF2C1C(v56, v57);
      v52(v94, 0);
    }

    else
    {
      v50(v94, 0);
    }

    v55 = sub_1CACE1BC8(v94);
    v39 = *(v37 + 116);
    if (*(v58 + v39))
    {
      v52 = v58;
      sub_1CACE8D20(v83, v78, type metadata accessor for EventAlarmModelObject);
      v54 = *(v52 + v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + v39) = v54;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    }

    v55(v94, 0);
    sub_1CACE8BEC(v83, type metadata accessor for EventAlarmModelObject);
    v39 = v92;
    v38 = v93;
    goto LABEL_28;
  }

  sub_1CAB21B68(v27, &qword_1EC4654E8);
  v37 = v89;
  v39 = v92;
  v38 = v93;
  while (1)
  {
    v62 = v38;
    v63 = v85;
    sub_1CAB23A9C(v62, v85, &qword_1EC4654E8);
    if (v35(v63, 1, v14) == 1)
    {
      return sub_1CAB21B68(v63, &qword_1EC4654E8);
    }

    v64 = v79;
    sub_1CACE8B84(v63, v79, type metadata accessor for UIAlarm);
    v65 = *(v64 + *(v14 + 5));
    if (v65 == 1)
    {
      sub_1CAB23A9C(v90 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, v39, &qword_1EC463FA8);
      v66 = v82;
      v67 = v39;
      v39 = v84;
      MEMORY[0x1CCAA6D30](v84);
      *&v66[*(v37 + 100)] = 2;
      sub_1CAD4DAC4();
      sub_1CAB21B68(v67, &qword_1EC463FA8);
    }

    v68 = v80;
    sub_1CAB23A9C(v64, v80, &qword_1EC465488);
    v69 = (*(v88 + 48))(v68, 1, v86);
    sub_1CAB21B68(v68, &qword_1EC465488);
    v70 = v65 ^ 1;
    if (v69 != 1)
    {
      v70 = 0;
    }

    if (v70)
    {
      break;
    }

    v71 = sub_1CACE1BC8(v94);
    v52 = v71;
    v73 = *(v37 + 116);
    if (!*(v72 + v73))
    {
      v71(v94, 0);
      return sub_1CACE8BEC(v64, type metadata accessor for UIAlarm);
    }

    v54 = v72;
    v14 = &v76;
    MEMORY[0x1EEE9AC00](v71);
    *(&v76 - 2) = v64;
    v55 = (v54 + v73);
    v74 = sub_1CACE60F8(sub_1CACE86EC, (&v76 - 4));
    v75 = *(*(v54 + v73) + 16);
    if (v75 >= v74)
    {
      sub_1CABF2C1C(v74, v75);
      v52(v94, 0);
      return sub_1CACE8BEC(v64, type metadata accessor for UIAlarm);
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v54 = sub_1CAD351C8(0, v54[2] + 1, 1, v54);
    *(v52 + v39) = v54;
LABEL_24:
    v61 = v54[2];
    v60 = v54[3];
    if (v61 >= v60 >> 1)
    {
      v54 = sub_1CAD351C8(v60 > 1, v61 + 1, 1, v54);
      *(v52 + v39) = v54;
    }

    v39 = v92;
    v38 = v93;
    v54[2] = v61 + 1;
    sub_1CACE8B84(v78, v54 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v61, type metadata accessor for EventAlarmModelObject);
    v55(v94, 0);
    sub_1CACE8BEC(v83, type metadata accessor for EventAlarmModelObject);
    v37 = v89;
LABEL_28:
    v35 = v87;
LABEL_29:
    sub_1CACE8BEC(v91, type metadata accessor for UIAlarm);
  }

  return sub_1CACE8BEC(v64, type metadata accessor for UIAlarm);
}

uint64_t sub_1CACE4358(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for EventAlarmModelObject();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467668);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  sub_1CACE8D20(a1, &v21 - v14, type metadata accessor for EventAlarmModelObject);
  (*(v4 + 56))(v15, 0, 1, v3);
  v16 = *(v7 + 56);
  sub_1CAB23A9C(v15, v9, &qword_1EC465488);
  sub_1CAB23A9C(v22, &v9[v16], &qword_1EC465488);
  v17 = *(v4 + 48);
  if (v17(v9, 1, v3) == 1)
  {
    sub_1CAB21B68(v15, &qword_1EC465488);
    if (v17(&v9[v16], 1, v3) == 1)
    {
      sub_1CAB21B68(v9, &qword_1EC465488);
      v18 = 1;
      return v18 & 1;
    }

LABEL_6:
    sub_1CAB21B68(v9, &qword_1EC467668);
    v18 = 0;
    return v18 & 1;
  }

  sub_1CAB23A9C(v9, v13, &qword_1EC465488);
  if (v17(&v9[v16], 1, v3) == 1)
  {
    sub_1CAB21B68(v15, &qword_1EC465488);
    sub_1CACE8BEC(v13, type metadata accessor for EventAlarmModelObject);
    goto LABEL_6;
  }

  v19 = v21;
  sub_1CACE8B84(&v9[v16], v21, type metadata accessor for EventAlarmModelObject);
  if (v13[*(v3 + 20)] == *(v19 + *(v3 + 20)))
  {
    v18 = _s13CalendarUIKit17EventAlarmTriggerO2eeoiySbAC_ACtFZ_0(v13, v19);
  }

  else
  {
    v18 = 0;
  }

  sub_1CACE8BEC(v19, type metadata accessor for EventAlarmModelObject);
  sub_1CAB21B68(v15, &qword_1EC465488);
  sub_1CACE8BEC(v13, type metadata accessor for EventAlarmModelObject);
  sub_1CAB21B68(v9, &qword_1EC465488);
  return v18 & 1;
}

uint64_t sub_1CACE4714()
{
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, &qword_1EC463FA8);

  return swift_deallocClassInstance();
}

void sub_1CACE4788()
{
  v1 = sub_1CAD4C0F4();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463FA8);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v38 - v3;
  v5 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EventAlarmTrigger();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for EventAlarmModelObject();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UIAlarm(0);
  if (*(v0 + *(v17 + 20)) == 1)
  {
    if (qword_1EC462DD8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v18 = v17;
  sub_1CAB23A9C(v0, v13, &qword_1EC465488);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1CAB21B68(v13, &qword_1EC465488);
    if (qword_1EC462DE0 == -1)
    {
LABEL_6:

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v19 = v13;
  v20 = v43;
  sub_1CACE8B84(v19, v43, type metadata accessor for EventAlarmModelObject);
  sub_1CACE8D20(v20, v10, type metadata accessor for EventAlarmTrigger);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v40;
    v21 = v41;
    v23 = v42;
    (*(v41 + 32))(v40, v10, v42);
    v24 = sub_1CAD4C084();
    v25 = CUIKStringForDateAndTime(v24);

    if (v25)
    {
      sub_1CAD4DF94();

      (*(v21 + 8))(v22, v23);
      sub_1CACE8BEC(v20, type metadata accessor for EventAlarmModelObject);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v26 = *v10;
    v27 = *(v0 + *(v18 + 24));
    v28 = OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event;
    sub_1CAB23A9C(v27 + OBJC_IVAR____TtC13CalendarUIKit14AlarmViewModel__event, v4, &qword_1EC463FA8);
    v29 = v39;
    MEMORY[0x1CCAA6D30](v39);
    sub_1CAB21B68(v4, &qword_1EC463FA8);
    LODWORD(v42) = v7[*(v5 + 36)];
    sub_1CACE8BEC(v7, type metadata accessor for EventModelObject);
    sub_1CAB23A9C(v27 + v28, v4, &qword_1EC463FA8);
    MEMORY[0x1CCAA6D30](v29);
    sub_1CAB21B68(v4, &qword_1EC463FA8);
    v30 = *&v7[*(v5 + 88)];
    v31 = v43;
    sub_1CACE8BEC(v7, type metadata accessor for EventModelObject);
    v32 = CUIKStringForRelativeOffset(v42, v30 > 0.0, v26);
    v33 = sub_1CAD4DF94();
    v35 = v34;

    if (*(v31 + *(v14 + 20)) == 1)
    {
      v36 = [objc_opt_self() cuik_defaultDesignator];
      sub_1CAD4DF94();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1CAD58380;
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = sub_1CABC6340();
      *(v37 + 32) = v33;
      *(v37 + 40) = v35;
      sub_1CAD4DF64();
    }

    sub_1CACE8BEC(v31, type metadata accessor for EventAlarmModelObject);
  }
}

uint64_t sub_1CACE4DD0()
{
  v1 = v0;
  v2 = type metadata accessor for EventAlarmModelObject();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_1CAB23A9C(v1, &v10 - v7, &qword_1EC465488);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1CAD4EAA4();
  }

  else
  {
    sub_1CACE8B84(v8, v5, type metadata accessor for EventAlarmModelObject);
    sub_1CAD4EAA4();
    EventAlarmTrigger.hash(into:)();
    sub_1CAD4EAA4();
    sub_1CACE8BEC(v5, type metadata accessor for EventAlarmModelObject);
  }

  type metadata accessor for UIAlarm(0);
  return sub_1CAD4EAA4();
}

uint64_t sub_1CACE4FA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v23 - v2;
  v4 = type metadata accessor for EventAlarmModelObject();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466BD8);
  v8 = (type metadata accessor for UIAlarm(0) - 8);
  v9 = *v8;
  v26 = *(*v8 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v25 = v11;
  *(v11 + 16) = xmmword_1CAD5B6C0;
  v12 = v11 + v10;
  *v7 = 0x40DFA40000000000;
  v13 = type metadata accessor for EventAlarmTrigger();
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v4 + 20)) = 0;
  v24 = type metadata accessor for EventAlarmModelObject;
  sub_1CACE8B84(v7, v3, type metadata accessor for EventAlarmModelObject);
  v14 = *(v5 + 56);
  v14(v3, 0, 1, v4);
  v15 = *(v0 + v8[8]);
  v27 = v15;
  v14(v12, 1, 1, v4);
  swift_retain_n();
  sub_1CACE8CB0(v3, v12);
  *(v12 + v8[7]) = 0;
  *(v12 + v8[8]) = v15;
  v16 = v12 + v26;
  *v7 = 0xC0EA5E0000000000;
  v23[1] = v13;
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v4 + 20)) = 0;
  sub_1CACE8B84(v7, v3, type metadata accessor for EventAlarmModelObject);
  v14(v3, 0, 1, v4);
  v14(v16, 1, 1, v4);
  v17 = v27;

  sub_1CACE8CB0(v3, v16);
  *(v16 + v8[7]) = 0;
  *(v16 + v8[8]) = v17;
  v18 = v26;
  v23[0] = 2 * v26;
  v19 = v12 + 2 * v26;
  *v7 = 0xC101238000000000;
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v4 + 20)) = 0;
  v20 = v24;
  sub_1CACE8B84(v7, v3, v24);
  v14(v3, 0, 1, v4);
  v14((v12 + 2 * v18), 1, 1, v4);
  sub_1CACE8CB0(v3, v12 + 2 * v18);
  *(v19 + v8[7]) = 0;
  *(v19 + v8[8]) = v27;
  v21 = v12 + v23[0] + v18;
  *v7 = 0xC12177E000000000;
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v4 + 20)) = 0;
  sub_1CACE8B84(v7, v3, v20);
  v14(v3, 0, 1, v4);
  v14(v21, 1, 1, v4);
  sub_1CACE8CB0(v3, v21);
  *(v21 + v8[7]) = 0;
  *(v21 + v8[8]) = v27;
  return v25;
}

uint64_t sub_1CACE53E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for EventAlarmModelObject();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466BD8);
  v9 = type metadata accessor for UIAlarm(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = v9 - 8;
  v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v14 = swift_allocObject();
  v45 = v14;
  *(v14 + 16) = xmmword_1CAD67BE0;
  v15 = v14 + v13;
  *v8 = 0;
  v51 = type metadata accessor for EventAlarmTrigger();
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  v52 = type metadata accessor for EventAlarmModelObject;
  sub_1CACE8B84(v8, v4, type metadata accessor for EventAlarmModelObject);
  v16 = *(v6 + 56);
  v16(v4, 0, 1, v5);
  v17 = *(v1 + *(v12 + 32));
  v16(v15, 1, 1, v5);
  swift_retain_n();
  sub_1CACE8CB0(v4, v15);
  v18 = *(v12 + 28);
  v53 = v15;
  *(v15 + v18) = 0;
  *(v15 + *(v12 + 32)) = v17;
  v19 = v11;
  v20 = v15 + v11;
  *v8 = 0xC072C00000000000;
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  sub_1CACE8B84(v8, v4, v52);
  v49 = v16;
  v16(v4, 0, 1, v5);
  v16(v20, 1, 1, v5);
  v21 = v6 + 56;

  sub_1CACE8CB0(v4, v20);
  *(v20 + *(v12 + 28)) = 0;
  *(v20 + *(v12 + 32)) = v17;
  v50 = v19;
  v47 = v12;
  v48 = 2 * v19;
  v22 = v53 + 2 * v19;
  *v8 = 0xC082C00000000000;
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  v23 = v52;
  sub_1CACE8B84(v8, v4, v52);
  v46 = v21;
  v24 = v49;
  v49(v4, 0, 1, v5);
  v24(v22, 1, 1, v5);

  sub_1CACE8CB0(v4, v22);
  v25 = v47;
  *(v22 + *(v47 + 28)) = 0;
  *(v22 + *(v25 + 32)) = v17;
  v26 = v53;
  v27 = v53 + v48 + v19;
  *v8 = 0xC08C200000000000;
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  sub_1CACE8B84(v8, v4, v23);
  v28 = v49;
  v49(v4, 0, 1, v5);
  v28(v27, 1, 1, v5);

  sub_1CACE8CB0(v4, v27);
  *(v27 + *(v25 + 28)) = 0;
  *(v27 + *(v25 + 32)) = v17;
  v29 = v50;
  v48 = 4 * v50;
  v30 = v26 + 4 * v50;
  *v8 = 0xC09C200000000000;
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  sub_1CACE8B84(v8, v4, v52);
  v28(v4, 0, 1, v5);
  v28(v30, 1, 1, v5);

  sub_1CACE8CB0(v4, v30);
  *(v30 + *(v25 + 28)) = 0;
  *(v30 + *(v25 + 32)) = v17;
  v31 = v53 + v48 + v29;
  *v8 = 0xC0AC200000000000;
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  v32 = v52;
  sub_1CACE8B84(v8, v4, v52);
  v28(v4, 0, 1, v5);
  v28(v31, 1, 1, v5);

  sub_1CACE8CB0(v4, v31);
  *(v31 + *(v25 + 28)) = 0;
  *(v31 + *(v25 + 32)) = v17;
  v33 = v53;
  v34 = v53 + 6 * v50;
  *v8 = 0xC0BC200000000000;
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  v35 = v32;
  sub_1CACE8B84(v8, v4, v32);
  v28(v4, 0, 1, v5);
  v28(v34, 1, 1, v5);

  sub_1CACE8CB0(v4, v34);
  v36 = v47;
  *(v34 + *(v47 + 28)) = 0;
  *(v34 + *(v36 + 32)) = v17;
  v48 = 8 * v50;
  v37 = v33 + 7 * v50;
  *v8 = 0xC0F5180000000000;
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  sub_1CACE8B84(v8, v4, v35);
  v38 = v49;
  v49(v4, 0, 1, v5);
  v38(v37, 1, 1, v5);

  sub_1CACE8CB0(v4, v37);
  *(v37 + *(v36 + 28)) = 0;
  *(v37 + *(v36 + 32)) = v17;
  v39 = v53;
  v40 = v53 + v48;
  *v8 = 0xC105180000000000;
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  v41 = v52;
  sub_1CACE8B84(v8, v4, v52);
  v38(v4, 0, 1, v5);
  v38(v40, 1, 1, v5);
  sub_1CACE8CB0(v4, v40);
  *(v40 + *(v36 + 28)) = 0;
  *(v40 + *(v36 + 32)) = v17;
  v42 = v39 + v48 + v50;
  *v8 = 0xC122750000000000;
  swift_storeEnumTagMultiPayload();
  *(v8 + *(v5 + 20)) = 0;
  sub_1CACE8B84(v8, v4, v41);
  v38(v4, 0, 1, v5);
  v38(v42, 1, 1, v5);
  sub_1CACE8CB0(v4, v42);
  *(v42 + *(v36 + 28)) = 0;
  *(v42 + *(v36 + 32)) = v17;
  return v45;
}

uint64_t sub_1CACE5C18()
{
  sub_1CAD4EA84();
  sub_1CACE4DD0();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACE5C5C()
{
  sub_1CAD4EA84();
  sub_1CACE4DD0();
  return sub_1CAD4EAC4();
}

uint64_t sub_1CACE5C9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  sub_1CAB23A9C(v2, &v11 - v6, &qword_1EC465488);
  v8 = type metadata accessor for EventAlarmModelObject();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  sub_1CAB21B68(v7, &qword_1EC465488);
  if (v9 == 1)
  {
    if (*(v2 + *(a1 + 20)))
    {
      result = 2;
    }

    else
    {
      result = 1;
    }
  }

  else
  {
    sub_1CAD4EA84();
    sub_1CACE4DD0();
    result = sub_1CAD4EAC4();
  }

  *a2 = result;
  return result;
}

uint64_t static EventAlarmModelObject.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAlarmModelObject();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  return _s13CalendarUIKit17EventAlarmTriggerO2eeoiySbAC_ACtFZ_0(a1, a2);
}

uint64_t sub_1CACE5E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    return _s13CalendarUIKit17EventAlarmTriggerO2eeoiySbAC_ACtFZ_0(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CACE5E64()
{
  v1 = type metadata accessor for EventAttendeeModelObject(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for EventModelObject();
  v6 = (v0 + *(result + 68));
  v7 = v6[1];
  if (!v7)
  {
    return 0;
  }

  v8 = *(v0 + *(result + 140));
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v11 = *v6;
  v12 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  while (v10 < *(v8 + 16))
  {
    sub_1CACE8D20(v12 + *(v2 + 72) * v10, v4, type metadata accessor for EventAttendeeModelObject);
    if (*(v4 + *(v1 + 52)) == 2 && (v13 = v4[1]) != 0)
    {
      if (*v4 == v11 && v13 == v7)
      {
        sub_1CACE8BEC(v4, type metadata accessor for EventAttendeeModelObject);
        return 1;
      }

      v14 = sub_1CAD4E9E4();
      result = sub_1CACE8BEC(v4, type metadata accessor for EventAttendeeModelObject);
      if (v14)
      {
        return 1;
      }
    }

    else
    {
      result = sub_1CACE8BEC(v4, type metadata accessor for EventAttendeeModelObject);
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CACE6050(void **a1)
{
  v2 = *(type metadata accessor for UIAlarm(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1CACED500(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1CACE6434(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1CACE60F8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for EventAlarmModelObject();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = *v2;
  result = sub_1CACE12AC(a1, a2, *v2, type metadata accessor for EventAlarmModelObject);
  if (!v3)
  {
    if (v18)
    {
      return *(v16 + 16);
    }

    v36 = v15;
    v37 = a1;
    v33 = v13;
    v34 = v10;
    v38 = a2;
    v32 = v2;
    v40 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = (v16 + 16);
      v20 = *(v16 + 16);
      if (v19 == v20)
      {
        return v40;
      }

      v35 = v7;
      while (v19 < v20)
      {
        v22 = v16;
        v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v23 = v16 + v39;
        v24 = *(v7 + 72);
        v25 = v36;
        sub_1CACE8D20(v23 + v24 * v19, v36, type metadata accessor for EventAlarmModelObject);
        v26 = v37(v25);
        result = sub_1CACE8BEC(v25, type metadata accessor for EventAlarmModelObject);
        if (v26)
        {
          v7 = v35;
          v16 = v22;
        }

        else
        {
          v27 = v40;
          if (v19 == v40)
          {
            v7 = v35;
            v16 = v22;
          }

          else
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v28 = *v21;
            if (v40 >= *v21)
            {
              goto LABEL_25;
            }

            v29 = v24 * v40;
            result = sub_1CACE8D20(v23 + v24 * v40, v33, type metadata accessor for EventAlarmModelObject);
            if (v19 >= v28)
            {
              goto LABEL_26;
            }

            v30 = v24 * v19;
            sub_1CACE8D20(v23 + v24 * v19, v34, type metadata accessor for EventAlarmModelObject);
            v16 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1CABF1B90(v22);
            }

            v7 = v35;
            v31 = v16 + v39;
            result = sub_1CACE8C4C(v34, v16 + v39 + v29);
            if (v19 >= *(v16 + 16))
            {
              goto LABEL_27;
            }

            result = sub_1CACE8C4C(v33, v31 + v30);
            *v32 = v16;
            v27 = v40;
          }

          v40 = v27 + 1;
        }

        ++v19;
        v21 = (v16 + 16);
        v20 = *(v16 + 16);
        if (v19 == v20)
        {
          return v40;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1CACE6434(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1CAD4E9A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UIAlarm(0);
        v6 = sub_1CAD4E244();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for UIAlarm(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1CACE67C0(v8, v9, a1, v4);
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
    return sub_1CACE6560(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1CACE6560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = type metadata accessor for UIAlarm(0);
  v9 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_4:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_1CACE8D20(v23, v17, type metadata accessor for UIAlarm);
      sub_1CACE8D20(v20, v13, type metadata accessor for UIAlarm);
      v24 = sub_1CACE2C48(v17, v13);
      sub_1CACE8BEC(v13, type metadata accessor for UIAlarm);
      result = sub_1CACE8BEC(v17, type metadata accessor for UIAlarm);
      if (v4)
      {
        break;
      }

      if (v24)
      {
        if (!v33)
        {
          __break(1u);
          return result;
        }

        v25 = v34;
        sub_1CACE8B84(v23, v34, type metadata accessor for UIAlarm);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1CACE8B84(v25, v20, type metadata accessor for UIAlarm);
        v20 += v21;
        v23 += v21;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v32 + 1;
      v20 = v31 + v27;
      v22 = v30 - 1;
      v23 = v29 + v27;
      if (v32 + 1 != v28)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1CACE67C0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v196 = a1;
  v198 = sub_1CAD4C0F4();
  v8 = *(v198 - 8);
  v9 = MEMORY[0x1EEE9AC00](v198);
  v193 = &v187 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v192 = &v187 - v11;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467670);
  MEMORY[0x1EEE9AC00](v204);
  v208 = (&v187 - v12);
  v203 = type metadata accessor for EventAlarmTrigger();
  v13 = MEMORY[0x1EEE9AC00](v203);
  v202 = &v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v187 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v212 = &v187 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v187 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v228 = &v187 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v207 = &v187 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v219 = &v187 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v218 = &v187 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v211 = &v187 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v223 = &v187 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v233 = &v187 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v232 = &v187 - v37;
  v38 = type metadata accessor for EventAlarmModelObject();
  v39 = *(v38 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v225 = &v187 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v227 = &v187 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v226 = &v187 - v44;
  v235 = type metadata accessor for UIAlarm(0);
  v220 = *(v235 - 8);
  v45 = MEMORY[0x1EEE9AC00](v235);
  v200 = &v187 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v231 = &v187 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v239 = &v187 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v237 = &v187 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v210 = &v187 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v209 = &v187 - v56;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v191 = &v187 - v58;
  result = MEMORY[0x1EEE9AC00](v57);
  v221 = a3;
  if (a3[1] >= 1)
  {
    v61 = a3[1];
    v194 = &v187 - v60;
    v238 = (v39 + 48);
    v197 = (v8 + 8);
    v190 = (v8 + 32);
    v62 = MEMORY[0x1E69E7CC0];
    v195 = a4;
    v205 = v17;
    v217 = v21;
    v63 = 0;
    v64 = v233;
    v234 = v38;
    while (1)
    {
      v199 = v62;
      if (v63 + 1 >= v61)
      {
        v77 = v63 + 1;
      }

      else
      {
        v65 = *v221;
        v66 = *(v220 + 72);
        v8 = *v221 + v66 * (v63 + 1);
        v236 = type metadata accessor for UIAlarm;
        v67 = v194;
        sub_1CACE8D20(v8, v194, type metadata accessor for UIAlarm);
        v229 = v65;
        v68 = v65 + v66 * v63;
        v69 = v191;
        sub_1CACE8D20(v68, v191, v236);
        LODWORD(v230) = sub_1CACE2C48(v67, v69);
        if (v5)
        {
          sub_1CACE8BEC(v69, type metadata accessor for UIAlarm);
          sub_1CACE8BEC(v194, type metadata accessor for UIAlarm);
        }

        sub_1CACE8BEC(v69, type metadata accessor for UIAlarm);
        result = sub_1CACE8BEC(v194, type metadata accessor for UIAlarm);
        v189 = v63;
        v70 = v63 + 2;
        v236 = v66;
        v71 = v229 + v66 * (v63 + 2);
        while (v61 != v70)
        {
          v72 = v209;
          sub_1CACE8D20(v71, v209, type metadata accessor for UIAlarm);
          v73 = v210;
          sub_1CACE8D20(v8, v210, type metadata accessor for UIAlarm);
          v74 = sub_1CACE2C48(v72, v73);
          v75 = v73;
          v76 = v72;
          sub_1CACE8BEC(v75, type metadata accessor for UIAlarm);
          v38 = v234;
          result = sub_1CACE8BEC(v76, type metadata accessor for UIAlarm);
          ++v70;
          v71 += v236;
          v8 += v236;
          if ((v230 ^ v74))
          {
            v77 = v70 - 1;
            goto LABEL_12;
          }
        }

        v77 = v61;
LABEL_12:
        a4 = v195;
        v62 = v199;
        v63 = v189;
        if (v230)
        {
          if (v77 < v189)
          {
            goto LABEL_166;
          }

          if (v189 < v77)
          {
            v78 = v236 * (v77 - 1);
            v79 = v77 * v236;
            v216 = v77;
            v80 = v77;
            v81 = v189;
            v82 = v189 * v236;
            v83 = v236;
            do
            {
              if (v81 != --v80)
              {
                v84 = *v221;
                if (!*v221)
                {
                  goto LABEL_170;
                }

                v8 = v84 + v82;
                sub_1CACE8B84(v84 + v82, v200, type metadata accessor for UIAlarm);
                if (v82 < v78 || v8 >= v84 + v79)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v82 != v78)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_1CACE8B84(v200, v84 + v78, type metadata accessor for UIAlarm);
                v62 = v199;
              }

              ++v81;
              v78 -= v83;
              v79 -= v83;
              v82 += v83;
            }

            while (v81 < v80);
            v5 = 0;
            a4 = v195;
            v64 = v233;
            v38 = v234;
            v63 = v189;
            v77 = v216;
          }
        }
      }

      v85 = v221[1];
      if (v77 >= v85)
      {
        goto LABEL_35;
      }

      if (__OFSUB__(v77, v63))
      {
        goto LABEL_162;
      }

      if (v77 - v63 >= a4)
      {
LABEL_35:
        v88 = v77;
        if (v77 < v63)
        {
          goto LABEL_161;
        }

        goto LABEL_36;
      }

      if (__OFADD__(v63, a4))
      {
        break;
      }

      if (v63 + a4 >= v85)
      {
        v86 = v221[1];
      }

      else
      {
        v86 = v63 + a4;
      }

      v87 = v237;
      if (v86 < v63)
      {
        goto LABEL_165;
      }

      if (v77 == v86)
      {
        goto LABEL_35;
      }

      v188 = v5;
      v136 = *v221;
      v137 = *(v220 + 72);
      v8 = *v221 + v137 * (v77 - 1);
      v229 = -v137;
      v189 = v63;
      v138 = (v63 - v77);
      v230 = v136;
      v201 = v137;
      v139 = v136 + v77 * v137;
      v206 = v86;
      while (2)
      {
        v216 = v77;
        v213 = v139;
        v214 = v138;
        v140 = v138;
        v215 = v8;
        while (1)
        {
          v236 = v140;
          sub_1CACE8D20(v139, v87, type metadata accessor for UIAlarm);
          sub_1CACE8D20(v8, v239, type metadata accessor for UIAlarm);
          v141 = v232;
          sub_1CAB23A9C(v87, v232, &qword_1EC465488);
          v142 = *v238;
          if ((*v238)(v141, 1, v38) == 1)
          {
            sub_1CAB21B68(v141, &qword_1EC465488);
            v143 = 0;
          }

          else
          {
            v144 = v226;
            sub_1CACE8B84(v141, v226, type metadata accessor for EventAlarmModelObject);
            v143 = *(v144 + *(v38 + 20));
            sub_1CACE8BEC(v144, type metadata accessor for EventAlarmModelObject);
          }

          sub_1CAB23A9C(v239, v64, &qword_1EC465488);
          if (v142(v64, 1, v38) == 1)
          {
            sub_1CAB21B68(v64, &qword_1EC465488);
            v87 = v237;
            if (v143)
            {
              goto LABEL_107;
            }
          }

          else
          {
            v158 = v227;
            sub_1CACE8B84(v64, v227, type metadata accessor for EventAlarmModelObject);
            v159 = *(v158 + *(v38 + 20));
            sub_1CACE8BEC(v158, type metadata accessor for EventAlarmModelObject);
            v87 = v237;
            if (v143 != v159)
            {
LABEL_107:
              v160 = v228;
              sub_1CAB23A9C(v87, v228, &qword_1EC465488);
              if (v142(v160, 1, v38) == 1)
              {
                sub_1CAB21B68(v160, &qword_1EC465488);
                goto LABEL_87;
              }

              v161 = v160;
              v162 = v225;
              sub_1CACE8B84(v161, v225, type metadata accessor for EventAlarmModelObject);
              LOBYTE(v146) = *(v162 + *(v38 + 20));
              sub_1CACE8BEC(v162, type metadata accessor for EventAlarmModelObject);
              goto LABEL_109;
            }
          }

          v145 = *(v235 + 20);
          v146 = *(v87 + v145);
          v147 = *(v239 + v145);
          if (v146 != v147)
          {
            goto LABEL_109;
          }

          v222 = v147;
          v148 = v223;
          sub_1CAB23A9C(v87, v223, &qword_1EC465488);
          v149 = v142(v148, 1, v38);
          v224 = v146;
          if (v149 != 1)
          {
            break;
          }

LABEL_100:
          sub_1CAB21B68(v148, &qword_1EC465488);
          v153 = v218;
          sub_1CAB23A9C(v87, v218, &qword_1EC465488);
          v154 = v142(v153, 1, v38);
          sub_1CAB21B68(v153, &qword_1EC465488);
          if (v154 == 1)
          {
            v155 = v146 ^ 1;
          }

          else
          {
            v155 = 0;
          }

          v156 = v219;
          sub_1CAB23A9C(v239, v219, &qword_1EC465488);
          v157 = v142(v156, 1, v234);
          sub_1CAB21B68(v156, &qword_1EC465488);
          if (v157 == 1)
          {
            v87 = v237;
            if (v222 == v155)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v87 = v237;
            if (v155)
            {
LABEL_112:
              v163 = v207;
              sub_1CAB23A9C(v87, v207, &qword_1EC465488);
              v164 = v142(v163, 1, v234);
              sub_1CAB21B68(v163, &qword_1EC465488);
              v165 = v224;
              if (v164 != 1)
              {
                v165 = 1;
              }

              if (v165)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_115:
          sub_1CACE8BEC(v239, type metadata accessor for UIAlarm);
          result = sub_1CACE8BEC(v87, type metadata accessor for UIAlarm);
          v64 = v233;
LABEL_116:
          v166 = v236;
          if (!v230)
          {
            goto LABEL_167;
          }

          v167 = v231;
          sub_1CACE8B84(v139, v231, type metadata accessor for UIAlarm);
          swift_arrayInitWithTakeFrontToBack();
          sub_1CACE8B84(v167, v8, type metadata accessor for UIAlarm);
          v8 += v229;
          v139 += v229;
          v168 = __CFADD__(v166, 1);
          v140 = (v166 + 1);
          v38 = v234;
          v87 = v237;
          if (v168)
          {
            goto LABEL_89;
          }
        }

        v150 = v223;
        v151 = v212;
        sub_1CACE8D20(v223, v212, type metadata accessor for EventAlarmTrigger);
        sub_1CACE8BEC(v150, type metadata accessor for EventAlarmModelObject);
        v152 = v217;
        sub_1CACE8B84(v151, v217, type metadata accessor for EventAlarmTrigger);
        v148 = v211;
        sub_1CAB23A9C(v239, v211, &qword_1EC465488);
        if (v142(v148, 1, v38) == 1)
        {
          sub_1CACE8BEC(v152, type metadata accessor for EventAlarmTrigger);
          v38 = v234;
          v146 = v224;
          goto LABEL_100;
        }

        v169 = v148;
        v170 = v148;
        v171 = v202;
        sub_1CACE8D20(v169, v202, type metadata accessor for EventAlarmTrigger);
        sub_1CACE8BEC(v170, type metadata accessor for EventAlarmModelObject);
        v172 = v205;
        sub_1CACE8B84(v171, v205, type metadata accessor for EventAlarmTrigger);
        v173 = *(v204 + 48);
        v174 = v208;
        sub_1CACE8D20(v152, v208, type metadata accessor for EventAlarmTrigger);
        v175 = v174;
        sub_1CACE8D20(v172, v174 + v173, type metadata accessor for EventAlarmTrigger);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v176 = *v190;
            v177 = v192;
            v178 = v198;
            (*v190)(v192, v175, v198);
            v179 = v175 + v173;
            v180 = v193;
            v176(v193, v179, v178);
            LOBYTE(v146) = sub_1CAD4C094();
            v181 = *v197;
            (*v197)(v180, v178);
            v181(v177, v178);
            sub_1CACE8BEC(v205, type metadata accessor for EventAlarmTrigger);
            sub_1CACE8BEC(v217, type metadata accessor for EventAlarmTrigger);
            goto LABEL_125;
          }

          sub_1CACE8BEC(v205, type metadata accessor for EventAlarmTrigger);
          sub_1CACE8BEC(v217, type metadata accessor for EventAlarmTrigger);
          (*v197)(v174, v198);
          v87 = v237;
          goto LABEL_115;
        }

        sub_1CACE8BEC(v172, type metadata accessor for EventAlarmTrigger);
        v182 = v208;
        sub_1CACE8BEC(v152, type metadata accessor for EventAlarmTrigger);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          LOBYTE(v146) = *(v182 + v173) < *v182;
LABEL_125:
          v87 = v237;
LABEL_109:
          sub_1CACE8BEC(v239, type metadata accessor for UIAlarm);
          result = sub_1CACE8BEC(v87, type metadata accessor for UIAlarm);
          v64 = v233;
          if ((v146 & 1) == 0)
          {
            goto LABEL_88;
          }

          goto LABEL_116;
        }

        (*v197)(v182 + v173, v198);
        v87 = v237;
LABEL_87:
        sub_1CACE8BEC(v239, type metadata accessor for UIAlarm);
        sub_1CACE8BEC(v87, type metadata accessor for UIAlarm);
        v64 = v233;
LABEL_88:
        v38 = v234;
LABEL_89:
        v77 = v216 + 1;
        v8 = v215 + v201;
        v138 = (v214 - 1);
        v139 = v213 + v201;
        v88 = v206;
        if (v216 + 1 != v206)
        {
          continue;
        }

        break;
      }

      v5 = v188;
      v62 = v199;
      v63 = v189;
      if (v206 < v189)
      {
        goto LABEL_161;
      }

LABEL_36:
      v89 = v62;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v62 = v89;
      }

      else
      {
        result = sub_1CACED068(0, *(v89 + 16) + 1, 1, v89);
        v62 = result;
      }

      v91 = *(v62 + 16);
      v90 = *(v62 + 24);
      v8 = v91 + 1;
      if (v91 >= v90 >> 1)
      {
        result = sub_1CACED068((v90 > 1), v91 + 1, 1, v62);
        v62 = result;
      }

      *(v62 + 16) = v8;
      v92 = v62 + 16 * v91;
      *(v92 + 32) = v63;
      *(v92 + 40) = v88;
      v206 = v88;
      v93 = *v196;
      if (!*v196)
      {
        goto LABEL_171;
      }

      if (v91)
      {
        while (1)
        {
          v94 = v8 - 1;
          if (v8 >= 4)
          {
            break;
          }

          if (v8 == 3)
          {
            v95 = *(v62 + 32);
            v96 = *(v62 + 40);
            v105 = __OFSUB__(v96, v95);
            v97 = v96 - v95;
            v98 = v105;
LABEL_55:
            if (v98)
            {
              goto LABEL_150;
            }

            v111 = (v62 + 16 * v8);
            v113 = *v111;
            v112 = v111[1];
            v114 = __OFSUB__(v112, v113);
            v115 = v112 - v113;
            v116 = v114;
            if (v114)
            {
              goto LABEL_153;
            }

            v117 = (v62 + 32 + 16 * v94);
            v119 = *v117;
            v118 = v117[1];
            v105 = __OFSUB__(v118, v119);
            v120 = v118 - v119;
            if (v105)
            {
              goto LABEL_156;
            }

            if (__OFADD__(v115, v120))
            {
              goto LABEL_157;
            }

            if (v115 + v120 >= v97)
            {
              if (v97 < v120)
              {
                v94 = v8 - 2;
              }

              goto LABEL_76;
            }

            goto LABEL_69;
          }

          v121 = (v62 + 16 * v8);
          v123 = *v121;
          v122 = v121[1];
          v105 = __OFSUB__(v122, v123);
          v115 = v122 - v123;
          v116 = v105;
LABEL_69:
          if (v116)
          {
            goto LABEL_152;
          }

          v124 = v62 + 16 * v94;
          v126 = *(v124 + 32);
          v125 = *(v124 + 40);
          v105 = __OFSUB__(v125, v126);
          v127 = v125 - v126;
          if (v105)
          {
            goto LABEL_155;
          }

          if (v127 < v115)
          {
            goto LABEL_3;
          }

LABEL_76:
          v132 = v94 - 1;
          if (v94 - 1 >= v8)
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            result = sub_1CACED054(v8);
            goto LABEL_135;
          }

          if (!*v221)
          {
            goto LABEL_168;
          }

          v133 = v62;
          v8 = *(v62 + 32 + 16 * v132);
          v134 = *(v62 + 32 + 16 * v94 + 8);
          sub_1CACE7E88(*v221 + *(v220 + 72) * v8, *v221 + *(v220 + 72) * *(v62 + 32 + 16 * v94), *v221 + *(v220 + 72) * v134, v93);
          if (v5)
          {
          }

          if (v134 < v8)
          {
            goto LABEL_146;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v133 = sub_1CACED054(v133);
          }

          if (v132 >= *(v133 + 2))
          {
            goto LABEL_147;
          }

          v135 = &v133[16 * v132];
          *(v135 + 4) = v8;
          *(v135 + 5) = v134;
          v240 = v133;
          result = sub_1CACECFC8(v94);
          v62 = v240;
          v8 = *(v240 + 16);
          if (v8 <= 1)
          {
            goto LABEL_3;
          }
        }

        v99 = v62 + 32 + 16 * v8;
        v100 = *(v99 - 64);
        v101 = *(v99 - 56);
        v105 = __OFSUB__(v101, v100);
        v102 = v101 - v100;
        if (v105)
        {
          goto LABEL_148;
        }

        v104 = *(v99 - 48);
        v103 = *(v99 - 40);
        v105 = __OFSUB__(v103, v104);
        v97 = v103 - v104;
        v98 = v105;
        if (v105)
        {
          goto LABEL_149;
        }

        v106 = (v62 + 16 * v8);
        v108 = *v106;
        v107 = v106[1];
        v105 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v105)
        {
          goto LABEL_151;
        }

        v105 = __OFADD__(v97, v109);
        v110 = v97 + v109;
        if (v105)
        {
          goto LABEL_154;
        }

        if (v110 >= v102)
        {
          v128 = (v62 + 32 + 16 * v94);
          v130 = *v128;
          v129 = v128[1];
          v105 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v105)
          {
            goto LABEL_160;
          }

          if (v97 < v131)
          {
            v94 = v8 - 2;
          }

          goto LABEL_76;
        }

        goto LABEL_55;
      }

LABEL_3:
      v61 = v221[1];
      v63 = v206;
      a4 = v195;
      if (v206 >= v61)
      {
        goto LABEL_132;
      }
    }

    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_132:
  v64 = *v196;
  if (*v196)
  {
    v8 = v62;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_163;
    }

    result = v8;
LABEL_135:
    v240 = result;
    v8 = *(result + 16);
    if (v8 < 2)
    {
    }

    while (*v221)
    {
      v183 = *(result + 16 * v8);
      v184 = result;
      v185 = *(result + 16 * (v8 - 1) + 40);
      sub_1CACE7E88(*v221 + *(v220 + 72) * v183, *v221 + *(v220 + 72) * *(result + 16 * (v8 - 1) + 32), *v221 + *(v220 + 72) * v185, v64);
      if (v5)
      {
      }

      if (v185 < v183)
      {
        goto LABEL_158;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v184 = sub_1CACED054(v184);
      }

      if (v8 - 2 >= *(v184 + 2))
      {
        goto LABEL_159;
      }

      v186 = &v184[16 * v8];
      *v186 = v183;
      *(v186 + 1) = v185;
      v240 = v184;
      sub_1CACECFC8(v8 - 1);
      result = v240;
      v8 = *(v240 + 16);
      if (v8 <= 1)
      {
      }
    }

    goto LABEL_169;
  }

LABEL_172:
  __break(1u);
  return result;
}

uint64_t sub_1CACE7E88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for UIAlarm(0);
  v9 = MEMORY[0x1EEE9AC00](v64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v53 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v53 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_64;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_65;
  }

  v23 = (a2 - a1) / v21;
  v67 = a1;
  v66 = a4;
  v63 = v21;
  if (v23 >= v22 / v21)
  {
    v26 = v22 / v21 * v21;
    v59 = v17;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v27 = v12;
    }

    else
    {
      v27 = v12;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v36 = a4 + v26;
    v37 = v4;
    if (v26 >= 1)
    {
      v38 = -v63;
      v39 = a4 + v26;
      v56 = a4;
      v57 = a1;
      v55 = -v63;
      do
      {
        v53 = v36;
        v40 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v67 = a2;
            v65 = v53;
            goto LABEL_62;
          }

          v62 = a3;
          v63 = v39;
          v54 = v36;
          v61 = (v39 + v38);
          sub_1CACE8D20(v39 + v38, v27, type metadata accessor for UIAlarm);
          v43 = v27;
          v44 = v59;
          sub_1CACE8D20(v40, v59, type metadata accessor for UIAlarm);
          v45 = sub_1CACE2C48(v43, v44);
          if (v37)
          {
            sub_1CACE8BEC(v44, type metadata accessor for UIAlarm);
            sub_1CACE8BEC(v43, type metadata accessor for UIAlarm);
            v67 = v58;
            v65 = v54;
            goto LABEL_62;
          }

          v46 = v45;
          v60 = 0;
          v47 = v40;
          v48 = v62;
          v49 = v62 + v38;
          sub_1CACE8BEC(v44, type metadata accessor for UIAlarm);
          sub_1CACE8BEC(v43, type metadata accessor for UIAlarm);
          v27 = v43;
          if (v46)
          {
            break;
          }

          v50 = v61;
          v36 = v61;
          a3 = v48 + v38;
          if (v48 < v63 || v49 >= v63)
          {
            v41 = v61;
            swift_arrayInitWithTakeFrontToBack();
            v36 = v41;
            v40 = v47;
            v37 = v60;
          }

          else
          {
            v51 = v48 == v63;
            v40 = v47;
            v37 = v60;
            if (!v51)
            {
              v52 = v61;
              swift_arrayInitWithTakeBackToFront();
              v36 = v52;
            }
          }

          v39 = v36;
          a1 = v57;
          v42 = v50 > v56;
          v38 = v55;
          a2 = v58;
          if (!v42)
          {
            goto LABEL_58;
          }
        }

        a3 = v48 + v38;
        if (v48 < v58 || v49 >= v58)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v60;
          v38 = v55;
        }

        else
        {
          a2 = v47;
          v37 = v60;
          v38 = v55;
          if (v48 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v63;
        v36 = v54;
      }

      while (v63 > v56);
    }

LABEL_58:
    v67 = a2;
    v65 = v36;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v25 = v4;
    }

    else
    {
      v25 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v62 = a4 + v24;
    v65 = a4 + v24;
    if (v24 >= 1 && a2 < a3)
    {
      v29 = v63;
      v60 = v19;
      v61 = v15;
      while (1)
      {
        v30 = a3;
        sub_1CACE8D20(a2, v19, type metadata accessor for UIAlarm);
        sub_1CACE8D20(a4, v15, type metadata accessor for UIAlarm);
        v31 = sub_1CACE2C48(v19, v15);
        if (v25)
        {
          break;
        }

        v32 = v31;
        v33 = v15;
        v34 = a4;
        sub_1CACE8BEC(v33, type metadata accessor for UIAlarm);
        sub_1CACE8BEC(v19, type metadata accessor for UIAlarm);
        if (v32)
        {
          v35 = a2 + v29;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v35;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v35;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = v34 + v29;
        }

        v15 = v61;
        v29 = v63;
        a1 += v63;
        v67 = a1;
        v19 = v60;
        if (a4 >= v62 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1CACE8BEC(v15, type metadata accessor for UIAlarm);
      sub_1CACE8BEC(v19, type metadata accessor for UIAlarm);
    }
  }

LABEL_62:
  sub_1CACE84E4(&v67, &v66, &v65, type metadata accessor for UIAlarm);
  return 1;
}

uint64_t sub_1CACE84E4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1CACE860C()
{
  sub_1CACE8E6C(319, &qword_1EC4651C0, type metadata accessor for EventModelObject, MEMORY[0x1E6981940]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1CACE870C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAlarmModelObject();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467668);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  sub_1CAB23A9C(a1, &v30 - v14, &qword_1EC465488);
  v16 = *(v5 + 48);
  v17 = v16(v15, 1, v4);
  sub_1CAB21B68(v15, &qword_1EC465488);
  if (v17 == 1)
  {
    v18 = *(a1 + *(type metadata accessor for UIAlarm(0) + 20)) ^ 1;
  }

  else
  {
    v18 = 0;
  }

  sub_1CAB23A9C(a2, v13, &qword_1EC465488);
  v19 = v16(v13, 1, v4);
  sub_1CAB21B68(v13, &qword_1EC465488);
  if (v19 == 1 && *(a2 + *(type metadata accessor for UIAlarm(0) + 20)) != 1)
  {
    if ((v18 & 1) == 0)
    {
LABEL_10:
      v23 = 0;
      return v23 & 1;
    }
  }

  else if (v18)
  {
    goto LABEL_10;
  }

  v20 = *(type metadata accessor for UIAlarm(0) + 20);
  v21 = *(a1 + v20);
  v22 = *(a2 + v20);
  if (v21 != v22)
  {
    goto LABEL_10;
  }

  if (v21 & v22)
  {
LABEL_13:
    v23 = 1;
    return v23 & 1;
  }

  v25 = *(v32 + 48);
  v26 = a1;
  v27 = v33;
  sub_1CAB23A9C(v26, v33, &qword_1EC465488);
  sub_1CAB23A9C(a2, v27 + v25, &qword_1EC465488);
  if (v16(v27, 1, v4) == 1)
  {
    if (v16((v27 + v25), 1, v4) == 1)
    {
      sub_1CAB21B68(v27, &qword_1EC465488);
      goto LABEL_13;
    }

LABEL_19:
    sub_1CAB21B68(v27, &qword_1EC467668);
    v23 = 0;
    return v23 & 1;
  }

  v28 = v31;
  sub_1CAB23A9C(v27, v31, &qword_1EC465488);
  if (v16((v27 + v25), 1, v4) == 1)
  {
    sub_1CACE8BEC(v28, type metadata accessor for EventAlarmModelObject);
    goto LABEL_19;
  }

  v29 = v30;
  sub_1CACE8B84(v27 + v25, v30, type metadata accessor for EventAlarmModelObject);
  if (*(v28 + *(v4 + 20)) == *(v29 + *(v4 + 20)))
  {
    v23 = _s13CalendarUIKit17EventAlarmTriggerO2eeoiySbAC_ACtFZ_0(v28, v29);
  }

  else
  {
    v23 = 0;
  }

  sub_1CACE8BEC(v29, type metadata accessor for EventAlarmModelObject);
  sub_1CACE8BEC(v28, type metadata accessor for EventAlarmModelObject);
  sub_1CAB21B68(v27, &qword_1EC465488);
  return v23 & 1;
}

uint64_t sub_1CACE8B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CACE8BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CACE8C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventAlarmModelObject();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACE8CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465488);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CACE8D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CACE8DB0()
{
  sub_1CACE8E6C(319, &qword_1EC467688, type metadata accessor for EventAlarmModelObject, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AlarmViewModel(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CACE8E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CACE8ED0(uint64_t a1)
{
  *(a1 + 8) = sub_1CACE8F38(&qword_1EC467690);
  result = sub_1CACE8F38(&qword_1EC467698);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CACE8F38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIAlarm(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EventSourceConstrained.supportsStructuredLocations.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE2(dword_1EC4676BC);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 128))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.requiresOutgoingInvitationsInDefaultCalendar.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = qword_1EC4676B0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.eventDurationConstrainedToRecurrenceInterval.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE1(qword_1EC4676B0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.occurrencesMustOccurOnSeparateDays.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE2(qword_1EC4676B0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.supportsPrivateEvents.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE3(qword_1EC4676B0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.supportsMultipleAlarms.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE5(qword_1EC4676B0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.supportsAlarmTriggerDates.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE4(qword_1EC4676B0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.requiresOccurrencesConformToRecurrenceRule.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE6(qword_1EC4676B0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.supportsURLField.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = HIBYTE(qword_1EC4676B0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.supportsFloatingTimeZone.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = dword_1EC4676B8;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.prohibitsMultipleDaysInMonthlyRecurrence.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE1(dword_1EC4676B8);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.prohibitsMultipleMonthsInYearlyRecurrence.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE2(dword_1EC4676B8);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 96))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.prohibitsYearlyRecurrenceInterval.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = HIBYTE(dword_1EC4676B8);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 104))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

double sub_1CACEA998()
{
  qword_1EC4676A8 = -1;
  qword_1EC4676B0 = 0x100010101000000;
  *&result = 0x100000001;
  dword_1EC4676B8 = 1;
  dword_1EC4676BC = 16843009;
  word_1EC4676C0 = 256;
  return result;
}

uint64_t EventSourceConstrained.maxAlarmsAllowed.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    return qword_1EC4676A8;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v12 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
    return v12;
  }
}

uint64_t EventSourceConstrained.canSetAvailability.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = dword_1EC4676BC;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 112))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.eventAvailabilityLimited.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = BYTE1(dword_1EC4676BC);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 120))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.supportsTravelTime.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = HIBYTE(dword_1EC4676BC);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 136))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.supportsAttachments.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = word_1EC4676C0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 144))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t EventSourceConstrained.supportsAvailabilityRequests.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1CAD4E4D4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  (*(a2 + 24))(a1, a2);
  v9 = *(AssociatedTypeWitness - 8);
  if ((*(v9 + 48))(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v8, v5);
    if (qword_1EC462F58 != -1)
    {
      swift_once();
    }

    v10 = HIBYTE(word_1EC4676C0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 152))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v9 + 8))(v8, AssociatedTypeWitness);
  }

  return v10 & 1;
}

uint64_t sub_1CACEB5CC()
{
  sub_1CABEC66C();

  return sub_1CAD4CC14();
}

void sub_1CACEB614(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v2 + 16) visibleCalendars];
  if (!v8)
  {
    sub_1CABD4070(0, &qword_1EC464EA8);
    sub_1CAD4E214();
    v8 = sub_1CAD4E1F4();
  }

  v9 = *(v2 + 24);
  sub_1CAD4BC74();
  v10 = sub_1CAD4C084();
  v32 = a1;
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_1CAD4BC44();
  v12 = sub_1CAD4C084();
  v11(v7, v4);
  v13 = [v9 predicateForEventsWithStartDate:v10 endDate:v12 calendars:v8];

  v14 = [v9 eventsMatchingPredicate_];
  sub_1CABD4070(0, &qword_1EC467A30);
  v15 = sub_1CAD4E214();

  MEMORY[0x1EEE9AC00](v16);
  *(&v31 - 2) = v32;
  sub_1CAC1C13C(sub_1CACED418, (&v31 - 4), v15);

  *&v34 = sub_1CACED16C(v17);
  sub_1CACEBD60(&v34);

  v18 = v34;
  if ((v34 & 0x8000000000000000) == 0 && (v34 & 0x4000000000000000) == 0)
  {
    v19 = *(v34 + 16);
    if (v19)
    {
      goto LABEL_6;
    }

LABEL_15:

    goto LABEL_16;
  }

  v19 = sub_1CAD4E604();
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_6:
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v22 = MEMORY[0x1CCAA7940](v21, v18);
    goto LABEL_11;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 < *(v18 + 16))
  {
    v22 = *(v18 + 8 * v21 + 32);
LABEL_11:
    v23 = v22;

    v24 = [v23 structuredLocation];

    if (v24)
    {
      *(&v35 + 1) = &type metadata for EKLocationModelWrapper;
      *&v36 = &protocol witness table for EKLocationModelWrapper;
      *&v34 = v24;
      EventLocationModelObject.init(_:)(&v34, v33);

      v42 = v33[8];
      v43 = v33[9];
      v44 = v33[10];
      v38 = v33[4];
      v39 = v33[5];
      v40 = v33[6];
      v41 = v33[7];
      v34 = v33[0];
      v35 = v33[1];
      v36 = v33[2];
      v37 = v33[3];
      nullsub_1(&v34);
LABEL_17:
      v25 = v43;
      v26 = v31;
      v31[8] = v42;
      v26[9] = v25;
      v26[10] = v44;
      v27 = v39;
      v26[4] = v38;
      v26[5] = v27;
      v28 = v41;
      v26[6] = v40;
      v26[7] = v28;
      v29 = v35;
      *v26 = v34;
      v26[1] = v29;
      v30 = v37;
      v26[2] = v36;
      v26[3] = v30;
      return;
    }

LABEL_16:
    sub_1CABED564(&v34);
    goto LABEL_17;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1CACEB9EC(id *a1)
{
  v2 = sub_1CAD4C0F4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *a1;
  v10 = [*a1 structuredLocation];
  if (v10)
  {
    v11 = v10;
    if ([v10 isStructured])
    {
      result = [v9 endDate];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v13 = result;
      sub_1CAD4C0B4();

      sub_1CAD4BC44();
      v14 = sub_1CAD4C094();

      v15 = *(v3 + 8);
      v15(v6, v2);
      v15(v8, v2);
      if (v14)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1CACEBB8C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1CACEBCA4()
{
  v0 = type metadata accessor for EmptyDataSource();
  result = swift_allocObject();
  qword_1EC4676E0 = v0;
  unk_1EC4676E8 = &off_1F4AA7420;
  qword_1EC4676C8 = result;
  return result;
}

uint64_t sub_1CACEBCEC@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EC462F60 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1CAB299C0(&qword_1EC4676C8, v2);
}

uint64_t sub_1CACEBD60(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1CACED49C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1CACEBDDC(v6);
  return sub_1CAD4E744();
}

void sub_1CACEBDDC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1CAD4E9A4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1CABD4070(0, &qword_1EC467A30);
        v6 = sub_1CAD4E244();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1CACEC134(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CACEBEF0(0, v2, 1, a1);
  }
}

void sub_1CACEBEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1CAD4C0F4();
  v8 = MEMORY[0x1EEE9AC00](v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v34 = v14;
    v35 = a3;
    v16 = *(v39 + 8 * a3);
    v33 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 endDate];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      sub_1CAD4C0B4();

      v23 = [v20 endDate];
      if (!v23)
      {
        goto LABEL_13;
      }

      v24 = v23;
      v25 = v37;
      sub_1CAD4C0B4();

      v40 = sub_1CAD4C094();
      v26 = v17;
      v27 = *v36;
      v28 = v25;
      v29 = v38;
      (*v36)(v28, v38);
      v27(v12, v29);

      if (v40)
      {
        if (!v39)
        {
          goto LABEL_14;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
        if (v26 != -1)
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 == v32)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_1CACEC134(void ***a1, uint64_t a2, char **a3, int64_t a4)
{
  v140 = a1;
  v152 = sub_1CAD4C0F4();
  v7 = MEMORY[0x1EEE9AC00](v152);
  v149 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v134 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v142 = &v134 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v143 = &v134 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v135 = &v134 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v136 = &v134 - v19;
  v147 = a3;
  v20 = a3[1];
  if (v20 >= 1)
  {
    v21 = 0;
    v151 = (v18 + 8);
    v22 = MEMORY[0x1E69E7CC0];
    v23 = &selRef_currentCalendar;
    v139 = a4;
    v153 = v11;
    while (1)
    {
      v24 = v21;
      v25 = v21 + 1;
      if ((v21 + 1) < v20)
      {
        v145 = v20;
        v138 = v22;
        v26 = *v147;
        v27 = *&(*v147)[8 * v21];
        v28 = *&(*v147)[8 * v25];
        v29 = v27;
        v30 = [v28 v23[187]];
        if (!v30)
        {
          goto LABEL_142;
        }

        v31 = v30;
        v150 = v28;
        v32 = v136;
        sub_1CAD4C0B4();

        v33 = [v29 v23[187]];
        if (!v33)
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        v34 = v33;
        v35 = v135;
        sub_1CAD4C0B4();

        LODWORD(v146) = sub_1CAD4C094();
        v4 = v151;
        v36 = *v151;
        v37 = v35;
        v21 = v32;
        v38 = v152;
        (*v151)(v37, v152);
        v144 = v36;
        (v36)(v21, v38);

        v39 = (v24 + 2);
        v137 = v24;
        v150 = (8 * v24);
        v40 = &v26[8 * v24 + 16];
        while (1)
        {
          v41 = v145;
          if (v145 == v39)
          {
            break;
          }

          v42 = *(v40 - 1);
          v43 = *v40;
          v44 = v42;
          v45 = [v43 v23[187]];
          if (!v45)
          {
            goto LABEL_137;
          }

          v46 = v45;
          v47 = v143;
          sub_1CAD4C0B4();

          v48 = [v44 v23[187]];
          if (!v48)
          {
            goto LABEL_136;
          }

          v49 = v48;
          v50 = v142;
          sub_1CAD4C0B4();

          LODWORD(v49) = sub_1CAD4C094() & 1;
          v51 = v50;
          v21 = v47;
          v52 = v152;
          v4 = v144;
          (v144)(v51, v152);
          (v4)(v21, v52);

          ++v39;
          ++v40;
          v11 = v153;
          v23 = &selRef_currentCalendar;
          if ((v146 & 1) != v49)
          {
            v41 = (v39 - 1);
            break;
          }
        }

        v22 = v138;
        a4 = v139;
        v24 = v137;
        if (v146)
        {
          if (v41 < v137)
          {
            goto LABEL_129;
          }

          if (v137 < v41)
          {
            v53 = 8 * v41 - 8;
            v54 = v41;
            v55 = v137;
            do
            {
              if (v55 != --v54)
              {
                v56 = *v147;
                if (!*v147)
                {
                  goto LABEL_139;
                }

                v57 = *&v150[v56];
                *&v150[v56] = *&v56[v53];
                *&v56[v53] = v57;
              }

              ++v55;
              v53 -= 8;
              v150 += 8;
            }

            while (v55 < v54);
          }
        }

        v25 = v41;
      }

      v58 = v147[1];
      if (v25 >= v58)
      {
        v21 = v25;
        if (v25 < v24)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v59 = v25;
        v78 = __OFSUB__(v25, v24);
        v60 = v25 - v24;
        if (v78)
        {
          goto LABEL_128;
        }

        if (v60 >= a4)
        {
          goto LABEL_30;
        }

        v61 = v24 + a4;
        if (__OFADD__(v24, a4))
        {
          goto LABEL_130;
        }

        if (v61 >= v58)
        {
          v61 = v147[1];
        }

        if (v61 < v24)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v59 == v61)
        {
LABEL_30:
          v21 = v59;
          if (v59 < v24)
          {
            goto LABEL_127;
          }
        }

        else
        {
          v137 = v24;
          v138 = v22;
          v150 = *v147;
          v111 = &v150[8 * v59 - 8];
          v112 = (v24 - v59);
          v141 = v61;
          do
          {
            v145 = v111;
            v146 = v59;
            v113 = *&v150[8 * v59];
            v144 = v112;
            v114 = v111;
            while (1)
            {
              v115 = *v114;
              v4 = v113;
              v116 = v115;
              v117 = [v4 v23[187]];
              if (!v117)
              {
                goto LABEL_134;
              }

              v118 = v117;
              sub_1CAD4C0B4();

              v119 = [v116 v23[187]];
              if (!v119)
              {
                __break(1u);
LABEL_134:
                __break(1u);
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
                __break(1u);
LABEL_140:
                __break(1u);
LABEL_141:
                __break(1u);
LABEL_142:
                __break(1u);
                goto LABEL_143;
              }

              v120 = v119;
              v121 = v149;
              sub_1CAD4C0B4();

              LOBYTE(v120) = sub_1CAD4C094();
              v122 = v11;
              v123 = *v151;
              v124 = v121;
              v125 = v152;
              (*v151)(v124, v152);
              v123(v122, v125);

              if ((v120 & 1) == 0)
              {
                break;
              }

              if (!v150)
              {
                goto LABEL_135;
              }

              v126 = *v114;
              v113 = *(v114 + 1);
              *v114 = v113;
              *(v114 + 1) = v126;
              v114 -= 8;
              v127 = __CFADD__(v112++, 1);
              v11 = v153;
              v23 = &selRef_currentCalendar;
              if (v127)
              {
                goto LABEL_85;
              }
            }

            v11 = v153;
            v23 = &selRef_currentCalendar;
LABEL_85:
            v59 = v146 + 1;
            v111 = v145 + 8;
            v112 = v144 - 1;
          }

          while (v146 + 1 != v141);
          v21 = v141;
          v24 = v137;
          v22 = v138;
          if (v141 < v137)
          {
            goto LABEL_127;
          }
        }
      }

      v62 = v22;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v62;
      }

      else
      {
        v22 = sub_1CACED068(0, *(v62 + 2) + 1, 1, v62);
      }

      v64 = *(v22 + 2);
      v63 = *(v22 + 3);
      v65 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        v22 = sub_1CACED068((v63 > 1), v64 + 1, 1, v22);
      }

      *(v22 + 2) = v65;
      v66 = &v22[16 * v64];
      *(v66 + 4) = v24;
      *(v66 + 5) = v21;
      v67 = *v140;
      if (!*v140)
      {
        goto LABEL_141;
      }

      if (v64)
      {
        while (1)
        {
          v4 = v65 - 1;
          if (v65 >= 4)
          {
            break;
          }

          if (v65 == 3)
          {
            v68 = *(v22 + 4);
            v69 = *(v22 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
LABEL_52:
            if (v71)
            {
              goto LABEL_116;
            }

            v84 = &v22[16 * v65];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_119;
            }

            v90 = &v22[16 * v4 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_122;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_123;
            }

            if (v88 + v93 >= v70)
            {
              if (v70 < v93)
              {
                v4 = v65 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v94 = &v22[16 * v65];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_66:
          if (v89)
          {
            goto LABEL_118;
          }

          v97 = &v22[16 * v4];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_121;
          }

          if (v100 < v88)
          {
            goto LABEL_3;
          }

LABEL_73:
          v105 = v4 - 1;
          if (v4 - 1 >= v65)
          {
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (!*v147)
          {
            goto LABEL_138;
          }

          v106 = v22;
          v107 = *&v22[16 * v105 + 32];
          v24 = *&v22[16 * v4 + 40];
          v108 = v148;
          sub_1CACECAD0(&(*v147)[8 * v107], &(*v147)[8 * *&v22[16 * v4 + 32]], &(*v147)[8 * v24], v67);
          v148 = v108;
          if (v108)
          {
            goto LABEL_110;
          }

          if (v24 < v107)
          {
            goto LABEL_112;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v109 = v106;
          }

          else
          {
            v109 = sub_1CACED054(v106);
          }

          v11 = v153;
          if (v105 >= *(v109 + 2))
          {
            goto LABEL_113;
          }

          v110 = &v109[16 * v105];
          *(v110 + 4) = v107;
          *(v110 + 5) = v24;
          v154 = v109;
          sub_1CACECFC8(v4);
          v22 = v154;
          v65 = *(v154 + 2);
          if (v65 <= 1)
          {
            goto LABEL_3;
          }
        }

        v72 = &v22[16 * v65 + 32];
        v73 = *(v72 - 64);
        v74 = *(v72 - 56);
        v78 = __OFSUB__(v74, v73);
        v75 = v74 - v73;
        if (v78)
        {
          goto LABEL_114;
        }

        v77 = *(v72 - 48);
        v76 = *(v72 - 40);
        v78 = __OFSUB__(v76, v77);
        v70 = v76 - v77;
        v71 = v78;
        if (v78)
        {
          goto LABEL_115;
        }

        v79 = &v22[16 * v65];
        v81 = *v79;
        v80 = *(v79 + 1);
        v78 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v78)
        {
          goto LABEL_117;
        }

        v78 = __OFADD__(v70, v82);
        v83 = v70 + v82;
        if (v78)
        {
          goto LABEL_120;
        }

        if (v83 >= v75)
        {
          v101 = &v22[16 * v4 + 32];
          v103 = *v101;
          v102 = *(v101 + 1);
          v78 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v78)
          {
            goto LABEL_124;
          }

          if (v70 < v104)
          {
            v4 = v65 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v20 = v147[1];
      a4 = v139;
      if (v21 >= v20)
      {
        goto LABEL_99;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_99:
  v4 = *v140;
  if (*v140)
  {
    v21 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v148;
    if (isUniquelyReferenced_nonNull_native)
    {
      v129 = v21;
    }

    else
    {
LABEL_132:
      v129 = sub_1CACED054(v21);
    }

    v154 = v129;
    v21 = *(v129 + 2);
    if (v21 >= 2)
    {
      while (*v147)
      {
        v130 = *&v129[16 * v21];
        v131 = v129;
        v132 = *&v129[16 * v21 + 24];
        sub_1CACECAD0(&(*v147)[8 * v130], &(*v147)[8 * *&v129[16 * v21 + 16]], &(*v147)[8 * v132], v4);
        if (v24)
        {
          goto LABEL_110;
        }

        if (v132 < v130)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = sub_1CACED054(v131);
        }

        if (v21 - 2 >= *(v131 + 2))
        {
          goto LABEL_126;
        }

        v133 = &v131[16 * v21];
        *v133 = v130;
        *(v133 + 1) = v132;
        v154 = v131;
        sub_1CACECFC8(v21 - 1);
        v129 = v154;
        v21 = *(v154 + 2);
        if (v21 <= 1)
        {
          goto LABEL_110;
        }
      }

      goto LABEL_140;
    }

LABEL_110:
  }

  else
  {
LABEL_144:
    __break(1u);
  }
}

uint64_t sub_1CACECAD0(void **a1, void **a2, id *a3, void **a4)
{
  v63 = sub_1CAD4C0F4();
  v8 = *(v63 - 8);
  v9 = MEMORY[0x1EEE9AC00](v63);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v61 = (&v56 - v12);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v58 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v60 = (&v56 - v15);
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v18 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 3;
  if (v17 >= v18 >> 3)
  {
    if (a4 != a2 || &a2[v19] <= a4)
    {
      memmove(a4, a2, 8 * v19);
    }

    v65 = &a4[v19];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v58 = (v8 + 8);
      v37 = &selRef_currentCalendar;
      v57 = a1;
LABEL_28:
      v62 = a2;
      v38 = a2 - 1;
      v39 = a3 - 1;
      v40 = v65;
      v60 = a2 - 1;
      while (1)
      {
        v64 = v39;
        v41 = *--v40;
        v42 = *v38;
        v43 = v41;
        v44 = v42;
        result = [v43 v37[187]];
        if (!result)
        {
          goto LABEL_47;
        }

        v45 = result;
        v46 = a4;
        v47 = v61;
        sub_1CAD4C0B4();

        result = [v44 v37[187]];
        if (!result)
        {
          goto LABEL_48;
        }

        v48 = result;
        v49 = v59;
        sub_1CAD4C0B4();

        LOBYTE(v48) = sub_1CAD4C094();
        v50 = *v58;
        v51 = v49;
        v52 = v63;
        (*v58)(v51, v63);
        v50(v47, v52);

        if (v48)
        {
          a3 = v64;
          a4 = v46;
          v54 = v57;
          v55 = v60;
          if (v64 + 1 != v62)
          {
            *v64 = *v60;
          }

          v37 = &selRef_currentCalendar;
          if (v65 <= v46 || (a2 = v55, v55 <= v54))
          {
            a2 = v55;
            break;
          }

          goto LABEL_28;
        }

        v53 = v64;
        a4 = v46;
        v38 = v60;
        if (v64 + 1 != v65)
        {
          *v64 = *v40;
        }

        v39 = v53 - 1;
        v65 = v40;
        v37 = &selRef_currentCalendar;
        if (v40 <= v46)
        {
          v65 = v40;
          a2 = v62;
          break;
        }
      }
    }

LABEL_41:
    if (a2 != a4 || a2 >= (a4 + ((v65 - a4 + (v65 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, a4, 8 * (v65 - a4));
    }

    return 1;
  }

  if (a4 != a1 || &a1[v17] <= a4)
  {
    memmove(a4, a1, 8 * v17);
  }

  v65 = &a4[v17];
  if (a2 - a1 < 8 || (v20 = a2, a2 >= a3))
  {
LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  v59 = (v8 + 8);
  v21 = &selRef_currentCalendar;
  v64 = a3;
  while (1)
  {
    v61 = a4;
    v62 = v20;
    v22 = *a4;
    v23 = *v20;
    v24 = v22;
    result = [v23 v21[187]];
    if (!result)
    {
      break;
    }

    v26 = result;
    v27 = a1;
    v28 = v60;
    sub_1CAD4C0B4();

    v29 = v21;
    result = [v24 v21[187]];
    if (!result)
    {
      goto LABEL_46;
    }

    v30 = result;
    v31 = v58;
    sub_1CAD4C0B4();

    LOBYTE(v30) = sub_1CAD4C094();
    v32 = *v59;
    v33 = v31;
    v34 = v63;
    (*v59)(v33, v63);
    v32(v28, v34);

    if (v30)
    {
      a4 = v61;
      v35 = v62;
      v36 = v62;
      v20 = v62 + 1;
    }

    else
    {
      v35 = v61;
      v20 = v62;
      v36 = v61;
      a4 = v61 + 1;
    }

    if (v27 != v35)
    {
      *v27 = *v36;
    }

    a1 = v27 + 1;
    if (a4 < v65)
    {
      v21 = v29;
      if (v20 < v64)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1CACECFC8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CACED054(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1CACED068(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC467700);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1CACED16C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1CAD4E604();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1CAC2A208(v3, 0);
  sub_1CACED200((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1CACED200(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1CAD4E604();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1CAD4E604();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1CACED438();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4676F0);
            v9 = sub_1CACED390(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1CABD4070(0, &qword_1EC467A30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1CACED390(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1CCAA7940](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1CACED410;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CACED438()
{
  result = qword_1EC4676F8;
  if (!qword_1EC4676F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4676F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4676F8);
  }

  return result;
}

uint64_t sub_1CACED5E8@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1CACED6E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v8 = *a2;
  swift_beginAccess();
  return sub_1CAB23A9C(v7 + v8, a4, a3);
}

uint64_t sub_1CACED7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1CAB23A9C(a1, &v14 - v11, a5);
  return a7(v12);
}

uint64_t sub_1CACED928@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus);
  v5 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_1CABED120(v4, v5);
}

uint64_t sub_1CACED9E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1CABED120(*a1, v2);
  return sub_1CACF15E4(v1, v2);
}

uint64_t sub_1CACEDB1C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v6 = (v5 + *a2);
  v7 = v6[1];
  *a3 = *v6;
  a3[1] = v7;
}

uint64_t sub_1CACEDBF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__attachments;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1CACEDCE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - v2;
  v4 = type metadata accessor for EventModelObject();
  sub_1CAB23A9C(v0 + *(v4 + 104), v3, &qword_1EC464020);
  v5 = type metadata accessor for EventCalendarModelObject();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1CAB21B68(v3, &qword_1EC464020);
  }

  else
  {
    v7 = *(v3 + 184);
    v8 = *(v3 + 216);
    v14[6] = *(v3 + 200);
    v15[0] = v8;
    *(v15 + 10) = *(v3 + 226);
    v9 = *(v3 + 120);
    v10 = *(v3 + 152);
    v14[2] = *(v3 + 136);
    v14[3] = v10;
    v14[4] = *(v3 + 168);
    v14[5] = v7;
    v14[0] = *(v3 + 104);
    v14[1] = v9;
    v11 = sub_1CABED4EC(v14);
    v12 = BYTE8(v15[0]);
    v6 = BYTE11(v15[0]);
    sub_1CACFE3E8(v3, type metadata accessor for EventCalendarModelObject);
    if (v11 != 1 && v12 != 2)
    {
      return v6 & 1;
    }
  }

  if (qword_1EC462F58 != -1)
  {
    swift_once();
  }

  v6 = BYTE3(qword_1EC4676B0);
  return v6 & 1;
}

uint64_t sub_1CACEDE98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - v2;
  v4 = type metadata accessor for EventModelObject();
  sub_1CAB23A9C(v0 + *(v4 + 104), v3, &qword_1EC464020);
  v5 = type metadata accessor for EventCalendarModelObject();
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1CAB21B68(v3, &qword_1EC464020);
  }

  else
  {
    v7 = *(v3 + 184);
    v8 = *(v3 + 216);
    v14[6] = *(v3 + 200);
    *v15 = v8;
    *&v15[10] = *(v3 + 226);
    v9 = *(v3 + 120);
    v10 = *(v3 + 152);
    v14[2] = *(v3 + 136);
    v14[3] = v10;
    v14[4] = *(v3 + 168);
    v14[5] = v7;
    v14[0] = *(v3 + 104);
    v14[1] = v9;
    v11 = sub_1CABED4EC(v14);
    v12 = v15[8];
    v6 = v15[21];
    sub_1CACFE3E8(v3, type metadata accessor for EventCalendarModelObject);
    if (v11 != 1 && v12 != 2)
    {
      return v6 & 1;
    }
  }

  if (qword_1EC462F58 != -1)
  {
    swift_once();
  }

  v6 = BYTE1(dword_1EC4676BC);
  return v6 & 1;
}

id sub_1CACEE04C()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v1 = *(v0 + 16);

  return v1;
}

void sub_1CACEE0FC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1CABD4070(0, &qword_1EC467A30);
  v5 = v4;
  v6 = sub_1CAD4E494();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CACEE2B8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v5 = *a1;
  swift_beginAccess();
  return sub_1CACFE380(v2 + v5, a2, type metadata accessor for EventModelObject);
}

uint64_t sub_1CACEE3BC(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  swift_beginAccess();
  sub_1CACFE380(v2 + v8, v7, type metadata accessor for EventModelObject);
  LOBYTE(a2) = _s13CalendarUIKit16EventModelObjectV2eeoiySbAC_ACtFZ_0(v7);
  sub_1CACFE3E8(v7, type metadata accessor for EventModelObject);
  if (a2)
  {
    sub_1CACFE380(a1, v7, type metadata accessor for EventModelObject);
    swift_beginAccess();
    sub_1CAD00258(v7, v2 + v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v11[-2] = v2;
    v11[-1] = a1;
    v11[1] = v2;
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  return sub_1CACFE3E8(a1, type metadata accessor for EventModelObject);
}

uint64_t sub_1CACEE5C8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  sub_1CAD002BC(a2, a1 + v5);
  return swift_endAccess();
}

uint64_t sub_1CACEE658@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  *a3 = *(v5 + *a2);
}

uint64_t sub_1CACEE824(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  return *(v2 + *a2);
}

uint64_t sub_1CACEE8C4(char a1)
{
  v2 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing;
  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing) = a1 & 1;
    swift_getKeyPath();
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C424();

    if (*(v1 + v2) == 1 && sub_1CAC65230())
    {
      sub_1CAC672DC();
    }

    return sub_1CACF6C0C(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CACEEA78(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing;
  *(a1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing) = a2;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  if (*(a1 + v3) == 1 && sub_1CAC65230())
  {
    sub_1CAC672DC();
  }

  return sub_1CACF6C0C(1);
}

uint64_t sub_1CACEEB90(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CACEECA4()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v1 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing;
  if (*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_1CAD4C424();

  if (*(v0 + v1))
  {
    return 0;
  }

  swift_getKeyPath();
  sub_1CAD4C424();

  return *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__allowsEditing);
}

uint64_t sub_1CACEEDE0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v3 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventDataSource;
  swift_beginAccess();
  return sub_1CAB299C0(v5 + v3, a1);
}

uint64_t sub_1CACEEEA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventDataSource;
  swift_beginAccess();
  return sub_1CAB299C0(v3 + v4, a2);
}

uint64_t sub_1CACEEF70(uint64_t a1, uint64_t *a2)
{
  sub_1CAB299C0(a1, v12);
  v3 = *a2;
  v4 = v13;
  v5 = v14;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v9 + 16))(v8);
  sub_1CACFDB7C(v8, v3, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1CACEF060(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventDataSource;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + v4), a2);
  return swift_endAccess();
}

id sub_1CACEF0CC()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__editDataSource);

  return v1;
}

id sub_1CACEF184@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__editDataSource);
  *a2 = v4;

  return v4;
}

uint64_t sub_1CACEF264()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1CACEF310@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_1CACEF3E4()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C414();
}

uint64_t sub_1CACEF4EC()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v2 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__pushAction;
  v3 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__pushAction);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      swift_getKeyPath();
      sub_1CAD4C424();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_17;
      }

      v5 = &selRef_requestProposeNewTimePresentation;
    }

    else if (v3 == 4)
    {
      swift_getKeyPath();
      sub_1CAD4C424();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_17;
      }

      v5 = &selRef_requestMailAllInviteesPresentation;
    }

    else
    {
      swift_getKeyPath();
      sub_1CAD4C424();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_17;
      }

      v5 = &selRef_requestMessageAllInviteesPresentation;
    }
  }

  else
  {
    if (!*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__pushAction))
    {
      return result;
    }

    if (v3 == 1)
    {
      swift_getKeyPath();
      sub_1CAD4C424();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_17;
      }

      v5 = &selRef_requestAddInviteesPresentation;
    }

    else
    {
      swift_getKeyPath();
      sub_1CAD4C424();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_17;
      }

      v5 = &selRef_requestInviteesListPresentation;
    }
  }

  [Strong *v5];
  Strong = swift_unknownObjectRelease();
LABEL_17:
  if (!*(v0 + v2))
  {
    return sub_1CACEF4EC(Strong);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1CAD4C414();
}

uint64_t keypath_set_308Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1CACEF8E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title);
  v6 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title) == a1 && *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title + 8) == a2;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

id sub_1CACEFA4C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v5 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title) == a1 && *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____title + 8) == a2;
  if (v5 || (sub_1CAD4E9E4() & 1) != 0)
  {
  }

  sub_1CACEFC6C(a1, a2);

  swift_getKeyPath();
  sub_1CAD4C424();

  if (*(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___allowTitleChangesToKickoffAutocomplete) == 1)
  {
    return sub_1CACB5048();
  }

  return result;
}

uint64_t sub_1CACEFBB8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = *(v2 + *a2);

  return v4;
}

uint64_t sub_1CACEFC6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v120 = a2;
  v121 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A08);
  v109 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v98 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A10);
  MEMORY[0x1EEE9AC00](v108);
  v6 = &v98 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467A18);
  v111 = *(v116 - 8);
  v7 = MEMORY[0x1EEE9AC00](v116);
  v105 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v115 = &v98 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v98 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467980);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v98 - v16;
  v18 = sub_1CAD4C7F4();
  v113 = *(v18 - 8);
  v114 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v98 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v112 = &v98 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v98 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v98 - v30;
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___observationRegistrar;
  v124[0] = v3;
  v118 = sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  v119 = v32;
  sub_1CAD4C424();

  v33 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__titleSelection;
  swift_beginAccess();
  v117 = v3;
  sub_1CAB23A9C(v3 + v33, v17, &qword_1EC467980);
  v34 = sub_1CAD4C814();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v17, 1, v34))
  {
    sub_1CAB21B68(v17, &qword_1EC467980);
LABEL_3:
    v36 = v120;
LABEL_4:
    v37 = v121;
    v38 = v117;
    goto LABEL_5;
  }

  v99 = v21;
  v100 = v24;
  v101 = v35;
  v102 = v34;
  v103 = v15;
  sub_1CAD4C804();
  sub_1CAB21B68(v17, &qword_1EC467980);
  v41 = v113;
  v42 = v114;
  (*(v113 + 32))(v31, v29, v114);
  v43 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v36 = v120;
  v44 = sub_1CAD4DF54();
  v45 = [v43 initWithString_];

  v46 = sub_1CAD4DF94();
  v48 = v47;

  if ((v48 & 0x2000000000000000) != 0)
  {
    v49 = HIBYTE(v48) & 0xF;
  }

  else
  {
    v49 = v46 & 0xFFFFFFFFFFFFLL;
  }

  v50 = 7;
  if (((v48 >> 60) & ((v46 & 0x800000000000000) == 0)) != 0)
  {
    v50 = 11;
  }

  v51 = v50 | (v49 << 16);
  v52 = *(v41 + 16);
  v53 = v112;
  v104 = v31;
  v52(v112, v31, v42);
  v54 = (*(v41 + 88))(v53, v42);
  if (v54 == *MEMORY[0x1E697BFD8])
  {
    (*(v41 + 96))(v53, v42);
    v55 = v53[1];
    v56 = *v53 >> 14;
    if (4 * v49 >= v56)
    {
      v57 = *v53;
    }

    else
    {
      v57 = v51;
    }

    if (4 * v49 >= v55 >> 14)
    {
      v58 = v53[1];
    }

    else
    {
      v58 = v51;
    }

    if (v56 != v57 >> 14 || v58 >> 14 != v55 >> 14)
    {
      v67 = v103;
      sub_1CAD4C7D4();
      (*(v101 + 56))(v67, 0, 1, v102);
      v38 = v117;
      sub_1CACF6710(v67);
      (*(v41 + 8))(v104, v42);
      v37 = v121;
      goto LABEL_5;
    }

    (*(v41 + 8))(v104, v42);
    goto LABEL_4;
  }

  v98 = v49;
  if (v54 == *MEMORY[0x1E697BFD0])
  {
    (*(v41 + 96))(v53, v114);
    (*(v111 + 32))(v110, v53, v116);
    sub_1CAD4EB54();
    v59 = v106;
    sub_1CAD4EB34();
    v60 = v109;
    v61 = v107;
    (*(v109 + 16))(v6, v59, v107);
    v62 = *(v108 + 36);
    sub_1CAB23B0C(&qword_1EC467A20, &qword_1EC467A08);
    sub_1CAD4E384();
    (*(v60 + 8))(v59, v61);
    sub_1CAD4E394();
    if (*&v6[v62] != v124[0])
    {
      v86 = 4 * v98;
      do
      {
        v87 = sub_1CAD4E3C4();
        v89 = *v88;
        v90 = v88[1];
        v87(v124, 0);
        sub_1CAD4E3A4();
        if (v86 >= v89 >> 14)
        {
          v91 = v89;
        }

        else
        {
          v91 = v51;
        }

        if (v86 >= v90 >> 14)
        {
          v92 = v90;
        }

        else
        {
          v92 = v51;
        }

        v122 = v91;
        v123 = v92;
        if ((v92 ^ v91) >= 0x4000)
        {
          v93 = sub_1CAD4EB44();
          sub_1CAD4EB24();
          v93(v124, 0);
        }

        sub_1CAD4E394();
      }

      while (*&v6[v62] != v124[0]);
    }

    sub_1CAB21B68(v6, &qword_1EC467A10);
    sub_1CAB23B0C(&qword_1EC467A28, &qword_1EC467A18);
    v64 = v115;
    v63 = v116;
    v65 = v110;
    if ((sub_1CAD4DED4() & 1) == 0)
    {
      v94 = v111;
      (*(v111 + 16))(v105, v64, v63);
      v95 = v103;
      sub_1CAD4C7E4();
      (*(v101 + 56))(v95, 0, 1, v102);
      v38 = v117;
      sub_1CACF6710(v95);
      v96 = *(v94 + 8);
      v96(v64, v63);
      v96(v65, v63);
      (*(v113 + 8))(v104, v114);
      v36 = v120;
      v37 = v121;
      goto LABEL_5;
    }

    v66 = *(v111 + 8);
    v66(v64, v63);
    v66(v65, v63);
    (*(v113 + 8))(v104, v114);
    goto LABEL_3;
  }

  if (qword_1EC462388 != -1)
  {
    swift_once();
  }

  v68 = sub_1CAD4C564();
  __swift_project_value_buffer(v68, qword_1EC47D838);
  v69 = v100;
  v70 = v104;
  v71 = v114;
  v52(v100, v104, v114);
  v72 = sub_1CAD4C544();
  v73 = sub_1CAD4E3E4();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v99;
  if (v74)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v124[0] = v77;
    *v76 = 136315138;
    v52(v75, v69, v71);
    v78 = sub_1CAD4DFF4();
    v79 = v69;
    v80 = v78;
    v82 = v81;
    v83 = *(v113 + 8);
    v83(v79, v114);
    v84 = sub_1CAD39738(v80, v82, v124);
    v71 = v114;

    *(v76 + 4) = v84;
    _os_log_impl(&dword_1CAB19000, v72, v73, "Unhandled titleSelection indices case: %s", v76, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v77);
    MEMORY[0x1CCAA9440](v77, -1, -1);
    v85 = v76;
    v70 = v104;
    MEMORY[0x1CCAA9440](v85, -1, -1);
  }

  else
  {

    v83 = *(v113 + 8);
    v83(v69, v71);
  }

  v97 = v103;
  v38 = v117;
  (*(v101 + 56))(v103, 1, 1, v102);
  sub_1CACF6710(v97);
  v83(v70, v71);
  v83(v112, v71);
  v37 = v121;
LABEL_5:

  sub_1CACEF8E0(v37, v36);
  swift_getKeyPath();
  v124[0] = v38;

  sub_1CAD4C424();

  v124[0] = v38;
  swift_getKeyPath();
  sub_1CAD4C444();

  v39 = v38 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  *(v39 + 32) = v37;
  *(v39 + 40) = v36;

  v122 = v38;
  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CACF09FC()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();
}

uint64_t sub_1CACF0B1C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *a2;

  LOBYTE(a3) = a3(v7, a1);

  if (a3)
  {
    *(v3 + v6) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CACF0C80@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v20[0] = v3;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = (v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v6 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 16);
  v5 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 32);
  v20[0] = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v20[1] = v6;
  v20[2] = v5;
  v7 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 96);
  v9 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 48);
  v8 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 64);
  v20[5] = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 80);
  v20[6] = v7;
  v20[3] = v9;
  v20[4] = v8;
  v10 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 160);
  v12 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 112);
  v11 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
  v20[9] = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
  v20[10] = v10;
  v20[7] = v12;
  v20[8] = v11;
  v13 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
  a2[8] = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
  a2[9] = v13;
  a2[10] = v4[10];
  v14 = v4[5];
  a2[4] = v4[4];
  a2[5] = v14;
  v15 = v4[7];
  a2[6] = v4[6];
  a2[7] = v15;
  v16 = v4[1];
  *a2 = *v4;
  a2[1] = v16;
  v17 = v4[3];
  a2[2] = v4[2];
  a2[3] = v17;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

uint64_t sub_1CACF0DB0(__int128 *a1)
{
  v2 = a1[9];
  v9[8] = a1[8];
  v9[9] = v2;
  v9[10] = a1[10];
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[7];
  v9[6] = a1[6];
  v9[7] = v4;
  v5 = a1[1];
  v9[0] = *a1;
  v9[1] = v5;
  v6 = a1[3];
  v9[2] = a1[2];
  v9[3] = v6;
  sub_1CAB23A9C(v9, &v8, &qword_1EC463C00);
  return sub_1CACF0E38(a1);
}

uint64_t sub_1CACF0E38(__int128 *a1)
{
  v2 = a1[9];
  v40 = a1[8];
  v41 = v2;
  v3 = a1[5];
  v36 = a1[4];
  v37 = v3;
  v4 = a1[7];
  v38 = a1[6];
  v39 = v4;
  v5 = a1[1];
  v32 = *a1;
  v33 = v5;
  v6 = a1[3];
  v34 = a1[2];
  v35 = v6;
  v7 = (v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v8 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
  v9 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
  v10 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 96);
  v43[7] = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 112);
  v43[8] = v8;
  v11 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 160);
  v43[9] = v9;
  v43[10] = v11;
  v12 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 64);
  v13 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 80);
  v14 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 32);
  v43[3] = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 48);
  v43[4] = v12;
  v15 = a1[10];
  v43[5] = v13;
  v43[6] = v10;
  v16 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v17 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 16);
  v42 = v15;
  v43[0] = v16;
  v43[1] = v17;
  v43[2] = v14;
  sub_1CAB23A9C(v43, v31, &qword_1EC463C00);
  v18 = sub_1CABD431C(v43, &v32);
  sub_1CAB21B68(v43, &qword_1EC463C00);
  if (v18)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v31[0] = v1;
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
    sub_1CAB21B68(&v32, &qword_1EC463C00);
  }

  else
  {
    v21 = v7[9];
    v31[8] = v7[8];
    v31[9] = v21;
    v31[10] = v7[10];
    v22 = v7[5];
    v31[4] = v7[4];
    v31[5] = v22;
    v23 = v7[7];
    v31[6] = v7[6];
    v31[7] = v23;
    v24 = v7[1];
    v31[0] = *v7;
    v31[1] = v24;
    v25 = v7[3];
    v31[2] = v7[2];
    v31[3] = v25;
    v26 = v41;
    v7[8] = v40;
    v7[9] = v26;
    v7[10] = v42;
    v27 = v37;
    v7[4] = v36;
    v7[5] = v27;
    v28 = v39;
    v7[6] = v38;
    v7[7] = v28;
    v29 = v33;
    *v7 = v32;
    v7[1] = v29;
    v30 = v35;
    v7[2] = v34;
    v7[3] = v30;
    return sub_1CAB21B68(v31, &qword_1EC463C00);
  }
}

uint64_t sub_1CACF108C@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v20[0] = v1;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v3 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location;
  v4 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 112);
  v5 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
  v27 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 128);
  v28 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 144);
  v29 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 160);
  v7 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 48);
  v8 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 80);
  v23 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 64);
  v9 = v23;
  v24 = v8;
  v10 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 80);
  v11 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 112);
  v25 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 96);
  v12 = v25;
  v26 = v11;
  v13 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 16);
  v20[0] = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v20[1] = v13;
  v14 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 48);
  v16 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location);
  v15 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 16);
  v21 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____location + 32);
  v17 = v21;
  v22 = v14;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = *(v3 + 160);
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v4;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v7;
  return sub_1CAB23A9C(v20, &v19, &qword_1EC463C00);
}

void sub_1CACF11BC(__int128 *a1)
{
  v2 = v1;
  v4 = a1[9];
  v43 = a1[8];
  v44 = v4;
  v45 = a1[10];
  v5 = a1[5];
  v39 = a1[4];
  v40 = v5;
  v6 = a1[7];
  v41 = a1[6];
  v42 = v6;
  v7 = a1[1];
  v35 = *a1;
  v36 = v7;
  v8 = a1[3];
  v37 = a1[2];
  v38 = v8;
  sub_1CAB23A9C(&v35, &v47, &qword_1EC463C00);
  sub_1CACF0E38(a1);
  swift_getKeyPath();
  *&v46[0] = v2;
  sub_1CAB23A9C(&v35, &v47, &qword_1EC463C00);
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  *&v47 = v2;
  swift_getKeyPath();
  sub_1CAD4C444();

  v9 = v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v10 = (v9 + *(type metadata accessor for EventModelObject() + 76));
  v11 = v10[9];
  v46[8] = v10[8];
  v46[9] = v11;
  v46[10] = v10[10];
  v12 = v10[5];
  v46[4] = v10[4];
  v46[5] = v12;
  v13 = v10[7];
  v46[6] = v10[6];
  v46[7] = v13;
  v14 = v10[1];
  v46[0] = *v10;
  v46[1] = v14;
  v15 = v10[3];
  v46[2] = v10[2];
  v46[3] = v15;
  v16 = v44;
  v10[8] = v43;
  v10[9] = v16;
  v10[10] = v45;
  v17 = v40;
  v10[4] = v39;
  v10[5] = v17;
  v18 = v42;
  v10[6] = v41;
  v10[7] = v18;
  v19 = v36;
  *v10 = v35;
  v10[1] = v19;
  v20 = v38;
  v10[2] = v37;
  v10[3] = v20;
  sub_1CAB21B68(v46, &qword_1EC463C00);
  *&v47 = v2;
  swift_getKeyPath();
  sub_1CAD4C434();

  v55 = v43;
  v56 = v44;
  v57 = v45;
  v51 = v39;
  v52 = v40;
  v53 = v41;
  v54 = v42;
  v47 = v35;
  v48 = v36;
  v49 = v37;
  v50 = v38;
  v21 = 0;
  if (get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationVSg_0(&v47) != 1)
  {
    v30 = v55;
    v31 = v56;
    v32 = v57;
    v26 = v51;
    v27 = v52;
    v28 = v53;
    v29 = v54;
    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v33[8] = v43;
    v33[9] = v44;
    v33[10] = v45;
    v33[4] = v39;
    v33[5] = v40;
    v33[6] = v41;
    v33[7] = v42;
    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    sub_1CABD3C1C(v33, v34);
    v21 = sub_1CAD0F1FC();
    v34[8] = v30;
    v34[9] = v31;
    v34[10] = v32;
    v34[4] = v26;
    v34[5] = v27;
    v34[6] = v28;
    v34[7] = v29;
    v34[0] = v22;
    v34[1] = v23;
    v34[2] = v24;
    v34[3] = v25;
    sub_1CABD3C78(v34);
  }

  swift_getKeyPath();
  *&v34[0] = v2;
  sub_1CAD4C424();

  [*(v2 + 16) setStructuredLocation_];
}

uint64_t sub_1CACF1524()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus);
  sub_1CABED120(v1, *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus + 8));
  return v1;
}

uint64_t sub_1CACF15E4(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus);
  v6 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus);
  v7 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus + 8);
  if (!v7)
  {
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (v7 == 1)
  {
    if (a2 == 1)
    {
      goto LABEL_17;
    }

LABEL_11:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
    sub_1CABED134(a1, a2);
  }

  if (v7 != 2)
  {
    if (a2 >= 3)
    {
      if (v6 == a1 && v7 == a2)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus);
      v12 = *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus + 8);
      v13 = sub_1CAD4E9E4();
      v7 = v12;
      v14 = v13;
      v6 = v11;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_11;
  }

  if (a2 != 2)
  {
    goto LABEL_11;
  }

LABEL_17:
  *v5 = a1;
  v5[1] = a2;

  return sub_1CABED134(v6, v7);
}

uint64_t sub_1CACF17A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____dateInterval;
  swift_beginAccess();
  v5 = sub_1CAD4BC94();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1CACF18A0(uint64_t a1)
{
  v2 = sub_1CAD4BC94();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_1CACF196C(v4);
}

uint64_t sub_1CACF196C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CAD4BC94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____dateInterval;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1CACFFD50(&unk_1EC4679F0, MEMORY[0x1E6968130]);
  v14[0] = a1;
  LOBYTE(a1) = sub_1CAD4DED4();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1CACF1C0C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____dateInterval;
  swift_beginAccess();
  v5 = sub_1CAD4BC94();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1CACF1CAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v3 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____dateInterval;
  swift_beginAccess();
  v4 = sub_1CAD4BC94();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

void sub_1CACF1DA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CAD4C0F4();
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CAD4BC94();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v18[0] = a1;
  v12(v10, a1);
  sub_1CACF196C(v10);
  sub_1CAD4BC74();
  swift_getKeyPath();
  v20 = v2;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v20 = v2;
  swift_getKeyPath();
  sub_1CAD4C444();

  v13 = v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v14 = type metadata accessor for EventModelObject();
  v15 = *(v14 + 28);
  v16 = v5 + 40;
  v17 = *(v5 + 40);
  v18[1] = v16;
  v17(v13 + v15, v7, v4);
  swift_endAccess();
  v20 = v2;
  swift_getKeyPath();
  sub_1CAD4C434();

  sub_1CAD4BC44();
  swift_getKeyPath();
  v20 = v2;
  sub_1CAD4C424();

  v20 = v2;
  swift_getKeyPath();
  sub_1CAD4C444();

  swift_beginAccess();
  v17(v13 + *(v14 + 32), v7, v19);
  swift_endAccess();
  v20 = v2;
  swift_getKeyPath();
  sub_1CAD4C434();

  if (sub_1CAC65230())
  {
    sub_1CAC672DC();
  }
}

uint64_t sub_1CACF21D4(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____allDay) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____allDay) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  v4 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  *(v4 + *(type metadata accessor for EventModelObject() + 36)) = v2;
  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CACF23F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  swift_getKeyPath();
  v10 = v0;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v5 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__timeZone;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v5, v4, &qword_1EC4635D0);
  swift_getKeyPath();
  v9 = v1;
  sub_1CAD4C424();

  v9 = v1;
  swift_getKeyPath();
  sub_1CAD4C444();

  v6 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v7 = type metadata accessor for EventModelObject();
  sub_1CABC6AC8(v4, v6 + *(v7 + 44), &qword_1EC4635D0);
  swift_endAccess();
  v9 = v1;
  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CACF2624@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v7 = *a1;
  swift_beginAccess();
  return sub_1CAB23A9C(v9 + v7, a3, a2);
}

uint64_t sub_1CACF2740()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  swift_getKeyPath();
  v10 = v0;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v5 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__endTimeZone;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v5, v4, &qword_1EC4635D0);
  swift_getKeyPath();
  v9 = v1;
  sub_1CAD4C424();

  v9 = v1;
  swift_getKeyPath();
  sub_1CAD4C444();

  v6 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v7 = type metadata accessor for EventModelObject();
  sub_1CABC6AC8(v4, v6 + *(v7 + 48), &qword_1EC4635D0);
  swift_endAccess();
  v9 = v1;
  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CACF29B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v16 - v10;
  v12 = *a2;
  swift_beginAccess();
  sub_1CAB23A9C(v5 + v12, v11, &qword_1EC4635D0);
  LOBYTE(a2) = sub_1CACFE448(v11, a1);
  sub_1CAB21B68(v11, &qword_1EC4635D0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16[-2] = v5;
    v16[-1] = a1;
    v16[2] = v5;
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  else
  {
    sub_1CAB23A9C(a1, v11, &qword_1EC4635D0);
    swift_beginAccess();
    sub_1CAC809BC(v11, v5 + v12, &qword_1EC4635D0);
    v14 = swift_endAccess();
    a5(v14);
    sub_1CAB21B68(v11, &qword_1EC4635D0);
  }

  return sub_1CAB21B68(a1, &qword_1EC4635D0);
}

uint64_t sub_1CACF2BE0(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1CAB23A9C(a2, &v14 - v9, &qword_1EC4635D0);
  v11 = *a3;
  swift_beginAccess();
  sub_1CAC809BC(v10, a1 + v11, &qword_1EC4635D0);
  v12 = swift_endAccess();
  a4(v12);
  return sub_1CAB21B68(v10, &qword_1EC4635D0);
}

uint64_t sub_1CACF2D10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____recurrenceRule;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v6, v5, &qword_1EC463170);
  v7 = sub_1CACFF998(v5, a1);
  sub_1CAB21B68(v5, &qword_1EC463170);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  else
  {
    sub_1CAB23A9C(a1, v5, &qword_1EC463170);
    swift_beginAccess();
    sub_1CABC6AC8(v5, v1 + v6, &qword_1EC463170);
    swift_endAccess();
  }

  return sub_1CAB21B68(a1, &qword_1EC463170);
}

uint64_t sub_1CACF2F18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_1CAC809BC(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_1CACF2F98(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_1CAB23A9C(a1, &v19 - v12, &qword_1EC463170);
  sub_1CACF2D10(v13);
  sub_1CAB23A9C(a1, v11, &qword_1EC463170);
  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    sub_1CAB21B68(v11, &qword_1EC463170);
    swift_getKeyPath();
    v20 = v2;
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C424();

    v20 = v2;
    swift_getKeyPath();
    sub_1CAD4C444();

    v14 = v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
    swift_beginAccess();
    *(v14 + *(type metadata accessor for EventModelObject() + 132)) = 0;

    v19 = v2;
    swift_getKeyPath();
    sub_1CAD4C434();
  }

  else
  {
    sub_1CACFE318(v11, v7, type metadata accessor for EventRecurrenceRuleModelObject);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D50);
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1CAD58380;
    sub_1CACFE380(v7, v17 + v16, type metadata accessor for EventRecurrenceRuleModelObject);
    swift_getKeyPath();
    v20 = v2;
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C424();

    v20 = v2;
    swift_getKeyPath();
    sub_1CAD4C444();

    v18 = v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
    swift_beginAccess();
    *(v18 + *(type metadata accessor for EventModelObject() + 132)) = v17;

    v19 = v2;
    swift_getKeyPath();
    sub_1CAD4C434();

    return sub_1CACFE3E8(v7, type metadata accessor for EventRecurrenceRuleModelObject);
  }
}

id sub_1CACF33F0()
{
  v1 = v0;
  v2 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v27 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CAD4C0F4();
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CAD4BC94();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v31 = v0;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  result = [*(v0 + 16) recurrenceRules];
  if (!result)
  {
    return result;
  }

  v14 = result;
  sub_1CABD4070(0, &unk_1EC461EB8);
  v15 = sub_1CAD4E214();

  if (v15 >> 62)
  {
    result = sub_1CAD4E604();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1CCAA7940](0, v15);
    goto LABEL_7;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v15 + 32);
LABEL_7:
    v25 = v16;

    swift_getKeyPath();
    v31 = v1;
    sub_1CAD4C424();

    v17 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel____dateInterval;
    swift_beginAccess();
    (*(v10 + 16))(v12, v1 + v17, v9);
    sub_1CAD4BC74();
    (*(v10 + 8))(v12, v9);
    v18 = sub_1CAD4C084();
    (*(v26 + 8))(v8, v6);
    v19 = v25;
    v20 = CUIKStringForRecurrenceRule(v25, v18);

    v21 = sub_1CAD4DF94();
    v23 = v22;

    sub_1CAD4DEE4();
    sub_1CAD4C184();
    v29 = sub_1CAD4DFC4();
    v30 = v24;
    MEMORY[0x1CCAA7330](32, 0xE100000000000000);
    MEMORY[0x1CCAA7330](v21, v23);

    return v29;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CACF3858()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v53 = v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = v39 - v7;
  v47 = type metadata accessor for EventCalendarModelObject();
  v8 = *(v47 - 8);
  v9 = MEMORY[0x1EEE9AC00](v47);
  v45 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v39 - v11);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___observationRegistrar;
  v60 = v0;
  v54 = sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  v55 = v13;
  v14 = v0;
  sub_1CAD4C424();

  result = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__calendars);
  v16 = *(result + 16);
  if (v16)
  {
    v50 = (v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__selectedCalendarID);
    v43 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
    v17 = *(v8 + 80);
    v18 = result + ((v17 + 32) & ~v17);
    v49 = *(v8 + 72);
    v41 = (v8 + 56);
    v42 = v17;
    v40 = (v17 + 40) & ~v17;
    v39[1] = result;

    v44 = v12;
    do
    {
      sub_1CACFE380(v18, v12, type metadata accessor for EventCalendarModelObject);
      v19 = *v12;
      v20 = v12[1];
      swift_getKeyPath();
      v60 = v14;
      sub_1CAD4C424();

      v21 = v19 == *v50 && v20 == v50[1];
      if (v21 || (sub_1CAD4E9E4() & 1) != 0)
      {
        v51 = type metadata accessor for EventCalendarModelObject;
        v52 = v16;
        v22 = v48;
        sub_1CACFE380(v12, v48, type metadata accessor for EventCalendarModelObject);
        (*v41)(v22, 0, 1, v47);
        swift_getKeyPath();
        v60 = v14;
        sub_1CAD4C424();

        v60 = v14;
        swift_getKeyPath();
        sub_1CAD4C444();

        v23 = v43;
        swift_beginAccess();
        v24 = type metadata accessor for EventModelObject();
        sub_1CABC6AC8(v22, v23 + *(v24 + 104), &qword_1EC464020);
        swift_endAccess();
        v60 = v14;
        swift_getKeyPath();
        sub_1CAD4C434();

        v25 = sub_1CAD4E304();
        v26 = *(v25 - 8);
        v27 = v4;
        v28 = v53;
        (*(v26 + 56))(v53, 1, 1, v25);
        v29 = v12;
        v30 = v45;
        sub_1CACFE380(v29, v45, v51);
        sub_1CAD4E2C4();

        v31 = sub_1CAD4E2B4();
        v32 = v40;
        v33 = swift_allocObject();
        v33[2] = v31;
        v33[3] = MEMORY[0x1E69E85E0];
        v33[4] = v14;
        sub_1CACFE318(v30, v33 + v32, type metadata accessor for EventCalendarModelObject);
        v34 = v28;
        v4 = v27;
        sub_1CAB23A9C(v34, v27, &unk_1EC4679C0);
        LODWORD(v31) = (*(v26 + 48))(v27, 1, v25);

        if (v31 == 1)
        {
          sub_1CAB21B68(v27, &unk_1EC4679C0);
        }

        else
        {
          sub_1CAD4E2F4();
          (*(v26 + 8))(v27, v25);
        }

        v35 = v33[2];
        swift_unknownObjectRetain();

        v16 = v52;
        if (v35)
        {
          swift_getObjectType();
          v36 = sub_1CAD4E2A4();
          v38 = v37;
          swift_unknownObjectRelease();
        }

        else
        {
          v36 = 0;
          v38 = 0;
        }

        sub_1CAB21B68(v53, &unk_1EC4679C0);
        if (v38 | v36)
        {
          v56 = 0;
          v57 = 0;
          v58 = v36;
          v59 = v38;
        }

        v12 = v44;
        swift_task_create();
      }

      sub_1CACFE3E8(v12, type metadata accessor for EventCalendarModelObject);
      v18 += v49;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t sub_1CACF3F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[11] = type metadata accessor for EventModelObject();
  v5[12] = swift_task_alloc();
  sub_1CAD4E2C4();
  v5[13] = sub_1CAD4E2B4();
  v7 = sub_1CAD4E2A4();
  v5[14] = v7;
  v5[15] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CACF3FCC, v7, v6);
}

uint64_t sub_1CACF3FCC()
{
  v15 = v0[12];
  v16 = v0[11];
  v1 = v0[9];
  v2 = v0[10];
  swift_getKeyPath();
  v0[16] = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___observationRegistrar;
  v0[5] = v1;
  v0[17] = sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v3 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__editDataSource);
  v0[18] = v3;
  v17 = v2[1];
  v18 = *v2;
  swift_getKeyPath();
  v0[6] = v1;
  v4 = v3;
  sub_1CAD4C424();

  v5 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__originalEventModelObject;
  swift_beginAccess();
  sub_1CACFE380(v1 + v5, v15, type metadata accessor for EventModelObject);
  v6 = (v15 + *(v16 + 104));
  v7 = type metadata accessor for EventCalendarModelObject();
  v8 = 0;
  v9 = 0;
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = *v6;
    v9 = v6[1];
  }

  v0[19] = v9;
  v10 = v0[9];
  sub_1CACFE3E8(v0[12], type metadata accessor for EventModelObject);
  swift_getKeyPath();
  v0[7] = v10;
  sub_1CAD4C424();

  v11 = *(v10 + 16);
  v0[20] = v11;
  v12 = v11;
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_1CACF4274;

  return sub_1CAC24F38(v18, v17, v8, v9, v12, v4);
}

uint64_t sub_1CACF4274(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
    v6 = sub_1CACF449C;
  }

  else
  {
    v7 = *(v3 + 144);

    v4 = *(v3 + 112);
    v5 = *(v3 + 120);
    v6 = sub_1CACF43A8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CACF43A8()
{
  v1 = v0[22];

  if (v1)
  {
    v2 = v0[22];
    v3 = v0[9];
    swift_getKeyPath();
    v0[8] = v3;
    sub_1CAD4C424();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong updateEventCalendar_];
      swift_unknownObjectRelease();
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CACF449C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1CACF4660(uint64_t a1)
{
  v3 = type metadata accessor for DisplayPerson(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EventAttendeeModelObject(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1CACF4610(v11);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v18 = v1;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1CACB9E14(0, v12, 0);
    v13 = v19;
    v14 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      sub_1CACFE380(v14, v6, type metadata accessor for DisplayPerson);
      sub_1CACFE380(v6, v10, type metadata accessor for EventAttendeeModelObject);
      sub_1CACFE3E8(v6, type metadata accessor for DisplayPerson);
      v19 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1CACB9E14(v16 > 1, v17 + 1, 1);
        v13 = v19;
      }

      *(v13 + 16) = v17 + 1;
      sub_1CACFE318(v10, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, type metadata accessor for EventAttendeeModelObject);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  sub_1CACF70E8(v13);

  sub_1CAC66A58();
  if (sub_1CAC65230())
  {
    sub_1CAC672DC();
  }
}

char *sub_1CACF48D0()
{
  v1 = type metadata accessor for EventModelObject();
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464020);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for EventCalendarModelObject();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v23 = v0;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v11 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CAB23A9C(v11 + *(v2 + 112), v6, &qword_1EC464020);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1CAB21B68(v6, &qword_1EC464020);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1CACFE318(v6, v10, type metadata accessor for EventCalendarModelObject);
  if (v10[242])
  {
    sub_1CACFE3E8(v10, type metadata accessor for EventCalendarModelObject);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679B0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1CAD5A0D0;
  v14 = v13;
  *(v13 + 32) = 1;
  swift_getKeyPath();
  v22 = v0;
  sub_1CAD4C424();

  v15 = v21;
  sub_1CACFE380(v11, v21, type metadata accessor for EventModelObject);
  v16 = sub_1CACEDE98();
  sub_1CACFE3E8(v15, type metadata accessor for EventModelObject);
  if (v16)
  {
    sub_1CACFE3E8(v10, type metadata accessor for EventCalendarModelObject);
    return v14;
  }

  else
  {
    v17 = sub_1CAD349CC(1, 3, 1, v14);
    *(v17 + 2) = 3;
    v17[34] = 2;
    v18 = *(v17 + 3);
    if (v18 <= 7)
    {
      v17 = sub_1CAD349CC((v18 > 1), 4, 1, v17);
    }

    v19 = v17;
    sub_1CACFE3E8(v10, type metadata accessor for EventCalendarModelObject);
    result = v19;
    *(v19 + 2) = 4;
    v19[35] = 3;
  }

  return result;
}

uint64_t sub_1CACF4CC4()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v1 = qword_1CAD68840[*(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__selectedAvailability)];
  swift_getKeyPath();
  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  v2 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  *(v2 + *(type metadata accessor for EventModelObject() + 124)) = v1;
  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CACF4E98(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (*(v5 + *a2) == a1)
  {

    return a5();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

BOOL sub_1CACF4FC0()
{
  v1 = v0;
  v2 = type metadata accessor for EventModelObject();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  swift_getKeyPath();
  v16 = v0;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v8 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CACFE380(v0 + v8, v7, type metadata accessor for EventModelObject);
  v9 = sub_1CACEDCE4();
  sub_1CACFE3E8(v7, type metadata accessor for EventModelObject);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  v15[2] = v1;
  sub_1CAD4C424();

  v10 = sub_1CACFE380(v1 + v8, v5, type metadata accessor for EventModelObject);
  v11 = *&v5[*(v2 + 140)];
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v10);
    v15[-2] = v5;

    v12 = sub_1CAC1C2E8(sub_1CAC69EA8, &v15[-4], v11);
    sub_1CACFE3E8(v5, type metadata accessor for EventModelObject);
    v13 = *(v12 + 16);

    return v13 == 0;
  }

  else
  {
    sub_1CACFE3E8(v5, type metadata accessor for EventModelObject);
    return 1;
  }
}

uint64_t sub_1CACF5258()
{
  v1 = v0;
  v2 = type metadata accessor for EventModelObject();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v25[0] = v0;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v5 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isPrivate);
  swift_getKeyPath();
  if (v5 != 1)
  {
    *&v25[0] = v1;
    sub_1CAD4C424();

    *&v25[0] = v1;
    swift_getKeyPath();
    sub_1CAD4C444();

    v10 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
    swift_beginAccess();
    *(v10 + *(v2 + 108)) = 0;
    *&v17 = v1;
    swift_getKeyPath();
LABEL_5:
    sub_1CAD4C434();
  }

  *&v25[0] = v1;
  sub_1CAD4C424();

  v6 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  sub_1CACFE380(v6, v4, type metadata accessor for EventModelObject);
  v7 = &v4[*(v2 + 104)];
  v8 = type metadata accessor for EventCalendarModelObject();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    return sub_1CACFE3E8(v4, type metadata accessor for EventModelObject);
  }

  v11 = *(v7 + 184);
  v12 = *(v7 + 216);
  v23 = *(v7 + 200);
  v24[0] = v12;
  *(v24 + 10) = *(v7 + 226);
  v13 = *(v7 + 120);
  v14 = *(v7 + 152);
  v19 = *(v7 + 136);
  v20 = v14;
  v21 = *(v7 + 168);
  v22 = v11;
  v17 = *(v7 + 104);
  v18 = v13;
  sub_1CAB23A9C(&v17, v16, &unk_1EC4679A0);
  sub_1CACFE3E8(v4, type metadata accessor for EventModelObject);
  v28 = v23;
  v29[0] = v24[0];
  *(v29 + 10) = *(v24 + 10);
  v25[2] = v19;
  v25[3] = v20;
  v26 = v21;
  v27 = v22;
  v25[0] = v17;
  v25[1] = v18;
  result = sub_1CABED4EC(v25);
  if (result != 1)
  {
    sub_1CAB21B68(&v17, &unk_1EC4679A0);
    v15 = *(&v26 + 1);
    swift_getKeyPath();
    v16[0] = v1;
    sub_1CAD4C424();

    v16[0] = v1;
    swift_getKeyPath();
    sub_1CAD4C444();

    *(v6 + *(v2 + 108)) = v15;
    v16[0] = v1;
    swift_getKeyPath();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1CACF5654(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isPrivate) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isPrivate) = a1 & 1;

    return sub_1CACF5258();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CACF5790()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v2 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__notes);
  v1 = *(v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__notes + 8);
  swift_getKeyPath();

  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  v3 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v4 = (v3 + *(type metadata accessor for EventModelObject() + 120));
  *v4 = v2;
  v4[1] = v1;

  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CACF5970(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v9 = (v6 + *a3);
  v10 = *v9 == a1 && v9[1] == a2;
  if (v10 || (sub_1CAD4E9E4() & 1) != 0)
  {
    *v9 = a1;
    v9[1] = a2;

    return a6();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CACF5AE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  swift_getKeyPath();
  v9 = v0;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  sub_1CAD4BFE4();

  swift_getKeyPath();
  v9 = v0;
  sub_1CAD4C424();

  v9 = v0;
  swift_getKeyPath();
  sub_1CAD4C444();

  v5 = v0 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v6 = type metadata accessor for EventModelObject();
  sub_1CABC6AC8(v4, v5 + *(v6 + 148), &qword_1EC465450);
  swift_endAccess();
  v9 = v1;
  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CACF5D48()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v2 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__attachments;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();

  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  v4 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  *(v4 + *(type metadata accessor for EventModelObject() + 156)) = v3;

  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CACF5EE4()
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  swift_beginAccess();
}

uint64_t sub_1CACF5FA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__attachments;
  swift_beginAccess();

  v5 = sub_1CACA8A10(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;

    return sub_1CACF5D48();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CACF60F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__attachments;
  swift_beginAccess();
  *(a1 + v4) = a2;

  return sub_1CACF5D48();
}

uint64_t sub_1CACF6170(char a1)
{
  v2 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton;
  *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton) = a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_getKeyPath();
    sub_1CAD4C424();

    [v4 shouldEnableDoneButton_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CACF62A4(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton) == (a1 & 1))
  {
    v4 = a1 & 1;

    return sub_1CACF6170(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }
}

uint64_t sub_1CACF63F4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  return *(v2 + *a2);
}

uint64_t sub_1CACF6494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__numberOfConflicts);
  return result;
}

uint64_t sub_1CACF6594(uint64_t result, void *a2)
{
  if (*(v2 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CACF6710(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC467980);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__titleSelection;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v6, v5, &qword_1EC467980);
  v7 = sub_1CACFDCDC(v5, a1);
  sub_1CAB21B68(v5, &qword_1EC467980);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();
  }

  else
  {
    sub_1CAB23A9C(a1, v5, &qword_1EC467980);
    swift_beginAccess();
    sub_1CABC6AC8(v5, v1 + v6, &qword_1EC467980);
    swift_endAccess();
  }

  return sub_1CAB21B68(a1, &qword_1EC467980);
}

void sub_1CACF6A5C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__precommitSerializedEvent;
  v5 = *(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__precommitSerializedEvent);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
    sub_1CAD4C414();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1CAD4DE74();
  v6 = v5;
  v7 = a1;
  v8 = sub_1CAD4E494();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_1CACF6C0C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for EventModelObject();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  swift_getKeyPath();
  v22 = v1;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__isEditing))
  {
    if (a1)
    {
      swift_getKeyPath();
      v22 = v1;
      sub_1CAD4C424();

      if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__dateIntervalImplicit) == 1)
      {
        LOBYTE(v10) = 0;
        if ((*(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        swift_getKeyPath();
        v22 = v1;
        sub_1CAD4C424();

        v18 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
        swift_beginAccess();
        v10 = *(v18 + *(v4 + 176));
        if (v10 == *(v2 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton))
        {
LABEL_15:
          v11 = v10;
          return sub_1CACF6170(v11);
        }
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v20 - 2) = v2;
      *(&v20 - 8) = v10;
      v21 = v2;
    }

    else
    {
      swift_getKeyPath();
      v22 = v1;
      sub_1CAD4C424();

      v13 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton;
      if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton))
      {
        return result;
      }

      swift_getKeyPath();
      v22 = v1;
      sub_1CAD4C424();

      v14 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
      swift_beginAccess();
      sub_1CACFE380(v2 + v14, v9, type metadata accessor for EventModelObject);
      swift_getKeyPath();
      v21 = v2;
      sub_1CAD4C424();

      v15 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__originalEventModelObject;
      swift_beginAccess();
      sub_1CACFE380(v2 + v15, v7, type metadata accessor for EventModelObject);
      LOBYTE(v15) = _s13CalendarUIKit16EventModelObjectV2eeoiySbAC_ACtFZ_0(v9);
      sub_1CACFE3E8(v7, type metadata accessor for EventModelObject);
      sub_1CACFE3E8(v9, type metadata accessor for EventModelObject);
      v10 = (v15 ^ 1) & 1;
      if (v10 == *(v2 + v13))
      {
        goto LABEL_15;
      }

      v16 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v16);
      *(&v20 - 2) = v2;
      *(&v20 - 8) = v10;
      v20 = v2;
    }

LABEL_14:
    sub_1CAD4C414();
  }

  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__shouldEnableDoneButton) != 1)
  {
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    *(&v20 - 2) = v1;
    *(&v20 - 8) = 1;
    v22 = v1;
    goto LABEL_14;
  }

  v11 = 1;
  return sub_1CACF6170(v11);
}

uint64_t sub_1CACF70E8(uint64_t a1)
{
  v2 = v1;
  v64 = a1;
  v3 = type metadata accessor for EventAttendeeModelObject(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v61 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = v59 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v69 = v59 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v59 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v68 = v59 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v66 = v59 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v59 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v59 - v21;
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel___observationRegistrar;
  v73 = v1;
  v24 = sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  v25 = v1 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__eventModelObject;
  swift_beginAccess();
  v62 = type metadata accessor for EventModelObject();
  v63 = v25;
  v26 = *(v25 + *(v62 + 140));
  if (v26 && (v71 = *(v26 + 16)) != 0)
  {
    v59[0] = v24;
    v59[1] = v23;
    v60 = v2;

    v28 = 0;
    v29 = MEMORY[0x1E69E7CC0];
    v70 = v3;
    v67 = v20;
    do
    {
      if (v28 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      v30 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v31 = *(v4 + 72);
      sub_1CACFE380(v26 + v30 + v31 * v28, v22, type metadata accessor for EventAttendeeModelObject);
      if (*&v22[*(v3 + 52)] == 2)
      {
        result = sub_1CACFE3E8(v22, type metadata accessor for EventAttendeeModelObject);
      }

      else
      {
        sub_1CACFE318(v22, v20, type metadata accessor for EventAttendeeModelObject);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CACB9E14(0, *(v29 + 16) + 1, 1);
          v29 = v72;
        }

        v34 = *(v29 + 16);
        v33 = *(v29 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1CACB9E14(v33 > 1, v34 + 1, 1);
          v29 = v72;
        }

        *(v29 + 16) = v34 + 1;
        v20 = v67;
        result = sub_1CACFE318(v67, v29 + v30 + v34 * v31, type metadata accessor for EventAttendeeModelObject);
        v3 = v70;
      }

      ++v28;
    }

    while (v71 != v28);

    v35 = *(v64 + 16);
    if (v35)
    {
      v36 = v64 + v30;
      v37 = MEMORY[0x1E69E7CC0];
      v38 = *(v64 + 16);
      v39 = v66;
      do
      {
        sub_1CACFE380(v36, v39, type metadata accessor for EventAttendeeModelObject);
        if (*(v39 + *(v70 + 52)) == 2)
        {
          result = sub_1CACFE3E8(v39, type metadata accessor for EventAttendeeModelObject);
        }

        else
        {
          sub_1CACFE318(v39, v68, type metadata accessor for EventAttendeeModelObject);
          v40 = swift_isUniquelyReferenced_nonNull_native();
          v72 = v37;
          if ((v40 & 1) == 0)
          {
            sub_1CACB9E14(0, *(v37 + 16) + 1, 1);
            v37 = v72;
          }

          v42 = *(v37 + 16);
          v41 = *(v37 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_1CACB9E14(v41 > 1, v42 + 1, 1);
            v37 = v72;
          }

          *(v37 + 16) = v42 + 1;
          result = sub_1CACFE318(v68, v37 + v30 + v42 * v31, type metadata accessor for EventAttendeeModelObject);
          v39 = v66;
        }

        v36 += v31;
        --v38;
      }

      while (v38);
    }

    else
    {
      v37 = MEMORY[0x1E69E7CC0];
    }

    v68 = v37;
    v43 = 0;
    v44 = v26 + v30;
    v45 = MEMORY[0x1E69E7CC0];
    v46 = v70;
    while (v43 < *(v26 + 16))
    {
      sub_1CACFE380(v44, v13, type metadata accessor for EventAttendeeModelObject);
      if (*&v13[*(v46 + 52)] == 2)
      {
        sub_1CACFE318(v13, v69, type metadata accessor for EventAttendeeModelObject);
        v47 = swift_isUniquelyReferenced_nonNull_native();
        v72 = v45;
        if ((v47 & 1) == 0)
        {
          sub_1CACB9E14(0, *(v45 + 16) + 1, 1);
          v45 = v72;
        }

        v49 = *(v45 + 16);
        v48 = *(v45 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1CACB9E14(v48 > 1, v49 + 1, 1);
          v45 = v72;
        }

        *(v45 + 16) = v49 + 1;
        result = sub_1CACFE318(v69, v45 + v30 + v49 * v31, type metadata accessor for EventAttendeeModelObject);
        v46 = v70;
      }

      else
      {
        result = sub_1CACFE3E8(v13, type metadata accessor for EventAttendeeModelObject);
      }

      ++v43;
      v44 += v31;
      if (v71 == v43)
      {

        if (v35)
        {
          v50 = v65;
          v51 = v64 + v30;
          v52 = MEMORY[0x1E69E7CC0];
          v53 = v61;
          do
          {
            sub_1CACFE380(v51, v50, type metadata accessor for EventAttendeeModelObject);
            if (*(v50 + *(v46 + 52)) == 2)
            {
              sub_1CACFE318(v50, v53, type metadata accessor for EventAttendeeModelObject);
              v54 = swift_isUniquelyReferenced_nonNull_native();
              v72 = v52;
              if ((v54 & 1) == 0)
              {
                sub_1CACB9E14(0, *(v52 + 16) + 1, 1);
                v50 = v65;
                v52 = v72;
              }

              v56 = *(v52 + 16);
              v55 = *(v52 + 24);
              if (v56 >= v55 >> 1)
              {
                sub_1CACB9E14(v55 > 1, v56 + 1, 1);
                v50 = v65;
                v52 = v72;
              }

              *(v52 + 16) = v56 + 1;
              sub_1CACFE318(v53, v52 + v30 + v56 * v31, type metadata accessor for EventAttendeeModelObject);
            }

            else
            {
              sub_1CACFE3E8(v50, type metadata accessor for EventAttendeeModelObject);
            }

            v51 += v31;
            --v35;
          }

          while (v35);
        }

        else
        {
          v52 = MEMORY[0x1E69E7CC0];
        }

        v72 = v68;
        sub_1CAD0F3AC(v52);
        v57 = v72;
        swift_getKeyPath();
        v58 = v60;
        v72 = v60;
        sub_1CAD4C424();

        v72 = v58;
        swift_getKeyPath();
        sub_1CAD4C444();

        *(v63 + *(v62 + 140)) = v57;

        v72 = v58;
        swift_getKeyPath();
        goto LABEL_47;
      }
    }

LABEL_49:
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v72 = v2;
    sub_1CAD4C424();

    v72 = v2;
    swift_getKeyPath();
    sub_1CAD4C444();

    *(v63 + *(v62 + 140)) = v64;

    v72 = v2;
    swift_getKeyPath();
LABEL_47:
    sub_1CAD4C434();
  }

  return result;
}

void sub_1CACF79B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = aBlock - v9;
  [*(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel_availabilityQueue) cancelAllOperations];
  swift_getKeyPath();
  aBlock[0] = v3;
  sub_1CACFFD50(&qword_1EC466AE0, type metadata accessor for EventEditViewModel);
  sub_1CAD4C424();

  if (*(v3 + OBJC_IVAR____TtC13CalendarUIKit18EventEditViewModel__virtualConferenceStatus + 8) == 1)
  {
    if (qword_1EC462C18 != -1)
    {
      swift_once();
    }

    if (qword_1EC462C20 != -1)
    {
      swift_once();
    }

    v11 = sub_1CAD4DF54();
    v12 = sub_1CAD4DF54();
    v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12];

    if (qword_1EC462C28 != -1)
    {
      swift_once();
    }

    v14 = swift_allocObject();
    v14[2] = v4;
    v14[3] = a2;
    v14[4] = a3;

    sub_1CAB380F0(a2);
    v15 = sub_1CAD4DF54();
    aBlock[4] = sub_1CAD004A4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CACF8154;
    aBlock[3] = &block_descriptor_414;
    v16 = _Block_copy(aBlock);

    v17 = objc_opt_self();
    v18 = [v17 actionWithTitle:v15 style:2 handler:v16];
    _Block_release(v16);

    [v13 addAction_];
    if (qword_1EC462C30 != -1)
    {
      swift_once();
    }

    v19 = sub_1CAD4DF54();
    v20 = [v17 actionWithTitle:v19 style:1 handler:0];

    [v13 addAction_];
    [v13 presentFromSource_];
  }

  else
  {
    v21 = sub_1CAD4E304();
    (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
    sub_1CAD4E2C4();

    sub_1CAB380F0(a2);
    v22 = sub_1CAD4E2B4();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v3;
    v23[5] = a2;
    v23[6] = a3;
    sub_1CACA6D34(0, 0, v10, &unk_1CAD68828, v23);
  }
}