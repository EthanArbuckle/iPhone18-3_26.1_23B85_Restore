unint64_t sub_214B9FCD0()
{
  v2 = qword_27CA36328;
  if (!qword_27CA36328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36328);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B9FD84()
{
  v2 = qword_27CA36338;
  if (!qword_27CA36338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B9FE0C()
{
  v2 = qword_27CA36340;
  if (!qword_27CA36340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214B9FF18()
{
  v2 = qword_280C7CF28;
  if (!qword_280C7CF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA362F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CF28);
    return WitnessTable;
  }

  return v2;
}

void *sub_214B9FFA0(void *a1)
{
  v50 = type metadata accessor for GroupedSearchItems.InternalSection.Element();
  if (!(*(*(v50 - 8) + 48))(a1, 1))
  {
    MEMORY[0x277D82BD8](*a1);
    v47 = a1 + *(v50 + 20);
    type metadata accessor for SearchItem();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:

          v44 = &v47[*(type metadata accessor for SearchItem.Contact() + 24)];
          v2 = sub_214CCD2B4();
          (*(*(v2 - 8) + 8))(v44);

          break;
        case 2:
          v3 = sub_214CCD2B4();
          (*(*(v3 - 8) + 8))(v47);
          v43 = type metadata accessor for SearchItem.Photo();

          MEMORY[0x277D82BD8](*&v47[*(v43 + 28)]);

          break;
        case 3:
          v4 = sub_214CCD2B4();
          (*(*(v4 - 8) + 8))(v47);
          type metadata accessor for SearchItem.Location();

          break;
        case 4:
          v5 = sub_214CCD2B4();
          (*(*(v5 - 8) + 8))(v47);
          v42 = type metadata accessor for SearchItem.Document();

          v41 = &v47[*(v42 + 32)];
          v6 = sub_214CCD154();
          (*(*(v6 - 8) + 8))(v41);

          break;
        case 5:
          v7 = sub_214CCD2B4();
          (*(*(v7 - 8) + 8))(v47);
          v40 = type metadata accessor for SearchItem.LegacySuggested();
          MEMORY[0x277D82BD8](*&v47[*(v40 + 20)]);

          MEMORY[0x277D82BD8](*&v47[*(v40 + 32)]);
          break;
        case 6:

          v39 = type metadata accessor for SearchItem.Generic();
          v38 = &v47[v39[6]];
          v8 = sub_214CCD2B4();
          (*(*(v8 - 8) + 8))(v38);
          MEMORY[0x277D82BD8](*&v47[v39[7]]);
          MEMORY[0x277D82BD8](*&v47[v39[8]]);
          MEMORY[0x277D82BD8](*&v47[v39[9]]);

          break;
        case 7:

          v37 = type metadata accessor for SearchItem.Generic();
          v36 = &v47[v37[6]];
          v9 = sub_214CCD2B4();
          (*(*(v9 - 8) + 8))(v36);
          MEMORY[0x277D82BD8](*&v47[v37[7]]);
          MEMORY[0x277D82BD8](*&v47[v37[8]]);
          MEMORY[0x277D82BD8](*&v47[v37[9]]);

          break;
        case 8:
          v10 = sub_214CCD2B4();
          (*(*(v10 - 8) + 8))(v47);
          v35 = type metadata accessor for SearchItem.TopHit();
          MEMORY[0x277D82BD8](*&v47[*(v35 + 20)]);

          break;
        case 9:
          v11 = sub_214CCD2B4();
          (*(*(v11 - 8) + 8))(v47);
          v30 = type metadata accessor for SearchItem.InstantAnswer();

          v26 = &v47[v30[9]];
          v28 = sub_214CCCEB4();
          v27 = *(v28 - 8);
          v29 = *(v27 + 8);
          v29(v26);
          (v29)(&v47[v30[10]], v28);

          v31 = &v47[v30[12]];
          v32 = sub_214CCD154();
          v33 = *(v32 - 8);
          v34 = *(v33 + 48);
          if (!(v34)(v31, 1))
          {
            (*(v33 + 8))(v31, v32);
          }

          v22 = &v47[v30[13]];
          v23 = sub_214CCD2F4();
          v24 = *(v23 - 8);
          v25 = *(v24 + 48);
          if (!(v25)(v22, 1))
          {
            (*(v24 + 8))(v22, v23);
          }

          v21 = &v47[v30[14]];
          if (!v25())
          {
            (*(v24 + 8))(v21, v23);
          }

          v20 = &v47[v30[15]];
          if (!v34())
          {
            (*(v33 + 8))(v20, v32);
          }

          (v29)(&v47[v30[20]], v28);
          v19 = &v47[v30[21]];
          if (!(*(v27 + 48))())
          {
            (v29)(v19, v28);
          }

          v18 = &v47[v30[22]];
          if (!v25())
          {
            (*(v24 + 8))(v18, v23);
          }

          break;
        case 10:

          v17 = type metadata accessor for SearchItem.Link();
          v15 = &v47[*(v17 + 20)];
          v12 = sub_214CCD2B4();
          (*(*(v12 - 8) + 8))(v15);
          v16 = &v47[*(v17 + 24)];
          v13 = sub_214CCD154();
          (*(*(v13 - 8) + 8))(v16);

          break;
      }
    }

    else
    {

      v46 = type metadata accessor for SearchItem.Generic();
      v45 = &v47[v46[6]];
      v1 = sub_214CCD2B4();
      (*(*(v1 - 8) + 8))(v45);
      MEMORY[0x277D82BD8](*&v47[v46[7]]);
      MEMORY[0x277D82BD8](*&v47[v46[8]]);
      MEMORY[0x277D82BD8](*&v47[v46[9]]);
    }
  }

  return a1;
}

unint64_t sub_214BA0E0C()
{
  v2 = qword_280C7CAE8;
  if (!qword_280C7CAE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CAE8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214BA0E9C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_214B9C35C(a2);
    type metadata accessor for SearchItem();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:
          *a2 = *a1;
          *(a2 + 16) = *(a1 + 16);
          v66 = type metadata accessor for SearchItem.Contact();
          v65 = a2 + *(v66 + 24);
          v64 = a1 + *(v66 + 24);
          v3 = sub_214CCD2B4();
          (*(*(v3 - 8) + 32))(v65, v64);
          *(a2 + *(v66 + 28)) = *(a1 + *(v66 + 28));
          swift_storeEnumTagMultiPayload();
          break;
        case 2:
          v4 = sub_214CCD2B4();
          (*(*(v4 - 8) + 32))(a2, a1);
          v63 = type metadata accessor for SearchItem.Photo();
          *(a2 + v63[5]) = *(a1 + v63[5]);
          *(a2 + v63[6]) = *(a1 + v63[6]);
          *(a2 + v63[7]) = *(a1 + v63[7]);
          *(a2 + v63[8]) = *(a1 + v63[8]);
          swift_storeEnumTagMultiPayload();
          break;
        case 3:
          v5 = sub_214CCD2B4();
          (*(*(v5 - 8) + 32))(a2, a1);
          v6 = type metadata accessor for SearchItem.Location();
          *(a2 + v6[5]) = *(a1 + v6[5]);
          *(a2 + v6[6]) = *(a1 + v6[6]);
          *(a2 + v6[7]) = *(a1 + v6[7]);
          swift_storeEnumTagMultiPayload();
          break;
        case 4:
          v7 = sub_214CCD2B4();
          (*(*(v7 - 8) + 32))(a2, a1);
          v62 = type metadata accessor for SearchItem.Document();
          *(a2 + v62[5]) = *(a1 + v62[5]);
          *(a2 + v62[6]) = *(a1 + v62[6]);
          *(a2 + v62[7]) = *(a1 + v62[7]);
          v61 = a2 + v62[8];
          v60 = a1 + v62[8];
          v8 = sub_214CCD154();
          (*(*(v8 - 8) + 32))(v61, v60);
          *(a2 + v62[9]) = *(a1 + v62[9]);
          swift_storeEnumTagMultiPayload();
          break;
        case 5:
          v9 = sub_214CCD2B4();
          (*(*(v9 - 8) + 32))(a2, a1);
          v59 = type metadata accessor for SearchItem.LegacySuggested();
          *(a2 + v59[5]) = *(a1 + v59[5]);
          *(a2 + v59[6]) = *(a1 + v59[6]);
          *(a2 + v59[7]) = *(a1 + v59[7]);
          *(a2 + v59[8]) = *(a1 + v59[8]);
          *(a2 + v59[9]) = *(a1 + v59[9]);
          swift_storeEnumTagMultiPayload();
          break;
        case 6:
          *a2 = *a1;
          *(a2 + 16) = *(a1 + 16);
          v58 = type metadata accessor for SearchItem.Generic();
          v57 = a2 + v58[6];
          v56 = a1 + v58[6];
          v10 = sub_214CCD2B4();
          (*(*(v10 - 8) + 32))(v57, v56);
          *(a2 + v58[7]) = *(a1 + v58[7]);
          *(a2 + v58[8]) = *(a1 + v58[8]);
          *(a2 + v58[9]) = *(a1 + v58[9]);
          *(a2 + v58[10]) = *(a1 + v58[10]);
          *(a2 + v58[11]) = *(a1 + v58[11]);
          *(a2 + v58[12]) = *(a1 + v58[12]);
          swift_storeEnumTagMultiPayload();
          break;
        case 7:
          *a2 = *a1;
          *(a2 + 16) = *(a1 + 16);
          v55 = type metadata accessor for SearchItem.Generic();
          v54 = a2 + v55[6];
          v53 = a1 + v55[6];
          v11 = sub_214CCD2B4();
          (*(*(v11 - 8) + 32))(v54, v53);
          *(a2 + v55[7]) = *(a1 + v55[7]);
          *(a2 + v55[8]) = *(a1 + v55[8]);
          *(a2 + v55[9]) = *(a1 + v55[9]);
          *(a2 + v55[10]) = *(a1 + v55[10]);
          *(a2 + v55[11]) = *(a1 + v55[11]);
          *(a2 + v55[12]) = *(a1 + v55[12]);
          swift_storeEnumTagMultiPayload();
          break;
        case 8:
          v12 = sub_214CCD2B4();
          (*(*(v12 - 8) + 32))(a2, a1);
          v13 = type metadata accessor for SearchItem.TopHit();
          *(a2 + *(v13 + 20)) = *(a1 + *(v13 + 20));
          *(a2 + *(v13 + 24)) = *(a1 + *(v13 + 24));
          swift_storeEnumTagMultiPayload();
          break;
        case 9:
          v14 = sub_214CCD2B4();
          (*(*(v14 - 8) + 32))(a2, a1);
          v47 = type metadata accessor for SearchItem.InstantAnswer();
          *(a2 + v47[5]) = *(a1 + v47[5]);
          *(a2 + v47[6]) = *(a1 + v47[6]);
          *(a2 + v47[7]) = *(a1 + v47[7]);
          *(a2 + v47[8]) = *(a1 + v47[8]);
          v43 = a2 + v47[9];
          v42 = a1 + v47[9];
          v45 = sub_214CCCEB4();
          v44 = *(v45 - 8);
          v46 = *(v44 + 32);
          v46(v43, v42);
          (v46)(a2 + v47[10], a1 + v47[10], v45);
          *(a2 + v47[11]) = *(a1 + v47[11]);
          __dst = (a2 + v47[12]);
          __src = (a1 + v47[12]);
          v50 = sub_214CCD154();
          v51 = *(v50 - 8);
          v52 = *(v51 + 48);
          if ((v52)(__src, 1))
          {
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
            memcpy(__dst, __src, *(*(v15 - 8) + 64));
          }

          else
          {
            (*(v51 + 32))(__dst, __src, v50);
            (*(v51 + 56))(__dst, 0, 1, v50);
          }

          v37 = (a2 + v47[13]);
          v38 = (a1 + v47[13]);
          v39 = sub_214CCD2F4();
          v40 = *(v39 - 8);
          v41 = *(v40 + 48);
          if ((v41)(v38, 1))
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
            memcpy(v37, v38, *(*(v16 - 8) + 64));
          }

          else
          {
            (*(v40 + 32))(v37, v38, v39);
            (*(v40 + 56))(v37, 0, 1, v39);
          }

          v35 = (a2 + v47[14]);
          v36 = (a1 + v47[14]);
          if (v41())
          {
            v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
            memcpy(v35, v36, *(*(v17 - 8) + 64));
          }

          else
          {
            (*(v40 + 32))(v35, v36, v39);
            (*(v40 + 56))(v35, 0, 1, v39);
          }

          v33 = (a2 + v47[15]);
          v34 = (a1 + v47[15]);
          if (v52())
          {
            v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
            memcpy(v33, v34, *(*(v18 - 8) + 64));
          }

          else
          {
            (*(v51 + 32))(v33, v34, v50);
            (*(v51 + 56))(v33, 0, 1, v50);
          }

          *(a2 + v47[16]) = *(a1 + v47[16]);
          *(a2 + v47[17]) = *(a1 + v47[17]);
          *(a2 + v47[18]) = *(a1 + v47[18]);
          *(a2 + v47[19]) = *(a1 + v47[19]);
          (v46)(a2 + v47[20], a1 + v47[20], v45);
          v31 = (a2 + v47[21]);
          v32 = (a1 + v47[21]);
          if ((*(v44 + 48))())
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
            memcpy(v31, v32, *(*(v19 - 8) + 64));
          }

          else
          {
            (v46)(v31, v32, v45);
            (*(v44 + 56))(v31, 0, 1, v45);
          }

          v29 = (a2 + v47[22]);
          v30 = (a1 + v47[22]);
          if (v41())
          {
            v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
            memcpy(v29, v30, *(*(v20 - 8) + 64));
          }

          else
          {
            (*(v40 + 32))(v29, v30, v39);
            (*(v40 + 56))(v29, 0, 1, v39);
          }

          *(a2 + v47[23]) = *(a1 + v47[23]);
          *(a2 + v47[24]) = *(a1 + v47[24]);
          *(a2 + v47[25]) = *(a1 + v47[25]);
          *(a2 + v47[26]) = *(a1 + v47[26]);
          swift_storeEnumTagMultiPayload();
          break;
        default:
          *a2 = *a1;
          v28 = type metadata accessor for SearchItem.Link();
          v25 = a2 + v28[5];
          v24 = a1 + v28[5];
          v21 = sub_214CCD2B4();
          (*(*(v21 - 8) + 32))(v25, v24);
          v27 = a2 + v28[6];
          v26 = a1 + v28[6];
          v22 = sub_214CCD154();
          (*(*(v22 - 8) + 32))(v27, v26);
          *(a2 + v28[7]) = *(a1 + v28[7]);
          *(a2 + v28[8]) = *(a1 + v28[8]);
          *(a2 + v28[9]) = *(a1 + v28[9]);
          swift_storeEnumTagMultiPayload();
          break;
      }
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      v69 = type metadata accessor for SearchItem.Generic();
      v68 = a2 + v69[6];
      v67 = a1 + v69[6];
      v2 = sub_214CCD2B4();
      (*(*(v2 - 8) + 32))(v68, v67);
      *(a2 + v69[7]) = *(a1 + v69[7]);
      *(a2 + v69[8]) = *(a1 + v69[8]);
      *(a2 + v69[9]) = *(a1 + v69[9]);
      *(a2 + v69[10]) = *(a1 + v69[10]);
      *(a2 + v69[11]) = *(a1 + v69[11]);
      *(a2 + v69[12]) = *(a1 + v69[12]);
      swift_storeEnumTagMultiPayload();
    }
  }

  return a2;
}

uint64_t sub_214BA2090(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214BA21A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_214BA2394(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214BA24AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_214BA270C()
{
  v3 = sub_214BA0E0C();
  if (v0 <= 0x3F)
  {
    v3 = type metadata accessor for SearchItem();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

unint64_t sub_214BA27EC()
{
  v2 = qword_280C7DED8;
  if (!qword_280C7DED8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DED8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BA2864(uint64_t a1)
{
  v49 = type metadata accessor for SearchItem();
  if (!(*(*(v49 - 8) + 48))(a1, 1))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      switch(EnumCaseMultiPayload)
      {
        case 1:

          v44 = a1 + *(type metadata accessor for SearchItem.Contact() + 24);
          v2 = sub_214CCD2B4();
          (*(*(v2 - 8) + 8))(v44);

          break;
        case 2:
          v3 = sub_214CCD2B4();
          (*(*(v3 - 8) + 8))(a1);
          v43 = type metadata accessor for SearchItem.Photo();

          MEMORY[0x277D82BD8](*(a1 + *(v43 + 28)));

          break;
        case 3:
          v4 = sub_214CCD2B4();
          (*(*(v4 - 8) + 8))(a1);
          type metadata accessor for SearchItem.Location();

          break;
        case 4:
          v5 = sub_214CCD2B4();
          (*(*(v5 - 8) + 8))(a1);
          v42 = type metadata accessor for SearchItem.Document();

          v41 = a1 + *(v42 + 32);
          v6 = sub_214CCD154();
          (*(*(v6 - 8) + 8))(v41);

          break;
        case 5:
          v7 = sub_214CCD2B4();
          (*(*(v7 - 8) + 8))(a1);
          v40 = type metadata accessor for SearchItem.LegacySuggested();
          MEMORY[0x277D82BD8](*(a1 + *(v40 + 20)));

          MEMORY[0x277D82BD8](*(a1 + *(v40 + 32)));
          break;
        case 6:

          v39 = type metadata accessor for SearchItem.Generic();
          v38 = a1 + v39[6];
          v8 = sub_214CCD2B4();
          (*(*(v8 - 8) + 8))(v38);
          MEMORY[0x277D82BD8](*(a1 + v39[7]));
          MEMORY[0x277D82BD8](*(a1 + v39[8]));
          MEMORY[0x277D82BD8](*(a1 + v39[9]));

          break;
        case 7:

          v37 = type metadata accessor for SearchItem.Generic();
          v36 = a1 + v37[6];
          v9 = sub_214CCD2B4();
          (*(*(v9 - 8) + 8))(v36);
          MEMORY[0x277D82BD8](*(a1 + v37[7]));
          MEMORY[0x277D82BD8](*(a1 + v37[8]));
          MEMORY[0x277D82BD8](*(a1 + v37[9]));

          break;
        case 8:
          v10 = sub_214CCD2B4();
          (*(*(v10 - 8) + 8))(a1);
          v35 = type metadata accessor for SearchItem.TopHit();
          MEMORY[0x277D82BD8](*(a1 + *(v35 + 20)));

          break;
        case 9:
          v11 = sub_214CCD2B4();
          (*(*(v11 - 8) + 8))(a1);
          v30 = type metadata accessor for SearchItem.InstantAnswer();

          v26 = a1 + v30[9];
          v28 = sub_214CCCEB4();
          v27 = *(v28 - 8);
          v29 = *(v27 + 8);
          v29(v26);
          (v29)(a1 + v30[10], v28);

          v31 = a1 + v30[12];
          v32 = sub_214CCD154();
          v33 = *(v32 - 8);
          v34 = *(v33 + 48);
          if (!(v34)(v31, 1))
          {
            (*(v33 + 8))(v31, v32);
          }

          v22 = a1 + v30[13];
          v23 = sub_214CCD2F4();
          v24 = *(v23 - 8);
          v25 = *(v24 + 48);
          if (!(v25)(v22, 1))
          {
            (*(v24 + 8))(v22, v23);
          }

          v21 = a1 + v30[14];
          if (!v25())
          {
            (*(v24 + 8))(v21, v23);
          }

          v20 = a1 + v30[15];
          if (!v34())
          {
            (*(v33 + 8))(v20, v32);
          }

          (v29)(a1 + v30[20], v28);
          v19 = a1 + v30[21];
          if (!(*(v27 + 48))())
          {
            (v29)(v19, v28);
          }

          v18 = a1 + v30[22];
          if (!v25())
          {
            (*(v24 + 8))(v18, v23);
          }

          break;
        case 10:

          v17 = type metadata accessor for SearchItem.Link();
          v15 = a1 + *(v17 + 20);
          v12 = sub_214CCD2B4();
          (*(*(v12 - 8) + 8))(v15);
          v16 = a1 + *(v17 + 24);
          v13 = sub_214CCD154();
          (*(*(v13 - 8) + 8))(v16);

          break;
      }
    }

    else
    {

      v46 = type metadata accessor for SearchItem.Generic();
      v45 = a1 + v46[6];
      v1 = sub_214CCD2B4();
      (*(*(v1 - 8) + 8))(v45);
      MEMORY[0x277D82BD8](*(a1 + v46[7]));
      MEMORY[0x277D82BD8](*(a1 + v46[8]));
      MEMORY[0x277D82BD8](*(a1 + v46[9]));
    }
  }

  return a1;
}

uint64_t sub_214BA3648(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchItem();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    switch(EnumCaseMultiPayload)
    {
      case 1:
        *a2 = *a1;
        *(a2 + 16) = *(a1 + 16);
        v66 = type metadata accessor for SearchItem.Contact();
        v65 = a2 + *(v66 + 24);
        v64 = a1 + *(v66 + 24);
        v3 = sub_214CCD2B4();
        (*(*(v3 - 8) + 32))(v65, v64);
        *(a2 + *(v66 + 28)) = *(a1 + *(v66 + 28));
        swift_storeEnumTagMultiPayload();
        break;
      case 2:
        v4 = sub_214CCD2B4();
        (*(*(v4 - 8) + 32))(a2, a1);
        v63 = type metadata accessor for SearchItem.Photo();
        *(a2 + v63[5]) = *(a1 + v63[5]);
        *(a2 + v63[6]) = *(a1 + v63[6]);
        *(a2 + v63[7]) = *(a1 + v63[7]);
        *(a2 + v63[8]) = *(a1 + v63[8]);
        swift_storeEnumTagMultiPayload();
        break;
      case 3:
        v5 = sub_214CCD2B4();
        (*(*(v5 - 8) + 32))(a2, a1);
        v6 = type metadata accessor for SearchItem.Location();
        *(a2 + v6[5]) = *(a1 + v6[5]);
        *(a2 + v6[6]) = *(a1 + v6[6]);
        *(a2 + v6[7]) = *(a1 + v6[7]);
        swift_storeEnumTagMultiPayload();
        break;
      case 4:
        v7 = sub_214CCD2B4();
        (*(*(v7 - 8) + 32))(a2, a1);
        v62 = type metadata accessor for SearchItem.Document();
        *(a2 + v62[5]) = *(a1 + v62[5]);
        *(a2 + v62[6]) = *(a1 + v62[6]);
        *(a2 + v62[7]) = *(a1 + v62[7]);
        v61 = a2 + v62[8];
        v60 = a1 + v62[8];
        v8 = sub_214CCD154();
        (*(*(v8 - 8) + 32))(v61, v60);
        *(a2 + v62[9]) = *(a1 + v62[9]);
        swift_storeEnumTagMultiPayload();
        break;
      case 5:
        v9 = sub_214CCD2B4();
        (*(*(v9 - 8) + 32))(a2, a1);
        v59 = type metadata accessor for SearchItem.LegacySuggested();
        *(a2 + v59[5]) = *(a1 + v59[5]);
        *(a2 + v59[6]) = *(a1 + v59[6]);
        *(a2 + v59[7]) = *(a1 + v59[7]);
        *(a2 + v59[8]) = *(a1 + v59[8]);
        *(a2 + v59[9]) = *(a1 + v59[9]);
        swift_storeEnumTagMultiPayload();
        break;
      case 6:
        *a2 = *a1;
        *(a2 + 16) = *(a1 + 16);
        v58 = type metadata accessor for SearchItem.Generic();
        v57 = a2 + v58[6];
        v56 = a1 + v58[6];
        v10 = sub_214CCD2B4();
        (*(*(v10 - 8) + 32))(v57, v56);
        *(a2 + v58[7]) = *(a1 + v58[7]);
        *(a2 + v58[8]) = *(a1 + v58[8]);
        *(a2 + v58[9]) = *(a1 + v58[9]);
        *(a2 + v58[10]) = *(a1 + v58[10]);
        *(a2 + v58[11]) = *(a1 + v58[11]);
        *(a2 + v58[12]) = *(a1 + v58[12]);
        swift_storeEnumTagMultiPayload();
        break;
      case 7:
        *a2 = *a1;
        *(a2 + 16) = *(a1 + 16);
        v55 = type metadata accessor for SearchItem.Generic();
        v54 = a2 + v55[6];
        v53 = a1 + v55[6];
        v11 = sub_214CCD2B4();
        (*(*(v11 - 8) + 32))(v54, v53);
        *(a2 + v55[7]) = *(a1 + v55[7]);
        *(a2 + v55[8]) = *(a1 + v55[8]);
        *(a2 + v55[9]) = *(a1 + v55[9]);
        *(a2 + v55[10]) = *(a1 + v55[10]);
        *(a2 + v55[11]) = *(a1 + v55[11]);
        *(a2 + v55[12]) = *(a1 + v55[12]);
        swift_storeEnumTagMultiPayload();
        break;
      case 8:
        v12 = sub_214CCD2B4();
        (*(*(v12 - 8) + 32))(a2, a1);
        v13 = type metadata accessor for SearchItem.TopHit();
        *(a2 + *(v13 + 20)) = *(a1 + *(v13 + 20));
        *(a2 + *(v13 + 24)) = *(a1 + *(v13 + 24));
        swift_storeEnumTagMultiPayload();
        break;
      case 9:
        v14 = sub_214CCD2B4();
        (*(*(v14 - 8) + 32))(a2, a1);
        v47 = type metadata accessor for SearchItem.InstantAnswer();
        *(a2 + v47[5]) = *(a1 + v47[5]);
        *(a2 + v47[6]) = *(a1 + v47[6]);
        *(a2 + v47[7]) = *(a1 + v47[7]);
        *(a2 + v47[8]) = *(a1 + v47[8]);
        v43 = a2 + v47[9];
        v42 = a1 + v47[9];
        v45 = sub_214CCCEB4();
        v44 = *(v45 - 8);
        v46 = *(v44 + 32);
        v46(v43, v42);
        (v46)(a2 + v47[10], a1 + v47[10], v45);
        *(a2 + v47[11]) = *(a1 + v47[11]);
        __dst = (a2 + v47[12]);
        __src = (a1 + v47[12]);
        v50 = sub_214CCD154();
        v51 = *(v50 - 8);
        v52 = *(v51 + 48);
        if ((v52)(__src, 1))
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
          memcpy(__dst, __src, *(*(v15 - 8) + 64));
        }

        else
        {
          (*(v51 + 32))(__dst, __src, v50);
          (*(v51 + 56))(__dst, 0, 1, v50);
        }

        v37 = (a2 + v47[13]);
        v38 = (a1 + v47[13]);
        v39 = sub_214CCD2F4();
        v40 = *(v39 - 8);
        v41 = *(v40 + 48);
        if ((v41)(v38, 1))
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
          memcpy(v37, v38, *(*(v16 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v37, v38, v39);
          (*(v40 + 56))(v37, 0, 1, v39);
        }

        v35 = (a2 + v47[14]);
        v36 = (a1 + v47[14]);
        if (v41())
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
          memcpy(v35, v36, *(*(v17 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v35, v36, v39);
          (*(v40 + 56))(v35, 0, 1, v39);
        }

        v33 = (a2 + v47[15]);
        v34 = (a1 + v47[15]);
        if (v52())
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
          memcpy(v33, v34, *(*(v18 - 8) + 64));
        }

        else
        {
          (*(v51 + 32))(v33, v34, v50);
          (*(v51 + 56))(v33, 0, 1, v50);
        }

        *(a2 + v47[16]) = *(a1 + v47[16]);
        *(a2 + v47[17]) = *(a1 + v47[17]);
        *(a2 + v47[18]) = *(a1 + v47[18]);
        *(a2 + v47[19]) = *(a1 + v47[19]);
        (v46)(a2 + v47[20], a1 + v47[20], v45);
        v31 = (a2 + v47[21]);
        v32 = (a1 + v47[21]);
        if ((*(v44 + 48))())
        {
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
          memcpy(v31, v32, *(*(v19 - 8) + 64));
        }

        else
        {
          (v46)(v31, v32, v45);
          (*(v44 + 56))(v31, 0, 1, v45);
        }

        v29 = (a2 + v47[22]);
        v30 = (a1 + v47[22]);
        if (v41())
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
          memcpy(v29, v30, *(*(v20 - 8) + 64));
        }

        else
        {
          (*(v40 + 32))(v29, v30, v39);
          (*(v40 + 56))(v29, 0, 1, v39);
        }

        *(a2 + v47[23]) = *(a1 + v47[23]);
        *(a2 + v47[24]) = *(a1 + v47[24]);
        *(a2 + v47[25]) = *(a1 + v47[25]);
        *(a2 + v47[26]) = *(a1 + v47[26]);
        swift_storeEnumTagMultiPayload();
        break;
      default:
        *a2 = *a1;
        v28 = type metadata accessor for SearchItem.Link();
        v25 = a2 + v28[5];
        v24 = a1 + v28[5];
        v21 = sub_214CCD2B4();
        (*(*(v21 - 8) + 32))(v25, v24);
        v27 = a2 + v28[6];
        v26 = a1 + v28[6];
        v22 = sub_214CCD154();
        (*(*(v22 - 8) + 32))(v27, v26);
        *(a2 + v28[7]) = *(a1 + v28[7]);
        *(a2 + v28[8]) = *(a1 + v28[8]);
        *(a2 + v28[9]) = *(a1 + v28[9]);
        swift_storeEnumTagMultiPayload();
        break;
    }
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    v69 = type metadata accessor for SearchItem.Generic();
    v68 = a2 + v69[6];
    v67 = a1 + v69[6];
    v2 = sub_214CCD2B4();
    (*(*(v2 - 8) + 32))(v68, v67);
    *(a2 + v69[7]) = *(a1 + v69[7]);
    *(a2 + v69[8]) = *(a1 + v69[8]);
    *(a2 + v69[9]) = *(a1 + v69[9]);
    *(a2 + v69[10]) = *(a1 + v69[10]);
    *(a2 + v69[11]) = *(a1 + v69[11]);
    *(a2 + v69[12]) = *(a1 + v69[12]);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_214BA4824()
{
  v2 = qword_280C7DEE0;
  if (!qword_280C7DEE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7DEE0);
    return WitnessTable;
  }

  return v2;
}

double sub_214BA489C()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA36358);
  __swift_project_value_buffer(v1, qword_27CA36358);
  MEMORY[0x277D82BE0](@"com.apple.MailUI");
  sub_214CCF564();
  sub_214CCF614();
  sub_214CCDA64();
  *&result = MEMORY[0x277D82BD8](@"com.apple.MailUI").n128_u64[0];
  return result;
}

uint64_t sub_214BA4954()
{
  if (qword_27CA34018 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA36358);
}

id sub_214BA49C0()
{
  result = [objc_opt_self() mui_MailUIBundle];
  qword_280C7D088 = result;
  return result;
}

uint64_t *sub_214BA49FC()
{
  if (qword_280C7D080 != -1)
  {
    swift_once();
  }

  return &qword_280C7D088;
}

uint64_t GroupedSearchItems.Section.Kind.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    switch(result)
    {
      case 1:
        v2 = 1;
        break;
      case 2:
        v2 = 2;
        break;
      case 3:
        v2 = 3;
        break;
      case 4:
        v2 = 4;
        break;
      case 5:
        v2 = 5;
        break;
      case 6:
        v2 = 6;
        break;
      case 7:
        v2 = 7;
        break;
      case 8:
        v2 = 8;
        break;
      case 9:
        v2 = 9;
        break;
      case 10:
        v2 = 10;
        break;
      case 11:
        v2 = 11;
        break;
      case 12:
        v2 = 12;
        break;
      case 13:
        v2 = 13;
        break;
      default:
        *a2 = 14;
        return result;
    }
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t static GroupedSearchItems.Section.Kind.allCases.getter()
{
  result = sub_214CD03C4();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  v1[4] = 4;
  v1[5] = 5;
  v1[6] = 6;
  v1[7] = 7;
  v1[8] = 8;
  v1[9] = 9;
  v1[10] = 10;
  v1[11] = 11;
  v1[12] = 12;
  v1[13] = 13;
  sub_214A63280();
  return result;
}

uint64_t GroupedSearchItems.Section.Kind.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
      v2 = 1;
      break;
    case 2:
      v2 = 2;
      break;
    case 3:
      v2 = 3;
      break;
    case 4:
      v2 = 4;
      break;
    case 5:
      v2 = 5;
      break;
    case 6:
      v2 = 6;
      break;
    case 7:
      v2 = 7;
      break;
    case 8:
      v2 = 8;
      break;
    case 9:
      v2 = 9;
      break;
    case 0xA:
      v2 = 10;
      break;
    case 0xB:
      v2 = 11;
      break;
    case 0xC:
      v2 = 12;
      break;
    case 0xD:
      v2 = 13;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2;
}

uint64_t sub_214BA4E58@<X0>(uint64_t *a1@<X8>)
{
  result = GroupedSearchItems.Section.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_214BA4F54@<X0>(uint64_t *a1@<X8>)
{
  result = static GroupedSearchItems.Section.Kind.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t GroupedSearchItems.Section.Kind.title.getter()
{
  switch(*v0)
  {
    case 1:
      sub_214CCF614();
      v10 = sub_214BA49FC();
      v15 = *v10;
      MEMORY[0x277D82BE0](*v10);
      sub_214CCF614();
      sub_214B1C228();
      v16 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v15);

      v35 = v16;
      break;
    case 2:
      sub_214CCF614();
      v11 = sub_214BA49FC();
      v13 = *v11;
      MEMORY[0x277D82BE0](*v11);
      sub_214CCF614();
      sub_214B1C228();
      v14 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v13);

      v35 = v14;
      break;
    case 3:
      sub_214CCF614();
      v2 = sub_214BA49FC();
      v31 = *v2;
      MEMORY[0x277D82BE0](*v2);
      sub_214CCF614();
      sub_214B1C228();
      v32 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v31);

      v35 = v32;
      break;
    case 4:
      sub_214CCF614();
      v8 = sub_214BA49FC();
      v19 = *v8;
      MEMORY[0x277D82BE0](*v8);
      sub_214CCF614();
      sub_214B1C228();
      v20 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v19);

      v35 = v20;
      break;
    case 5:
      sub_214CCF614();
      v5 = sub_214BA49FC();
      v25 = *v5;
      MEMORY[0x277D82BE0](*v5);
      sub_214CCF614();
      sub_214B1C228();
      v26 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v25);

      v35 = v26;
      break;
    case 6:
      v35 = 0;
      break;
    case 7:
      sub_214CCF614();
      v9 = sub_214BA49FC();
      v17 = *v9;
      MEMORY[0x277D82BE0](*v9);
      sub_214CCF614();
      sub_214B1C228();
      v18 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v17);

      v35 = v18;
      break;
    case 8:
      sub_214CCF614();
      v3 = sub_214BA49FC();
      v29 = *v3;
      MEMORY[0x277D82BE0](*v3);
      sub_214CCF614();
      sub_214B1C228();
      v30 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v29);

      v35 = v30;
      break;
    case 9:
      sub_214CCF614();
      v4 = sub_214BA49FC();
      v27 = *v4;
      MEMORY[0x277D82BE0](*v4);
      sub_214CCF614();
      sub_214B1C228();
      v28 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v27);

      v35 = v28;
      break;
    case 0xA:
      v35 = 0;
      break;
    case 0xB:
      sub_214CCF614();
      v1 = sub_214BA49FC();
      v33 = *v1;
      MEMORY[0x277D82BE0](*v1);
      sub_214CCF614();
      sub_214B1C228();
      v34 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v33);

      v35 = v34;
      break;
    case 0xC:
      sub_214CCF614();
      v6 = sub_214BA49FC();
      v23 = *v6;
      MEMORY[0x277D82BE0](*v6);
      sub_214CCF614();
      sub_214B1C228();
      v24 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v23);

      v35 = v24;
      break;
    case 0xD:
      sub_214CCF614();
      v7 = sub_214BA49FC();
      v21 = *v7;
      MEMORY[0x277D82BE0](*v7);
      sub_214CCF614();
      sub_214B1C228();
      v22 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v21);

      v35 = v22;
      break;
    default:
      v35 = 0;
      break;
  }

  return v35;
}

unint64_t sub_214BA5A2C()
{
  v2 = qword_27CA36370;
  if (!qword_27CA36370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36378);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36370);
    return WitnessTable;
  }

  return v2;
}

uint64_t _s4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF2)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 13) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 242;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 14;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF2)
  {
    v5 = ((a3 + 13) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF2)
  {
    v4 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

id HelloSwift.init()()
{
  v4 = v0;
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v3, sel_init);
  MEMORY[0x277D82BE0](v2);
  v4 = v2;
  MEMORY[0x277D82BD8](v2);
  return v2;
}

id HelloSwift.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IndexPath.mui_previous.getter()
{
  result = sub_214CCD354();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_214CD0444();
    v2 = sub_214CCD364();
    return MEMORY[0x21605B5F0](v3, v2);
  }

  return result;
}

uint64_t SearchItem.InstantAnswer.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t type metadata accessor for SearchItem.InstantAnswer()
{
  v1 = qword_280C7E7C0;
  if (!qword_280C7E7C0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SearchItem.InstantAnswer.instantAnswerKind.setter(uint64_t a1)
{
  v2 = type metadata accessor for SearchItem.InstantAnswer();
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

uint64_t SearchItem.InstantAnswer.flightCarrierCode.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 24));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightCarrierCode.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.flightArrivalAirportCode.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 28));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightArrivalAirportCode.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.flightDepartureAirportCode.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 32));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightDepartureAirportCode.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 32));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.flightDepartureDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.InstantAnswer() + 36);
  v2 = sub_214CCCEB4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchItem.InstantAnswer.flightDepartureDateComponents.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCCEB4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.InstantAnswer();
  (*(v10 + 40))(v1 + *(v4 + 36), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.InstantAnswer.flightArrivalDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.InstantAnswer() + 40);
  v2 = sub_214CCCEB4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchItem.InstantAnswer.flightArrivalDateComponents.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCCEB4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.InstantAnswer();
  (*(v10 + 40))(v1 + *(v4 + 40), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.InstantAnswer.flightNumber.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 44));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightNumber.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 44));
  *v3 = a1;
  v3[1] = a2;
}

void *sub_214BA6CD4(const void *a1, void *a2)
{
  v6 = sub_214CCD154();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t SearchItem.InstantAnswer.flightCheckInUrl.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA6CD4(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer();
  sub_214BA6EC0(v7, (v1 + *(v3 + 48)));
  return sub_214B6807C(v8);
}

void *sub_214BA6EC0(const void *a1, void *a2)
{
  v7 = sub_214CCD154();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

void *sub_214BA7180(const void *a1, void *a2)
{
  v6 = sub_214CCD2F4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t SearchItem.InstantAnswer.flightDepartureTimeZone.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA7180(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer();
  sub_214BA736C(v7, (v1 + *(v3 + 52)));
  return sub_214BA7594(v8);
}

void *sub_214BA736C(const void *a1, void *a2)
{
  v7 = sub_214CCD2F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214BA7594(uint64_t a1)
{
  v3 = sub_214CCD2F4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t SearchItem.InstantAnswer.flightArrivalTimeZone.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA7180(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer();
  sub_214BA736C(v7, (v1 + *(v3 + 56)));
  return sub_214BA7594(v8);
}

uint64_t SearchItem.InstantAnswer.flightBookingInfoUrl.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA6CD4(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer();
  sub_214BA6EC0(v7, (v1 + *(v3 + 60)));
  return sub_214B6807C(v8);
}

uint64_t SearchItem.InstantAnswer.flightCarrier.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 64));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightCarrier.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 64));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.flightConfirmationNumber.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 68));

  return v2;
}

uint64_t SearchItem.InstantAnswer.flightConfirmationNumber.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 68));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationId.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 72));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationId.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 72));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelUnderName.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 76));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelUnderName.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 76));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelCheckinDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.InstantAnswer() + 80);
  v2 = sub_214CCCEB4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchItem.InstantAnswer.hotelCheckinDateComponents.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCCEB4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.InstantAnswer();
  (*(v10 + 40))(v1 + *(v4 + 80), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

void *sub_214BA8018(const void *a1, void *a2)
{
  v6 = sub_214CCCEB4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t SearchItem.InstantAnswer.hotelCheckoutDateComponents.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA8018(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer();
  sub_214BA8204(v7, (v1 + *(v3 + 84)));
  return sub_214BA842C(v8);
}

void *sub_214BA8204(const void *a1, void *a2)
{
  v7 = sub_214CCCEB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214BA842C(uint64_t a1)
{
  v3 = sub_214CCCEB4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t SearchItem.InstantAnswer.hotelTimeZone.setter(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214BA7180(v2, &v5 - v6);
  v3 = type metadata accessor for SearchItem.InstantAnswer();
  sub_214BA736C(v7, (v1 + *(v3 + 88)));
  return sub_214BA7594(v8);
}

uint64_t SearchItem.InstantAnswer.hotelReservationForName.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 92));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForName.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 92));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForTelephone.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 96));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForTelephone.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 96));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForAddress.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 100));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForAddress.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 100));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForAddressLocality.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.InstantAnswer() + 104));

  return v2;
}

uint64_t SearchItem.InstantAnswer.hotelReservationForAddressLocality.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.InstantAnswer() + 104));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.InstantAnswer.init(id:suggestion:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v229 = a3;
  v267 = a1;
  v277 = a2;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
  v230 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v231 = &v93 - v230;
  v248 = 0;
  v255 = sub_214CCD154();
  v252 = *(v255 - 8);
  v250 = v255 - 8;
  v232 = (*(v252 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v255);
  v233 = &v93 - v232;
  v234 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v248);
  v235 = &v93 - v234;
  v236 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v237 = &v93 - v236;
  v264 = sub_214CCD2F4();
  v253 = *(v264 - 8);
  v254 = v264 - 8;
  v238 = (*(v253 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v264);
  v239 = &v93 - v238;
  v240 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v248);
  v241 = &v93 - v240;
  v242 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v243 = &v93 - v242;
  v244 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v245 = &v93 - v244;
  v260 = sub_214CCCEB4();
  v258 = *(v260 - 8);
  v259 = v260 - 8;
  v246 = (*(v258 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v248);
  v247 = &v93 - v246;
  v271 = sub_214CCD2B4();
  v268 = *(v271 - 8);
  v269 = v271 - 8;
  v249 = (*(v268 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v248);
  v270 = &v93 - v249;
  v273 = type metadata accessor for SearchItem.InstantAnswer();
  v251 = (*(*(v273 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v273);
  v11 = v251;
  v12 = v252;
  v13 = &v93 - v251;
  v274 = &v93 - v251;
  v282 = &v93 - v251;
  v281 = v267;
  v280 = v14;
  v16 = (&v93 + v15[6] - v251);
  *v16 = 0;
  v16[1] = 0;
  v17 = (&v93 + v15[11] - v11);
  *v17 = 0;
  v17[1] = 0;
  v18 = v15[12];
  v257 = *(v12 + 56);
  v256 = v12 + 56;
  v263 = 1;
  v257(&v13[v18], 1, v10);
  v19 = v273[13];
  v266 = *(v253 + 56);
  v265 = v253 + 56;
  v266(v274 + v19, v263, v263, v264);
  v266(v274 + v273[14], v263, v263, v264);
  (v257)(v274 + v273[15], v263, v263, v255);
  v20 = v258;
  v21 = v260;
  v22 = v263;
  v23 = v273;
  v24 = v274;
  v25 = (v274 + v273[16]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v24 + v23[17]);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v24 + v23[18]);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v24 + v23[19]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v23[21];
  v261 = *(v20 + 56);
  v262 = v20 + 56;
  v261(v24 + v29, v22, v22, v21);
  v266(v274 + v273[22], v263, v263, v264);
  v30 = v267;
  v31 = v268;
  v32 = v270;
  v33 = v271;
  v34 = v273;
  v35 = v274;
  v36 = (v274 + v273[24]);
  *v36 = 0;
  v36[1] = 0;
  v37 = (v35 + v34[25]);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v35 + v34[26]);
  *v38 = 0;
  v38[1] = 0;
  (*(v31 + 16))(v32, v30, v33);
  (*(v268 + 32))(v274, v270, v271);
  v276 = 0x1FBE54000uLL;
  v272 = [v277 0x1FBE54536];
  v275 = [v272 instantAnswersKind];
  *&v39 = MEMORY[0x277D82BD8](v272).n128_u64[0];
  v40 = v276;
  v41 = v277;
  *(v274 + v273[5]) = v275;
  v278 = [v41 (v40 + 1334)];
  v279 = [v278 flightCarrierCode];
  if (v279)
  {
    v228 = v279;
    v223 = v279;
    v224 = sub_214CCF564();
    v225 = v42;
    MEMORY[0x277D82BD8](v223);
    v226 = v224;
    v227 = v225;
  }

  else
  {
    v226 = 0;
    v227 = 0;
  }

  v205 = v227;
  v204 = v226;
  MEMORY[0x277D82BD8](v278);
  v43 = v205;
  v44 = (v274 + v273[6]);
  *v44 = v204;
  v44[1] = v43;

  v220 = 0x1FBE54000uLL;
  v206 = [v277 0x1FBE54536];
  v209 = [v206 flightArrivalAirportCode];
  v207 = sub_214CCF564();
  v208 = v45;
  MEMORY[0x277D82BD8](v206);
  v46 = v208;
  v47 = v209;
  v48 = (v274 + v273[7]);
  *v48 = v207;
  v48[1] = v46;
  *&v49 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  v210 = [v277 (v220 + 1334)];
  v213 = [v210 flightDepartureAirportCode];
  v211 = sub_214CCF564();
  v212 = v50;
  MEMORY[0x277D82BD8](v210);
  v51 = v212;
  v52 = v213;
  v53 = (v274 + v273[8]);
  *v53 = v211;
  v53[1] = v51;
  *&v54 = MEMORY[0x277D82BD8](v52).n128_u64[0];
  v214 = [v277 (v220 + 1334)];
  v215 = [v214 flightDepartureDateComponents];
  sub_214CCCEA4();
  v55 = MEMORY[0x277D82BD8](v214);
  v56 = v274 + v273[9];
  v218 = *(v258 + 32);
  v217 = v258 + 32;
  v218(v56, v247, v260, v55);
  *&v57 = MEMORY[0x277D82BD8](v215).n128_u64[0];
  v216 = [v277 (v220 + 1334)];
  v219 = [v216 flightArrivalDateComponents];
  sub_214CCCEA4();
  v58 = MEMORY[0x277D82BD8](v216);
  v218(v274 + v273[10], v247, v260, v58);
  *&v59 = MEMORY[0x277D82BD8](v219).n128_u64[0];
  v221 = [v277 (v220 + 1334)];
  v222 = [v221 flightDepartureTimeZone];
  if (v222)
  {
    v203 = v222;
    v202 = v222;
    sub_214CCD2E4();
    (*(v253 + 32))(v245, v239, v264);
    v266(v245, 0, 1, v264);
    MEMORY[0x277D82BD8](v202);
  }

  else
  {
    v266(v245, 1, 1, v264);
  }

  MEMORY[0x277D82BD8](v221);
  sub_214BA736C(v245, (v274 + v273[13]));
  v200 = [v277 instantAnswer];
  v201 = [v200 flightArrivalTimeZone];
  if (v201)
  {
    v199 = v201;
    v198 = v201;
    sub_214CCD2E4();
    (*(v253 + 32))(v243, v239, v264);
    v266(v243, 0, 1, v264);
    MEMORY[0x277D82BD8](v198);
  }

  else
  {
    v266(v243, 1, 1, v264);
  }

  MEMORY[0x277D82BD8](v200);
  sub_214BA736C(v243, (v274 + v273[14]));
  v196 = [v277 instantAnswer];
  v197 = [v196 flightCheckInUrl];
  if (v197)
  {
    v195 = v197;
    v194 = v197;
    sub_214CCD124();
    (*(v252 + 32))(v237, v233, v255);
    (v257)(v237, 0, 1, v255);
    MEMORY[0x277D82BD8](v194);
  }

  else
  {
    (v257)(v237, 1, 1, v255);
  }

  MEMORY[0x277D82BD8](v196);
  sub_214BA6EC0(v237, (v274 + v273[12]));
  v192 = [v277 instantAnswer];
  v193 = [v192 flightNumber];
  if (v193)
  {
    v191 = v193;
    v186 = v193;
    v187 = sub_214CCF564();
    v188 = v60;
    MEMORY[0x277D82BD8](v186);
    v189 = v187;
    v190 = v188;
  }

  else
  {
    v189 = 0;
    v190 = 0;
  }

  v183 = v190;
  v182 = v189;
  MEMORY[0x277D82BD8](v192);
  v61 = v183;
  v62 = (v274 + v273[11]);
  *v62 = v182;
  v62[1] = v61;

  v184 = [v277 instantAnswer];
  v185 = [v184 flightBookingInfoUrl];
  if (v185)
  {
    v181 = v185;
    v180 = v185;
    sub_214CCD124();
    (*(v252 + 32))(v235, v233, v255);
    (v257)(v235, 0, 1, v255);
    MEMORY[0x277D82BD8](v180);
  }

  else
  {
    (v257)(v235, 1, 1, v255);
  }

  MEMORY[0x277D82BD8](v184);
  sub_214BA6EC0(v235, (v274 + v273[15]));
  v178 = [v277 instantAnswer];
  v179 = [v178 flightCarrier];
  if (v179)
  {
    v177 = v179;
    v172 = v179;
    v173 = sub_214CCF564();
    v174 = v63;
    MEMORY[0x277D82BD8](v172);
    v175 = v173;
    v176 = v174;
  }

  else
  {
    v175 = 0;
    v176 = 0;
  }

  v169 = v176;
  v168 = v175;
  MEMORY[0x277D82BD8](v178);
  v64 = v169;
  v65 = (v274 + v273[16]);
  *v65 = v168;
  v65[1] = v64;

  v170 = [v277 instantAnswer];
  v171 = [v170 flightConfirmationNumber];
  if (v171)
  {
    v167 = v171;
    v162 = v171;
    v163 = sub_214CCF564();
    v164 = v66;
    MEMORY[0x277D82BD8](v162);
    v165 = v163;
    v166 = v164;
  }

  else
  {
    v165 = 0;
    v166 = 0;
  }

  v159 = v166;
  v158 = v165;
  MEMORY[0x277D82BD8](v170);
  v67 = v159;
  v68 = (v274 + v273[17]);
  *v68 = v158;
  v68[1] = v67;

  v160 = [v277 instantAnswer];
  v161 = [v160 hotelReservationId];
  if (v161)
  {
    v157 = v161;
    v152 = v161;
    v153 = sub_214CCF564();
    v154 = v69;
    MEMORY[0x277D82BD8](v152);
    v155 = v153;
    v156 = v154;
  }

  else
  {
    v155 = 0;
    v156 = 0;
  }

  v149 = v156;
  v148 = v155;
  MEMORY[0x277D82BD8](v160);
  v70 = v149;
  v71 = (v274 + v273[18]);
  *v71 = v148;
  v71[1] = v70;

  v150 = [v277 instantAnswer];
  v151 = [v150 hotelUnderName];
  if (v151)
  {
    v147 = v151;
    v142 = v151;
    v143 = sub_214CCF564();
    v144 = v72;
    MEMORY[0x277D82BD8](v142);
    v145 = v143;
    v146 = v144;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  v136 = v146;
  v135 = v145;
  MEMORY[0x277D82BD8](v150);
  v73 = v136;
  v74 = (v274 + v273[19]);
  *v74 = v135;
  v74[1] = v73;

  v139 = 0x1FBE54000uLL;
  v137 = [v277 0x1FBE54536];
  v138 = [v137 hotelCheckinDateComponents];
  sub_214CCCEA4();
  v75 = MEMORY[0x277D82BD8](v137);
  v218(v274 + v273[20], v247, v260, v75);
  *&v76 = MEMORY[0x277D82BD8](v138).n128_u64[0];
  v140 = [v277 (v139 + 1334)];
  v141 = [v140 hotelCheckoutDateComponents];
  if (v141)
  {
    v134 = v141;
    v133 = v141;
    sub_214CCCEA4();
    (v218)(v231, v247, v260);
    v261(v231, 0, 1, v260);
    MEMORY[0x277D82BD8](v133);
  }

  else
  {
    v261(v231, 1, 1, v260);
  }

  MEMORY[0x277D82BD8](v140);
  sub_214BA8204(v231, (v274 + v273[21]));
  v131 = [v277 instantAnswer];
  v132 = [v131 hotelTimeZone];
  if (v132)
  {
    v130 = v132;
    v129 = v132;
    sub_214CCD2E4();
    (*(v253 + 32))(v241, v239, v264);
    v266(v241, 0, 1, v264);
    MEMORY[0x277D82BD8](v129);
  }

  else
  {
    v266(v241, 1, 1, v264);
  }

  MEMORY[0x277D82BD8](v131);
  sub_214BA736C(v241, (v274 + v273[22]));
  v126 = 0x1FBE54000uLL;
  v122 = [v277 0x1FBE54536];
  v125 = [v122 hotelReservationForName];
  v123 = sub_214CCF564();
  v124 = v77;
  MEMORY[0x277D82BD8](v122);
  v78 = v124;
  v79 = v125;
  v80 = (v274 + v273[23]);
  *v80 = v123;
  v80[1] = v78;
  *&v81 = MEMORY[0x277D82BD8](v79).n128_u64[0];
  v127 = [v277 (v126 + 1334)];
  v128 = [v127 hotelReservationForTelephone];
  if (v128)
  {
    v121 = v128;
    v116 = v128;
    v117 = sub_214CCF564();
    v118 = v82;
    MEMORY[0x277D82BD8](v116);
    v119 = v117;
    v120 = v118;
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v113 = v120;
  v112 = v119;
  MEMORY[0x277D82BD8](v127);
  v83 = v113;
  v84 = (v274 + v273[24]);
  *v84 = v112;
  v84[1] = v83;

  v114 = [v277 instantAnswer];
  v115 = [v114 hotelReservationForAddress];
  if (v115)
  {
    v111 = v115;
    v106 = v115;
    v107 = sub_214CCF564();
    v108 = v85;
    MEMORY[0x277D82BD8](v106);
    v109 = v107;
    v110 = v108;
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v103 = v110;
  v102 = v109;
  MEMORY[0x277D82BD8](v114);
  v86 = v103;
  v87 = (v274 + v273[25]);
  *v87 = v102;
  v87[1] = v86;

  v104 = [v277 instantAnswer];
  v105 = [v104 hotelReservationForAddressLocality];
  if (v105)
  {
    v101 = v105;
    v96 = v105;
    v97 = sub_214CCF564();
    v98 = v88;
    MEMORY[0x277D82BD8](v96);
    v99 = v97;
    v100 = v98;
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  v95 = v100;
  v94 = v99;
  MEMORY[0x277D82BD8](v104);
  v89 = v95;
  v90 = (v274 + v273[26]);
  *v90 = v94;
  v90[1] = v89;

  sub_214BAA9D0(v274, v229);
  v91 = MEMORY[0x277D82BD8](v277);
  (*(v268 + 8))(v267, v271, v91);
  return sub_214BAB488(v274);
}

uint64_t sub_214BAA9D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v64 = type metadata accessor for SearchItem.InstantAnswer();
  *(a2 + v64[5]) = *(a1 + v64[5]);
  v3 = (a1 + v64[6]);
  v51 = (a2 + v64[6]);
  *v51 = *v3;
  v52 = v3[1];

  v51[1] = v52;
  v4 = v64[7];
  v53 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v54 = *(a1 + v4 + 8);

  *(v53 + 8) = v54;
  v5 = v64[8];
  v55 = a2 + v5;
  *(a2 + v5) = *(a1 + v5);
  v56 = *(a1 + v5 + 8);

  *(v55 + 8) = v56;
  v57 = v64[9];
  v59 = sub_214CCCEB4();
  v58 = *(v59 - 8);
  v60 = *(v58 + 16);
  v60(a2 + v57, a1 + v57);
  (v60)(a2 + v64[10], a1 + v64[10], v59);
  v6 = v64[11];
  v62 = a2 + v6;
  *(a2 + v6) = *(a1 + v6);
  v63 = *(a1 + v6 + 8);

  *(v62 + 8) = v63;
  v65 = v64[12];
  v67 = sub_214CCD154();
  v68 = *(v67 - 8);
  v69 = *(v68 + 48);
  if ((v69)(a1 + v65, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
    memcpy((a2 + v65), (a1 + v65), *(*(v7 - 8) + 64));
  }

  else
  {
    (*(v68 + 16))();
    (*(v68 + 56))(a2 + v65, 0, 1, v67);
  }

  __dst = (a2 + v64[13]);
  __src = (a1 + v64[13]);
  v48 = sub_214CCD2F4();
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if ((v50)(__src, 1))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
    memcpy(__dst, __src, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v49 + 16))(__dst, __src, v48);
    (*(v49 + 56))(__dst, 0, 1, v48);
  }

  v44 = (a2 + v64[14]);
  v45 = (a1 + v64[14]);
  if (v50())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
    memcpy(v44, v45, *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v49 + 16))(v44, v45, v48);
    (*(v49 + 56))(v44, 0, 1, v48);
  }

  v42 = (a2 + v64[15]);
  v43 = (a1 + v64[15]);
  if (v69())
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
    memcpy(v42, v43, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v68 + 16))(v42, v43, v67);
    (*(v68 + 56))(v42, 0, 1, v67);
  }

  v11 = v64[16];
  v32 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v33 = *(a1 + v11 + 8);

  *(v32 + 8) = v33;
  v12 = v64[17];
  v34 = a2 + v12;
  *(a2 + v12) = *(a1 + v12);
  v35 = *(a1 + v12 + 8);

  *(v34 + 8) = v35;
  v13 = v64[18];
  v36 = a2 + v13;
  *(a2 + v13) = *(a1 + v13);
  v37 = *(a1 + v13 + 8);

  *(v36 + 8) = v37;
  v14 = v64[19];
  v38 = a2 + v14;
  *(a2 + v14) = *(a1 + v14);
  v39 = *(a1 + v14 + 8);

  *(v38 + 8) = v39;
  (v60)(a2 + v64[20], a1 + v64[20], v59);
  v40 = (a2 + v64[21]);
  v41 = (a1 + v64[21]);
  if ((*(v58 + 48))())
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
    memcpy(v40, v41, *(*(v15 - 8) + 64));
  }

  else
  {
    (v60)(v40, v41, v59);
    (*(v58 + 56))(v40, 0, 1, v59);
  }

  v30 = (a2 + v64[22]);
  v31 = (a1 + v64[22]);
  if (v50())
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
    memcpy(v30, v31, *(*(v16 - 8) + 64));
  }

  else
  {
    (*(v49 + 16))(v30, v31, v48);
    (*(v49 + 56))(v30, 0, 1, v48);
  }

  v17 = v64[23];
  v22 = a2 + v17;
  *(a2 + v17) = *(a1 + v17);
  v23 = *(a1 + v17 + 8);

  *(v22 + 8) = v23;
  v18 = v64[24];
  v24 = a2 + v18;
  *(a2 + v18) = *(a1 + v18);
  v25 = *(a1 + v18 + 8);

  *(v24 + 8) = v25;
  v19 = v64[25];
  v26 = a2 + v19;
  *(a2 + v19) = *(a1 + v19);
  v27 = *(a1 + v19 + 8);

  *(v26 + 8) = v27;
  v20 = v64[26];
  v28 = a2 + v20;
  *(a2 + v20) = *(a1 + v20);
  v29 = *(a1 + v20 + 8);

  result = a2;
  *(v28 + 8) = v29;
  return result;
}

uint64_t sub_214BAB488(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  v15 = type metadata accessor for SearchItem.InstantAnswer();

  v11 = v15[9];
  v13 = sub_214CCCEB4();
  v12 = *(v13 - 8);
  v14 = *(v12 + 8);
  v14(a1 + v11);
  (v14)(a1 + v15[10], v13);

  v16 = v15[12];
  v18 = sub_214CCD154();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!(v20)(a1 + v16, 1))
  {
    (*(v19 + 8))(a1 + v16, v18);
  }

  v7 = a1 + v15[13];
  v8 = sub_214CCD2F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!(v10)(v7, 1))
  {
    (*(v9 + 8))(v7, v8);
  }

  v6 = a1 + v15[14];
  if (!v10())
  {
    (*(v9 + 8))(v6, v8);
  }

  v5 = a1 + v15[15];
  if (!v20())
  {
    (*(v19 + 8))(v5, v18);
  }

  (v14)(a1 + v15[20], v13);
  v4 = a1 + v15[21];
  if (!(*(v12 + 48))())
  {
    (v14)(v4, v13);
  }

  v3 = a1 + v15[22];
  if (!v10())
  {
    (*(v9 + 8))(v3, v8);
  }

  return a1;
}

uint64_t SearchItem.InstantAnswer.init(id:instantAnswerKind:flightCarrierCode:flightArrivalAirportCode:flightDepartureAirportCode:flightDepartureDateComponents:flightArrivalDateComponents:flightNumber:flightCheckInUrl:flightDepartureTimeZone:flightArrivalTimeZone:flightBookingInfoUrl:flightCarrier:flightConfirmationNumber:hotelReservationId:hotelUnderName:hotelCheckinDateComponents:hotelCheckoutDateComponents:hotelTimeZone:hotelReservationForName:hotelReservationForTelephone:hotelReservationForAddress:hotelReservationForAddressLocality:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15, const void *a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, const void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v144 = a9;
  v173 = a1;
  v122 = a2;
  v123 = a3;
  v170 = a4;
  v124 = a5;
  v169 = a6;
  v125 = a7;
  v168 = a8;
  v164 = a10;
  v163 = a11;
  v126 = a12;
  v162 = a13;
  v161 = a14;
  v160 = a15;
  v159 = a16;
  v158 = a17;
  v128 = a18;
  v157 = a19;
  v129 = a20;
  v156 = a21;
  v130 = a22;
  v155 = a23;
  v131 = a24;
  v154 = a25;
  v153 = a26;
  v150 = a27;
  v149 = a28;
  v139 = a29;
  v148 = a30;
  v140 = a31;
  v147 = a32;
  v141 = a33;
  v146 = a34;
  v143 = a35;
  v145 = a36;
  v211 = 0;
  v210 = 0;
  v209 = 0;
  v207 = 0;
  v208 = 0;
  v205 = 0;
  v206 = 0;
  v203 = 0;
  v204 = 0;
  v202 = 0;
  v201 = 0;
  v199 = 0;
  v200 = 0;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v195 = 0;
  v193 = 0;
  v194 = 0;
  v191 = 0;
  v192 = 0;
  v189 = 0;
  v190 = 0;
  v187 = 0;
  v188 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v182 = 0;
  v183 = 0;
  v180 = 0;
  v181 = 0;
  v178 = 0;
  v179 = 0;
  v176 = 0;
  v177 = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36308);
  v105 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v137 = &v105 - v105;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36300);
  v106 = (*(*(v37 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v138 = &v105 - v106;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
  v107 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v127 = &v105 - v107;
  v112 = 0;
  v165 = sub_214CCCEB4();
  v151 = *(v165 - 8);
  v152 = v165 - 8;
  v108 = (v151[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112);
  v134 = &v105 - v108;
  v174 = sub_214CCD2B4();
  v171 = *(v174 - 8);
  v172 = v174 - 8;
  v109 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112);
  v121 = &v105 - v109;
  v142 = type metadata accessor for SearchItem.InstantAnswer();
  v110 = (*(*(v142 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v173);
  v39 = &v105 - v110;
  v175 = &v105 - v110;
  v211 = &v105 - v110;
  v210 = v40;
  v209 = v41;
  v207 = v42;
  v208 = v43;
  v205 = v44;
  v206 = v45;
  v203 = v46;
  v204 = v47;
  v202 = v164;
  v201 = v163;
  v48 = v142;
  v199 = v126;
  v200 = a13;
  v198 = a14;
  v197 = a15;
  v196 = a16;
  v195 = a17;
  v193 = a18;
  v194 = a19;
  v191 = a20;
  v192 = a21;
  v189 = v130;
  v190 = v155;
  v187 = v131;
  v188 = v154;
  v186 = v153;
  v185 = v150;
  v184 = v149;
  v182 = v139;
  v183 = v148;
  v180 = v49;
  v181 = v50;
  v178 = v51;
  v179 = v52;
  v176 = v143;
  v177 = v145;
  v53 = (&v105 + v142[6] - v110);
  *v53 = 0;
  v53[1] = 0;
  v54 = &v39[v48[11]];
  *v54 = 0;
  *(v54 + 1) = 0;
  v111 = v48[12];
  v114 = sub_214CCD154();
  v55 = *(v114 - 8);
  v116 = *(v55 + 56);
  v115 = v55 + 56;
  v117 = 1;
  v116(v175 + v111, 1);
  v113 = v142[13];
  v118 = sub_214CCD2F4();
  v56 = *(v118 - 8);
  v120 = *(v56 + 56);
  v119 = v56 + 56;
  v120(v175 + v113, v117);
  (v120)(v175 + v142[14], v117, v117, v118);
  (v116)(v175 + v142[15], v117, v117, v114);
  v57 = v117;
  v58 = v142;
  v59 = v151;
  v60 = v165;
  v61 = v175;
  v62 = (v175 + v142[16]);
  *v62 = 0;
  v62[1] = 0;
  v63 = (v61 + v58[17]);
  *v63 = 0;
  v63[1] = 0;
  v64 = (v61 + v58[18]);
  *v64 = 0;
  v64[1] = 0;
  v65 = (v61 + v58[19]);
  *v65 = 0;
  v65[1] = 0;
  (v59[7])(v61 + v58[21], v57, v57, v60);
  (v120)(v175 + v142[22], v117, v117, v118);
  v66 = v121;
  v67 = v142;
  v68 = v171;
  v69 = v173;
  v70 = v174;
  v71 = v175;
  v72 = (v175 + v142[24]);
  *v72 = 0;
  v72[1] = 0;
  v73 = (v71 + v67[25]);
  *v73 = 0;
  v73[1] = 0;
  v74 = (v71 + v67[26]);
  *v74 = 0;
  v74[1] = 0;
  (*(v68 + 16))(v66, v69, v70);
  (*(v171 + 32))(v175, v121, v174);
  *(v175 + v142[5]) = v122;

  v75 = v170;
  v76 = (v175 + v142[6]);
  *v76 = v123;
  v76[1] = v75;

  v77 = v169;
  v78 = (v175 + v142[7]);
  *v78 = v124;
  v78[1] = v77;

  v79 = v134;
  v80 = v151;
  v81 = v164;
  v82 = v165;
  v83 = v168;
  v84 = (v175 + v142[8]);
  *v84 = v125;
  v84[1] = v83;
  v133 = v80[2];
  v132 = v80 + 2;
  v133(v79, v81, v82);
  v85 = v142[9];
  v136 = v151[4];
  v135 = v151 + 4;
  v136(v175 + v85, v134, v165);
  v133(v134, v163, v165);
  v136(v175 + v142[10], v134, v165);

  v86 = v162;
  v87 = (v175 + v142[11]);
  *v87 = v126;
  v87[1] = v86;

  sub_214BA6CD4(v161, v127);
  sub_214BA6EC0(v127, (v175 + v142[12]));
  sub_214BA7180(v160, v138);
  sub_214BA736C(v138, (v175 + v142[13]));
  sub_214BA7180(v159, v138);
  sub_214BA736C(v138, (v175 + v142[14]));
  sub_214BA6CD4(v158, v127);
  sub_214BA6EC0(v127, (v175 + v142[15]));

  v88 = v157;
  v89 = (v175 + v142[16]);
  *v89 = v128;
  v89[1] = v88;

  v90 = v156;
  v91 = (v175 + v142[17]);
  *v91 = v129;
  v91[1] = v90;

  v92 = v155;
  v93 = (v175 + v142[18]);
  *v93 = v130;
  v93[1] = v92;

  v94 = v154;
  v95 = (v175 + v142[19]);
  *v95 = v131;
  v95[1] = v94;

  v133(v134, v153, v165);
  v136(v175 + v142[20], v134, v165);
  sub_214BA8018(v150, v137);
  sub_214BA8204(v137, (v175 + v142[21]));
  sub_214BA7180(v149, v138);
  sub_214BA736C(v138, (v175 + v142[22]));

  v96 = v148;
  v97 = (v175 + v142[23]);
  *v97 = v139;
  v97[1] = v96;

  v98 = v147;
  v99 = (v175 + v142[24]);
  *v99 = v140;
  v99[1] = v98;

  v100 = v146;
  v101 = (v175 + v142[25]);
  *v101 = v141;
  v101[1] = v100;

  v102 = v145;
  v103 = (v175 + v142[26]);
  *v103 = v143;
  v103[1] = v102;

  sub_214BAA9D0(v175, v144);

  sub_214BA7594(v149);
  sub_214BA842C(v150);
  v167 = v151[1];
  v166 = v151 + 1;
  v167(v153, v165);

  sub_214B6807C(v158);
  sub_214BA7594(v159);
  sub_214BA7594(v160);
  sub_214B6807C(v161);

  v167(v163, v165);
  v167(v164, v165);

  (*(v171 + 8))(v173, v174);
  return sub_214BAB488(v175);
}

uint64_t static SearchItem.InstantAnswer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5[1] = a1;
  v9 = a2;
  v21 = 0;
  v20 = 0;
  v16 = sub_214CCD2B4();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v7 = v12[8];
  v6 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v14 = v5 - v6;
  v8 = v6;
  v2 = MEMORY[0x28223BE20](v5 - v6);
  v15 = v5 - v8;
  v21 = v3;
  v20 = v9;
  v11 = v12[2];
  v10 = v12 + 2;
  v11(v2);
  (v11)(v14, v9, v16);
  v19 = sub_214CCD284();
  v18 = v12[1];
  v17 = v12 + 1;
  v18(v14, v16);
  v18(v15, v16);
  return v19 & 1;
}

uint64_t SearchItem.InstantAnswer.hash(into:)(uint64_t a1)
{
  v6 = a1;
  v7 = v1;
  v14 = 0;
  v13 = 0;
  v12 = sub_214CCD2B4();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v11 = &v5 - v8;
  v14 = v6;
  v13 = v3;
  (*(v9 + 16))(v2);
  sub_214B5C87C();
  sub_214CD0554();
  return (*(v9 + 8))(v11, v12);
}

uint64_t SearchItem.InstantAnswer.hashValue.getter()
{
  type metadata accessor for SearchItem.InstantAnswer();
  sub_214BACA14();
  return sub_214CD0114();
}

unint64_t sub_214BACA14()
{
  v2 = qword_27CA36380;
  if (!qword_27CA36380)
  {
    type metadata accessor for SearchItem.InstantAnswer();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BACAF8()
{
  v2 = qword_27CA36388;
  if (!qword_27CA36388)
  {
    type metadata accessor for SearchItem.InstantAnswer();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36388);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BACBC8()
{
  v8 = sub_214CCD2B4();
  if (v0 <= 0x3F)
  {
    v8 = type metadata accessor for CSInstantAnswersKind();
    if (v1 <= 0x3F)
    {
      v8 = sub_214B5CC3C();
      if (v2 <= 0x3F)
      {
        v8 = sub_214CCCEB4();
        if (v3 <= 0x3F)
        {
          v8 = sub_214BACE7C();
          if (v4 <= 0x3F)
          {
            v8 = sub_214BACF18();
            if (v5 <= 0x3F)
            {
              v8 = sub_214BACFB4();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v8;
}

uint64_t sub_214BACE7C()
{
  v4 = qword_280C7EB00;
  if (!qword_280C7EB00)
  {
    sub_214CCD154();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7EB00);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214BACF18()
{
  v4 = qword_280C7EAC8;
  if (!qword_280C7EAC8)
  {
    sub_214CCD2F4();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7EAC8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214BACFB4()
{
  v4 = qword_280C7EB20;
  if (!qword_280C7EB20)
  {
    sub_214CCCEB4();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7EB20);
      return v1;
    }
  }

  return v4;
}

uint64_t ECEmailAddressConvertible.intentPerson.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v36 = 0;
  v37 = a1;
  v22 = 0;
  v20 = (*(*(sub_214CCCC64() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v21 = &v10 - v20;
  v23 = sub_214CCCC74();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v27 = (&v10 - v26);
  v29 = (*(*(sub_214CCCC94() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v28);
  v30 = &v10 - v29;
  v36 = v3;
  v31 = [v3 emailAddressValue];
  if (v31)
  {
    v18 = v31;
    v12 = v31;
    v13 = [v31 stringValue];
    v14 = sub_214CCF564();
    v15 = v4;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v32 = v16;
  v33 = v17;
  swift_unknownObjectRetain();
  if (v33)
  {
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v11 = [v28 stringValue];
    v34 = sub_214CCF564();
    v35 = v5;
    MEMORY[0x277D82BD8](v11);
    if (v33)
    {
      sub_214A61B48();
    }
  }

  swift_unknownObjectRelease();
  v6 = v24;
  v7 = v27;
  v8 = v35;
  *v27 = v34;
  v7[1] = v8;
  (*(v6 + 104))();
  sub_214BAD354(v21);
  sub_214CCCCA4();
  return sub_214CCCCB4();
}

uint64_t sub_214BAD354@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CB9D48];
  v1 = sub_214CCCC64();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t String.intentPerson.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v14 = a1;
  v15 = a2;
  v23 = 0;
  v24 = 0;
  v11 = 0;
  v10 = (*(*(sub_214CCCC64() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v20 = &v9 - v10;
  v18 = sub_214CCCC74();
  v16 = *(v18 - 8);
  v17 = v18 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v19 = (&v9 - v12);
  v13 = (*(*(sub_214CCCC94() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v22 = &v9 - v13;
  v23 = v3;
  v24 = v4;

  v5 = v19;
  v6 = v15;
  v7 = v16;
  *v19 = v14;
  v5[1] = v6;
  (*(v7 + 104))();
  sub_214BAD354(v20);
  sub_214CCCCA4();
  return sub_214CCCCB4();
}

uint64_t CSPerson.intentPerson.getter@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v17 = 0;
  v15 = (*(*(sub_214CCCC64() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v9 - v15;
  v18 = sub_214CCCC74();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v22 = (&v9 - v21);
  v24 = (*(*(sub_214CCCC94() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v23);
  v25 = &v9 - v24;
  v36 = v2;
  v26 = [v2 handles];
  v27 = sub_214CCF7E4();
  v35 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B50C54();
  sub_214CCFA74();
  v29 = v33;
  v30 = v34;
  if (v34)
  {
    v12 = v29;
    v13 = v30;
    v11 = v30;
    v10 = v29;
    v31 = v29;
    v32 = v30;

    MEMORY[0x277D82BD8](v26);

    v3 = v22;
    v4 = v19;
    v5 = v11;
    *v22 = v10;
    v3[1] = v5;
    (*(v4 + 104))();
    sub_214BAD354(v16);
    sub_214CCCCA4();
    sub_214CCCCB4();
    v6 = sub_214CCCCE4();
    (*(*(v6 - 8) + 56))(v14, 0, 1);
  }

  else
  {

    MEMORY[0x277D82BD8](v26);
    v8 = sub_214CCCCE4();
    return (*(*(v8 - 8) + 56))(v14, 1);
  }
}

uint64_t CSSearchableItem.toIntentPersons.getter()
{
  v23 = 0;
  v30 = v0;
  v24 = [v0 attributeSet];
  v25 = [v24 recipientEmailAddresses];
  if (v25)
  {
    v22 = v25;
    v19 = v25;
    v20 = sub_214CCF7E4();

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v28 = v21;
  if (v21)
  {
    v1 = v23;
    v10 = v28;

    sub_214A62278();

    v26 = v28;
    KeyPath = swift_getKeyPath();
    v11 = KeyPath;

    v13 = v6;
    MEMORY[0x28223BE20](KeyPath);
    v14 = v5;
    v5[2] = sub_214BADCC4;
    v5[3] = v2;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
    v16 = sub_214CCCCE4();
    sub_214B22E9C();
    v3 = sub_214CCF6F4();
    v17 = v1;
    v18 = v3;
    v7 = v3;

    sub_214A62278();
    v8 = v7;
    v9 = v17;
  }

  else
  {
    sub_214A62278();

    v8 = 0;
    v9 = v23;
  }

  v27 = v8;
  if (v8)
  {
    return v27;
  }

  v6[1] = 0;
  v6[2] = sub_214CCCCE4();
  v29 = sub_214CD03C4();
  if (v27)
  {
    sub_214A62278();
  }

  return v29;
}

uint64_t sub_214BADB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v4 = a1;
  v10 = sub_214CCCCE4();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v9 = &v4 - v5;
  sub_214A61AD0(v2, &v12);
  v11 = v13;
  String.intentPerson.getter(v12, v13, v9);
  (*(v6 + 32))(v8, v9, v10);
}

uint64_t sub_214BADC54()
{

  swift_getAtKeyPath();
  sub_214A61B48();
}

uint64_t sub_214BADCCC@<X0>(void *a1@<X0>, void (*a2)(void, void, double)@<X1>, uint64_t a3@<X8>)
{
  v13 = a3;
  v7 = a1;
  v8 = a2;
  v12 = sub_214CCCCE4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v12);
  v9 = &v5 - v6;
  v8(*v7, v7[1], v3);
  (*(v10 + 32))(v13, v9, v12);
  return (*(v10 + 56))(v13, 0, 1, v12);
}

uint64_t CSSearchableItem.ccIntentPersons.getter()
{
  v19 = 0;
  v26 = v0;
  v20 = [v0 attributeSet];
  v22 = CSSearchableItemAttributeSet.additionalRecipientEmailAddresses.getter();
  v21 = v22;

  if (v22)
  {
    v18 = v21;
    v1 = v19;
    v23 = v21;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = v6;
    MEMORY[0x28223BE20](KeyPath);
    v13 = v5;
    v5[2] = sub_214BADCC4;
    v5[3] = v2;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
    v15 = sub_214CCCCE4();
    sub_214B22E9C();
    v3 = sub_214CCF6F4();
    v16 = v1;
    v17 = v3;
    v7 = v3;

    sub_214A62278();
    v8 = v7;
    v9 = v16;
  }

  else
  {
    v8 = 0;
    v9 = v19;
  }

  v24 = v8;
  if (v8)
  {
    return v24;
  }

  v6[1] = 0;
  v6[2] = sub_214CCCCE4();
  v25 = sub_214CD03C4();
  if (v24)
  {
    sub_214A62278();
  }

  return v25;
}

uint64_t CSSearchableItem.bccIntentPersons.getter()
{
  v19 = 0;
  v26 = v0;
  v20 = [v0 attributeSet];
  v22 = CSSearchableItemAttributeSet.hiddenAdditionalRecipientEmailAddresses.getter();
  v21 = v22;

  if (v22)
  {
    v18 = v21;
    v1 = v19;
    v23 = v21;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = v6;
    MEMORY[0x28223BE20](KeyPath);
    v13 = v5;
    v5[2] = sub_214BADCC4;
    v5[3] = v2;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
    v15 = sub_214CCCCE4();
    sub_214B22E9C();
    v3 = sub_214CCF6F4();
    v16 = v1;
    v17 = v3;
    v7 = v3;

    sub_214A62278();
    v8 = v7;
    v9 = v16;
  }

  else
  {
    v8 = 0;
    v9 = v19;
  }

  v24 = v8;
  if (v8)
  {
    return v24;
  }

  v6[1] = 0;
  v6[2] = sub_214CCCCE4();
  v25 = sub_214CD03C4();
  if (v24)
  {
    sub_214A62278();
  }

  return v25;
}

void CSSearchableItem.senderIntentPerson.getter(uint64_t a1@<X8>)
{
  v59 = a1;
  v100 = 0;
  v99 = 0;
  v95 = 0;
  v96 = 0;
  v92 = 0;
  v93 = 0;
  v85 = 0;
  v72 = 0;
  v60 = sub_214CCCC34();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v64 = (&v9 - v63);
  v65 = (*(*(sub_214CCCC64() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v66 = &v9 - v65;
  v67 = sub_214CCCC74();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v71 = (&v9 - v70);
  v73 = (*(*(sub_214CCCC94() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v74 = &v9 - v73;
  v76 = sub_214CCCCE4();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v75);
  v80 = &v9 - v79;
  v100 = &v9 - v79;
  v99 = v2;
  v81 = [v2 attributeSet];
  v82 = [v81 authors];
  if (v82)
  {
    v58 = v82;
    v55 = v82;
    sub_214BAEE14();
    v56 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v55);
    v57 = v56;
  }

  else
  {
    v57 = 0;
  }

  v98 = v57;
  if (v57)
  {
    v50 = &v98;
    v52 = v98;

    sub_214A62278();
    MEMORY[0x277D82BD8](v81);
    v84 = v52;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36390);
    sub_214BAED8C();
    sub_214CCFA74();
    v53 = v83;

    v54 = v53;
  }

  else
  {
    sub_214A62278();
    MEMORY[0x277D82BD8](v81);
    v54 = 0;
  }

  v49 = v54;
  if (v54)
  {
    v48 = v49;
    v47 = v49;
    v85 = v49;
    CSPerson.intentPerson.getter(v59);
    MEMORY[0x277D82BD8](v47);
  }

  else
  {
    v45 = [v75 attributeSet];
    v46 = [v45 authorEmailAddresses];
    if (v46)
    {
      v44 = v46;
      v41 = v46;
      v42 = sub_214CCF7E4();
      MEMORY[0x277D82BD8](v41);
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    v97 = v43;
    if (v43)
    {
      v34 = &v97;
      v36 = v97;

      sub_214A62278();
      MEMORY[0x277D82BD8](v45);
      v88 = v36;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
      sub_214B50C54();
      sub_214CCFA74();
      v37 = v86;
      v38 = v87;

      v39 = v37;
      v40 = v38;
    }

    else
    {
      sub_214A62278();
      MEMORY[0x277D82BD8](v45);
      v39 = 0;
      v40 = 0;
    }

    v32 = v40;
    v33 = v39;
    if (v40)
    {
      v30 = v33;
      v31 = v32;
      v27 = v32;
      v26 = v33;
      v95 = v33;
      v96 = v32;

      v3 = v71;
      v4 = v27;
      v5 = v68;
      *v71 = v26;
      v3[1] = v4;
      (*(v5 + 104))();
      sub_214BAD354(v66);
      sub_214CCCCA4();
      sub_214CCCCB4();
      v28 = [v75 attributeSet];
      v29 = [v28 authorNames];
      if (v29)
      {
        v25 = v29;
        v22 = v29;
        v23 = sub_214CCF7E4();
        MEMORY[0x277D82BD8](v22);
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v94 = v24;
      if (v24)
      {
        v15 = &v94;
        v17 = v94;

        sub_214A62278();
        MEMORY[0x277D82BD8](v28);
        v91 = v17;
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
        sub_214B50C54();
        sub_214CCFA74();
        v18 = v89;
        v19 = v90;

        v20 = v18;
        v21 = v19;
      }

      else
      {
        sub_214A62278();
        MEMORY[0x277D82BD8](v28);
        v20 = 0;
        v21 = 0;
      }

      v13 = v21;
      v14 = v20;
      if (v21)
      {
        v11 = v14;
        v12 = v13;
        v10 = v13;
        v9 = v14;
        v92 = v14;
        v93 = v13;

        v6 = v64;
        v7 = v61;
        v8 = v10;
        *v64 = v9;
        v6[1] = v8;
        (*(v7 + 104))();
        sub_214CCCC54();
      }

      (*(v77 + 16))(v59, v80, v76);
      (*(v77 + 56))(v59, 0, 1, v76);
      (*(v77 + 8))(v80, v76);
    }

    else
    {
      (*(v77 + 56))(v59, 1, 1, v76);
    }
  }
}

unint64_t sub_214BAED8C()
{
  v2 = qword_27CA36398;
  if (!qword_27CA36398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36390);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BAEE14()
{
  v2 = qword_27CA363A0;
  if (!qword_27CA363A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA363A0);
    return ObjCClassMetadata;
  }

  return v2;
}

double CSSearchableItem.mailMessageEntityID.getter()
{
  v17 = 0;
  v18 = 0;
  v22 = v0;
  v15 = [v0 domainIdentifier];
  if (v15)
  {
    v11 = sub_214CCF564();
    v12 = v1;
    MEMORY[0x277D82BD8](v15);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v9 = sub_214CCF614();
  v10 = v2;

  v19[0] = v13;
  v19[1] = v14;
  v20 = v9;
  v21 = v10;
  if (v14)
  {
    sub_214A61AD0(v19, v16);
    if (v21)
    {
      v7 = MEMORY[0x21605D8D0](v16[0], v16[1], v20, v21);
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v8 = v7;
      goto LABEL_10;
    }

    sub_214A61B48();
    goto LABEL_12;
  }

  if (v21)
  {
LABEL_12:
    sub_214A76610();
    v8 = 0;
    goto LABEL_10;
  }

  sub_214A61B48();
  v8 = 1;
LABEL_10:

  if (v8)
  {
    v6 = sub_214CCD3C4();
  }

  else
  {
    v6 = sub_214CCD3D4();
  }

  v17 = v6;
  v18 = v3;
  [v0 attributeSet];
  v5 = [v0 uniqueIdentifier];
  sub_214CCF564();
  sub_214CCD3B4();
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t Array<A>.asIntentFiles.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214CCCBF4();
  sub_214B22E9C();
  return sub_214CCF6F4();
}

uint64_t sub_214BAF1E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v19 = a1;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA363A8);
  v12 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v13 = &v9 - v12;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48);
  v14 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v23 = &v9 - v14;
  v24 = sub_214CCD154();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v16 = *(v21 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v17 = &v9 - v15;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v9 - v15);
  v20 = &v9 - v18;
  v27 = &v9 - v18;
  v4 = v19[1];
  v25 = *v19;
  v26 = v4;
  sub_214CCD144();
  if ((*(v21 + 48))(v23, 1, v24) == 1)
  {
    sub_214B6807C(v23);
    v5 = sub_214CCCBF4();
    return (*(*(v5 - 8) + 56))(v11, 1);
  }

  else
  {
    (*(v21 + 32))(v20, v23, v24);
    (*(v21 + 16))(v17, v20, v24);
    v9 = 0;
    v7 = *(*(sub_214CCD794() - 8) + 56);
    v10 = 1;
    v7(v13, 1);
    sub_214CCCBE4();
    v8 = sub_214CCCBF4();
    (*(*(v8 - 8) + 56))(v11, 0, v10);
    return (*(v21 + 8))(v20, v24);
  }
}

uint64_t SearchItem.LegacySuggested.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t SearchItem.LegacySuggested.image.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.LegacySuggested() + 20));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t type metadata accessor for SearchItem.LegacySuggested()
{
  v1 = qword_280C7E6D8;
  if (!qword_280C7E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

double SearchItem.LegacySuggested.image.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.LegacySuggested() + 20));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.LegacySuggested.secondaryText.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.LegacySuggested() + 24));

  return v2;
}

uint64_t SearchItem.LegacySuggested.secondaryText.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.LegacySuggested() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.LegacySuggested.text.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.LegacySuggested() + 28));

  return v2;
}

uint64_t SearchItem.LegacySuggested.text.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.LegacySuggested() + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.LegacySuggested.tintColor.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.LegacySuggested() + 32));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double SearchItem.LegacySuggested.tintColor.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for SearchItem.LegacySuggested() + 32));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t SearchItem.LegacySuggested.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SearchItem.LegacySuggested();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t SearchItem.LegacySuggested.kind.setter(char *a1)
{
  v3 = *a1;
  result = type metadata accessor for SearchItem.LegacySuggested();
  *(v1 + *(result + 36)) = v3;
  return result;
}

uint64_t SearchItem.LegacySuggested.init(id:image:secondaryText:text:tintColor:kind:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a9;
  v50 = a1;
  v47 = a2;
  v39 = a3;
  v46 = a4;
  v40 = a5;
  v45 = a6;
  v44 = a7;
  v36 = a8;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v53 = 0;
  v37 = 0;
  v51 = sub_214CCD2B4();
  v48 = *(v51 - 8);
  v49 = v51 - 8;
  v35 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v38 = &v34 - v35;
  v41 = type metadata accessor for SearchItem.LegacySuggested();
  v9 = MEMORY[0x28223BE20](v38);
  v10 = v37;
  v11 = v41;
  v12 = v48;
  v52 = &v34 - v13;
  v61 = &v34 - v13;
  v60 = v14;
  v59 = v15;
  v57 = v16;
  v58 = v17;
  v55 = v18;
  v56 = v19;
  v54 = v20;
  v42 = *v21;
  v53 = v42;
  v22 = (&v34 + v41[6] - v13);
  *v22 = 0;
  v22[1] = 0;
  *(&v34 + v11[8] - v13) = v10;
  (*(v12 + 16))(v9);
  (*(v48 + 32))(v52, v38, v51);
  MEMORY[0x277D82BE0](v47);
  *(v52 + v41[5]) = v47;

  v23 = v46;
  v24 = (v52 + v41[6]);
  *v24 = v39;
  v24[1] = v23;

  v25 = v44;
  v26 = v45;
  v27 = (v52 + v41[7]);
  *v27 = v40;
  v27[1] = v26;
  MEMORY[0x277D82BE0](v25);
  v28 = (v52 + v41[8]);
  v29 = *v28;
  *v28 = v44;
  MEMORY[0x277D82BD8](v29);
  v30 = v43;
  v31 = v52;
  *(v52 + v41[9]) = v42;
  sub_214BB003C(v31, v30);
  MEMORY[0x277D82BD8](v44);

  v32 = MEMORY[0x277D82BD8](v47);
  (*(v48 + 8))(v50, v51, v32);
  return sub_214BB01BC(v52);
}

uint64_t sub_214BB003C(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v14 = type metadata accessor for SearchItem.LegacySuggested();
  v6 = v14[5];
  v7 = *(a1 + v6);
  MEMORY[0x277D82BE0](v7);
  *(a2 + v6) = v7;
  v3 = v14[6];
  v8 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v9 = *(a1 + v3 + 8);

  *(v8 + 8) = v9;
  v4 = v14[7];
  v10 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v11 = *(a1 + v4 + 8);

  *(v10 + 8) = v11;
  v12 = v14[8];
  v13 = *(a1 + v12);
  MEMORY[0x277D82BE0](v13);
  result = a2;
  *(a2 + v12) = v13;
  *(a2 + v14[9]) = *(a1 + v14[9]);
  return result;
}

uint64_t sub_214BB01BC(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  v3 = type metadata accessor for SearchItem.LegacySuggested();
  MEMORY[0x277D82BD8](*(a1 + *(v3 + 20)));

  MEMORY[0x277D82BD8](*(a1 + *(v3 + 32)));
  return a1;
}

BOOL static SearchItem.LegacySuggested.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v36 = a2;
  v60 = 0;
  v59 = 0;
  v43 = sub_214CCD2B4();
  v39 = *(v43 - 8);
  v40 = v43 - 8;
  v34 = v39[8];
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v41 = &v8 - v33;
  v35 = v33;
  v2 = MEMORY[0x28223BE20](&v8 - v33);
  v42 = &v8 - v35;
  v60 = v3;
  v59 = v36;
  v38 = v39[2];
  v37 = v39 + 2;
  v38(v2);
  (v38)(v41, v36, v43);
  v46 = sub_214CCD284();
  v45 = v39[1];
  v44 = v39 + 1;
  v45(v41, v43);
  v45(v42, v43);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

  v27 = 0;
  sub_214A77084();
  v28 = type metadata accessor for SearchItem.LegacySuggested();
  v30 = *(v32 + v28[5]);
  MEMORY[0x277D82BE0](v30);
  v29 = *(v36 + v28[5]);
  MEMORY[0x277D82BE0](v29);
  v31 = sub_214CCFD64();
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

  v4 = (v32 + v28[6]);
  v24 = *v4;
  v25 = v4[1];

  v26 = *(v36 + v28[6]);

  v57[0] = v24;
  v57[1] = v25;
  v58 = v26;
  if (v25)
  {
    sub_214A61AD0(v57, &v49);
    if (*(&v58 + 1))
    {
      v21 = &v48;
      v48 = v49;
      v20 = &v47;
      v47 = v58;
      v22 = MEMORY[0x21605D8D0](v49, *(&v49 + 1), v58, *(&v58 + 1));
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v23 = v22;
      goto LABEL_9;
    }

    sub_214A61B48();
    goto LABEL_11;
  }

  if (*(&v58 + 1))
  {
LABEL_11:
    sub_214A76610();
    v23 = 0;
    goto LABEL_9;
  }

  sub_214A61B48();
  v23 = 1;
LABEL_9:
  v19 = v23;

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v5 = (v32 + v28[7]);
  v14 = *v5;
  v17 = v5[1];

  v6 = (v36 + v28[7]);
  v15 = *v6;
  v16 = v6[1];

  v18 = MEMORY[0x21605D8D0](v14, v17, v15, v16);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v12 = *(v32 + v28[8]);
  MEMORY[0x277D82BE0](v12);
  MEMORY[0x277D82BE0](v12);
  v13 = *(v36 + v28[8]);
  MEMORY[0x277D82BE0](v13);
  MEMORY[0x277D82BE0](v13);
  v55 = v12;
  v56 = v13;
  if (v12)
  {
    sub_214A671A8(&v55, &v52);
    if (v56)
    {
      v51 = v52;
      v50 = v56;
      sub_214A65CE0();
      v10 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v51);
      sub_214A671E8(&v55);
      v11 = v10;
      goto LABEL_20;
    }

    MEMORY[0x277D82BD8](v52);
    goto LABEL_22;
  }

  if (v56)
  {
LABEL_22:
    sub_214A68120(&v55);
    v11 = 0;
    goto LABEL_20;
  }

  sub_214A671E8(&v55);
  v11 = 1;
LABEL_20:
  v9 = v11;
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v12);
  if (v9)
  {
    v54 = *(v32 + v28[9]);
    v53 = *(v36 + v28[9]);
    return static SearchItem.LegacySuggested.Kind.== infix(_:_:)(&v54, &v53);
  }

  else
  {
    return 0;
  }
}

BOOL static SearchItem.LegacySuggested.Kind.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    if (*a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t SearchItem.LegacySuggested.hash(into:)(uint64_t a1)
{
  v28 = a1;
  v2 = v1;
  v30 = v2;
  v39 = 0;
  v38 = 0;
  v16 = 0;
  v14 = sub_214CCD2B4();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14);
  v13 = &v10 - v10;
  v39 = a1;
  v38 = v5;
  (*(v11 + 16))(v4);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v11 + 8))(v13, v14);
  v31 = type metadata accessor for SearchItem.LegacySuggested();
  v15 = *(v30 + v31[5]);
  MEMORY[0x277D82BE0](v15);
  v18 = &v37;
  v37 = v15;
  v17 = sub_214A731BC();
  sub_214A74FE8();
  sub_214CD0554();
  MEMORY[0x277D82BD8](v37);
  v6 = (v30 + v31[6]);
  v19 = *v6;
  v20 = v6[1];

  v22 = v36;
  v36[0] = v19;
  v36[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  sub_214A75068();
  sub_214CD0554();
  sub_214A61B48();
  v7 = (v30 + v31[7]);
  v23 = *v7;
  v24 = v7[1];

  v25 = v35;
  v35[0] = v23;
  v35[1] = v24;
  sub_214CD0554();
  sub_214A61B48();
  v26 = *(v30 + v31[8]);
  MEMORY[0x277D82BE0](v26);
  v29 = &v34;
  v34 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35300);
  sub_214A75190();
  sub_214CD0554();
  sub_214A671E8(v29);
  v8 = *(v30 + v31[9]);
  v32 = &v33;
  v33 = v8;
  sub_214BB0E24();
  return sub_214CD0554();
}

unint64_t sub_214BB0E24()
{
  v2 = qword_27CA363B0;
  if (!qword_27CA363B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.LegacySuggested.hashValue.getter()
{
  type metadata accessor for SearchItem.LegacySuggested();
  sub_214BB0EE8();
  return sub_214CD0114();
}

unint64_t sub_214BB0EE8()
{
  v2 = qword_27CA363B8;
  if (!qword_27CA363B8)
  {
    type metadata accessor for SearchItem.LegacySuggested();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB1130()
{
  v2 = qword_27CA363C0;
  if (!qword_27CA363C0)
  {
    type metadata accessor for SearchItem.LegacySuggested();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB11C8()
{
  v2 = qword_27CA363C8;
  if (!qword_27CA363C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB1294()
{
  v5 = sub_214CCD2B4();
  if (v0 <= 0x3F)
  {
    v5 = sub_214A731BC();
    if (v1 <= 0x3F)
    {
      v5 = sub_214B5CC3C();
      if (v2 <= 0x3F)
      {
        v5 = sub_214B943D0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v5;
}

uint64_t SearchItem.Link.senders.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t SearchItem.Link.senders.setter(uint64_t a1)
{

  *v1 = a1;
}

uint64_t SearchItem.Link.id.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.Link() + 20);
  v2 = sub_214CCD2B4();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t type metadata accessor for SearchItem.Link()
{
  v1 = qword_280C7E638;
  if (!qword_280C7E638)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SearchItem.Link.id.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCD2B4();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.Link();
  (*(v10 + 40))(v1 + *(v4 + 20), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.Link.url.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SearchItem.Link() + 24);
  v2 = sub_214CCD154();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchItem.Link.url.setter(uint64_t a1)
{
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v8 = 0;
  v12 = sub_214CCD154();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v9 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  (*(v10 + 16))(v2);
  v4 = type metadata accessor for SearchItem.Link();
  (*(v10 + 40))(v1 + *(v4 + 24), v9, v12);
  return (*(v10 + 8))(v13, v12);
}

uint64_t SearchItem.Link.title.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Link() + 28));

  return v2;
}

uint64_t SearchItem.Link.title.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Link() + 28));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Link.richLinkID.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Link() + 32));

  return v2;
}

uint64_t SearchItem.Link.richLinkID.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Link() + 32));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Link.messageID.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Link() + 36));

  return v2;
}

uint64_t SearchItem.Link.messageID.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Link() + 36));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Link.init(senders:id:url:title:richLinkID:messageID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v37 = a9;
  v49 = a1;
  v47 = a2;
  v43 = a3;
  v33 = a4;
  v40 = a5;
  v34 = a6;
  v39 = a7;
  v36 = a8;
  v38 = a10;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v28 = 0;
  v44 = sub_214CCD154();
  v41 = *(v44 - 8);
  v42 = v44 - 8;
  v27 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v32 = &v27 - v27;
  v48 = sub_214CCD2B4();
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v29 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v31 = &v27 - v29;
  v35 = type metadata accessor for SearchItem.Link();
  v30 = (*(*(v35 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v50 = &v27 - v30;
  v60 = &v27 - v30;
  v59 = v10;
  v58 = v11;
  v57 = v12;
  v55 = v13;
  v56 = v14;
  v53 = v15;
  v54 = v16;
  v51 = v17;
  v52 = v38;
  *v50 = 0;

  *v50 = v49;

  (*(v45 + 16))(v31, v47, v48);
  (*(v45 + 32))(&v50[v35[5]], v31, v48);
  (*(v41 + 16))(v32, v43, v44);
  (*(v41 + 32))(&v50[v35[6]], v32, v44);

  v18 = v40;
  v19 = &v50[v35[7]];
  *v19 = v33;
  *(v19 + 1) = v18;

  v20 = v39;
  v21 = &v50[v35[8]];
  *v21 = v34;
  *(v21 + 1) = v20;

  v22 = v50;
  v23 = v37;
  v24 = v38;
  v25 = &v50[v35[9]];
  *v25 = v36;
  *(v25 + 1) = v24;
  sub_214BB20E4(v22, v23);

  (*(v41 + 8))(v43, v44);
  (*(v45 + 8))(v47, v48);

  return sub_214BB22B4(v50);
}

char *sub_214BB20E4(char *a1, char *a2)
{
  v8 = *a1;

  *a2 = v8;
  v16 = type metadata accessor for SearchItem.Link();
  v9 = v16[5];
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(&a2[v9], &a1[v9]);
  v10 = v16[6];
  v3 = sub_214CCD154();
  (*(*(v3 - 8) + 16))(&a2[v10], &a1[v10]);
  v4 = v16[7];
  v11 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v12 = *&a1[v4 + 8];

  *(v11 + 1) = v12;
  v5 = v16[8];
  v14 = &a2[v5];
  *&a2[v5] = *&a1[v5];
  v15 = *&a1[v5 + 8];

  *(v14 + 1) = v15;
  v6 = v16[9];
  v18 = &a2[v6];
  *&a2[v6] = *&a1[v6];
  v19 = *&a1[v6 + 8];

  result = a2;
  *(v18 + 1) = v19;
  return result;
}

uint64_t sub_214BB22B4(uint64_t a1)
{

  v6 = type metadata accessor for SearchItem.Link();
  v4 = *(v6 + 20);
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1 + v4);
  v5 = *(v6 + 24);
  v2 = sub_214CCD154();
  (*(*(v2 - 8) + 8))(a1 + v5);

  return a1;
}

uint64_t SearchItem.Link.init(suggestion:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v45 = a1;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v35 = 0;
  v33 = (*(*(sub_214CCD154() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v34 = &v12 - v33;
  v36 = (*(*(sub_214CCD2B4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v37 = &v12 - v36;
  v38 = type metadata accessor for SearchItem.Link();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v42 = &v12 - v41;
  v43 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v44 = &v12 - v43;
  v49 = &v12 - v43;
  v48 = v4;
  *&v5 = MEMORY[0x277D82BE0](v4).n128_u64[0];
  v46 = [v45 authors];
  if (v46)
  {
    v31 = v46;
    v28 = v46;
    v29 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v28);
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v26 = v30;
  MEMORY[0x277D82BD8](v45);
  *&v6 = MEMORY[0x277D82BE0](v45).n128_u64[0];
  v27 = [v45 authorEmailAddresses];
  if (v27)
  {
    v25 = v27;
    v22 = v27;
    v23 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v22);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v12 = v24;
  MEMORY[0x277D82BD8](v45);
  v17 = sub_214B65BF4(v26, v12);

  v47 = v17;
  sub_214CCD2A4();
  v21 = [v45 url];
  sub_214CCD124();
  v20 = [v45 title];
  v13 = sub_214CCF564();
  v14 = v7;
  v19 = [v45 richLinkID];
  v15 = sub_214CCF564();
  v16 = v8;
  v18 = [v45 messageID];
  v9 = sub_214CCF564();
  SearchItem.Link.init(senders:id:url:title:richLinkID:messageID:)(v17, v37, v34, v13, v14, v15, v16, v9, v42, v10);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  sub_214BB2898(v42, v44);
  sub_214BB20E4(v44, v32);
  (*(v39 + 56))(v32, 0, 1, v38);
  MEMORY[0x277D82BD8](v45);
  return sub_214BB22B4(v44);
}

__n128 sub_214BB2898(char *a1, char *a2)
{
  *a2 = *a1;
  v7 = type metadata accessor for SearchItem.Link();
  v5 = v7[5];
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(&a2[v5], &a1[v5]);
  v6 = v7[6];
  v3 = sub_214CCD154();
  (*(*(v3 - 8) + 32))(&a2[v6], &a1[v6]);
  *&a2[v7[7]] = *&a1[v7[7]];
  *&a2[v7[8]] = *&a1[v7[8]];
  result = *&a1[v7[9]];
  *&a2[v7[9]] = result;
  return result;
}

BOOL static SearchItem.Link.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v62 = a1;
  v70 = a2;
  v79 = 0;
  v78 = 0;
  v54 = 0;
  v55 = sub_214CCD154();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (v56[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v59 = &v17[-v58];
  v60 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = &v17[-v60];
  v63 = sub_214CCD2B4();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (v64[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v67 = &v17[-v66];
  v68 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v69 = &v17[-v68];
  v79 = v6;
  v78 = v7;
  v71 = *v6;

  v72 = *v70;

  v76 = v71;
  v77 = v72;
  if (v71)
  {
    sub_214B1C04C(&v76, &v75);
    if (v77)
    {
      v50 = &v74;
      v74 = v75;
      v51 = &v76;
      v49 = &v73;
      v73 = v77;
      v48 = v75;
      v46 = v77;
      v47 = sub_214B63E30();
      sub_214B63E94();
      v52 = sub_214CCF8E4();
      sub_214A62278();
      sub_214A62278();
      sub_214A62278();
      v53 = v52;
      goto LABEL_7;
    }

    sub_214A62278();
    goto LABEL_9;
  }

  if (v77)
  {
LABEL_9:
    sub_214B63DF8();
    v53 = 0;
    goto LABEL_7;
  }

  sub_214A62278();
  v53 = 1;
LABEL_7:
  v45 = v53;

  if (v45)
  {
    v39 = type metadata accessor for SearchItem.Link();
    v8 = v62 + v39[5];
    v41 = v64[2];
    v40 = v64 + 2;
    v41(v69, v8, v63);
    v41(v67, v70 + v39[5], v63);
    v44 = sub_214CCD284();
    v43 = v64[1];
    v42 = v64 + 1;
    v43(v67, v63);
    v43(v69, v63);
    if (v44)
    {
      v9 = v62 + v39[6];
      v35 = v56[2];
      v34 = v56 + 2;
      v35(v61, v9, v55);
      v35(v59, v70 + v39[6], v55);
      v38 = sub_214CCD114();
      v37 = v56[1];
      v36 = v56 + 1;
      v37(v59, v55);
      v37(v61, v55);
      if (v38)
      {
        v10 = (v62 + v39[7]);
        v29 = *v10;
        v32 = v10[1];

        v11 = (v70 + v39[7]);
        v30 = *v11;
        v31 = v11[1];

        v33 = MEMORY[0x21605D8D0](v29, v32, v30, v31);

        if (v33)
        {
          v12 = (v62 + v39[8]);
          v24 = *v12;
          v27 = v12[1];

          v13 = (v70 + v39[8]);
          v25 = *v13;
          v26 = v13[1];

          v28 = MEMORY[0x21605D8D0](v24, v27, v25, v26);

          if (v28)
          {
            v14 = (v62 + v39[9]);
            v19 = *v14;
            v22 = v14[1];

            v15 = (v70 + v39[9]);
            v20 = *v15;
            v21 = v15[1];

            v23 = MEMORY[0x21605D8D0](v19, v22, v20, v21);

            return (v23 & 1) != 0;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

void *SearchItem.Link.hash(into:)(uint64_t a1)
{
  v29 = a1;
  v2 = v1;
  v31 = v2;
  v43 = 0;
  v42 = 0;
  v15 = 0;
  v23 = sub_214CCD154();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v10 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v22 = &v9 - v10;
  v19 = sub_214CCD2B4();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v11 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v18 = &v9 - v11;
  v43 = a1;
  v42 = v4;
  v12 = *v4;

  v14 = &v41;
  v41 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359B0);
  sub_214B642F0();
  sub_214CD0554();
  sub_214A62278();
  v32 = type metadata accessor for SearchItem.Link();
  (*(v16 + 16))(v18, v31 + v32[5], v19);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v16 + 8))(v18, v19);
  (*(v20 + 16))(v22, v31 + v32[6], v23);
  sub_214B644A0();
  sub_214CD0554();
  (*(v20 + 8))(v22, v23);
  v5 = (v31 + v32[7]);
  v24 = *v5;
  v25 = v5[1];

  v26 = v40;
  v40[0] = v24;
  v40[1] = v25;
  v35 = MEMORY[0x277D837D0];
  v36 = MEMORY[0x277D837E0];
  sub_214CD0554();
  sub_214A61B48();
  v6 = (v31 + v32[8]);
  v27 = *v6;
  v28 = v6[1];

  v30 = v39;
  v39[0] = v27;
  v39[1] = v28;
  sub_214CD0554();
  sub_214A61B48();
  v7 = (v31 + v32[9]);
  v33 = *v7;
  v34 = v7[1];

  v37 = v38;
  v38[0] = v33;
  v38[1] = v34;
  sub_214CD0554();
  result = v37;
  sub_214A61B48();
  return result;
}

uint64_t SearchItem.Link.hashValue.getter()
{
  type metadata accessor for SearchItem.Link();
  sub_214BB35B8();
  return sub_214CD0114();
}

unint64_t sub_214BB35B8()
{
  v2 = qword_27CA363D0;
  if (!qword_27CA363D0)
  {
    type metadata accessor for SearchItem.Link();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB3698()
{
  v2 = qword_27CA363D8;
  if (!qword_27CA363D8)
  {
    type metadata accessor for SearchItem.Link();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BB3784()
{
  v4 = sub_214B64884();
  if (v0 <= 0x3F)
  {
    v4 = sub_214CCD2B4();
    if (v1 <= 0x3F)
    {
      v4 = sub_214CCD154();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t SearchItem.Location.id.setter(uint64_t a1)
{
  v12 = a1;
  v14 = 0;
  v13 = 0;
  v11 = sub_214CCD2B4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v11);
  v7 = &v5 - v6;
  v14 = v3;
  v13 = v1;
  (*(v9 + 16))(v2);
  (*(v9 + 40))(v8, v7, v11);
  return (*(v9 + 8))(v12, v11);
}

uint64_t SearchItem.Location.address.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Location() + 20));

  return v2;
}

uint64_t type metadata accessor for SearchItem.Location()
{
  v1 = qword_280C7E278;
  if (!qword_280C7E278)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t SearchItem.Location.address.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Location() + 20));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Location.date.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Location() + 24));

  return v2;
}

uint64_t SearchItem.Location.date.setter(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for SearchItem.Location() + 24));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t SearchItem.Location.senders.getter()
{
  v2 = *(v0 + *(type metadata accessor for SearchItem.Location() + 28));

  return v2;
}

uint64_t SearchItem.Location.senders.setter(uint64_t a1)
{

  *(v1 + *(type metadata accessor for SearchItem.Location() + 28)) = a1;
}

uint64_t SearchItem.Location.init(id:address:date:senders:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a7;
  v33 = a1;
  v23 = a2;
  v30 = a3;
  v24 = a4;
  v29 = a5;
  v28 = a6;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v22[1] = 0;
  v34 = sub_214CCD2B4();
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v22[0] = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v25 = v22 - v22[0];
  v26 = type metadata accessor for SearchItem.Location();
  MEMORY[0x28223BE20](v30);
  v7 = v26;
  v35 = v22 - v8;
  v42 = v22 - v8;
  v41 = v33;
  v39 = v9;
  v40 = v10;
  v37 = v11;
  v38 = v12;
  v36 = v13;
  v14 = (v22 + v26[5] - v8);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v22 + v7[6] - v8);
  *v15 = 0;
  v15[1] = 0;
  *(v22 + v7[7] - v8) = v16;

  v17 = v30;
  v18 = (v35 + v26[5]);
  *v18 = v23;
  v18[1] = v17;

  v19 = v29;
  v20 = (v35 + v26[6]);
  *v20 = v24;
  v20[1] = v19;

  (*(v31 + 16))(v25, v33, v34);
  (*(v31 + 32))(v35, v25, v34);

  *(v35 + v26[7]) = v28;

  sub_214BB40F4(v35, v27);

  (*(v31 + 8))(v33, v34);
  return sub_214BB4214(v35);
}

uint64_t sub_214BB40F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v11 = type metadata accessor for SearchItem.Location();
  v3 = (a1 + v11[5]);
  v6 = (a2 + v11[5]);
  *v6 = *v3;
  v7 = v3[1];

  v6[1] = v7;
  v4 = v11[6];
  v9 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v10 = *(a1 + v4 + 8);

  *(v9 + 8) = v10;
  v13 = v11[7];
  v14 = *(a1 + v13);

  result = a2;
  *(a2 + v13) = v14;
  return result;
}

uint64_t sub_214BB4214(uint64_t a1)
{
  v1 = sub_214CCD2B4();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for SearchItem.Location();

  return a1;
}

uint64_t SearchItem.Location.init(suggestion:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v48 = a1;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v35 = 0;
  v33 = (*(*(sub_214CCD2B4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v34 = &v11 - v33;
  v36 = sub_214CCD254();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v39 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v40 = &v11 - v39;
  v41 = type metadata accessor for SearchItem.Location();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v45 = &v11 - v44;
  v46 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v47 = &v11 - v46;
  v54 = &v11 - v46;
  v53 = v4;
  *&v5 = MEMORY[0x277D82BE0](v4).n128_u64[0];
  v49 = [v48 authors];
  if (v49)
  {
    v31 = v49;
    v28 = v49;
    v29 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v28);
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  v26 = v30;
  MEMORY[0x277D82BD8](v48);
  *&v6 = MEMORY[0x277D82BE0](v48).n128_u64[0];
  v27 = [v48 authorEmailAddresses];
  if (v27)
  {
    v25 = v27;
    v22 = v27;
    v23 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v22);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v12 = v24;
  MEMORY[0x277D82BD8](v48);
  v19 = sub_214B65BF4(v26, v12);

  v52 = v19;
  v14 = objc_opt_self();
  v13 = [v48 date];
  sub_214CCD224();
  v15 = sub_214CCD1C4();
  (*(v37 + 8))(v40, v36);
  *&v7 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v16 = [v14 localizedStringFromDate:v15 dateStyle:1 timeStyle:{0, v7}];
  MEMORY[0x277D82BD8](v15);
  v17 = sub_214CCF564();
  v18 = v8;
  v50 = v17;
  v51 = v8;
  MEMORY[0x277D82BD8](v16);
  sub_214CCD2A4();
  v21 = [v48 address];
  v20 = sub_214CCF564();
  SearchItem.Location.init(id:address:date:senders:)(v34, v20, v9, v17, v18, v19, v45);
  MEMORY[0x277D82BD8](v21);
  sub_214BB4808(v45, v47);
  sub_214BB40F4(v47, v32);
  (*(v42 + 56))(v32, 0, 1, v41);
  MEMORY[0x277D82BD8](v48);
  return sub_214BB4214(v47);
}

__n128 sub_214BB4808(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD2B4();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SearchItem.Location();
  *(a2 + v3[5]) = *(a1 + v3[5]);
  result = *(a1 + v3[6]);
  *(a2 + v3[6]) = result;
  *(a2 + v3[7]) = *(a1 + v3[7]);
  return result;
}

BOOL static SearchItem.Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v40 = a2;
  v67 = 0;
  v66 = 0;
  v47 = sub_214CCD2B4();
  v43 = *(v47 - 8);
  v44 = v47 - 8;
  v38 = v43[8];
  v37 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v45 = &v7 - v37;
  v39 = v37;
  v2 = MEMORY[0x28223BE20](&v7 - v37);
  v46 = &v7 - v39;
  v67 = v3;
  v66 = v40;
  v42 = v43[2];
  v41 = v43 + 2;
  v42(v2);
  (v42)(v45, v40, v47);
  v50 = sub_214CCD284();
  v49 = v43[1];
  v48 = v43 + 1;
  v49(v45, v47);
  v49(v46, v47);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

  v32 = type metadata accessor for SearchItem.Location();
  v4 = (v36 + v32[5]);
  v33 = *v4;
  v34 = v4[1];

  v35 = *(v40 + v32[5]);

  v64[0] = v33;
  v64[1] = v34;
  v65 = v35;
  if (v34)
  {
    sub_214A61AD0(v64, &v53);
    if (*(&v65 + 1))
    {
      v29 = &v52;
      v52 = v53;
      v28 = &v51;
      v51 = v65;
      v30 = MEMORY[0x21605D8D0](v53, *(&v53 + 1), v65, *(&v65 + 1));
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v31 = v30;
      goto LABEL_8;
    }

    sub_214A61B48();
    goto LABEL_10;
  }

  if (*(&v65 + 1))
  {
LABEL_10:
    sub_214A76610();
    v31 = 0;
    goto LABEL_8;
  }

  sub_214A61B48();
  v31 = 1;
LABEL_8:
  v27 = v31;

  if (v27)
  {
    v5 = (v36 + v32[6]);
    v24 = *v5;
    v25 = v5[1];

    v26 = *(v40 + v32[6]);

    v62[0] = v24;
    v62[1] = v25;
    v63 = v26;
    if (v25)
    {
      sub_214A61AD0(v62, &v56);
      if (*(&v63 + 1))
      {
        v21 = &v55;
        v55 = v56;
        v20 = &v54;
        v54 = v63;
        v22 = MEMORY[0x21605D8D0](v56, *(&v56 + 1), v63, *(&v63 + 1));
        sub_214A61B48();
        sub_214A61B48();
        sub_214A61B48();
        v23 = v22;
        goto LABEL_18;
      }

      sub_214A61B48();
    }

    else if (!*(&v63 + 1))
    {
      sub_214A61B48();
      v23 = 1;
LABEL_18:
      v19 = v23;

      if ((v19 & 1) == 0)
      {
        return 0;
      }

      v17 = *(v36 + v32[7]);

      v18 = *(v40 + v32[7]);

      v60 = v17;
      v61 = v18;
      if (v17)
      {
        sub_214B1C04C(&v60, &v59);
        if (v61)
        {
          v14 = &v58;
          v58 = v59;
          v13 = &v57;
          v57 = v61;
          v12 = v59;
          v10 = v61;
          v11 = sub_214B63E30();
          sub_214B63E94();
          v15 = sub_214CCF8E4();
          sub_214A62278();
          sub_214A62278();
          sub_214A62278();
          v16 = v15;
LABEL_28:
          v9 = v16;

          return (v9 & 1) != 0;
        }

        sub_214A62278();
      }

      else if (!v61)
      {
        sub_214A62278();
        v16 = 1;
        goto LABEL_28;
      }

      sub_214B63DF8();
      v16 = 0;
      goto LABEL_28;
    }

    sub_214A76610();
    v23 = 0;
    goto LABEL_18;
  }

  return 0;
}

uint64_t *SearchItem.Location.hash(into:)(uint64_t a1)
{
  v23 = a1;
  v2 = v1;
  v25 = v2;
  v34 = 0;
  v33 = 0;
  v15 = 0;
  v14 = sub_214CCD2B4();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v10 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v14);
  v13 = &v9 - v10;
  v34 = a1;
  v33 = v5;
  (*(v11 + 16))(v4);
  sub_214B5C87C();
  sub_214CD0554();
  (*(v11 + 8))(v13, v14);
  v26 = type metadata accessor for SearchItem.Location();
  v6 = (v25 + v26[5]);
  v16 = *v6;
  v17 = v6[1];

  v18 = v32;
  v32[0] = v16;
  v32[1] = v17;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  v22 = sub_214A75068();
  sub_214CD0554();
  sub_214A61B48();
  v7 = (v25 + v26[6]);
  v19 = *v7;
  v20 = v7[1];

  v24 = v31;
  v31[0] = v19;
  v31[1] = v20;
  sub_214CD0554();
  sub_214A61B48();
  v27 = *(v25 + v26[7]);

  v29 = &v30;
  v30 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359B0);
  sub_214B642F0();
  sub_214CD0554();
  result = v29;
  sub_214A62278();
  return result;
}

uint64_t SearchItem.Location.hashValue.getter()
{
  type metadata accessor for SearchItem.Location();
  sub_214BB5358();
  return sub_214CD0114();
}

unint64_t sub_214BB5358()
{
  v2 = qword_27CA363E0;
  if (!qword_27CA363E0)
  {
    type metadata accessor for SearchItem.Location();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB5438()
{
  v2 = qword_27CA363E8;
  if (!qword_27CA363E8)
  {
    type metadata accessor for SearchItem.Location();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA363E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BB5524()
{
  v4 = sub_214CCD2B4();
  if (v0 <= 0x3F)
  {
    v4 = sub_214B5CC3C();
    if (v1 <= 0x3F)
    {
      v4 = sub_214B64884();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_214BB5688()
{
  v11 = 0;
  v3 = (*(*(sub_214CCFC34() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v10 = &v2 - v3;
  v4 = (*(*(sub_214CCFC24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v9 = &v2 - v4;
  v5 = (*(*(sub_214CCF254() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v8 = &v2 - v5;
  sub_214B51A38();
  v6 = sub_214CCF614();
  v7 = v0;
  sub_214CCF244();
  sub_214BB5824();
  sub_214BB58C4(v10);
  result = sub_214CCFC64();
  qword_280C7DBC0 = result;
  return result;
}

uint64_t sub_214BB5824()
{
  sub_214BB87B8(0);
  sub_214CCFC24();
  sub_214BB89C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36410);
  sub_214BB8A44();
  return sub_214CD0104();
}

uint64_t sub_214BB58C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85260];
  v1 = sub_214CCFC34();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t *sub_214BB5930()
{
  if (qword_280C7DBB8 != -1)
  {
    swift_once();
  }

  return &qword_280C7DBC0;
}

uint64_t sub_214BB5990()
{
  v0 = sub_214BB5930();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

id sub_214BB59FC()
{
  result = sub_214BB5A1C();
  qword_280C7DBD8 = result;
  return result;
}

id sub_214BB5A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359D8);
  v2 = sub_214AF82CC();
  v0 = sub_214A731BC();
  v3 = sub_214BB5634(v2, v0);
  [v3 setCountLimit_];
  return v3;
}

uint64_t *sub_214BB5AA8()
{
  if (qword_280C7DBD0 != -1)
  {
    swift_once();
  }

  return &qword_280C7DBD8;
}

uint64_t sub_214BB5B08()
{
  v0 = sub_214BB5AA8();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

id sub_214BB5B40()
{
  result = sub_214BB5B60();
  qword_27CA363F0 = result;
  return result;
}

id sub_214BB5B60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA359D8);
  v2 = sub_214AF82CC();
  v0 = sub_214BB8960();
  v3 = sub_214BB5634(v2, v0);
  [v3 setCountLimit_];
  return v3;
}

uint64_t *sub_214BB5BEC()
{
  if (qword_27CA34028 != -1)
  {
    swift_once();
  }

  return &qword_27CA363F0;
}

uint64_t sub_214BB5C4C()
{
  v0 = sub_214BB5BEC();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_214BB5C84()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_280C7DB98);
  __swift_project_value_buffer(v1, qword_280C7DB98);
  return sub_214BB5CD0();
}

uint64_t sub_214BB5CF8()
{
  if (qword_280C7DB90 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7DB98);
}

uint64_t static LocationSnapshotGenerator.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214BB5CF8();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static LocationSnapshotGenerator.getLocationFromAddress(address:)(uint64_t a1, uint64_t a2)
{
  v2[29] = a2;
  v2[28] = a1;
  v2[20] = v2;
  v2[18] = 0;
  v2[19] = 0;
  v2[21] = 0;
  v2[23] = 0;
  v2[24] = 0;
  v2[27] = 0;
  v2[18] = a1;
  v2[19] = a2;
  return MEMORY[0x2822009F8](sub_214BB5E20, 0);
}

uint64_t sub_214BB5E20()
{
  *(v0 + 160) = v0;
  v1 = sub_214BB5BEC();
  v10 = *v1;
  MEMORY[0x277D82BE0](*v1);

  v9 = sub_214CCF544();
  v11 = [v10 objectForKey_];
  MEMORY[0x277D82BD8](v9);

  v2 = MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    *(v8 + 216) = v11;
    v3 = *(*(v8 + 160) + 8);

    return v3(v2);
  }

  else
  {
    sub_214BB67A0();
    v7 = sub_214A61730();
    *(v8 + 240) = v7;
    *(v8 + 168) = v7;

    v6 = sub_214CCF544();
    *(v8 + 248) = v6;

    *(v8 + 16) = *(v8 + 160);
    *(v8 + 56) = v8 + 176;
    *(v8 + 24) = sub_214BB60D8;
    v5 = swift_continuation_init();
    *(v8 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA363F8);
    *(v8 + 112) = v5;
    *(v8 + 80) = MEMORY[0x277D85DD0];
    *(v8 + 88) = 1107296256;
    *(v8 + 92) = 0;
    *(v8 + 96) = sub_214BB6804;
    *(v8 + 104) = &block_descriptor_9;
    [v7 geocodeAddressString:v6 completionHandler:?];

    return MEMORY[0x282200938](v8 + 16);
  }
}

uint64_t sub_214BB60D8()
{
  v4 = *v0;
  v4[20] = *v0;
  v1 = v4[6];
  v4[32] = v1;
  if (v1)
  {
    v2 = sub_214BB64D8;
  }

  else
  {
    v2 = sub_214BB6230;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214BB6230()
{
  v1 = v0[31];
  v0[20] = v0;
  v14 = v0[22];
  MEMORY[0x277D82BD8](v1);
  v0[23] = v14;

  if (v14)
  {
    v13[25] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36400);
    sub_214BB6938();
    sub_214CCFA74();
    v11 = v13[26];

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v9 = v13[30];
    v13[24] = v12;
    v2 = sub_214BB5BEC();
    v8 = *v2;
    MEMORY[0x277D82BE0](*v2);

    v7 = sub_214CCF544();
    [v8 setObject:v12 forKey:?];
    MEMORY[0x277D82BD8](v7);

    MEMORY[0x277D82BD8](v8);

    v3 = MEMORY[0x277D82BD8](v9);
    v10 = v12;
  }

  else
  {
    v6 = v13[30];

    v3 = MEMORY[0x277D82BD8](v6);
    v10 = 0;
  }

  v4 = *(v13[20] + 8);

  return v4(v10, v3);
}

uint64_t sub_214BB64D8()
{
  v7 = v0[32];
  v6 = v0[31];
  v0[20] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v6);

  v0[23] = 0;

  v4 = *(v5 + 240);

  v1 = MEMORY[0x277D82BD8](v4);
  v2 = *(*(v5 + 160) + 8);

  return v2(0, v1);
}

unint64_t sub_214BB67A0()
{
  v2 = qword_280C7CD50;
  if (!qword_280C7CD50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD50);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214BB6804(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36400);
    sub_214C01BE0(v10, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    sub_214BB8960();
    v11 = sub_214CCF7E4();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36400);
    sub_214C01C44(v10, &v11, v3);
    MEMORY[0x277D82BD8](a2);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

unint64_t sub_214BB6938()
{
  v2 = qword_280C7CEB8;
  if (!qword_280C7CEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36400);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t static LocationSnapshotGenerator.generateThumbnail(address:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a2;
  v2[8] = a1;
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return MEMORY[0x2822009F8](sub_214BB6A14, 0);
}

uint64_t sub_214BB6A14()
{
  *(v0 + 32) = v0;
  v1 = sub_214BB5AA8();
  v10 = *v1;
  MEMORY[0x277D82BE0](*v1);

  v9 = sub_214CCF544();
  v11 = [v10 objectForKey_];
  MEMORY[0x277D82BD8](v9);

  v2 = MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    v8[7] = v11;
    v3 = *(v8[4] + 8);

    return v3(v2);
  }

  else
  {
    v5 = swift_task_alloc();
    v8[10] = v5;
    *v5 = v8[4];
    v5[1] = sub_214BB6BCC;
    v6 = v8[9];
    v7 = v8[8];

    return static LocationSnapshotGenerator.getLocationFromAddress(address:)(v7, v6);
  }
}

uint64_t sub_214BB6BCC(uint64_t a1)
{
  v7 = *v1;
  v7[4] = *v1;
  v8 = v7 + 4;
  v7[11] = a1;

  if (a1)
  {
    v7[5] = a1;
    v2 = swift_task_alloc();
    v7[12] = v2;
    *v2 = *v8;
    v2[1] = sub_214BB6DC4;
    v3 = v7[9];
    v4 = v7[8];

    return static LocationSnapshotGenerator.generateThumbnail(placemark:address:)(a1, v4, v3);
  }

  else
  {
    v6 = *(*v8 + 8);

    return v6(0);
  }
}

uint64_t sub_214BB6DC4(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 104) = a1;

  return MEMORY[0x2822009F8](sub_214BB6EE0, 0);
}

uint64_t sub_214BB6EE0()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[4] = v0;
  v0[6] = v1;
  MEMORY[0x277D82BD8](v2);
  v3 = v0[13];
  v4 = *(v0[4] + 8);

  return v4(v3);
}

uint64_t static LocationSnapshotGenerator.generateThumbnail(placemark:address:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 288) = a3;
  *(v3 + 280) = a2;
  *(v3 + 272) = a1;
  *(v3 + 208) = v3;
  *(v3 + 216) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 224) = 0;
  *(v3 + 232) = 0;
  *(v3 + 248) = 0;
  *(v3 + 256) = 0;
  *(v3 + 264) = 0;
  v4 = sub_214CCDA74();
  *(v3 + 296) = v4;
  *(v3 + 304) = *(v4 - 8);
  *(v3 + 312) = swift_task_alloc();
  *(v3 + 216) = a1;
  *(v3 + 176) = a2;
  *(v3 + 184) = a3;

  return MEMORY[0x2822009F8](sub_214BB70EC, 0);
}

uint64_t sub_214BB70EC()
{
  v62 = v0;
  *(v0 + 208) = v0;
  v1 = sub_214BB5AA8();
  v52 = *v1;
  MEMORY[0x277D82BE0](*v1);

  v51 = sub_214CCF544();
  v53 = [v52 objectForKey_];
  MEMORY[0x277D82BD8](v51);

  *&v2 = MEMORY[0x277D82BD8](v52).n128_u64[0];
  if (v53)
  {
    *(v50 + 264) = v53;
    v49 = v53;
LABEL_14:

    v14 = *(*(v50 + 208) + 8);

    return v14(v49);
  }

  v48 = [*(v50 + 272) location];
  if (v48)
  {
    [v48 coordinate];
    v60 = v3;
    v61 = v4;
    v43 = v3;
    v44 = v4;
    MEMORY[0x277D82BD8](v48);
    v45 = v43;
    v46 = v44;
    v47 = 0;
  }

  else
  {
    v45 = 0.0;
    v46 = 0.0;
    v47 = 1;
  }

  if (v47)
  {
    v49 = 0;
    goto LABEL_14;
  }

  v29 = *(v50 + 312);
  v32 = *(v50 + 296);
  v34 = *(v50 + 288);
  v33 = *(v50 + 280);
  v31 = *(v50 + 304);
  *(v50 + 192) = v45;
  *(v50 + 200) = v46;
  v54 = MEMORY[0x21605EC90](v45, v46, 500.0);
  v24 = v5;
  v25 = v6;
  v26 = v7;
  *(v50 + 144) = v54;
  *(v50 + 152) = v5;
  *(v50 + 160) = v6;
  *(v50 + 168) = v7;
  sub_214BB84F0();
  v27 = sub_214A61730();
  *&v8 = MEMORY[0x277D82BE0](v27).n128_u64[0];
  *(v50 + 224) = v27;
  [v27 setMapType_];
  [v27 setRegion_];
  v28 = [objc_opt_self() setCustomFeatureAnnotationsForSnapshotOptions:v27 coordinate:0 title:{v45, v46}];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BE0](v28);
  v9 = *(v50 + 224);
  *(v50 + 224) = v28;
  MEMORY[0x277D82BD8](v9);
  [v28 setSize_];
  sub_214BB8554();
  v30 = sub_214BB85B8(v28);
  *(v50 + 320) = v30;
  *(v50 + 232) = v30;
  v10 = sub_214BB5CF8();
  (*(v31 + 16))(v29, v10, v32);

  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  oslog = sub_214CCDA54();
  v42 = sub_214CCFB94();
  v37 = swift_allocObject();
  *(v37 + 16) = 32;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_214B21C04;
  *(v36 + 24) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_214A7E854;
  *(v39 + 24) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v40 = v11;

  *v40 = sub_214A662DC;
  v40[1] = v37;

  v40[2] = sub_214A662DC;
  v40[3] = v38;

  v40[4] = sub_214A7E40C;
  v40[5] = v39;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v42))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v22 = sub_214A632C4(0);
    v23 = sub_214A632C4(1);
    v55 = buf;
    v56 = v22;
    v57 = v23;
    sub_214A6627C(2, &v55);
    sub_214A6627C(1, &v55);
    v58 = sub_214A662DC;
    v59 = v37;
    sub_214A66290(&v58, &v55, &v56, &v57);
    v58 = sub_214A662DC;
    v59 = v38;
    sub_214A66290(&v58, &v55, &v56, &v57);
    v58 = sub_214A7E40C;
    v59 = v39;
    sub_214A66290(&v58, &v55, &v56, &v57);
    _os_log_impl(&dword_214A5E000, oslog, v42, "Generating a map snapshot for address:  %s", buf, 0xCu);
    sub_214A669DC(v22);
    sub_214A669DC(v23);
    sub_214CCFF04();
  }

  else
  {
  }

  v17 = *(v50 + 312);
  v18 = *(v50 + 296);
  v16 = *(v50 + 304);
  v12 = MEMORY[0x277D82BD8](oslog);
  (*(v16 + 8))(v17, v18, v12);
  v13 = sub_214BB5930();
  v20 = *v13;
  *(v50 + 328) = *v13;
  MEMORY[0x277D82BE0](v20);
  *(v50 + 16) = *(v50 + 208);
  *(v50 + 56) = v50 + 240;
  *(v50 + 24) = sub_214BB7C60;
  v19 = swift_continuation_init();
  *(v50 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36408);
  *(v50 + 112) = v19;
  *(v50 + 80) = MEMORY[0x277D85DD0];
  *(v50 + 88) = 1107296256;
  *(v50 + 92) = 0;
  *(v50 + 96) = sub_214BB85F8;
  *(v50 + 104) = &block_descriptor_18;
  [v30 startWithQueue:v20 completionHandler:?];

  return MEMORY[0x282200938](v50 + 16);
}

uint64_t sub_214BB7C60()
{
  v4 = *v0;
  v4[26] = *v0;
  v1 = v4[6];
  v4[42] = v1;
  if (v1)
  {
    v2 = sub_214BB8148;
  }

  else
  {
    v2 = sub_214BB7DB8;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214BB7DB8()
{
  v1 = v0[41];
  v0[26] = v0;
  v15 = v0[30];
  MEMORY[0x277D82BD8](v1);
  v0[31] = v15;
  *&v2 = MEMORY[0x277D82BE0](v15).n128_u64[0];
  if (v15)
  {
    v12 = [v15 image];
    MEMORY[0x277D82BD8](v15);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v10 = v14[40];
    v14[32] = v13;
    v3 = sub_214BB5AA8();
    v9 = *v3;
    MEMORY[0x277D82BE0](*v3);

    v8 = sub_214CCF544();
    [v9 setObject:v13 forKey:?];
    MEMORY[0x277D82BD8](v8);

    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v14[28]);
    v11 = v13;
  }

  else
  {
    v6 = v14[40];
    sub_214A731BC();
    MEMORY[0x277D82BE0](@"mappin.circle.fill");
    sub_214CCF564();
    v7 = sub_214B4D9C8();
    MEMORY[0x277D82BD8](@"mappin.circle.fill");
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v14[28]);
    v11 = v7;
  }

  v4 = *(v14[26] + 8);

  return v4(v11);
}

uint64_t sub_214BB8148()
{
  v7 = v0[42];
  v6 = v0[41];
  v0[26] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v6);

  v0[31] = 0;
  MEMORY[0x277D82BE0](0);
  v3 = v5[40];
  sub_214A731BC();
  MEMORY[0x277D82BE0](@"mappin.circle.fill");
  sub_214CCF564();
  v4 = sub_214B4D9C8();
  MEMORY[0x277D82BD8](@"mappin.circle.fill");
  MEMORY[0x277D82BD8](0);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v5[28]);

  v1 = *(v5[26] + 8);

  return v1(v4);
}

unint64_t sub_214BB84F0()
{
  v2 = qword_280C7CA88;
  if (!qword_280C7CA88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CA88);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BB8554()
{
  v2 = qword_280C7CBE8;
  if (!qword_280C7CBE8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CBE8);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_214BB85F8(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_214BB88FC();
    sub_214C01BE0(v11, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_214CD0404();
      __break(1u);
    }

    v12 = v7;
    v3 = sub_214BB88FC();
    sub_214C01C44(v11, &v12, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

id sub_214BB8768(uint64_t a1)
{
  v4 = [v1 initWithOptions_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_214BB87B8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_214CCFC24();
      v1 = sub_214CCF834();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_214CCFC24();
    return v2;
  }

  return result;
}

unint64_t sub_214BB88FC()
{
  v2 = qword_280C7CD10;
  if (!qword_280C7CD10)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD10);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BB8960()
{
  v2 = qword_280C7CD40;
  if (!qword_280C7CD40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BB89C4()
{
  v2 = qword_280C7CB38;
  if (!qword_280C7CB38)
  {
    sub_214CCFC24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BB8A44()
{
  v2 = qword_280C7CE60;
  if (!qword_280C7CE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36410);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE60);
    return WitnessTable;
  }

  return v2;
}

uint64_t static NSString.mailUISubsystem.getter()
{
  v1 = *sub_214A61A70();

  return v1;
}

id sub_214BB8B10()
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static NSString.mailUISubsystem.getter();
  v1 = sub_214CCF544();

  return v1;
}

uint64_t static Logger.mailUISubsystem.getter()
{
  v1 = *sub_214A619A8();

  return v1;
}

uint64_t sub_214BB8BB4()
{
  result = sub_214CCF614();
  qword_27CA36418 = result;
  qword_27CA36420 = v1;
  return result;
}

uint64_t *sub_214BB8BF8()
{
  if (qword_27CA34038 != -1)
  {
    swift_once();
  }

  return &qword_27CA36418;
}

uint64_t static String.delimiter.getter()
{
  v1 = *sub_214BB8BF8();

  return v1;
}

uint64_t sub_214BB8C94(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v18 = 0;
  v19 = 0;
  v13 = sub_214CCCE64();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v8 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v14 = &v6 - v8;
  v18 = v2;
  v19 = v3;
  v16 = v2;
  v17 = v3;
  v4 = sub_214BB8BF8();
  v9 = *v4;
  v10 = v4[1];

  sub_214CCCE54();

  sub_214B075A0();
  v15 = sub_214CCFF74();
  (*(v11 + 8))(v14, v13);
  return v15;
}

uint64_t String.mailMessageID.getter(uint64_t a1, uint64_t a2)
{
  sub_214BB8C94(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B50C54();
  sub_214CCFA74();

  if (v5)
  {
    v6 = v4;
  }

  else
  {

    v6 = a1;
  }

  return v6;
}

uint64_t String.uniqueIdentifier.getter(uint64_t a1, uint64_t a2)
{
  sub_214BB8C94(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214BB8FF0();
  sub_214CCF434();

  if (v5)
  {
    v6 = v4;
  }

  else
  {

    v6 = a1;
  }

  return v6;
}

unint64_t sub_214BB8FF0()
{
  v2 = qword_280C7CED8;
  if (!qword_280C7CED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CED8);
    return WitnessTable;
  }

  return v2;
}

uint64_t static String.encodeMessageID(using:)(void *a1)
{
  v20 = [a1 attributeSet];
  v21 = [v20 mailMessageID];
  if (v21)
  {
    v15 = sub_214CCF564();
    v16 = v1;
    MEMORY[0x277D82BD8](v21);
    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v20);
    v2 = sub_214BB8BF8();
    v8 = *v2;
    v9 = v2[1];

    v10 = MEMORY[0x21605D8B0](v17, v18, v8, v9);
    v12 = v3;

    v11 = [a1 uniqueIdentifier];
    v4 = sub_214CCF564();
    v13 = MEMORY[0x21605D8B0](v10, v12, v4);

    MEMORY[0x277D82BD8](v11);

    return v13;
  }

  else
  {
    v6 = [a1 uniqueIdentifier];
    v7 = sub_214CCF564();
    MEMORY[0x277D82BD8](v6);
    return v7;
  }
}

uint64_t static String.encodeMessageID<A>(using:)(void *a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v11 = v13;
  }

  else
  {
    swift_unknownObjectRelease();
    v11 = 0;
  }

  sub_214A69284();
  if (v11)
  {
    v5 = [v11 objectID];
    v6 = [v5 globalMessageID];
    MEMORY[0x277D82BD8](v5);
    v7 = sub_214BB94C0(v6);
    v8 = [v7 stringValue];
    v9 = sub_214CCF564();
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v11);
    return v9;
  }

  else
  {
    v2 = sub_214BB94C0([a1 conversationID]);
    v3 = [v2 stringValue];
    v4 = sub_214CCF564();
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
    return v4;
  }
}

uint64_t Array<A>.mailMessageQuery.getter(uint64_t a1)
{
  v47 = a1;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v48 = v60;
  v60[0] = 0;
  v60[1] = 0;
  v64 = 0;
  v65 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  v41 = 0;
  v27 = sub_214CCD254();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (v28[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v31 = &v11 - v30;
  v65 = &v11 - v30;
  v32 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v33 = &v11 - v32;
  v64 = &v11 - v32;
  Comparator = type metadata accessor for MailMessageQueryComparator();
  v35 = *(Comparator - 8);
  v36 = Comparator - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](Comparator);
  v38 = &v11 - v37;
  v39 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v40 = &v11 - v39;
  v63 = &v11 - v39;
  v42 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36428) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v43 = &v11 - v42;
  v62 = v5;
  type metadata accessor for CSQueryBuilder();
  v44 = CSQueryBuilder.__allocating_init()();
  v45 = sub_214B5E17C();

  v46 = sub_214B5E3B8();

  v61 = v46;

  v59 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36430);
  sub_214BB9C20();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36440);
    sub_214CD01B4();
    if ((*(v35 + 48))(v43, 1, Comparator) == 1)
    {
      break;
    }

    sub_214BB9CA8(v43, v40);
    sub_214BB9DC4(v40, v38);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v54 = *v38 & 1;
        sub_214B5E4E4(v54);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v6 = *v38;
        v20 = *(v38 + 1);
        v7 = *(v38 + 2);
        v19 = *(v38 + 3);
        v57 = v6;
        v58 = v20;
        v55 = v7;
        v56 = v19;
        sub_214B5E5F4(v6, v20, v7, v19);
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36448);
        v14 = &v38[*(v8 + 48)];
        v16 = v28[4];
        v15 = v28 + 4;
        v16(v33);
        (v16)(v31, v14, v27);
        v64 = v33;
        v65 = v31;
        sub_214B5ECA8(v33, v31);

        v18 = v28[1];
        v17 = v28 + 1;
        v18(v31, v27);
        v18(v33, v27);
      }
    }

    else
    {
      v24 = *v38;
      v25 = *(v38 + 1);
      v52 = v24;
      v53 = v25;

      if (v25)
      {
        v22 = v24;
        v23 = v25;
        v21 = v25;
        v50 = v24;
        v51 = v25;
        sub_214B5EBB8(v24, v25);
      }
    }

    sub_214BB9F94(v40);
  }

  sub_214A62278();
  v12 = sub_214B5F2E0();
  v13 = v9;

  return v12;
}

uint64_t type metadata accessor for MailMessageQueryComparator()
{
  v1 = qword_27CA36450;
  if (!qword_27CA36450)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_214BB9C20()
{
  v2 = qword_27CA36438;
  if (!qword_27CA36438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36430);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36438);
    return WitnessTable;
  }

  return v2;
}

char *sub_214BB9CA8(char *a1, char *a2)
{
  Comparator = type metadata accessor for MailMessageQueryComparator();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v4 = sub_214CCD254();
    v5 = *(*(v4 - 8) + 32);
    v5(a2, a1);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36448);
    (v5)(&a2[*(v2 + 48)], &a1[*(v2 + 48)], v4);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(Comparator - 8) + 64));
  }

  return a2;
}

char *sub_214BB9DC4(char *a1, char *a2)
{
  Comparator = type metadata accessor for MailMessageQueryComparator();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a2 = *a1;
      v6 = *(a1 + 1);

      *(a2 + 1) = v6;
      *(a2 + 2) = *(a1 + 2);
      v7 = *(a1 + 3);

      *(a2 + 3) = v7;
      swift_storeEnumTagMultiPayload();
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v4 = sub_214CCD254();
      v5 = *(*(v4 - 8) + 16);
      (v5)(a2, a1);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36448);
      v5(&a2[*(v2 + 48)], &a1[*(v2 + 48)], v4);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(Comparator - 8) + 64));
    }
  }

  else
  {
    *a2 = *a1;
    v8 = *(a1 + 1);

    *(a2 + 1) = v8;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_214BB9F94(uint64_t a1)
{
  type metadata accessor for MailMessageQueryComparator();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v3 = sub_214CCD254();
      v4 = *(*(v3 - 8) + 8);
      v4(a1);
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36448);
      (v4)(a1 + *(v1 + 48), v3);
    }
  }

  else
  {
  }

  return a1;
}

uint64_t sub_214BBA11C()
{
  v4 = sub_214B5CC3C();
  if (v0 <= 0x3F)
  {
    v4 = sub_214BBA214();
    if (v1 <= 0x3F)
    {
      v4 = sub_214BBA2CC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_214BBA214()
{
  v4 = qword_27CA36460;
  if (!qword_27CA36460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA352F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v4 = TupleTypeMetadata2;
    if (!v0)
    {
      v1 = TupleTypeMetadata2;
      atomic_store(TupleTypeMetadata2, &qword_27CA36460);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214BBA2CC()
{
  v4 = qword_27CA36468;
  if (!qword_27CA36468)
  {
    sub_214CCD254();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v4 = TupleTypeMetadata2;
    if (!v0)
    {
      v1 = TupleTypeMetadata2;
      atomic_store(TupleTypeMetadata2, &qword_27CA36468);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214BBA3A8()
{
  v2 = qword_27CA364A0;
  if (!qword_27CA364A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA364A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BBA424()
{
  sub_214BBA3A8();
  sub_214BBA46C();
  sub_214B035B8();
  return sub_214CD04B4();
}

unint64_t sub_214BBA46C()
{
  v2 = qword_27CA364A8;
  if (!qword_27CA364A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA364A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BBA4E8()
{
  result = sub_214CCF614();
  qword_27CA36470 = result;
  qword_27CA36478 = v1;
  return result;
}

uint64_t *sub_214BBA52C()
{
  if (qword_27CA34040 != -1)
  {
    swift_once();
  }

  return &qword_27CA36470;
}

uint64_t sub_214BBA58C()
{
  v1 = *sub_214BBA52C();

  return v1;
}

uint64_t sub_214BBA5C8()
{
  result = sub_214CCF614();
  qword_27CA36480 = result;
  qword_27CA36488 = v1;
  return result;
}

uint64_t *sub_214BBA60C()
{
  if (qword_27CA34048 != -1)
  {
    swift_once();
  }

  return &qword_27CA36480;
}

uint64_t sub_214BBA66C()
{
  v1 = *sub_214BBA60C();

  return v1;
}

uint64_t ManualSummaryError.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v6 = 0;
      v7 = 0;
      v8 = 2;
      break;
    case 2:
      v6 = 1;
      v7 = 0;
      v8 = 2;
      break;
    case 3:
      v6 = 2;
      v7 = 0;
      v8 = 2;
      break;
    case 4:
      v6 = 3;
      v7 = 0;
      v8 = 2;
      break;
    case 5:
      v6 = 4;
      v7 = 0;
      v8 = 2;
      break;
    case 6:
      v6 = 5;
      v7 = 0;
      v8 = 2;
      break;
    case 7:
      v6 = 6;
      v7 = 0;
      v8 = 2;
      break;
    case 8:
      v6 = 7;
      v7 = 0;
      v8 = 2;
      break;
    case 9:
      v6 = sub_214CCF614();
      v7 = v2;
      v8 = 0;
      break;
    case 10:
      v6 = 8;
      v7 = 0;
      v8 = 2;
      break;
    case 11:
      v6 = 9;
      v7 = 0;
      v8 = 2;
      break;
    case 12:
      v6 = 10;
      v7 = 0;
      v8 = 2;
      break;
    case 13:
      v6 = sub_214CCF614();
      v7 = v3;
      v8 = 1;
      break;
    default:
      v6 = 11;
      v7 = 0;
      v8 = 2;
      break;
  }

  sub_214BBA960(&v6, a2);
  return sub_214BBAA18(&v6);
}

uint64_t sub_214BBA960(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_214BBA9BC(*a1, v4, v5);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_214BBA9BC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 1)
  {
  }

  return result;
}

uint64_t sub_214BBAA50(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 1)
  {
  }

  return result;
}

void ManualSummaryError.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v27 = 0;
  v28 = 0;
  v40 = a1;
  v39 = [a1 code];
  ManualSummaryError.init(rawValue:)(v39, &v36);
  v18 = v36;
  v19 = v37;
  v20 = v38;
  if (v38 == 255)
  {
    MEMORY[0x277D82BD8](a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    return;
  }

  v15 = v38;
  v33 = v36;
  v34 = v37;
  v35 = v38;
  sub_214BBA9BC(v36, v37, v38);
  if (v20 != 1)
  {
    sub_214BBAA50(v18, v19, v20);
    goto LABEL_15;
  }

  v14 = [a1 userInfo];
  sub_214CCF314();
  sub_214BBA52C();

  sub_214CCF3D4();
  sub_214A61B48();

  if (v24)
  {
    if (swift_dynamicCast())
    {
      v10 = v21;
      v11 = v22;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    MEMORY[0x277D82BD8](v14);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    MEMORY[0x277D82BD8](v14);
    sub_214A7D24C(v23);
    v12 = 0;
    v13 = 0;
  }

  if (!v13)
  {
LABEL_15:
    sub_214BBA9BC(v18, v19, v20);
    if (v20)
    {
      sub_214BBAA50(v18, v19, v20);
    }

    else
    {

      v7 = [a1 userInfo];
      sub_214CCF314();
      v2 = sub_214BBA60C();
      v8 = *v2;
      v9 = v2[1];

      v29 = v8;
      v30 = v9;
      sub_214CCF3D4();
      sub_214A61B48();

      if (v32)
      {
        if (swift_dynamicCast())
        {
          v3 = v25;
          v4 = v26;
        }

        else
        {
          v3 = 0;
          v4 = 0;
        }

        MEMORY[0x277D82BD8](v7);
        v5 = v3;
        v6 = v4;
      }

      else
      {
        MEMORY[0x277D82BD8](v7);
        sub_214A7D24C(v31);
        v5 = 0;
        v6 = 0;
      }

      if (v6)
      {
        v27 = v5;
        v28 = v6;

        v41 = v5;
        v42 = v6;
        v43 = 0;

        goto LABEL_27;
      }
    }

    sub_214BBA9BC(v18, v19, v15);
    v41 = v18;
    v42 = v19;
    v43 = v15;
    goto LABEL_27;
  }

  v41 = v12;
  v42 = v13;
  v43 = 1;

LABEL_27:
  sub_214BBAA50(v18, v19, v15);
  sub_214BBA960(&v41, a2);
  MEMORY[0x277D82BD8](a1);
  sub_214BBAA18(&v41);
}

uint64_t ManualSummaryError.rawValue.getter()
{
  v3 = *v0;
  if (!*(v0 + 16))
  {
    return 9;
  }

  if (*(v0 + 16) == 1)
  {
    return 13;
  }

  if (v3 == 0)
  {
    return 1;
  }

  if (!(v3 ^ 1 | *(&v3 + 1)))
  {
    return 2;
  }

  if (!(v3 ^ 2 | *(&v3 + 1)))
  {
    return 3;
  }

  if (!(v3 ^ 3 | *(&v3 + 1)))
  {
    return 4;
  }

  if (!(v3 ^ 4 | *(&v3 + 1)))
  {
    return 5;
  }

  if (!(v3 ^ 5 | *(&v3 + 1)))
  {
    return 6;
  }

  if (!(v3 ^ 6 | *(&v3 + 1)))
  {
    return 7;
  }

  if (!(v3 ^ 7 | *(&v3 + 1)))
  {
    return 8;
  }

  if (!(v3 ^ 8 | *(&v3 + 1)))
  {
    return 10;
  }

  if (!(v3 ^ 9 | *(&v3 + 1)))
  {
    return 11;
  }

  if (v3 ^ 0xA | *(&v3 + 1))
  {
    return -1;
  }

  return 12;
}

uint64_t ManualSummaryError.thirdPartyMessage.getter()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  sub_214BBA9BC(*v0, v4, v5);
  if (v5 == 1)
  {
    return v3;
  }

  sub_214BBAA50(v3, v4, v5);
  return 0;
}

uint64_t ManualSummaryError.restrictedMessage.getter()
{
  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = *(v0 + 16);
  sub_214BBA9BC(*v0, v4, v5);
  if (!v5)
  {
    return v3;
  }

  sub_214BBAA50(v3, v4, v5);
  return 0;
}

uint64_t ManualSummaryError.errorUserInfo.getter()
{
  v17 = *v0;
  v18 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0);
      sub_214CD03C4();
      v12 = v1;
      v2 = sub_214BBA52C();
      sub_214A61AD0(v2, v12);

      v14 = MEMORY[0x277D837D0];
      v12[5] = MEMORY[0x277D837D0];
      v12[2] = v17;
      v12[3] = v18;
      v13 = *MEMORY[0x277CCA498];
      MEMORY[0x277D82BE0](*MEMORY[0x277CCA498]);
      v12[6] = sub_214CCF564();
      v12[7] = v3;

      v12[11] = v14;
      v12[8] = v17;
      v12[9] = v18;
      sub_214A63280();
      MEMORY[0x277D82BD8](v13);
      v15 = sub_214CCF344();

      return v15;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0);
      sub_214CD03C4();
      return sub_214CCF344();
    }
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0);
    sub_214CD03C4();
    v8 = v4;
    v5 = sub_214BBA60C();
    sub_214A61AD0(v5, v8);

    v10 = MEMORY[0x277D837D0];
    v8[5] = MEMORY[0x277D837D0];
    v8[2] = v17;
    v8[3] = v18;
    v9 = *MEMORY[0x277CCA498];
    MEMORY[0x277D82BE0](*MEMORY[0x277CCA498]);
    v8[6] = sub_214CCF564();
    v8[7] = v6;

    v8[11] = v10;
    v8[8] = v17;
    v8[9] = v18;
    sub_214A63280();
    MEMORY[0x277D82BD8](v9);
    v11 = sub_214CCF344();

    return v11;
  }
}

uint64_t sub_214BBB854()
{
  result = sub_214CCF614();
  qword_27CA36490 = result;
  qword_27CA36498 = v1;
  return result;
}

uint64_t *sub_214BBB898()
{
  if (qword_27CA34050 != -1)
  {
    swift_once();
  }

  return &qword_27CA36490;
}

uint64_t static ManualSummaryError.errorDomain.getter()
{
  v1 = *sub_214BBB898();

  return v1;
}

uint64_t sub_214BBB950@<X0>(uint64_t *a1@<X8>)
{
  result = ManualSummaryError.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_214BBBA14@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger;
  v2 = sub_214CCDA74();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_214BBBA88()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_originalContentMessageGenerator);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BBBAF0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_originalContentMessageGenerator);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214BBBBE0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_messages);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BBBC48(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_messages);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214BBBD38()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

double sub_214BBBDA0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x277D82BD8](a1);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void (*sub_214BBBE38(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = OBJC_IVAR____TtC6MailUI23ManualSummaryController_sourceViewController;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_214B520E8;
}

double sub_214BBBEE4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v8 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x277D82BE0](v7);
  v11 = v7;
  v10 = v7;
  sub_214BBC098(v8);
  sub_214BC64F8(v8, v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

double sub_214BBBFC0(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v9 = &v4 - v6;
  sub_214BBC0FC(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x277D82BE0](v8);
  v11 = v8;
  v10 = v8;
  sub_214BBC224(v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

uint64_t sub_214BBC098@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryRequest);
  swift_beginAccess();
  sub_214BBC0FC(v3, a1);
  return swift_endAccess();
}

void *sub_214BBC0FC(const void *a1, void *a2)
{
  v6 = sub_214CCD874();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214BBC224(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_214BBC0FC(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryRequest);
  v7 = &v9;
  swift_beginAccess();
  sub_214BBC308(v5, v6);
  swift_endAccess();
  return sub_214BBC530(v8);
}

void *sub_214BBC308(const void *a1, void *a2)
{
  v7 = sub_214CCD874();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214BBC530(uint64_t a1)
{
  v3 = sub_214CCD874();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

double sub_214BBC644@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v5 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v8 = &v4 - v6;
  v7 = *v2;
  MEMORY[0x277D82BE0](v7);
  v11 = v7;
  v10 = v7;
  sub_214BBC7F8(v8);
  sub_214BC63D0(v8, v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

double sub_214BBC720(uint64_t a1, uint64_t *a2)
{
  v5 = a1;
  v7 = a2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v9 = &v4 - v6;
  sub_214BBC85C(v2, &v4 - v6);
  v8 = *v7;
  MEMORY[0x277D82BE0](v8);
  v11 = v8;
  v10 = v8;
  sub_214BBC984(v9);
  *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  return result;
}

uint64_t sub_214BBC7F8@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryResponse);
  swift_beginAccess();
  sub_214BBC85C(v3, a1);
  return swift_endAccess();
}

void *sub_214BBC85C(const void *a1, void *a2)
{
  v6 = sub_214CCD8D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214BBC984(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_214BBC85C(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryResponse);
  v7 = &v9;
  swift_beginAccess();
  sub_214BBCA68(v5, v6);
  swift_endAccess();
  return sub_214BBCC90(v8);
}

void *sub_214BBCA68(const void *a1, void *a2)
{
  v7 = sub_214CCD8D4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214BBCC90(uint64_t a1)
{
  v3 = sub_214CCD8D4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

char *ManualSummaryController.init(messages:sourceViewController:)(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v14 = a1;
  v13 = a2;
  v8 = type metadata accessor for ManualSummaryController();
  static Logger.mailUILogger<A>(for:)();
  v5 = OBJC_IVAR____TtC6MailUI23ManualSummaryController_originalContentMessageGenerator;
  type metadata accessor for OriginalContentMessageGenerator();
  *v5 = OriginalContentMessageGenerator.__allocating_init()();
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryRequest;
  v2 = sub_214CCD874();
  (*(*(v2 - 8) + 56))(&v15[v6], 1);
  v7 = OBJC_IVAR____TtC6MailUI23ManualSummaryController_summaryResponse;
  v3 = sub_214CCD8D4();
  (*(*(v3 - 8) + 56))(&v15[v7], 1);

  *&v15[OBJC_IVAR____TtC6MailUI23ManualSummaryController_messages] = a1;
  MEMORY[0x277D82BE0](a2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x277D82BD8](a2);
  swift_endAccess();
  v12.receiver = v15;
  v12.super_class = v8;
  v11 = objc_msgSendSuper2(&v12, sel_init);
  MEMORY[0x277D82BE0](v11);
  v15 = v11;
  MEMORY[0x277D82BD8](a2);

  MEMORY[0x277D82BD8](v15);
  return v11;
}

uint64_t type metadata accessor for ManualSummaryController()
{
  v1 = qword_280C7DBE0;
  if (!qword_280C7DBE0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_214BBD100(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v71 = a2;
  v74 = a3;
  v79 = sub_214BBE188;
  v82 = sub_214BBE0B8;
  v84 = sub_214B26858;
  v87 = sub_214A7E5D4;
  v89 = sub_214A7E854;
  v92 = sub_214A66754;
  v94 = sub_214A66720;
  v96 = sub_214A66714;
  v100 = sub_214A664B8;
  v102 = sub_214A662DC;
  v104 = sub_214A662DC;
  v106 = sub_214A662E4;
  v108 = sub_214A662DC;
  v110 = sub_214A662DC;
  v112 = sub_214A7E40C;
  v114 = sub_214A662DC;
  v116 = sub_214A662DC;
  v119 = sub_214A66358;
  v67 = &unk_214CF1D38;
  v133 = 0;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  v68 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v69 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v70 = v59 - v69;
  v72 = sub_214CCDA74();
  v75 = *(v72 - 8);
  v73 = v72 - 8;
  v4 = MEMORY[0x28223BE20](v81);
  v76 = v59 - v5;
  v133 = v6 & 1;
  v131 = v7;
  v132 = v74;
  v130 = v78;
  (*(v75 + 16))(v59 - v5, v78 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v4);
  MEMORY[0x277D82BE0](v78);
  v77 = 24;
  v98 = 7;
  v8 = swift_allocObject();
  v9 = v78;
  v83 = v8;
  *(v8 + 16) = v78;
  MEMORY[0x277D82BE0](v9);
  v80 = swift_allocObject();
  *(v80 + 16) = v78;

  v97 = 32;
  v10 = swift_allocObject();
  v11 = v80;
  v88 = v10;
  *(v10 + 16) = v79;
  *(v10 + 24) = v11;

  v91 = 17;
  v93 = swift_allocObject();
  *(v93 + 16) = v81;
  v123 = sub_214CCDA54();
  v124 = sub_214CCFBB4();
  v103 = swift_allocObject();
  *(v103 + 16) = 0;
  v105 = swift_allocObject();
  v86 = 8;
  *(v105 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v83;
  v85 = v12;
  *(v12 + 16) = v82;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v85;
  v107 = v14;
  *(v14 + 16) = v84;
  *(v14 + 24) = v15;
  v109 = swift_allocObject();
  *(v109 + 16) = 32;
  v111 = swift_allocObject();
  *(v111 + 16) = v86;
  v16 = swift_allocObject();
  v17 = v88;
  v90 = v16;
  *(v16 + 16) = v87;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v90;
  v113 = v18;
  *(v18 + 16) = v89;
  *(v18 + 24) = v19;
  v115 = swift_allocObject();
  *(v115 + 16) = 0;
  v117 = swift_allocObject();
  *(v117 + 16) = 4;
  v20 = swift_allocObject();
  v21 = v93;
  v95 = v20;
  *(v20 + 16) = v92;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v95;
  v99 = v22;
  *(v22 + 16) = v94;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v99;
  v101 = v24;
  *(v24 + 16) = v96;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v101;
  v120 = v26;
  *(v26 + 16) = v100;
  *(v26 + 24) = v27;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v118 = sub_214CD03C4();
  v121 = v28;

  v29 = v103;
  v30 = v121;
  *v121 = v102;
  v30[1] = v29;

  v31 = v105;
  v32 = v121;
  v121[2] = v104;
  v32[3] = v31;

  v33 = v107;
  v34 = v121;
  v121[4] = v106;
  v34[5] = v33;

  v35 = v109;
  v36 = v121;
  v121[6] = v108;
  v36[7] = v35;

  v37 = v111;
  v38 = v121;
  v121[8] = v110;
  v38[9] = v37;

  v39 = v113;
  v40 = v121;
  v121[10] = v112;
  v40[11] = v39;

  v41 = v115;
  v42 = v121;
  v121[12] = v114;
  v42[13] = v41;

  v43 = v117;
  v44 = v121;
  v121[14] = v116;
  v44[15] = v43;

  v45 = v120;
  v46 = v121;
  v121[16] = v119;
  v46[17] = v45;
  sub_214A63280();

  if (os_log_type_enabled(v123, v124))
  {
    v47 = v68;
    v60 = sub_214CCFF24();
    v59[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v61 = sub_214A632C4(0);
    v62 = sub_214A632C4(1);
    v63 = &v129;
    v129 = v60;
    v64 = &v128;
    v128 = v61;
    v65 = &v127;
    v127 = v62;
    sub_214A6627C(2, &v129);
    sub_214A6627C(3, v63);
    v125 = v102;
    v126 = v103;
    sub_214A66290(&v125, v63, v64, v65);
    v66 = v47;
    if (v47)
    {

      __break(1u);
    }

    else
    {
      v125 = v104;
      v126 = v105;
      sub_214A66290(&v125, &v129, &v128, &v127);
      v59[7] = 0;
      v125 = v106;
      v126 = v107;
      sub_214A66290(&v125, &v129, &v128, &v127);
      v59[6] = 0;
      v125 = v108;
      v126 = v109;
      sub_214A66290(&v125, &v129, &v128, &v127);
      v59[5] = 0;
      v125 = v110;
      v126 = v111;
      sub_214A66290(&v125, &v129, &v128, &v127);
      v59[4] = 0;
      v125 = v112;
      v126 = v113;
      sub_214A66290(&v125, &v129, &v128, &v127);
      v59[3] = 0;
      v125 = v114;
      v126 = v115;
      sub_214A66290(&v125, &v129, &v128, &v127);
      v59[2] = 0;
      v125 = v116;
      v126 = v117;
      sub_214A66290(&v125, &v129, &v128, &v127);
      v59[1] = 0;
      v125 = v119;
      v126 = v120;
      sub_214A66290(&v125, &v129, &v128, &v127);
      _os_log_impl(&dword_214A5E000, v123, v124, "Attempting to manually summarize %ld message(s): %s, useExternalIntelligence: %{BOOL}d", v60, 0x1Cu);
      sub_214A669DC(v61);
      sub_214A669DC(v62);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v48 = MEMORY[0x277D82BD8](v123);
  (*(v75 + 8))(v76, v72, v48);
  v59[0] = 0;
  v49 = sub_214CCF994();
  (*(*(v49 - 8) + 56))(v70, 1);
  MEMORY[0x277D82BE0](v78);

  v50 = swift_allocObject();
  v51 = v78;
  v52 = v71;
  v53 = v74;
  v54 = v81;
  v55 = v59[0];
  v56 = v70;
  v57 = v67;
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  *(v50 + 48) = v53;
  *(v50 + 56) = v54;
  sub_214B88C30(v55, v55, v56, v57, v50, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214BBE060()
{
  sub_214BBBBE0();
  sub_214B71394();
  v1 = sub_214CCF854();

  return v1;
}

uint64_t *sub_214BBE0C0@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_214BBBBE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36238);
  sub_214BC68D8();
  sub_214BC693C();
  v2 = sub_214CCF6F4();
  result = &v4;
  sub_214A62278();
  *a1 = v2;
  return result;
}

id sub_214BBE190@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 searchableMessageID];
  *a2 = result;
  return result;
}

uint64_t sub_214BBE1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 33) = a7 & 1;
  *(v7 + 280) = a6;
  *(v7 + 272) = a5;
  *(v7 + 264) = a4;
  *(v7 + 112) = v7;
  *(v7 + 120) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 648) = 0;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 152) = 0;
  *(v7 + 656) = 0;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 96) = 0;
  *(v7 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364D8);
  *(v7 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  v8 = sub_214CCD854();
  *(v7 + 312) = v8;
  *(v7 + 320) = *(v8 - 8);
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0);
  *(v7 + 344) = swift_task_alloc();
  v9 = sub_214CCD834();
  *(v7 + 352) = v9;
  *(v7 + 360) = *(v9 - 8);
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34250);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  v10 = sub_214CCD8D4();
  *(v7 + 416) = v10;
  v14 = *(v10 - 8);
  *(v7 + 424) = v14;
  *(v7 + 432) = *(v14 + 64);
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  v11 = sub_214CCDA74();
  *(v7 + 456) = v11;
  *(v7 + 464) = *(v11 - 8);
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();
  v12 = sub_214CCCF24();
  *(v7 + 520) = v12;
  *(v7 + 528) = *(v12 - 8);
  *(v7 + 536) = swift_task_alloc();
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 120) = a4;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 648) = a7 & 1;

  return MEMORY[0x2822009F8](sub_214BBE754, 0);
}

uint64_t sub_214BBE754()
{
  v0[14] = v0;
  v0[70] = sub_214BBBA88();
  v4 = sub_214BBBBE0();
  v0[71] = v4;
  v1 = swift_task_alloc();
  *(v3 + 576) = v1;
  *v1 = *(v3 + 112);
  v1[1] = sub_214BBE844;

  return sub_214C814BC(v4, 1);
}

uint64_t sub_214BBE844(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[73] = a1;
  v5[74] = v1;

  if (v1)
  {
    v3 = sub_214BC1C2C;
  }

  else
  {

    v3 = sub_214BBE9E4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_214BBE9E4()
{
  v35 = v0;
  v1 = v0[74];
  v2 = v0[73];
  v0[14] = v0;
  v0[17] = v2;
  v0[18] = v2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA381C0);
  v30 = sub_214CCD9D4();
  v3 = sub_214BC6634();
  result = sub_214A6E4F4(sub_214BC36A8, 0, v29, v30, MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v31);
  v32 = result;
  v0[75] = result;
  if (!v1)
  {
    *(v28 + 152) = result;
    *(v28 + 160) = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364F8);
    sub_214BC66BC();
    if (sub_214CCFA94())
    {
      (*(*(v28 + 464) + 16))(*(v28 + 480), *(v28 + 264) + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, *(v28 + 456));
      oslog = sub_214CCDA54();
      v21 = sub_214CCFBA4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      v23 = sub_214CD03C4();
      if (os_log_type_enabled(oslog, v21))
      {
        buf = sub_214CCFF24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v18 = sub_214A632C4(0);
        v19 = sub_214A632C4(0);
        *(v28 + 168) = buf;
        *(v28 + 176) = v18;
        *(v28 + 184) = v19;
        sub_214A6627C(0, (v28 + 168));
        sub_214A6627C(0, (v28 + 168));
        *(v28 + 192) = v23;
        v20 = swift_task_alloc();
        v20[2] = v28 + 168;
        v20[3] = v28 + 176;
        v20[4] = v28 + 184;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
        sub_214A810E0();
        sub_214CCF764();

        _os_log_impl(&dword_214A5E000, oslog, v21, "Unable to generate summary: No summarizable messages", buf, 2u);
        sub_214A669DC(v18);
        sub_214A669DC(v19);
        sub_214CCFF04();
      }

      v14 = *(v28 + 480);
      v15 = *(v28 + 456);
      v16 = *(v28 + 272);
      v13 = *(v28 + 464);
      v11 = MEMORY[0x277D82BD8](oslog);
      (*(v13 + 8))(v14, v15, v11);

      v33[0] = 2;
      v33[1] = 0;
      v34 = 2;
      v16(0, v33);

      v12 = *(*(v28 + 112) + 8);

      return v12();
    }

    else if ([objc_opt_self() preferenceEnabled_])
    {
      v5 = swift_task_alloc();
      *(v28 + 608) = v5;
      *v5 = *(v28 + 112);
      v5[1] = sub_214BBF32C;
      v6 = *(v28 + 552);

      return sub_214BC39E4(v6, 3.0);
    }

    else
    {
      v25 = *(v28 + 344);
      v24 = *(v28 + 336);
      v26 = *(v28 + 328);
      v27 = *(v28 + 33);

      sub_214BC38D4(v27 & 1, v24);
      sub_214CCD864();
      v7 = sub_214CCD874();
      (*(*(v7 - 8) + 56))(v25, 0, 1);
      sub_214BBC224(v25);
      sub_214CCD904();
      *(v28 + 624) = sub_214CCD8F4();
      sub_214BC38D4(v27 & 1, v26);
      v8 = swift_task_alloc();
      *(v28 + 632) = v8;
      *v8 = *(v28 + 112);
      v8[1] = sub_214BC01E8;
      v9 = *(v28 + 440);
      v10 = *(v28 + 328);

      return MEMORY[0x2821A2B38](v9, v32, v10);
    }
  }

  return result;
}

uint64_t sub_214BBF32C()
{
  v4 = *v1;
  *(v4 + 112) = *v1;
  *(v4 + 616) = v0;

  if (v0)
  {
    v2 = sub_214BC24E8;
  }

  else
  {
    v2 = sub_214BBF4A0;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214BBF4A0()
{
  v56 = v0;
  *(v0 + 112) = v0;
  if ([objc_opt_self() preferenceEnabled_] & 1) == 0 || (*(v51 + 33))
  {
    (*(*(v51 + 464) + 16))(*(v51 + 504), *(v51 + 264) + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, *(v51 + 456));
    log = sub_214CCDA54();
    v37 = sub_214CCFBB4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v39 = sub_214CD03C4();
    if (!os_log_type_enabled(log, v37))
    {

      goto LABEL_16;
    }

    v4 = *(v51 + 616);
    v33 = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v34 = sub_214A632C4(0);
    v35 = sub_214A632C4(0);
    *(v51 + 200) = v33;
    *(v51 + 208) = v34;
    *(v51 + 216) = v35;
    sub_214A6627C(0, (v51 + 200));
    sub_214A6627C(0, (v51 + 200));
    *(v51 + 224) = v39;
    v36 = swift_task_alloc();
    v36[2] = v51 + 200;
    v36[3] = v51 + 208;
    v36[4] = v51 + 216;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    if (!v4)
    {

      _os_log_impl(&dword_214A5E000, log, v37, "Received *fake* summary.", v33, 2u);
      sub_214A669DC(v34);
      sub_214A669DC(v35);
      sub_214CCFF04();

LABEL_16:
      v26 = *(v51 + 552);
      v27 = *(v51 + 544);
      v24 = *(v51 + 520);
      v10 = *(v51 + 504);
      v11 = *(v51 + 456);
      v31 = *(v51 + 448);
      v32 = *(v51 + 416);
      v16 = *(v51 + 408);
      v17 = *(v51 + 400);
      v18 = *(v51 + 392);
      v19 = *(v51 + 376);
      v15 = *(v51 + 352);
      v21 = *(v51 + 344);
      v20 = *(v51 + 336);
      v23 = *(v51 + 304);
      v28 = *(v51 + 33);
      v29 = *(v51 + 272);
      v12 = *(v51 + 528);
      v9 = *(v51 + 464);
      v22 = *(v51 + 424);
      v14 = *(v51 + 360);
      v5 = MEMORY[0x277D82BD8](log);
      (*(v9 + 8))(v10, v11, v5);
      v13 = *(v12 + 56);
      v13(v16, 1, 1, v24);
      v25 = *(v12 + 16);
      v25(v17, v26, v24);
      (v13)(v17);
      v13(v18, 1, 1, v24);
      (*(v14 + 104))(v19, *MEMORY[0x277D421E0], v15);
      sub_214CCD884();

      sub_214BC38D4(v28 & 1, v20);
      sub_214CCD864();
      v6 = sub_214CCD874();
      (*(*(v6 - 8) + 56))(v21, 0, 1);
      sub_214BBC224(v21);
      (*(v22 + 16))(v23, v31, v32);
      (*(v22 + 56))(v23, 0, 1, v32);
      sub_214BBC984(v23);

      sub_214BC6874();
      sub_214AF7FCC();
      v25(v27, v26, v24);
      v7 = sub_214CCFC84();
      v30 = sub_214BC36E4(v7, 0, v28 & 1);
      v52[0] = 0;
      v52[1] = 0;
      v53 = -1;
      v29(v30, v52);
      MEMORY[0x277D82BD8](v30);

      (*(v22 + 8))(v31, v32);
      goto LABEL_17;
    }
  }

  (*(*(v51 + 464) + 16))(*(v51 + 512), *(v51 + 264) + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, *(v51 + 456));
  oslog = sub_214CCDA54();
  v48 = sub_214CCFBB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v50 = sub_214CD03C4();
  if (os_log_type_enabled(oslog, v48))
  {
    v1 = *(v51 + 616);
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v45 = sub_214A632C4(0);
    v46 = sub_214A632C4(0);
    *(v51 + 232) = buf;
    *(v51 + 240) = v45;
    *(v51 + 248) = v46;
    sub_214A6627C(0, (v51 + 232));
    sub_214A6627C(0, (v51 + 232));
    *(v51 + 256) = v50;
    v47 = swift_task_alloc();
    v47[2] = v51 + 232;
    v47[3] = v51 + 240;
    v47[4] = v51 + 248;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    if (v1)
    {
    }

    _os_log_impl(&dword_214A5E000, oslog, v48, "Simulating sensitive content error to trigger the external intelligence flow", buf, 2u);
    sub_214A669DC(v45);
    sub_214A669DC(v46);
    sub_214CCFF04();
  }

  else
  {
  }

  v41 = *(v51 + 512);
  v42 = *(v51 + 456);
  v43 = *(v51 + 272);
  v40 = *(v51 + 464);
  v3 = MEMORY[0x277D82BD8](oslog);
  (*(v40 + 8))(v41, v42, v3);

  v54[0] = 5;
  v54[1] = 0;
  v55 = 2;
  v43(0, v54);

LABEL_17:
  (*(*(v51 + 528) + 8))(*(v51 + 552), *(v51 + 520));

  v8 = *(*(v51 + 112) + 8);

  return v8();
}

uint64_t sub_214BC01E8()
{
  v4 = *v1;
  v4[14] = *v1;
  v4[80] = v0;

  if (v0)
  {
    v2 = sub_214BC2DAC;
  }

  else
  {
    (*(v4[40] + 8))(v4[41], v4[39]);

    v2 = sub_214BC0394;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214BC0394()
{
  v122 = v0;
  v104 = *(v0 + 424);
  v106 = *(v0 + 416);
  v103 = *(v0 + 304);
  v105 = *(v0 + 296);
  *(v0 + 112) = v0;
  v102 = *(v104 + 16);
  v102();
  (*(v104 + 56))(v103, 0);
  sub_214BBC984(v103);
  sub_214BBC7F8(v105);
  if ((*(v104 + 48))(v105, 1, v106))
  {
    sub_214BBCC90(*(v0 + 296));
    v101 = 2;
  }

  else
  {
    v99 = *(v0 + 448);
    v98 = *(v0 + 416);
    v96 = *(v0 + 296);
    v97 = *(v0 + 424);
    (v102)(v99);
    sub_214BBCC90(v96);
    v100 = sub_214CCD8B4();
    (*(v97 + 8))(v99, v98);
    v101 = v100;
  }

  if (v101 == 2)
  {
    v95 = 0;
  }

  else
  {
    v95 = v101;
  }

  v91 = *(v0 + 376);
  v90 = *(v0 + 368);
  v92 = *(v0 + 352);
  v89 = *(v0 + 360);
  *(v0 + 656) = (v95 ^ 1) & 1;
  sub_214CCD8C4();
  (*(v89 + 104))(v90, *MEMORY[0x277D421E0], v92);
  sub_214BC6744();
  v94 = sub_214CD03F4();
  v93 = *(v89 + 8);
  v93(v90, v92);
  v93(v91, v92);
  if (v94)
  {
    v88 = *(v0 + 520);
    v87 = *(v0 + 384);
    v86 = *(v0 + 528);
    sub_214CCD894();
    if ((*(v86 + 48))(v87, 1, v88) != 1)
    {
      v81 = *(v0 + 544);
      v79 = *(v0 + 536);
      v78 = *(v0 + 520);
      v77 = *(v0 + 528);
      (*(v77 + 32))();
      sub_214AF7FCC();
      v80 = *(v77 + 16);
      v80(v81, v79, v78);
      v82 = sub_214CCFC84();
      v83 = [v82 string];
      *(v0 + 80) = sub_214CCF564();
      *(v0 + 88) = v1;
      MEMORY[0x277D82BD8](v82);
      MEMORY[0x277D82BD8](v83);
      v84 = [objc_opt_self() currentDevice];
      v85 = [v84 isInternal];
      MEMORY[0x277D82BD8](v84);
      if (v85)
      {
        v70 = objc_opt_self();

        v71 = sub_214CCF544();

        v72 = [v70 ec:v71 partiallyRedactedStringForSubjectOrSummary:?];
        MEMORY[0x277D82BD8](v71);
        v73 = sub_214CCF564();
        v74 = v2;
        v3 = MEMORY[0x277D82BD8](v72);
        v75 = v73;
        v76 = v74;
      }

      else
      {
        v65 = objc_opt_self();

        v66 = sub_214CCF544();

        v67 = [v65 fullyRedactedStringForString_];
        MEMORY[0x277D82BD8](v66);
        v68 = sub_214CCF564();
        v69 = v4;
        v3 = MEMORY[0x277D82BD8](v67);
        v75 = v68;
        v76 = v69;
      }

      v5 = *(v0 + 496);
      v6 = *(v0 + 464);
      v7 = *(v0 + 456);
      v8 = *(v0 + 264);
      *(v0 + 96) = v75;
      *(v0 + 104) = v76;
      (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v7, v3);

      v57 = swift_allocObject();
      *(v57 + 16) = v75;
      *(v57 + 24) = v76;
      oslog = sub_214CCDA54();
      v64 = sub_214CCFBB4();
      v59 = swift_allocObject();
      *(v59 + 16) = 34;
      v60 = swift_allocObject();
      *(v60 + 16) = 8;
      v58 = swift_allocObject();
      *(v58 + 16) = sub_214B21C04;
      *(v58 + 24) = v57;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_214A7E854;
      *(v61 + 24) = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      sub_214CD03C4();
      v62 = v9;

      *v62 = sub_214A662DC;
      v62[1] = v59;

      v62[2] = sub_214A662DC;
      v62[3] = v60;

      v62[4] = sub_214A7E40C;
      v62[5] = v61;
      sub_214A63280();

      if (os_log_type_enabled(oslog, v64))
      {
        v10 = *(v0 + 640);
        buf = sub_214CCFF24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v55 = sub_214A632C4(0);
        v56 = sub_214A632C4(1);
        v117 = buf;
        v118 = v55;
        v119 = v56;
        sub_214A6627C(2, &v117);
        sub_214A6627C(1, &v117);
        v120 = sub_214A662DC;
        v121 = v59;
        sub_214A66290(&v120, &v117, &v118, &v119);
        if (v10)
        {
        }

        v120 = sub_214A662DC;
        v121 = v60;
        sub_214A66290(&v120, &v117, &v118, &v119);
        v120 = sub_214A7E40C;
        v121 = v61;
        sub_214A66290(&v120, &v117, &v118, &v119);
        _os_log_impl(&dword_214A5E000, oslog, v64, "Received summary: %{public}s", buf, 0xCu);
        sub_214A669DC(v55);
        sub_214A669DC(v56);
        sub_214CCFF04();
      }

      else
      {
      }

      v47 = *(v0 + 544);
      v52 = *(v0 + 536);
      v53 = *(v0 + 520);
      v45 = *(v0 + 496);
      v46 = *(v0 + 456);
      v48 = *(v0 + 33);
      v49 = *(v0 + 272);
      v51 = *(v0 + 528);
      v44 = *(v0 + 464);
      v12 = MEMORY[0x277D82BD8](oslog);
      (*(v44 + 8))(v45, v46, v12);

      sub_214BC6874();
      v80(v47, v52, v53);
      v13 = sub_214CCFC84();
      v50 = sub_214BC36E4(v13, (v95 ^ 1) & 1, v48 & 1);
      v115[0] = 0;
      v115[1] = 0;
      v116 = -1;
      v49(v50, v115);
      MEMORY[0x277D82BD8](v50);

      (*(v51 + 8))(v52, v53);
      goto LABEL_25;
    }

    sub_214AF7F24(*(v0 + 384));
  }

  v34 = *(v0 + 448);
  v31 = *(v0 + 440);
  v35 = *(v0 + 416);
  v32 = *(v0 + 424);
  (*(*(v0 + 464) + 16))(*(v0 + 488), *(v0 + 264) + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, *(v0 + 456));
  (v102)(v34, v31, v35);
  v33 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v36 = swift_allocObject();
  (*(v32 + 32))(v36 + v33, v34, v35);
  log = sub_214CCDA54();
  v43 = sub_214CCFBA4();
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_214BC67C4;
  *(v37 + 24) = v36;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_214A7E854;
  *(v40 + 24) = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v41 = v14;

  *v41 = sub_214A662DC;
  v41[1] = v38;

  v41[2] = sub_214A662DC;
  v41[3] = v39;

  v41[4] = sub_214A7E40C;
  v41[5] = v40;
  sub_214A63280();

  if (os_log_type_enabled(log, v43))
  {
    v15 = *(v0 + 640);
    v28 = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v29 = sub_214A632C4(0);
    v30 = sub_214A632C4(1);
    v110 = v28;
    v111 = v29;
    v112 = v30;
    sub_214A6627C(2, &v110);
    sub_214A6627C(1, &v110);
    v113 = sub_214A662DC;
    v114 = v38;
    sub_214A66290(&v113, &v110, &v111, &v112);
    if (v15)
    {
    }

    v113 = sub_214A662DC;
    v114 = v39;
    sub_214A66290(&v113, &v110, &v111, &v112);
    v113 = sub_214A7E40C;
    v114 = v40;
    sub_214A66290(&v113, &v110, &v111, &v112);
    _os_log_impl(&dword_214A5E000, log, v43, "Unable to generate summary: %s", v28, 0xCu);
    sub_214A669DC(v29);
    sub_214A669DC(v30);
    sub_214CCFF04();
  }

  else
  {
  }

  v21 = *(v0 + 488);
  v22 = *(v0 + 456);
  v23 = *(v0 + 288);
  v24 = *(v0 + 272);
  v20 = *(v0 + 464);
  v16 = MEMORY[0x277D82BD8](log);
  (*(v20 + 8))(v21, v22, v16);
  sub_214CCD8A4();
  sub_214BC4C04(v23, &v107);
  sub_214BC586C(v23);
  v25 = v107;
  v26 = v108;
  v17 = v108;
  v18 = v109;
  v27 = v109;
  *(v0 + 16) = v107;
  *(v0 + 24) = v17;
  *(v0 + 32) = v18;

  sub_214BBA9BC(v25, v26, v27);
  *(v0 + 40) = v25;
  *(v0 + 48) = v26;
  *(v0 + 56) = v27;
  v24(0);
  sub_214BC6828(v0 + 40);

  sub_214BBAA50(v25, v26, v27);
LABEL_25:
  (*(*(v0 + 424) + 8))(*(v0 + 440), *(v0 + 416));

  v19 = *(*(v0 + 112) + 8);

  return v19();
}

uint64_t sub_214BC1C2C()
{
  v36 = v0;
  v0[14] = v0;

  v19 = v0[74];
  v1 = v0[59];
  v16 = v0[58];
  v18 = v0[57];
  v17 = v0[33];
  v2 = v19;
  v0[16] = v19;
  (*(v16 + 16))(v1, v17 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v18);
  v3 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_214B1C228();

  oslog = sub_214CCDA54();
  v28 = sub_214CCFBA4();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214BC6620;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214BC6628;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214B21624;
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v26 = v4;

  *v26 = sub_214A662DC;
  v26[1] = v23;

  v26[2] = sub_214A662DC;
  v26[3] = v24;

  v26[4] = sub_214B217B4;
  v26[5] = v25;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v28))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v13 = sub_214A632C4(1);
    v14 = sub_214A632C4(0);
    v31 = buf;
    v32 = v13;
    v33 = v14;
    sub_214A6627C(2, &v31);
    sub_214A6627C(1, &v31);
    v34 = sub_214A662DC;
    v35 = v23;
    sub_214A66290(&v34, &v31, &v32, &v33);
    v34 = sub_214A662DC;
    v35 = v24;
    sub_214A66290(&v34, &v31, &v32, &v33);
    v34 = sub_214B217B4;
    v35 = v25;
    sub_214A66290(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_214A5E000, oslog, v28, "Unable to generate summary for mail messages: %@", buf, 0xCu);
    sub_214A669DC(v13);
    sub_214A669DC(v14);
    sub_214CCFF04();
  }

  else
  {
  }

  v9 = v15[59];
  v10 = v15[57];
  v11 = v15[34];
  v8 = v15[58];
  v5 = MEMORY[0x277D82BD8](oslog);
  (*(v8 + 8))(v9, v10, v5);

  v29[0] = 3;
  v29[1] = 0;
  v30 = 2;
  v11(0, v29);

  v6 = *(v15[14] + 8);

  return v6();
}

uint64_t sub_214BC24E8()
{
  v36 = v0;
  v0[14] = v0;

  v19 = v0[77];
  v1 = v0[59];
  v16 = v0[58];
  v18 = v0[57];
  v17 = v0[33];
  v2 = v19;
  v0[16] = v19;
  (*(v16 + 16))(v1, v17 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v18);
  v3 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  sub_214B1C228();

  oslog = sub_214CCDA54();
  v28 = sub_214CCFBA4();
  v23 = swift_allocObject();
  *(v23 + 16) = 64;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_214BC6620;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_214BC6628;
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214B21624;
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v26 = v4;

  *v26 = sub_214A662DC;
  v26[1] = v23;

  v26[2] = sub_214A662DC;
  v26[3] = v24;

  v26[4] = sub_214B217B4;
  v26[5] = v25;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v28))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v13 = sub_214A632C4(1);
    v14 = sub_214A632C4(0);
    v31 = buf;
    v32 = v13;
    v33 = v14;
    sub_214A6627C(2, &v31);
    sub_214A6627C(1, &v31);
    v34 = sub_214A662DC;
    v35 = v23;
    sub_214A66290(&v34, &v31, &v32, &v33);
    v34 = sub_214A662DC;
    v35 = v24;
    sub_214A66290(&v34, &v31, &v32, &v33);
    v34 = sub_214B217B4;
    v35 = v25;
    sub_214A66290(&v34, &v31, &v32, &v33);
    _os_log_impl(&dword_214A5E000, oslog, v28, "Unable to generate summary for mail messages: %@", buf, 0xCu);
    sub_214A669DC(v13);
    sub_214A669DC(v14);
    sub_214CCFF04();
  }

  else
  {
  }

  v9 = v15[59];
  v10 = v15[57];
  v11 = v15[34];
  v8 = v15[58];
  v5 = MEMORY[0x277D82BD8](oslog);
  (*(v8 + 8))(v9, v10, v5);

  v29[0] = 3;
  v29[1] = 0;
  v30 = 2;
  v11(0, v29);

  v6 = *(v15[14] + 8);

  return v6();
}

uint64_t sub_214BC2DAC()
{
  v39 = v0;
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[39];
  v0[14] = v0;
  (*(v2 + 8))(v1, v3);

  v22 = v0[80];
  v4 = v0[59];
  v19 = v0[58];
  v21 = v0[57];
  v20 = v0[33];
  v5 = v22;
  v0[16] = v22;
  (*(v19 + 16))(v4, v20 + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, v21);
  v6 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  sub_214B1C228();

  oslog = sub_214CCDA54();
  v31 = sub_214CCFBA4();
  v26 = swift_allocObject();
  *(v26 + 16) = 64;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_214BC6620;
  *(v24 + 24) = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_214BC6628;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_214B21624;
  *(v28 + 24) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v29 = v7;

  *v29 = sub_214A662DC;
  v29[1] = v26;

  v29[2] = sub_214A662DC;
  v29[3] = v27;

  v29[4] = sub_214B217B4;
  v29[5] = v28;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v31))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v16 = sub_214A632C4(1);
    v17 = sub_214A632C4(0);
    v34 = buf;
    v35 = v16;
    v36 = v17;
    sub_214A6627C(2, &v34);
    sub_214A6627C(1, &v34);
    v37 = sub_214A662DC;
    v38 = v26;
    sub_214A66290(&v37, &v34, &v35, &v36);
    v37 = sub_214A662DC;
    v38 = v27;
    sub_214A66290(&v37, &v34, &v35, &v36);
    v37 = sub_214B217B4;
    v38 = v28;
    sub_214A66290(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_214A5E000, oslog, v31, "Unable to generate summary for mail messages: %@", buf, 0xCu);
    sub_214A669DC(v16);
    sub_214A669DC(v17);
    sub_214CCFF04();
  }

  else
  {
  }

  v12 = v18[59];
  v13 = v18[57];
  v14 = v18[34];
  v11 = v18[58];
  v8 = MEMORY[0x277D82BD8](oslog);
  (*(v11 + 8))(v12, v13, v8);

  v32[0] = 3;
  v32[1] = 0;
  v33 = 2;
  v14(0, v32);

  v9 = *(v18[14] + 8);

  return v9();
}

uint64_t sub_214BC373C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364D8);
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v6 = v2 - v5;
  sub_214CCD8A4();
  v7 = sub_214CCD924();
  v8 = *(v7 - 8);
  v9 = v7 - 8;
  if ((*(v8 + 48))(v6, 1) == 1)
  {
    sub_214BC586C(v6);
    v4 = 0;
  }

  else
  {
    v3 = sub_214CCD914();
    (*(v8 + 8))(v6, v7);
    v4 = v3;
  }

  v2[1] = &v10;
  v10 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38600);
  return sub_214CCF5B4();
}

uint64_t sub_214BC38D4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v13 = a1;
  v15 = 0;
  v14 = 0;
  v7 = (*(*(sub_214CCD964() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v11 = &v6 - v7;
  v12 = 1;
  v15 = v2 & 1;
  v14 = v3;
  v8 = sub_214CD03C4();
  sub_214CCD954();
  v4 = v8;
  sub_214A63280();
  v9 = v4;
  sub_214BC55E0();
  sub_214CD0084();
  return sub_214CCD844();
}

uint64_t sub_214BC39E4(uint64_t a1, double a2)
{
  *(v3 + 56) = a2;
  *(v3 + 48) = a1;
  *(v3 + 16) = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = a2;
  *(v3 + 32) = v2;
  return MEMORY[0x2822009F8](sub_214BC3A30, 0);
}

uint64_t sub_214BC3A30()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v0;
  v5 = v1 * 1000000000.0;
  if (((COERCE_UNSIGNED_INT64(v1 * 1000000000.0) >> 52) & 0x7FF) == 0x7FF || v5 <= -1.0 || v5 >= 1.84467441e19)
  {
    return sub_214CD01F4();
  }

  v4[5] = v5;
  v3 = swift_task_alloc();
  v4[8] = v3;
  *v3 = v4[2];
  v3[1] = sub_214BC3CD4;

  return MEMORY[0x282200480](v5);
}

uint64_t sub_214BC3CD4()
{
  v4 = *v1;
  *(*v1 + 16) = *v1;

  if (v0)
  {
    v2 = *(*(v4 + 16) + 8);

    return v2();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_214BC3E74, 0);
  }
}