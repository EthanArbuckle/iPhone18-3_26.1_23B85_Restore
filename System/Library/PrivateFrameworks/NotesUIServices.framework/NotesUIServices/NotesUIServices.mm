uint64_t sub_25C79B070()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25C79B0B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  return sub_25C79CB08(v3 + v4, a2, &qword_27FC151B0, &qword_25C7AB888);
}

uint64_t sub_25C79B124()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C79B15C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C79B194()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25C79B200@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA63C();
  *a1 = result;
  return result;
}

uint64_t sub_25C79B258@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA65C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C79B284(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_25C7AA66C();
}

uint64_t sub_25C79B3F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_25C79B4B0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15328, &qword_25C7ABCB0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15330, &qword_25C7ABCB8);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_25C79B5D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15328, &qword_25C7ABCB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15330, &qword_25C7ABCB8);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_25C79B734()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A0, &qword_25C7AC250);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25C79B7C8()
{
  v1 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_25C7A9CC0(*(v0 + v4), *(v0 + v4 + 8));
  sub_25C7A9CCC(*(v5 + 16), *(v5 + 24), *(v5 + 32));
  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15080, &qword_25C7ABC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_25C7AA54C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_25C7AA58C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + v1[13] + 8);

  v13 = *(v5 + v1[14] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_25C79B99C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25C79B9DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA69C();
  *a1 = result;
  return result;
}

uint64_t sub_25C79BA08(uint64_t *a1)
{
  v1 = *a1;

  return sub_25C7AA6AC();
}

uint64_t sub_25C79BA34@<X0>(uint64_t a1@<X8>)
{
  result = sub_25C7AA6BC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25C79BA68(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_25C7AA6CC();
}

uint64_t sub_25C79BA98()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[7];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

id sub_25C79BB00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_25C79CAC0(&qword_28119B618, type metadata accessor for NotesIndexSharedModel);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v5 = v4[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15080, &qword_25C7ABC50);
  swift_storeEnumTagMultiPayload();
  v6 = v4[7];
  *(a2 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[9]) = 0x404A000000000000;
  *(a2 + v4[10]) = 0x4020000000000000;
  *(a2 + v4[11]) = 0x402C000000000000;
  *(a2 + v4[12]) = 0x402C000000000000;
  v7 = (a2 + v4[13]);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (a2 + v4[14]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (a2 + v4[8]);
  *v9 = a1;
  v9[1] = v3;

  return a1;
}

ICNotesSharedIndexedViewHelper __swiftcall ICNotesSharedIndexedViewHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_25C79BE68(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_25C7AAC3C();

  return sub_25C79BEAC(a1, v5);
}

unint64_t sub_25C79BEAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25C79CB80(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F88DCF0](v9, a1);
      sub_25C79CBDC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_25C79BF74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15090, &qword_25C7AB838);
    v3 = sub_25C7AAC8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C79CB08(v4, v13, &qword_27FC15098, &qword_25C7AB840);
      result = sub_25C79BE68(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25C79CB70(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id _sSo30ICNotesSharedIndexedViewHelperC15NotesUIServicesE020makeNoteSearchResultD04with13attachmentURLSo28CSSearchableItemAttributeSetCSgSo017ICSearchIndexableI0_p_10Foundation0N0VSgtFZ_0(void *a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_25C7AA43C();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  (MEMORY[0x28223BE20])();
  v6 = &v53[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v9 = &v53[-v8];
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v53[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v53[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v53[-v17];
  sub_25C79BF74(MEMORY[0x277D84F90]);
  v19 = objc_allocWithZone(MEMORY[0x277CC34B8]);
  v20 = sub_25C7AAA9C();

  v57 = [v19 initWithAttributes_];

  v21 = objc_opt_self();
  v22 = [objc_opt_self() noteSortTypeDefaultAscending];
  v23 = [v21 dateForCurrentSortTypeForNote:a1 folderNoteSortType:v22];

  if (v23)
  {
    sub_25C7AA51C();

    v24 = sub_25C7AA52C();
    (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  }

  else
  {
    v25 = sub_25C7AA52C();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
  }

  sub_25C79C910(v16, v18);
  sub_25C79CB08(v18, v13, &qword_27FC15078, &unk_25C7ABBB0);
  v26 = [a1 isSharedViaICloud];
  v58 = v18;
  v59 = v6;
  v55 = a1;
  v27 = v13;
  if (v26)
  {
    v54 = 1;
  }

  else
  {
    v54 = [a1 isSharedViaICloudFolder];
  }

  v28 = sub_25C7AA4FC();
  v29 = *(*(v28 - 8) + 56);
  v29(v9, 1, 1, v28);
  v30 = type metadata accessor for NotesIndexSharedModel(0);
  v31 = objc_allocWithZone(v30);
  v32 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  v33 = sub_25C7AA52C();
  (*(*(v33 - 8) + 56))(&v31[v32], 1, 1, v33);
  v34 = &v31[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  *v34 = 0;
  v34[1] = 0;
  v35 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  v29(&v31[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL], 1, 1, v28);
  swift_beginAccess();
  sub_25C79C980(v27, &v31[v32], &qword_27FC15078, &unk_25C7ABBB0);
  swift_endAccess();
  v31[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge] = v54;
  swift_beginAccess();
  v36 = v34[1];
  *v34 = 0;
  v34[1] = 0;

  swift_beginAccess();
  sub_25C79C980(v9, &v31[v35], &qword_27FC15070, &qword_25C7AB768);
  swift_endAccess();
  v31[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges] = 0;
  v62.receiver = v31;
  v62.super_class = v30;
  v37 = objc_msgSendSuper2(&v62, sel_init);
  sub_25C79C9E8(v9, &qword_27FC15070, &qword_25C7AB768);
  sub_25C79C9E8(v27, &qword_27FC15078, &unk_25C7ABBB0);
  sub_25C79CB08(v56, v9, &qword_27FC15070, &qword_25C7AB768);
  v38 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  swift_beginAccess();
  sub_25C79CA48(v9, &v37[v38]);
  swift_endAccess();
  v39 = v55;
  v40 = [v55 folderName];
  if (v40)
  {
    v41 = v40;
    v42 = sub_25C7AAABC();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = v59;
  v46 = &v37[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  swift_beginAccess();
  v47 = v46[1];
  *v46 = v42;
  v46[1] = v44;

  v48 = [v39 hasUnreadChanges];
  v49 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges;
  v50 = swift_beginAccess();
  v37[v49] = v48;
  MEMORY[0x28223BE20](v50);
  *&v53[-16] = v37;
  type metadata accessor for NotesSharedIndexedSearchView(0);
  sub_25C79CAC0(&qword_28119B5B0, type metadata accessor for NotesSharedIndexedSearchView);
  sub_25C7AA42C();
  v51 = v57;
  sub_25C7AABCC();

  (*(v60 + 8))(v45, v61);
  sub_25C79C9E8(v58, &qword_27FC15078, &unk_25C7ABBB0);
  return v51;
}

unint64_t type metadata accessor for ICNotesSharedIndexedViewHelper()
{
  result = qword_27FC15060;
  if (!qword_27FC15060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC15060);
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

uint64_t sub_25C79C82C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25C79C84C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for UIEdgeInsets()
{
  if (!qword_27FC15068)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27FC15068);
    }
  }
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

uint64_t sub_25C79C910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C79C980(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C79C9E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C79CA48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C79CAC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25C79CB08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_25C79CB70(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id MathNotesUpdateSafeAreaInsetsAction.performAction(forSceneController:)(void *a1)
{
  v2 = [a1 delegate];
  if (!v2 || (v51[0] = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15170, &qword_25C7AB870), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15178, &qword_25C7AB878), (swift_dynamicCast() & 1) == 0))
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    return sub_25C79C9E8(&v45, &qword_27FC15108, &unk_25C7AB860);
  }

  if (!*(&v46 + 1))
  {
    return sub_25C79C9E8(&v45, &qword_27FC15108, &unk_25C7AB860);
  }

  sub_25C79D390(&v45, v51);
  v3 = [v1 info];
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = v3;
  v5 = [v3 objectForSetting_];

  if (v5)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_16;
  }

  sub_25C7A1E50(0, &qword_27FC15188, 0x277CCAE60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  v7 = v49[0];
  [v49[0] UIEdgeInsetsValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v1 info];
  if (!v16)
  {
LABEL_15:
    v45 = 0u;
    v46 = 0u;
LABEL_16:
    sub_25C79C9E8(&v45, &qword_27FC15180, &qword_25C7AB880);
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  v17 = v16;
  v18 = [v16 objectForSetting_];

  if (v18)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_16;
  }

  sub_25C7A1E50(0, &qword_27FC15190, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  v19 = v49[0];
  v20 = [v49[0] BOOLValue];

  v21 = [v1 info];
  if (!v21)
  {
    v45 = 0u;
    v46 = 0u;
LABEL_30:
    sub_25C79C9E8(&v45, &qword_27FC15180, &qword_25C7AB880);
    v24 = 0;
    goto LABEL_31;
  }

  v22 = v21;
  v23 = [v21 objectForSetting_];

  if (v23)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_30;
  }

  sub_25C7A1E50(0, &qword_27FC151A0, 0x277CF0B70);
  if (swift_dynamicCast())
  {
    v24 = v49[0];
  }

  else
  {
    v24 = 0;
  }

LABEL_31:
  v25 = [v1 info];
  if (!v25)
  {
    v45 = 0u;
    v46 = 0u;
LABEL_39:
    sub_25C79C9E8(&v45, &qword_27FC15180, &qword_25C7AB880);
    goto LABEL_40;
  }

  v26 = v25;
  v27 = [v25 objectForSetting_];

  if (v27)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_39;
  }

  if (swift_dynamicCast())
  {
    v28 = v49[0];
    goto LABEL_41;
  }

LABEL_40:
  v28 = 0;
LABEL_41:
  v29 = [v1 info];
  if (!v29)
  {
    v45 = 0u;
    v46 = 0u;
LABEL_50:
    sub_25C79C9E8(&v45, &qword_27FC15180, &qword_25C7AB880);
    v32 = 0;
    goto LABEL_51;
  }

  v30 = v29;
  v31 = [v29 objectForSetting_];

  if (v31)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v49 = 0u;
    v50 = 0u;
  }

  v45 = *v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_50;
  }

  sub_25C7A1E50(0, &qword_27FC15198, 0x277CF05B8);
  if (swift_dynamicCast())
  {
    v32 = v49[0];
  }

  else
  {
    v32 = 0;
  }

LABEL_51:
  v33 = __swift_project_boxed_opaque_existential_1Tm(v51, v51[3]);
  v34 = *v33;
  result = [*v33 view];
  if (result)
  {
    v35 = result;
    v36 = [result window];

    if (v36)
    {
      v37 = [v36 windowScene];

      if (v37)
      {
        if (v32)
        {
          [v37 _synchronizeDrawingWithFence_];
        }
      }
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    *(v38 + 24) = v9;
    *(v38 + 32) = v11;
    *(v38 + 40) = v13;
    *(v38 + 48) = v15;
    *(v38 + 56) = v20;
    *(v38 + 64) = v24;
    v39 = objc_opt_self();
    if (v24)
    {
      v47 = sub_25C7A08DC;
      v48 = v38;
      *&v45 = MEMORY[0x277D85DD0];
      *(&v45 + 1) = 1107296256;
      *&v46 = sub_25C79E418;
      *(&v46 + 1) = &block_descriptor_3;
      v40 = _Block_copy(&v45);
      v41 = v24;
      v42 = v34;

      [v39 _animateWithAnimationSettings_animations_completion_];

      _Block_release(v40);
    }

    else
    {
      v47 = sub_25C7A08DC;
      v48 = v38;
      *&v45 = MEMORY[0x277D85DD0];
      *(&v45 + 1) = 1107296256;
      *&v46 = sub_25C79E418;
      *(&v46 + 1) = &block_descriptor;
      v43 = _Block_copy(&v45);
      v44 = v34;

      [v39 animateWithDuration:v43 animations:*&v28];

      _Block_release(v43);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C79D390(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id MathNotesUpdateSafeAreaInsetsAction.__allocating_init(safeAreaInsets:isModeButtonHidden:animationSettings:animationDuration:animationFenceHandle:)(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  v8 = v7;
  v15 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  sub_25C7A1E50(0, &qword_27FC15190, 0x277CCABB0);
  v16 = sub_25C7AABDC();
  [v15 setObject:v16 forSetting:0];

  v17 = [objc_opt_self() valueWithUIEdgeInsets_];
  [v15 setObject:v17 forSetting:1];

  [v15 setObject:a6 forSetting:2];
  v18 = sub_25C7AAB7C();
  [v15 setObject:v18 forSetting:3];

  if (a7)
  {
    [v15 setObject:a7 forSetting:4];
  }

  v19 = [objc_allocWithZone(v8) initWithInfo:v15 responder:0];

  return v19;
}

void sub_25C79D5B4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id MathNotesUpdateCalculatorModeAction.__allocating_init(mode:)()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  sub_25C7A1E50(0, &qword_27FC15190, 0x277CCABB0);
  v3 = sub_25C7AABEC();
  [v2 setObject:v3 forSetting:0];

  v4 = [objc_allocWithZone(v1) initWithInfo:v2 responder:0];
  return v4;
}

uint64_t MathNotesUpdateCalculatorModeAction.performAction(forSceneController:)(void *a1)
{
  v2 = [a1 delegate];
  if (v2 && (v20[0] = v2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15170, &qword_25C7AB870), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15178, &qword_25C7AB878), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v18 + 1))
    {
      sub_25C79D390(&v17, v20);
      v3 = [v1 info];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 objectForSetting_];

        if (v5)
        {
          sub_25C7AAC1C();
          swift_unknownObjectRelease();
        }

        else
        {
          *v14 = 0u;
          v15 = 0u;
        }

        v17 = *v14;
        v18 = v15;
        if (*(&v15 + 1))
        {
          sub_25C7A1E50(0, &qword_27FC15190, 0x277CCABB0);
          if ((swift_dynamicCast() & 1) == 0)
          {
            return __swift_destroy_boxed_opaque_existential_1Tm(v20);
          }

          v7 = [v14[0] integerValue];

          if (v7 >= 3)
          {
            return __swift_destroy_boxed_opaque_existential_1Tm(v20);
          }

          v8 = *__swift_project_boxed_opaque_existential_1Tm(v20, v20[3]);
          v9 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
          swift_beginAccess();
          sub_25C79CB08(v8 + v9, &v17, &qword_27FC151B0, &qword_25C7AB888);
          if (*(&v18 + 1))
          {
            sub_25C7A091C(&v17, v14);
            sub_25C79C9E8(&v17, &qword_27FC151B0, &qword_25C7AB888);
            v10 = *(&v15 + 1);
            v11 = v16;
            __swift_project_boxed_opaque_existential_1Tm(v14, *(&v15 + 1));
            (*(v11 + 24))(v8, v7, v10, v11);
            __swift_destroy_boxed_opaque_existential_1Tm(v14);
            return __swift_destroy_boxed_opaque_existential_1Tm(v20);
          }

          v12 = &qword_27FC151B0;
          v13 = &qword_25C7AB888;
LABEL_18:
          sub_25C79C9E8(&v17, v12, v13);
          return __swift_destroy_boxed_opaque_existential_1Tm(v20);
        }
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      v12 = &qword_27FC15180;
      v13 = &qword_25C7AB880;
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
  }

  return sub_25C79C9E8(&v17, &qword_27FC15108, &unk_25C7AB860);
}

unint64_t MathNotesCalculatorMode.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id sub_25C79DAA8(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithInfo:a1 responder:a2];

  return v5;
}

id sub_25C79DB04(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithInfo_responder_, a1, a2);

  return v5;
}

id sub_25C79DB6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, sel_initWithInfo_responder_, a3, a4);
}

id sub_25C79DBC8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_25C79DC00(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_25C79DC44(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithXPCDictionary_];
  swift_unknownObjectRelease();
  return v2;
}

id sub_25C79DC90(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithXPCDictionary_, a1);
  swift_unknownObjectRelease();
  if (v3)
  {
  }

  return v3;
}

id sub_25C79DD00(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v4 = objc_msgSendSuper2(&v6, sel_initWithXPCDictionary_, a3);
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

id MathNotesUpdateCalculatorModeAction.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_25C79DDBC(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_25C79DE28(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_25C79DEAC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_25C79D5B4;
    v14[3] = a5;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v7) initWithInfo:a1 timeout:a2 forResponseOnQueue:v11 withHandler:a6];
  _Block_release(v11);

  return v12;
}

id sub_25C79DF98(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = v6;
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v18[4] = a3;
    v18[5] = a4;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_25C79D5B4;
    v18[3] = a5;
    v15 = _Block_copy(v18);
  }

  else
  {
    v15 = 0;
  }

  v19.receiver = v8;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, sel_initWithInfo_timeout_forResponseOnQueue_withHandler_, a1, a2, v15, a6);
  sub_25C7A090C(a3);

  _Block_release(v15);
  return v16;
}

id sub_25C79E168()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25C79E1B4()
{
  v1 = *v0;
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](v1);
  return sub_25C7AAD4C();
}

uint64_t sub_25C79E228()
{
  v1 = *v0;
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](v1);
  return sub_25C7AAD4C();
}

uint64_t *sub_25C79E26C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_25C79E294()
{
  v0 = ICNotesAppBundleIdentifier();
  if (!v0)
  {
    sub_25C7AAABC();
    v0 = sub_25C7AAAAC();
  }

  v1 = [objc_opt_self() applicationWithBundleIdentifier_];

  qword_27FC15100 = v1;
}

void sub_25C79E370()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_27FC15050 != -1)
    {
      swift_once();
    }

    sub_25C79E538(qword_27FC15100);
  }
}

uint64_t sub_25C79E418(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_25C79E538(void *a1)
{
  if ([objc_opt_self() isMainThread])
  {
    if ([a1 isLocked])
    {

      sub_25C79F3B4(v3);
    }

    else
    {
      v4 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
      [*(v1 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView) removeFromSuperview];
      v5 = *(v1 + v4);
      *(v1 + v4) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_25C79E5D8()
{
  v1 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController;
  v2 = *(v0 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController);
  }

  else
  {
    v4 = type metadata accessor for MathNotesHostingViewController.AppProtectionController();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id MathNotesHostingViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MathNotesHostingViewController.init()()
{
  *&v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController____lazy_storage___appProtectionController] = 0;
  *&v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_sceneHostingController] = 0;
  *&v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView] = 0;
  v1 = &v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate];
  v2 = type metadata accessor for MathNotesHostingViewController();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_25C79E85C(uint64_t a1, uint64_t *a2)
{
  sub_25C79CB08(a1, v6, &qword_27FC151B0, &qword_25C7AB888);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  sub_25C7A09A4(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_25C79E8D0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  return sub_25C79CB08(v1 + v3, a1, &qword_27FC151B0, &qword_25C7AB888);
}

uint64_t sub_25C79E938(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  sub_25C7A09A4(a1, v1 + v3);
  return swift_endAccess();
}

void sub_25C79EAC0(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151D0, &qword_25C7AB890);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for MathNotesHostingViewController();
  v23.receiver = v1;
  v23.super_class = v7;
  objc_msgSendSuper2(&v23, sel_viewIsAppearing_, a1 & 1);
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 window];

    if (v10)
    {
      v11 = [v10 windowScene];

      if (v11)
      {
        v12 = objc_opt_self();
        v13 = [v12 defaultCenter];
        [v13 addObserver:v1 selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x277D76E58] object:v11];

        v14 = [v12 defaultCenter];
        [v14 addObserver:v1 selector:sel_sceneWillEnterForeground_ name:*MEMORY[0x277D76E80] object:v11];
      }
    }

    if (qword_27FC15050 != -1)
    {
      swift_once();
    }

    if ([qword_27FC15100 isLocked])
    {
      sub_25C79F3B4(v15);
      v16 = sub_25C7AAB6C();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      sub_25C7AAB4C();
      v17 = v1;
      v18 = sub_25C7AAB3C();
      v19 = swift_allocObject();
      v20 = MEMORY[0x277D85700];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v17;
      sub_25C79FD2C(0, 0, v6, &unk_25C7AB8A0, v19);
    }

    else
    {
      v21 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
      [*&v1[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView] removeFromSuperview];
      v22 = *&v1[v21];
      *&v1[v21] = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25C79EDE0(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MathNotesHostingViewController();
  objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1 & 1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (v5)
    {
      v6 = [v5 windowScene];

      if (v6)
      {
        v7 = objc_opt_self();
        v8 = [v7 defaultCenter];
        [v8 removeObserver:v1 name:*MEMORY[0x277D76E58] object:v6];

        v9 = [v7 defaultCenter];
        [v9 removeObserver:v1 name:*MEMORY[0x277D76E80] object:v6];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_25C79EF78()
{
  if (qword_27FC15050 != -1)
  {
    swift_once();
  }

  if ([qword_27FC15100 isLocked])
  {

    sub_25C79F3B4(v1);
  }

  else
  {
    v2 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
    [*(v0 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView) removeFromSuperview];
    v3 = *(v0 + v2);
    *(v0 + v2) = 0;
  }
}

void sub_25C79F238(char a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151D0, &qword_25C7AB890);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17 - v8;
  if (a1)
  {
    sub_25C79F3B4(v7);
    if (a2)
    {
      v10 = sub_25C7AAB6C();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
      sub_25C7AAB4C();
      v11 = v2;
      v12 = sub_25C7AAB3C();
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D85700];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v11;
      sub_25C79FD2C(0, 0, v9, &unk_25C7ABB38, v13);
    }
  }

  else
  {
    v15 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
    [*&v2[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView] removeFromSuperview];
    v16 = *&v2[v15];
    *&v2[v15] = 0;
  }
}

void sub_25C79F3B4(double a1)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
  v4 = *&v1[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView];
  gotLoadHelper_x21__OBJC_CLASS___APBaseShieldView(a1);
  if (v4)
  {
    v5 = *(v2 + 3792);
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {

      [v6 resetShield];
      return;
    }
  }

  if (qword_27FC15050 != -1)
  {
    swift_once();
  }

  v7 = [objc_allocWithZone(*(v2 + 3792)) initWithApplication_];
  v8 = sub_25C79E5D8();
  [v7 setDelegate_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  [v9 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152E8, &qword_25C7ABB30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25C7AB850;
  v12 = [v7 leadingAnchor];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [v13 leadingAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v11 + 32) = v16;
  v17 = [v7 trailingAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  v20 = [v18 trailingAnchor];

  v21 = [v17 constraintEqualToAnchor_];
  *(v11 + 40) = v21;
  v22 = [v7 topAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v11 + 48) = v26;
  v27 = [v7 bottomAnchor];
  v28 = [v1 view];
  if (!v28)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = [v29 bottomAnchor];

  v32 = [v27 constraintEqualToAnchor_];
  *(v11 + 56) = v32;
  sub_25C7A1E50(0, &unk_27FC152F0, 0x277CCAAD0);
  v33 = sub_25C7AAAEC();

  [v30 activateConstraints_];

  v34 = *&v1[v3];
  *&v1[v3] = v7;
}

uint64_t sub_25C79F7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_25C7AAB4C();
  v4[19] = sub_25C7AAB3C();
  v6 = sub_25C7AAB2C();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_25C79F840, v6, v5);
}

uint64_t sub_25C79F840()
{
  v1 = [objc_opt_self() sharedGuard];
  v0[22] = v1;
  if (qword_27FC15050 != -1)
  {
    swift_once();
  }

  v2 = qword_27FC15100;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_25C79F9C0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152D8, &qword_25C7ABB20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25C79FC60;
  v0[13] = &block_descriptor_85;
  v0[14] = v3;
  [v1 authenticateForShieldDismissalForSubject:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25C79F9C0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 168);
  v5 = *(v1 + 160);
  if (v3)
  {
    v6 = sub_25C79FB7C;
  }

  else
  {
    v6 = sub_25C79FAF0;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_25C79FAF0()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];

  v4 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView;
  [*(v3 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView) removeFromSuperview];
  v5 = *(v3 + v4);
  *(v3 + v4) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_25C79FB7C()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[18];
  v3 = v0[19];

  swift_willThrow();

  v6 = *(v4 + OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_shieldView);
  if (v6)
  {
    gotLoadHelper_x8__OBJC_CLASS___APBaseShieldView(v5);
    v8 = *(v7 + 3792);
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    v10 = v0[23];
    if (v9)
    {
      v11 = v9;
      v12 = v6;
      [v11 setShieldStyle_];

      goto LABEL_7;
    }

    v13 = v0[23];
  }

  else
  {
    v13 = v0[23];
  }

LABEL_7:
  v14 = v0[1];

  return v14();
}

uint64_t sub_25C79FC60(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152E0, &qword_25C7ABB28);
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

uint64_t sub_25C79FD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151D0, &qword_25C7AB890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_25C79CB08(a3, v27 - v11, &qword_27FC151D0, &qword_25C7AB890);
  v13 = sub_25C7AAB6C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25C79C9E8(v12, &qword_27FC151D0, &qword_25C7AB890);
  }

  else
  {
    sub_25C7AAB5C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25C7AAB2C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25C7AAACC() + 32;
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

      sub_25C79C9E8(a3, &qword_27FC151D0, &qword_25C7AB890);

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

  sub_25C79C9E8(a3, &qword_27FC151D0, &qword_25C7AB890);
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

void sub_25C7A002C()
{
  v1 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_sceneHostingController;
  if (*&v0[OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_sceneHostingController])
  {
    return;
  }

  v2 = ICNotesAppBundleIdentifier();
  if (!v2)
  {
    sub_25C7AAABC();
    v2 = sub_25C7AAAAC();
  }

  v3 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];

  v4 = [objc_allocWithZone(type metadata accessor for NKNotesSceneSpecification()) init];
  v5 = [objc_allocWithZone(MEMORY[0x277D761E0]) initWithProcessIdentity:v3 sceneSpecification:v4];
  v6 = [objc_allocWithZone(MEMORY[0x277D761F0]) init];
  [v5 setActivationController_];

  [v5 setDelegate_];
  v7 = [v5 sceneViewController];
  [v0 addChildViewController_];

  v8 = [v5 sceneView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v9 = [v5 sceneViewController];
  [v9 loadViewIfNeeded];

  v10 = [v0 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v46 = v4;
  v47 = v3;
  v12 = [v5 sceneView];
  [v11 insertSubview:v12 atIndex:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152E8, &qword_25C7ABB30);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_25C7AB850;
  v14 = [v5 sceneView];
  v15 = [v14 leadingAnchor];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v16 leadingAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v13 + 32) = v19;
  v20 = [v5 sceneView];
  v21 = [v20 trailingAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v44 = v1;
  v24 = [v22 trailingAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v13 + 40) = v25;
  v26 = [v5 sceneView];
  v27 = [v26 bottomAnchor];

  v28 = [v0 view];
  if (!v28)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = v28;
  v30 = [v28 bottomAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v13 + 48) = v31;
  v32 = [v5 sceneView];
  v33 = [v32 topAnchor];

  v34 = [v0 view];
  if (!v34)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 topAnchor];

  v38 = [v33 constraintEqualToAnchor_];
  *(v13 + 56) = v38;
  sub_25C7A1E50(0, &unk_27FC152F0, 0x277CCAAD0);
  v39 = sub_25C7AAAEC();

  [v36 activateConstraints_];

  v40 = [v5 sceneViewController];
  [v40 didMoveToParentViewController_];

  v41 = *&v44[v0];
  *&v44[v0] = v5;
  v42 = v5;

  v43 = [v42 sceneView];
  v45 = [objc_opt_self() systemOrangeColor];
  [v43 setTintColor_];
}

id MathNotesHostingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_25C7AAAAC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_25C7A0770(void *a1, char a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v14 = OBJC_IVAR____TtC15NotesUIServices30MathNotesHostingViewController_delegate;
  swift_beginAccess();
  sub_25C79CB08(a1 + v14, v22, &qword_27FC151B0, &qword_25C7AB888);
  if (v23)
  {
    sub_25C7A091C(v22, v19);
    sub_25C79C9E8(v22, &qword_27FC151B0, &qword_25C7AB888);
    v15 = v20;
    v16 = v21;
    __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    (*(v16 + 16))(a1, a2 & 1, a3, v15, v16, a4, a5, a6, a7);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_25C79C9E8(v22, &qword_27FC151B0, &qword_25C7AB888);
  }

  v17 = [a1 view];
  if (v17)
  {
    v18 = v17;
    [v17 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C7A090C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25C7A091C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25C7A09A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151B0, &qword_25C7AB888);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7A0A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25C7A1F00;

  return sub_25C79F7A8(a1, v4, v5, v6);
}

uint64_t UIScene.hostApplicationIdentifier.getter()
{
  v1 = [v0 _FBSScene];
  v2 = [v1 hostHandle];

  if (!v2)
  {
    v9 = 0u;
    v10 = 0u;
LABEL_11:
    sub_25C79C9E8(&v9, &qword_27FC15180, &qword_25C7AB880);
    return 0;
  }

  v3 = [v2 auditToken];

  v4 = sub_25C7AAAAC();
  v5 = [v3 valueForEntitlement_];

  if (v5)
  {
    sub_25C7AAC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id sub_25C7A0DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_25C7A0DD8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25C7A0ED0;

  return v7(a1);
}

uint64_t sub_25C7A0ED0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25C7A0FC8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x25F88DD00](v5, a3);
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
      v13 = sub_25C7AAC7C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_25C7A10F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC151D0, &qword_25C7AB890);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_25C7AAB6C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_25C7AAB4C();
    v7 = v5;
    v8 = sub_25C7AAB3C();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    sub_25C79FD2C(0, 0, v3, &unk_25C7ABB00, v9);
  }
}

uint64_t sub_25C7A1230(unint64_t a1)
{
  v2 = sub_25C7AAA6C();
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25C7AAA8C();
  v27 = *(v29 - 8);
  v5 = *(v27 + 64);
  v6 = MEMORY[0x28223BE20](v29);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_24:
    v6 = sub_25C7AAC7C();
    v9 = v6;
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = 0;
    do
    {
      v12 = v11;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x25F88DD00](v12, a1);
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v13 = *(a1 + 8 * v12 + 32);
        }

        v14 = v13;
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        ++v12;
        if (v11 == v9)
        {
          goto LABEL_17;
        }
      }

      MEMORY[0x25F88DB80]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25C7AAB0C();
      }

      v6 = sub_25C7AAB1C();
      v10 = aBlock[0];
    }

    while (v11 != v9);
  }

LABEL_17:
  if (qword_27FC15050 != -1)
  {
    v6 = swift_once();
  }

  aBlock[0] = qword_27FC15100;
  MEMORY[0x28223BE20](v6);
  *(&v25 - 2) = aBlock;
  v16 = sub_25C7A0FC8(sub_25C7A18A8, (&v25 - 4), v10);

  if (v16)
  {
    sub_25C7A1E50(0, &qword_27FC152B8, 0x277D85C78);
    v18 = sub_25C7AABAC();
    v19 = swift_allocObject();
    v20 = v26;
    *(v19 + 16) = v26;
    aBlock[4] = sub_25C7A1900;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25C79E418;
    aBlock[3] = &block_descriptor_60;
    v21 = _Block_copy(aBlock);
    v22 = v20;

    sub_25C7AAA7C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_25C7A1908();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC152C8, &qword_25C7ABAF8);
    sub_25C7A1960();
    v23 = v28;
    v24 = v31;
    sub_25C7AAC2C();
    MEMORY[0x25F88DC60](0, v8, v23, v21);
    _Block_release(v21);

    (*(v30 + 8))(v23, v24);
    return (*(v27 + 8))(v8, v29);
  }

  return result;
}

unint64_t sub_25C7A16A0()
{
  result = qword_27FC151D8;
  if (!qword_27FC151D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC151D8);
  }

  return result;
}

uint64_t sub_25C7A18A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_25C7AAB8C();
  return sub_25C7AABFC() & 1;
}

unint64_t sub_25C7A1908()
{
  result = qword_27FC152C0;
  if (!qword_27FC152C0)
  {
    sub_25C7AAA6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC152C0);
  }

  return result;
}

unint64_t sub_25C7A1960()
{
  result = qword_27FC152D0;
  if (!qword_27FC152D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC152C8, &qword_25C7ABAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC152D0);
  }

  return result;
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

uint64_t sub_25C7A1A0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25C7A1AC0;

  return sub_25C79F7A8(a1, v4, v5, v6);
}

uint64_t sub_25C7A1AC0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25C7A1BC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25C7A1F00;

  return sub_25C7A0DD8(a1, v5);
}

uint64_t sub_25C7A1C80(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25C7A1AC0;

  return sub_25C7A0DD8(a1, v5);
}

uint64_t sub_25C7A1D48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25C7A1E50(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_17Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id NotesIndexSharedModel.__allocating_init(date:showCollaboratorBadge:notesFolder:attachmentURL:hasUnreadChanges:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v7);
  v14 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  v15 = sub_25C7AA52C();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  v18 = sub_25C7AA4FC();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  swift_beginAccess();
  sub_25C79C980(a1, &v13[v14], &qword_27FC15078, &unk_25C7ABBB0);
  swift_endAccess();
  v13[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge] = a2;
  swift_beginAccess();
  v19 = v16[1];
  *v16 = a3;
  v16[1] = a4;

  swift_beginAccess();
  sub_25C79C980(a5, &v13[v17], &qword_27FC15070, &qword_25C7AB768);
  swift_endAccess();
  v13[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges] = a6;
  v23.receiver = v13;
  v23.super_class = v7;
  v20 = objc_msgSendSuper2(&v23, sel_init);
  sub_25C79C9E8(a5, &qword_27FC15070, &qword_25C7AB768);
  sub_25C79C9E8(a1, &qword_27FC15078, &unk_25C7ABBB0);
  return v20;
}

uint64_t NotesSharedIndexedSearchView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  v6 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15080, &qword_25C7ABC50);
  swift_storeEnumTagMultiPayload();
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  result = swift_storeEnumTagMultiPayload();
  *(a3 + v6[9]) = 0x404A000000000000;
  *(a3 + v6[10]) = 0x4020000000000000;
  *(a3 + v6[11]) = 0x402C000000000000;
  *(a3 + v6[12]) = 0x402C000000000000;
  v10 = (a3 + v6[13]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (a3 + v6[14]);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (a3 + v6[8]);
  *v12 = a1;
  v12[1] = a2;
  return result;
}

uint64_t sub_25C7A2324()
{
  v1 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25C7A2368(char a1)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25C7A2418(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_25C7A2484()
{
  v1 = (v0 + OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_25C7A24DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_25C7A259C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v18 - v13;
  sub_25C79CB08(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_25C7A81C0(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_25C7A2690@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_25C79CB08(v4 + v8, a4, a2, a3);
}

uint64_t sub_25C7A2718(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_25C7A81C0(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_25C7A27EC()
{
  v1 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_25C7A2830(char a1)
{
  v3 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id NotesIndexSharedModel.init(date:showCollaboratorBadge:notesFolder:attachmentURL:hasUnreadChanges:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  v13 = sub_25C7AA52C();
  (*(*(v13 - 8) + 56))(&v6[v12], 1, 1, v13);
  v14 = &v6[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  v16 = sub_25C7AA4FC();
  (*(*(v16 - 8) + 56))(&v6[v15], 1, 1, v16);
  swift_beginAccess();
  sub_25C79C980(a1, &v6[v12], &qword_27FC15078, &unk_25C7ABBB0);
  swift_endAccess();
  v6[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge] = a2;
  swift_beginAccess();
  v17 = v14[1];
  *v14 = a3;
  v14[1] = a4;

  swift_beginAccess();
  sub_25C79C980(a5, &v6[v15], &qword_27FC15070, &qword_25C7AB768);
  swift_endAccess();
  v6[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges] = a6;
  v21.receiver = v6;
  v21.super_class = type metadata accessor for NotesIndexSharedModel(0);
  v18 = objc_msgSendSuper2(&v21, sel_init);
  sub_25C79C9E8(a5, &qword_27FC15070, &qword_25C7AB768);
  sub_25C79C9E8(a1, &qword_27FC15078, &unk_25C7ABBB0);
  return v18;
}

id NotesIndexSharedModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_25C7A2B84()
{
  v1 = *v0;
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](v1);
  return sub_25C7AAD4C();
}

uint64_t sub_25C7A2BF8()
{
  v1 = *v0;
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](v1);
  return sub_25C7AAD4C();
}

unint64_t sub_25C7A2C3C()
{
  v1 = *v0;
  v2 = 1702125924;
  v3 = 0x6C6F467365746F6ELL;
  v4 = 0x656D686361747461;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25C7A2CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25C7A9978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25C7A2D2C(uint64_t a1)
{
  v2 = sub_25C7A8280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25C7A2D68(uint64_t a1)
{
  v2 = sub_25C7A8280();

  return MEMORY[0x2821FE720](a1, v2);
}

id NotesIndexSharedModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesIndexSharedModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25C7A2E50(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15300, &qword_25C7ABC90);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C7A8280();
  sub_25C7AAD6C();
  v18 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  swift_beginAccess();
  sub_25C79CB08(v2 + v18, v11, &qword_27FC15078, &unk_25C7ABBB0);
  v33 = 0;
  sub_25C7AA52C();
  sub_25C7A82D4(&qword_28119B5C0, MEMORY[0x277CC9578]);
  v19 = v29;
  sub_25C7AACEC();
  sub_25C79C9E8(v11, &qword_27FC15078, &unk_25C7ABBB0);
  if (!v19)
  {
    v20 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge;
    swift_beginAccess();
    v21 = *(v2 + v20);
    v32 = 1;
    sub_25C7AACFC();
    v23 = (v2 + OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder);
    swift_beginAccess();
    v24 = *v23;
    v25 = v23[1];
    v31 = 2;

    sub_25C7AACDC();

    v26 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
    swift_beginAccess();
    sub_25C79CB08(v2 + v26, v7, &qword_27FC15070, &qword_25C7AB768);
    v30 = 3;
    sub_25C7AA4FC();
    sub_25C7A82D4(&qword_28119B5C8, MEMORY[0x277CC9260]);
    sub_25C7AACEC();
    sub_25C79C9E8(v7, &qword_27FC15070, &qword_25C7AB768);
    v27 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges;
    swift_beginAccess();
    v28 = *(v2 + v27);
    v34 = 4;
    sub_25C7AACFC();
  }

  return (*(v13 + 8))(v16, v12);
}

char *NotesIndexSharedModel.init(from:)(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15308, &qword_25C7ABC98);
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_date;
  v17 = sub_25C7AA52C();
  v18 = *(*(v17 - 8) + 56);
  v57 = v16;
  v18(&v2[v16], 1, 1, v17);
  v19 = &v2[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_notesFolder];
  *v19 = 0;
  *(v19 + 1) = 0;
  v51 = v19;
  v20 = OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_attachmentURL;
  v21 = sub_25C7AA4FC();
  v22 = *(*(v21 - 8) + 56);
  v52 = v20;
  v22(&v2[v20], 1, 1, v21);
  v23 = a1[3];
  v24 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v23);
  sub_25C7A8280();
  v49 = v15;
  v25 = v50;
  sub_25C7AAD5C();
  if (v25)
  {
    v28 = v57;
    v30 = v51;
    v29 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    sub_25C79C9E8(&v2[v28], &qword_27FC15078, &unk_25C7ABBB0);
    v31 = v30[1];

    sub_25C79C9E8(&v2[v29], &qword_27FC15070, &qword_25C7AB768);
    type metadata accessor for NotesIndexSharedModel(0);
    v32 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v33 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v50 = v7;
    v26 = v47;
    v56 = 0;
    sub_25C7A82D4(&qword_28119B550, MEMORY[0x277CC9578]);
    v27 = v48;
    sub_25C7AACAC();
    v35 = v57;
    swift_beginAccess();
    sub_25C7A81C0(v11, &v2[v35], &qword_27FC15078, &unk_25C7ABBB0);
    swift_endAccess();
    v56 = 1;
    v36 = v26;
    v2[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_showCollaboratorBadge] = sub_25C7AACBC() & 1;
    v56 = 2;
    v37 = sub_25C7AAC9C();
    v39 = v51;
    v38 = v52;
    v40 = v37;
    v42 = v41;
    swift_beginAccess();
    v43 = v39[1];
    *v39 = v40;
    v39[1] = v42;

    v55 = 3;
    sub_25C7A82D4(&qword_28119B558, MEMORY[0x277CC9260]);
    v44 = v50;
    sub_25C7AACAC();
    swift_beginAccess();
    sub_25C7A81C0(v44, &v2[v38], &qword_27FC15070, &qword_25C7AB768);
    swift_endAccess();
    v55 = 4;
    v2[OBJC_IVAR____TtC15NotesUIServices21NotesIndexSharedModel_hasUnreadChanges] = sub_25C7AACBC() & 1;
    v45 = type metadata accessor for NotesIndexSharedModel(0);
    v54.receiver = v2;
    v54.super_class = v45;
    v2 = objc_msgSendSuper2(&v54, sel_init);
    (*(v36 + 8))(v49, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  return v2;
}

uint64_t sub_25C7A38FC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_25C79CB08(v4 + v8, a4, a2, a3);
}

char *sub_25C7A3968@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for NotesIndexSharedModel(0));
  result = NotesIndexSharedModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NotesYellowHeaderView.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25C7AA94C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CE0EE0];
  v8 = *(v3 + 104);
  v8(v6, v7, v2);
  v22 = sub_25C7AA9AC();
  v8(v6, v7, v2);
  v21 = sub_25C7AA9AC();
  v9 = [objc_opt_self() quaternaryLabelColor];
  v10 = sub_25C7AA93C();
  v11 = _UISolariumEnabled();
  v12 = _UISolariumEnabled();
  if (_UISolariumEnabled())
  {
    v23 = sub_25C7AA95C();
    sub_25C7A831C();
    v13 = sub_25C7AA9CC();
  }

  else
  {
    v8(v6, v7, v2);
    v13 = sub_25C7AA9AC();
  }

  v14 = v13;
  if (_UISolariumEnabled())
  {
    v23 = sub_25C7AA95C();
    sub_25C7A831C();
    result = sub_25C7AA9CC();
    v16 = result;
  }

  else
  {
    v8(v6, v7, v2);
    sub_25C7AA9AC();
    v16 = sub_25C7AA97C();
  }

  v17 = 0.0;
  if (v12)
  {
    v17 = 2.0;
  }

  v18 = 4.0;
  v19 = v21;
  *a1 = v22;
  *(a1 + 8) = v19;
  *(a1 + 16) = v10;
  if (v11)
  {
    v18 = 5.0;
  }

  *(a1 + 24) = v18;
  *(a1 + 32) = v17;
  *(a1 + 40) = v14;
  *(a1 + 48) = v16;
  return result;
}

uint64_t NotesYellowHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_25C7AA79C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15318, &qword_25C7ABCA0);
  return sub_25C7A3D00(v6, a1 + *(v4 + 44));
}

uint64_t sub_25C7A3D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154D8, &qword_25C7AC3D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v21 = *a1;
  v22 = v11;
  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  sub_25C7A3F10(&v19 - v9);
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = *(a1 + 48);
  sub_25C7AA2DC(a1, &v21);
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v19 = v22;
  v20 = v21;
  v14 = v23;
  v26 = BYTE8(v21);
  v25 = BYTE8(v22);
  sub_25C79CB08(v10, v8, &qword_27FC154D8, &qword_25C7AC3D0);
  v15 = v26;
  LOBYTE(a1) = v25;
  sub_25C79CB08(v8, a2, &qword_27FC154D8, &qword_25C7AC3D0);
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154E0, &qword_25C7AC3D8) + 48);
  *v16 = sub_25C7AA2D4;
  *(v16 + 8) = v12;
  v17 = v19;
  *(v16 + 16) = v20;
  *(v16 + 24) = v15;
  *(v16 + 32) = v17;
  *(v16 + 40) = a1;
  *(v16 + 48) = v14;

  sub_25C79C9E8(v10, &qword_27FC154D8, &qword_25C7AC3D0);

  return sub_25C79C9E8(v8, &qword_27FC154D8, &qword_25C7AC3D0);
}

double sub_25C7A3F10@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v25 = v1[5];
  v26 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154F0, &qword_25C7AC3E8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25C7ABB80;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;

  sub_25C7AAA4C();
  sub_25C7AAA5C();
  MEMORY[0x25F88DAB0](v5);
  sub_25C7AA60C();

  sub_25C7AAA2C();
  sub_25C7AA5EC();
  LOBYTE(v33) = v28;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154F8, &qword_25C7AC3F0) + 36);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15500, &qword_25C7AC3F8) + 36);
  v8 = *MEMORY[0x277CE13B0];
  v9 = sub_25C7AAA3C();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = v27;
  *(v6 + 8) = v28;
  *(v6 + 16) = v29;
  *(v6 + 24) = v30;
  *(v6 + 32) = v31;
  *(v6 + 40) = v32;
  *(v6 + 48) = xmmword_25C7ABB90;
  *(v6 + 64) = v26;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0xBFF0000000000000;

  v10 = sub_25C7AAA1C();
  v12 = v11;
  v13 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15508, &qword_25C7AC400) + 36));
  *v13 = v10;
  v13[1] = v12;
  *a1 = v36;
  *(a1 + 16) = v37;
  *(a1 + 32) = v38;
  *(a1 + 40) = v25;
  *(a1 + 48) = xmmword_25C7ABBA0;
  *(a1 + 64) = 0x3FF0000000000000;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15510, &qword_25C7AC408) + 36)) = 0;
  LOBYTE(v10) = sub_25C7AA7DC();
  sub_25C7AA57C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15518, &qword_25C7AC410) + 36);
  *v22 = v10;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154D8, &qword_25C7AC3D0) + 36));
  *v23 = v33;
  v23[1] = v34;
  result = *&v35;
  v23[2] = v35;
  return result;
}

__n128 sub_25C7A41F4@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_25C7AA88C();
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154E8, &qword_25C7AC3E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25C7ABB80;
  *(v5 + 32) = 0x3F50624DD2F1A9FCLL;
  *(v5 + 40) = *(a1 + 24);
  sub_25C7AA5AC();

  v6 = sub_25C7AAA2C();
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  result = v10;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 80) = v4;
  *(a2 + 88) = 256;
  *(a2 + 96) = v6;
  *(a2 + 104) = v8;
  return result;
}

uint64_t sub_25C7A42F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25C7AA5FC();
  remainder(v4, *(a3 + 24));
  sub_25C7AA86C();
  result = sub_25C7AA5FC();
  v7 = v6 * 0.25;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v7 - 0x2000000000000000) >> 62 == 3)
  {
    sub_25C7AA5FC();
    remainder(v8, 4.0);
    return sub_25C7AA87C();
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_25C7A43F0()
{
  v1 = sub_25C7AA6EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *v0;

    sub_25C7AAB9C();
    v8 = sub_25C7AA7CC();
    sub_25C7AA55C();

    sub_25C7AA6DC();
    swift_getAtKeyPath();
    sub_25C7A9CC0(v9[0], 0);
    (*(v2 + 8))(v5, v1);
    return v9[1];
  }
}

uint64_t sub_25C7A455C()
{
  v1 = sub_25C7AA6EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v8 = *(v0 + 24);
  }

  else
  {
    v9 = *(v0 + 16);

    sub_25C7AAB9C();
    v10 = sub_25C7AA7CC();
    sub_25C7AA55C();

    sub_25C7AA6DC();
    swift_getAtKeyPath();
    sub_25C7A9CCC(v7, v6, 0);
    (*(v2 + 8))(v5, v1);
    return v12;
  }

  return v7;
}

uint64_t sub_25C7A46C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25C7AA6EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for NotesSharedIndexedSearchView(0);
  sub_25C79CB08(v1 + *(v12 + 28), v11, &qword_27FC15088, &qword_25C7AB830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_25C7AA58C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_25C7AAB9C();
    v16 = sub_25C7AA7CC();
    sub_25C7AA55C();

    sub_25C7AA6DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_25C7A48C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = *(v1 + 32);
  v7 = *(v1 + 48);
  *a1 = sub_25C7AA79C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15318, &qword_25C7ABCA0);
  return sub_25C7A3D00(v6, a1 + *(v4 + 44));
}

uint64_t NotesSharedIndexedSearchView.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15320, &qword_25C7ABCA8);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *v10 = KeyPath;
  v10[8] = 0;
  v28 = swift_getKeyPath();
  *(v10 + 2) = v28;
  *(v10 + 3) = 0;
  v10[32] = 0;
  v11 = v7[6];
  *&v10[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15080, &qword_25C7ABC50);
  swift_storeEnumTagMultiPayload();
  v12 = v7[7];
  *&v10[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15088, &qword_25C7AB830);
  swift_storeEnumTagMultiPayload();
  *&v10[v7[9]] = 0x404A000000000000;
  *&v10[v7[10]] = 0x4020000000000000;
  *&v10[v7[11]] = 0x402C000000000000;
  *&v10[v7[12]] = 0x402C000000000000;
  v13 = &v10[v7[13]];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v10[v7[14]];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C7A8370();
  v25 = v6;
  v16 = v30;
  sub_25C7AAD5C();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    sub_25C79C9E8(&v10[v11], &qword_27FC15328, &qword_25C7ABCB0);
    return sub_25C79C9E8(&v10[v12], &qword_27FC15330, &qword_25C7ABCB8);
  }

  else
  {
    type metadata accessor for NotesIndexSharedModel(0);
    sub_25C7A82D4(&qword_28119B620, type metadata accessor for NotesIndexSharedModel);
    v17 = v27;
    v18 = v25;
    sub_25C7AACCC();
    (*(v26 + 8))(v18, v17);
    v20 = v31;
    v21 = sub_25C7A82D4(&qword_28119B618, type metadata accessor for NotesIndexSharedModel);
    v22 = &v10[v7[8]];
    *v22 = v20;
    *(v22 + 1) = v21;
    sub_25C7A83C4(v10, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_25C7A8428(v10);
  }
}

uint64_t sub_25C7A4CC0()
{
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](0);
  return sub_25C7AAD4C();
}

uint64_t sub_25C7A4D2C()
{
  sub_25C7AAD2C();
  MEMORY[0x25F88DDE0](0);
  return sub_25C7AAD4C();
}

uint64_t sub_25C7A4D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25C7AAD1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25C7A4E10(uint64_t a1)
{
  v2 = sub_25C7A8370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25C7A4E4C(uint64_t a1)
{
  v2 = sub_25C7A8370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotesSharedIndexedSearchView.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15338, &qword_25C7ABCC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25C7A8370();
  sub_25C7AAD6C();
  v10 = (v2 + *(type metadata accessor for NotesSharedIndexedSearchView(0) + 32));
  v11 = *v10;
  v12 = v10[1];
  swift_getObjectType();
  v15[1] = v11;
  v13 = *(v12 + 16);
  sub_25C7AAD0C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t NotesSharedIndexedSearchView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25C7AA58C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15340, &qword_25C7ABCC8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  *v12 = sub_25C7AA79C();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15348, &qword_25C7ABCD0);
  sub_25C7A528C(v1, &v12[*(v13 + 44)]);
  v14 = sub_25C7AAA2C();
  v16 = v15;
  v17 = [objc_opt_self() systemBackgroundColor];
  v18 = sub_25C7AA93C();
  v19 = &v12[*(v9 + 44)];
  *v19 = v18;
  v19[1] = v14;
  v19[2] = v16;
  v20 = [objc_opt_self() mainScreen];
  v21 = [v20 traitCollection];

  v22 = [v21 userInterfaceStyle];
  if (v22 == 1)
  {
    v23 = MEMORY[0x277CDF3D0];
  }

  else
  {
    if (v22 != 2)
    {
      sub_25C7A46C0(v7);
      goto LABEL_7;
    }

    v23 = MEMORY[0x277CDF3C0];
  }

  (*(v4 + 104))(v7, *v23, v3);
LABEL_7:
  KeyPath = swift_getKeyPath();
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15350, &qword_25C7ABD08) + 36));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15358, &qword_25C7ABD10);
  (*(v4 + 32))(v25 + *(v26 + 28), v7, v3);
  *v25 = KeyPath;
  return sub_25C7AA26C(v12, a1, &qword_27FC15340, &qword_25C7ABCC8);
}

uint64_t sub_25C7A528C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153B8, &qword_25C7AC268);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  NotesYellowHeaderView.init()(v54);
  v52 = v54[1];
  v53 = v54[0];
  v12 = v54[2];
  v13 = v54[3];
  v14 = v54[4];
  v15 = v54[5];
  v16 = v54[6];
  *v11 = sub_25C7AA70C();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153C0, &qword_25C7AC270);
  sub_25C7A5560(a1, &v11[*(v17 + 44)]);
  v18 = sub_25C7AA7FC();
  v19 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v20 = *(a1 + v19[10]);
  sub_25C7AA57C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153C8, &qword_25C7AC278) + 36)];
  *v29 = v18;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  v30 = sub_25C7AA80C();
  v31 = *(a1 + v19[11]);
  sub_25C7AA57C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153D0, &qword_25C7AC280) + 36)];
  *v40 = v30;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = sub_25C7AA7EC();
  v42 = *(a1 + v19[12]);
  sub_25C7AA57C();
  v43 = &v11[*(v5 + 44)];
  *v43 = v41;
  *(v43 + 1) = v44;
  *(v43 + 2) = v45;
  *(v43 + 3) = v46;
  *(v43 + 4) = v47;
  v43[40] = 0;
  sub_25C79CB08(v11, v9, &qword_27FC153B8, &qword_25C7AC268);
  v48 = v52;
  *a2 = v53;
  a2[1] = v48;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v15;
  a2[6] = v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153D8, &qword_25C7AC288);
  sub_25C79CB08(v9, a2 + *(v49 + 48), &qword_27FC153B8, &qword_25C7AC268);

  sub_25C79C9E8(v11, &qword_27FC153B8, &qword_25C7AC268);
  sub_25C79C9E8(v9, &qword_27FC153B8, &qword_25C7AC268);
}

uint64_t sub_25C7A5560@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153E0, &qword_25C7AC290);
  v4 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v95 = (v82 - v5);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153E8, &qword_25C7AC298);
  v6 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v88 = (v82 - v7);
  v8 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v9 = v8 - 8;
  v82[0] = *(v8 - 8);
  v10 = *(v82[0] + 64);
  MEMORY[0x28223BE20](v8);
  v82[1] = v11;
  v83 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153F0, &qword_25C7AC2A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v86 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = (v82 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15070, &qword_25C7AB768);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v84 = v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v85 = v82 - v22;
  MEMORY[0x28223BE20](v21);
  v92 = v82 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153F8, &qword_25C7AC2A8);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v96 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v82 - v28;
  v30 = *(v9 + 40);
  v97 = a1;
  v31 = (a1 + v30);
  v32 = *v31;
  v33 = v31[1];
  ObjectType = swift_getObjectType();
  v35 = (*(v33 + 32))(ObjectType, v33);
  v98 = v29;
  v91 = ObjectType;
  if (v35)
  {
    v36 = *(v33 + 56);
    v89 = v33;
    v90 = v32;
    if (v36(ObjectType, v33))
    {
      v37 = sub_25C7AA79C();
      LOBYTE(v127) = 0;
      sub_25C7A67AC(&v125);
      v116 = v126[3];
      v117 = v126[4];
      v118 = v126[5];
      v112 = v125;
      v113 = v126[0];
      v114 = v126[1];
      v115 = v126[2];
      v158 = v126[0];
      v157 = v125;
      v159 = v126[1];
      v160 = v126[2];
      v161 = v126[3];
      v162 = v126[4];
      v163 = v126[5];
      sub_25C79CB08(&v112, &v123, &qword_27FC154A0, &qword_25C7AC338);
      sub_25C79C9E8(&v157, &qword_27FC154A0, &qword_25C7AC338);
      *&v99[55] = v115;
      *&v99[71] = v116;
      *&v99[87] = v117;
      *&v99[103] = v118;
      *&v99[7] = v112;
      *&v99[23] = v113;
      *&v99[39] = v114;
      *&v125 = v37;
      *(&v125 + 1) = 0x4010000000000000;
      LOBYTE(v126[0]) = v127;
      *(&v126[3] + 1) = *&v99[48];
      *(&v126[2] + 1) = *&v99[32];
      *(&v126[1] + 1) = *&v99[16];
      *(v126 + 1) = *v99;
      *&v126[7] = *(&v118 + 1);
      *(&v126[6] + 1) = *&v99[96];
      *(&v126[5] + 1) = *&v99[80];
      *(&v126[4] + 1) = *&v99[64];
      sub_25C7AA114(&v125);
    }

    else
    {
      v40 = sub_25C7AA7AC();
      LOBYTE(v127) = 0;
      sub_25C7A698C(&v125);
      v118 = v126[5];
      v119 = v126[6];
      v120 = v126[7];
      v121 = v126[8];
      v114 = v126[1];
      v115 = v126[2];
      v116 = v126[3];
      v117 = v126[4];
      v112 = v125;
      v113 = v126[0];
      v163 = v126[5];
      v164 = v126[6];
      v165 = v126[7];
      v166 = v126[8];
      v159 = v126[1];
      v160 = v126[2];
      v161 = v126[3];
      v162 = v126[4];
      v157 = v125;
      v158 = v126[0];
      sub_25C79CB08(&v112, &v123, &qword_27FC15498, &qword_25C7AC330);
      sub_25C79C9E8(&v157, &qword_27FC15498, &qword_25C7AC330);
      *&v100[55] = v115;
      *&v100[39] = v114;
      *&v100[103] = v118;
      *&v100[119] = v119;
      *&v100[135] = v120;
      *&v100[151] = v121;
      *&v100[71] = v116;
      *&v100[87] = v117;
      *&v100[7] = v112;
      *&v100[23] = v113;
      *(&v126[7] + 1) = *&v100[112];
      *(&v126[8] + 1) = *&v100[128];
      *(&v126[9] + 1) = *&v100[144];
      *(&v126[3] + 1) = *&v100[48];
      *(&v126[4] + 1) = *&v100[64];
      *(&v126[5] + 1) = *&v100[80];
      *(&v126[6] + 1) = *&v100[96];
      *(v126 + 1) = *v100;
      *(&v126[1] + 1) = *&v100[16];
      v125 = v40;
      LOBYTE(v126[0]) = v127;
      *&v126[10] = *(&v121 + 1);
      *(&v126[2] + 1) = *&v100[32];
      sub_25C7AA100(&v125);
    }

    v124[7] = v126[7];
    v124[8] = v126[8];
    v124[9] = v126[9];
    *(&v124[9] + 9) = *(&v126[9] + 9);
    v124[3] = v126[3];
    v124[4] = v126[4];
    v124[5] = v126[5];
    v124[6] = v126[6];
    v123 = v125;
    v124[0] = v126[0];
    v124[1] = v126[1];
    v124[2] = v126[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15410, &qword_25C7AC2C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15418, &qword_25C7AC2C8);
    sub_25C7AA3D4(&qword_28119B4F0, &qword_27FC15410, &qword_25C7AC2C0);
    sub_25C7AA3D4(&qword_28119B4E8, &qword_27FC15418, &qword_25C7AC2C8);
    sub_25C7AA7BC();
    v126[7] = v135;
    v126[8] = v136;
    v126[9] = v137[0];
    *(&v126[9] + 9) = *(v137 + 9);
    v126[3] = v131;
    v126[4] = v132;
    v126[5] = v133;
    v126[6] = v134;
    v125 = v127;
    v126[0] = v128;
    v126[1] = v129;
    v126[2] = v130;
    sub_25C7AA10C(&v125);
    v124[7] = v126[7];
    v124[8] = v126[8];
    v124[9] = v126[9];
    *(&v124[9] + 10) = *(&v126[9] + 10);
    v124[3] = v126[3];
    v124[4] = v126[4];
    v124[5] = v126[5];
    v124[6] = v126[6];
    v123 = v125;
    v124[0] = v126[0];
    v124[1] = v126[1];
    v124[2] = v126[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15400, &qword_25C7AC2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15408, &qword_25C7AC2B8);
    sub_25C7A9BE0();
    sub_25C7AA3D4(&qword_28119B4F8, &qword_27FC15408, &qword_25C7AC2B8);
    sub_25C7AA7BC();
    v33 = v89;
  }

  else
  {
    v38 = sub_25C7AA79C();
    LOBYTE(v125) = 1;
    sub_25C7AAA2C();
    sub_25C7AA5EC();
    LOBYTE(v127) = 1;
    LOBYTE(v112) = v153;
    LOBYTE(v101) = v155;
    v39 = v125;
    v125 = v38;
    LOBYTE(v126[0]) = v39;
    *(&v126[0] + 1) = 0;
    LOBYTE(v126[1]) = 1;
    *(&v126[1] + 1) = v152;
    LOBYTE(v126[2]) = v153;
    *(&v126[2] + 1) = v154;
    LOBYTE(v126[3]) = v155;
    *(&v126[3] + 8) = v156;
    sub_25C7A9BD4(&v125);
    v124[7] = v126[7];
    v124[8] = v126[8];
    v124[9] = v126[9];
    *(&v124[9] + 10) = *(&v126[9] + 10);
    v124[3] = v126[3];
    v124[4] = v126[4];
    v124[5] = v126[5];
    v124[6] = v126[6];
    v123 = v125;
    v124[0] = v126[0];
    v124[1] = v126[1];
    v124[2] = v126[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15400, &qword_25C7AC2B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15408, &qword_25C7AC2B8);
    sub_25C7A9BE0();
    sub_25C7AA3D4(&qword_28119B4F8, &qword_27FC15408, &qword_25C7AC2B8);
    sub_25C7AA7BC();
  }

  v90 = sub_25C7AA7AC();
  LOBYTE(v127) = 0;
  sub_25C7A6B9C(v97, &v125);
  v147 = v126[7];
  v148 = v126[8];
  v143 = v126[3];
  v144 = v126[4];
  v146 = v126[6];
  v145 = v126[5];
  v139 = v125;
  v140 = v126[0];
  v142 = v126[2];
  v141 = v126[1];
  v150[8] = v126[7];
  v150[9] = v126[8];
  v150[4] = v126[3];
  v150[5] = v126[4];
  v150[7] = v126[6];
  v150[6] = v126[5];
  v150[0] = v125;
  v150[1] = v126[0];
  v149 = *&v126[9];
  v151 = *&v126[9];
  v150[3] = v126[2];
  v150[2] = v126[1];
  sub_25C79CB08(&v139, &v123, &qword_27FC15420, &qword_25C7AC2D0);
  sub_25C79C9E8(v150, &qword_27FC15420, &qword_25C7AC2D0);
  *(&v138[7] + 7) = v146;
  *(&v138[8] + 7) = v147;
  *(&v138[9] + 7) = v148;
  *(&v138[3] + 7) = v142;
  *(&v138[4] + 7) = v143;
  *(&v138[5] + 7) = v144;
  *(&v138[6] + 7) = v145;
  *(v138 + 7) = v139;
  *(&v138[1] + 7) = v140;
  *(&v138[10] + 7) = v149;
  *(&v138[2] + 7) = v141;
  LODWORD(v89) = v127;
  v41 = *(v33 + 48);
  v43 = v91;
  v42 = v92;
  v41(v91, v33);
  v44 = sub_25C7AA4FC();
  v45 = (*(*(v44 - 8) + 48))(v42, 1, v44);
  sub_25C79C9E8(v42, &qword_27FC15070, &qword_25C7AB768);
  if (v45 == 1)
  {
    v46 = v95;
    *v95 = 0;
    *(v46 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    sub_25C7AA3D4(&qword_27FC15428, &qword_27FC153E8, &qword_25C7AC298);
    v47 = v98;
    sub_25C7AA7BC();
  }

  else
  {
    v48 = sub_25C7AA79C();
    v49 = v33;
    v50 = v87;
    *v87 = v48;
    *(v50 + 8) = 0;
    *(v50 + 16) = 1;
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15448, &qword_25C7AC2F0) + 44);
    v52 = v43;
    v53 = v85;
    v41(v52, v49);
    v54 = v83;
    sub_25C7A83C4(v97, v83);
    v55 = (*(v82[0] + 80) + 16) & ~*(v82[0] + 80);
    v56 = swift_allocObject();
    sub_25C7A9CDC(v54, v56 + v55);
    sub_25C79CB08(v53, v84, &qword_27FC15070, &qword_25C7AB768);
    v57 = swift_allocObject();
    v57[2] = sub_25C7A9D40;
    v57[3] = v56;
    v57[4] = sub_25C7A7D48;
    v57[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15450, &qword_25C7AC2F8);
    sub_25C7A9DCC();
    sub_25C7AA56C();
    sub_25C79C9E8(v53, &qword_27FC15070, &qword_25C7AB768);
    v58 = v86;
    sub_25C79CB08(v50, v86, &qword_27FC153F0, &qword_25C7AC2A0);
    v59 = v88;
    *v88 = 0;
    *(v59 + 8) = 1;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15490, &qword_25C7AC328);
    sub_25C79CB08(v58, v59 + *(v60 + 48), &qword_27FC153F0, &qword_25C7AC2A0);
    sub_25C79C9E8(v58, &qword_27FC153F0, &qword_25C7AC2A0);
    sub_25C79CB08(v59, v95, &qword_27FC153E8, &qword_25C7AC298);
    swift_storeEnumTagMultiPayload();
    sub_25C7AA3D4(&qword_27FC15428, &qword_27FC153E8, &qword_25C7AC298);
    v47 = v98;
    sub_25C7AA7BC();
    sub_25C79C9E8(v59, &qword_27FC153E8, &qword_25C7AC298);
    sub_25C79C9E8(v50, &qword_27FC153F0, &qword_25C7AC2A0);
  }

  v109 = v165;
  v110 = v166;
  v111[0] = v167[0];
  *(v111 + 10) = *(v167 + 10);
  v105 = v161;
  v106 = v162;
  v107 = v163;
  v108 = v164;
  v101 = v157;
  v102 = v158;
  v103 = v159;
  v104 = v160;
  v61 = v96;
  sub_25C79CB08(v47, v96, &qword_27FC153F8, &qword_25C7AC2A8);
  v62 = v110;
  v120 = v109;
  v121 = v110;
  v63 = v111[0];
  v122[0] = v111[0];
  *(v122 + 10) = *(v111 + 10);
  v64 = v105;
  v65 = v106;
  v116 = v105;
  v117 = v106;
  v66 = v107;
  v67 = v108;
  v118 = v107;
  v119 = v108;
  v68 = v101;
  v69 = v102;
  v112 = v101;
  v113 = v102;
  v70 = v103;
  v71 = v104;
  v114 = v103;
  v115 = v104;
  a2[8] = v109;
  a2[9] = v62;
  a2[10] = v63;
  *(a2 + 170) = *(v111 + 10);
  a2[4] = v64;
  a2[5] = v65;
  a2[6] = v66;
  a2[7] = v67;
  *a2 = v68;
  a2[1] = v69;
  a2[2] = v70;
  a2[3] = v71;
  *(&v124[7] + 1) = v138[7];
  *(&v124[8] + 1) = v138[8];
  *(&v124[9] + 1) = v138[9];
  v124[10] = *(&v138[9] + 15);
  *(&v124[3] + 1) = v138[3];
  *(&v124[4] + 1) = v138[4];
  *(&v124[5] + 1) = v138[5];
  *(&v124[6] + 1) = v138[6];
  *(v124 + 1) = v138[0];
  v72 = v90;
  *&v123 = v90;
  *(&v123 + 1) = 0x4010000000000000;
  v73 = v89;
  LOBYTE(v124[0]) = v89;
  *(&v124[1] + 1) = v138[1];
  *(&v124[2] + 1) = v138[2];
  v74 = v124[8];
  a2[20] = v124[7];
  a2[21] = v74;
  v75 = v124[10];
  a2[22] = v124[9];
  a2[23] = v75;
  v76 = v124[4];
  a2[16] = v124[3];
  a2[17] = v76;
  v77 = v124[6];
  a2[18] = v124[5];
  a2[19] = v77;
  v78 = v124[0];
  a2[12] = v123;
  a2[13] = v78;
  v79 = v124[2];
  a2[14] = v124[1];
  a2[15] = v79;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15430, &qword_25C7AC2D8);
  sub_25C79CB08(v61, a2 + *(v80 + 64), &qword_27FC153F8, &qword_25C7AC2A8);
  sub_25C79CB08(&v112, &v125, &qword_27FC15438, &qword_25C7AC2E0);
  sub_25C79CB08(&v123, &v125, &qword_27FC15440, &qword_25C7AC2E8);
  sub_25C79C9E8(v98, &qword_27FC153F8, &qword_25C7AC2A8);
  sub_25C79C9E8(v61, &qword_27FC153F8, &qword_25C7AC2A8);
  *(&v126[7] + 1) = v138[7];
  *(&v126[8] + 1) = v138[8];
  *(&v126[9] + 1) = v138[9];
  v126[10] = *(&v138[9] + 15);
  *(&v126[3] + 1) = v138[3];
  *(&v126[4] + 1) = v138[4];
  *(&v126[5] + 1) = v138[5];
  *(&v126[6] + 1) = v138[6];
  *(v126 + 1) = v138[0];
  *(&v126[1] + 1) = v138[1];
  *&v125 = v72;
  *(&v125 + 1) = 0x4010000000000000;
  LOBYTE(v126[0]) = v73;
  *(&v126[2] + 1) = v138[2];
  sub_25C79C9E8(&v125, &qword_27FC15440, &qword_25C7AC2E8);
  v135 = v109;
  v136 = v110;
  v137[0] = v111[0];
  *(v137 + 10) = *(v111 + 10);
  v131 = v105;
  v132 = v106;
  v133 = v107;
  v134 = v108;
  v127 = v101;
  v128 = v102;
  v129 = v103;
  v130 = v104;
  return sub_25C79C9E8(&v127, &qword_27FC15438, &qword_25C7AC2E0);
}

uint64_t sub_25C7A67AC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154A8, &qword_25C7AC340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v17 - v4;
  v6 = sub_25C7AA9DC();
  v7 = sub_25C7AA96C();
  v8 = sub_25C7AA9DC();
  v9 = sub_25C7AA82C();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  v10 = sub_25C7AA83C();
  sub_25C79C9E8(v5, &qword_27FC154A8, &qword_25C7AC340);
  KeyPath = swift_getKeyPath();
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v12 = v17[1];
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v24 = 1;
  v23 = v18;
  v22 = v20;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = 0x3FE0000000000000;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v10;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v21;
}

double sub_25C7A698C@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154A8, &qword_25C7AC340);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v6 = v22;
  v7 = v24;
  v9 = v26;
  v8 = v27;
  v35 = 1;
  v34 = v23;
  v33 = v25;
  v10 = sub_25C7AA9DC();
  v11 = sub_25C7AA82C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = sub_25C7AA83C();
  sub_25C79C9E8(v5, &qword_27FC154A8, &qword_25C7AC340);
  KeyPath = swift_getKeyPath();
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v14 = v28;
  v15 = v29;
  v16 = v30;
  v17 = v31;
  v18 = v35;
  v19 = v34;
  v20 = v33;
  *a1 = 0;
  *(a1 + 8) = v18;
  *(a1 + 16) = v6;
  *(a1 + 24) = v19;
  *(a1 + 32) = v7;
  *(a1 + 40) = v20;
  *(a1 + 48) = v9;
  *(a1 + 56) = v8;
  *(a1 + 64) = v10;
  *(a1 + 72) = 0x3FE0000000000000;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v12;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = v14;
  *(a1 + 120) = v15;
  *(a1 + 128) = v16;
  *(a1 + 136) = v17;
  result = *&v32;
  *(a1 + 144) = v32;
  return result;
}

uint64_t sub_25C7A6B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25C7A6E98(&v34);
  v23 = v35;
  v24 = v34;
  v4 = v36;
  v25 = v38;
  v26 = v37;
  v22 = v39;
  v21 = v40;
  v28 = sub_25C7AA6FC();
  sub_25C7A76C8(a1, &v34);
  v5 = v34;
  v6 = v35;
  v7 = v36;
  v27 = v37;
  KeyPath = swift_getKeyPath();
  LOBYTE(v34) = 1;
  v9 = v7;
  LOBYTE(v30) = v7;
  v44 = 0;
  v10 = (a1 + *(type metadata accessor for NotesSharedIndexedSearchView(0) + 32));
  v11 = *v10;
  v12 = v10[1];
  ObjectType = swift_getObjectType();
  (*(v12 + 40))(ObjectType, v12);
  if (v14)
  {
    sub_25C7A7104(&v34);

    v15 = v34;
    v16 = v35;
    v17 = v36;
    v18 = v37;
    sub_25C7AA11C(v34, v35, v36);
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v44 = v4;
  v30 = v28;
  LOBYTE(v31) = 1;
  *(&v31 + 1) = v5;
  *&v32 = v6;
  BYTE8(v32) = v9;
  *v33 = v27;
  *&v33[8] = KeyPath;
  *&v33[16] = 1;
  v33[24] = 0;
  *&v29[7] = v28;
  *&v29[64] = *&v33[9];
  *&v29[55] = *v33;
  *&v29[39] = v32;
  *&v29[23] = v31;
  sub_25C7AA11C(v24, v23, v4);

  sub_25C79CB08(&v30, &v34, &qword_27FC154B8, &qword_25C7AC3B0);
  sub_25C7AA12C(v15, v16, v17, v18);
  sub_25C7AA170(v15, v16, v17, v18);
  *(a2 + 65) = *&v29[16];
  *(a2 + 81) = *&v29[32];
  *(a2 + 97) = *&v29[48];
  *(a2 + 113) = *&v29[64];
  v19 = v44;
  *a2 = v24;
  *(a2 + 8) = v23;
  *(a2 + 16) = v19;
  *(a2 + 24) = v26;
  *(a2 + 32) = v25;
  *(a2 + 40) = v22;
  *(a2 + 48) = v21;
  *(a2 + 49) = *v29;
  *(a2 + 136) = v15;
  *(a2 + 144) = v16;
  *(a2 + 152) = v17;
  *(a2 + 160) = v18;
  sub_25C7AA170(v15, v16, v17, v18);
  v34 = v28;
  v35 = 0;
  v36 = 1;
  v37 = v5;
  v38 = v6;
  LOBYTE(v39) = v9;
  v40 = v27;
  v41 = KeyPath;
  v42 = 1;
  v43 = 0;
  sub_25C79C9E8(&v34, &qword_27FC154B8, &qword_25C7AC3B0);
  sub_25C7AA1B4(v24, v23, v4);
}

uint64_t sub_25C7A6E98@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v2 = sub_25C7AA46C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = sub_25C7A43F0();
  v11 = [v10 displayName];

  if (v11)
  {
    v12 = sub_25C7AAABC();
    v14 = v13;
  }

  else
  {
    v15 = (v1 + *(type metadata accessor for NotesSharedIndexedSearchView(0) + 52));
    v12 = *v15;
    v14 = v15[1];
  }

  v16 = sub_25C7AA98C();
  sub_25C7A72E8(v12, v14, v16);

  (*(v3 + 16))(v7, v9, v2);
  v17 = sub_25C7AA8EC();
  v19 = v18;
  v21 = v20;
  sub_25C7AA85C();
  v22 = sub_25C7AA8CC();
  v24 = v23;
  v37 = v9;
  v38 = v2;
  v26 = v25;

  sub_25C7AA1B4(v17, v19, v21 & 1);

  v27 = sub_25C7AA8BC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_25C7AA1B4(v22, v24, v26 & 1);

  (*(v3 + 8))(v37, v38);
  result = swift_getKeyPath();
  v35 = v39;
  *v39 = v27;
  v35[1] = v29;
  *(v35 + 16) = v31 & 1;
  v35[3] = v33;
  v35[4] = result;
  v35[5] = 1;
  *(v35 + 48) = 0;
  return result;
}

uint64_t sub_25C7A7104@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25C7AA75C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25C7AA74C();
  sub_25C7AA73C();
  sub_25C7AA9DC();
  sub_25C7AA71C();

  sub_25C7AA73C();
  sub_25C7AA72C();
  sub_25C7AA73C();
  sub_25C7AA77C();
  v4 = sub_25C7AA8DC();
  v6 = v5;
  v8 = v7;
  sub_25C7AA84C();
  v9 = sub_25C7AA8CC();
  v11 = v10;
  v13 = v12;

  sub_25C7AA1B4(v4, v6, v8 & 1);

  sub_25C7AA99C();
  v14 = sub_25C7AA89C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_25C7AA1B4(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_25C7A72E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154C0, &qword_25C7AC3B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154C8, &qword_25C7AC3C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154D0, &qword_25C7AC3C8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v27 - v15;
  v17 = sub_25C7AA4BC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);

  sub_25C7AA4AC();
  sub_25C7AA47C();
  v28[0] = a3;
  sub_25C7AA218();

  sub_25C7AA48C();
  v28[0] = sub_25C7A455C();
  v28[1] = v19;
  v20 = sub_25C7AA53C();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_25C7AA46C();
  sub_25C7A82D4(&qword_28119B560, MEMORY[0x277CC8C40]);
  sub_25C7AA1C4();
  sub_25C7AA4DC();
  sub_25C79C9E8(v7, &qword_27FC154C0, &qword_25C7AC3B8);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v21 = &qword_27FC154C8;
    v22 = &qword_25C7AC3C0;
    v23 = v11;
  }

  else
  {
    sub_25C7AA26C(v11, v16, &qword_27FC154D0, &qword_25C7AC3C8);
    v24 = sub_25C7AA96C();
    sub_25C7AA3D4(&qword_28119B4D0, &qword_27FC154D0, &qword_25C7AC3C8);
    v25 = sub_25C7AA49C();
    v27[1] = v24;
    sub_25C7AA4CC();
    v25(v28, 0);
    v23 = v16;
    v21 = &qword_27FC154D0;
    v22 = &qword_25C7AC3C8;
  }

  return sub_25C79C9E8(v23, v21, v22);
}

uint64_t sub_25C7A76C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v3 = sub_25C7AA46C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15078, &unk_25C7ABBB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v66 - v8;
  v67 = type metadata accessor for NotesSharedIndexedSearchView(0);
  v10 = (a1 + *(v67 + 32));
  v11 = *v10;
  v12 = v10[1];
  ObjectType = swift_getObjectType();
  (*(v12 + 24))(ObjectType, v12);
  v14 = sub_25C7AA52C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v9, 1, v14);
  v72 = a1;
  if (v16 == 1)
  {
    sub_25C79C9E8(v9, &qword_27FC15078, &unk_25C7ABBB0);
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    v17 = sub_25C7AA50C();
    v18 = v19;
    (*(v15 + 8))(v9, v14);
  }

  v74 = v17;
  v75 = v18;
  sub_25C7AA1C4();
  v20 = sub_25C7AA8FC();
  v22 = v21;
  v24 = v23;
  sub_25C7AA81C();
  v25 = sub_25C7AA8CC();
  v27 = v26;
  v29 = v28;

  sub_25C7AA1B4(v20, v22, v24 & 1);

  sub_25C7AA76C();
  v30 = sub_25C7AA8DC();
  v32 = v31;
  LOBYTE(v20) = v33;
  v34 = sub_25C7AA8AC();
  v68 = v35;
  v69 = v34;
  v37 = v36;
  v70 = v38;
  sub_25C7AA1B4(v30, v32, v20 & 1);

  sub_25C7AA1B4(v25, v27, v29 & 1);

  v39 = v72;
  v40 = sub_25C7A43F0();
  v41 = [v40 contentDescription];

  if (v41)
  {
    v42 = sub_25C7AAABC();
    v44 = v43;
  }

  else
  {
    v45 = (v39 + *(v67 + 56));
    v42 = *v45;
    v44 = v45[1];
  }

  v46 = sub_25C7AA99C();
  sub_25C7A72E8(v42, v44, v46);

  v47 = sub_25C7AA8EC();
  v49 = v48;
  v51 = v50;
  sub_25C7AA81C();
  v52 = sub_25C7AA8CC();
  v54 = v53;
  v56 = v55;

  sub_25C7AA1B4(v47, v49, v51 & 1);

  LOBYTE(v47) = v37;
  v57 = v68;
  v58 = v69;
  v71 = sub_25C7AA8AC();
  v72 = v59;
  v61 = v60;
  v63 = v62;
  sub_25C7AA1B4(v52, v54, v56 & 1);

  sub_25C7AA1B4(v58, v57, v47 & 1);

  v65 = v73;
  *v73 = v71;
  v65[1] = v61;
  *(v65 + 16) = v63 & 1;
  v65[3] = v72;
  return result;
}

uint64_t sub_25C7A7B28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_25C7AA9EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v26 = sub_25C7AA9FC();
  (*(v5 + 8))(v8, v4);
  v9 = *(a1 + *(type metadata accessor for NotesSharedIndexedSearchView(0) + 36));
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  v10 = v27;
  LOBYTE(v8) = v28;
  v11 = v29;
  v12 = v30;
  v13 = v31;
  v14 = v32;
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15460, &qword_25C7AC300) + 36));
  v16 = *(sub_25C7AA62C() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_25C7AA78C();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #5.0 }

  *v15 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15478, &qword_25C7AC318);
  *&v15[*(result + 36)] = 256;
  *a2 = v26;
  *(a2 + 8) = v10;
  *(a2 + 16) = v8;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

double sub_25C7A7D48@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_25C7AA95C();
  sub_25C7AAA2C();
  sub_25C7AA5EC();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  result = *&v8;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_25C7A7DF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A0, &qword_25C7AC250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A8, &qword_25C7AC258) + 36);
  *v5 = 0;
  *(v5 + 8) = 257;
  sub_25C7AA5FC();
  v7 = v6 * 0.5;
  sub_25C7AA5FC();
  v9 = v8 * 0.5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153B0, &qword_25C7AC260);
  v11 = (a2 + *(result + 36));
  *v11 = v7;
  v11[1] = v9;
  return result;
}

uint64_t sub_25C7A7EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A0, &qword_25C7AC250);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  result = (*(v5 + 32))(v10 + v9, v8, v4);
  *a2 = sub_25C7A9B48;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0x3FF0000000000000;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_25C7A803C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA63C();
  *a1 = result;
  return result;
}

uint64_t sub_25C7A8094@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C7AA65C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C7A80C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_25C7AA66C();
}

uint64_t sub_25C7A81C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C7A8248(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25C7A8280()
{
  result = qword_28119B640;
  if (!qword_28119B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B640);
  }

  return result;
}

uint64_t sub_25C7A82D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25C7A831C()
{
  result = qword_27FC15310;
  if (!qword_27FC15310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15310);
  }

  return result;
}

unint64_t sub_25C7A8370()
{
  result = qword_28119B5F8;
  if (!qword_28119B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B5F8);
  }

  return result;
}

uint64_t sub_25C7A83C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSharedIndexedSearchView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7A8428(uint64_t a1)
{
  v2 = type metadata accessor for NotesSharedIndexedSearchView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C7A8484@<X0>(void (*a1)(uint64_t)@<X1>, void (*a2)(void *__return_ptr)@<X3>, uint64_t a3@<X8>)
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC154B0, &qword_25C7AC378);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15460, &qword_25C7AC300);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21[-1] - v11;
  v13 = sub_25C7AA61C();
  if (v13)
  {
    a1(v13);
    sub_25C79CB08(v12, v8, &qword_27FC15460, &qword_25C7AC300);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15488, &qword_25C7AC320);
    sub_25C7A9E58();
    sub_25C7AA07C();
    sub_25C7AA7BC();

    return sub_25C79C9E8(v12, &qword_27FC15460, &qword_25C7AC300);
  }

  else
  {
    a2(v21);
    v15 = v21[1];
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    *v8 = v21[0];
    *(v8 + 1) = v15;
    v8[16] = v16;
    *(v8 + 3) = v17;
    v8[32] = v18;
    *(v8 + 40) = v19;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15488, &qword_25C7AC320);
    sub_25C7A9E58();
    sub_25C7AA07C();
    return sub_25C7AA7BC();
  }
}

uint64_t sub_25C7A86BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_25C7A878C(uint64_t a1)
{
  *(a1 + 8) = sub_25C7A82D4(&qword_28119B620, type metadata accessor for NotesIndexSharedModel);
  result = sub_25C7A82D4(&qword_28119B628, type metadata accessor for NotesIndexSharedModel);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_get_19Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_25C79CB08(v8 + v9, a5, a3, a4);
}

uint64_t keypath_get_21Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_22Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_25C7A8AA0()
{
  sub_25C7A9288(319, &qword_28119B648, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_25C7A9288(319, qword_28119B650, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
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

uint64_t sub_25C7A8FA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_25C7A8FE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_25C7A906C()
{
  sub_25C7A9288(319, &qword_28119B578, sub_25C7A91EC, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_25C7A9238();
    if (v1 <= 0x3F)
    {
      sub_25C7A9288(319, &qword_28119B590, MEMORY[0x277CE4148], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_25C7A9288(319, &qword_28119B588, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_25C7A92EC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_25C7A91EC()
{
  result = qword_28119B570;
  if (!qword_28119B570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28119B570);
  }

  return result;
}

void sub_25C7A9238()
{
  if (!qword_28119B580)
  {
    v0 = sub_25C7AA59C();
    if (!v1)
    {
      atomic_store(v0, &qword_28119B580);
    }
  }
}

void sub_25C7A9288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25C7A92EC()
{
  result = qword_28119B5B8;
  if (!qword_28119B5B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28119B5B8);
  }

  return result;
}

unint64_t sub_25C7A934C()
{
  result = qword_27FC15368;
  if (!qword_27FC15368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15350, &qword_25C7ABD08);
    sub_25C7A9404();
    sub_25C7AA3D4(&qword_28119B500, &qword_27FC15358, &qword_25C7ABD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15368);
  }

  return result;
}

unint64_t sub_25C7A9404()
{
  result = qword_27FC15370;
  if (!qword_27FC15370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15340, &qword_25C7ABCC8);
    sub_25C7AA3D4(&qword_27FC15378, &qword_27FC15380, &qword_25C7ABFB8);
    sub_25C7AA3D4(&qword_28119B510, &qword_27FC15388, &unk_25C7ABFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15370);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotesSharedIndexedSearchView.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NotesSharedIndexedSearchView.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for NotesIndexSharedModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotesIndexSharedModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25C7A9750()
{
  result = qword_27FC15390;
  if (!qword_27FC15390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15390);
  }

  return result;
}

unint64_t sub_25C7A97A8()
{
  result = qword_27FC15398;
  if (!qword_27FC15398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15398);
  }

  return result;
}

unint64_t sub_25C7A981C()
{
  result = qword_28119B5E8;
  if (!qword_28119B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B5E8);
  }

  return result;
}

unint64_t sub_25C7A9874()
{
  result = qword_28119B5F0;
  if (!qword_28119B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B5F0);
  }

  return result;
}

unint64_t sub_25C7A98CC()
{
  result = qword_28119B630;
  if (!qword_28119B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B630);
  }

  return result;
}

unint64_t sub_25C7A9924()
{
  result = qword_28119B638;
  if (!qword_28119B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B638);
  }

  return result;
}

uint64_t sub_25C7A9978(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_25C7AAD1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025C7AC980 == a2 || (sub_25C7AAD1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F467365746F6ELL && a2 == 0xEB00000000726564 || (sub_25C7AAD1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xED00004C5255746ELL || (sub_25C7AAD1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025C7AC9B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_25C7AAD1C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25C7A9B48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC153A0, &qword_25C7AC250) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25C7A7DF8(v4, a1);
}

unint64_t sub_25C7A9BE0()
{
  result = qword_28119B508;
  if (!qword_28119B508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15400, &qword_25C7AC2B0);
    sub_25C7AA3D4(&qword_28119B4F0, &qword_27FC15410, &qword_25C7AC2C0);
    sub_25C7AA3D4(&qword_28119B4E8, &qword_27FC15418, &qword_25C7AC2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B508);
  }

  return result;
}

void sub_25C7A9CC0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7A9CCC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7A9CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSharedIndexedSearchView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7A9D40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotesSharedIndexedSearchView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25C7A7B28(v4, a1);
}

uint64_t sub_25C7A9DC0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  return sub_25C7A8484(*(v1 + 16), *(v1 + 32), a1);
}

unint64_t sub_25C7A9DCC()
{
  result = qword_27FC15458;
  if (!qword_27FC15458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15450, &qword_25C7AC2F8);
    sub_25C7A9E58();
    sub_25C7AA07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15458);
  }

  return result;
}

unint64_t sub_25C7A9E58()
{
  result = qword_28119B518;
  if (!qword_28119B518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15460, &qword_25C7AC300);
    sub_25C7A9F10();
    sub_25C7AA3D4(&qword_28119B540, &qword_27FC15478, &qword_25C7AC318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B518);
  }

  return result;
}

unint64_t sub_25C7A9F10()
{
  result = qword_28119B520;
  if (!qword_28119B520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15468, &qword_25C7AC308);
    sub_25C7A9F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B520);
  }

  return result;
}

unint64_t sub_25C7A9F9C()
{
  result = qword_28119B528;
  if (!qword_28119B528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15470, &qword_25C7AC310);
    sub_25C7AA028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B528);
  }

  return result;
}

unint64_t sub_25C7AA028()
{
  result = qword_28119B548;
  if (!qword_28119B548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B548);
  }

  return result;
}

unint64_t sub_25C7AA07C()
{
  result = qword_27FC15480;
  if (!qword_27FC15480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15488, &qword_25C7AC320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15480);
  }

  return result;
}

uint64_t sub_25C7AA11C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7AA12C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25C7AA11C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25C7AA170(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_25C7AA1B4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_25C7AA1B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_25C7AA1C4()
{
  result = qword_28119B4D8;
  if (!qword_28119B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B4D8);
  }

  return result;
}

unint64_t sub_25C7AA218()
{
  result = qword_28119B568;
  if (!qword_28119B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B568);
  }

  return result;
}

uint64_t sub_25C7AA26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_25C7AA31C()
{
  result = qword_28119B530;
  if (!qword_28119B530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC15520, &qword_25C7AC418);
    sub_25C7AA3D4(&qword_28119B538, &qword_27FC15528, &unk_25C7AC420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28119B530);
  }

  return result;
}

uint64_t sub_25C7AA3D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void gotLoadHelper_x21__OBJC_CLASS___APBaseShieldView(double a1)
{
  if (!atomic_load(dlopenHelperFlag_AppProtectionUI))
  {
    dlopenHelper_AppProtectionUI(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___APBaseShieldView(double result)
{
  if (!atomic_load(dlopenHelperFlag_AppProtectionUI))
  {
    return dlopenHelper_AppProtectionUI(result);
  }

  return result;
}