uint64_t MergeableJournalAttributes.Icon.emoji.getter()
{
  v1 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25568C188(v0, v4, type metadata accessor for MergeableJournalAttributes.Icon);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = *v4;
    v6 = v4[1];
  }

  else
  {
    sub_25568C1F0(v4, type metadata accessor for MergeableJournalAttributes.Icon);
    return 0;
  }

  return result;
}

uint64_t MergeableJournalAttributes.Icon.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v2, v7, type metadata accessor for MergeableJournalAttributes.Icon);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
    v9 = sub_25574F320();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a1, &v7[v8], v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }

  else
  {
    sub_25568C1F0(v7, type metadata accessor for MergeableJournalAttributes.Icon);
    v12 = sub_25574F320();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t MergeableJournalAttributes.Icon.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v54 = a2;
  v57 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v53 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - v10;
  v12 = sub_25574FB50();
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = *(v55 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v52 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v18 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v24 = (&v52 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF8, &qword_2557552D8);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v52 - v28;
  v30 = (&v52 + *(v27 + 56) - v28);
  sub_25568C188(v4, &v52 - v28, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25568C188(a1, v30, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25568C188(v29, v24, type metadata accessor for MergeableJournalAttributes.Icon);
    v42 = v24[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = *v30;
      v47 = v30[1];
      v60 = *v24;
      v61 = v42;
      v58 = v46;
      v59 = v47;
      sub_25574FDD0();

      v49 = v55;
      v48 = v56;
      if ((*(v55 + 48))(v11, 1, v56) != 1)
      {
        v51 = *(v49 + 32);
        v51(v17, v11, v48);
        v40 = v57;
        v51(v57, v17, v48);
        v41 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0);
        goto LABEL_12;
      }

LABEL_10:
      sub_255674B20(v11, &qword_27F7BDDD0, &qword_25575D7A0);
      sub_25568C1F0(v29, type metadata accessor for MergeableJournalAttributes.Icon);
      v50 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0);
      return (*(*(v50 - 8) + 56))(v57, 1, 1, v50);
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_8:
    v43 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0);
    v44 = v57;
    swift_storeEnumTagMultiPayload();
    (*(*(v43 - 8) + 56))(v44, 0, 1, v43);
    return sub_255674B20(v29, &qword_27F7BDEF8, &qword_2557552D8);
  }

  sub_25568C188(v29, v22, type metadata accessor for MergeableJournalAttributes.Icon);
  v32 = v22[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_7:

    goto LABEL_8;
  }

  v33 = *v22;
  v34 = *v30;
  v35 = v30[1];
  v60 = v33;
  v61 = v32;
  v58 = v34;
  v59 = v35;
  v11 = v53;
  sub_25574FDD0();

  v37 = v55;
  v36 = v56;
  if ((*(v55 + 48))(v11, 1, v56) == 1)
  {
    goto LABEL_10;
  }

  v38 = *(v37 + 32);
  v39 = v52;
  v38(v52, v11, v36);
  v40 = v57;
  v38(v57, v39, v36);
  v41 = type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference(0);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  return sub_25568C1F0(v29, type metadata accessor for MergeableJournalAttributes.Icon);
}

uint64_t MergeableJournalAttributes.Icon.visitReferences(_:)()
{
  v1 = sub_25574F320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v0, v9, type metadata accessor for MergeableJournalAttributes.Icon);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_25568C1F0(v9, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(v2 + 32))(v5, &v9[*(v11 + 48)], v1);
  sub_25574F2E0();
  return (*(v2 + 8))(v5, v1);
}

uint64_t MergeableJournalAttributes.Icon.copy(renamingReferences:)@<X0>(void *a1@<X8>)
{
  v3 = sub_25574F320();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v1, v11, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v11;
  if (EnumCaseMultiPayload > 1)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
    (*(v4 + 32))(v7, &v11[*(v15 + 48)], v3);
    v16 = *(v15 + 48);
    *a1 = v13;
    sub_25574F300();
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v14 = *(v11 + 1);
    *a1 = v13;
    a1[1] = v14;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t MergeableJournalAttributes.Icon.init(from:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v25 - v9);
  MEMORY[0x28223BE20](v8);
  v12 = (&v25 - v11);
  sub_25574FEA0();
  if (v1)
  {
  }

  v26 = a1;
  v13 = sub_25574FEB0();

  if (v13 == 2)
  {
    v21 = sub_255750260();
    v23 = v22;

    *v10 = v21;
    v10[1] = v23;
    swift_storeEnumTagMultiPayload();
    v7 = v10;
LABEL_9:
    v20 = v26;
    return sub_25569A468(v7, v20, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  if (v13 != 1)
  {
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
    *v7 = v13;
    sub_25574F310();

    swift_storeEnumTagMultiPayload();
    goto LABEL_9;
  }

  v15 = sub_255750260();
  v17 = v16;

  v18 = v26;
  *v12 = v15;
  v12[1] = v17;
  v19 = v18;
  swift_storeEnumTagMultiPayload();
  v20 = v19;
  v7 = v12;
  return sub_25569A468(v7, v20, type metadata accessor for MergeableJournalAttributes.Icon);
}

uint64_t MergeableJournalAttributes.Icon.encode(to:)()
{
  v2 = sub_25574F320();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25574FF20();
  if (!v1)
  {
    sub_25568C188(v0, v10, type metadata accessor for MergeableJournalAttributes.Icon);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v13 = *v10;
    if (EnumCaseMultiPayload > 1)
    {
      v15 = *v10;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      (*(v3 + 32))(v6, &v10[*(v16 + 48)], v2);
      sub_25574FF50();
      sub_25574FF30();

      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      v14 = *(v10 + 1);
      sub_25574FF40();

      sub_25574FF30();
    }
  }

  return result;
}

uint64_t MergeableJournalAttributes.Icon.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFB5E0];
  v3 = sub_25574F770();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2556984D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F320();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25568C188(v2, v12, type metadata accessor for MergeableJournalAttributes.Icon);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return sub_25568C1F0(v12, type metadata accessor for MergeableJournalAttributes.Icon);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(v5 + 32))(v9, &v12[*(v14 + 48)], v4);
  sub_25574F2E0();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2556986B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFB5E0];
  v3 = sub_25574F770();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

size_t sub_255698770(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_255698980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0E0, &qword_255755C68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

size_t sub_255698AA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_255698C80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED60, &qword_255755C50);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_255698D84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE098, &qword_255755C48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_255698E88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE090, &qword_255755C40);
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

char *sub_255698F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE088, &qword_255755C38);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_255699098(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE080, &qword_255755C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25569919C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE078, &qword_255755C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_2556992A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_255668318(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_255750090();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_255668318(&qword_27F7BE0B8, MEMORY[0x277CC95F0]);
      v22 = sub_255750100();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2557016C0();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_255699B48(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void sub_255699548(uint64_t a1, char a2, void *a3)
{
  v65 = sub_25574FDB0();
  v63 = *(v65 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v56 - v12);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v62 + 80);
  v61 = a1;
  v16 = (v63 + 32);
  v58 = a1 + ((v15 + 32) & ~v15);
  sub_255663294(v58, v13, &qword_27F7BDEE8, &unk_25575B4D0);
  v18 = v13[1];
  v68 = *v13;
  v17 = v68;
  v69 = v18;
  v19 = *v16;
  v59 = v14;
  v57 = v19;
  v19(v64, v13 + v14, v65);
  v20 = *a3;
  v22 = sub_2556632FC(v17, v18);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2557427DC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_255743928(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_2556632FC(v17, v18);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v34 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v35 = (v34[6] + 16 * v22);
      *v35 = v17;
      v35[1] = v18;
      v57((v34[7] + *(v63 + 72) * v22), v64, v65);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34[2] = v38;
      if (v60 != 1)
      {
        v39 = 1;
        while (v39 < *(v61 + 16))
        {
          sub_255663294(v58 + *(v62 + 72) * v39, v13, &qword_27F7BDEE8, &unk_25575B4D0);
          v41 = v13[1];
          v68 = *v13;
          v40 = v68;
          v69 = v41;
          v42 = *v16;
          (*v16)(v64, v13 + v59, v65);
          v43 = *a3;
          v44 = sub_2556632FC(v40, v41);
          v46 = v43[2];
          v47 = (v45 & 1) == 0;
          v37 = __OFADD__(v46, v47);
          v48 = v46 + v47;
          if (v37)
          {
            goto LABEL_26;
          }

          v49 = v45;
          if (v43[3] < v48)
          {
            sub_255743928(v48, 1);
            v50 = *a3;
            v44 = sub_2556632FC(v40, v41);
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v49)
          {
            goto LABEL_11;
          }

          v52 = *a3;
          *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
          v53 = (v52[6] + 16 * v44);
          *v53 = v40;
          v53[1] = v41;
          v42((v52[7] + *(v63 + 72) * v44), v64, v65);
          v54 = v52[2];
          v37 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v52[2] = v55;
          if (v60 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = sub_25574F750();
    sub_255668318(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v31 = swift_allocError();
    *v32 = 0xD000000000000034;
    v32[1] = 0x80000002557526E0;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277CFB5A8], v30);
    swift_willThrow();
    v70 = v31;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v64, v65);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_255750F10();
  __break(1u);
LABEL_29:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t sub_255699B48(int64_t a1)
{
  v3 = sub_25574F0D0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_2557509C0();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_255668318(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
        v27 = sub_255750090();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t _s13JournalShared09MergeableA10AttributesV4IconO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F320();
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v50 - v9;
  v10 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v50 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v50 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF8, &qword_2557552D8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v50 - v23;
  v25 = (&v50 + *(v22 + 56) - v23);
  sub_25568C188(a1, &v50 - v23, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25568C188(a2, v25, type metadata accessor for MergeableJournalAttributes.Icon);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25568C188(v24, v19, type metadata accessor for MergeableJournalAttributes.Icon);
    v33 = *v19;
    v32 = v19[1];
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_11:

LABEL_16:
      sub_255674B20(v24, &qword_27F7BDEF8, &qword_2557552D8);
LABEL_26:
      v41 = 0;
      return v41 & 1;
    }

    if (v33 == *v25 && v32 == v25[1])
    {
      v48 = v25[1];
      goto LABEL_28;
    }

    v44 = v25[1];
    v45 = sub_255750EB0();

    if (v45)
    {
      goto LABEL_29;
    }

LABEL_25:
    sub_25568C1F0(v24, type metadata accessor for MergeableJournalAttributes.Icon);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_25568C188(v24, v17, type metadata accessor for MergeableJournalAttributes.Icon);
    v28 = *v17;
    v27 = v17[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v28 != *v25 || v27 != v25[1])
      {
        v30 = v25[1];
        v31 = sub_255750EB0();

        if (v31)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }

      v46 = v25[1];
LABEL_28:

LABEL_29:
      sub_25568C1F0(v24, type metadata accessor for MergeableJournalAttributes.Icon);
      v41 = 1;
      return v41 & 1;
    }

    goto LABEL_11;
  }

  sub_25568C188(v24, v14, type metadata accessor for MergeableJournalAttributes.Icon);
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v52 + 8))(&v14[v34], v53);
    goto LABEL_16;
  }

  v50 = *v14;
  v35 = *v25;
  v36 = v51;
  v37 = v52;
  v38 = *(v52 + 32);
  v39 = &v14[v34];
  v40 = v53;
  v38(v51, v39, v53);
  v38(v8, v25 + v34, v40);
  if (v50 != v35)
  {
    v47 = *(v37 + 8);
    v47(v8, v40);
    v47(v36, v40);
    goto LABEL_25;
  }

  v41 = sub_25574F2F0();
  v42 = *(v37 + 8);
  v42(v8, v40);
  v42(v36, v40);
  sub_25568C1F0(v24, type metadata accessor for MergeableJournalAttributes.Icon);
  return v41 & 1;
}

unint64_t sub_25569A318()
{
  result = qword_27F7BDE60;
  if (!qword_27F7BDE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDE60);
  }

  return result;
}

unint64_t sub_25569A36C()
{
  result = qword_27F7BDE68;
  if (!qword_27F7BDE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDE68);
  }

  return result;
}

unint64_t sub_25569A3C0()
{
  result = qword_27F7BDE78;
  if (!qword_27F7BDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDE78);
  }

  return result;
}

unint64_t sub_25569A414()
{
  result = qword_27F7BDE80;
  if (!qword_27F7BDE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDE80);
  }

  return result;
}

uint64_t sub_25569A468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s13JournalShared09MergeableA10AttributesV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v42 - v22;
  v48 = a1;
  sub_25574F390();
  v49 = a2;
  sub_25574F390();
  sub_255669798(&qword_27F7BE0F8, &unk_27F7BFF90, &qword_2557551F0);
  LOBYTE(a2) = sub_255750100();
  v24 = *(v17 + 8);
  v24(v21, v16);
  v24(v23, v16);
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  v25 = type metadata accessor for MergeableJournalAttributes(0);
  v26 = v48;
  v27 = v48 + v25[5];
  sub_25574F390();
  v28 = v49;
  v29 = v49 + v25[5];
  sub_25574F390();
  sub_255669798(&qword_27F7BE100, &qword_27F7BDDC8, &qword_2557551F8);
  v30 = sub_255750100();
  v31 = *(v47 + 8);
  v31(v13, v9);
  v31(v15, v9);
  if ((v30 & 1) == 0)
  {
    goto LABEL_5;
  }

  v32 = v26 + v25[6];
  v33 = v43;
  v34 = v46;
  sub_25574F390();
  v35 = v28 + v25[6];
  v36 = v44;
  sub_25574F390();
  sub_255669798(&qword_27F7BE108, &unk_27F7BFFB0, &unk_255755200);
  v37 = sub_255750100();
  v38 = *(v45 + 8);
  v38(v36, v34);
  v38(v33, v34);
  if (v37)
  {
    v39 = v25[7];
    v40 = sub_25574F7E0();
  }

  else
  {
LABEL_5:
    v40 = 0;
  }

  return v40 & 1;
}

uint64_t sub_25569A954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F626D79536673 && a2 == 0xE800000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_255750EB0();

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

uint64_t sub_25569AA68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_25569AC00()
{
  sub_25569ACF0(319, &qword_27F7BDF80, MEMORY[0x277CFB6A0]);
  if (v0 <= 0x3F)
  {
    sub_25569ACF0(319, &qword_27F7BDF88, type metadata accessor for MergeableColor.ObservableDifference);
    if (v1 <= 0x3F)
    {
      sub_25569ACF0(319, &qword_27F7BDF90, type metadata accessor for MergeableJournalAttributes.Icon.ObservableDifference);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25569ACF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25569AD6C()
{
  sub_255672600(319, &qword_27F7BDFA8, &qword_27F7BDEB8, &qword_2557552A0);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BDFB0, &qword_27F7BDEC0, &qword_2557552A8);
    if (v1 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BDFB8, &qword_27F7BDEC8, &qword_2557552B0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25569AE78()
{
  sub_255672600(319, &qword_27F7BDFD0, &unk_27F7BFF90, &qword_2557551F0);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BDFD8, &qword_27F7BDDC8, &qword_2557551F8);
    if (v1 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BDFE0, &unk_27F7BFFB0, &unk_255755200);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25569AFAC()
{
  result = sub_25574FB50();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleAccountUIFeature(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AppleAccountUIFeature(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MergeableJournalAttributes.Icon.UnknownCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MergeableJournalAttributes.Icon.UnknownCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25569B26C()
{
  result = qword_27F7BE010;
  if (!qword_27F7BE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE010);
  }

  return result;
}

unint64_t sub_25569B2C4()
{
  result = qword_27F7BE018;
  if (!qword_27F7BE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE018);
  }

  return result;
}

unint64_t sub_25569B31C()
{
  result = qword_27F7BE020;
  if (!qword_27F7BE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE020);
  }

  return result;
}

unint64_t sub_25569B374()
{
  result = qword_27F7BE028;
  if (!qword_27F7BE028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE028);
  }

  return result;
}

unint64_t sub_25569B3CC()
{
  result = qword_27F7BE030;
  if (!qword_27F7BE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE030);
  }

  return result;
}

unint64_t sub_25569B424()
{
  result = qword_27F7BE038;
  if (!qword_27F7BE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE038);
  }

  return result;
}

unint64_t sub_25569B47C()
{
  result = qword_27F7BE040;
  if (!qword_27F7BE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE040);
  }

  return result;
}

unint64_t sub_25569B4D4()
{
  result = qword_27F7BE048;
  if (!qword_27F7BE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE048);
  }

  return result;
}

unint64_t sub_25569B52C()
{
  result = qword_27F7BE050;
  if (!qword_27F7BE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE050);
  }

  return result;
}

unint64_t sub_25569B584()
{
  result = qword_27F7BE058;
  if (!qword_27F7BE058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE058);
  }

  return result;
}

unint64_t sub_25569B5DC()
{
  result = qword_27F7BE060;
  if (!qword_27F7BE060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE060);
  }

  return result;
}

unint64_t sub_25569B634()
{
  result = qword_27F7BE068;
  if (!qword_27F7BE068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE068);
  }

  return result;
}

uint64_t sub_25569B6D0(uint64_t a1)
{
  v2 = sub_25574F0D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_255668318(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  result = MEMORY[0x259C3E270](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_2556FF184(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_25569B8FC(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a2(0); ; i = v20(0))
  {
    v12 = i;
    v13 = sub_255668318(a3, a4);
    result = MEMORY[0x259C3E270](v10, v12, v13);
    v22 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v15 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x259C3E830](v15, a1);
      }

      else
      {
        if (v15 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      a2 = v16;
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      a4 = &v22;
      a5(&v21, v16);

      ++v15;
      if (v17 == a3)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v18 = a2;
    v19 = sub_255750A30();
    v20 = v18;
    v10 = v19;
  }

  a4 = result;
  a3 = sub_255750A30();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_25569BA64()
{
  result = qword_27F7BE370;
  if (!qword_27F7BE370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE370);
  }

  return result;
}

void CRAttributedString.replaced(with:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  sub_25569BB24(v4, a1, a2, a4);
}

void sub_25569BB24(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_25574FAC0();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  CRAttributedString.replace(with:)(v9);
}

Swift::Void __swiftcall CRAttributedString.replace(with:)(Swift::String with)
{
  v2 = v1;
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v5 = sub_25574F880();
  v6 = [v5 length];

  if (v6 < 1)
  {

    sub_25574FA20();
  }

  else
  {
    v7 = sub_25574F880();
    v8 = [v7 length];

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v9 = 0;
      v10 = v8;
      v11 = countAndFlagsBits;
      v12 = object;
      v13 = v2;
    }

    MEMORY[0x28214DF70](v9, v10, v11, v12, v13);
  }
}

uint64_t sub_25569BCA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v8 = sub_255750950();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v12 + 16))(&v15 - v10, a1);
  v13 = *a2;
  return MergeableProvider.unwrappedMergeableAttributes.setter(v11, v7, v6);
}

uint64_t MergeableProvider.unwrappedMergeableAttributes.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_255750950();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v27 - v15;
  (*(v8 + 16))(v12, a1, v7);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v17 = *(v8 + 8);
    v17(v12, v7);
    if (qword_27F7BD5E0 != -1)
    {
      swift_once();
    }

    v18 = sub_25574F2C0();
    __swift_project_value_buffer(v18, qword_27F7C0528);
    v19 = sub_25574F2A0();
    v20 = sub_255750780();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136446210;
      v23 = sub_255751020();
      v25 = sub_2556E474C(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_255661000, v19, v20, "Tried to set nil mergeable attributes on %{public}s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x259C3F520](v22, -1, -1);
      MEMORY[0x259C3F520](v21, -1, -1);
    }

    return (v17)(a1, v7);
  }

  else
  {
    (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
    MergeableProvider.merge(_:)(v16, a2, a3);
    (*(v8 + 8))(a1, v7);
    return (*(v13 + 8))(v16, AssociatedTypeWitness);
  }
}

uint64_t MergeableProvider.merge(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a1;
  v6 = sub_25574F500();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v38 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v16);
  v50 = &v38 - v19;
  v20 = a3;
  if ((*(a3 + 32))(a2, a3))
  {
    v41 = a2;
    v21 = AssociatedConformanceWitness;
    v43 = v3;
    v22 = *(AssociatedConformanceWitness + 24);
    v42 = swift_checkMetadataState();
    v22(v42, v21);
    swift_unknownObjectRelease();
    (*(v10 + 32))(v50, v18, AssociatedTypeWitness);
    v40 = *(v10 + 16);
    v23 = v48;
    v40();
    v39 = v20;
    v24 = *(swift_getAssociatedConformanceWitness() + 8);
    v25 = v45;
    v26 = AssociatedTypeWitness;
    v27 = v23;
    sub_25574F4D0();
    v28 = v47;
    v29 = *(v46 + 8);
    v29(v25, v47);
    v30 = v50;
    sub_25574F4D0();
    v29(v25, v28);
    v31 = v44;
    (v40)(v44, v30, v26);
    v32 = (*(AssociatedConformanceWitness + 16))(v31);
    (*(v39 + 40))(v32, v41);
    v33 = *(v10 + 8);
    v33(v27, v26);
    return (v33)(v30, v26);
  }

  else
  {
    v35 = swift_checkMetadataState();
    v36 = v48;
    (*(v10 + 16))(v48, v49, AssociatedTypeWitness);
    v37 = (*(AssociatedConformanceWitness + 16))(v36, v35);
    return (*(a3 + 40))(v37, a2, a3);
  }
}

void (*MergeableProvider.unwrappedMergeableAttributes.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v10 = sub_255750950();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  MergeableProvider.unwrappedMergeableAttributes.getter(a3, v13);
  return sub_25569C730;
}

void sub_25569C730(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    v9 = *v2;
    (*(v6 + 16))((*a1)[5], v4, v5);
    MergeableProvider.unwrappedMergeableAttributes.setter(v3, v9, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v10 = v2[2];
    MergeableProvider.unwrappedMergeableAttributes.setter((*a1)[6], *v2, v2[1]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_25569C838()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE128);
  __swift_project_value_buffer(v0, qword_27F7BE128);
  return sub_25574F2B0();
}

uint64_t sub_25569C8B8()
{
  result = sub_255750180();
  qword_27F7BE140 = result;
  return result;
}

id static AppleAccountManager.statusChangedNotification.getter()
{
  if (qword_27F7BD6C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F7BE140;

  return v1;
}

uint64_t sub_25569C94C()
{
  type metadata accessor for AppleAccountManager();
  v0 = swift_allocObject();
  *(v0 + 16) = 4;
  v1 = [objc_opt_self() defaultCenter];
  v2 = *MEMORY[0x277CBBF00];

  [v1 addObserver:v0 selector:sel_updateAccountStatusCache name:v2 object:0];

  qword_27F7BE148 = v0;
  return result;
}

uint64_t static AppleAccountManager.shared.getter()
{
  if (qword_27F7BD6D0 != -1)
  {
    swift_once();
  }
}

uint64_t AppleAccountManager.AccountStatus.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t sub_25569CAE4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_25569CB28(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
  v3 = [objc_opt_self() defaultCenter];
  if (qword_27F7BD6C8 != -1)
  {
    swift_once();
  }

  v4 = qword_27F7BE140;
  if (*(v1 + 16) == 4)
  {
    v5 = 0;
  }

  else
  {
    v7 = *(v1 + 16);
    v5 = sub_255750EF0();
  }

  [v3 postNotificationName:v4 object:v5];

  return swift_unknownObjectRelease();
}

uint64_t sub_25569CC1C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  sub_2557504B0();
  v2[8] = sub_2557504A0();
  v4 = sub_255750490();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_25569CCDC, v4, v3);
}

uint64_t sub_25569CCDC()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 == 4)
  {
    v3 = *(v0 + 56);
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_25569CDD8;

    return sub_25569D024(v0 + 96);
  }

  else
  {
    v6 = *(v0 + 64);

    **(v0 + 40) = v2;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_25569CDD8()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_25569CEF8, v4, v3);
}

uint64_t sub_25569CEF8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  v3 = *(v0 + 96);
  *(v2 + 16) = v3;
  v4 = [objc_opt_self() defaultCenter];
  if (qword_27F7BD6C8 != -1)
  {
    swift_once();
  }

  v5 = qword_27F7BE140;
  v6 = *(*(v0 + 48) + 16);
  if (v6 == 4)
  {
    v7 = 0;
  }

  else
  {
    *(v0 + 97) = v6;
    v7 = sub_255750EF0();
  }

  [v4 postNotificationName:v5 object:v7];
  swift_unknownObjectRelease();

  **(v0 + 40) = v3;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25569D024(uint64_t a1)
{
  v1[27] = a1;
  sub_2557504B0();
  v1[28] = sub_2557504A0();
  v3 = sub_255750490();
  v1[29] = v3;
  v1[30] = v2;

  return MEMORY[0x2822009F8](sub_25569D0BC, v3, v2);
}

uint64_t sub_25569D0BC()
{
  if (qword_27F7BD6C0 != -1)
  {
    swift_once();
  }

  v1 = sub_25574F2C0();
  *(v0 + 248) = __swift_project_value_buffer(v1, qword_27F7BE128);
  v2 = sub_25574F2A0();
  v3 = sub_255750760();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255661000, v2, v3, "Checking for provisioned Apple account.", v4, 2u);
    MEMORY[0x259C3F520](v4, -1, -1);
  }

  v5 = [objc_opt_self() defaultStore];
  *(v0 + 256) = v5;
  if (v5)
  {
    v6 = v5;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_25569D36C;
    v7 = swift_continuation_init();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE158, &unk_255755D20);
    *(v0 + 264) = v8;
    *(v0 + 200) = v8;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_25569E7F4;
    *(v0 + 168) = &block_descriptor_32;
    *(v0 + 176) = v7;
    [v6 aa:v0 + 144 primaryAppleAccountWithCompletion:?];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v9 = *(v0 + 224);

    v10 = *(v0 + 248);
    v11 = sub_25574F2A0();
    v12 = sub_255750760();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_255661000, v11, v12, "There is no account signed in.", v13, 2u);
      MEMORY[0x259C3F520](v13, -1, -1);
    }

    **(v0 + 216) = 0;
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_25569D36C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_25569DC5C;
  }

  else
  {
    v6 = sub_25569D49C;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_25569D49C()
{
  v1 = *(v0 + 208);
  *(v0 + 280) = v1;
  if (!v1)
  {
    v9 = *(v0 + 224);

    v10 = *(v0 + 248);
    v5 = sub_25574F2A0();
    v11 = sub_255750760();
    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_255661000, v5, v11, "There is no account signed in.", v12, 2u);
      MEMORY[0x259C3F520](v12, -1, -1);
    }

    v8 = 0;
    goto LABEL_13;
  }

  v2 = *MEMORY[0x277CB89E0];
  *(v0 + 288) = *MEMORY[0x277CB89E0];
  if ([v1 isEnabledForDataclass_])
  {
    v3 = *(v0 + 248);
    v4 = *(v0 + 224);

    v5 = sub_25574F2A0();
    v6 = sub_255750760();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_255661000, v5, v6, "Signed in and dataclass is enabled.", v7, 2u);
      MEMORY[0x259C3F520](v7, -1, -1);
    }

    v8 = 2;
LABEL_13:

    **(v0 + 216) = v8;
    v18 = *(v0 + 8);

    return v18();
  }

  v13 = [v1 isProvisionedForDataclass_];
  v14 = *(v0 + 248);
  if (v13)
  {
    v15 = *(v0 + 224);

    v5 = sub_25574F2A0();
    v16 = sub_255750760();
    if (os_log_type_enabled(v5, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_255661000, v5, v16, "Signed in and dataclass is provisioned.", v17, 2u);
      MEMORY[0x259C3F520](v17, -1, -1);
    }

    v8 = 1;
    goto LABEL_13;
  }

  v20 = sub_25574F2A0();
  v21 = sub_255750760();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_255661000, v20, v21, "(checkForProvisionedAppleAccount) There is primary account signed in", v22, 2u);
    MEMORY[0x259C3F520](v22, -1, -1);
  }

  v23 = *(v0 + 256);
  v24 = *(v0 + 264);

  v25 = v1;
  sub_2556EF7D8(MEMORY[0x277D84F90]);
  v26 = sub_255750070();
  *(v0 + 296) = v26;

  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_25569D890;
  v27 = swift_continuation_init();
  *(v0 + 200) = v24;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_25569E7F4;
  *(v0 + 168) = &block_descriptor_35;
  *(v0 + 176) = v27;
  [v23 discoverPropertiesForAccount:v25 options:v26 completion:v0 + 144];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_25569D890()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 304) = v3;
  v4 = *(v1 + 240);
  v5 = *(v1 + 232);
  if (v3)
  {
    v6 = sub_25569DD58;
  }

  else
  {
    v6 = sub_25569D9C0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_25569D9C0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 224);

  v4 = *(v0 + 208);

  if (!v4)
  {
    v11 = *(v0 + 248);
    v6 = sub_25574F2A0();
    v12 = sub_255750760();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_255661000, v6, v12, "Log and handle error. Device or account state does not permit refresh. Proceed as if offline", v13, 2u);
      MEMORY[0x259C3F520](v13, -1, -1);
    }

    v9 = *(v0 + 280);
    v4 = *(v0 + 256);
    goto LABEL_16;
  }

  if ([v4 isEnabledForDataclass_])
  {
    v5 = *(v0 + 248);
    v6 = sub_25574F2A0();
    v7 = sub_255750760();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_255661000, v6, v7, "Dataclass is provisioned and enabled", v8, 2u);
      MEMORY[0x259C3F520](v8, -1, -1);
    }

    v9 = *(v0 + 280);

    v10 = 2;
    goto LABEL_17;
  }

  v14 = *(v0 + 248);
  v15 = [v4 isProvisionedForDataclass_];
  v6 = sub_25574F2A0();
  v16 = sub_255750760();
  v17 = os_log_type_enabled(v6, v16);
  if ((v15 & 1) == 0)
  {
    if (v17)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_255661000, v6, v16, "Dataclass is not provisioned and not enabled. This account is not capable of using Journal due to some restriction.", v19, 2u);
      MEMORY[0x259C3F520](v19, -1, -1);
    }

    v9 = *(v0 + 280);

LABEL_16:
    v10 = 3;
    goto LABEL_17;
  }

  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_255661000, v6, v16, "Dataclass is provisioned but not enabled", v18, 2u);
    MEMORY[0x259C3F520](v18, -1, -1);
  }

  v9 = *(v0 + 280);

  v10 = 1;
LABEL_17:

  **(v0 + 216) = v10;
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_25569DC5C()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);

  swift_willThrow();

  v4 = *(v0 + 248);
  v5 = sub_25574F2A0();
  v6 = sub_255750760();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_255661000, v5, v6, "There is no account signed in.", v7, 2u);
    MEMORY[0x259C3F520](v7, -1, -1);
  }

  **(v0 + 216) = 0;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25569DD58()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 224);

  swift_willThrow();

  v5 = *(v0 + 248);
  v6 = sub_25574F2A0();
  v7 = sub_255750760();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_255661000, v6, v7, "Log and handle error. Device or account state does not permit refresh. Proceed as if offline", v8, 2u);
    MEMORY[0x259C3F520](v8, -1, -1);
  }

  v9 = *(v0 + 280);

  **(v0 + 216) = 3;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25569DE74()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE150, &qword_255755D00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_2557504D0();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2557504B0();

  v8 = sub_2557504A0();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v1;
  v9[5] = v2;
  sub_25569E3AC(0, 0, v6, &unk_255755D10, v9);
}

uint64_t sub_25569DFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[6] = sub_2557504B0();
  v4[7] = sub_2557504A0();
  v5 = swift_task_alloc();
  v4[8] = v5;
  *v5 = v4;
  v5[1] = sub_25569E078;

  return sub_25569D024((v4 + 9));
}

uint64_t sub_25569E078()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v5 = sub_255750490();

  return MEMORY[0x2822009F8](sub_25569E1B4, v5, v4);
}

uint64_t sub_25569E1B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = *(v0 + 72);
  swift_beginAccess();
  *(v2 + 16) = v3;
  v4 = [objc_opt_self() defaultCenter];
  if (qword_27F7BD6C8 != -1)
  {
    swift_once();
  }

  v5 = qword_27F7BE140;
  v6 = *(v2 + 16);
  if (v6 == 4)
  {
    v7 = 0;
  }

  else
  {
    *(v0 + 73) = v6;
    v7 = sub_255750EF0();
  }

  [v4 postNotificationName:v5 object:v7];
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_25569E2EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25569FE90;

  return sub_25569DFC0(a1, v4, v5, v7);
}

uint64_t sub_25569E3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE150, &qword_255755D00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25569FC98(a3, v27 - v11);
  v13 = sub_2557504D0();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_255674B20(v12, &qword_27F7BE150, &qword_255755D00);
  }

  else
  {
    sub_2557504C0();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_255750490();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2557501E0() + 32;
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

      sub_255674B20(a3, &qword_27F7BE150, &qword_255755D00);

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

  sub_255674B20(a3, &qword_27F7BE150, &qword_255755D00);
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

uint64_t sub_25569E7F4(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t static AppleAccountManager.setDataclassEnabled(_:)(char a1)
{
  *(v1 + 281) = a1;
  sub_2557504B0();
  *(v1 + 216) = sub_2557504A0();
  v3 = sub_255750490();
  *(v1 + 224) = v3;
  *(v1 + 232) = v2;

  return MEMORY[0x2822009F8](sub_25569E974, v3, v2);
}

uint64_t sub_25569E974()
{
  v1 = [objc_opt_self() defaultStore];
  v0[30] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_25569EAF0;
    v3 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE158, &unk_255755D20);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_25569E7F4;
    v0[21] = &block_descriptor;
    v0[22] = v3;
    [v2 aa:v0 + 18 primaryAppleAccountWithCompletion:?];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v4 = v0[27];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_25569EAF0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 248) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_25569F02C;
  }

  else
  {
    v6 = sub_25569EC20;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_25569EC20()
{
  v1 = *(v0 + 208);
  *(v0 + 256) = v1;
  if (v1)
  {
    v2 = *MEMORY[0x277CB89E0];
    [v1 setEnabled:*(v0 + 281) forDataclass:*MEMORY[0x277CB89E0]];
    *(v0 + 208) = MEMORY[0x277D84F98];
    v3 = [objc_opt_self() actionWithType_];
    if (v3)
    {
      sub_25569F3B0(v3, v2);
      v4 = *(v0 + 208);
    }

    v5 = *(v0 + 240);
    type metadata accessor for Dataclass(0);
    sub_25569F9A4();
    sub_25569F9F0();
    v6 = v1;
    v7 = sub_255750070();
    *(v0 + 264) = v7;

    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 280;
    *(v0 + 88) = sub_25569EE78;
    v8 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE168, &qword_255755D30);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_25569F6E8;
    *(v0 + 168) = &block_descriptor_5;
    *(v0 + 176) = v8;
    [v5 saveAccount:v6 withDataclassActions:v7 completion:v0 + 144];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v9 = *(v0 + 216);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_25569EE78()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 272) = v3;
  v4 = *(v1 + 232);
  v5 = *(v1 + 224);
  if (v3)
  {
    v6 = sub_25569F1E0;
  }

  else
  {
    v6 = sub_25569EFA8;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_25569EFA8()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 216);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25569F02C()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[27];

  swift_willThrow();

  v4 = v0[31];
  if (qword_27F7BD6C0 != -1)
  {
    swift_once();
  }

  v5 = sub_25574F2C0();
  __swift_project_value_buffer(v5, qword_27F7BE128);
  v6 = v4;
  v7 = sub_25574F2A0();
  v8 = sub_255750780();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_255661000, v7, v8, "Error in setDataclass: %@", v9, 0xCu);
    sub_255674B20(v10, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v10, -1, -1);
    MEMORY[0x259C3F520](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_25569F1E0()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[30];
  v5 = v0[27];

  swift_willThrow();

  v6 = v0[34];
  if (qword_27F7BD6C0 != -1)
  {
    swift_once();
  }

  v7 = sub_25574F2C0();
  __swift_project_value_buffer(v7, qword_27F7BE128);
  v8 = v6;
  v9 = sub_25574F2A0();
  v10 = sub_255750780();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_255661000, v9, v10, "Error in setDataclass: %@", v11, 0xCu);
    sub_255674B20(v12, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v12, -1, -1);
    MEMORY[0x259C3F520](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

void sub_25569F3B0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_255706FB0(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = sub_255674870(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        sub_255742A5C();
        v13 = v16;
      }

      sub_2556C5E88(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

uint64_t sub_25569F4B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE178, &unk_255758110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_255674B20(a1, &qword_27F7BE178, &unk_255758110);
    sub_2556C5CD0(a2, v8);
    v14 = sub_25574F0D0();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_255674B20(v8, &qword_27F7BE178, &unk_255758110);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_255707118(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_25574F0D0();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_25569F6E8(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_25569F7B4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25569F8AC;

  return v7(a1);
}

uint64_t sub_25569F8AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_25569F9A4()
{
  result = qword_27F7BE160;
  if (!qword_27F7BE160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7BE160);
  }

  return result;
}

unint64_t sub_25569F9F0()
{
  result = qword_27F7BDB28;
  if (!qword_27F7BDB28)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BDB28);
  }

  return result;
}

unint64_t sub_25569FA4C()
{
  result = qword_27F7BE170;
  if (!qword_27F7BE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE170);
  }

  return result;
}

uint64_t dispatch thunk of AppleAccountManager.getAccountStatus()(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25568AFA0;

  return v8(a1);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25569FC98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE150, &qword_255755D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25569FD08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25569FE90;

  return sub_25569F7B4(a1, v5);
}

uint64_t sub_25569FDC0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25568AFA0;

  return sub_25569F7B4(a1, v5);
}

uint64_t NSManagedObjectModel.modelVersion.getter()
{
  v1 = [v0 versionIdentifiers];
  v2 = sub_255750580();

  sub_25569FF50(v2, v5);

  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_25569FFD8(v5);
    return 0;
  }
}

uint64_t sub_25569FF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_2557509B0();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v6 = *(a1 + 36);

    return sub_2556A643C(result, v6, a1, a2);
  }

  return result;
}

uint64_t sub_25569FFD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE190, &qword_255755E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppleAccountUIFeature.isEnabled.getter()
{
  v2[3] = &type metadata for AppleAccountUIFeature;
  v2[4] = sub_2556A00A4();
  v0 = sub_25574F1E0();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_2556A00A4()
{
  result = qword_27F7BE1A0;
  if (!qword_27F7BE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1A0);
  }

  return result;
}

uint64_t AppleAccountUIFeature.hashValue.getter()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](0);
  return sub_255750FD0();
}

unint64_t sub_2556A0184()
{
  result = qword_27F7BE1A8;
  if (!qword_27F7BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1A8);
  }

  return result;
}

uint64_t sub_2556A0210@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v26 = *MEMORY[0x277D85DE8];
  v7 = sub_255750010();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_255750050();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255750040();
  v25[0] = sub_25574F0A0();
  v25[1] = v17;
  MEMORY[0x259C3DCF0](v25, &v26);
  v18 = sub_2556A04B8(a1, a2);
  v20 = v19;
  sub_2556A1108(v18, v19);
  sub_2556755A8(v18, v20);
  sub_255750030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1B0, &qword_255755F30);
  sub_255750000();
  (*(v8 + 8))(v11, v7);
  sub_25574F090();
  v21 = sub_25574F0D0();
  (*(*(v21 - 8) + 8))(a3, v21);
  result = (*(v13 + 8))(v16, v12);
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2556A04B8(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1C0, &qword_255755F38);
  if (swift_dynamicCast())
  {
    sub_2556A15CC(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_25574ED20();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2556A1390(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_255750BA0();
  }

  sub_2556A0A1C(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2556A14B0(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20]();
  v10 = sub_2556A0AE4(sub_2556A1550);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25574EF60();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2556A103C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_255750210();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_255750240();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_255750BA0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2556A103C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_255750220();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_25574EF70();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_25574EF70();
    sub_2556A15B8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_2556A15B8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_255674F54(*&__src[0], *(&__src[0] + 1));

  sub_2556755A8(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_2556A09C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = *(result + 4);
  *(a2 + 6) = *(result + 6) & 0xF | 0x50;
  *(a2 + 7) = *(result + 7);
  *(a2 + 8) = *(result + 8) & 0x3F | 0x80;
  *(a2 + 9) = *(result + 9);
  *(a2 + 13) = *(result + 13);
  *(a2 + 15) = *(result + 15);
  return result;
}

uint64_t sub_2556A0A1C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2556A13F8(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_25574ECA0();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_25574EC40();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_25574EF50();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2556A0AE4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_2556755A8(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_2556755A8(v6, v5);
    *v3 = xmmword_255755F20;
    sub_2556755A8(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_25574EC50() && __OFSUB__(v6, sub_25574EC80()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_25574ECA0();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_25574EC30();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2556A0F88(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_2556755A8(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_255755F20;
    sub_2556755A8(0, 0xC000000000000000);
    sub_25574EF20();
    result = sub_2556A0F88(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_2556A0E88@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2556A13F8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2556A15E4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2556A1660(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2556A0F1C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2556A0F88(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_25574EC50();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_25574EC80();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_25574EC70();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2556A103C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_255750270();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C3DF00](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2556A10B8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_255750B10();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2556A1108(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_255750050();
      sub_2556A1338();
      result = sub_25574FFF0();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_2556A1288(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2556A1288(uint64_t a1, uint64_t a2)
{
  result = sub_25574EC50();
  if (!result || (result = sub_25574EC80(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_25574EC70();
      sub_255750050();
      sub_2556A1338();
      return sub_25574FFF0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2556A1338()
{
  result = qword_27F7BE1B8;
  if (!qword_27F7BE1B8)
  {
    sub_255750050();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1B8);
  }

  return result;
}

uint64_t sub_2556A1390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1C8, &unk_255755F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2556A13F8(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2556A14B0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_25574ECA0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_25574EC60();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25574EF50();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_2556A1550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2556A0F1C(sub_2556A16E4, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2556A15B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2556755A8(a1, a2);
  }

  return a1;
}

uint64_t sub_2556A15CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2556A15E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25574ECA0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25574EC40();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25574EF50();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2556A1660(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_25574ECA0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_25574EC40();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t JournalEntryAssetMO.assetMetaData.getter()
{
  v1 = sub_25574EF40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_255750180();
  [v0 willAccessValueForKey_];

  v7 = sub_255750180();
  v8 = [v0 primitiveValueForKey_];

  if (!v8)
  {
    v20 = 0u;
    v21 = 0u;
    sub_2556A1A70(&v20);
    goto LABEL_9;
  }

  sub_255750980();
  swift_unknownObjectRelease();
  v19[0] = v20;
  v19[1] = v21;
  sub_255669A88(0, &qword_27F7BE1D0, 0x277CBEB28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_255669A88(0, &qword_27F7BE1D8, 0x277CBEA90);
    if (swift_dynamicCast())
    {
      v11 = v18;
      v12 = [v18 bytes];
      v13 = [v11 length];
      v14 = swift_allocObject();
      *(v14 + 16) = v11;
      *v5 = nullsub_1;
      v5[1] = v14;
      (*(v2 + 104))(v5, *MEMORY[0x277CC92B8], v1);
      v10 = sub_2556A1D78(v12, v13, v5);
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1(v19);
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v9 = v18;
  v10 = sub_25574EF90();

LABEL_7:
  __swift_destroy_boxed_opaque_existential_1(v19);
LABEL_10:
  v15 = sub_255750180();
  [v0 didAccessValueForKey_];

  return v10;
}

uint64_t sub_2556A1A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE250, &qword_255756600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t JournalEntryAssetMO.assetMetaData.setter(uint64_t a1, unint64_t a2)
{
  sub_2556A1FB0(a1, a2);

  return sub_2556A15B8(a1, a2);
}

void sub_2556A1BB4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 assetMetaData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_25574EF90();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_2556A1C1C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_25574EF80();
  }

  v5 = v3;
  [v2 setAssetMetaData_];
}

uint64_t sub_2556A1C94(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_25574EF50();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_25574EC50();
  if (v3)
  {
    result = sub_25574EC80();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_25574EC70();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2556A13F8(v3, v7);

  return v8;
}

uint64_t sub_2556A1D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25574EF40();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25574EF30();
  if (a2)
  {
    v11 = sub_25574ECA0();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = sub_25574EC30();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277CC92A8])
    {
      v15 = sub_25574EC90();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_2556A1C94(v14, a2);
  }

  else
  {
    v17 = sub_25574EF30();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

void sub_2556A1FB0(uint64_t a1, unint64_t a2)
{
  v5 = sub_255750180();
  [v2 willChangeValueForKey_];

  if (a2 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    sub_255674F54(a1, a2);
    v6 = sub_25574EF80();
    sub_2556A15B8(a1, a2);
  }

  v7 = sub_255750180();
  [v2 setPrimitiveValue:v6 forKey:v7];
  swift_unknownObjectRelease();

  v8 = sub_255750180();
  [v2 didChangeValueForKey_];
}

uint64_t ReflectionAssetMetadata.type.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ReflectionAssetMetadata.prompt.getter()
{
  v1 = *(v0 + 16);
  sub_25567625C(v1, *(v0 + 24));
  return v1;
}

uint64_t ReflectionAssetMetadata.colorLight.getter()
{
  v1 = *(v0 + 32);
  sub_25567625C(v1, *(v0 + 40));
  return v1;
}

uint64_t ReflectionAssetMetadata.colorDark.getter()
{
  v1 = *(v0 + 48);
  sub_25567625C(v1, *(v0 + 56));
  return v1;
}

uint64_t ReflectionAssetMetadata.init(type:prompt:colorLight:colorDark:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t sub_2556A21AC()
{
  v1 = 1701869940;
  v2 = 0x67694C726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0x726144726F6C6F63;
  }

  if (*v0)
  {
    v1 = 0x74706D6F7270;
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

uint64_t sub_2556A2224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556A2C84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556A224C(uint64_t a1)
{
  v2 = sub_2556A253C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556A2288(uint64_t a1)
{
  v2 = sub_2556A253C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReflectionAssetMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1E0, &qword_255755F50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = v1[2];
  v24 = v1[3];
  v25 = v10;
  v11 = v1[4];
  v22 = v1[5];
  v23 = v11;
  v12 = v1[6];
  v20 = v1[7];
  v21 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556A253C();
  sub_255750FF0();
  LOBYTE(v27) = 0;
  v14 = v26;
  sub_255750DE0();
  if (!v14)
  {
    v15 = v22;
    v16 = v23;
    v17 = v21;
    v27 = v25;
    v28 = v24;
    v29 = 1;
    sub_25567625C(v25, v24);
    sub_255687198();
    sub_255750DF0();
    sub_2556A15B8(v27, v28);
    v27 = v16;
    v28 = v15;
    v29 = 2;
    sub_25567625C(v16, v15);
    sub_255750DF0();
    sub_2556A15B8(v27, v28);
    v27 = v17;
    v28 = v20;
    v29 = 3;
    sub_25567625C(v17, v20);
    sub_255750DF0();
    sub_2556A15B8(v27, v28);
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_2556A253C()
{
  result = qword_27F7BE1E8;
  if (!qword_27F7BE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1E8);
  }

  return result;
}

uint64_t ReflectionAssetMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE1F0, &qword_255755F58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2556A253C();
  sub_255750FE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33) = 0;
  v29 = sub_255750D30();
  v42 = v11 & 1;
  LOBYTE(v30[0]) = 1;
  sub_255675208();
  sub_255750D40();
  v13 = v33;
  v12 = v34;
  LOBYTE(v30[0]) = 2;
  sub_255750D40();
  *&v28 = v13;
  *(&v28 + 1) = v12;
  v14 = v34;
  v27 = v33;
  v43 = 3;
  sub_255750D40();
  (*(v6 + 8))(v9, v5);
  v25 = *(&v41 + 1);
  v26 = v41;
  v15 = v14;
  v16 = *(&v28 + 1);
  v17 = v29;
  *&v30[0] = v29;
  v18 = v42;
  BYTE8(v30[0]) = v42;
  v19 = v28;
  v30[1] = v28;
  v20 = v27;
  *&v31 = v27;
  *(&v31 + 1) = v15;
  v32 = v41;
  v21 = v28;
  *a2 = v30[0];
  a2[1] = v21;
  v22 = v32;
  a2[2] = v31;
  a2[3] = v22;
  sub_2556A28D8(v30, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33 = v17;
  LOBYTE(v34) = v18;
  v35 = v19;
  v36 = v16;
  v37 = v20;
  v38 = v15;
  v39 = v26;
  v40 = v25;
  return sub_2556A2910(&v33);
}

unint64_t sub_2556A2940(uint64_t a1)
{
  *(a1 + 8) = sub_2556A2970();
  result = sub_2556A29C4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2556A2970()
{
  result = qword_27F7BE1F8;
  if (!qword_27F7BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE1F8);
  }

  return result;
}

unint64_t sub_2556A29C4()
{
  result = qword_27F7BE200;
  if (!qword_27F7BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE200);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_2556A2AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 64))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 24) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2556A2AFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_2556A2B80()
{
  result = qword_27F7BE208;
  if (!qword_27F7BE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE208);
  }

  return result;
}

unint64_t sub_2556A2BD8()
{
  result = qword_27F7BE210;
  if (!qword_27F7BE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE210);
  }

  return result;
}

unint64_t sub_2556A2C30()
{
  result = qword_27F7BE218;
  if (!qword_27F7BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE218);
  }

  return result;
}

uint64_t sub_2556A2C84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67694C726F6C6F63 && a2 == 0xEA00000000007468 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726144726F6C6F63 && a2 == 0xE90000000000006BLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_255750EB0();

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

JournalShared::TokenTypeIdentifier_optional __swiftcall TokenTypeIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TokenTypeIdentifier.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
    case 9:
    case 0xD:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD000000000000027;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      result = 0xD00000000000001DLL;
      break;
    case 8:
      result = 0xD000000000000024;
      break;
    case 0xA:
      result = 0xD000000000000022;
      break;
    case 0xB:
      result = 0xD000000000000023;
      break;
    case 0xC:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2556A2F94(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = TokenTypeIdentifier.rawValue.getter();
  v4 = v3;
  if (v2 == TokenTypeIdentifier.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_255750EB0();
  }

  return v7 & 1;
}

unint64_t sub_2556A3034()
{
  result = qword_27F7BE220;
  if (!qword_27F7BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE220);
  }

  return result;
}

uint64_t sub_2556A3088()
{
  v1 = *v0;
  sub_255750F80();
  TokenTypeIdentifier.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A30F0()
{
  v2 = *v0;
  TokenTypeIdentifier.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_2556A3154()
{
  v1 = *v0;
  sub_255750F80();
  TokenTypeIdentifier.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

unint64_t sub_2556A31C4@<X0>(unint64_t *a1@<X8>)
{
  result = TokenTypeIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TokenTypeIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

JournalShared::EntriesSortOrder_optional __swiftcall EntriesSortOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t EntriesSortOrder.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6144746E656D6F6DLL;
  }

  else
  {
    result = 0x7461447972746E65;
  }

  *v0;
  return result;
}

uint64_t sub_2556A3334(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6144746E656D6F6DLL;
  }

  else
  {
    v4 = 0x7461447972746E65;
  }

  if (v3)
  {
    v5 = 0xE900000000000065;
  }

  else
  {
    v5 = 0xEA00000000006574;
  }

  if (*a2)
  {
    v6 = 0x6144746E656D6F6DLL;
  }

  else
  {
    v6 = 0x7461447972746E65;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006574;
  }

  else
  {
    v7 = 0xE900000000000065;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255750EB0();
  }

  return v9 & 1;
}

uint64_t sub_2556A33E4()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A3470()
{
  *v0;
  sub_2557501F0();
}

uint64_t sub_2556A34E8()
{
  v1 = *v0;
  sub_255750F80();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A3570@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255750CD0();

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

void sub_2556A35D0(uint64_t *a1@<X8>)
{
  v2 = 0x7461447972746E65;
  if (*v1)
  {
    v2 = 0x6144746E656D6F6DLL;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xEA00000000006574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2556A36F8@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_25574EFF0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_25574F020();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_2556A37A4(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_2556700F4(a1, &v16 - v10);
  v12 = *a2;
  v13 = sub_25574F020();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_25574EFC0();
    (*(v14 + 8))(v11, v13);
  }

  [v12 *a5];
}

void sub_2556A3918(unsigned __int8 *a1)
{
  v1 = *a1;
  v4 = [objc_opt_self() standardUserDefaults];
  v2 = sub_255750180();

  v3 = sub_255750180();
  [v4 setObject:v2 forKey:v3];
}

void _s13JournalShared16EntriesSortOrderO8timelineACvsZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_255750180();

  v4 = sub_255750180();
  [v2 setObject:v3 forKey:v4];
}

unint64_t sub_2556A3B04()
{
  result = qword_27F7BE230;
  if (!qword_27F7BE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE230);
  }

  return result;
}

unint64_t sub_2556A3B58()
{
  result = qword_27F7BE238;
  if (!qword_27F7BE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE238);
  }

  return result;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.insertedObjectIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.updatedObjectIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.deletedObjectIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_2556A3CB0()
{
  result = qword_27F7BE248;
  if (!qword_27F7BE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE248);
  }

  return result;
}

double static NSManagedObjectContext.ObjectIDNotification.makeMessage(_:)@<D0>(void *a1@<X8>)
{
  v2 = sub_255750890();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_25574EB80();
  if (v24)
  {
    sub_255669A88(0, &qword_27F7BE258, 0x277CBE440);
    if (swift_dynamicCast())
    {
      v21 = v22;
      v10 = v3[13];
      v10(v9, *MEMORY[0x277CBE0E8], v2);
      v10(v7, *MEMORY[0x277CBE100], v2);
      sub_2556A516C();
      v20 = v11;
      v12 = v3[1];
      v12(v7, v2);
      v12(v9, v2);
      v10(v9, *MEMORY[0x277CBE0E0], v2);
      v10(v7, *MEMORY[0x277CBE0F8], v2);
      sub_2556A516C();
      v14 = v13;
      v12(v7, v2);
      v12(v9, v2);
      v10(v9, *MEMORY[0x277CBE0D8], v2);
      v10(v7, *MEMORY[0x277CBE0F0], v2);
      sub_2556A516C();
      v16 = v15;
      v12(v7, v2);
      v12(v9, v2);
      v18 = v20;
      *a1 = v21;
      a1[1] = v18;
      a1[2] = v14;
      a1[3] = v16;
      return result;
    }
  }

  else
  {
    sub_255674B20(v23, &qword_27F7BE250, &qword_255756600);
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

void sub_2556A400C(uint64_t a1@<X8>)
{
  static NSManagedObjectContext.ObjectIDNotification.makeMessage(_:)(&v4);
  if (v4)
  {
    v2 = v6;
    v3 = v5;
  }

  else
  {
    v2 = 0;
    v3 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 24) = v2;
}

Swift::Void __swiftcall NSManagedObjectContext.setInitialQueryGeneration()()
{
  v1 = sub_25574EF10();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = [v0 persistentStoreCoordinator];
  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = v13;
  v15 = [v13 persistentStores];

  sub_255669A88(0, &qword_27F7BE278, 0x277CBE4D0);
  v16 = sub_255750380();

  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_27:

    goto LABEL_28;
  }

  if (!sub_255750A30())
  {
    goto LABEL_27;
  }

LABEL_4:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x259C3E830](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v16 + 32);
  }

  v34 = v17;

  v18 = [v34 type];
  v19 = sub_2557501B0();
  v21 = v20;

  v22 = *MEMORY[0x277CBE170];
  if (v19 == sub_2557501B0() && v21 == v23)
  {

    return;
  }

  v24 = sub_255750EB0();

  if (v24)
  {
    v25 = v34;

    return;
  }

  v26 = [v34 URL];
  if (v26)
  {
    v27 = v26;
    sub_25574EEC0();

    (*(v2 + 56))(v10, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v10, 1, 1, v1);
  }

  sub_2556653A0(v10, v12);
  if ((*(v2 + 48))(v12, 1, v1))
  {
    sub_255674B20(v12, &qword_27F7BE270, &unk_25575A3F0);

LABEL_28:
    MEMORY[0x28223BE20](v13);
    *(&v33 - 2) = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE280, &qword_255756620);
    sub_255750870();
    return;
  }

  v28 = v0;
  (*(v2 + 16))(v5, v12, v1);
  sub_255674B20(v12, &qword_27F7BE270, &unk_25575A3F0);
  v29 = sub_25574EED0();
  v31 = v30;
  (*(v2 + 8))(v5, v1);
  if (v29 == 0x6C756E2F7665642FLL && v31 == 0xE90000000000006CLL)
  {

    return;
  }

  v32 = sub_255750EB0();

  v0 = v28;
  if ((v32 & 1) == 0)
  {
    goto LABEL_28;
  }
}

void sub_2556A4558(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() currentQueryGenerationToken];
  v10[0] = 0;
  v5 = [a1 setQueryGenerationFromToken:v4 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    v8 = sub_25574ED90();

    swift_willThrow();
  }

  *a2 = v5 ^ 1;
  v9 = *MEMORY[0x277D85DE8];
}

id NSManagedObjectContext.fetch<A>(_:batchSize:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v11[1] = *MEMORY[0x277D85DE8];
  [a1 setFetchBatchSize_];
  objc_opt_self();
  v11[0] = 0;
  v6 = [v4 executeFetchRequest:swift_dynamicCastObjCClassUnconditional() error:v11];
  v7 = v11[0];
  if (v6)
  {
    *a3 = v6;
    result = v7;
  }

  else
  {
    v9 = v11[0];
    sub_25574ED90();

    result = swift_willThrow();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2556A4750(uint64_t a1, id a2)
{
  v2 = [a2 objectAtIndex_];
  sub_255750980();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  return v4;
}

uint64_t sub_2556A47EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

id sub_2556A487C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  result = sub_2556A4744(*v2);
  *a2 = result;
  return result;
}

void (*sub_2556A48B0(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *(a3 + 16);
  v10 = sub_2556A4988(v7, *a2, *v3);
  v8[4] = v11;
  v8[5] = v10;
  return sub_2556A4940;
}

void sub_2556A4940(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

uint64_t sub_2556A49E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_2556A4ADC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_2556A4B64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_2556A4BE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2556A4C44()
{
  swift_getWitnessTable();
  v1 = sub_2556A7020();

  return v1;
}

void NSManagedObjectContext.forEach<A>(_:batchSize:using:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x259C3EDB0]();
  sub_2556A4D74(v5, a1, a2, a5, &v10, &v11);
  objc_autoreleasePoolPop(v9);
}

void sub_2556A4D74(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t *a5@<X6>, uint64_t *a6@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  NSManagedObjectContext.fetch<A>(_:batchSize:)(a2, a3, &v31);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    v23 = a6;
    v25 = v31;
    _s14FetchedResultsVMa();
    swift_getWitnessTable();
    sub_255750660();
    v26 = v28;
    v27 = v29;
    v24 = v28;
    v31 = v28;
    v32 = v29;
    sub_25574F260();
    sub_25574F220();
    sub_25574F250();
    if ((sub_25574F230() & 1) == 0)
    {
      v22 = a5;
      do
      {
        sub_25574F270();
        v11 = a4;
        v13 = *(&v28 + 1);
        v12 = v28;
        v14 = v29;
        v28 = v30;
        sub_25574F240();
        v28 = __PAIR128__(v13, v12);
        a4 = v11;
        v29 = v14;
        v15 = v14;
        v16 = MEMORY[0x259C3EDB0]();
        sub_2556A5090(&v28, &v26);
        objc_autoreleasePoolPop(v16);

        if ((v26 & 1) == 0)
        {

          break;
        }

        if ([a1 hasChanges])
        {
          *&v26 = 0;
          if (![a1 save_])
          {
            v20 = v26;
            v21 = sub_25574ED90();

            swift_willThrow();
            *v22 = v21;
            goto LABEL_12;
          }

          v17 = v26;
        }

        [a1 reset];

        sub_25574F250();
      }

      while ((sub_25574F230() & 1) == 0);
    }

    [a1 reset];
    *&v31 = v25;
    v18 = sub_2557506E0();

    *v23 = v18;
  }

LABEL_12:
  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2556A5090@<X0>(__int128 *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  _s14FetchedResultsVMa();
  swift_getWitnessTable();
  sub_255750F60();
  swift_getWitnessTable();
  result = sub_2557502C0();
  *a2 = result & 1;
  return result;
}

void sub_2556A516C()
{
  v0 = sub_25574EB90();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_255750880();
  sub_255750AA0();
  if (!*(v1 + 16) || (v2 = sub_255674984(v9), (v3 & 1) == 0))
  {

    sub_2556A7148(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_255678EBC(*(v1 + 56) + 32 * v2, &v10);
  sub_2556A7148(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_255674B20(&v10, &qword_27F7BE250, &qword_255756600);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE358, &qword_255756A08);
  if (swift_dynamicCast())
  {
    return;
  }

LABEL_10:
  v4 = sub_25574EB90();
  if (!v4)
  {
LABEL_17:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_18;
  }

  v5 = v4;
  sub_255750880();
  sub_255750AA0();
  if (!*(v5 + 16) || (v6 = sub_255674984(v9), (v7 & 1) == 0))
  {

    sub_2556A7148(v9);
    goto LABEL_17;
  }

  sub_255678EBC(*(v5 + 56) + 32 * v6, &v10);
  sub_2556A7148(v9);

  if (*(&v11 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE388, &qword_255756A10);
    if (swift_dynamicCast())
    {
      v8 = sub_2556A5454(v9[0]);

      sub_25569B688(v8);

      return;
    }

    goto LABEL_19;
  }

LABEL_18:
  sub_255674B20(&v10, &qword_27F7BE250, &qword_255756600);
LABEL_19:
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_255750A30())
    {
      sub_255725CD8(MEMORY[0x277D84F90]);
    }
  }
}

unint64_t sub_2556A53E4()
{
  result = qword_27F7BE268;
  if (!qword_27F7BE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE268);
  }

  return result;
}

uint64_t sub_2556A5454(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_255750A30();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x277D84F90];
    sub_255750BD0();
    result = sub_2557509E0();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x277D84F90];
  sub_255750BD0();
  v5 = -1 << *(a1 + 32);
  result = sub_2557509B0();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    sub_2556A6494(v28, v29, v30, a1);
    v14 = v13;
    v15 = [v13 objectID];

    sub_255750BB0();
    v16 = *(v31 + 16);
    sub_255750BE0();
    sub_255750BF0();
    result = sub_255750BC0();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_255750A00())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BE390, &qword_255756A18);
      v8 = sub_2557505B0();
      sub_255750A70();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_2556A719C(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_2556A719C(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_2556A719C(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

BOOL NSManagedObjectContext.ObjectIDNotification.affects(_:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(a1 + 16);
  if (v5)
  {
    v23 = MEMORY[0x277D84F90];

    sub_255750BD0();
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      v9 = [swift_getObjCClassFromMetadata() entity];
      sub_255750BB0();
      v10 = *(v23 + 16);
      sub_255750BE0();
      sub_255750BF0();
      sub_255750BC0();
      --v5;
    }

    while (v5);
    v11 = v23;
  }

  else
  {
    v12 = v1[1];

    v11 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE288, &unk_255756628);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2557565E0;
  *(v13 + 32) = v2;
  *(v13 + 40) = v3;
  *(v13 + 48) = v4;
  v23 = v13;
  v24 = 0;
  v25 = sub_2556A5A08;
  v26 = 0;
  v27 = 0xF000000000000007;
  v28 = 0u;
  v29 = 0u;
  v30 = sub_2556A5A78;
  KeyPath = swift_getKeyPath();
  swift_retain_n();

  do
  {
    sub_2556A67F8();
    v15 = v14;
    if (!v14)
    {
      break;
    }

    v16 = [v14 entity];

    v22 = v16;
    MEMORY[0x28223BE20](v17);
    v21[2] = &v22;
    v18 = sub_2556A5A80(sub_2556A6A50, v21, v11);
  }

  while ((v18 & 1) == 0);

  v19 = v27;

  sub_2556A6A3C(v19);

  return v15 != 0;
}

void sub_2556A5A20(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_2556A5A80(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x259C3E830](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_255750A30();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_2556A5BA8(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;

  sub_255714228(a3, a4, a5, &v17);
  sub_2556A66B8();
  if (v11)
  {
    v12 = v11;
    while (1)
    {
      v16 = v12;
      v13 = a1(&v16);

      if (v6 || (v13 & 1) != 0)
      {
        break;
      }

      sub_2556A66B8();
      v12 = v14;
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    sub_25568B1C8();

    return 1;
  }

  else
  {
LABEL_6:
    sub_25568B1C8();

    return 0;
  }
}

uint64_t sub_2556A5CA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.affects<A>(_:where:)()
{
  v2 = *v0;
  v3 = v0[1];
  sub_255750870();
  return v4;
}

uint64_t sub_2556A5DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v22 = a6;
  v23 = a7;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  result = sub_2556A6190(sub_2556A625C);
  if (result)
  {
    v16 = 1;
  }

  else
  {
    v21 = a8;
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v20[0] = a5;
    v28 = v8;
    v20[2] = v20;
    v24 = sub_2556A602C(sub_2556A7220);
    MEMORY[0x28223BE20](v24);
    v17 = sub_255750470();
    swift_getWitnessTable();
    v20[1] = v17;
    v18 = v28;
    v19 = sub_255750310();
    v28 = v18;

    if (v19)
    {
      v16 = 1;
    }

    else
    {
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v27 = a4;
      v24 = sub_2556A602C(sub_2556A7224);
      MEMORY[0x28223BE20](v24);
      v16 = sub_255750310();
    }

    a8 = v21;
  }

  *a8 = v16 & 1;
  return result;
}

uint64_t sub_2556A602C(uint64_t (*a1)(void *))
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v7[0] = *v1;
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  v7[0] = a1(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE358, &qword_255756A08);
  sub_255669798(&unk_27F7BE360, &qword_27F7BE358, &qword_255756A08);
  v5 = sub_2557502D0();

  return v5;
}

uint64_t sub_2556A6144(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  v5 = *v3;
  v6 = v3[1];
  return sub_2556A6190(a3) & 1;
}

uint64_t sub_2556A6190(uint64_t (*a1)(_OWORD *))
{
  v2 = v1[1];
  v8[0] = *v1;
  v8[1] = v2;
  v3 = a1(v8);
  v4 = [swift_getObjCClassFromMetadata() entity];
  *&v8[0] = v4;
  v7[2] = v8;
  v5 = sub_2556A5BA8(sub_2556A7248, v7, v3, sub_2556A6340, 0);

  return v5 & 1;
}

uint64_t NSManagedObjectContext.ObjectIDNotification.refreshedObjects<A>(of:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_2556A602C(sub_2556A7220);
  sub_2556A602C(sub_2556A7224);
  v5 = sub_2557503C0();

  return v5;
}

id sub_2556A6340@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entity];
  *a2 = result;
  return result;
}

uint64_t sub_2556A637C@<X0>(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  [a1 objectWithID_];
  sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
  v6 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v6 ^ 1u, 1, a3);
}

uint64_t sub_2556A643C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_2556A71A8(*(a3 + 48) + 40 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_2556A6494(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x259C3E720](a1, a2, v7);
      sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
    if (sub_255750A10() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_255750A20();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_255750930();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_255750940();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

void sub_2556A66B8()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    v4 = sub_255750A60();
    if (v4)
    {
      v13 = v4;
      sub_255669A88(0, &qword_27F7BE370, 0x277CBE448);
      swift_dynamicCast();
      v5 = v14;
      if (v14)
      {
LABEL_16:
        v12 = v0[5];
        v11 = v0[6];
        v14 = v5;
        v12(&v13, &v14);
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (v2)
    {
      v3 = v0[3];
LABEL_14:
      v9 = (v2 - 1) & v2;
      v5 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));
      v10 = v5;
      v8 = v3;
LABEL_15:
      v0[3] = v8;
      v0[4] = v9;
      if (v5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v6 = (v0[2] + 64) >> 6;
      if (v6 <= v1 + 1)
      {
        v7 = v1 + 1;
      }

      else
      {
        v7 = (v0[2] + 64) >> 6;
      }

      v8 = v7 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v6)
        {
          v5 = 0;
          v9 = 0;
          goto LABEL_15;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_2556A67F8()
{
  v1 = v0;
  v2 = v0[4];
  while (1)
  {
    if ((~v2 & 0xF000000000000007) == 0)
    {
      goto LABEL_20;
    }

    if (v2 < 0)
    {
      v14 = sub_255750A60();
      if (v14)
      {
        v29 = v14;
        sub_255669A88(0, &qword_27F7BE370, 0x277CBE448);
        swift_dynamicCast();
        if (v30[0])
        {
          return;
        }
      }

      goto LABEL_20;
    }

    v11 = v1[7];
    v12 = v1[8];
    if (!v12)
    {
      break;
    }

    v13 = v1[7];
LABEL_18:
    v18 = (v12 - 1) & v12;
    v19 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    v20 = v19;
    v17 = v13;
LABEL_19:
    v1[7] = v17;
    v1[8] = v18;
    if (v19)
    {
      return;
    }

LABEL_20:
    v21 = v1[1];
    v22 = *(*v1 + 16);
    if (v21 == v22)
    {
      return;
    }

    if (v21 >= v22)
    {
      goto LABEL_30;
    }

    v23 = *(*v1 + 8 * v21 + 32);
    v1[1] = v21 + 1;
    v25 = v1[2];
    v24 = v1[3];
    v30[0] = v23;

    v25(&v29, v30);

    v2 = v29;
    if ((v29 & 0xC000000000000001) != 0)
    {
      sub_2557509F0();
      sub_255669A88(0, &qword_27F7BE370, 0x277CBE448);
      sub_2556A70E0();
      sub_2557505C0();
      v2 = v30[1];
      v3 = v30[2];
      v5 = v30[3];
      v4 = v30[4];
      v6 = v30[5];
    }

    else
    {
      v4 = 0;
      v26 = -1 << *(v29 + 32);
      v3 = v29 + 56;
      v5 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v6 = v28 & *(v29 + 56);
    }

    v7 = v1[5];
    v8 = v1[6];
    v9 = v1[7];
    v10 = v1[8];
    sub_2556A6A3C(v1[4]);
    v1[4] = v2;
    v1[5] = v3;
    v1[6] = v5;
    v1[7] = v4;
    v1[8] = v6;
  }

  v15 = (v1[6] + 64) >> 6;
  if (v15 <= v11 + 1)
  {
    v16 = v11 + 1;
  }

  else
  {
    v16 = (v1[6] + 64) >> 6;
  }

  v17 = v16 - 1;
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v15)
    {
      v19 = 0;
      v18 = 0;
      goto LABEL_19;
    }

    v12 = *(v1[5] + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_2556A6A3C(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_25568B1C8();
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2556A6AB8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2556A6B10(uint64_t *a1, int a2)
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

uint64_t sub_2556A6B58(uint64_t result, int a2, int a3)
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

unint64_t sub_2556A6C20()
{
  result = qword_27F7BE340;
  if (!qword_27F7BE340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE340);
  }

  return result;
}

uint64_t sub_2556A6D94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BE338, &qword_2557567F0);
    sub_2556A6C20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2556A6E70()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_2557500F0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v1 = *(sub_255750720() + 36);
  result = sub_2557500F0();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2556A6F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_2557500F0();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2556A7024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  return sub_2556A637C(*(v2 + 24), a1, *(v2 + 16), a2);
}

uint64_t sub_2556A7048(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_255669A88(0, &qword_27F7BE378, 0x277CBE408);
  return sub_255750940() & 1;
}

uint64_t sub_2556A70B0(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1) & 1;
}

unint64_t sub_2556A70E0()
{
  result = qword_27F7BE380;
  if (!qword_27F7BE380)
  {
    sub_255669A88(255, &qword_27F7BE370, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE380);
  }

  return result;
}

uint64_t sub_2556A719C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t static MergeableColor.random.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = vcvtd_n_f64_u64(sub_2556AA550(0x20000000000001uLL), 0x35uLL) + 0.0;
  v3 = vcvtd_n_f64_u64(sub_2556AA550(0x20000000000001uLL), 0x35uLL) + 0.0;
  v4 = vcvtd_n_f64_u64(sub_2556AA550(0x20000000000001uLL), 0x35uLL) + 0.0;
  v5 = a1 + *(type metadata accessor for SRGBColor(0) + 32);
  sub_25574FB20();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0x3FF0000000000000;
  type metadata accessor for MergeableColor(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t SRGBColor.init(cgColor:)@<X0>(CGColor *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SRGBColor(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 32);
  sub_25574FB20();
  CopyByMatchingToColorSpace = CGColorGetColorSpace(a1);
  if (qword_27F7BD6E0 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v12 = qword_27F7BE3A0;
    if (!CopyByMatchingToColorSpace)
    {
      goto LABEL_5;
    }

    type metadata accessor for CGColorSpace(0);
    sub_255668360(&qword_27F7BE3A8, type metadata accessor for CGColorSpace);
    v13 = v12;
    v29 = v12;
    v14 = v13;
    v15 = sub_25574F1F0();

    v12 = v29;
    if (v15)
    {
      CopyByMatchingToColorSpace = a1;
    }

    else
    {
LABEL_5:
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v12, kCGRenderingIntentDefault, a1, 0);
      if (!CopyByMatchingToColorSpace)
      {
        goto LABEL_15;
      }
    }

    if (CGColorGetNumberOfComponents(CopyByMatchingToColorSpace) != 4 || (v16 = sub_255750730()) == 0)
    {

LABEL_15:
      v23 = sub_25574FB30();
      (*(*(v23 - 8) + 8))(&v9[v10], v23);
      return (*(v5 + 56))(a2, 1, 1, v4);
    }

    v10 = *(v16 + 16);
    if (v10)
    {
      break;
    }

    v18 = MEMORY[0x277D84F90];
    v25 = *(MEMORY[0x277D84F90] + 16);
    if (v25)
    {
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v28 = a2;
  v29 = v16;
  v30 = MEMORY[0x277D84F90];
  sub_2556A9C78(0, v10, 0);
  v17 = v29;
  v18 = v30;
  v19 = v30[2];
  v20 = 32;
  do
  {
    v21 = *&v17[v20];
    v30 = v18;
    v22 = v18[3];
    if (v19 >= v22 >> 1)
    {
      sub_2556A9C78((v22 > 1), v19 + 1, 1);
      v17 = v29;
      v18 = v30;
    }

    v18[2] = v19 + 1;
    v18[v19 + 4] = v21;
    v20 += 8;
    ++v19;
    --v10;
  }

  while (v10);

  a2 = v28;
  v25 = v18[2];
  if (!v25)
  {
    goto LABEL_22;
  }

LABEL_17:
  *v9 = v18[4];
  if (v25 == 1)
  {
    __break(1u);
    goto LABEL_25;
  }

  *(v9 + 1) = v18[5];
  if (v25 < 3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v9 + 2) = v18[6];
  if (v25 != 3)
  {
    v26 = v18[7];

    *(v9 + 3) = v26;
    sub_25567352C(v9, a2, type metadata accessor for SRGBColor);
    (*(v5 + 56))(a2, 0, 1, v4);
    return sub_255673758(v9, type metadata accessor for SRGBColor);
  }

LABEL_26:
  __break(1u);
  return result;
}

JournalShared::AssetCatalogColor_optional __swiftcall AssetCatalogColor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_255750CD0();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AssetCatalogColor.rawValue.getter()
{
  result = 0x6E69677265627541;
  switch(*v0)
  {
    case 1:
      result = 0x6873756C42;
      break;
    case 2:
      result = 0x6B63697242;
      break;
    case 3:
      result = 0x746C61626F43;
      break;
    case 4:
      result = 0x776F6C666E726F43;
      break;
    case 5:
      result = 0x6E69507974737544;
      break;
    case 6:
      result = 0x646C6172656D45;
      break;
    case 7:
      result = 0x6863616550;
      break;
    case 8:
      result = 1701273939;
      break;
    case 9:
      result = 1684955475;
      break;
    case 0xA:
      result = 0x73696F7571727554;
      break;
    case 0xB:
      result = 0x74656C6F6956;
      break;
    case 0xC:
      result = 0x6F7268636F6E6F4DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2556A78E8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = AssetCatalogColor.rawValue.getter();
  v4 = v3;
  if (v2 == AssetCatalogColor.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_255750EB0();
  }

  return v7 & 1;
}

uint64_t sub_2556A7984()
{
  v1 = *v0;
  sub_255750F80();
  AssetCatalogColor.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A79EC()
{
  v2 = *v0;
  AssetCatalogColor.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_2556A7A50()
{
  v1 = *v0;
  sub_255750F80();
  AssetCatalogColor.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_2556A7AC0@<X0>(uint64_t *a1@<X8>)
{
  result = AssetCatalogColor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2556A7B04()
{
  sub_2556AAA10();
  sub_2556AA758();

  return sub_25574FDD0();
}

uint64_t sub_2556A7B74()
{
  sub_2556AAA10();
  sub_2556AA9BC();
  return sub_25574FDF0();
}

uint64_t sub_2556A7BE0()
{
  sub_2556AAA10();
  sub_2556AA9BC();
  return sub_25574FE00();
}

uint64_t sub_2556A7C3C(uint64_t a1)
{
  v2 = sub_2556AAA10();
  v3 = sub_2556AA9BC();
  v4 = MEMORY[0x277CFB7D8];

  return MEMORY[0x28214E330](a1, v2, v3, v4);
}

uint64_t sub_2556A7CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2556AA9BC();
  v5 = MEMORY[0x277CFB7D8];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t MergeableColor.init(cgColor:)@<X0>(CGColor *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MergeableColor(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3B8, &unk_255756A20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SRGBColor(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  SRGBColor.init(cgColor:)(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_255674B20(v12, &qword_27F7BE3B8, &unk_255756A20);
    v18 = 1;
  }

  else
  {
    sub_255673644(v12, v17, type metadata accessor for SRGBColor);
    sub_255673644(v17, v8, type metadata accessor for SRGBColor);
    swift_storeEnumTagMultiPayload();
    sub_255673644(v8, a2, type metadata accessor for MergeableColor);
    v18 = 0;
  }

  return (*(v5 + 56))(a2, v18, 1, v4);
}

uint64_t sub_2556A7FBC(void (*a1)(_BYTE *))
{
  sub_255750F80();
  a1(v3);
  return sub_255750FD0();
}

uint64_t sub_2556A801C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_255750F80();
  a3(v5);
  return sub_255750FD0();
}

uint64_t sub_2556A807C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_255750F80();
  a4(v6);
  return sub_255750FD0();
}

uint64_t SRGBColor.description.getter()
{
  sub_255750B00();
  MEMORY[0x259C3DED0](0x6F6C6F4342475253, 0xED0000203A722872);
  v1 = *v0;
  sub_255750530();
  MEMORY[0x259C3DED0](0x203A67202CLL, 0xE500000000000000);
  v2 = v0[1];
  sub_255750530();
  MEMORY[0x259C3DED0](0x203A62202CLL, 0xE500000000000000);
  v3 = v0[2];
  sub_255750530();
  MEMORY[0x259C3DED0](0x203A61202CLL, 0xE500000000000000);
  v4 = v0[3];
  sub_255750530();
  MEMORY[0x259C3DED0](41, 0xE100000000000000);
  return 0;
}

uint64_t MergeableColor.sRGB.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableColor(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v2, v7, type metadata accessor for MergeableColor);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_255673758(v7, type metadata accessor for MergeableColor);
    v8 = 1;
  }

  else
  {
    sub_255673644(v7, a1, type metadata accessor for SRGBColor);
    v8 = 0;
  }

  v9 = type metadata accessor for SRGBColor(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t MergeableColor.catalogColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableColor(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v2, v7, type metadata accessor for MergeableColor);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v9 = *v7;
    v10 = v7[16];
  }

  else
  {
    result = sub_255673758(v7, type metadata accessor for MergeableColor);
    v9 = 0uLL;
    v10 = -1;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  return result;
}

uint64_t MergeableColor.unknown.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MergeableColor(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v2, v7, type metadata accessor for MergeableColor);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250) + 48);
    v9 = sub_25574F320();
    v10 = *(v9 - 8);
    (*(v10 + 32))(a1, &v7[v8], v9);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }

  else
  {
    sub_255673758(v7, type metadata accessor for MergeableColor);
    v12 = sub_25574F320();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t MergeableColor.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v64 = a1;
  v59 = a2;
  v65 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v56 - v7;
  v8 = sub_25574FB50();
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v57 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = type metadata accessor for SRGBColor(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v56 - v19;
  v21 = type metadata accessor for MergeableColor(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C8, &unk_255756A40);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v56 - v31;
  v33 = &v56 + *(v30 + 56) - v31;
  sub_25567352C(v63, &v56 - v31, type metadata accessor for MergeableColor);
  sub_25567352C(v64, v33, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v64 = v13;
    v41 = v62;
    sub_25567352C(v32, v27, type metadata accessor for MergeableColor);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_255673644(v27, v20, type metadata accessor for SRGBColor);
      sub_255673644(v33, v18, type metadata accessor for SRGBColor);
      sub_255668360(&qword_27F7BE3E0, type metadata accessor for SRGBColor);
      sub_255668360(&qword_27F7BE3E8, type metadata accessor for SRGBColor);
      sub_25574FDD0();
      sub_255673758(v18, type metadata accessor for SRGBColor);
      sub_255673758(v20, type metadata accessor for SRGBColor);
      v52 = v60;
      v51 = v61;
      if ((*(v60 + 48))(v41, 1, v61) != 1)
      {
        v54 = *(v52 + 32);
        v55 = v64;
        v54(v64, v41, v51);
        v46 = v65;
        v54(v65, v55, v51);
        v47 = type metadata accessor for MergeableColor.ObservableDifference(0);
        goto LABEL_13;
      }

LABEL_11:
      sub_255674B20(v41, &qword_27F7BDDD0, &qword_25575D7A0);
      sub_255673758(v32, type metadata accessor for MergeableColor);
      v53 = type metadata accessor for MergeableColor.ObservableDifference(0);
      return (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
    }

    sub_255673758(v27, type metadata accessor for SRGBColor);
LABEL_9:
    v48 = type metadata accessor for MergeableColor.ObservableDifference(0);
    v49 = v65;
    swift_storeEnumTagMultiPayload();
    (*(*(v48 - 8) + 56))(v49, 0, 1, v48);
    return sub_255674B20(v32, &qword_27F7BE3C8, &unk_255756A40);
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_9;
  }

  sub_25567352C(v32, v25, type metadata accessor for MergeableColor);
  v36 = *v25;
  v35 = *(v25 + 1);
  v37 = v25[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2556AA66C(v36, v35, v37);
    goto LABEL_9;
  }

  v38 = *v33;
  v39 = *(v33 + 1);
  v40 = v33[16];
  v69 = v36;
  v70 = v35;
  v71 = v37;
  v66 = v38;
  v67 = v39;
  v68 = v40;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C0, &unk_255756A30);
  sub_255669798(&qword_27F7BE3D0, &qword_27F7BE3C0, &unk_255756A30);
  sub_255669798(&qword_27F7BE3D8, &qword_27F7BE3C0, &unk_255756A30);
  v41 = v58;
  sub_25574FDD0();
  sub_2556AA66C(v38, v39, v40);
  sub_2556AA66C(v36, v35, v37);
  v43 = v60;
  v42 = v61;
  if ((*(v60 + 48))(v41, 1, v61) == 1)
  {
    goto LABEL_11;
  }

  v44 = *(v43 + 32);
  v45 = v57;
  v44(v57, v41, v42);
  v46 = v65;
  v44(v65, v45, v42);
  v47 = type metadata accessor for MergeableColor.ObservableDifference(0);
LABEL_13:
  swift_storeEnumTagMultiPayload();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  return sub_255673758(v32, type metadata accessor for MergeableColor);
}

uint64_t MergeableColor.visitReferences(_:)()
{
  v1 = v0;
  v2 = sub_25574F320();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SRGBColor(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MergeableColor(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v1, v14, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_255673758(v14, type metadata accessor for MergeableColor);
    }

    else
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      (*(v3 + 32))(v6, &v14[*(v18 + 48)], v2);
      sub_25574F2E0();
      return (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    sub_255673644(v14, v10, type metadata accessor for SRGBColor);
    v17 = &v10[*(v7 + 32)];
    sub_25574FAE0();
    return sub_255673758(v10, type metadata accessor for SRGBColor);
  }
}

uint64_t MergeableColor.copy(renamingReferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a1;
  v5 = sub_25574F320();
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25574FB30();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SRGBColor(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for MergeableColor(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v3, v20, type metadata accessor for MergeableColor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v20[16];
      *a2 = *v20;
      *(a2 + 16) = v22;
    }

    else
    {
      v25 = *v20;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
      v27 = v32;
      (*(v32 + 32))(v8, &v20[*(v26 + 48)], v5);
      v28 = *(v26 + 48);
      *a2 = v25;
      sub_25574F300();
      (*(v27 + 8))(v8, v5);
    }
  }

  else
  {
    sub_255673644(v20, v16, type metadata accessor for SRGBColor);
    sub_25567352C(v16, a2, type metadata accessor for SRGBColor);
    v23 = v16[1];
    *a2 = *v16;
    *(a2 + 16) = v23;
    v24 = v16 + *(v13 + 32);
    sub_25574FB00();
    sub_255673758(v16, type metadata accessor for SRGBColor);
    (*(v31 + 40))(a2 + *(v13 + 32), v12, v9);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t SRGBColor.copy(renamingReferences:)@<X0>(char *a1@<X8>)
{
  v3 = sub_25574FB30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v1, a1, type metadata accessor for SRGBColor);
  v8 = v1[1];
  *a1 = *v1;
  *(a1 + 1) = v8;
  v9 = type metadata accessor for SRGBColor(0);
  v10 = v1 + *(v9 + 32);
  sub_25574FB00();
  return (*(v4 + 40))(&a1[*(v9 + 32)], v7, v3);
}

uint64_t MergeableColor.encode(to:)()
{
  v1 = sub_25574F320();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SRGBColor(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MergeableColor(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25574FF20();
  if (!v0)
  {
    sub_25567352C(v25, v13, type metadata accessor for MergeableColor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v17 = *(v13 + 1);
        v18 = v13[16];
        v22 = *v13;
        v16 = v22;
        v23 = v17;
        v24 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3C0, &unk_255756A30);
        sub_255669798(&qword_27F7BE3D0, &qword_27F7BE3C0, &unk_255756A30);
        sub_25574FF50();
        sub_2556AA66C(v16, v17, v18);
        sub_25574FF30();
      }

      else
      {
        v19 = *v13;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
        (*(v2 + 32))(v5, &v13[*(v20 + 48)], v1);
        sub_25574FF50();
        sub_25574FF30();

        return (*(v2 + 8))(v5, v1);
      }
    }

    else
    {
      sub_255673644(v13, v9, type metadata accessor for SRGBColor);
      sub_255668360(&qword_27F7BE3E0, type metadata accessor for SRGBColor);
      sub_25574FF50();
      sub_25574FF30();

      return sub_255673758(v9, type metadata accessor for SRGBColor);
    }
  }

  return result;
}

uint64_t sub_2556A9804@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_25574F770();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t SRGBColor.encode(to:)()
{
  result = sub_25574FF70();
  if (!v1)
  {
    v4 = *v0;
    sub_25574FF80();
    v5 = v0[1];
    sub_25574FF80();
    v6 = v0[2];
    sub_25574FF80();
    v7 = v0[3];
    sub_25574FF80();
    v3 = v0 + *(type metadata accessor for SRGBColor(0) + 32);
    sub_25574FB10();
  }

  return result;
}

uint64_t sub_2556A99C4@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = sub_25574FB30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25567352C(v2, a2, type metadata accessor for SRGBColor);
  v10 = v2[1];
  *a2 = *v2;
  *(a2 + 1) = v10;
  v11 = v2 + *(a1 + 32);
  sub_25574FB00();
  return (*(v6 + 40))(&a2[*(a1 + 32)], v9, v5);
}

uint64_t sub_2556A9ADC()
{
  sub_255668360(&qword_27F7BE3E0, type metadata accessor for SRGBColor);
  sub_255668360(&qword_27F7BE3E8, type metadata accessor for SRGBColor);

  return sub_25574FDD0();
}

uint64_t sub_2556A9C0C@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_25574F770();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

char *sub_2556A9C78(char *a1, int64_t a2, char a3)
{
  result = sub_2556A9D58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2556A9C98(char *a1, int64_t a2, char a3)
{
  result = sub_2556A9E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2556A9CB8(size_t a1, int64_t a2, char a3)
{
  result = sub_2556AA368(a1, a2, a3, *v3, &qword_27F7BE4C0, &qword_255757010, &qword_27F7BE4C8, &qword_255757018);
  *v3 = result;
  return result;
}

char *sub_2556A9CF8(char *a1, int64_t a2, char a3)
{
  result = sub_2556A9F50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2556A9D18(char *a1, int64_t a2, char a3)
{
  result = sub_2556AA060(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2556A9D38(size_t a1, int64_t a2, char a3)
{
  result = sub_2556AA16C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2556A9D58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4D0, &qword_255757020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2556A9E5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4B8, &qword_255757008);
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

char *sub_2556A9F50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4B0, &qword_255757000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2556AA060(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE090, &qword_255755C40);
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

size_t sub_2556AA16C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE0A0, &qword_255756FE0);
  v10 = *(sub_25574F0D0() - 8);
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
  v15 = *(sub_25574F0D0() - 8);
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

size_t sub_2556AA368(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

unint64_t sub_2556AA550(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x259C3F540](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x259C3F540](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s13JournalShared9SRGBColorV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v3 = *(type metadata accessor for SRGBColor(0) + 32);

  return sub_25574FAF0();
}

uint64_t sub_2556AA66C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2556AA69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2556AA758()
{
  result = qword_27F7BE408;
  if (!qword_27F7BE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE408);
  }

  return result;
}

unint64_t sub_2556AA7F4()
{
  result = qword_27F7BE420;
  if (!qword_27F7BE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE420);
  }

  return result;
}

unint64_t sub_2556AA84C()
{
  result = qword_27F7BE428;
  if (!qword_27F7BE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE428);
  }

  return result;
}

void sub_2556AA940()
{
  if (!qword_27F7BE478)
  {
    sub_2556AA9BC();
    v0 = sub_25574F540();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BE478);
    }
  }
}

unint64_t sub_2556AA9BC()
{
  result = qword_27F7BE480;
  if (!qword_27F7BE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE480);
  }

  return result;
}

unint64_t sub_2556AAA10()
{
  result = qword_27F7BE498;
  if (!qword_27F7BE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE498);
  }

  return result;
}

uint64_t sub_2556AAA64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2556AAAD4()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BE4D8);
  __swift_project_value_buffer(v0, qword_27F7BE4D8);
  return sub_25574F2B0();
}

BOOL JournalEntryMO.isRecentlyDeleted.getter()
{
  v1 = v0;
  v2 = sub_25574F020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13 - v9;
  v11 = [v1 deletedOnDate];
  if (v11)
  {
    sub_25574EFF0();

    (*(v3 + 32))(v10, v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
  }

  sub_255687634(v10);
  return v11 != 0;
}

id JournalEntryMO.isPermanentlyDeleted.getter()
{
  result = [v0 isRemovedFromCloud];
  if (result)
  {
    return ([v0 isUploadedToCloud] ^ 1);
  }

  return result;
}

Swift::Void __swiftcall JournalEntryMO.markAsRecentlyDeleted()()
{
  v1 = v0;
  v2 = sub_25574F020();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F000();
  v7 = sub_25574EFC0();
  (*(v3 + 8))(v6, v2);
  [v1 setDeletedOnDate_];

  [v1 setIsUploadedToCloud_];
}

Swift::Void __swiftcall JournalEntryMO.recoverRecentlyDeleted()()
{
  [v0 setDeletedOnDate_];

  [v0 setIsUploadedToCloud_];
}

Swift::Void __swiftcall JournalEntryMO.markAsPermanentlyDeleted()()
{
  [v0 setIsRemovedFromCloud_];

  [v0 setIsUploadedToCloud_];
}

void static JournalDataUtilities.recoverAllRecentlyDeletedEntries(context:)()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_255750180();
  v3 = [v1 initWithEntityName_];

  if (qword_27F7BD6B0 != -1)
  {
    swift_once();
  }

  [v3 setPredicate_];
  type metadata accessor for JournalEntryMO();
  v4 = sub_2557508C0();
  if (v0)
  {

    return;
  }

  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_14:

    return;
  }

  v6 = sub_255750A30();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C3E830](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      [v8 setDeletedOnDate_];
      [v9 setIsUploadedToCloud_];
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  __break(1u);
}

void static JournalDataUtilities.permanentlyDeleteAllRecentlyDeletedEntries(context:)()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_255750180();
  v3 = [v1 initWithEntityName_];

  if (qword_27F7BD6B0 != -1)
  {
    swift_once();
  }

  [v3 setPredicate_];
  type metadata accessor for JournalEntryMO();
  v4 = sub_2557508C0();
  if (v0)
  {

    return;
  }

  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_14:

    return;
  }

  v6 = sub_255750A30();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x259C3E830](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      [v8 setIsRemovedFromCloud_];
      [v9 setIsUploadedToCloud_];
    }

    while (v6 != v7);
    goto LABEL_14;
  }

  __break(1u);
}

void static JournalDataUtilities.permanentlyDeleteRecentlyDeletedExpiredEntries(context:)()
{
  v1 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v2 = sub_255750180();
  v3 = [v1 initWithEntityName_];

  v4 = _sSo11NSPredicateC13JournalSharedE043recentlyDeletedEntriesToBeLocallyPermanenlyE0ABvgZ_0();
  [v3 setPredicate_];

  type metadata accessor for JournalEntryMO();
  v5 = sub_2557508C0();
  if (v0)
  {
  }

  else
  {
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
    {
      if (qword_27F7BD6E8 != -1)
      {
        swift_once();
      }

      v9 = sub_25574F2C0();
      __swift_project_value_buffer(v9, qword_27F7BE4D8);

      v10 = sub_25574F2A0();
      v11 = sub_2557507A0();
      v17 = v3;
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        if (v7)
        {
          v13 = sub_255750A30();
        }

        else
        {
          v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v12 + 4) = v13;

        _os_log_impl(&dword_255661000, v10, v11, "permanentlyDeleteRecentlyDeletedExpiredEntries found %ld to delete.", v12, 0xCu);
        MEMORY[0x259C3F520](v12, -1, -1);
      }

      else
      {
      }

      v14 = 0;
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x259C3E830](v14, v6);
        }

        else
        {
          if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v15 = *(v6 + 8 * v14 + 32);
        }

        v16 = v15;
        v3 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          break;
        }

        [v15 setIsRemovedFromCloud_];
        [v16 setIsUploadedToCloud_];

        ++v14;
        if (v3 == i)
        {

          return;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }
  }
}

uint64_t PhotoLibraryAssetMetadata.assetIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PhotoLibraryAssetMetadata.placeName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PhotoLibraryAssetMetadata() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PhotoLibraryAssetMetadata.latitude.getter()
{
  v1 = (v0 + *(type metadata accessor for PhotoLibraryAssetMetadata() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PhotoLibraryAssetMetadata.latitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for PhotoLibraryAssetMetadata();
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t PhotoLibraryAssetMetadata.longitude.getter()
{
  v1 = (v0 + *(type metadata accessor for PhotoLibraryAssetMetadata() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PhotoLibraryAssetMetadata.longitude.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for PhotoLibraryAssetMetadata();
  v6 = v2 + *(result + 32);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t PhotoLibraryAssetMetadata.size.getter()
{
  v1 = (v0 + *(type metadata accessor for PhotoLibraryAssetMetadata() + 36));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t PhotoLibraryAssetMetadata.squareCropRect.getter()
{
  v1 = (v0 + *(type metadata accessor for PhotoLibraryAssetMetadata() + 40));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PhotoLibraryAssetMetadata.landscapeCropRect.getter()
{
  v1 = (v0 + *(type metadata accessor for PhotoLibraryAssetMetadata() + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PhotoLibraryAssetMetadata.portraitCropRect.getter()
{
  v1 = (v0 + *(type metadata accessor for PhotoLibraryAssetMetadata() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v23 = type metadata accessor for PhotoLibraryAssetMetadata();
  v24 = (a9 + v23[6]);
  v25 = a9 + v23[7];
  v26 = a9 + v23[8];
  *a9 = a1;
  a9[1] = a2;
  result = sub_2556719B8(a3, a9 + v23[5]);
  *v24 = a4;
  v24[1] = a5;
  *v25 = a6;
  v25[8] = a7 & 1;
  *v26 = a8;
  v26[8] = a10 & 1;
  v28 = a9 + v23[9];
  *v28 = a11;
  *(v28 + 1) = a12;
  v28[16] = a13 & 1;
  v29 = (a9 + v23[10]);
  *v29 = a14;
  v29[1] = a15;
  v30 = (a9 + v23[11]);
  *v30 = a16;
  v30[1] = a17;
  v31 = (a9 + v23[12]);
  *v31 = a18;
  v31[1] = a19;
  return result;
}

uint64_t sub_2556AB95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2556ABEB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2556AB990(uint64_t a1)
{
  v2 = sub_25567159C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2556AB9CC(uint64_t a1)
{
  v2 = sub_25567159C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PhotoLibraryAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE4F0, &qword_255757038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25567159C();
  sub_255750FF0();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v37) = 0;
  sub_255750DB0();
  if (!v2)
  {
    v13 = type metadata accessor for PhotoLibraryAssetMetadata();
    v14 = v13[5];
    LOBYTE(v37) = 1;
    sub_25574F020();
    sub_255671778(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v37) = 2;
    sub_255750DB0();
    v18 = v3 + v13[7];
    v19 = *v18;
    v20 = v18[8];
    LOBYTE(v37) = 3;
    sub_255750DD0();
    v21 = v3 + v13[8];
    v22 = *v21;
    v23 = v21[8];
    LOBYTE(v37) = 4;
    sub_255750DD0();
    v24 = v3 + v13[9];
    v25 = v24[16];
    v37 = *v24;
    v38 = v25;
    v36[15] = 5;
    type metadata accessor for CGSize(0);
    sub_255671778(&qword_27F7BE500, type metadata accessor for CGSize);
    sub_255750DF0();
    v26 = (v3 + v13[10]);
    v27 = *v26;
    v28 = v26[1];
    LOBYTE(v37) = 6;
    sub_255750DB0();
    v29 = (v3 + v13[11]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v37) = 7;
    sub_255750DB0();
    v32 = (v3 + v13[12]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v37) = 8;
    sub_255750DB0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2556ABD74(uint64_t a1)
{
  *(a1 + 8) = sub_255671778(&qword_27F7BE518, type metadata accessor for PhotoLibraryAssetMetadata);
  result = sub_255671778(&qword_27F7BE520, type metadata accessor for PhotoLibraryAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2556ABDF8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

unint64_t sub_2556ABE60()
{
  result = qword_27F7BE548;
  if (!qword_27F7BE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BE548);
  }

  return result;
}

uint64_t sub_2556ABEB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564497465737361 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E6563616C70 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7243657261757173 && a2 == 0xEE0074636552706FLL || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000255752930 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000255752950 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_255750EB0();

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