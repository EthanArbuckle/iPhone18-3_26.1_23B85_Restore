uint64_t sub_2436B4D34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v16 - v2);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      return sub_243671AC8(v3, &qword_27ED7F128, &qword_2436D1EF0);
    }

    v5 = *v3;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
    }

    if (v5 >> 62)
    {
      v6 = sub_2436CC008();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_6:
        v17 = MEMORY[0x277D84F90];
        result = sub_2436C1A68(0, v6 & ~(v6 >> 63), 0);
        if (v6 < 0)
        {
          __break(1u);
          return result;
        }

        v7 = 0;
        v8 = v17;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x245D3C2F0](v7, v5);
          }

          else
          {
            v9 = *(v5 + 8 * v7 + 32);
          }

          v11 = *(v9 + 16);
          v10 = *(v9 + 24);

          v17 = v8;
          v13 = *(v8 + 16);
          v12 = *(v8 + 24);
          if (v13 >= v12 >> 1)
          {
            sub_2436C1A68((v12 > 1), v13 + 1, 1);
            v8 = v17;
          }

          ++v7;
          *(v8 + 16) = v13 + 1;
          v14 = v8 + 16 * v13;
          *(v14 + 32) = v11;
          *(v14 + 40) = v10;
        }

        while (v6 != v7);

        goto LABEL_19;
      }
    }

    v8 = MEMORY[0x277D84F90];
LABEL_19:
    v15 = sub_2436BBE00(v8);

    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v15;
    return sub_2436CAEE8();
  }

  return result;
}

uint64_t sub_2436B4FF4(uint64_t a1, char a2)
{
  v4 = sub_2436CAC58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if (qword_27ED7DEE8 != -1)
    {
      swift_once();
    }

    v10 = qword_27ED83B58;
    v11 = &OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectAllHistoryButtonTitle;
    goto LABEL_9;
  }

  if (a2 == 1)
  {
    if (qword_27ED7DEE8 != -1)
    {
      swift_once();
    }

    v10 = qword_27ED83B58;
    v11 = &OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deselectAllHistoryButtonTitle;
LABEL_9:
    (*(v5 + 16))(v9, v10 + *v11);
    v12 = sub_2436CBD58();
    sub_24369C834();
    return v12;
  }

  if (!a1)
  {
    return 0;
  }

  if (qword_27ED7DEE8 != -1)
  {
    v17 = v7;
    swift_once();
    v7 = v17;
  }

  v13 = qword_27ED83B58;
  v14 = *(v5 + 16);
  v15 = v7;
  v14(v9, qword_27ED83B58 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectAllHistoryButtonTitle);
  v12 = sub_2436CBD58();
  (v14)(v9, v13 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_selectItemsTitle, v15);
  sub_2436CBD58();
  return v12;
}

uint64_t sub_2436B5254()
{
  v1 = sub_2436CAC58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_alert);
  if (qword_27ED7DEE8 != -1)
  {
    swift_once();
  }

  v6 = qword_27ED83B58;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v7 = *(v21 + 16);

  v8 = sub_24369C464();
  v10 = v9;
  v11 = *(v2 + 16);
  v11(v5, v6 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteEntriesConfirmationSubtitle, v1);
  v12 = sub_2436CBD58();
  v14 = v13;
  v11(v5, v6 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteEntriesConfirmationButtonTitle, v1);
  v15 = sub_2436CBD58();
  v17 = v16;
  v18 = swift_allocObject();
  swift_weakInit();
  v30 = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v8;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v15;
  v26 = v17;
  v27 = sub_2436BBED0;
  v28 = v18;
  v29 = 1;
  swift_retain_n();

  sub_2436CAEE8();
  sub_2436C8CA0();
}

uint64_t sub_2436B5504(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_2436B5564()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v1 = *(v12[0] + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v2 = *(v0 + 16) + 16;
  if (v1 != v12[0])
  {
    sub_2436744F8(v2, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    v7 = *(v11 + 16);
    if (v7)
    {
      v8 = sub_2436C1944(*(v11 + 16), 0);
      v9 = sub_2436BAB04(&v11, v8 + 4, v7, v11);
      sub_243685438();
      if (v9 == v7)
      {
LABEL_7:
        (*(v6 + 56))(v8, v5, v6);

        return __swift_destroy_boxed_opaque_existential_0(v12);
      }

      __break(1u);
    }

    v8 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  sub_2436744F8(v2, v12);
  v3 = v13;
  v4 = v14;
  __swift_project_boxed_opaque_existential_0(v12, v13);
  (*(v4 + 64))(v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v12);
}

uint64_t sub_2436B576C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__allHistoryItemsCount;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800A8, &qword_2436D20F0);
  v26 = *(*(v3 - 8) + 8);
  v26(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__title;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80110, &qword_2436D2338);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__subtitle;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  v8 = *(*(v7 - 8) + 8);
  v8(v0 + v6, v7);
  v9 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_headerTitle;
  v10 = sub_2436CAC58();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__content;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80118, &qword_2436D2340);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerIsVisible;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v15 = *(*(v14 - 8) + 8);
  v15(v0 + v13, v14);
  v16 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerEntriesNumberTitle;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v8(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerTitle, v7);
  v15(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__isEditing, v14);
  v18 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__selectedItems;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800B0, &qword_2436D20F8);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);
  v26(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__animationGeneration, v3);
  v20 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__toolbar;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80120, &qword_2436D2348);
  (*(*(v21 - 8) + 8))(v0 + v20, v21);
  v22 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_alert);

  v23 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_cancellables);

  v24 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_itemsByAssignmentIdentifier);

  return v0;
}

uint64_t sub_2436B5B14()
{
  sub_2436B576C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSHistoryViewModel()
{
  result = qword_27ED80030;
  if (!qword_27ED80030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436B5BC0()
{
  sub_243686670(319, &qword_27ED80040);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_2436B5F00();
    if (v4 <= 0x3F)
    {
      v21 = *(v3 - 8) + 64;
      sub_2436803FC(319, &unk_27ED7FE10, &unk_27ED80380, &qword_2436CF6B0);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        v8 = sub_2436CAC58();
        if (v9 <= 0x3F)
        {
          v22 = *(v8 - 8) + 64;
          sub_2436803FC(319, &qword_27ED80050, &qword_27ED7F128, &qword_2436D1EF0);
          if (v11 <= 0x3F)
          {
            v23 = *(v10 - 8) + 64;
            sub_243686670(319, &qword_27ED7EB70);
            if (v13 <= 0x3F)
            {
              v14 = *(v12 - 8) + 64;
              sub_243686670(319, &qword_27ED80310);
              if (v16 <= 0x3F)
              {
                v24 = *(v15 - 8) + 64;
                sub_2436803FC(319, &qword_27ED80058, &qword_27ED80060, &qword_2436D1EF8);
                if (v18 <= 0x3F)
                {
                  v25 = *(v17 - 8) + 64;
                  sub_2436803FC(319, &qword_27ED80068, &qword_27ED80070, &qword_2436D1F00);
                  if (v20 <= 0x3F)
                  {
                    v26 = *(v19 - 8) + 64;
                    swift_updateClassMetadata2();
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

void sub_2436B5F00()
{
  if (!qword_27ED80048)
  {
    sub_2436CAC58();
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED80048);
    }
  }
}

uint64_t sub_2436B5F58@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSHistoryViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_2436B6004(uint64_t a1, uint64_t *a2)
{
  v4 = sub_2436CAC58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_2436CAEE8();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_2436B61B0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_2436714A8(a1, &v13 - v9, &qword_27ED7F128, &qword_2436D1EF0);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436714A8(v10, v8, &qword_27ED7F128, &qword_2436D1EF0);

  sub_2436CAEE8();
  return sub_243671AC8(v10, &qword_27ED7F128, &qword_2436D1EF0);
}

uint64_t sub_2436B6308@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2436B6388(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

double sub_2436B6420@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2436B6500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_2436B6580(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436B65FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v44 - v8;
  v10 = sub_2436CAD38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = v44 - v16;
  v17 = a1[1];
  result = sub_2436CC2A8();
  v19 = v17;
  if (result < v17)
  {
    if (v17 >= -1)
    {
      v20 = result;
      v21 = v19 / 2;
      if (v19 <= 1)
      {
        v22 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EMSHistoryItemViewModel();
        v22 = sub_2436CBE28();
        *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
      }

      v43 = v22 & 0xFFFFFFFFFFFFFF8;
      v59[0] = (v22 & 0xFFFFFFFFFFFFFF8) + 32;
      v59[1] = v21;
      sub_2436B6AC0(v59, v58, a1, v20);
      *(v43 + 16) = 0;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v17 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  if (v17 >= 2)
  {
    v53 = v15;
    v54 = v7;
    v44[1] = v1;
    v23 = *a1;
    v24 = (v11 + 48);
    v49 = (v11 + 8);
    v50 = (v11 + 32);
    v25 = -1;
    v26 = 1;
    v55 = v23;
    v51 = (v11 + 48);
    v52 = v9;
    v45 = v17;
    do
    {
      v47 = v26;
      v48 = v25;
      v27 = v55[v26];
      v46 = v23;
      do
      {
        v56 = v25;
        v28 = *v23;
        v29 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
        swift_beginAccess();
        sub_2436714A8(v27 + v29, v9, &qword_27ED7E4F0, &qword_2436CF910);
        v30 = *v24;
        if ((*v24)(v9, 1, v10) == 1)
        {

          sub_2436CACC8();
          if (v30(v9, 1, v10) != 1)
          {
            sub_243671AC8(v9, &qword_27ED7E4F0, &qword_2436CF910);
          }
        }

        else
        {
          (*v50)(v60, v9, v10);
        }

        v31 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
        swift_beginAccess();
        v57 = v28;
        v32 = v28 + v31;
        v33 = v54;
        sub_2436714A8(v32, v54, &qword_27ED7E4F0, &qword_2436CF910);
        if (v30(v33, 1, v10) == 1)
        {
          v34 = v53;
          sub_2436CACC8();
          v35 = v30(v33, 1, v10);
          v36 = v10;
          v37 = v56;
          if (v35 != 1)
          {
            sub_243671AC8(v33, &qword_27ED7E4F0, &qword_2436CF910);
          }
        }

        else
        {
          v34 = v53;
          (*v50)(v53, v33, v10);
          v36 = v10;
          v37 = v56;
        }

        v38 = v60;
        v39 = sub_2436CACE8();
        v40 = *v49;
        (*v49)(v34, v36);
        v40(v38, v36);

        v24 = v51;
        v9 = v52;
        v10 = v36;
        if ((v39 & 1) == 0)
        {
          break;
        }

        if (!v55)
        {
          goto LABEL_28;
        }

        v41 = *v23;
        v27 = v23[1];
        *v23 = v27;
        v23[1] = v41;
        --v23;
        v42 = __CFADD__(v37, 1);
        v25 = v37 + 1;
      }

      while (!v42);
      v26 = v47 + 1;
      v23 = v46 + 1;
      v25 = v48 - 1;
    }

    while (v47 + 1 != v45);
  }

  return result;
}

uint64_t sub_2436B6AC0(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v130 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v148 = &v128 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v137 = &v128 - v16;
  MEMORY[0x28223BE20](v15);
  v136 = &v128 - v17;
  v18 = sub_2436CAD38();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v150 = &v128 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  result = MEMORY[0x28223BE20](v23);
  v140 = &v128 - v28;
  v139 = a3;
  v29 = *(a3 + 8);
  if (v29 < 1)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_112:
    a3 = *v130;
    if (!*v130)
    {
      goto LABEL_153;
    }

    a4 = v32;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_115:
      v153 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v139)
        {
          v124 = *(result + 16 * a4);
          v125 = result;
          v126 = *(result + 16 * (a4 - 1) + 40);
          sub_2436B7830((*v139 + 8 * v124), (*v139 + 8 * *(result + 16 * (a4 - 1) + 32)), (*v139 + 8 * v126), a3);
          if (v5)
          {
          }

          if (v126 < v124)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_2436C3A7C(v125);
          }

          if (a4 - 2 >= *(v125 + 2))
          {
            goto LABEL_141;
          }

          v127 = &v125[16 * a4];
          *v127 = v124;
          *(v127 + 1) = v126;
          v153 = v125;
          sub_2436C39F0(a4 - 1);
          result = v153;
          a4 = *(v153 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_151;
      }
    }

LABEL_147:
    result = sub_2436C3A7C(a4);
    goto LABEL_115;
  }

  v135 = v27;
  v142 = v26;
  v128 = a4;
  v30 = 0;
  v31 = (v25 + 48);
  v146 = (v25 + 8);
  v147 = (v25 + 32);
  v32 = MEMORY[0x277D84F90];
  v143 = v12;
  v33 = v148;
  v145 = (v25 + 48);
  while (1)
  {
    v131 = v30;
    if (v30 + 1 >= v29)
    {
      v42 = v30 + 1;
    }

    else
    {
      v141 = v29;
      v129 = v32;
      v34 = *v139;
      v35 = *(*v139 + 8 * (v30 + 1));
      a3 = *(*v139 + 8 * v30);
      v151 = a3;
      v152 = v35;

      LODWORD(v144) = sub_2436B3C80(&v152, &v151);
      if (v5)
      {
      }

      a4 = v30 + 2;
      v134 = 8 * v30;
      v36 = (v34 + 8 * v30 + 16);
      v138 = 0;
      while (1)
      {
        v42 = v141;
        if (v141 == a4)
        {
          break;
        }

        v43 = *(v36 - 1);
        a3 = *v36;
        v44 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
        swift_beginAccess();
        v45 = v136;
        sub_2436714A8(a3 + v44, v136, &qword_27ED7E4F0, &qword_2436CF910);
        v46 = *v31;
        if ((*v31)(v45, 1, v18) == 1)
        {

          sub_2436CACC8();
          if (v46(v45, 1, v18) != 1)
          {
            sub_243671AC8(v45, &qword_27ED7E4F0, &qword_2436CF910);
          }
        }

        else
        {
          (*v147)(v140, v45, v18);
        }

        v47 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
        swift_beginAccess();
        v48 = &v43[v47];
        v49 = v137;
        sub_2436714A8(v48, v137, &qword_27ED7E4F0, &qword_2436CF910);
        v50 = v46(v49, 1, v18);
        v149 = v43;
        if (v50 == 1)
        {
          v37 = v135;
          sub_2436CACC8();
          if (v46(v49, 1, v18) != 1)
          {
            sub_243671AC8(v49, &qword_27ED7E4F0, &qword_2436CF910);
          }
        }

        else
        {
          v37 = v135;
          (*v147)(v135, v49, v18);
        }

        v38 = v140;
        v39 = sub_2436CACE8();
        v40 = *v146;
        (*v146)(v37, v18);
        v40(v38, v18);

        v41 = v144 ^ v39;
        ++a4;
        ++v36;
        v5 = v138;
        v31 = v145;
        if (v41)
        {
          v42 = a4 - 1;
          break;
        }
      }

      v32 = v129;
      v33 = v148;
      v51 = v134;
      if (v144)
      {
        v52 = v131;
        if (v42 < v131)
        {
          goto LABEL_146;
        }

        if (v131 < v42)
        {
          v53 = 8 * v42 - 8;
          v54 = v42;
          do
          {
            if (v52 != --v54)
            {
              v56 = *v139;
              if (!*v139)
              {
                goto LABEL_150;
              }

              v55 = *(v56 + v51);
              *(v56 + v51) = *(v56 + v53);
              *(v56 + v53) = v55;
            }

            ++v52;
            v53 -= 8;
            v51 += 8;
          }

          while (v52 < v54);
        }
      }
    }

    v57 = v139[1];
    if (v42 >= v57)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v42, v131))
    {
      goto LABEL_143;
    }

    if (v42 - v131 >= v128)
    {
LABEL_38:
      v60 = v42;
      goto LABEL_39;
    }

    if (__OFADD__(v131, v128))
    {
      goto LABEL_144;
    }

    if (v131 + v128 >= v57)
    {
      v58 = v139[1];
    }

    else
    {
      v58 = v131 + v128;
    }

    if (v58 < v131)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v59 = v131;
    if (v42 == v58)
    {
      v60 = v42;
      goto LABEL_40;
    }

    v129 = v32;
    v138 = v5;
    v144 = *v139;
    v108 = (v144 + 8 * v42 - 8);
    v109 = (v131 - v42);
    v132 = v58;
LABEL_94:
    v141 = v42;
    a3 = *(v144 + 8 * v42);
    v133 = v109;
    v134 = v108;
LABEL_95:
    v149 = v109;
    v110 = *v108;
    v111 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
    swift_beginAccess();
    sub_2436714A8(a3 + v111, v33, &qword_27ED7E4F0, &qword_2436CF910);
    v112 = *v31;
    if ((*v31)(v33, 1, v18) == 1)
    {

      sub_2436CACC8();
      if (v112(v33, 1, v18) != 1)
      {
        sub_243671AC8(v33, &qword_27ED7E4F0, &qword_2436CF910);
      }
    }

    else
    {
      (*v147)(v150, v33, v18);
    }

    v113 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
    swift_beginAccess();
    v114 = v110 + v113;
    v115 = v143;
    sub_2436714A8(v114, v143, &qword_27ED7E4F0, &qword_2436CF910);
    if (v112(v115, 1, v18) == 1)
    {
      v116 = v142;
      sub_2436CACC8();
      v117 = v18;
      if (v112(v115, 1, v18) != 1)
      {
        sub_243671AC8(v115, &qword_27ED7E4F0, &qword_2436CF910);
      }
    }

    else
    {
      v116 = v142;
      (*v147)(v142, v115, v18);
      v117 = v18;
    }

    v118 = v150;
    v119 = sub_2436CACE8();
    v120 = *v146;
    (*v146)(v116, v117);
    a4 = v117;
    v120(v118, v117);

    if (v119)
    {
      break;
    }

    v33 = v148;
    v31 = v145;
    v18 = v117;
LABEL_93:
    v42 = v141 + 1;
    v108 = (v134 + 8);
    v109 = v133 - 1;
    v60 = v132;
    if (v141 + 1 != v132)
    {
      goto LABEL_94;
    }

    v5 = v138;
    v32 = v129;
LABEL_39:
    v59 = v131;
LABEL_40:
    if (v60 < v59)
    {
      goto LABEL_142;
    }

    v132 = v60;
    v61 = v32;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v32 = v61;
    }

    else
    {
      result = sub_2436C1290(0, *(v61 + 16) + 1, 1, v61);
      v32 = result;
    }

    a3 = *(v32 + 16);
    v62 = *(v32 + 24);
    v63 = a3 + 1;
    if (a3 >= v62 >> 1)
    {
      result = sub_2436C1290((v62 > 1), a3 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 16) = v63;
    v64 = v32 + 16 * a3;
    v65 = v132;
    *(v64 + 32) = v131;
    *(v64 + 40) = v65;
    v149 = *v130;
    if (!v149)
    {
      goto LABEL_152;
    }

    if (a3)
    {
      while (2)
      {
        a3 = v63 - 1;
        if (v63 >= 4)
        {
          v70 = v32 + 32 + 16 * v63;
          v71 = *(v70 - 64);
          v72 = *(v70 - 56);
          v76 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          if (v76)
          {
            goto LABEL_129;
          }

          v75 = *(v70 - 48);
          v74 = *(v70 - 40);
          v76 = __OFSUB__(v74, v75);
          v68 = v74 - v75;
          v69 = v76;
          if (v76)
          {
            goto LABEL_130;
          }

          v77 = (v32 + 16 * v63);
          v79 = *v77;
          v78 = v77[1];
          v76 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v76)
          {
            goto LABEL_132;
          }

          v76 = __OFADD__(v68, v80);
          v81 = v68 + v80;
          if (v76)
          {
            goto LABEL_135;
          }

          if (v81 >= v73)
          {
            v99 = (v32 + 32 + 16 * a3);
            v101 = *v99;
            v100 = v99[1];
            v76 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v76)
            {
              goto LABEL_139;
            }

            if (v68 < v102)
            {
              a3 = v63 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v69)
            {
              goto LABEL_131;
            }

            v82 = (v32 + 16 * v63);
            v84 = *v82;
            v83 = v82[1];
            v85 = __OFSUB__(v83, v84);
            v86 = v83 - v84;
            v87 = v85;
            if (v85)
            {
              goto LABEL_134;
            }

            v88 = (v32 + 32 + 16 * a3);
            v90 = *v88;
            v89 = v88[1];
            v76 = __OFSUB__(v89, v90);
            v91 = v89 - v90;
            if (v76)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v86, v91))
            {
              goto LABEL_138;
            }

            if (v86 + v91 < v68)
            {
              goto LABEL_74;
            }

            if (v68 < v91)
            {
              a3 = v63 - 2;
            }
          }
        }

        else
        {
          if (v63 == 3)
          {
            v66 = *(v32 + 32);
            v67 = *(v32 + 40);
            v76 = __OFSUB__(v67, v66);
            v68 = v67 - v66;
            v69 = v76;
            goto LABEL_60;
          }

          v92 = (v32 + 16 * v63);
          v94 = *v92;
          v93 = v92[1];
          v76 = __OFSUB__(v93, v94);
          v86 = v93 - v94;
          v87 = v76;
LABEL_74:
          if (v87)
          {
            goto LABEL_133;
          }

          v95 = v32 + 16 * a3;
          v97 = *(v95 + 32);
          v96 = *(v95 + 40);
          v76 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v76)
          {
            goto LABEL_136;
          }

          if (v98 < v86)
          {
            break;
          }
        }

        a4 = a3 - 1;
        if (a3 - 1 >= v63)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v139)
        {
          goto LABEL_149;
        }

        v103 = v32;
        v104 = *(v32 + 32 + 16 * a4);
        v105 = *(v32 + 32 + 16 * a3 + 8);
        sub_2436B7830((*v139 + 8 * v104), (*v139 + 8 * *(v32 + 32 + 16 * a3)), (*v139 + 8 * v105), v149);
        if (v5)
        {
        }

        if (v105 < v104)
        {
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v106 = v103;
        }

        else
        {
          v106 = sub_2436C3A7C(v103);
        }

        v33 = v148;
        if (a4 >= *(v106 + 2))
        {
          goto LABEL_128;
        }

        v107 = &v106[16 * a4];
        *(v107 + 4) = v104;
        *(v107 + 5) = v105;
        v153 = v106;
        a4 = &v153;
        result = sub_2436C39F0(a3);
        v32 = v153;
        v63 = *(v153 + 16);
        if (v63 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v29 = v139[1];
    v30 = v132;
    if (v132 >= v29)
    {
      goto LABEL_112;
    }
  }

  v33 = v148;
  v121 = v149;
  if (v144)
  {
    v122 = *v108;
    a3 = v108[1];
    *v108 = a3;
    v108[1] = v122;
    --v108;
    v123 = __CFADD__(v121, 1);
    v109 = v121 + 1;
    v31 = v145;
    v18 = v117;
    if (v123)
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

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
  return result;
}

uint64_t sub_2436B7830(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v78 = (&v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v79 = (&v72 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v76 = (&v72 - v16);
  v17 = sub_2436CAD38();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v82 = &v72 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v75 = (&v72 - v23);
  MEMORY[0x28223BE20](v22);
  v81 = &v72 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 >= v29 >> 3)
  {
    v81 = v24;
    if (a4 != a2 || &a2[8 * v30] <= a4)
    {
      v50 = v25;
      memmove(a4, a2, 8 * v30);
      v25 = v50;
    }

    v85 = &a4[8 * v30];
    v51 = v79;
    if (a3 - a2 < 8)
    {
      v49 = a2;
    }

    else
    {
      v49 = a2;
      if (a2 > a1)
      {
        v52 = (v25 + 48);
        v74 = (v25 + 8);
        v75 = (v25 + 32);
        v76 = (v25 + 48);
        v84 = a4;
        v73 = a1;
LABEL_34:
        v80 = v49;
        v53 = v49 - 8;
        v54 = a3 - 8;
        v55 = v85;
        v77 = v49 - 8;
        do
        {
          v56 = *(v55 - 1);
          v55 -= 8;
          v57 = *v53;
          v58 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
          swift_beginAccess();
          sub_2436714A8(v56 + v58, v51, &qword_27ED7E4F0, &qword_2436CF910);
          v59 = *v52;
          v60 = (*v52)(v51, 1, v17);
          v83 = v54;
          if (v60 == 1)
          {

            sub_2436CACC8();
            if (v59(v51, 1, v17) != 1)
            {
              sub_243671AC8(v51, &qword_27ED7E4F0, &qword_2436CF910);
            }
          }

          else
          {
            (*v75)(v82, v51, v17);
          }

          v61 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
          swift_beginAccess();
          v62 = v57 + v61;
          v63 = v78;
          sub_2436714A8(v62, v78, &qword_27ED7E4F0, &qword_2436CF910);
          if (v59(v63, 1, v17) == 1)
          {
            v64 = v81;
            sub_2436CACC8();
            if (v59(v63, 1, v17) != 1)
            {
              sub_243671AC8(v63, &qword_27ED7E4F0, &qword_2436CF910);
            }
          }

          else
          {
            v64 = v81;
            (*v75)(v81, v63, v17);
          }

          v65 = v82;
          v66 = sub_2436CACE8();
          v67 = *v74;
          (*v74)(v64, v17);
          v67(v65, v17);

          if (v66)
          {
            a3 = v83;
            a4 = v84;
            v51 = v79;
            v69 = v73;
            v70 = v77;
            if (v83 + 8 != v80)
            {
              *v83 = *v77;
            }

            v52 = v76;
            if (v85 <= a4 || (v49 = v70, v70 <= v69))
            {
              v49 = v70;
              goto LABEL_54;
            }

            goto LABEL_34;
          }

          v68 = v83;
          a4 = v84;
          v51 = v79;
          if (v83 + 8 != v85)
          {
            *v83 = *v55;
          }

          v54 = v68 - 8;
          v85 = v55;
          v52 = v76;
          v53 = v77;
        }

        while (v55 > a4);
        v85 = v55;
        v49 = v80;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v28] <= a4)
    {
      v31 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v31;
    }

    v85 = &a4[8 * v28];
    if (a2 - a1 >= 8)
    {
      v32 = a2;
      if (a2 < a3)
      {
        v33 = (v25 + 48);
        v78 = (v25 + 8);
        v79 = (v25 + 32);
        v82 = (v25 + 48);
        v83 = a3;
        while (1)
        {
          v80 = v32;
          v34 = *v32;
          v35 = *a4;
          v36 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
          swift_beginAccess();
          v37 = v76;
          sub_2436714A8(v34 + v36, v76, &qword_27ED7E4F0, &qword_2436CF910);
          v38 = *v33;
          v39 = (*v33)(v37, 1, v17);
          v84 = a4;
          if (v39 == 1)
          {

            sub_2436CACC8();
            if (v38(v37, 1, v17) != 1)
            {
              sub_243671AC8(v37, &qword_27ED7E4F0, &qword_2436CF910);
            }
          }

          else
          {
            (*v79)(v81, v37, v17);
          }

          v40 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
          swift_beginAccess();
          v41 = v35 + v40;
          v42 = v77;
          sub_2436714A8(v41, v77, &qword_27ED7E4F0, &qword_2436CF910);
          v43 = v38(v42, 1, v17);
          v44 = v75;
          if (v43 == 1)
          {
            sub_2436CACC8();
            if (v38(v42, 1, v17) != 1)
            {
              sub_243671AC8(v42, &qword_27ED7E4F0, &qword_2436CF910);
            }
          }

          else
          {
            (*v79)(v75, v42, v17);
          }

          v45 = v81;
          v46 = sub_2436CACE8();
          v47 = *v78;
          (*v78)(v44, v17);
          v47(v45, v17);

          if ((v46 & 1) == 0)
          {
            break;
          }

          v48 = v80;
          v32 = v80 + 8;
          a4 = v84;
          if (a1 != v80)
          {
            goto LABEL_24;
          }

LABEL_25:
          a1 += 8;
          v33 = v82;
          if (a4 >= v85 || v32 >= v83)
          {
            goto LABEL_27;
          }
        }

        v48 = v84;
        a4 = v84 + 8;
        v32 = v80;
        if (a1 == v84)
        {
          goto LABEL_25;
        }

LABEL_24:
        *a1 = *v48;
        goto LABEL_25;
      }
    }

LABEL_27:
    v49 = a1;
  }

LABEL_54:
  if (v49 != a4 || v49 >= &a4[(v85 - a4 + (v85 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v49, a4, 8 * ((v85 - a4) / 8));
  }

  return 1;
}

uint64_t sub_2436B80A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBB0, &qword_2436CDAE0);
  result = sub_2436CC218();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      result = sub_2436CBF08();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2436B8318(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7E440, &qword_2436CDA38);
  v38 = a2;
  result = sub_2436CC218();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2436CC368();
      sub_2436CBD88();
      result = sub_2436CC398();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2436B85CC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_2436CC218();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_2436CC368();
      sub_2436CBD88();
      result = sub_2436CC398();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_2436B886C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24366FE3C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2436B85CC(v16, a4 & 1, &qword_27ED800F8, &unk_2436D2160);
      v20 = *v5;
      v11 = sub_24366FE3C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_2436CC318();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2436B8CEC(&qword_27ED800F8, &unk_2436D2160);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_2436B8A0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EBB0, &qword_2436CDAE0);
  v2 = *v0;
  v3 = sub_2436CC208();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2436B8B70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7E440, &qword_2436CDA38);
  v2 = *v0;
  v3 = sub_2436CC208();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2436B8CEC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2436CC208();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_2436B8E4C(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2436CC368();
  sub_2436933F8(v17, a2);
  v7 = sub_2436CC398();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_17:
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[0] = *v2;
    sub_243675744();
    sub_2436B99EC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v17[0];
    *a1 = a2;
    return 1;
  }

  v10 = ~v8;
  v11 = a2 & 0xC000000000000000;
  while (1)
  {
    v12 = *(*(v5 + 48) + 8 * v9);
    v13 = v12 >> 62;
    if ((v12 >> 62) <= 1)
    {
      break;
    }

    if (v13 == 2)
    {
      if (v11 != 0x8000000000000000)
      {
        goto LABEL_4;
      }
    }

    else if (a2 >> 62 != 3)
    {
      goto LABEL_4;
    }

LABEL_3:
    if (((v12 ^ a2) & 0x3FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

LABEL_4:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (v13)
  {
    if (v11 != 0x4000000000000000)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a2 >> 62 || v12 != a2)
  {
    goto LABEL_4;
  }

LABEL_18:
  sub_2436755D8();
  *a1 = *(*(v5 + 48) + 8 * v9);
  sub_243675744();
  return 0;
}

uint64_t sub_2436B8FCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2436CC368();
  sub_2436CBD88();
  v9 = sub_2436CC398();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2436CC2E8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2436B9B9C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2436B911C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2436CC368();
  sub_2436CC388();
  if (a3)
  {
    sub_2436CBD88();
  }

  v9 = sub_2436CC398();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2436B9D1C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_2436CC2E8() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_2436B92A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80140, &qword_2436D2378);
  result = sub_2436CC058();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2436CC368();
      v20 = v18 & 0x3FFFFFFFFFFFFFFFLL;
      if (!(v18 >> 62))
      {
        v20 = v18;
      }

      if ((v18 >> 62) <= 1)
      {
        v21 = v20;
      }

      else
      {
        v21 = v18 & 0x3FFFFFFFFFFFFFFFLL;
      }

      MEMORY[0x245D3C5D0](v21);
      result = sub_2436CC398();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2436B9510(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800F0, &qword_2436D2158);
  result = sub_2436CC058();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2436CC368();
      sub_2436CBD88();
      result = sub_2436CC398();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2436B9770(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80108, &qword_2436D22A0);
  result = sub_2436CC058();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_2436CC368();
      sub_2436CC388();
      if (v20)
      {
        sub_2436CBD88();
      }

      result = sub_2436CC398();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2436B99EC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2436B92A4(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        result = sub_2436B9ED8();
        a2 = v7;
        goto LABEL_24;
      }

      sub_2436BA2DC(v5 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_2436CC368();
    sub_2436933F8(v19, v4);
    result = sub_2436CC398();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      v12 = v4 & 0xC000000000000000;
      do
      {
        v13 = *(*(v8 + 48) + 8 * a2);
        v14 = v13 >> 62;
        if ((v13 >> 62) > 1)
        {
          if (v14 == 2)
          {
            if (v12 == 0x8000000000000000)
            {
              goto LABEL_10;
            }
          }

          else if (v4 >> 62 == 3)
          {
LABEL_10:
            if (((v13 ^ v4) & 0x3FFFFFFFFFFFFFFFLL) == 0)
            {
              goto LABEL_27;
            }
          }
        }

        else if (v14)
        {
          if (v12 == 0x4000000000000000)
          {
            goto LABEL_10;
          }
        }

        else if (!(v4 >> 62) && v13 == v4)
        {
          goto LABEL_27;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_24:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v4;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_27:
    result = sub_2436CC308();
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v18;
  }

  return result;
}

uint64_t sub_2436B9B9C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2436B9510(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2436BA028();
      goto LABEL_16;
    }

    sub_2436BA520(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2436CC368();
  sub_2436CBD88();
  result = sub_2436CC398();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2436CC2E8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2436CC308();
  __break(1u);
  return result;
}

uint64_t sub_2436B9D1C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_2436B9770(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_2436BA184();
      goto LABEL_22;
    }

    sub_2436BA758(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_2436CC368();
  sub_2436CC388();
  if (a2)
  {
    sub_2436CBD88();
  }

  result = sub_2436CC398();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_2436CC2E8(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
            result = sub_2436CC308();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_2436B9ED8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80140, &qword_2436D2378);
  v2 = *v0;
  v3 = sub_2436CC048();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
        result = sub_243675744();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2436BA028()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800F0, &qword_2436D2158);
  v2 = *v0;
  v3 = sub_2436CC048();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2436BA184()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80108, &qword_2436D22A0);
  v2 = *v0;
  v3 = sub_2436CC048();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2436BA2DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80140, &qword_2436D2378);
  result = sub_2436CC058();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_2436CC368();
      v19 = v17 & 0x3FFFFFFFFFFFFFFFLL;
      if (!(v17 >> 62))
      {
        v19 = v17;
      }

      if ((v17 >> 62) <= 1)
      {
        v20 = v19;
      }

      else
      {
        v20 = v17 & 0x3FFFFFFFFFFFFFFFLL;
      }

      MEMORY[0x245D3C5D0](v20);
      result = sub_2436CC398();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_35;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
      result = sub_243675744();
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_33;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2436BA520(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800F0, &qword_2436D2158);
  result = sub_2436CC058();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_2436CC368();

      sub_2436CBD88();
      result = sub_2436CC398();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2436BA758(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80108, &qword_2436D22A0);
  result = sub_2436CC058();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_2436CC368();
      sub_2436CC388();
      if (v19)
      {

        sub_2436CBD88();
      }

      result = sub_2436CC398();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_30;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

void *sub_2436BA9B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2436BAB04(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2436BAC60(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2436CC008();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_2436CC0A8();
}

uint64_t sub_2436BACC4(void *a1)
{
  v2 = v1;
  v110 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80130, &unk_2436D2360);
  v115 = *(v3 - 8);
  v116 = v3;
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v3);
  v114 = &v84 - v5;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEF0, &qword_2436D1DE0);
  v111 = *(v117 - 8);
  v6 = *(v111 + 64);
  v7 = MEMORY[0x28223BE20](v117);
  v112 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v113 = &v84 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80120, &qword_2436D2348);
  v108 = *(v10 - 8);
  v109 = v10;
  v11 = *(v108 + 64);
  MEMORY[0x28223BE20](v10);
  v107 = &v84 - v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800B0, &qword_2436D20F8);
  v105 = *(v106 - 8);
  v13 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v84 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v101 = *(v102 - 8);
  v15 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v99 = &v84 - v16;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v103 = *(v119 - 8);
  v17 = *(v103 + 64);
  MEMORY[0x28223BE20](v119);
  v100 = &v84 - v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80118, &qword_2436D2340);
  v96 = *(v98 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v94 = &v84 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  v21 = *(*(v91 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v91);
  v89 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v88 = &v84 - v24;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  v97 = *(v118 - 1);
  v25 = *(v97 + 64);
  MEMORY[0x28223BE20](v118);
  v95 = &v84 - v26;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80110, &qword_2436D2338);
  v85 = *(v86 - 8);
  v27 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v29 = &v84 - v28;
  v30 = sub_2436CAC58();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v84 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800A8, &qword_2436D20F0);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v42 = &v84 - v41;
  v43 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__allHistoryItemsCount;
  *&v120 = 0;
  sub_2436CAE98();
  v44 = *(v39 + 32);
  v90 = v42;
  v93 = v38;
  v92 = v39 + 32;
  v87 = v44;
  v44(v2 + v43, v42, v38);
  v45 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__title;
  if (qword_27ED7DEE8 != -1)
  {
    swift_once();
  }

  v46 = qword_27ED83B58;
  v47 = *(v31 + 16);
  v47(v37, qword_27ED83B58 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_title, v30);
  v47(v35, v37, v30);
  sub_2436CAE98();
  (*(v31 + 8))(v37, v30);
  (*(v85 + 32))(v2 + v45, v29, v86);
  v48 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__subtitle;
  v120 = 0uLL;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  v49 = v95;
  sub_2436CAE98();
  v97 = *(v97 + 32);
  (v97)(v2 + v48, v49, v118);
  v47((v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_headerTitle), v46 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_populatedDescription, v30);
  v50 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__content;
  v51 = v88;
  swift_storeEnumTagMultiPayload();
  sub_2436714A8(v51, v89, &qword_27ED7F128, &qword_2436D1EF0);
  v52 = v94;
  sub_2436CAE98();
  sub_243671AC8(v51, &qword_27ED7F128, &qword_2436D1EF0);
  (*(v96 + 32))(v2 + v50, v52, v98);
  v53 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerIsVisible;
  LOBYTE(v120) = 1;
  v54 = v100;
  sub_2436CAE98();
  v55 = *(v103 + 32);
  v56 = v119;
  v55(v2 + v53, v54, v119);
  v57 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerEntriesNumberTitle;
  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  v58 = v99;
  sub_2436CAE98();
  (*(v101 + 32))(v2 + v57, v58, v102);
  v59 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__footerTitle;
  v120 = 0uLL;
  sub_2436CAE98();
  (v97)(v2 + v59, v49, v118);
  v60 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__isEditing;
  LOBYTE(v120) = 0;
  sub_2436CAE98();
  v55(v2 + v60, v54, v56);
  v61 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__selectedItems;
  v62 = MEMORY[0x277D84FA0];
  *&v120 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80060, &qword_2436D1EF8);
  v63 = v104;
  sub_2436CAE98();
  (*(v105 + 32))(v2 + v61, v63, v106);
  v64 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__animationGeneration;
  *&v120 = 0;
  v65 = v90;
  sub_2436CAE98();
  v87(v2 + v64, v65, v93);
  v66 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel__toolbar;
  *&v120 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80070, &qword_2436D1F00);
  v67 = v107;
  sub_2436CAE98();
  (*(v108 + 32))(v2 + v66, v67, v109);
  v68 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_alert;
  v69 = type metadata accessor for EMSAlertViewModel();
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  v72 = swift_allocObject();
  LOBYTE(v120) = 0;
  sub_2436CAE98();
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v124 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F770, &qword_2436D2370);
  sub_2436CAE98();
  *(v2 + v68) = v72;
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_cancellables) = v62;
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel____lazy_storage___nameFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel____lazy_storage___itemDateFormatter) = 0;
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_itemsByAssignmentIdentifier) = MEMORY[0x277D84F98];
  v73 = v110;
  *(v2 + 16) = v110;
  v74 = v73[5];
  v75 = v73[6];
  __swift_project_boxed_opaque_existential_0(v73 + 2, v74);
  v76 = *(v75 + 16);

  *&v120 = v76(v74, v75);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB40, &qword_2436D1538);
  sub_243671838(qword_27ED7FB48, &qword_27ED7FB40, &qword_2436D1538);
  sub_2436CAF68();

  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  swift_beginAccess();
  v77 = v113;
  sub_2436CAEA8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();

  sub_243671838(&qword_27ED7FF00, &qword_27ED7FEF0, &qword_2436D1DE0);
  v78 = v117;
  sub_2436CAF68();

  v79 = v111;
  v80 = *(v111 + 8);
  v80(v77, v78);
  v118 = v80;
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  swift_beginAccess();
  sub_2436CAEA8();
  swift_endAccess();
  v81 = v114;
  sub_2436CAF38();
  v80(v77, v78);
  swift_beginAccess();
  sub_2436CAEA8();
  swift_endAccess();
  sub_243671838(&qword_27ED80138, &qword_27ED80130, &unk_2436D2360);
  v82 = v116;
  sub_2436CAF78();
  (*(v115 + 8))(v81, v82);
  (*(v79 + 16))(v112, v77, v78);
  swift_beginAccess();
  sub_2436CAEB8();
  swift_endAccess();
  v118(v77, v78);
  return v2;
}

uint64_t sub_2436BBCCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24367546C();
  result = MEMORY[0x245D3C100](v2, &type metadata for EMSNavigationStackItem, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_243675744();
      sub_2436B8E4C(&v7, v6);
      sub_2436755D8();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2436BBD54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  v4 = sub_2436BC0C4();
  result = MEMORY[0x245D3C100](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_2436B911C(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_2436BBE00(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D3C100](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2436B8FCC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2436BBE98()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2436BC0C4()
{
  result = qword_27ED80100;
  if (!qword_27ED80100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED80380, &qword_2436CF6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80100);
  }

  return result;
}

void Error.crkui_verboseDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_2436CC2C8();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_2436CAC18();

  v11 = [v10 verboseDescription];
  if (v11)
  {
    sub_2436CBD38();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2436BC380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_2436CBB38();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80180, &qword_2436D2468);
  return sub_2436BC3E0(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_2436BC3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80188, &qword_2436D2470);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80190, &qword_2436D2478);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  v21 = *(sub_2436CB168() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_2436CB318();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #8.0 }

  *v20 = _Q0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436892F0(v40);
  sub_2436CBB98();
  sub_2436CBBA8();
  sub_2436CB088();
  v29 = &v20[*(v14 + 44)];
  *v29 = v40;
  v30 = v42;
  *(v29 + 8) = v41;
  *(v29 + 24) = v30;
  *v12 = sub_2436CB368();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80198, &qword_2436D24C8);
  sub_2436BC72C(a2, &v12[*(v31 + 44)]);
  LOBYTE(v22) = sub_2436CB538();
  sub_2436CAF88();
  v32 = &v12[*(v6 + 44)];
  *v32 = v22;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_2436BD490(v20, v18);
  sub_2436714A8(v12, v10, &qword_27ED80188, &qword_2436D2470);
  sub_2436BD490(v18, a3);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801A0, &qword_2436D24D0);
  sub_2436714A8(v10, a3 + *(v37 + 48), &qword_27ED80188, &qword_2436D2470);
  sub_243671AC8(v12, &qword_27ED80188, &qword_2436D2470);
  sub_243671AC8(v20, &qword_27ED80190, &qword_2436D2478);
  sub_243671AC8(v10, &qword_27ED80188, &qword_2436D2470);
  return sub_243671AC8(v18, &qword_27ED80190, &qword_2436D2478);
}

uint64_t sub_2436BC72C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801A8, &qword_2436D24D8);
  v5 = *(v4 - 8);
  v82 = v4;
  v83 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v80 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v58 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801B0, &qword_2436D24E0);
  v10 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801B8, &qword_2436D24E8);
  v14 = *(v13 - 8);
  v68 = v13 - 8;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v79 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v84 = &v58 - v18;
  sub_2436CBB48();
  sub_2436CB068();
  v78 = v90;
  v77 = v92;
  v76 = v94;
  v75 = v95;
  v98 = 1;
  v97 = v91;
  v96 = v93;
  v74 = sub_2436CB2F8();
  v66 = a1;
  sub_2436BCF04(&v85);
  v73 = v85;
  v69 = v86;
  v70 = v87;
  v71 = v88;
  v72 = v89;
  v100 = 1;
  v99 = v86;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v65 = sub_2436732AC();
  v19 = sub_2436CB698();
  v21 = v20;
  LODWORD(v59) = v22;
  v24 = v23;
  KeyPath = swift_getKeyPath();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801C0, &qword_2436D2568);
  v26 = &v12[*(v64 + 36)];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED801C8, &qword_2436D2570);
  v27 = *(v63 + 28);
  v61 = *MEMORY[0x277CE0B28];
  v28 = v61;
  v29 = sub_2436CB638();
  v30 = *(v29 - 8);
  v60 = *(v30 + 104);
  v62 = v30 + 104;
  v60(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  *v12 = v19;
  *(v12 + 1) = v21;
  v12[16] = v59 & 1;
  *(v12 + 3) = v24;
  *(v12 + 4) = KeyPath;
  *(v12 + 5) = 2;
  v12[48] = 0;
  v31 = sub_2436CB598();
  v32 = swift_getKeyPath();
  v33 = v67;
  v34 = &v12[*(v67 + 36)];
  *v34 = v32;
  v34[1] = v31;
  sub_2436CB5B8();
  v59 = sub_2436BD770();
  v35 = v84;
  sub_2436CB6C8();
  sub_243671AC8(v12, &qword_27ED801B0, &qword_2436D24E0);
  *(v35 + *(v68 + 44)) = 0x3FF0000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v36 = sub_2436CB698();
  v38 = v37;
  LOBYTE(v28) = v39;
  v41 = v40;
  v42 = swift_getKeyPath();
  v43 = &v12[*(v64 + 36)];
  v60(v43 + *(v63 + 28), v61, v29);
  *v43 = swift_getKeyPath();
  *v12 = v36;
  *(v12 + 1) = v38;
  v12[16] = v28 & 1;
  *(v12 + 3) = v41;
  *(v12 + 4) = v42;
  *(v12 + 5) = 2;
  v12[48] = 0;
  v44 = sub_2436CB5D8();
  v45 = swift_getKeyPath();
  v46 = &v12[*(v33 + 36)];
  *v46 = v45;
  v46[1] = v44;
  sub_2436CB5B8();
  v47 = v81;
  sub_2436CB6C8();
  sub_243671AC8(v12, &qword_27ED801B0, &qword_2436D24E0);
  LOBYTE(v44) = v98;
  LOBYTE(v28) = v97;
  LOBYTE(v29) = v96;
  v48 = v79;
  sub_2436714A8(v84, v79, &qword_27ED801B8, &qword_2436D24E8);
  v68 = *(v83 + 16);
  v49 = v80;
  (v68)(v80, v47, v82);
  *a2 = 0;
  *(a2 + 8) = v44;
  *(a2 + 16) = v78;
  *(a2 + 24) = v28;
  *(a2 + 32) = v77;
  *(a2 + 40) = v29;
  v50 = v75;
  *(a2 + 48) = v76;
  *(a2 + 56) = v50;
  *(a2 + 64) = v74;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = v73;
  *(a2 + 96) = v69;
  v51 = v71;
  *(a2 + 104) = v70;
  *(a2 + 112) = v51;
  *(a2 + 120) = v72;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80218, &qword_2436D2638);
  sub_2436714A8(v48, a2 + v52[20], &qword_27ED801B8, &qword_2436D24E8);
  v53 = a2 + v52[24];
  *v53 = 0x4000000000000000;
  *(v53 + 8) = 0;
  *(v53 + 9) = 257;
  v54 = a2 + v52[28];
  v55 = v82;
  (v68)(v54, v49, v82);
  v56 = *(v83 + 8);

  v56(v81, v55);
  sub_243671AC8(v84, &qword_27ED801B8, &qword_2436D24E8);
  v56(v49, v55);
  sub_243671AC8(v48, &qword_27ED801B8, &qword_2436D24E8);
}

uint64_t sub_2436BCF04@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v10 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v6 = sub_24368CCEC(v10[1]);
  v7 = sub_2436CB5A8();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_2436CB5C8();
  sub_243671AC8(v5, &qword_27ED7F790, &qword_2436D2640);
  result = swift_getKeyPath();
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = result;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_2436BD074()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80148, &qword_2436D2418);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-v3];
  v6 = *v0;
  v5 = v0[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v13 = v6;
  v14 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80150, &qword_2436D2420);
  sub_243671838(&qword_27ED80158, &qword_27ED80150, &qword_2436D2420);
  sub_2436CBA38();
  v8 = sub_2436CB948();
  KeyPath = swift_getKeyPath();
  v10 = &v4[*(v1 + 36)];
  *v10 = KeyPath;
  v10[1] = v8;
  sub_2436BD350();
  sub_2436BD434();
  sub_2436CB6F8();
  return sub_243671AC8(v4, &qword_27ED80148, &qword_2436D2418);
}

uint64_t sub_2436BD228()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436BD260()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC14ClassroomUIKit22EMSCourseTileViewModel_selectionHandler;
  v2 = *(v1 + 8);
  return (*v1)();
}

uint64_t sub_2436BD2A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB208();
  *a1 = result;
  return result;
}

uint64_t sub_2436BD2CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB208();
  *a1 = result;
  return result;
}

uint64_t sub_2436BD2F8(uint64_t *a1)
{
  v1 = *a1;

  return sub_2436CB218();
}

uint64_t sub_2436BD324(uint64_t *a1)
{
  v1 = *a1;

  return sub_2436CB218();
}

unint64_t sub_2436BD350()
{
  result = qword_27ED80160;
  if (!qword_27ED80160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80148, &qword_2436D2418);
    sub_243671838(&qword_27ED80168, &qword_27ED80170, &qword_2436D2458);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80160);
  }

  return result;
}

unint64_t sub_2436BD434()
{
  result = qword_27ED80178;
  if (!qword_27ED80178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80178);
  }

  return result;
}

uint64_t sub_2436BD490(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80190, &qword_2436D2478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436BD508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB248();
  *a1 = result;
  return result;
}

uint64_t sub_2436BD534(uint64_t *a1)
{
  v1 = *a1;

  return sub_2436CB258();
}

uint64_t sub_2436BD560@<X0>(uint64_t a1@<X8>)
{
  result = sub_2436CB2A8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2436BD594@<X0>(uint64_t a1@<X8>)
{
  result = sub_2436CB2A8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2436BD5C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2436CB2B8();
}

uint64_t sub_2436BD5F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_2436CB2B8();
}

uint64_t sub_2436BD64C(uint64_t a1)
{
  v2 = sub_2436CB638();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2436CB1F8();
}

uint64_t sub_2436BD718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436CB248();
  *a1 = result;
  return result;
}

uint64_t sub_2436BD744(uint64_t *a1)
{
  v1 = *a1;

  return sub_2436CB258();
}

unint64_t sub_2436BD770()
{
  result = qword_27ED801D0;
  if (!qword_27ED801D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED801B0, &qword_2436D24E0);
    sub_2436BD828();
    sub_243671838(&qword_27ED80208, &qword_27ED80210, &qword_2436D25E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED801D0);
  }

  return result;
}

unint64_t sub_2436BD828()
{
  result = qword_27ED801D8;
  if (!qword_27ED801D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED801C0, &qword_2436D2568);
    sub_2436BD8E0();
    sub_243671838(&qword_27ED80200, &qword_27ED801C8, &qword_2436D2570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED801D8);
  }

  return result;
}

unint64_t sub_2436BD8E0()
{
  result = qword_27ED801E0;
  if (!qword_27ED801E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED801E8, &qword_2436D25D8);
    sub_243671838(&qword_27ED801F0, &qword_27ED801F8, &qword_2436D25E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED801E0);
  }

  return result;
}

uint64_t sub_2436BD9A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80148, &qword_2436D2418);
  sub_2436BD350();
  sub_2436BD434();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2436BDA4C@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80238, &qword_2436D2728);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v41 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  type metadata accessor for EMSFacePortalViewModel();
  sub_2436BE8C0();
  v8 = sub_2436CB098();
  v48 = v9;
  v49 = v8;
  sub_2436CBB48();
  sub_2436CB068();
  v45 = v56;
  v46 = v54;
  v43 = v59;
  v44 = v58;
  v61 = v55;
  v60 = v57;
  v47 = sub_2436CB368();
  LOBYTE(v65[0]) = 0;
  v41 = a1;
  sub_2436BE038(v72);
  memcpy(v62, v72, 0x121uLL);
  memcpy(v63, v72, sizeof(v63));
  sub_2436714A8(v62, v71, &qword_27ED80248, &qword_2436D2778);
  sub_243671AC8(v63, &qword_27ED80248, &qword_2436D2778);
  memcpy(&v53[7], v62, 0x121uLL);
  v42 = LOBYTE(v65[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436732AC();
  v10 = sub_2436CB698();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v18 = sub_2436CB978();
  v19 = swift_getKeyPath();
  v20 = v14 & 1;
  LOBYTE(v72[0]) = v14 & 1;
  v21 = sub_2436CB568();
  sub_2436CAF88();
  LOBYTE(v67) = 0;
  *&v72[0] = v10;
  *(&v72[0] + 1) = v12;
  LOBYTE(v72[1]) = v20;
  *(&v72[1] + 1) = v16;
  *&v72[2] = KeyPath;
  BYTE8(v72[2]) = 2;
  *&v72[3] = v19;
  *(&v72[3] + 1) = v18;
  LOBYTE(v72[4]) = v21;
  *(&v72[4] + 1) = *v64;
  DWORD1(v72[4]) = *&v64[3];
  *(&v72[4] + 1) = v22;
  *&v72[5] = v23;
  *(&v72[5] + 1) = v24;
  *&v72[6] = v25;
  BYTE8(v72[6]) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v26 = sub_2436CB698();
  v28 = v27;
  LOBYTE(v12) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80250, &qword_2436D2870);
  sub_2436BE984();
  v30 = v52;
  sub_2436CB768();
  sub_243679F68(v26, v28, v12 & 1);

  v65[4] = v72[4];
  v66[0] = v72[5];
  *(v66 + 9) = *(&v72[5] + 9);
  v65[0] = v72[0];
  v65[1] = v72[1];
  v65[3] = v72[3];
  v65[2] = v72[2];
  sub_243671AC8(v65, &qword_27ED80250, &qword_2436D2870);
  LOBYTE(v19) = v61;
  v31 = v60;
  v32 = v50;
  sub_2436714A8(v30, v50, &qword_27ED80238, &qword_2436D2728);
  *&v67 = v49;
  *(&v67 + 1) = v48;
  *&v68 = v46;
  BYTE8(v68) = v19;
  *&v69 = v45;
  BYTE8(v69) = v31;
  *&v70 = v44;
  *(&v70 + 1) = v43;
  v33 = v68;
  v34 = v51;
  *v51 = v67;
  v34[1] = v33;
  v35 = v70;
  v34[2] = v69;
  v34[3] = v35;
  *(v34 + 8) = 0x4034000000000000;
  *(v34 + 72) = 0;
  v36 = v34;
  v37 = v47;
  v71[0] = v47;
  v71[1] = 0x4010000000000000;
  v38 = v42;
  LOBYTE(v71[2]) = v42;
  memcpy(&v71[2] + 1, v53, 0x128uLL);
  memcpy(v36 + 5, v71, 0x139uLL);
  *(v36 + 50) = 0;
  *(v36 + 408) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80290, &qword_2436D2898);
  sub_2436714A8(v32, v36 + *(v39 + 96), &qword_27ED80238, &qword_2436D2728);
  sub_2436714A8(&v67, v72, &qword_27ED80298, &qword_2436D28A0);
  sub_2436714A8(v71, v72, &qword_27ED802A0, &qword_2436D28A8);
  sub_243671AC8(v52, &qword_27ED80238, &qword_2436D2728);
  sub_243671AC8(v32, &qword_27ED80238, &qword_2436D2728);
  *&v72[0] = v37;
  *(&v72[0] + 1) = 0x4010000000000000;
  LOBYTE(v72[1]) = v38;
  memcpy(&v72[1] + 1, v53, 0x128uLL);
  sub_243671AC8(v72, &qword_27ED802A0, &qword_2436D28A8);
}

uint64_t sub_2436BE038@<X0>(void *a1@<X8>)
{
  v1 = sub_2436CB2F8();
  LOBYTE(v45[0]) = 1;
  sub_2436BE3E0(&v58);
  v30 = *&v59[2];
  v31[0] = *&v59[4];
  *(v31 + 9) = *(&v59[5] + 1);
  v28 = v58;
  v29 = *v59;
  v32[2] = *&v59[2];
  v33[0] = *&v59[4];
  *(v33 + 9) = *(&v59[5] + 1);
  v32[0] = v58;
  v32[1] = *v59;
  sub_2436714A8(&v28, &v36, &qword_27ED802A8, &qword_2436D28B0);
  sub_243671AC8(v32, &qword_27ED802A8, &qword_2436D28B0);
  *(&v27[1] + 7) = v29;
  *(&v27[2] + 7) = v30;
  *(&v27[3] + 7) = v31[0];
  v27[4] = *(v31 + 9);
  *(v27 + 7) = v28;
  v2 = v45[0];
  v3 = sub_2436CB548();
  sub_2436CAF88();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_2436CB2F8();
  LOBYTE(v58) = 1;
  sub_2436BE51C(v34);
  *&v26[23] = v34[1];
  *&v26[39] = v34[2];
  *&v26[55] = v34[3];
  v26[71] = v35;
  *&v26[7] = v34[0];
  v13 = v58;
  v14 = sub_2436CB558();
  sub_2436CAF88();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v36 = v1;
  v37[0] = v2;
  *&v37[1] = v27[0];
  *&v37[17] = v27[1];
  *&v37[33] = v27[2];
  *&v37[49] = v27[3];
  *&v37[65] = v27[4];
  v37[88] = v3;
  *&v38 = v5;
  *(&v38 + 1) = v7;
  *&v39 = v9;
  *(&v39 + 1) = v11;
  v40 = 0;
  *__src = v1;
  *&__src[16] = *v37;
  __src[144] = 0;
  *&__src[112] = v38;
  *&__src[128] = v39;
  *&__src[80] = *&v37[64];
  *&__src[96] = *&v37[80];
  *&__src[48] = *&v37[32];
  *&__src[64] = *&v37[48];
  *&__src[32] = *&v37[16];
  v41[0] = v12;
  v41[1] = 0;
  LOBYTE(v42[0]) = v13;
  *(&v42[4] + 1) = *&v26[64];
  *(&v42[3] + 1) = *&v26[48];
  *(v42 + 1) = *v26;
  *(&v42[2] + 1) = *&v26[32];
  *(&v42[1] + 1) = *&v26[16];
  LOBYTE(v43) = v14;
  *(&v43 + 1) = v15;
  *v44 = v17;
  *&v44[8] = v19;
  *&v44[16] = v21;
  v44[24] = 0;
  *&__src[273] = *&v44[9];
  *&__src[264] = *v44;
  *&__src[152] = v12;
  *&__src[216] = v42[3];
  *&__src[200] = v42[2];
  *&__src[184] = v42[1];
  *&__src[168] = v42[0];
  *&__src[248] = v43;
  *&__src[232] = v42[4];
  memcpy(a1, __src, 0x121uLL);
  v48 = *&v26[16];
  v49 = *&v26[32];
  v50 = *&v26[48];
  v45[0] = v12;
  v45[1] = 0;
  v46 = v13;
  v51 = *&v26[64];
  v47 = *v26;
  v52 = v14;
  v53 = v16;
  v54 = v18;
  v55 = v20;
  v56 = v22;
  v57 = 0;
  sub_2436714A8(&v36, &v58, &qword_27ED802B0, &qword_2436D28B8);
  sub_2436714A8(v41, &v58, &qword_27ED802B8, &qword_2436D28C0);
  sub_243671AC8(v45, &qword_27ED802B8, &qword_2436D28C0);
  *(&v59[2] + 1) = v27[1];
  *(&v59[4] + 1) = v27[2];
  *(&v59[6] + 1) = v27[3];
  *(&v59[8] + 1) = v27[4];
  v58 = v1;
  LOBYTE(v59[0]) = v2;
  *(v59 + 1) = v27[0];
  v60 = v3;
  v61 = v5;
  v62 = v7;
  v63 = v9;
  v64 = v11;
  v65 = 0;
  return sub_243671AC8(&v58, &qword_27ED802B0, &qword_2436D28B8);
}

uint64_t sub_2436BE3E0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436C63B4(v10[0], v11, v12, v10, 17.0);
  v2 = v10[0];
  v3 = v10[1];
  v4 = v11;
  v5 = v12;
  v6 = v13;

  v7 = sub_2436CB488();
  KeyPath = swift_getKeyPath();
  v15 = v6;
  v14 = 0;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 36) = v7;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  sub_2436BEB98(v2, v3, v4);

  sub_2436BEBD4(v2, v3, v4);
}

uint64_t sub_2436BE51C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436732AC();
  v2 = sub_2436CB698();
  v4 = v3;
  v6 = v5;
  sub_2436CB588();
  v7 = sub_2436CB658();
  v9 = v8;
  v11 = v10;

  sub_243679F68(v2, v4, v6 & 1);

  sub_2436CB978();
  v12 = sub_2436CB648();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_243679F68(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  sub_24366C090(v12, v14, v16 & 1);

  sub_243679F68(v12, v14, v16 & 1);
}

uint64_t sub_2436BE6F4()
{
  v1 = sub_2436CB508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80220, &qword_2436D2718);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v11 = *v0;
  v10 = v0[1];
  *v9 = sub_2436CB2F8();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80228, &qword_2436D2720);
  sub_2436BDA4C(v10, &v9[*(v12 + 44)]);
  sub_2436CB4F8();
  sub_243671838(&qword_27ED80230, &qword_27ED80220, &qword_2436D2718);
  sub_2436CB7A8();
  (*(v2 + 8))(v5, v1);
  return sub_243671AC8(v9, &qword_27ED80220, &qword_2436D2718);
}

unint64_t sub_2436BE8C0()
{
  result = qword_27ED80240;
  if (!qword_27ED80240)
  {
    type metadata accessor for EMSFacePortalViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80240);
  }

  return result;
}

uint64_t sub_2436BE920@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2436CB228();
  *a1 = result;
  return result;
}

unint64_t sub_2436BE984()
{
  result = qword_27ED80258;
  if (!qword_27ED80258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80250, &qword_2436D2870);
    sub_2436BEA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80258);
  }

  return result;
}

unint64_t sub_2436BEA10()
{
  result = qword_27ED80260;
  if (!qword_27ED80260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80268, &qword_2436D2878);
    sub_2436BEAC8();
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80260);
  }

  return result;
}

unint64_t sub_2436BEAC8()
{
  result = qword_27ED80270;
  if (!qword_27ED80270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80278, &qword_2436D2880);
    sub_243671838(&qword_27ED80280, &qword_27ED80288, &unk_2436D2888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80270);
  }

  return result;
}

uint64_t sub_2436BEB98(uint64_t a1, uint64_t a2, char a3)
{
  sub_24366C090(a1, a2, a3 & 1);
}

uint64_t sub_2436BEBD4(uint64_t a1, uint64_t a2, char a3)
{
  sub_243679F68(a1, a2, a3 & 1);
}

uint64_t sub_2436BEC10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80220, &qword_2436D2718);
  sub_243671838(&qword_27ED80230, &qword_27ED80220, &qword_2436D2718);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2436BECD4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_2436CB8C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED802D0, &qword_2436D2A48);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  v10 = *v1;
  v11 = v1[1];
  v13 = v1[2];
  v12 = v1[3];
  if (v1[8])
  {
    v14 = v1[6];
    v30 = v1[7];
    v28[2] = v14;
    v17 = v1 + 4;
    v15 = v1[4];
    v16 = v17[1];
    v35 = v10;
    v36 = v11;
    sub_2436732AC();

    v18 = sub_2436CB698();
    v32 = v19;
    v33 = v18;
    v29 = v20;
    v31 = v21;
    v35 = v13;
    v36 = v12;
    v28[1] = sub_2436CB698();
    v35 = v15;
    v36 = v16;
    v22 = sub_2436CB698();
    v24 = v23;
    v26 = v25;
    sub_2436CB8A8();
    sub_243679F68(v22, v24, v26 & 1);

    sub_2436CB8B8();
    return sub_2436CB898();
  }

  else
  {
    v35 = *v1;
    v36 = v11;
    sub_2436732AC();

    v33 = sub_2436CB698();
    v35 = v13;
    v36 = v12;
    sub_2436CB698();
    (*(v3 + 56))(v9, 1, 1, v2);
    return sub_2436CB888();
  }
}

uint64_t sub_2436BEFDC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED802D0, &qword_2436D2A48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED802D8, &qword_2436D2A50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16[-v8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v26 = v21;
  v25 = v20;
  v23 = v18;
  v24 = v19;
  v22 = v17;
  if (v21 == 255)
  {
    v13 = sub_2436CB8D8();
    v14 = *(v13 - 8);
    (*(v14 + 56))(v9, 1, 1, v13);
    sub_2436CB308();
    sub_2436CB668();
    v15 = sub_2436CB8C8();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    sub_2436CB888();
    result = (*(v14 + 48))(v9, 1, v13);
    if (result != 1)
    {
      return sub_243671AC8(v9, &qword_27ED802D8, &qword_2436D2A50);
    }
  }

  else
  {
    v19 = v24;
    v20 = v25;
    v21 = v26;
    v17 = v22;
    v18 = v23;
    sub_2436BECD4(v9);
    sub_243671AC8(&v22, &unk_27ED7F770, &qword_2436D2370);
    v10 = sub_2436CB8D8();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v9, 0, 1, v10);
    return (*(v11 + 32))(a1, v9, v10);
  }

  return result;
}

uint64_t sub_2436BF36C()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for EMSAlertViewModel();
  sub_2436BF480();
  sub_2436CB0A8();
  swift_getKeyPath();
  sub_2436CB0B8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED802C0, &qword_2436D2A40);
  sub_2436BF4E8();
  sub_2436CB818();
}

unint64_t sub_2436BF480()
{
  result = qword_27ED7F0F0;
  if (!qword_27ED7F0F0)
  {
    type metadata accessor for EMSAlertViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F0F0);
  }

  return result;
}

uint64_t sub_2436BF4E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2436BEFDC(a1);
}

unint64_t sub_2436BF4E8()
{
  result = qword_27ED802C8;
  if (!qword_27ED802C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED802C0, &qword_2436D2A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED802C8);
  }

  return result;
}

uint64_t sub_2436BF554()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED802C0, &qword_2436D2A40);
  sub_2436BF4E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2436BF5B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436BF62C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2436BF69C(v1, v2);
  }

  return result;
}

char *sub_2436BF69C(uint64_t a1, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
LABEL_18:
    v25 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_phaseSubject);
    v40 = 0;
LABEL_36:
    LOBYTE(v41) = 0;
    return sub_2436CAE68();
  }

  sub_2436CBD78();
  v4 = [*(v2 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_course) trustedUsers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
  v5 = sub_2436CBE08();

  v42 = MEMORY[0x277D84F90];
  v37 = v2;
  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v9 = v5 & 0xFFFFFFFFFFFFFF8;
      v38 = v5 & 0xFFFFFFFFFFFFFF8;
      while (v8)
      {
        v11 = MEMORY[0x245D3C2F0](v7, v5);
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_12:
        v39 = v12;
        v13 = [objc_msgSend(v11 nameComponents];
        swift_unknownObjectRelease();
        sub_2436CBD38();

        v14 = sub_2436CBD78();
        v16 = v15;

        v40 = v14;
        v41 = v16;
        sub_2436732AC();
        v17 = sub_2436CBFA8();

        if (v17)
        {
          goto LABEL_7;
        }

        v18 = [v11 appleID];
        sub_2436CBD38();

        v19 = sub_2436CBD78();
        v20 = v8;
        v21 = v6;
        v22 = v5;
        v24 = v23;

        v40 = v19;
        v41 = v24;
        v2 = &v40;
        LOBYTE(v19) = sub_2436CBFA8();
        v5 = v22;
        v6 = v21;
        v8 = v20;
        v9 = v38;

        if (v19)
        {
LABEL_7:
          sub_2436CC0C8();
          v10 = *(v42 + 16);
          sub_2436CC0F8();
          sub_2436CC108();
          v2 = &v42;
          sub_2436CC0D8();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v7;
        if (v39 == v6)
        {
          goto LABEL_21;
        }
      }

      if (v7 < *(v9 + 16))
      {
        break;
      }

      __break(1u);
LABEL_20:
      v6 = sub_2436CC008();
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v11 = *(v5 + 8 * v7 + 32);
    swift_unknownObjectRetain();
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

LABEL_21:

  v26 = v42;
  if ((v42 & 0x8000000000000000) == 0 && (v42 & 0x4000000000000000) == 0)
  {
    v27 = *(v42 + 16);
    v28 = v37;
    if (v27)
    {
      goto LABEL_24;
    }

LABEL_34:

    v31 = MEMORY[0x277D84F90];
LABEL_35:
    v36 = *(v28 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_phaseSubject);
    v40 = v31;
    goto LABEL_36;
  }

  v27 = sub_2436CC008();
  v28 = v37;
  if (!v27)
  {
    goto LABEL_34;
  }

LABEL_24:
  v40 = MEMORY[0x277D84F90];
  result = sub_2436C1A08(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = v40;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x245D3C2F0](v30, v26);
      }

      else
      {
        v32 = *(v26 + 8 * v30 + 32);
        swift_unknownObjectRetain();
      }

      v40 = v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_2436C1A08((v33 > 1), v34 + 1, 1);
        v31 = v40;
      }

      ++v30;
      *(v31 + 16) = v34 + 1;
      v35 = v31 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = 1;
    }

    while (v27 != v30);

    v28 = v37;
    goto LABEL_35;
  }

  __break(1u);
  return result;
}

uint64_t sub_2436BFAC4()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider__query;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_phaseSubject);

  v4 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_cancellables);

  v5 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_course);
  swift_unknownObjectRelease();
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for EMSCourseStudentsResultProvider()
{
  result = qword_27ED80300;
  if (!qword_27ED80300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436BFBF0()
{
  sub_24367BAD8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2436BFCA4()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436BFD38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2436BFDBC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436BFE44(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80320, &unk_2436D2B40);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider__query;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_2436CAE98();
  (*(v10 + 32))(v2 + v14, v13, v9);
  v15 = OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_phaseSubject;
  v21 = 0;
  LOBYTE(v22) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v2 + v15) = sub_2436CAE78();
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_cancellables) = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_course) = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_2436CAEA8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_2436C0150();
  sub_2436CAF68();

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  return v2;
}

uint64_t sub_2436C0110()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2436C0150()
{
  result = qword_27ED80330;
  if (!qword_27ED80330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED80320, &unk_2436D2B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80330);
  }

  return result;
}

uint64_t sub_2436C01B4()
{
  v1 = sub_2436CAD98();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2436CAC58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40))
  {
    v11 = *(v0 + 40);
  }

  else
  {
    if (qword_27ED7DEF0 != -1)
    {
      swift_once();
    }

    (*(v7 + 16))(v10, qword_27ED83B60 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings11DoneStrings_buttonTitle, v6);
    v12 = sub_2436CBD58();
    v14 = v13;
    v15 = swift_allocObject();
    swift_weakInit();

    sub_2436CAD88();
    v16 = v0;
    v17 = sub_2436CAD58();
    v19 = v18;
    (*(v2 + 8))(v5, v1);
    v20 = type metadata accessor for CRKUIButtonViewModel();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v11 = swift_allocObject();
    v28 = 0;
    sub_2436CAE98();
    *(v11 + 16) = v17;
    *(v11 + 24) = v19;
    swift_beginAccess();
    v26[0] = v12;
    v26[1] = v14;
    v27 = 0;
    sub_2436CAE98();
    swift_endAccess();
    v23 = (v11 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
    *v23 = sub_2436C05B4;
    v23[1] = v15;

    v24 = *(v16 + 40);
    *(v16 + 40) = v11;
  }

  return v11;
}

uint64_t sub_2436C0490()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    v2 = *(v1 + 72);
    swift_unownedRetainStrong();

    sub_243683B98();
  }

  return result;
}

uint64_t sub_2436C0510()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2436C057C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2436C05BC()
{
  result = *(v0 + 16);
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 32;
    v6 = *(v0 + 16);

    do
    {
      sub_2436744F8(v3, v7);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_0(v7, v8);
      (*(v5 + 32))(v4, v5);
      __swift_destroy_boxed_opaque_existential_0(v7);
      swift_allocObject();
      swift_weakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
      sub_24368B2B8();
      sub_2436CAF68();

      swift_beginAccess();
      sub_2436CAE08();
      swift_endAccess();

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_2436C0730()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_2436C07B4();
    v2 = *(v1 + 48);
    sub_2436CAE48();
  }

  return result;
}

char *sub_2436C07B4()
{
  v1 = v0[5];
  v2 = v0[4] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = v0[2];
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v3 + 32;
  v18 = v0[2];

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_2436744F8(v5, v21);
    v9 = v22;
    v10 = v23;
    __swift_project_boxed_opaque_existential_0(v21, v22);
    (*(v10 + 32))(v9, v10);
    __swift_destroy_boxed_opaque_existential_0(v21);
    sub_2436CAE58();

    if (!v19)
    {
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        goto LABEL_33;
      }

      goto LABEL_7;
    }

    v12 = *(v19 + 16);
    v13 = *(v7 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v14 <= *(v7 + 3) >> 1)
    {
      if (!*(v19 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v17 = v13 + v12;
      }

      else
      {
        v17 = v13;
      }

      result = sub_2436C1394(result, v17, 1, v7);
      v7 = result;
      if (!*(v19 + 16))
      {
LABEL_21:

        if (v12)
        {
          goto LABEL_31;
        }

        goto LABEL_22;
      }
    }

    if ((*(v7 + 3) >> 1) - *(v7 + 2) < v12)
    {
      goto LABEL_32;
    }

    swift_arrayInitWithCopy();

    if (v12)
    {
      v15 = *(v7 + 2);
      v8 = __OFADD__(v15, v12);
      v16 = v15 + v12;
      if (v8)
      {
        goto LABEL_34;
      }

      *(v7 + 2) = v16;
    }

LABEL_22:
    if (v20)
    {
      v8 = __OFADD__(v6++, 1);
      if (v8)
      {
        __break(1u);
LABEL_26:

        return v7;
      }
    }

LABEL_7:
    v5 += 40;
    if (!--v4)
    {
      goto LABEL_26;
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
  return result;
}

uint64_t sub_2436C09B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[5];
  v2[4] = a1;
  v2[5] = a2;

  result = v2[2];
  v6 = *(result + 16);
  if (v6)
  {
    v7 = result + 32;
    v13 = v2[2];

    do
    {
      sub_2436744F8(v7, v14);
      v8 = v3[4];
      v9 = v3[5];
      v10 = v15;
      v11 = v16;
      __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      v12 = *(v11 + 16);

      v12(v8, v9, v10, v11);
      __swift_destroy_boxed_opaque_existential_0(v14);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_2436C0A94(uint64_t result, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v3 + 32;
    v8 = *(v2 + 16);

    do
    {
      sub_2436744F8(v7, v11);
      v9 = v12;
      v10 = v13;
      __swift_project_boxed_opaque_existential_0(v11, v12);
      (*(v10 + 40))(v6, a2 & 1, v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v11);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2436C0B50()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2436C0C1C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2436C0C5C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2436C41F0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2436C2228(v6);
  return sub_2436CC0D8();
}

uint64_t sub_2436C0CD8(uint64_t *a1)
{
  v2 = v1;
  *(v1 + 56) = xmmword_2436D2BE0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0xE000000000000000;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  *(v1 + 88) = sub_2436CAE78();
  sub_2436744F8(a1, v1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  (*(v8 + 8))(v7, v8);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
  sub_243671838(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0);
  v9 = sub_2436CAF68();

  v10 = *(v2 + 56);
  *(v2 + 56) = v9;

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t sub_2436C0E6C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 64);
    *(result + 64) = v1;
    sub_243688800(v1);
    sub_2436887F0(v3);
    sub_2436C0EE8();
  }

  return result;
}

char *sub_2436C0EE8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v6 = v0[11];
    return sub_2436CAE68();
  }

  v4 = v0[8];
  if (v4 == 1)
  {
    v5 = v0[11];
    return sub_2436CAE68();
  }

  sub_243688800(v0[8]);

  v8 = sub_2436C4204(v4, v1, v2);

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_20:

    v15 = v0[11];
    sub_2436CAE68();
    return sub_2436887F0(v4);
  }

  v9 = sub_2436CC008();
  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_10:
  v16 = v0;
  v17 = MEMORY[0x277D84F90];
  result = sub_2436C1A08(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x245D3C2F0](v10, v8);
      }

      else
      {
        v11 = *(v8 + 8 * v10 + 32);
        swift_unknownObjectRetain();
      }

      v13 = *(v17 + 16);
      v12 = *(v17 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2436C1A08((v12 > 1), v13 + 1, 1);
        v0 = v16;
      }

      ++v10;
      *(v17 + 16) = v13 + 1;
      v14 = v17 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = 0;
    }

    while (v9 != v10);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_2436C10C8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  sub_2436887F0(v0[8]);
  v2 = v0[10];

  v3 = v0[11];

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

char *sub_2436C1144(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v3 + 80);
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;

  return sub_2436C0EE8();
}

char *sub_2436C1184(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803A8, &unk_2436D2CB8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2436C1290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80368, &unk_2436D2C70);
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

char *sub_2436C1394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80340, &unk_2436D2C50);
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

size_t sub_2436C14A0(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE60, &qword_2436D1B80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170) - 8);
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

char *sub_2436C1690(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80398, qword_2436D2C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2436C17AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80370, &qword_2436D01A8);
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

void *sub_2436C18BC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80360, &qword_2436CFB30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_2436C1944(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80370, &qword_2436D01A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2436C19C8(void *a1, int64_t a2, char a3)
{
  result = sub_2436C1A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2436C19E8(char *a1, int64_t a2, char a3)
{
  result = sub_2436C1BD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2436C1A08(char *a1, int64_t a2, char a3)
{
  result = sub_2436C1CEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2436C1A28(size_t a1, int64_t a2, char a3)
{
  result = sub_2436C1DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2436C1A48(void *a1, int64_t a2, char a3)
{
  result = sub_2436C1FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2436C1A68(char *a1, int64_t a2, char a3)
{
  result = sub_2436C211C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2436C1A88(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803C0, &qword_2436D2CC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803C8, &qword_2436D2CD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2436C1BD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80398, qword_2436D2C98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2436C1CEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80340, &unk_2436D2C50);
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

size_t sub_2436C1DF8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE60, &qword_2436D1B80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170) - 8);
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

void *sub_2436C1FE8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80378, &unk_2436D2C88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2436C211C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80370, &qword_2436D01A8);
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

uint64_t sub_2436C2228(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2436CC2A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
        v6 = sub_2436CBE28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2436C266C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_2436C2338(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2436C2338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v45 = &v40 - v11;
  v41 = a2;
  if (a3 != a2)
  {
    v51 = *a4;
    v12 = v51 + 8 * a3 - 8;
    v13 = a1 - a3;
LABEL_5:
    v43 = v12;
    v44 = a3;
    v14 = *(v51 + 8 * a3);
    v42 = v13;
    while (1)
    {
      v15 = *v12;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v16 = [v14 name];
      v17 = sub_2436CBD38();
      v19 = v18;

      v20 = [v15 name];
      v21 = sub_2436CBD38();
      v23 = v22;

      v49 = v17;
      v50 = v19;
      v47 = v21;
      v48 = v23;
      sub_2436732AC();
      v24 = sub_2436CBF58();

      if (v24)
      {
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if (v24 != -1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v25 = [v14 identifier];
        v46 = v15;
        v26 = [v25 stringValue];

        v27 = sub_2436CBD38();
        v29 = v28;

        v30 = [v15 identifier];
        v31 = [v30 stringValue];

        v32 = sub_2436CBD38();
        v34 = v33;

        v49 = v27;
        v50 = v29;
        v47 = v32;
        v48 = v34;
        v35 = sub_2436CADB8();
        v36 = v45;
        (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
        v37 = sub_2436CBF98();
        sub_2436C45C0(v36);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v37 != -1)
        {
          goto LABEL_4;
        }
      }

      if (!v51)
      {
        break;
      }

      v38 = *v12;
      v14 = *(v12 + 8);
      *v12 = v14;
      *(v12 + 8) = v38;
      v12 -= 8;
      if (__CFADD__(v13++, 1))
      {
LABEL_4:
        a3 = v44 + 1;
        v12 = v43 + 8;
        v13 = v42 - 1;
        if (v44 + 1 == v41)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2436C266C(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v5 = v4;
  v156 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8 - 8);
  v163 = &v152 - v11;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v158 = a3;
    v155 = a4;
    while (1)
    {
      v15 = v13 + 1;
      v159 = v14;
      if (v13 + 1 < v12)
      {
        v161 = v12;
        v153 = v5;
        v154 = v13;
        v16 = *(*a3 + 8 * v15);
        v162 = *a3;
        v17 = *(v162 + 8 * v13);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = [v16 name];
        v19 = sub_2436CBD38();
        v21 = v20;

        v22 = [v17 name];
        v23 = sub_2436CBD38();
        v25 = v24;

        v168 = v19;
        v169 = v21;
        v166 = v23;
        v167 = v25;
        v164 = sub_2436732AC();
        v26 = sub_2436CBF58();

        v165 = v26;
        if (v26)
        {
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
        }

        else
        {
          v27 = [v16 identifier];
          v28 = [v27 stringValue];

          v29 = sub_2436CBD38();
          v31 = v30;

          v32 = [v17 identifier];
          v33 = [v32 stringValue];

          v34 = sub_2436CBD38();
          v36 = v35;

          v168 = v29;
          v169 = v31;
          v166 = v34;
          v167 = v36;
          v37 = sub_2436CADB8();
          v38 = v163;
          (*(*(v37 - 8) + 56))(v163, 1, 1, v37);
          v165 = sub_2436CBF98();
          sub_2436C45C0(v38);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v13 = v154;
        v15 = v154 + 2;
        v14 = v159;
        if (v154 + 2 >= v161)
        {
          v5 = v153;
          a4 = v155;
        }

        else
        {
          v39 = (v162 + 8 * v154 + 16);
          do
          {
            v162 = v15;
            v54 = *(v39 - 1);
            v53 = *v39;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v55 = [v53 name];
            v56 = sub_2436CBD38();
            v58 = v57;

            v59 = [v54 name];
            v60 = sub_2436CBD38();
            v62 = v61;

            v168 = v56;
            v169 = v58;
            v166 = v60;
            v167 = v62;
            v63 = sub_2436CBF58();

            if (v63)
            {
              v64 = v165 == -1;
              swift_unknownObjectRelease();
              result = swift_unknownObjectRelease();
              a3 = v158;
              v14 = v159;
              if (v64 == (v63 != -1))
              {
LABEL_14:
                v5 = v153;
                a4 = v155;
                v15 = v162;
                goto LABEL_17;
              }
            }

            else
            {
              LODWORD(v160) = v165 == -1;
              v40 = [v53 identifier];
              v41 = [v40 stringValue];

              v42 = sub_2436CBD38();
              v44 = v43;

              v45 = [v54 identifier];
              v46 = [v45 stringValue];

              v47 = sub_2436CBD38();
              v49 = v48;

              v168 = v42;
              v169 = v44;
              v166 = v47;
              v167 = v49;
              v50 = sub_2436CADB8();
              v51 = v163;
              (*(*(v50 - 8) + 56))(v163, 1, 1, v50);
              v52 = sub_2436CBF98();
              sub_2436C45C0(v51);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              a3 = v158;
              v14 = v159;
              if (((v160 ^ (v52 != -1)) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            v15 = v162 + 1;
            ++v39;
          }

          while (v161 != v162 + 1);
          v15 = v161;
          v5 = v153;
          a4 = v155;
LABEL_17:
          v13 = v154;
        }

        if (v165 == -1)
        {
          if (v15 < v13)
          {
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            return result;
          }

          if (v13 < v15)
          {
            v65 = 8 * v15 - 8;
            v66 = 8 * v13;
            v67 = v15;
            v68 = v13;
            do
            {
              if (v68 != --v67)
              {
                v70 = *a3;
                if (!*a3)
                {
                  goto LABEL_135;
                }

                v69 = *(v70 + v66);
                *(v70 + v66) = *(v70 + v65);
                *(v70 + v65) = v69;
              }

              ++v68;
              v65 -= 8;
              v66 += 8;
            }

            while (v68 < v67);
          }
        }
      }

      v71 = a3[1];
      if (v15 < v71)
      {
        if (__OFSUB__(v15, v13))
        {
          goto LABEL_127;
        }

        if (v15 - v13 < a4)
        {
          v72 = v13 + a4;
          if (__OFADD__(v13, a4))
          {
            goto LABEL_128;
          }

          if (v72 >= v71)
          {
            v72 = a3[1];
          }

          if (v72 < v13)
          {
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (v15 != v72)
          {
            v153 = v5;
            v154 = v13;
            v165 = *a3;
            v73 = v165 + 8 * v15 - 8;
            v74 = v13 - v15;
            v157 = v72;
            do
            {
              v161 = v73;
              v162 = v15;
              v75 = *(v165 + 8 * v15);
              v160 = v74;
              do
              {
                v76 = *v73;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v77 = [v75 name];
                v78 = sub_2436CBD38();
                v80 = v79;

                v81 = v76;
                v82 = [v76 name];
                v83 = sub_2436CBD38();
                v85 = v84;

                v168 = v78;
                v169 = v80;
                v166 = v83;
                v167 = v85;
                sub_2436732AC();
                v86 = sub_2436CBF58();

                if (v86)
                {
                  swift_unknownObjectRelease();
                  result = swift_unknownObjectRelease();
                  if (v86 != -1)
                  {
                    break;
                  }
                }

                else
                {
                  v87 = [v75 identifier];
                  v88 = [v87 stringValue];

                  v89 = sub_2436CBD38();
                  v91 = v90;

                  v164 = v81;
                  v92 = [v81 identifier];
                  v93 = [v92 stringValue];

                  v94 = sub_2436CBD38();
                  v96 = v95;

                  v168 = v89;
                  v169 = v91;
                  v166 = v94;
                  v167 = v96;
                  v97 = sub_2436CADB8();
                  v98 = v163;
                  (*(*(v97 - 8) + 56))(v163, 1, 1, v97);
                  v99 = sub_2436CBF98();
                  sub_2436C45C0(v98);
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  if (v99 != -1)
                  {
                    break;
                  }
                }

                if (!v165)
                {
                  goto LABEL_132;
                }

                v100 = *v73;
                v75 = *(v73 + 8);
                *v73 = v75;
                *(v73 + 8) = v100;
                v73 -= 8;
              }

              while (!__CFADD__(v74++, 1));
              v15 = v162 + 1;
              v73 = v161 + 8;
              v74 = v160 - 1;
            }

            while (v162 + 1 != v157);
            v15 = v157;
            v5 = v153;
            v13 = v154;
            a3 = v158;
            v14 = v159;
          }
        }
      }

      if (v15 < v13)
      {
        goto LABEL_126;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2436C1290(0, *(v14 + 2) + 1, 1, v14);
        v14 = result;
      }

      v103 = *(v14 + 2);
      v102 = *(v14 + 3);
      v104 = v103 + 1;
      if (v103 >= v102 >> 1)
      {
        result = sub_2436C1290((v102 > 1), v103 + 1, 1, v14);
        v14 = result;
      }

      *(v14 + 2) = v104;
      v105 = &v14[16 * v103];
      *(v105 + 4) = v13;
      *(v105 + 5) = v15;
      v106 = *v156;
      if (!*v156)
      {
        goto LABEL_136;
      }

      v13 = v15;
      if (v103)
      {
        while (1)
        {
          v15 = v104 - 1;
          if (v104 >= 4)
          {
            break;
          }

          if (v104 == 3)
          {
            v107 = *(v14 + 4);
            v108 = *(v14 + 5);
            v117 = __OFSUB__(v108, v107);
            v109 = v108 - v107;
            v110 = v117;
LABEL_67:
            if (v110)
            {
              goto LABEL_115;
            }

            v123 = &v14[16 * v104];
            v125 = *v123;
            v124 = *(v123 + 1);
            v126 = __OFSUB__(v124, v125);
            v127 = v124 - v125;
            v128 = v126;
            if (v126)
            {
              goto LABEL_118;
            }

            v129 = &v14[16 * v15 + 32];
            v131 = *v129;
            v130 = *(v129 + 1);
            v117 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v117)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v127, v132))
            {
              goto LABEL_122;
            }

            if (v127 + v132 >= v109)
            {
              if (v109 < v132)
              {
                v15 = v104 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v133 = &v14[16 * v104];
          v135 = *v133;
          v134 = *(v133 + 1);
          v117 = __OFSUB__(v134, v135);
          v127 = v134 - v135;
          v128 = v117;
LABEL_81:
          if (v128)
          {
            goto LABEL_117;
          }

          v136 = &v14[16 * v15];
          v138 = *(v136 + 4);
          v137 = *(v136 + 5);
          v117 = __OFSUB__(v137, v138);
          v139 = v137 - v138;
          if (v117)
          {
            goto LABEL_120;
          }

          if (v139 < v127)
          {
            goto LABEL_3;
          }

LABEL_88:
          v144 = v15 - 1;
          if (v15 - 1 >= v104)
          {
            __break(1u);
LABEL_111:
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
            goto LABEL_129;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v145 = *&v14[16 * v144 + 32];
          v146 = *&v14[16 * v15 + 40];
          sub_2436C3304((*a3 + 8 * v145), (*a3 + 8 * *&v14[16 * v15 + 32]), (*a3 + 8 * v146), v106);
          if (v5)
          {
          }

          if (v146 < v145)
          {
            goto LABEL_111;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_2436C3A7C(v14);
          }

          if (v144 >= *(v14 + 2))
          {
            goto LABEL_112;
          }

          v147 = &v14[16 * v144];
          *(v147 + 4) = v145;
          *(v147 + 5) = v146;
          v170 = v14;
          result = sub_2436C39F0(v15);
          v14 = v170;
          v104 = *(v170 + 2);
          if (v104 <= 1)
          {
            goto LABEL_3;
          }
        }

        v111 = &v14[16 * v104 + 32];
        v112 = *(v111 - 64);
        v113 = *(v111 - 56);
        v117 = __OFSUB__(v113, v112);
        v114 = v113 - v112;
        if (v117)
        {
          goto LABEL_113;
        }

        v116 = *(v111 - 48);
        v115 = *(v111 - 40);
        v117 = __OFSUB__(v115, v116);
        v109 = v115 - v116;
        v110 = v117;
        if (v117)
        {
          goto LABEL_114;
        }

        v118 = &v14[16 * v104];
        v120 = *v118;
        v119 = *(v118 + 1);
        v117 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v117)
        {
          goto LABEL_116;
        }

        v117 = __OFADD__(v109, v121);
        v122 = v109 + v121;
        if (v117)
        {
          goto LABEL_119;
        }

        if (v122 >= v114)
        {
          v140 = &v14[16 * v15 + 32];
          v142 = *v140;
          v141 = *(v140 + 1);
          v117 = __OFSUB__(v141, v142);
          v143 = v141 - v142;
          if (v117)
          {
            goto LABEL_123;
          }

          if (v109 < v143)
          {
            v15 = v104 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

LABEL_3:
      v12 = a3[1];
      a4 = v155;
      if (v13 >= v12)
      {
        goto LABEL_98;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
LABEL_98:
  v15 = *v156;
  if (!*v156)
  {
    goto LABEL_137;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_130:
    result = sub_2436C3A7C(v14);
    v14 = result;
  }

  v148 = v5;
  v170 = v14;
  v149 = *(v14 + 2);
  if (v149 >= 2)
  {
    while (*a3)
    {
      v150 = *&v14[16 * v149];
      v5 = *&v14[16 * v149 + 24];
      sub_2436C3304((*a3 + 8 * v150), (*a3 + 8 * *&v14[16 * v149 + 16]), (*a3 + 8 * v5), v15);
      if (v148)
      {
      }

      if (v5 < v150)
      {
        goto LABEL_124;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_2436C3A7C(v14);
      }

      if (v149 - 2 >= *(v14 + 2))
      {
        goto LABEL_125;
      }

      v151 = &v14[16 * v149];
      *v151 = v150;
      *(v151 + 1) = v5;
      v170 = v14;
      result = sub_2436C39F0(v149 - 1);
      v14 = v170;
      v149 = *(v170 + 2);
      if (v149 <= 1)
      {
      }
    }

    goto LABEL_134;
  }
}

uint64_t sub_2436C3304(void **a1, void **a2, char *a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v71 = &v69 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    v69 = a1;
    if (a4 != a2 || &a2[v14] <= a4)
    {
      memmove(a4, a2, 8 * v14);
    }

    v80 = &a4[v14];
    if (a3 - a2 >= 8 && a2 > v69)
    {
      v75 = a4;
LABEL_28:
      v74 = a2;
      v42 = a2 - 1;
      a3 -= 8;
      v43 = v80;
      v72 = a2 - 1;
      do
      {
        v44 = *(v43 - 1);
        v73 = v43 - 1;
        v45 = *v42;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v46 = [v44 name];
        v47 = sub_2436CBD38();
        v49 = v48;

        v50 = [v45 name];
        v51 = sub_2436CBD38();
        v53 = v52;

        v78 = v47;
        v79 = v49;
        v76 = v51;
        v77 = v53;
        sub_2436732AC();
        v54 = sub_2436CBF58();

        if (v54)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v55 = [v44 identifier];
          v56 = [v55 stringValue];

          v70 = sub_2436CBD38();
          v58 = v57;

          v59 = [v45 identifier];
          v60 = [v59 stringValue];

          v61 = sub_2436CBD38();
          v63 = v62;

          v78 = v70;
          v79 = v58;
          v76 = v61;
          v77 = v63;
          v64 = sub_2436CADB8();
          v65 = v71;
          (*(*(v64 - 8) + 56))(v71, 1, 1, v64);
          v54 = sub_2436CBF98();
          sub_2436C45C0(v65);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v66 = (a3 + 8);
        if (v54 == -1)
        {
          a4 = v75;
          v67 = v72;
          if (v66 != v74)
          {
            *a3 = *v72;
          }

          if (v80 <= a4 || (a2 = v67, v67 <= v69))
          {
            a2 = v67;
            goto LABEL_44;
          }

          goto LABEL_28;
        }

        a4 = v75;
        v43 = v73;
        if (v66 != v80)
        {
          *a3 = *v73;
        }

        a3 -= 8;
        v80 = v43;
        v42 = v72;
      }

      while (v43 > a4);
      v80 = v43;
      a2 = v74;
    }
  }

  else
  {
    v73 = a3;
    if (a4 != a1 || &a1[v12] <= a4)
    {
      memmove(a4, a1, 8 * v12);
    }

    v15 = a1;
    v80 = &a4[v12];
    if (a2 - a1 >= 8 && a2 < v73)
    {
      v16 = MEMORY[0x277D837D0];
      while (1)
      {
        v74 = a2;
        v75 = a4;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 name];
        v20 = v16;
        v21 = sub_2436CBD38();
        v23 = v22;

        v24 = [v18 name];
        v25 = sub_2436CBD38();
        v27 = v26;

        v78 = v21;
        v79 = v23;
        v16 = v20;
        v76 = v25;
        v77 = v27;
        sub_2436732AC();
        v28 = sub_2436CBF58();

        if (v28)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v28 != -1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v30 = [v17 identifier];
          v31 = [v30 stringValue];

          v72 = sub_2436CBD38();
          v33 = v32;

          v34 = [v18 identifier];
          v35 = [v34 stringValue];

          v36 = sub_2436CBD38();
          v38 = v37;

          v78 = v72;
          v79 = v33;
          v76 = v36;
          v77 = v38;
          v39 = sub_2436CADB8();
          v40 = v71;
          (*(*(v39 - 8) + 56))(v71, 1, 1, v39);
          v41 = sub_2436CBF98();
          sub_2436C45C0(v40);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v16 = v20;

          if (v41 != -1)
          {
LABEL_14:
            v29 = v75;
            a4 = v75 + 1;
            if (v15 == v75)
            {
              goto LABEL_16;
            }

LABEL_15:
            *v15 = *v29;
            goto LABEL_16;
          }
        }

        a4 = v75;
        v29 = v74++;
        if (v15 != v29)
        {
          goto LABEL_15;
        }

LABEL_16:
        ++v15;
        if (a4 < v80)
        {
          a2 = v74;
          if (v74 < v73)
          {
            continue;
          }
        }

        break;
      }
    }

    a2 = v15;
  }

LABEL_44:
  if (a2 != a4 || a2 >= (a4 + ((v80 - a4 + (v80 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v80 - a4));
  }

  return 1;
}

uint64_t sub_2436C39F0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2436C3A7C(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2436C3AC0(unint64_t a1, void (*a2)(void *, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = sub_2436CC008();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = sub_2436C18BC(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2436C3B5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2436CC008();
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
      result = sub_2436CC008();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243671838(&qword_27ED803B8, &qword_27ED803B0, &qword_2436CE510);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803B0, &qword_2436CE510);
            v9 = sub_2436C40E8(v13, i, a3);
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
        type metadata accessor for EMSCourseTileViewModel();
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

uint64_t sub_2436C3D00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2436CC008();
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
      result = sub_2436CC008();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243671838(&qword_27ED80358, &qword_27ED80350, &unk_2436D2C60);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80350, &unk_2436D2C60);
            v9 = sub_2436C4060(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
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

uint64_t sub_2436C3EB0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2436CC008();
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
      result = sub_2436CC008();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_243671838(&unk_27ED7F600, &qword_27ED7F5F8, &qword_2436D2CB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F8, &qword_2436D2CB0);
            v9 = sub_2436C4170(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
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

uint64_t (*sub_2436C4060(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245D3C2F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_2436C40E0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2436C40E8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245D3C2F0](a2, a3);
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
    *v3 = v5;
    return sub_2436C4168;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2436C4170(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x245D3C2F0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_2436C4668;
  }

  __break(1u);
  return result;
}

uint64_t sub_2436C4204(id a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v29 = v28 - v8;
  v9 = MEMORY[0x277D84F90];
  if (a1)
  {
    v10 = [swift_unknownObjectRetain() courses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
    v11 = sub_2436CBE08();

    v36 = v9;
    if (v11 >> 62)
    {
      goto LABEL_26;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      while (1)
      {
        v13 = 0;
        v30 = v11 & 0xFFFFFFFFFFFFFF8;
        v31 = v11 & 0xC000000000000001;
        v14 = HIBYTE(a3) & 0xF;
        if ((a3 & 0x2000000000000000) == 0)
        {
          v14 = a2;
        }

        v15 = 7;
        if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
        {
          v15 = 11;
        }

        v28[1] = a1;
        v28[2] = v15 | (v14 << 16);
        while (v31)
        {
          v16 = MEMORY[0x245D3C2F0](v13, v11);
          v17 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_14:
          v18 = v12;
          a1 = [v16 name];
          v19 = sub_2436CBD38();
          v21 = v20;

          if (sub_2436CBD98() == 1 && (a1 = sub_2436CBD98(), sub_2436CBD98() >= a1))
          {
            v34 = v19;
            v35 = v21;
            v32 = a2;
            v33 = a3;
            a1 = v29;
            sub_2436CADA8();
            v23 = sub_2436CADB8();
            (*(*(v23 - 8) + 56))(a1, 0, 1, v23);
            sub_2436732AC();
            sub_2436CBF88();
            v25 = v24;
            sub_2436C45C0(a1);

            if ((v25 & 1) == 0)
            {
LABEL_19:
              sub_2436CC0C8();
              a1 = *(v36 + 16);
              sub_2436CC0F8();
              sub_2436CC108();
              sub_2436CC0D8();
              goto LABEL_10;
            }
          }

          else
          {
            v34 = v19;
            v35 = v21;
            v32 = a2;
            v33 = a3;
            sub_2436732AC();
            v22 = sub_2436CBF78();

            if (v22)
            {
              goto LABEL_19;
            }
          }

          swift_unknownObjectRelease();
LABEL_10:
          v12 = v18;
          ++v13;
          if (v17 == v18)
          {
            goto LABEL_23;
          }
        }

        if (v13 < *(v30 + 16))
        {
          break;
        }

        __break(1u);
LABEL_26:
        v12 = sub_2436CC008();
        if (!v12)
        {
          goto LABEL_23;
        }
      }

      v16 = *(v11 + 8 * v13 + 32);
      swift_unknownObjectRetain();
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

LABEL_23:

    v34 = sub_2436C3AC0(v26, sub_2436C3D00);
    sub_2436C0C5C(&v34);

    swift_unknownObjectRelease();
    return v34;
  }

  return v9;
}

uint64_t sub_2436C45C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC8, &qword_2436CEB38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2436C4628()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2436C4674@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_2436C46F4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2436CAEE8();
  return sub_243689750();
}

uint64_t sub_2436C4784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803D0, &qword_2436D2D20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED803D8, &qword_2436D2D28);
  v9 = *(v16[0] - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v16[0]);
  v12 = v16 - v11;
  v16[1] = (*(a2 + 8))(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  sub_243671838(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0);
  sub_2436CAF38();

  sub_243671838(&qword_27ED803E8, &qword_27ED803D0, &qword_2436D2D20);
  sub_2436C4AE8();
  sub_2436CAF58();
  (*(v5 + 8))(v8, v4);
  sub_243671838(&qword_27ED803F8, &unk_27ED803D8, &qword_2436D2D28);
  v13 = v16[0];
  v14 = sub_2436CAF08();
  (*(v9 + 8))(v12, v13);
  return v14;
}

void sub_2436C4A58(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  if (v2 > 1)
  {
    v4 = [objc_msgSend(v2 organization)];
    swift_unknownObjectRelease();
    v5 = sub_2436CBD38();
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

unint64_t sub_2436C4AE8()
{
  result = qword_27ED803F0;
  if (!qword_27ED803F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED80380, &qword_2436CF6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED803F0);
  }

  return result;
}

double sub_2436C4B90@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2436CB2F8();
  v31 = 0;
  sub_2436C4DA4(&v15);
  v44 = v27;
  v45 = v28;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v47[12] = v27;
  v47[13] = v28;
  v47[8] = v23;
  v47[9] = v24;
  v47[11] = v26;
  v47[10] = v25;
  v47[4] = v19;
  v47[5] = v20;
  v47[7] = v22;
  v47[6] = v21;
  v47[0] = v15;
  v47[1] = v16;
  v46 = v29;
  v48 = v29;
  v47[2] = v17;
  v47[3] = v18;
  sub_2436714A8(&v32, &v14, &qword_27ED80400, &qword_2436D2DC0);
  sub_243671AC8(v47, &qword_27ED80400, &qword_2436D2DC0);
  *&v30[183] = v43;
  *&v30[199] = v44;
  *&v30[215] = v45;
  *&v30[119] = v39;
  *&v30[135] = v40;
  *&v30[151] = v41;
  *&v30[167] = v42;
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[7] = v32;
  *&v30[23] = v33;
  v30[231] = v46;
  *&v30[39] = v34;
  v3 = v31;
  v4 = sub_2436CB948();
  KeyPath = swift_getKeyPath();
  v6 = *&v30[160];
  *(a1 + 193) = *&v30[176];
  v7 = *&v30[208];
  *(a1 + 209) = *&v30[192];
  *(a1 + 225) = v7;
  v8 = *&v30[96];
  *(a1 + 129) = *&v30[112];
  v9 = *&v30[144];
  *(a1 + 145) = *&v30[128];
  *(a1 + 161) = v9;
  *(a1 + 177) = v6;
  v10 = *&v30[32];
  *(a1 + 65) = *&v30[48];
  v11 = *&v30[80];
  *(a1 + 81) = *&v30[64];
  *(a1 + 97) = v11;
  *(a1 + 113) = v8;
  result = *v30;
  v13 = *&v30[16];
  *(a1 + 17) = *v30;
  *(a1 + 33) = v13;
  *a1 = v2;
  *(a1 + 8) = 0x4034000000000000;
  *(a1 + 16) = v3;
  *(a1 + 241) = *&v30[224];
  *(a1 + 49) = v10;
  *(a1 + 256) = KeyPath;
  *(a1 + 264) = v4;
  return result;
}

uint64_t sub_2436C4DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v45 - v4;
  v6 = sub_2436CBB48();
  v49 = v7;
  v50 = v6;
  sub_2436C52C8(&v86);
  v57 = v88;
  v58 = v89;
  v59 = v90;
  v55 = v86;
  v56 = v87;
  v60[2] = v88;
  v60[3] = v89;
  v61 = v90;
  v60[0] = v86;
  v60[1] = v87;
  sub_2436714A8(&v55, v68, &qword_27ED80408, &qword_2436D2E00);
  sub_243671AC8(v60, &qword_27ED80408, &qword_2436D2E00);
  v64 = v57;
  v65 = v58;
  v66 = v59;
  v62 = v55;
  v63 = v56;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436732AC();
  v8 = sub_2436CB698();
  v10 = v9;
  v12 = v11;
  v13 = sub_2436CB5A8();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  sub_2436CB5C8();
  sub_243671AC8(v5, &qword_27ED7F790, &qword_2436D2640);
  v14 = sub_2436CB658();
  v16 = v15;
  LOBYTE(v5) = v17;
  KeyPath = v18;

  sub_243679F68(v8, v10, v12 & 1);

  sub_2436CB968();
  v19 = sub_2436CB648();
  v45 = v20;
  v46 = v19;
  v48 = v21;
  v23 = v22;

  sub_243679F68(v14, v16, v5 & 1);

  KeyPath = swift_getKeyPath();
  v24 = sub_2436CB9B8();
  v25 = [objc_opt_self() lightGrayColor];
  v26 = sub_2436CB8E8();
  v27 = swift_getKeyPath();
  LOBYTE(v14) = sub_2436CB578();
  sub_2436CAF88();
  LOBYTE(v86) = 0;
  *&v68[0] = v50;
  *(&v68[0] + 1) = v49;
  v70 = v64;
  v71 = v65;
  v72 = v66;
  *&v73 = v24;
  v68[1] = v62;
  v69 = v63;
  v23 &= 1u;
  v54 = v23;
  v53 = 0;
  v52 = 1;
  v28 = v24;
  *(&v73 + 1) = v27;
  *&v74 = v26;
  BYTE8(v74) = v14;
  HIDWORD(v74) = *&v67[3];
  *(&v74 + 9) = *v67;
  *&v75 = v29;
  *(&v75 + 1) = v30;
  *&v76 = v31;
  *(&v76 + 1) = v32;
  v77 = 0;
  *&v51[7] = v73;
  v51[71] = 0;
  *&v51[55] = v76;
  *&v51[39] = v75;
  *&v51[23] = v74;
  v33 = v62;
  *a1 = v68[0];
  *(a1 + 16) = v33;
  v34 = v69;
  v35 = v71;
  v36 = v72;
  *(a1 + 48) = v70;
  *(a1 + 64) = v35;
  *(a1 + 32) = v34;
  v37 = v45;
  v38 = v46;
  *(a1 + 80) = v36;
  *(a1 + 88) = v38;
  v40 = KeyPath;
  v39 = v48;
  *(a1 + 96) = v48;
  *(a1 + 104) = v23;
  *(a1 + 112) = v37;
  *(a1 + 120) = v40;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 1;
  v41 = *&v51[16];
  *(a1 + 153) = *v51;
  v42 = *&v51[32];
  v43 = *&v51[48];
  *(a1 + 217) = *&v51[64];
  *(a1 + 201) = v43;
  *(a1 + 185) = v42;
  *(a1 + 169) = v41;
  v78[0] = v28;
  v78[1] = v27;
  v78[2] = v26;
  v79 = v14;
  *&v80[3] = *&v67[3];
  *v80 = *v67;
  v81 = v29;
  v82 = v30;
  v83 = v31;
  v84 = v32;
  v85 = 0;
  sub_2436714A8(v68, &v86, &qword_27ED80410, &qword_2436D2E80);
  sub_24366C090(v38, v39, v23);

  sub_2436714A8(&v73, &v86, &qword_27ED80418, &qword_2436D2E88);
  sub_243671AC8(v78, &qword_27ED80418, &qword_2436D2E88);
  sub_243679F68(v38, v39, v23);

  *&v86 = v50;
  *(&v86 + 1) = v49;
  v89 = v64;
  v90 = v65;
  v91 = v66;
  v87 = v62;
  v88 = v63;
  return sub_243671AC8(&v86, &qword_27ED80410, &qword_2436D2E80);
}

uint64_t sub_2436C52C8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_243689174(v12);
  v2 = sub_2436CB8E8();
  sub_2436CBB48();
  sub_2436CB068();
  *&v7[6] = v8;
  *&v7[22] = v9;
  *&v7[38] = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v3 = sub_24368CCEC(v12);
  *v11 = v2;
  *&v11[8] = 256;
  *&v11[10] = *v7;
  *&v11[26] = *&v7[16];
  *&v11[42] = *&v7[32];
  *&v11[56] = *(&v10 + 1);
  v4 = *&v11[16];
  *a1 = *v11;
  *(a1 + 16) = v4;
  v5 = *&v11[48];
  *(a1 + 32) = *&v11[32];
  *(a1 + 48) = v5;
  *(a1 + 64) = v3;
  sub_2436714A8(v11, &v12, &qword_27ED80420, &qword_2436D2F20);
  v12 = v2;
  v13 = 256;
  v14 = *v7;
  v15 = *&v7[16];
  *v16 = *&v7[32];
  *&v16[14] = *(&v10 + 1);
  return sub_243671AC8(&v12, &qword_27ED80420, &qword_2436D2F20);
}

double sub_2436C5480@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_2436C4B90(a1);
}

unint64_t sub_2436C54B4()
{
  result = qword_27ED80428;
  if (!qword_27ED80428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED80430, &qword_2436D2F28);
    sub_243671838(&qword_27ED80438, &qword_27ED80440, &qword_2436D2F30);
    sub_243671838(&qword_27ED7F248, &qword_27ED7F250, &qword_2436D2460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED80428);
  }

  return result;
}

uint64_t sub_2436C5598()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436C5610()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher__phase;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_query + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider));
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for EMSSearcher()
{
  result = qword_27ED80458;
  if (!qword_27ED80458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436C5730()
{
  sub_2436C57D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2436C57D4()
{
  if (!qword_27ED80468)
  {
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED80468);
    }
  }
}

uint64_t sub_2436C5824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2436C58B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436C5940(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED803C0, &qword_2436D2CC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2436CF4C0;
  sub_2436744F8(a1, &v18);
  v3 = type metadata accessor for EMSCourseResultProvider();
  swift_allocObject();
  v4 = sub_2436C0CD8(&v18);
  *(inited + 56) = v3;
  *(inited + 64) = &off_285676E68;
  *(inited + 32) = v4;
  sub_2436744F8(a1, &v18);
  v5 = type metadata accessor for EMSStudentResultProvider();
  swift_allocObject();
  *(inited + 72) = sub_243684204(&v18, 100, 25);
  *(inited + 96) = v5;
  *(inited + 104) = &off_285675BA0;
  v17 = MEMORY[0x277D84F90];
  sub_2436C19C8(0, 2, 0);
  v6 = v17;
  sub_2436744F8(inited + 32, &v18);
  sub_2436744F8(&v18, v16);
  v7 = type metadata accessor for EMSPreviousResultCachingResultProvider();
  swift_allocObject();
  v8 = sub_24368AD74(v16);
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_2436C19C8((v9 > 1), v10 + 1, 1);
    v6 = v17;
  }

  v19 = v7;
  v20 = &off_285675F20;
  *&v18 = v8;
  *(v6 + 16) = v10 + 1;
  sub_2436854AC(&v18, v6 + 40 * v10 + 32);
  sub_2436744F8(inited + 72, &v18);

  sub_2436744F8(&v18, v16);
  swift_allocObject();
  v11 = sub_24368AD74(v16);
  __swift_destroy_boxed_opaque_existential_0(&v18);
  v13 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_2436C19C8((v12 > 1), v13 + 1, 1);
  }

  v19 = v7;
  v20 = &off_285675F20;
  *&v18 = v11;
  v14 = v17;
  *(v17 + 16) = v13 + 1;
  sub_2436854AC(&v18, v14 + 40 * v13 + 32);
  return v14;
}

uint64_t sub_2436C5BA4(uint64_t *a1)
{
  v2 = sub_2436C5940(a1);
  type metadata accessor for EMSUnionedResultProvider();
  v3 = swift_allocObject();
  v3[3] = MEMORY[0x277D84FA0];
  v3[4] = 0;
  v3[5] = 0xE000000000000000;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v3[6] = sub_2436CAE78();
  v3[2] = v2;
  sub_2436C05BC();
  v7 = type metadata accessor for EMSSearcher();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = sub_2436B0F14(v3, v10);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

double sub_2436C5CA8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v4 < 0)
  {
    sub_2436CB9B8();
  }

  else
  {
    sub_2436732AC();
    sub_2436CB698();
    if (v4)
    {
      sub_2436CB918();
    }

    else
    {
      sub_2436CB8F8();
    }

    swift_getKeyPath();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80488, &qword_2436D3058);
  sub_2436C6070();
  sub_2436CB398();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_2436C5E0C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80470, &qword_2436D3050);
  sub_2436C5FE4();
  sub_2436CBA38();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80490, &qword_2436D30D8);
  v9 = (a1 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_2436C6198;
  v9[2] = v7;
  return result;
}

uint64_t sub_2436C5F6C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}