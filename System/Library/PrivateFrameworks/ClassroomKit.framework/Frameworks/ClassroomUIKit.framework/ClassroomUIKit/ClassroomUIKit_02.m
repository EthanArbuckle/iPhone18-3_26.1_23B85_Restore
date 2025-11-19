uint64_t sub_24369B50C()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CAC48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2436CBCD8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBCA8();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_27ED7F648);
  (*(v3 + 16))(v6, v11, v2);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369B78C()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CAC48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2436CBCF8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2436CBCD8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBCA8();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_27ED7F648);
  (*(v3 + 16))(v6, v11, v2);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369BA0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_2436CAC58();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v4, v5);
}

uint64_t sub_24369BAA4(_BYTE *a1)
{
  v2 = sub_2436CADB8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2436CAC48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2436CBCF8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2436CBCD8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  *a1;
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBCA8();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_27ED7F648);
  (*(v5 + 16))(v8, v13, v4);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369BE24(_BYTE *a1, _BYTE *a2)
{
  v4 = sub_2436CADB8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2436CAC48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2436CBCF8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      if (*a2)
      {
        *a2;
      }
    }

    else
    {
      *a2;
    }
  }

  else
  {
    *a2;
  }

  sub_2436CBC88();
  if (qword_27ED7DF08 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_27ED7F648);
  (*(v7 + 16))(v10, v13, v6);
  sub_2436CADA8();
  return sub_2436CAC68();
}

uint64_t sub_24369C1AC()
{
  result = sub_2436CAC58();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24369C2C0()
{
  result = sub_2436CAC58();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24369C3B0()
{
  result = sub_2436CAC58();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24369C464()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CBCF8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2436CBCD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBC98();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF00 != -1)
  {
    swift_once();
  }

  v6 = qword_27ED7F640;
  sub_2436CADA8();
  return sub_2436CBD48();
}

uint64_t sub_24369C648()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CBCF8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2436CBCD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBC98();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF00 != -1)
  {
    swift_once();
  }

  v6 = qword_27ED7F640;
  sub_2436CADA8();
  return sub_2436CBD48();
}

uint64_t sub_24369C834()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CBCF8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2436CBCD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBC98();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF00 != -1)
  {
    swift_once();
  }

  v6 = qword_27ED7F640;
  sub_2436CADA8();
  return sub_2436CBD48();
}

uint64_t sub_24369CA08()
{
  v0 = sub_2436CADB8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2436CBCF8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2436CBCD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2436CBCC8();
  sub_2436CBCB8();
  sub_2436CBC98();
  sub_2436CBCB8();
  sub_2436CBCE8();
  if (qword_27ED7DF00 != -1)
  {
    swift_once();
  }

  v6 = qword_27ED7F640;
  sub_2436CADA8();
  return sub_2436CBD48();
}

uint64_t sub_24369CBE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369CC58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369CCE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369CD94()
{
  v1 = [v0 attributedFullName];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 string];
    v4 = sub_2436CBD38();

    [v2 crk_familyNameRange];
  }

  else
  {
    v5 = [v0 fullName];
    v4 = sub_2436CBD38();
  }

  return v4;
}

uint64_t sub_24369CE6C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, char *a12, uint64_t a13)
{
  v14 = v13;
  v72 = a7;
  v73 = a8;
  v79 = a4;
  v80 = a3;
  v74 = a1;
  v75 = a2;
  v78 = a9;
  v71 = sub_2436CAC58();
  v17 = *(v71 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v71);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v70 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (v83 == a12 && v84 == a13)
  {
  }

  else
  {
    v24 = sub_2436CC2E8();

    if ((v24 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v83 = a12;
      v84 = a13;

      sub_2436CAEE8();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  if (!v84)
  {

    goto LABEL_14;
  }

  v26 = v85;
  v25 = v86;
  if (v83 != v80 || v84 != v79)
  {
    v27 = sub_2436CC2E8();

    if (v27)
    {
      goto LABEL_12;
    }

LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    v83 = v80;
    v84 = v79;
    v85 = a5;
    v86 = a6;

    sub_2436CAEE8();
    goto LABEL_15;
  }

LABEL_12:
  if (v26 != a5 || v25 != a6)
  {
    goto LABEL_14;
  }

LABEL_15:
  v28 = v78;
  v76 = a10;
  v77 = a11;
  if (v78)
  {
    if (qword_27ED7DEE0 != -1)
    {
      swift_once();
    }

    v29 = v17[2];
    v17 += 2;
    v29(v23, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_federatedAccountSubtitle, v71);
    v30 = sub_2436CBD58();
    v32 = v31;
    v21 = 0;
  }

  else
  {
    if (a11)
    {
      if (qword_27ED7DEE0 != -1)
      {
        goto LABEL_59;
      }

      goto LABEL_21;
    }

    if (a10)
    {
      if (qword_27ED7DEE0 != -1)
      {
        swift_once();
      }

      v47 = qword_27ED83B50;
      v48 = v17[2];
      v35 = v71;
      v48(v23, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountSubtitle, v71);
      v72 = sub_2436CBD58();
      v73 = v49;
      v48(v23, v47 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertSubtitlePasswordReset, v35);
      v48(v21, v23, v35);
      v50 = sub_2436CBD58();
      v52 = v51;
      v53 = *(v14 + OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel_alert);
      v41 = swift_allocObject();
      *(v41 + 2) = v53;
      *(v41 + 3) = v50;
      *(v41 + 4) = v52;
      v54 = type metadata accessor for CRKUIButtonViewModel();
      v55 = *(v54 + 48);
      v56 = *(v54 + 52);
      v21 = swift_allocObject();
      LOBYTE(v83) = 0;

      v32 = v73;
      sub_2436CAE98();
      *(v21 + 2) = v50;
      *(v21 + 3) = v52;
      v30 = v72;
      swift_beginAccess();
      v81 = xmmword_2436D0850;
      v82 = 0x80;
      sub_2436CAE98();
      swift_endAccess();
      v45 = &v21[OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action];
      v46 = sub_24369EE1C;
      goto LABEL_26;
    }

    v32 = v73;

    v21 = 0;
    v30 = v72;
  }

  while (1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v83 == v30 && v84 == v32)
    {
    }

    else
    {
      v58 = sub_2436CC2E8();

      if ((v58 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v83 = v30;
        v84 = v32;

        sub_2436CAEE8();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v83)
    {
      v60 = *(v83 + 2);
      v59 = *(v83 + 3);

      if (!v21)
      {
        if (!v59)
        {
          goto LABEL_47;
        }

LABEL_45:

LABEL_46:
        swift_getKeyPath();
        swift_getKeyPath();
        v83 = v21;

        sub_2436CAEE8();
        goto LABEL_47;
      }
    }

    else
    {
      if (!v21)
      {
        goto LABEL_47;
      }

      v59 = 0;
      v60 = 0;
    }

    v62 = *(v21 + 2);
    v61 = *(v21 + 3);

    if (!v59)
    {
      if (!v61)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    if (!v61)
    {
      goto LABEL_45;
    }

    if (v60 == v62 && v59 == v61)
    {

      goto LABEL_47;
    }

    v69 = sub_2436CC2E8();

    if ((v69 & 1) == 0)
    {
      goto LABEL_46;
    }

LABEL_47:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v83 != (v28 & 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v83) = v28 & 1;

      sub_2436CAEE8();
    }

    v63 = v28 | v76 | v77;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if ((v63 & 1) != v83)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v83) = v63 & 1;

      sub_2436CAEE8();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v63)
    {
      v64 = 7;
      goto LABEL_55;
    }

    v65 = objc_opt_self();
    v66 = sub_2436CBD08();
    v67 = [v65 asmHashForString:v66 maximumExclusive:7];

    if (v67 <= 6)
    {
      break;
    }

    __break(1u);
LABEL_59:
    swift_once();
LABEL_21:
    v33 = qword_27ED83B50;
    v34 = v17[2];
    v35 = v71;
    v34(v23, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountSubtitle, v71);
    v72 = sub_2436CBD58();
    v73 = v36;
    v34(v23, v33 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertSubtitleContactAdministrator, v35);
    v34(v21, v23, v35);
    v37 = sub_2436CBD58();
    v39 = v38;
    v40 = *(v14 + OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel_alert);
    v41 = swift_allocObject();
    *(v41 + 2) = v40;
    *(v41 + 3) = v37;
    *(v41 + 4) = v39;
    v42 = type metadata accessor for CRKUIButtonViewModel();
    v43 = *(v42 + 48);
    v44 = *(v42 + 52);
    v21 = swift_allocObject();
    LOBYTE(v83) = 0;

    v32 = v73;
    sub_2436CAE98();
    *(v21 + 2) = v37;
    *(v21 + 3) = v39;
    v30 = v72;
    swift_beginAccess();
    v81 = xmmword_2436D0850;
    v82 = 0x80;
    sub_2436CAE98();
    swift_endAccess();
    v45 = &v21[OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action];
    v46 = sub_24369EE74;
LABEL_26:
    *v45 = v46;
    v45[1] = v41;
    v57 = v17[1];
    ++v17;
    v57(v23, v35);
    v28 = v78;
  }

  v64 = byte_2856750A0[v67 + 32];
LABEL_55:
  sub_24368628C(v74, v75, v64);
}

uint64_t sub_24369D980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2436CAC58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27ED7DEE0 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_lockedAccountAlertTitle, v5);
  v10 = sub_2436CBD58();
  v12 = v11;
  v16 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v14[0] = v10;
  v14[1] = v12;
  v14[2] = a2;
  v14[3] = a3;
  v15 = 0;

  sub_2436CAEE8();
  sub_2436C8CA0();
}

char *sub_24369DB18()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = *(v0 + 6);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__facePortal;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFA8, &unk_2436D0940);
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__name;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F760, &unk_2436CF900);
  (*(*(v7 - 8) + 8))(&v0[v6], v7);
  v8 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__subtitle;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v10 = *(*(v9 - 8) + 8);
  v10(&v0[v8], v9);
  v11 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__subtitleInfoButton;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  (*(*(v12 - 8) + 8))(&v0[v11], v12);
  v13 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__isFederated;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v15 = *(*(v14 - 8) + 8);
  v15(&v0[v13], v14);
  v15(&v0[OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__isDisabled], v14);
  v10(&v0[OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__sortName], v9);
  v16 = *&v0[OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel_alert];

  return v0;
}

uint64_t sub_24369DD34()
{
  sub_24369DB18();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSStudentViewModel()
{
  result = qword_27ED7F710;
  if (!qword_27ED7F710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24369DDE0()
{
  sub_24369DFE0();
  if (v1 <= 0x3F)
  {
    v11 = *(v0 - 8) + 64;
    sub_2436803FC(319, &qword_27ED7EFA0, &unk_27ED7F730, &qword_2436CF880);
    if (v3 <= 0x3F)
    {
      v12 = *(v2 - 8) + 64;
      sub_243686670(319, &qword_27ED80310);
      if (v5 <= 0x3F)
      {
        v6 = *(v4 - 8) + 64;
        sub_2436803FC(319, &unk_27ED7F740, &unk_27ED7EB90, &qword_2436CE990);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          sub_243686670(319, &qword_27ED7EB70);
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_24369DFE0()
{
  if (!qword_27ED7F720)
  {
    type metadata accessor for EMSFacePortalViewModel();
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7F720);
    }
  }
}

uint64_t sub_24369E038@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSStudentViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_24369E078@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_24369E0F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

double sub_24369E174@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24369E1F4(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *a1;
  v6 = a1[1];

  return sub_2436CAEE8();
}

uint64_t sub_24369E274@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_24369E2F4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_24369E378@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_24369E3F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_24369E474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_24369E4F4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_24369E568(void *a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a2 + 48) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  if (!v4)
  {
    v4 = [objc_msgSend(a1 nameComponents)];
    swift_unknownObjectRelease();
    if (!v4)
    {
      v4 = [objc_msgSend(a1 nameComponents)];
      swift_unknownObjectRelease();
    }
  }

  v5 = sub_2436CBD38();
  v24 = v6;
  v25 = v5;

  v7 = [objc_msgSend(a1 nameComponents)];
  swift_unknownObjectRelease();
  v23 = sub_2436CBD38();
  v9 = v8;

  v10 = [a1 nameComponents];
  swift_getObjectType();
  v11 = sub_24369CD94();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  swift_unknownObjectRelease();
  v18 = [a1 appleID];
  v19 = sub_2436CBD38();
  v21 = v20;

  sub_24369CE6C(v23, v9, v11, v13, v15, v17, v19, v21, [a1 isFederated], objc_msgSend(a1, sel_isAccountLockedDueToFailedLoginAttempts), objc_msgSend(a1, sel_isAccountATOLocked), v25, v24);
}

char *sub_24369E7E0(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v64 = a3;
  v65 = a5;
  v62 = a1;
  v63 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v56 = &v53 - v11;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBF0, &unk_2436CFC10);
  v66 = *(v55 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v55);
  v14 = &v53 - v13;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F760, &unk_2436CF900);
  v15 = *(v54 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v54);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EFA8, &unk_2436D0940);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v24 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__facePortal;
  v25 = type metadata accessor for EMSFacePortalViewModel();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  *&v67 = 0;
  *(&v67 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  LOBYTE(v67) = 7;
  sub_2436CAE98();
  *&v67 = v28;
  sub_2436CAE98();
  (*(v20 + 32))(&a4[v24], v23, v19);
  v29 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__name;
  v67 = 0u;
  v68 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F730, &qword_2436CF880);
  sub_2436CAE98();
  (*(v15 + 32))(&a4[v29], v18, v54);
  v30 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__subtitle;
  *&v67 = 0;
  *(&v67 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v31 = *(v66 + 32);
  v66 += 32;
  v32 = v55;
  v31(&a4[v30], v14, v55);
  v33 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__subtitleInfoButton;
  *&v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB90, &qword_2436CE990);
  v34 = v56;
  sub_2436CAE98();
  (*(v57 + 32))(&a4[v33], v34, v58);
  v35 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__isFederated;
  LOBYTE(v67) = 0;
  v36 = v59;
  sub_2436CAE98();
  v37 = v61;
  v38 = *(v60 + 32);
  v38(&a4[v35], v36, v61);
  v39 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__isDisabled;
  LOBYTE(v67) = 0;
  sub_2436CAE98();
  v38(&a4[v39], v36, v37);
  v40 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel__sortName;
  *&v67 = 0;
  *(&v67 + 1) = 0xE000000000000000;
  sub_2436CAE98();
  v31(&a4[v40], v14, v32);
  v41 = OBJC_IVAR____TtC14ClassroomUIKit19EMSStudentViewModel_alert;
  v42 = type metadata accessor for EMSAlertViewModel();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  LOBYTE(v67) = 0;
  sub_2436CAE98();
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v71 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F770, &qword_2436D2370);
  sub_2436CAE98();
  *&a4[v41] = v45;
  v46 = v62;
  v47 = [v62 identifier];
  v48 = sub_2436CBD38();
  v50 = v49;

  *(a4 + 2) = v48;
  *(a4 + 3) = v50;
  v51 = v64;
  *(a4 + 4) = v63;
  *(a4 + 5) = v51;
  *(a4 + 6) = v46;
  swift_unknownObjectRetain();

  sub_24369E568(v46, a4);
  return a4;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24369EEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v6 = sub_24369EF88(v10);
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *a3 = KeyPath;
  a3[1] = v6;
  a3[2] = sub_24369F684;
  a3[3] = v8;
}

uint64_t sub_24369EF88(unsigned __int8 a1)
{
  v2 = sub_2436CB908();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  if (a1 > 6u)
  {
    v7 = objc_allocWithZone(MEMORY[0x277D75348]);
    aBlock[4] = sub_24367BCD4;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24369F5D4;
    aBlock[3] = &block_descriptor_4;
    v8 = _Block_copy(aBlock);
    [v7 initWithDynamicProvider_];
    _Block_release(v8);

    return sub_2436CB8E8();
  }

  else
  {
    (*(v5 + 104))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
    return sub_2436CB988();
  }
}

uint64_t sub_24369F214@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34[-v4];
  sub_2436CB078();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436732AC();
  v6 = sub_2436CB698();
  v8 = v7;
  v10 = v9;
  sub_2436CB5B8();
  v11 = sub_2436CB5A8();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_2436CB5C8();
  sub_24369F694(v5);
  v12 = sub_2436CB658();
  v14 = v13;
  v16 = v15;

  sub_243679F68(v6, v8, v10 & 1);

  sub_2436CB948();
  v17 = sub_2436CB648();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_243679F68(v12, v14, v16 & 1);

  v24 = sub_2436CB538();
  sub_2436CAF88();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34[24] = v21 & 1;
  v34[40] = 0;
  result = swift_allocObject();
  *(result + 16) = v17;
  *(result + 24) = v19;
  *(result + 32) = v21 & 1;
  *(result + 40) = v23;
  *(result + 48) = v24;
  *(result + 56) = v26;
  *(result + 64) = v28;
  *(result + 72) = v30;
  *(result + 80) = v32;
  *(result + 88) = 0;
  *a1 = sub_24369F740;
  a1[1] = result;
  return result;
}

uint64_t sub_24369F4B0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = sub_2436CBB48();
  v5 = v4;
  sub_24369EEA4(v2, v1, &v11);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v11 = v3;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F780, &qword_2436D0CA8);
  sub_24369F570();
  sub_2436CB798();
}

unint64_t sub_24369F570()
{
  result = qword_27ED7F788;
  if (!qword_27ED7F788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F780, &qword_2436D0CA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F788);
  }

  return result;
}

id sub_24369F5D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_24369F64C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24369F684@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_24369F214(a1);
}

uint64_t sub_24369F694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F790, &qword_2436D2640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24369F6FC()
{
  sub_243679F68(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_24369F740@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 73);
  v3 = *(v10 + 9);
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_24369F78C(v8, &v7);
}

uint64_t sub_24369F78C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F2E0, &qword_2436D0168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24369F818()
{
  result = qword_27ED7F798;
  if (!qword_27ED7F798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F7A0, &unk_2436D0D80);
    sub_24369F570();
    sub_24369F8A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F798);
  }

  return result;
}

unint64_t sub_24369F8A4()
{
  result = qword_27ED7E870;
  if (!qword_27ED7E870)
  {
    sub_2436CB518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7E870);
  }

  return result;
}

uint64_t sub_24369F8FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369F970()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369F9E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369FA58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_24369FAD0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (swift_getKeyPath(), swift_getKeyPath(), sub_2436CAED8(), , , v6 = , v8 == 1))
  {
    return a2(v6);
  }

  else
  {
    return a4();
  }
}

uint64_t sub_24369FBB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!a1 || a1 == a2 || !a2 || a2 < a1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_2436CAEE8();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAED8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAEE8();
    }
  }

  return result;
}

uint64_t sub_24369FEC8(uint64_t a1, void (*a2)(void, void))
{
  a2(*a1, *(a1 + 8));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_2436CAEE8();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v3)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      return sub_2436CAEE8();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_2436A0068()
{
  v1 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__selectedCountLabel;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__selectButton;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__deleteButton;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F818, &qword_2436D0FD8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__state;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F7F8, &qword_2436D0E08);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel_cancellables);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v10, v11);
}

uint64_t type metadata accessor for EMSSelectionToolbarViewModel()
{
  result = qword_27ED7F7D0;
  if (!qword_27ED7F7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436A0258()
{
  sub_2436803FC(319, &unk_27ED7FE10, &unk_27ED80380, &qword_2436CF6B0);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2436803FC(319, &unk_27ED7F740, &unk_27ED7EB90, &qword_2436CE990);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2436A03D4();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2436A042C();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2436A03D4()
{
  if (!qword_27ED7F7E0)
  {
    type metadata accessor for CRKUIButtonViewModel();
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7F7E0);
    }
  }
}

void sub_2436A042C()
{
  if (!qword_27ED7F7E8)
  {
    v0 = sub_2436CAEF8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7F7E8);
    }
  }
}

uint64_t getEnumTagSinglePayload for EMSSelectionToolbarViewModel.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EMSSelectionToolbarViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2436A0508(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2436A0520(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2436A0548@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSSelectionToolbarViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

double sub_2436A0588@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_2436A0610(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436A170C();

  return sub_2436CAEE8();
}

uint64_t sub_2436A06A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_2436A0724(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436A0798@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_2436A0818(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436A0894@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_2436A0914(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

double sub_2436A0990@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2436A0A10(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436A0A94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_2436A0B1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436A0BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v83 = a8;
  v80 = a5;
  v81 = a7;
  v78 = a4;
  v79 = a6;
  v73 = a3;
  v72 = a2;
  v82 = a1;
  v85 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F7F0, &qword_2436D0E00);
  v86 = *(v11 - 8);
  v87 = v11;
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v11);
  v84 = &v68 - v13;
  v88 = sub_2436CAD98();
  v75 = *(v88 - 8);
  v14 = *(v75 + 64);
  MEMORY[0x28223BE20](v88);
  v74 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2436CAC58();
  v70 = *(v71 - 8);
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F7F8, &qword_2436D0E08);
  v18 = *(v89 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v89);
  v21 = &v68 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F750, &unk_2436D0E10);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v68 - v30;
  v32 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__selectedCountLabel;
  v92 = 0;
  v93 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  sub_2436CAE98();
  (*(v28 + 32))(v10 + v32, v31, v27);
  v33 = OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__selectButton;
  v92 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EB90, &qword_2436CE990);
  sub_2436CAE98();
  (*(v23 + 32))(v10 + v33, v26, v22);
  v34 = v10 + OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel__state;
  v92 = 0;
  LOBYTE(v93) = 2;
  sub_2436CAE98();
  v35 = *(v18 + 32);
  v77 = v34;
  v35(v34, v21, v89);
  v76 = v10 + OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel_cancellables;
  *(v10 + OBJC_IVAR____TtC14ClassroomUIKit28EMSSelectionToolbarViewModel_cancellables) = MEMORY[0x277D84FA0];
  if (qword_27ED7DEE8 != -1)
  {
    swift_once();
  }

  (*(v70 + 16))(v69, qword_27ED83B58 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_deleteButtonTitle, v71);
  v71 = sub_2436CBD58();
  v37 = v36;
  v38 = v73;

  v39 = v74;
  sub_2436CAD88();
  v40 = sub_2436CAD58();
  v42 = v41;
  v75 = *(v75 + 8);
  (v75)(v39, v88);
  v43 = type metadata accessor for CRKUIButtonViewModel();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  LOBYTE(v92) = 0;
  sub_2436CAE98();
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  swift_beginAccess();
  *&v90 = v71;
  *(&v90 + 1) = v37;
  v91 = 1;
  sub_2436CAE98();
  swift_endAccess();
  v47 = (v46 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
  *v47 = v72;
  v47[1] = v38;
  swift_beginAccess();
  *&v90 = v46;
  sub_2436CAE98();
  swift_endAccess();
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = swift_allocObject();
  v51 = v78;
  v50 = v79;
  *(v49 + 2) = v48;
  *(v49 + 3) = v51;
  v52 = v81;
  *(v49 + 4) = v80;
  *(v49 + 5) = v50;
  *(v49 + 6) = v52;

  sub_2436CAD88();
  v53 = sub_2436CAD58();
  v55 = v54;
  (v75)(v39, v88);
  v56 = *(v43 + 48);
  v57 = *(v43 + 52);
  v58 = swift_allocObject();
  LOBYTE(v92) = 0;
  sub_2436CAE98();
  *(v58 + 16) = v53;
  *(v58 + 24) = v55;
  swift_beginAccess();
  v90 = xmmword_2436D0D90;
  v91 = 0;
  sub_2436CAE98();
  swift_endAccess();
  v59 = (v58 + OBJC_IVAR____TtC14ClassroomUIKit20CRKUIButtonViewModel_action);
  *v59 = sub_2436A1628;
  v59[1] = v49;

  swift_getKeyPath();
  swift_getKeyPath();
  v92 = v58;

  sub_2436CAEE8();
  v92 = v82;
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_2436A1640;
  *(v61 + 24) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F800, &qword_2436D0E68);
  sub_243671838(&qword_27ED7F808, &qword_27ED7F800, &qword_2436D0E68);
  sub_2436CAF68();

  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  swift_beginAccess();
  v62 = v84;
  sub_2436CAEA8();
  swift_endAccess();
  v63 = swift_allocObject();
  swift_weakInit();

  v64 = swift_allocObject();
  v65 = v85;
  v64[2] = v83;
  v64[3] = v65;
  v64[4] = v63;
  sub_243671838(&qword_27ED7F810, &qword_27ED7F7F0, &qword_2436D0E00);

  v66 = v87;
  sub_2436CAF68();

  (*(v86 + 8))(v62, v66);
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  return v10;
}

uint64_t sub_2436A15A8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2436A15E0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2436A1648()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436A1680(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_2436A16B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2436A16F0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_24369FEC8(a1, *(v1 + 16));
}

uint64_t sub_2436A1740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2436A1810(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EMSStudentPickerView()
{
  result = qword_27ED7F828;
  if (!qword_27ED7F828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436A190C()
{
  sub_2436A19D8();
  if (v0 <= 0x3F)
  {
    sub_2436A1A6C(319, &qword_27ED7F840, &unk_27ED7FEC0, &unk_2436D02E0);
    if (v1 <= 0x3F)
    {
      sub_2436A1A6C(319, &qword_27ED7F848, &qword_27ED7E6F0, &qword_2436CE0C0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2436A19D8()
{
  if (!qword_27ED7F838)
  {
    type metadata accessor for EMSStudentPickerViewModel();
    sub_2436A92D8(&qword_27ED7F330, type metadata accessor for EMSStudentPickerViewModel);
    v0 = sub_2436CB0C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27ED7F838);
    }
  }
}

void sub_2436A1A6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2436CBA28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2436A1ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB08, &qword_2436D1408);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v48 - v7;
  v9 = sub_2436CB3C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2436CB3D8();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB10, &unk_2436D1410);
  v18 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v21 = &v48 - v20;
  if (a1)
  {
    v56 = v21;
    v58 = v19;
    sub_2436CBE68();
    v59 = v5;
    swift_retain_n();
    v22 = sub_2436CBE58();
    v23 = swift_allocObject();
    v57 = v14;
    v55 = v3;
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = a1;

    v25 = sub_2436CBE58();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v24;
    v26[4] = a1;
    v54 = a1;
    sub_2436CBAA8();
    v61 = v66;
    v62 = v65;
    v52 = v68;
    v53 = v67;
    sub_2436CB3B8();
    v51 = v17;
    sub_2436CB3A8();
    (*(v10 + 8))(v13, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    sub_2436732AC();
    v27 = sub_2436CB698();
    v49 = v28;
    v50 = v8;
    v48 = v29 & 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E708, &qword_2436CE248);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E700, &qword_2436CE240);
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7E0, &qword_2436CE2B0);
    v33 = sub_243679F80();
    v34 = sub_243671838(&qword_27ED7E800, &qword_27ED7E7E0, &qword_2436CE2B0);
    v65 = v31;
    v66 = v32;
    v67 = v33;
    v68 = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v56;
    v36 = v51;
    LOBYTE(v32) = v48;
    v37 = v49;
    sub_2436CB6D8();
    sub_243679F68(v27, v37, v32);

    (*(v60 + 8))(v36, v57);
    v38 = v58;
    v39 = v63;
    (*(v58 + 16))(v50, v35, v63);
    swift_storeEnumTagMultiPayload();
    v65 = v30;
    v66 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_2436CB398();

    return (*(v38 + 8))(v35, v39);
  }

  else
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E708, &qword_2436CE248);
    (*(*(v41 - 8) + 16))(v8, v3, v41);
    swift_storeEnumTagMultiPayload();
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E700, &qword_2436CE240);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E7E0, &qword_2436CE2B0);
    v44 = sub_243679F80();
    v45 = sub_243671838(&qword_27ED7E800, &qword_27ED7E7E0, &qword_2436CE2B0);
    v65 = v42;
    v66 = v43;
    v67 = v44;
    v68 = v45;
    v46 = swift_getOpaqueTypeConformance2();
    v65 = v41;
    v66 = v46;
    swift_getOpaqueTypeConformance2();
    return sub_2436CB398();
  }
}

uint64_t sub_2436A2184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F928, &qword_2436D1188);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v6 = v41 - v5;
  v7 = sub_2436CB3C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2436CB3D8();
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F930, &unk_2436D1190);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v41 - v19;
  if (a1)
  {
    v42 = v20;
    v46 = v18;
    sub_2436CBE68();
    v45 = v12;
    swift_retain_n();
    v21 = sub_2436CBE58();
    v44 = v6;
    v22 = v21;
    v23 = swift_allocObject();
    v43 = v16;
    v47 = a2;
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = a1;

    v25 = sub_2436CBE58();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v24;
    v26[4] = a1;
    sub_2436CBAA8();
    v41[1] = v52;
    v41[2] = v51;
    v41[3] = v54;
    v41[4] = v53;
    sub_2436CB3B8();
    sub_2436CB3A8();
    (*(v8 + 8))(v11, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    sub_2436732AC();
    v27 = sub_2436CB698();
    v29 = v28;
    v31 = v30 & 1;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F860, &qword_2436D1068);
    v40 = sub_2436A7D08();
    v41[0] = a1;
    v32 = v15;
    v33 = v42;
    sub_2436CB6D8();
    sub_243679F68(v27, v29, v31);

    (*(v48 + 8))(v32, v45);
    v34 = v46;
    v35 = v43;
    (*(v46 + 16))(v44, v33, v43);
    swift_storeEnumTagMultiPayload();
    v51 = v39;
    v52 = v40;
    swift_getOpaqueTypeConformance2();
    sub_2436CB398();

    return (*(v34 + 8))(v33, v35);
  }

  else
  {
    sub_2436714A8(v49, v6, &qword_27ED7F860, &qword_2436D1068);
    swift_storeEnumTagMultiPayload();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F860, &qword_2436D1068);
    v38 = sub_2436A7D08();
    v51 = v37;
    v52 = v38;
    swift_getOpaqueTypeConformance2();
    return sub_2436CB398();
  }
}

uint64_t sub_2436A26F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v23);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E888, &unk_2436CE3F0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED7FF30, &unk_2436D1E00);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  sub_2436714A8(a1, v11, &qword_27ED7E888, &unk_2436CE3F0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_243671AC8(v11, &qword_27ED7E888, &unk_2436CE3F0);
    return (*(v4 + 56))(a2, 1, 1, v23);
  }

  else
  {
    v18 = sub_24367A8C0(v11, v16, qword_27ED7FF30, &unk_2436D1E00);
    v22[2] = v22;
    v19 = MEMORY[0x28223BE20](v18);
    v20 = MEMORY[0x28223BE20](v19);
    MEMORY[0x28223BE20](v20);
    v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA60, &qword_2436D1320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA68, &qword_2436D1328);
    sub_243671838(&qword_27ED7FA70, &qword_27ED7FA60, &qword_2436D1320);
    sub_2436A91C8();
    sub_2436CB468();
    v21 = v23;
    (*(v4 + 32))(a2, v7, v23);
    (*(v4 + 56))(a2, 0, 1, v21);
    return sub_243671AC8(v16, qword_27ED7FF30, &unk_2436D1E00);
  }
}

uint64_t sub_2436A2ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F108, &unk_2436D1470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  sub_2436714A8(a1, v7, &qword_27ED7F108, &unk_2436D1470);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_243671AC8(v7, &qword_27ED7F108, &unk_2436D1470);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    v15 = sub_24367A8C0(v7, v12, &qword_27ED7F110, &qword_2436CFE08);
    v16 = MEMORY[0x28223BE20](v15);
    v17 = MEMORY[0x28223BE20](v16);
    MEMORY[0x28223BE20](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA60, &qword_2436D1320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA68, &qword_2436D1328);
    sub_243671838(&qword_27ED7FA70, &qword_27ED7FA60, &qword_2436D1320);
    sub_2436A91C8();
    sub_2436CB468();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
    (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
    return sub_243671AC8(v12, &qword_27ED7F110, &qword_2436CFE08);
  }
}

uint64_t sub_2436A2E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F958, &qword_2436D1208);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  sub_2436714A8(a1, v7, &qword_27ED7F958, &qword_2436D1208);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_243671AC8(v7, &qword_27ED7F958, &qword_2436D1208);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    v15 = sub_24367A8C0(v7, v12, &unk_27ED7FE50, &qword_2436D11F0);
    v16 = MEMORY[0x28223BE20](v15);
    v17 = MEMORY[0x28223BE20](v16);
    MEMORY[0x28223BE20](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA60, &qword_2436D1320);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA68, &qword_2436D1328);
    sub_243671838(&qword_27ED7FA70, &qword_27ED7FA60, &qword_2436D1320);
    sub_2436A91C8();
    sub_2436CB468();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA58, &qword_2436D1318);
    (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
    return sub_243671AC8(v12, &unk_27ED7FE50, &qword_2436D11F0);
  }
}

uint64_t sub_2436A31F4(char *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_2436CAC58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(v7 + 16))(v10, &a1[*(v11 + 28)], v6);
  v16[0] = sub_2436CBD58();
  v16[1] = v12;
  v13 = *a1;
  v14 = *(a1 + 1);
  sub_2436732AC();

  return sub_2436CB9D8();
}

uint64_t sub_2436A3324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v33 = sub_2436CAC98();
  v31 = *(v33 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2436CAC58();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA88, &qword_2436D1330);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB18, &unk_2436D1460);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EBC0, &qword_2436CEB30);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27ED7FF30, &unk_2436D1E00);
  sub_2436714A8(v34 + *(v22 + 36), v16, &qword_27ED7FB18, &unk_2436D1460);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_243671AC8(v16, &qword_27ED7FB18, &unk_2436D1460);
    v23 = 1;
    v24 = v35;
  }

  else
  {
    sub_24367A8C0(v16, v21, &qword_27ED7EBC0, &qword_2436CEB30);
    (*(v29 + 16))(v7, v21, v30);
    v36 = sub_2436CBD58();
    v37 = v25;
    (*(v31 + 16))(v32, &v21[*(v17 + 28)], v33);
    sub_2436732AC();
    sub_2436CB5F8();
    sub_243671AC8(v21, &qword_27ED7EBC0, &qword_2436CEB30);
    v26 = v35;
    (*(v9 + 32))(v35, v12, v8);
    v23 = 0;
    v24 = v26;
  }

  return (*(v9 + 56))(v24, v23, 1, v8);
}

uint64_t sub_2436A370C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_2436CAC98();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2436CAC58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB20, &unk_2436D1480);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB28, &qword_2436D2170);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  sub_2436714A8(v28 + *(v20 + 36), v14, &qword_27ED7FB20, &unk_2436D1480);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_243671AC8(v14, &qword_27ED7FB20, &unk_2436D1480);
    v21 = 1;
    v22 = v29;
  }

  else
  {
    sub_24367A8C0(v14, v19, &qword_27ED7FB28, &qword_2436D2170);
    (*(v7 + 16))(v10, v19, v6);
    v30 = sub_2436CBD58();
    v31 = v23;
    (*(v26 + 16))(v5, &v19[*(v15 + 28)], v27);
    sub_2436732AC();
    v22 = v29;
    sub_2436CB5F8();
    sub_243671AC8(v19, &qword_27ED7FB28, &qword_2436D2170);
    v21 = 0;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA88, &qword_2436D1330);
  return (*(*(v24 - 8) + 56))(v22, v21, 1, v24);
}

uint64_t sub_2436A3A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_2436CAC98();
  v26 = *(v2 - 8);
  v27 = v2;
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2436CAC58();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE40, &unk_2436D1338);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  sub_2436714A8(v28 + *(v20 + 36), v14, &unk_27ED7FE40, &unk_2436D1338);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_243671AC8(v14, &unk_27ED7FE40, &unk_2436D1338);
    v21 = 1;
    v22 = v29;
  }

  else
  {
    sub_24367A8C0(v14, v19, &qword_27ED7F968, &qword_2436D1260);
    (*(v7 + 16))(v10, v19, v6);
    v30 = sub_2436CBD58();
    v31 = v23;
    (*(v26 + 16))(v5, &v19[*(v15 + 28)], v27);
    sub_2436732AC();
    v22 = v29;
    sub_2436CB5F8();
    sub_243671AC8(v19, &qword_27ED7F968, &qword_2436D1260);
    v21 = 0;
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA88, &qword_2436D1330);
  return (*(*(v24 - 8) + 56))(v22, v21, 1, v24);
}

uint64_t sub_2436A3DEC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for EMSStudentPickerView();
  v53 = *(v2 - 8);
  v52 = *(v53 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2436CB2E8();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v45);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F850, &qword_2436D1058);
  v8 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F858, &qword_2436D1060);
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v43[0] = v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F860, &qword_2436D1068);
  v15 = *(v14 - 8);
  v46 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F868, &qword_2436D1070);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v47 = v43 - v21;
  v48 = v1;
  sub_2436A4350(v10);
  v43[1] = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v22 = v55;
  v23 = v56;
  if (!v56)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  v55 = v22;
  v56 = v23;
  sub_2436732AC();
  v24 = sub_2436CB698();
  v26 = v25;
  v28 = v27;
  v29 = v7;
  v30 = v7;
  v31 = v45;
  (*(v4 + 104))(v30, *MEMORY[0x277CDDDC0], v45);
  sub_2436A7424();
  sub_2436CB778();
  sub_243679F68(v24, v26, v28 & 1);

  (*(v4 + 8))(v29, v31);
  sub_243671AC8(v10, &qword_27ED7F850, &qword_2436D1058);
  v32 = [objc_opt_self() systemBackgroundColor];
  v33 = sub_2436CB8E8();
  v34 = sub_2436CB538();
  (*(v49 + 32))(v18, v43[0], v50);
  v35 = &v18[*(v46 + 44)];
  *v35 = v33;
  v35[8] = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v36 = v47;
  sub_2436A2184(v55, v47);

  sub_243671AC8(v18, &qword_27ED7F860, &qword_2436D1068);
  v37 = v51;
  sub_243693E74(v48, v51);
  v38 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v39 = swift_allocObject();
  sub_2436A7C44(v37, v39 + v38);
  v40 = v54;
  sub_24367A8C0(v36, v54, &qword_27ED7F868, &qword_2436D1070);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F920, &qword_2436D1178);
  v42 = (v40 + *(result + 36));
  *v42 = 0;
  v42[1] = 0;
  v42[2] = sub_2436A7CA8;
  v42[3] = v39;
  return result;
}

uint64_t sub_2436A4350@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8E0, &qword_2436D10F0);
  v2 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v69 = &v68 - v3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F940, &qword_2436D11E8);
  v4 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v74 = (&v68 - v5);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8D0, &qword_2436D10E8);
  v6 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v77 = &v68 - v7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  v80 = *(v82 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x28223BE20](v82);
  v68 = &v68 - v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F948, &qword_2436D11F8);
  v10 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v86 = &v68 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F950, &qword_2436D1200);
  v12 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v73 = (&v68 - v13);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F880, &qword_2436D10C0);
  v14 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v76 = &v68 - v15;
  v16 = type metadata accessor for EMSStudentPickerView();
  v79 = *(v16 - 8);
  v17 = *(v79 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F958, &qword_2436D1208);
  v78 = *(v18 - 8);
  v19 = *(v78 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v81 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F890, &qword_2436D10C8);
  v23 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v25 = (&v68 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v68 - v28;
  v30 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v32 = v68;
      sub_24367A8C0(v29, v68, &unk_27ED7FE50, &qword_2436D11F0);
      sub_2436714A8(v32, v22, &unk_27ED7FE50, &qword_2436D11F0);
      (*(v80 + 56))(v22, 0, 1, v82);
      v33 = v83;
      sub_243693E74(v1, v83);
      v34 = v81;
      sub_24367A8C0(v22, v81, &qword_27ED7F958, &qword_2436D1208);
      v35 = (*(v79 + 80) + 24) & ~*(v79 + 80);
      v36 = (v17 + *(v78 + 80) + v35) & ~*(v78 + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = MEMORY[0x277D84F90];
      sub_2436A7C44(v33, v37 + v35);
      sub_24367A8C0(v34, v37 + v36, &qword_27ED7F958, &qword_2436D1208);
      v38 = v73;
      *v73 = sub_2436A9908;
      v38[1] = v37;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8B0, &qword_2436D10D8);
      sub_2436A7568();
      sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8);
      v39 = v76;
      sub_2436CB398();
      sub_2436714A8(v39, v86, &qword_27ED7F880, &qword_2436D10C0);
      swift_storeEnumTagMultiPayload();
      sub_2436A74B0();
      sub_2436A76D8();
      sub_2436CB398();

      sub_243671AC8(v39, &qword_27ED7F880, &qword_2436D10C0);
      return sub_243671AC8(v32, &unk_27ED7FE50, &qword_2436D11F0);
    }

    v48 = *v29;
    (*(v80 + 56))(v22, 1, 1, v82);
    v49 = v83;
    sub_243693E74(v1, v83);
    v50 = v81;
    sub_24367A8C0(v22, v81, &qword_27ED7F958, &qword_2436D1208);
    v51 = (*(v79 + 80) + 24) & ~*(v79 + 80);
    v52 = (v17 + *(v78 + 80) + v51) & ~*(v78 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = v48;
    sub_2436A7C44(v49, v53 + v51);
    sub_24367A8C0(v50, v53 + v52, &qword_27ED7F958, &qword_2436D1208);
    v54 = v74;
    *v74 = sub_2436A7E2C;
    v54[1] = v53;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8B0, &qword_2436D10D8);
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8);
    sub_2436A7790();
    v55 = v77;
    sub_2436CB398();
    v56 = &qword_2436D10E8;
    sub_2436714A8(v55, v86, &qword_27ED7F8D0, &qword_2436D10E8);
    swift_storeEnumTagMultiPayload();
    sub_2436A74B0();
    sub_2436A76D8();
    sub_2436CB398();

    v45 = v55;
    v46 = &qword_27ED7F8D0;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 2)
  {
    (*(v80 + 56))(v22, 1, 1, v82);
    v57 = v83;
    sub_243693E74(v1, v83);
    v58 = v81;
    sub_24367A8C0(v22, v81, &qword_27ED7F958, &qword_2436D1208);
    v59 = (*(v79 + 80) + 24) & ~*(v79 + 80);
    v60 = (v17 + *(v78 + 80) + v59) & ~*(v78 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = MEMORY[0x277D84F90];
    sub_2436A7C44(v57, v61 + v59);
    sub_24367A8C0(v58, v61 + v60, &qword_27ED7F958, &qword_2436D1208);
    v62 = sub_2436CBB48();
    v64 = v63;
    v65 = v25 + *(v70 + 36);
    sub_2436CB008();
    v66 = &v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8C0, &qword_2436D10E0) + 36)];
    *v66 = v62;
    v66[1] = v64;
    *v25 = sub_2436A9908;
    v25[1] = v61;
    v56 = &qword_2436D10C8;
    sub_2436714A8(v25, v73, &qword_27ED7F890, &qword_2436D10C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8B0, &qword_2436D10D8);
    sub_2436A7568();
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8);
    v67 = v76;
    sub_2436CB398();
    sub_2436714A8(v67, v86, &qword_27ED7F880, &qword_2436D10C0);
    swift_storeEnumTagMultiPayload();
    sub_2436A74B0();
    sub_2436A76D8();
    sub_2436CB398();
    sub_243671AC8(v67, &qword_27ED7F880, &qword_2436D10C0);
    v45 = v25;
    v46 = &qword_27ED7F890;
LABEL_8:
    v47 = v56;
    return sub_243671AC8(v45, v46, v47);
  }

  v41 = *v29;
  v42 = v29[8];
  v43 = v69;
  sub_2436A518C(*v29, v69);
  sub_24367A1F8(v41);
  sub_2436714A8(v43, v74, &qword_27ED7F8E0, &qword_2436D10F0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8B0, &qword_2436D10D8);
  sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8);
  sub_2436A7790();
  v44 = v77;
  sub_2436CB398();
  sub_2436714A8(v44, v86, &qword_27ED7F8D0, &qword_2436D10E8);
  swift_storeEnumTagMultiPayload();
  sub_2436A74B0();
  sub_2436A76D8();
  sub_2436CB398();
  sub_243671AC8(v44, &qword_27ED7F8D0, &qword_2436D10E8);
  v45 = v43;
  v46 = &qword_27ED7F8E0;
  v47 = &qword_2436D10F0;
  return sub_243671AC8(v45, v46, v47);
}

uint64_t sub_2436A4FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = type metadata accessor for EMSStudentPickerView();
  v11 = *(v10 + 20);
  sub_2436714A8(v8, v6, &unk_27ED7FEC0, &unk_2436D02E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);
  sub_2436CBA08();
  sub_243671AC8(v8, &unk_27ED7FEC0, &unk_2436D02E0);
  v12 = (a1 + *(v10 + 24));
  v13 = *(v12 + 16);
  v14 = *(v12 + 3);
  v18 = *v12;
  v19 = v13;
  v20 = v14;
  v16[1] = 0;
  v16[2] = 0;
  v17 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E828, &qword_2436D1180);
  return sub_2436CBA08();
}

uint64_t sub_2436A518C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAA8, &qword_2436D13A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAB0, &qword_2436D13A8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F8F0, &qword_2436D10F8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F900, &qword_2436D1100);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v25 - v17;
  if (a1)
  {
    if (a1 == 1)
    {
      *v10 = sub_243678D50;
      v10[1] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
      sub_2436A78D4();
      sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120);
      sub_2436CB398();
      v19 = &qword_27ED7F8F0;
      v20 = &qword_2436D10F8;
      sub_2436714A8(v14, v6, &qword_27ED7F8F0, &qword_2436D10F8);
      swift_storeEnumTagMultiPayload();
      sub_2436A781C();
      sub_2436CB398();
      v21 = v14;
    }

    else
    {
      sub_2436A69F4(a1, v25 - v17);
      v19 = &qword_27ED7F900;
      v20 = &qword_2436D1100;
      sub_2436714A8(v18, v6, &qword_27ED7F900, &qword_2436D1100);
      swift_storeEnumTagMultiPayload();
      sub_2436A781C();
      sub_2436A78D4();
      sub_2436CB398();
      v21 = v18;
    }

    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_2436A69F4(MEMORY[0x277D84F90], v25 - v17);
    sub_2436714A8(v18, v10, &qword_27ED7F900, &qword_2436D1100);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E730, &qword_2436D1120);
    sub_2436A78D4();
    v25[0] = v3;
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120);
    sub_2436CB398();
    sub_2436714A8(v14, v6, &qword_27ED7F8F0, &qword_2436D10F8);
    swift_storeEnumTagMultiPayload();
    sub_2436A781C();
    sub_2436CB398();
    sub_243671AC8(v14, &qword_27ED7F8F0, &qword_2436D10F8);
    v21 = v18;
    v22 = &qword_27ED7F900;
    v23 = &qword_2436D1100;
  }

  return sub_243671AC8(v21, v22, v23);
}

uint64_t sub_2436A55C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v73 = a4;
  v53 = a3;
  v69 = a1;
  v72 = a5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  v6 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v52 - v7;
  v8 = sub_2436CB138();
  v66 = *(v8 - 8);
  v67 = v8;
  v68 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v65 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EMSStudentPickerView();
  v11 = v10 - 8;
  v64 = *(v10 - 8);
  v63 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2436CB0E8();
  v14 = *(v13 - 8);
  v60 = v13;
  v61 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v58 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F970, &qword_2436D1268);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v52 - v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F978, &qword_2436D1270);
  v55 = *(v54 - 8);
  v24 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v26 = &v52 - v25;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F980, &unk_2436D1278);
  v27 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v29 = &v52 - v28;
  KeyPath = swift_getKeyPath();
  v57 = *(v11 + 28);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0);
  sub_2436CBA18();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F988, &qword_2436D12A0);
  (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
  v78 = a2;
  sub_2436714A8(v23, v21, &qword_27ED7F970, &qword_2436D1268);
  v74 = &v78;
  v75 = KeyPath;
  v76 = sub_2436A5D48;
  v77 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F990, &qword_2436D12A8);
  sub_243671838(&qword_27ED7F998, &qword_27ED80390, &qword_2436D1170);
  sub_2436A8788();
  sub_2436CB618();

  sub_243671AC8(v23, &qword_27ED7F970, &qword_2436D1268);

  v32 = v58;
  sub_2436CB0D8();
  sub_243671838(&qword_27ED7FA30, &qword_27ED7F978, &qword_2436D1270);
  v33 = v54;
  v34 = v60;
  sub_2436CB878();
  (*(v61 + 8))(v32, v34);
  (*(v55 + 8))(v26, v33);
  v35 = v62;
  sub_243693E74(v53, v62);
  v37 = v65;
  v36 = v66;
  v38 = v67;
  (*(v66 + 16))(v65, v69, v67);
  v39 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v40 = v36;
  v41 = (v63 + *(v36 + 80) + v39) & ~*(v36 + 80);
  v42 = swift_allocObject();
  sub_2436A7C44(v35, v42 + v39);
  (*(v40 + 32))(v42 + v41, v37, v38);
  v43 = &v29[*(v59 + 36)];
  *v43 = sub_2436A8ED0;
  v43[1] = v42;
  v43[2] = 0;
  v43[3] = 0;
  v44 = v70;
  sub_2436CB9F8();
  sub_2436A8F9C();
  sub_2436A90B8();
  v45 = v72;
  sub_2436CB868();
  sub_243671AC8(v44, &unk_27ED7FEC0, &unk_2436D02E0);
  sub_243671AC8(v29, &qword_27ED7F980, &unk_2436D1278);
  v46 = sub_2436CBB48();
  v48 = v47;
  v49 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA50, &unk_2436D1308) + 36);
  sub_2436A2E68(v73, v49);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E760, &unk_2436CE270);
  v51 = (v49 + *(result + 36));
  *v51 = v46;
  v51[1] = v48;
  return result;
}

uint64_t sub_2436A5D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v96 = a2;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9F8, &qword_2436D12E8);
  v2 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v4 = &v79 - v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAA0, &qword_2436D1350);
  v5 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v94 = &v79 - v6;
  v7 = sub_2436CB338();
  v8 = *(v7 - 8);
  v88 = v7;
  v89 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9E8, &unk_2436D12D0);
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x28223BE20](v12);
  v83 = &v79 - v14;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9E0, &qword_2436D12C8);
  v15 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v85 = &v79 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9C0, &qword_2436D12B8);
  v17 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v90 = &v79 - v18;
  v19 = sub_2436CAC58();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v79 - v26);
  sub_2436714A8(v91, &v79 - v26, &qword_27ED80390, &qword_2436D1170);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    type metadata accessor for EMSStudentViewModel();
    sub_2436A92D8(&qword_27ED7E9F0, type metadata accessor for EMSStudentViewModel);

    v29 = sub_2436CB098();
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    *&v113 = v29;
    *(&v113 + 1) = v32;
    *&v114 = v30;
    *(&v114 + 1) = v31;

    sub_2436CB028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA20, &qword_2436D1300);
    sub_243671838(&qword_27ED7FA28, &qword_27ED7FA20, &qword_2436D1300);
    sub_2436CB7B8();

    v33 = sub_2436CB568();
    sub_2436CAF88();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA18, &qword_2436D12F8) + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = sub_2436CB348();
    v44 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA08, &qword_2436D12F0) + 36)];
    *v44 = v43;
    v44[1] = sub_2436A98FC;
    v44[2] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    v45 = v94;
    v4[*(v95 + 36)] = (v113 & 1) == 0;
    sub_2436714A8(v4, v45, &qword_27ED7F9F8, &qword_2436D12E8);
    swift_storeEnumTagMultiPayload();
    sub_2436A8898();
    sub_2436A8B18();
    sub_2436CB398();

    return sub_243671AC8(v4, &qword_27ED7F9F8, &qword_2436D12E8);
  }

  else
  {
    v81 = v23;
    v82 = v20;
    (*(v20 + 32))(v23, v27, v19);
    v47 = sub_2436CB2F8();
    sub_2436A6654(v23, &v113);
    v48 = v113;
    v49 = v114;
    v80 = v11;
    v50 = *(&v114 + 1);
    v51 = v115;
    v91 = v19;
    v52 = BYTE8(v115);
    v110 = 1;
    v109 = v114;
    v108 = BYTE8(v115);
    v53 = sub_2436CB548();
    sub_2436CAF88();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    LOBYTE(v113) = 0;
    v62 = sub_2436CB558();
    sub_2436CAF88();
    v107 = 0;
    v97 = v47;
    v98[0] = 1;
    *&v98[8] = v48;
    v98[24] = v49;
    *&v99 = v50;
    *(&v99 + 1) = v51;
    LOBYTE(v100) = v52;
    BYTE8(v100) = v53;
    *&v101 = v55;
    *(&v101 + 1) = v57;
    *&v102 = v59;
    *(&v102 + 1) = v61;
    LOBYTE(v103) = 0;
    *(&v103 + 1) = *v112;
    DWORD1(v103) = *&v112[3];
    BYTE8(v103) = v62;
    HIDWORD(v103) = *&v111[3];
    *(&v103 + 9) = *v111;
    *&v104 = v63;
    *(&v104 + 1) = v64;
    *&v105 = v65;
    *(&v105 + 1) = v66;
    v106 = 0;
    sub_2436CB028();
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E920, &qword_2436CE4F8);
    v68 = sub_24367A408();
    v69 = v83;
    sub_2436CB7B8();
    v121 = v104;
    v122 = v105;
    v123 = v106;
    v117 = v100;
    v118 = v101;
    v119 = v102;
    v120 = v103;
    v113 = v97;
    v114 = *v98;
    v115 = *&v98[16];
    v116 = v99;
    sub_243671AC8(&v113, &qword_27ED7E920, &qword_2436CE4F8);
    sub_2436CB028();
    *&v97 = v67;
    *(&v97 + 1) = v68;
    swift_getOpaqueTypeConformance2();
    v70 = v85;
    v71 = v87;
    sub_2436CB758();
    (*(v86 + 8))(v69, v71);
    *(v70 + *(v84 + 36)) = 0;
    v72 = v80;
    sub_2436CB328();
    sub_2436A89E0();
    v73 = v90;
    sub_2436CB7D8();
    (*(v89 + 8))(v72, v88);
    sub_243671AC8(v70, &qword_27ED7F9E0, &qword_2436D12C8);
    LOBYTE(v47) = sub_2436CB568();
    sub_2436CAF88();
    v74 = v73 + *(v92 + 36);
    *v74 = v47;
    *(v74 + 8) = v75;
    *(v74 + 16) = v76;
    *(v74 + 24) = v77;
    *(v74 + 32) = v78;
    *(v74 + 40) = 0;
    sub_2436714A8(v73, v94, &qword_27ED7F9C0, &qword_2436D12B8);
    swift_storeEnumTagMultiPayload();
    sub_2436A8898();
    sub_2436A8B18();
    sub_2436CB398();
    sub_243671AC8(v73, &qword_27ED7F9C0, &qword_2436D12B8);
    return (*(v82 + 8))(v81, v91);
  }
}

uint64_t sub_2436A6654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2436CAC58();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v8 = sub_2436CB688();
  v10 = v9;
  v12 = v11;
  sub_2436CB598();
  v13 = sub_2436CB658();
  v15 = v14;
  v17 = v16;

  sub_243679F68(v8, v10, v12 & 1);

  sub_2436CB5B8();
  v18 = sub_2436CB628();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_243679F68(v13, v15, v17 & 1);

  *a2 = v18;
  *(a2 + 8) = v20;
  v22 &= 1u;
  *(a2 + 16) = v22;
  *(a2 + 24) = v24;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_24366C090(v18, v20, v22);

  sub_243679F68(v18, v20, v22);
}

uint64_t sub_2436A6824(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = sub_2436AC6A0();
  if (v3)
  {
    sub_2436CBBB8();
    sub_2436CB128();
  }

  return result;
}

uint64_t sub_2436A689C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v16 - v5);
  sub_2436714A8(a2, &v16 - v5, &unk_27ED7FEC0, &unk_2436D02E0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    v8 = &unk_27ED7FEC0;
    v9 = &unk_2436D02E0;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *v6;
      v12 = v10[4];
      v11 = v10[5];
      v13 = v10[6];
      v14 = swift_unknownObjectRetain();
      v12(v14);

      return swift_unknownObjectRelease();
    }

    v8 = &qword_27ED80390;
    v9 = &qword_2436D1170;
  }

  return sub_243671AC8(v6, v8, v9);
}

uint64_t sub_2436A69F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E978, &unk_2436D13B0);
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v45 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E980, &unk_2436CE530);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v45 - v10;
  v51 = sub_2436CB0E8();
  v52 = *(v51 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x28223BE20](v51);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F910, &unk_2436D1110);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F908, &qword_2436D1108);
  v20 = *(v19 - 8);
  v53 = v19;
  v54 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  KeyPath = swift_getKeyPath();
  v25 = v2 + *(type metadata accessor for EMSStudentPickerView() + 24);
  v49 = *v25;
  v48 = *(v25 + 8);
  v47 = *(v25 + 16);
  v46 = *(v25 + 24);
  v67 = v49;
  v68 = v48;
  v69 = v47;
  v70 = v46;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E828, &qword_2436D1180);
  sub_2436CBA18();
  v67 = a1;
  v50 = a1;
  v59 = &v67;
  v60 = KeyPath;
  v61 = sub_2436A7044;
  v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAB8, &qword_2436D13D8);
  sub_24367A614();
  sub_2436A9334();
  sub_2436CB618();

  sub_2436CB0D8();
  v26 = sub_243671838(&qword_27ED7F918, &qword_27ED7F910, &unk_2436D1110);
  v27 = MEMORY[0x277CDD980];
  v28 = v51;
  sub_2436CB878();
  (*(v52 + 8))(v13, v28);
  (*(v15 + 8))(v18, v14);
  v63 = v49;
  v64 = v48;
  LOBYTE(v65) = v47;
  v66 = v46;
  v29 = v55;
  sub_2436CB9F8();
  v30 = v67;
  v31 = v68;
  LOBYTE(v15) = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E6F0, &qword_2436CE0C0);
  v63 = v14;
  v64 = v28;
  v65 = v26;
  v66 = v27;
  v32 = v56;
  v33 = 1;
  swift_getOpaqueTypeConformance2();
  sub_243679E90();
  v34 = v53;
  v35 = v57;
  sub_2436CB868();
  v36 = v31;
  v37 = v58;
  sub_24367A874(v30, v36, v15);
  (*(v54 + 8))(v23, v34);
  v38 = sub_2436CBB48();
  v40 = v39;
  if (!*(v50 + 16))
  {
    v41 = v45;
    sub_2436CB478();
    (*(v37 + 32))(v29, v41, v35);
    v33 = 0;
  }

  (*(v37 + 56))(v29, v33, 1, v35);
  v42 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F900, &qword_2436D1100) + 36);
  sub_24367A8C0(v29, v42, &qword_27ED7E980, &unk_2436CE530);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E7D8, &qword_2436CE2A8);
  v44 = (v42 + *(result + 36));
  *v44 = v38;
  v44[1] = v40;
  return result;
}

uint64_t sub_2436A7044@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAE0, &qword_2436D13E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v11 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
    v28 = v6;
    type metadata accessor for EMSStudentViewModel();
    sub_2436A92D8(&qword_27ED7E9F0, type metadata accessor for EMSStudentViewModel);
    swift_retain_n();
    v12 = sub_2436CB098();
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v29 = v12;
    v30 = v15;
    v31 = v13;
    v32 = v14;

    sub_2436CB028();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA20, &qword_2436D1300);
    sub_243671838(&qword_27ED7FA28, &qword_27ED7FA20, &qword_2436D1300);
    sub_2436CB7B8();

    v16 = sub_2436CB348();
    v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB00, &unk_2436D13F8) + 36)];
    *v17 = v16;
    v17[1] = sub_2436A98FC;
    v17[2] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    LOBYTE(v16) = v29;
    v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAF0, &qword_2436D13F0) + 36)] = (v16 & 1) == 0;
    LOBYTE(v16) = sub_2436CB568();
    sub_2436CAF88();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v26 = &v8[*(v4 + 36)];
    *v26 = v16;
    *(v26 + 1) = v19;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    *(v26 + 4) = v25;
    v26[40] = 0;
    sub_24367A8C0(v8, a2, &qword_27ED7FAE0, &qword_2436D13E8);
    return (*(v28 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v9 = *(v6 + 56);

    return v9(a2, 1, 1, v4);
  }
}

void sub_2436A739C(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 16) != 255)
  {
    v3 = *a2;
    if (*a2 < 0)
    {
      v5 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
      v6 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);

      v7 = swift_unknownObjectRetain();
      v5(v7);

      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_2436A7424()
{
  result = qword_27ED7F870;
  if (!qword_27ED7F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F850, &qword_2436D1058);
    sub_2436A74B0();
    sub_2436A76D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F870);
  }

  return result;
}

unint64_t sub_2436A74B0()
{
  result = qword_27ED7F878;
  if (!qword_27ED7F878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F880, &qword_2436D10C0);
    sub_2436A7568();
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F878);
  }

  return result;
}

unint64_t sub_2436A7568()
{
  result = qword_27ED7F888;
  if (!qword_27ED7F888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F890, &qword_2436D10C8);
    sub_2436A7620();
    sub_243671838(&qword_27ED7F8B8, &qword_27ED7F8C0, &qword_2436D10E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F888);
  }

  return result;
}

unint64_t sub_2436A7620()
{
  result = qword_27ED7F898;
  if (!qword_27ED7F898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F8A0, &qword_2436D10D0);
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8);
    sub_243692EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F898);
  }

  return result;
}

unint64_t sub_2436A76D8()
{
  result = qword_27ED7F8C8;
  if (!qword_27ED7F8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F8D0, &qword_2436D10E8);
    sub_243671838(&qword_27ED7F8A8, &qword_27ED7F8B0, &qword_2436D10D8);
    sub_2436A7790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F8C8);
  }

  return result;
}

unint64_t sub_2436A7790()
{
  result = qword_27ED7F8D8;
  if (!qword_27ED7F8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F8E0, &qword_2436D10F0);
    sub_2436A781C();
    sub_2436A78D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F8D8);
  }

  return result;
}

unint64_t sub_2436A781C()
{
  result = qword_27ED7F8E8;
  if (!qword_27ED7F8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F8F0, &qword_2436D10F8);
    sub_2436A78D4();
    sub_243671838(&qword_27ED7E728, &qword_27ED7E730, &qword_2436D1120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F8E8);
  }

  return result;
}

unint64_t sub_2436A78D4()
{
  result = qword_27ED7F8F8;
  if (!qword_27ED7F8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F900, &qword_2436D1100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F908, &qword_2436D1108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E6F0, &qword_2436CE0C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F910, &unk_2436D1110);
    sub_2436CB0E8();
    sub_243671838(&qword_27ED7F918, &qword_27ED7F910, &unk_2436D1110);
    swift_getOpaqueTypeConformance2();
    sub_243679E90();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7D0, &qword_27ED7E7D8, &qword_2436CE2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F8F8);
  }

  return result;
}

uint64_t sub_2436A7A8C()
{
  v1 = type metadata accessor for EMSStudentPickerView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + v3 + 8);

  v6 = (v0 + v3 + *(v1 + 20));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *v6;
    }

    else
    {
      v9 = sub_2436CAC58();
      (*(*(v9 - 8) + 8))(v6, v9);
    }
  }

  v10 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0) + 28));

  v11 = v0 + v3 + *(v1 + 24);
  if (*(v11 + 16) != 255)
  {
    v12 = *v11;

    v13 = *(v11 + 8);
    swift_unknownObjectRelease();
  }

  v14 = *(v11 + 24);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2436A7C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EMSStudentPickerView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2436A7CA8()
{
  v1 = *(type metadata accessor for EMSStudentPickerView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2436A4FE0(v2);
}

unint64_t sub_2436A7D08()
{
  result = qword_27ED7F938;
  if (!qword_27ED7F938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F860, &qword_2436D1068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F850, &qword_2436D1058);
    sub_2436A7424();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7E7F0, &qword_27ED7E7F8, &qword_2436CE2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F938);
  }

  return result;
}

uint64_t sub_2436A7E00@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2436C4674(a1);
}

uint64_t sub_2436A7E0C(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2436C46F4(a1);
}

uint64_t objectdestroy_33Tm()
{
  v1 = type metadata accessor for EMSStudentPickerView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(*(v1 - 8) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F958, &qword_2436D1208) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);

  v9 = v0 + v3;
  v10 = *(v0 + v3 + 8);

  v11 = (v0 + v3 + *(v1 + 20));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = *v11;
    }

    else
    {
      v14 = sub_2436CAC58();
      (*(*(v14 - 8) + 8))(v11, v14);
    }
  }

  v15 = (v4 + v6) & ~v6;
  v16 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0) + 28));

  v17 = (v9 + *(v1 + 24));
  if (*(v17 + 16) != 255)
  {
    v18 = *v17;

    v19 = v17[1];
    swift_unknownObjectRelease();
  }

  v20 = v17[3];

  v21 = v0 + v15;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  if (!(*(*(v22 - 1) + 48))(v0 + v15, 1, v22))
  {
    v34 = v7;
    v23 = *(v21 + 8);

    v24 = v22[7];
    v25 = sub_2436CAC58();
    v26 = *(v25 - 8);
    v33 = *(v26 + 8);
    v33(v21 + v24, v25);
    v27 = v22[8];
    if (!(*(v26 + 48))(v21 + v27, 1, v25))
    {
      v33(v21 + v27, v25);
    }

    v28 = v21 + v22[9];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
    v7 = v34;
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {
      v33(v28, v25);
      v30 = *(v29 + 28);
      v31 = sub_2436CAC98();
      (*(*(v31 - 8) + 8))(v28 + v30, v31);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v15 + v7, v2 | v6 | 7);
}

uint64_t sub_2436A820C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EMSStudentPickerView() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F958, &qword_2436D1208) - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2436A55C4(a1, v9, v2 + v6, v10, a2);
}

uint64_t sub_2436A8300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = sub_2436CAC58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_2436714A8(a1 + *(v17 + 32), v11, &qword_27ED7E8C0, &unk_2436CE980);
  v18 = *(v13 + 48);
  if (v18(v11, 1, v12) == 1)
  {
    sub_2436CAC38();
    if (v18(v11, 1, v12) != 1)
    {
      sub_243671AC8(v11, &qword_27ED7E8C0, &unk_2436CE980);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  result = sub_2436CB688();
  *a4 = result;
  *(a4 + 8) = v20;
  *(a4 + 16) = v21 & 1;
  *(a4 + 24) = v22;
  return result;
}

uint64_t sub_2436A84E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E9E0, &qword_2436CE580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FAD0, &qword_2436D13E0);
  sub_243671838(&qword_27ED7E9E8, &qword_27ED7E9E0, &qword_2436CE580);
  sub_24367A614();
  sub_2436A93B8();
  return sub_2436CBAB8();
}

uint64_t sub_2436A861C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FA90, &qword_2436D1348);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F9B0, &qword_2436D12B0);
  sub_243671838(&qword_27ED7FA98, &qword_27ED7FA90, &qword_2436D1348);
  sub_243671838(&qword_27ED7F998, &qword_27ED80390, &qword_2436D1170);
  sub_2436A880C();
  return sub_2436CBAB8();
}

unint64_t sub_2436A8788()
{
  result = qword_27ED7F9A0;
  if (!qword_27ED7F9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F990, &qword_2436D12A8);
    sub_2436A880C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9A0);
  }

  return result;
}

unint64_t sub_2436A880C()
{
  result = qword_27ED7F9A8;
  if (!qword_27ED7F9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9B0, &qword_2436D12B0);
    sub_2436A8898();
    sub_2436A8B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9A8);
  }

  return result;
}

unint64_t sub_2436A8898()
{
  result = qword_27ED7F9B8;
  if (!qword_27ED7F9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9C0, &qword_2436D12B8);
    sub_2436A8924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9B8);
  }

  return result;
}

unint64_t sub_2436A8924()
{
  result = qword_27ED7F9C8;
  if (!qword_27ED7F9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9D0, &qword_2436D12C0);
    sub_2436A89E0();
    sub_2436A92D8(&qword_27ED7E870, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9C8);
  }

  return result;
}

unint64_t sub_2436A89E0()
{
  result = qword_27ED7F9D8;
  if (!qword_27ED7F9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9E0, &qword_2436D12C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9E8, &unk_2436D12D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7E920, &qword_2436CE4F8);
    sub_24367A408();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9D8);
  }

  return result;
}

unint64_t sub_2436A8B18()
{
  result = qword_27ED7F9F0;
  if (!qword_27ED7F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F9F8, &qword_2436D12E8);
    sub_2436A8BD0();
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7F9F0);
  }

  return result;
}

unint64_t sub_2436A8BD0()
{
  result = qword_27ED7FA00;
  if (!qword_27ED7FA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FA08, &qword_2436D12F0);
    sub_2436A95A0(&qword_27ED7FA10, &qword_27ED7FA18, &qword_2436D12F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FA00);
  }

  return result;
}

uint64_t sub_2436A8C7C()
{
  v1 = type metadata accessor for EMSStudentPickerView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 8) + 64);
  v4 = sub_2436CB138();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v20 = *(v5 + 64);
  v7 = *(v0 + v3 + 8);

  v8 = (v0 + v3 + *(v1 + 20));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *v8;
    }

    else
    {
      v11 = sub_2436CAC58();
      (*(*(v11 - 8) + 8))(v8, v11);
    }
  }

  v12 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F820, &unk_2436D0FE0) + 28));

  v13 = v0 + v3 + *(v1 + 24);
  if (*(v13 + 16) != 255)
  {
    v14 = *v13;

    v15 = *(v13 + 8);
    swift_unknownObjectRelease();
  }

  v16 = (v3 + v19 + v6) & ~v6;
  v17 = *(v13 + 24);

  (*(v5 + 8))(v0 + v16, v4);

  return MEMORY[0x2821FE8E8](v0, v16 + v20, v2 | v6 | 7);
}

uint64_t sub_2436A8ED0()
{
  v1 = *(type metadata accessor for EMSStudentPickerView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2436CB138() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2436A6824(v0 + v2);
}

unint64_t sub_2436A8F9C()
{
  result = qword_27ED7FA38;
  if (!qword_27ED7FA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F980, &unk_2436D1278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F978, &qword_2436D1270);
    sub_2436CB0E8();
    sub_243671838(&qword_27ED7FA30, &qword_27ED7F978, &qword_2436D1270);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FA38);
  }

  return result;
}

unint64_t sub_2436A90B8()
{
  result = qword_27ED7FA40;
  if (!qword_27ED7FA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27ED7FEC0, &unk_2436D02E0);
    sub_243671838(&qword_27ED7FA48, &qword_27ED80390, &qword_2436D1170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FA40);
  }

  return result;
}

unint64_t sub_2436A91C8()
{
  result = qword_27ED7FA78;
  if (!qword_27ED7FA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FA68, &qword_2436D1328);
    sub_243671838(&qword_27ED7FA80, &qword_27ED7FA88, &qword_2436D1330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FA78);
  }

  return result;
}

uint64_t sub_2436A9278()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436A92B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2436A92D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2436A9334()
{
  result = qword_27ED7FAC0;
  if (!qword_27ED7FAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FAB8, &qword_2436D13D8);
    sub_2436A93B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FAC0);
  }

  return result;
}

unint64_t sub_2436A93B8()
{
  result = qword_27ED7FAC8;
  if (!qword_27ED7FAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FAD0, &qword_2436D13E0);
    sub_2436A943C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FAC8);
  }

  return result;
}

unint64_t sub_2436A943C()
{
  result = qword_27ED7FAD8;
  if (!qword_27ED7FAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FAE0, &qword_2436D13E8);
    sub_2436A94C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FAD8);
  }

  return result;
}

unint64_t sub_2436A94C8()
{
  result = qword_27ED7FAE8;
  if (!qword_27ED7FAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FAF0, &qword_2436D13F0);
    sub_2436A95A0(&qword_27ED7FAF8, &qword_27ED7FB00, &unk_2436D13F8);
    sub_243671838(&qword_27ED7EA18, &qword_27ED7EA20, &qword_2436D12E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FAE8);
  }

  return result;
}

uint64_t sub_2436A95A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FA20, &qword_2436D1300);
    sub_243671838(&qword_27ED7FA28, &qword_27ED7FA20, &qword_2436D1300);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2436A978C()
{
  result = qword_27ED7FB30;
  if (!qword_27ED7FB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F920, &qword_2436D1178);
    sub_2436A9818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FB30);
  }

  return result;
}

unint64_t sub_2436A9818()
{
  result = qword_27ED7FB38;
  if (!qword_27ED7FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F868, &qword_2436D1070);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7F860, &qword_2436D1068);
    sub_2436A7D08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FB38);
  }

  return result;
}

uint64_t sub_2436A990C()
{
  v1 = v0;
  v2 = sub_2436CAD98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    v7 = *(v0 + 24);
  }

  else
  {
    sub_2436CAD88();
    v7 = sub_2436CAD58();
    v9 = v8;
    (*(v3 + 8))(v6, v2);
    v10 = *(v1 + 32);
    *(v1 + 24) = v7;
    *(v1 + 32) = v9;
  }

  return v7;
}

uint64_t sub_2436A9A24()
{
  result = swift_beginAccess();
  v2 = *(v0 + 56);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v0 + 56);
    }

    v4 = *(v0 + 56);

    v5 = sub_2436CC008();

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  else if (!*(v2 + 16))
  {
LABEL_5:
    sub_2436744F8(*(v0 + 40) + 16, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    (*(v7 + 8))(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
    sub_2436AA110(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0);
    sub_2436CAF68();

    swift_beginAccess();
    sub_2436CAE08();
    swift_endAccess();

    v8 = v11;
    v9 = v12;
    __swift_project_boxed_opaque_existential_0(v10, v11);
    (*(v9 + 16))(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB40, &qword_2436D1538);
    sub_2436AA110(qword_27ED7FB48, &qword_27ED7FB40, &qword_2436D1538);
    sub_2436CAF68();

    swift_beginAccess();
    sub_2436CAE08();
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  return result;
}

uint64_t sub_2436A9C64()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_2436A9CE0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSFlowViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_2436A9D1C(void *a1)
{
  v2 = v1;
  result = sub_2436AA040();
  if (result)
  {
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v5 = sub_2436CADE8();
    __swift_project_value_buffer(v5, qword_27ED7FD78);
    v6 = sub_2436CADC8();
    v7 = sub_2436CBED8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24366A000, v6, v7, "Pushing done view model due to running in the test app", v8, 2u);
      MEMORY[0x245D3CD90](v8, -1, -1);
    }

    v9 = [a1 appleID];
    v10 = sub_2436CBD38();
    v12 = v11;

    type metadata accessor for EMSDoneViewModel();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v10;
    *(v13 + 32) = v12;
    *(v13 + 40) = 0;
    v14 = *(v2 + 72);
    swift_unownedRetainStrong();

    sub_243683944(v13 | 0xC000000000000000);
  }

  else if (*(v1 + 56))
  {
    v15 = *(v1 + 64);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 16);
    swift_unknownObjectRetain();
    v17(a1, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2436A9EFC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[9];
  swift_unownedRelease();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *sub_2436A9F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v3[4] = 0;
  v3[7] = MEMORY[0x277D84FA0];
  v3[2] = a1;
  v3[3] = 0;
  v8 = type metadata accessor for EMSNavigationStackViewModel();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();

  v11 = sub_243682F1C();
  v4[6] = v11;
  sub_2436744F8(a1 + OBJC_IVAR____TtC14ClassroomUIKit25EMSConfigurationViewModel_dataSource, v14);
  type metadata accessor for EMSFlowContext();
  v12 = swift_allocObject();
  v12[7] = 0;
  v12[8] = 0;
  sub_2436854AC(v14, (v12 + 2));
  v12[7] = a2;
  v12[8] = a3;
  v12[9] = v11;
  v4[5] = v12;
  swift_unownedRetain();
  return v4;
}

uint64_t sub_2436AA040()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_2436CBD38();
    v4 = v3;

    if (v2 == 0xD000000000000028 && 0x80000002436E8180 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_2436CC2E8();
    }
  }

  return v1 & 1;
}

uint64_t sub_2436AA110(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2436AA164(uint64_t a1)
{
  result = sub_2436CAC58();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 16);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2436AA1DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_2436CAC58() - 8) + 64);
  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_2436AA338(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_2436CAC58() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (*(v9 + 64) > v8)
  {
    v8 = *(v9 + 64);
  }

  v10 = v8 + 1;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 254) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v10 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v8 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_39:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_24;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_2436AA53C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for EMSViewModelContent.EmptyDetails();
  if (v3 <= 0x3F)
  {
    result = sub_2436CBE48();
    if (v4 <= 0x3F)
    {
      result = sub_2436AA650();
      if (v5 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

ValueMetadata *sub_2436AA650()
{
  result = qword_27ED7FC50[0];
  if (!qword_27ED7FC50[0])
  {
    result = &type metadata for EMSViewModelSearchState;
    atomic_store(&type metadata for EMSViewModelSearchState, qword_27ED7FC50);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14ClassroomUIKit23EMSViewModelSearchStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2436AA698(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2436AA6EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_2436AA764(uint64_t a1)
{
  sub_2436CAC58();
  if (v2 <= 0x3F)
  {
    sub_2436AAB70();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      type metadata accessor for EMSViewModelContent.EmptyDetails.LinkAction();
      sub_2436CBF38();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2436AA834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_2436CAC58();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = *(a3 + 28);
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = *(a3 + 32);
    goto LABEL_9;
  }

  v14 = *(a3 + 16);
  type metadata accessor for EMSViewModelContent.EmptyDetails.LinkAction();
  v15 = sub_2436CBF38();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + *(a3 + 36);

  return v16(v17, a2, v15);
}

uint64_t sub_2436AA9E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2436CAC58();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = *(a4 + 28);
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E8C0, &unk_2436CE980);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = *(a4 + 32);
    goto LABEL_7;
  }

  v14 = *(a4 + 16);
  type metadata accessor for EMSViewModelContent.EmptyDetails.LinkAction();
  v15 = sub_2436CBF38();
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + *(a4 + 36);

  return v16(v17, a2, a2, v15);
}

void sub_2436AAB70()
{
  if (!qword_27ED7FCD8[0])
  {
    sub_2436CAC58();
    v0 = sub_2436CBF38();
    if (!v1)
    {
      atomic_store(v0, qword_27ED7FCD8);
    }
  }
}

uint64_t sub_2436AABD0()
{
  result = sub_2436CAC58();
  if (v1 <= 0x3F)
  {
    result = sub_2436CAC98();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2436AAC68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2436CAC58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2436CAC98();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2436AAD6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2436CAC58();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2436CAC98();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2436AAE68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2436AB7B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_2436AAE9C()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    v3 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v4 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *(v3 + 24);

    sub_2436CBD88();
  }

  else
  {
    v2 = *(v1 + 16);

    v6 = v2;
    sub_2436CBF28();
  }
}

uint64_t sub_2436AAF6C()
{
  v1 = *v0;
  sub_2436CC368();
  if (v1 < 0)
  {
    v4 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    sub_2436CBD88();
  }

  else
  {
    v2 = *(v1 + 16);

    v3 = v2;
    sub_2436CBF28();
  }

  return sub_2436CC398();
}

uint64_t sub_2436AB014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = sub_2436AB7B0(*a1);
  v5 = v4;
  if (v3 == sub_2436AB7B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2436CC2E8();
  }

  return v8 & 1;
}

uint64_t sub_2436AB09C()
{
  v0 = type metadata accessor for EMSViewModelListItem();
  v1 = sub_2436AB148(v0);
  v3 = v2;
  if (v1 == sub_2436AB148(v0) && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2436CC2E8();
  }

  return v5 & 1;
}

uint64_t sub_2436AB148(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2436CAC58();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v26 - v16;
  v18 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v2, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v20, v4);
    v22 = *(a1 + 24);
    sub_2436CC088();
    (*(v5 + 8))(v8, v4);
    return v26[0];
  }

  else
  {
    (*(v10 + 32))(v17, v20, v9);
    (*(v10 + 16))(v14, v17, v9);
    v24 = sub_2436CBD58();
    v26[0] = 0x2D656C746974;
    v26[1] = 0xE600000000000000;
    MEMORY[0x245D3C000](v24);

    v23 = v26[0];
    (*(v10 + 8))(v17, v9);
  }

  return v23;
}

uint64_t sub_2436AB420(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v7);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v2, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v14, v4);
    v15 = *(a2 + 24);
    sub_2436CC088();
    sub_2436CBD88();

    return (*(v5 + 8))(v9, v4);
  }

  else
  {
    sub_2436AB148(a2);
    sub_2436CBD88();

    return (*(v11 + 8))(v14, a2);
  }
}

uint64_t sub_2436AB61C(uint64_t a1)
{
  sub_2436CC368();
  sub_2436AB420(v3, a1);
  return sub_2436CC398();
}

uint64_t sub_2436AB66C(uint64_t a1, uint64_t a2)
{
  sub_2436CC368();
  sub_2436AB420(v4, a2);
  return sub_2436CC398();
}

uint64_t sub_2436AB6B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2436AB148(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2436AB6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_2436AB09C();
}

BOOL sub_2436AB6E4(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = sub_2436CC2E8();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t sub_2436AB7B0(uint64_t a1)
{
  if (a1 < 0)
  {
    v10 = 0x2D746E6564757473;
    v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

    MEMORY[0x245D3C000](v7, v8);
  }

  else
  {
    v10 = 0x2D657372756F63;
    v1 = *(a1 + 16);

    v2 = v1;
    v3 = [v2 description];
    v4 = sub_2436CBD38();
    v6 = v5;

    MEMORY[0x245D3C000](v4, v6);
  }

  return v10;
}

uint64_t sub_2436AB8B8(uint64_t a1)
{
  sub_2436CC368();
  if (a1 < 0)
  {
    v4 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    sub_2436CBD88();
  }

  else
  {
    v2 = *(a1 + 16);

    v3 = v2;
    sub_2436CBF28();
  }

  return sub_2436CC398();
}

uint64_t sub_2436AB964(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2436AB9C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRKUIStudentColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRKUIStudentColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2436ABBA0()
{
  result = qword_27ED7FD60;
  if (!qword_27ED7FD60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ED7FD68, qword_2436D1968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FD60);
  }

  return result;
}

unint64_t sub_2436ABC18()
{
  result = qword_27ED7FD70;
  if (!qword_27ED7FD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ED7FD70);
  }

  return result;
}

uint64_t sub_2436ABC88()
{
  v0 = sub_2436CADE8();
  __swift_allocate_value_buffer(v0, qword_27ED7FD78);
  __swift_project_value_buffer(v0, qword_27ED7FD78);
  return sub_2436CADD8();
}

uint64_t static Logger.easyMAID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ED7DF10 != -1)
  {
    swift_once();
  }

  v2 = sub_2436CADE8();
  v3 = __swift_project_value_buffer(v2, qword_27ED7FD78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2436ABDCC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v31 = a4;
  v32 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v31 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v31 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v31 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v31 - v23;
  sub_2436714A8(v5, &v31 - v23, a2, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_243671AC8(v24, a2, a3);
      sub_2436714A8(a1, v13, a2, a3);
      v26 = swift_getEnumCaseMultiPayload() == 2;
      v27 = v13;
    }

    else
    {
      sub_2436714A8(a1, v22, a2, a3);
      v26 = swift_getEnumCaseMultiPayload() == 3;
      v27 = v22;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    sub_243671AC8(v24, a2, a3);
    sub_2436714A8(a1, v16, a2, a3);
    v26 = swift_getEnumCaseMultiPayload() == 1;
    v27 = v16;
LABEL_9:
    sub_243671AC8(v27, a2, a3);
    return v26;
  }

  sub_2436714A8(a1, v19, a2, a3);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_243671AC8(v19, a2, a3);
    sub_243671AC8(v24, v31, v32);
    return 0;
  }

  else
  {
    v30 = v31;
    v29 = v32;
    sub_243671AC8(v19, v31, v32);
    sub_243671AC8(v24, v30, v29);
    return 1;
  }
}

uint64_t sub_2436AC06C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436AC0E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

void sub_2436AC17C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  LOBYTE(a1) = sub_2436ABDCC(a1, &qword_27ED7F960, &qword_2436D1210, &unk_27ED7FE50, &qword_2436D11F0);
  sub_243671AC8(v10, &qword_27ED7F960, &qword_2436D1210);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 2)
    {
      sub_243671AC8(v8, &qword_27ED7F960, &qword_2436D1210);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v29) = 1;

      sub_2436CAEE8();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v29) = 0;

      sub_2436CAEE8();
      sub_243671AC8(v8, &qword_27ED7F960, &qword_2436D1210);
    }

    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v12 = sub_2436CADE8();
    __swift_project_value_buffer(v12, qword_27ED7FD78);

    v13 = sub_2436CADC8();
    v14 = sub_2436CBED8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136446722;
      v17 = [*(v2 + 16) stringValue];
      v18 = sub_2436CBD38();
      v20 = v19;

      v21 = sub_2436AFA70(v18, v20, &v31);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAED8();

      if (v30)
      {
        v22 = v29;
      }

      else
      {
        v22 = 7104878;
      }

      if (v30)
      {
        v23 = v30;
      }

      else
      {
        v23 = 0xE300000000000000;
      }

      v24 = sub_2436AFA70(v22, v23, &v31);

      *(v15 + 14) = v24;
      *(v15 + 22) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAED8();

      v25 = sub_2436CBD68();
      v27 = sub_2436AFA70(v25, v26, &v31);

      *(v15 + 24) = v27;
      _os_log_impl(&dword_24366A000, v13, v14, "New student picker: %{public}s name: %{public}s content: %{public}s", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D3CD90](v16, -1, -1);
      MEMORY[0x245D3CD90](v15, -1, -1);
    }
  }
}

uint64_t sub_2436AC628()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();
}

uint64_t sub_2436AC6A0()
{
  v1 = v0;
  v61 = sub_2436CAC58();
  v2 = *(v61 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v61);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v59 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FEC0, &unk_2436D02E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v52 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v52 - v20);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  v22 = &qword_27ED7F000;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_243671AC8(v21, &qword_27ED7F960, &qword_2436D1210);
    goto LABEL_17;
  }

  v52 = v17;
  v53 = v1;
  v23 = *v21;
  v24 = *(v23 + 16);
  v22 = v62;
  if (!v24)
  {
LABEL_16:

    v42 = v52;
    (v22[7])(v52, 1, 1, v63);
    sub_243671AC8(v42, &unk_27ED7FEC0, &unk_2436D02E0);
    v1 = v53;
    v22 = &qword_27ED7F000;
LABEL_17:
    if (qword_27ED7DF10 != -1)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  v25 = 0;
  v1 = (v53 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_scrollToUserIdentifierPrivate);
  v26 = v23 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v55 = (v2 + 16);
  v56 = (v2 + 32);
  v54 = (v2 + 8);
  v57 = v26;
  v58 = v11;
  while (v25 < *(v23 + 16))
  {
    sub_2436714A8(v26 + v22[9] * v25, v13, &qword_27ED80390, &qword_2436D1170);
    sub_2436714A8(v13, v11, &qword_27ED80390, &qword_2436D1170);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *(*v11 + 16);
      v27 = *(*v11 + 24);

      v22 = v62;

      v29 = v1[1];
      if (!v29)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v30 = v1;
      v31 = v59;
      v32 = v11;
      v33 = v13;
      v34 = v24;
      v35 = v23;
      v36 = v22;
      v37 = v61;
      (*v56)(v59, v32, v61);
      (*v55)(v60, v31, v37);
      v38 = sub_2436CBD58();
      v64 = 0x2D656C746974;
      v65 = 0xE600000000000000;
      MEMORY[0x245D3C000](v38);

      v28 = v64;
      v27 = v65;
      v39 = v31;
      v1 = v30;
      v40 = v37;
      v22 = v36;
      v23 = v35;
      v24 = v34;
      v13 = v33;
      v26 = v57;
      v11 = v58;
      (*v54)(v39, v40);
      v29 = v1[1];
      if (!v29)
      {
LABEL_4:

        goto LABEL_5;
      }
    }

    if (v28 == *v1 && v29 == v27)
    {

LABEL_22:

      v50 = v52;
      sub_24367A8C0(v13, v52, &qword_27ED80390, &qword_2436D1170);
      (v22[7])(v50, 0, 1, v63);
      sub_243671AC8(v50, &unk_27ED7FEC0, &unk_2436D02E0);
      result = *v1;
      v51 = v1[1];
      *v1 = 0;
      v1[1] = 0;
      return result;
    }

    v41 = sub_2436CC2E8();

    if (v41)
    {
      goto LABEL_22;
    }

LABEL_5:
    ++v25;
    sub_243671AC8(v13, &qword_27ED80390, &qword_2436D1170);
    if (v24 == v25)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_24:
  swift_once();
LABEL_18:
  v43 = sub_2436CADE8();
  __swift_project_value_buffer(v43, qword_27ED7FD78);
  v44 = sub_2436CADC8();
  v45 = sub_2436CBEC8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_24366A000, v44, v45, "Student for scrollToUserIdentifierPrivate does not exist", v46, 2u);
    MEMORY[0x245D3CD90](v46, -1, -1);
  }

  v47 = (v1 + v22[440]);
  v48 = v47[1];
  *v47 = 0;
  v47[1] = 0;

  return 0;
}

uint64_t sub_2436ACCF0(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_2436CAEE8();
  }

  return result;
}

uint64_t sub_2436ACD94(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (v1)
    {
      if (v1 == 1)
      {
        sub_2436ACF84(0);
      }

      v4 = [v1 courses];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7F5E0, &unk_2436D1DF0);
      v5 = sub_2436CBE08();

      if (v5 >> 62)
      {
        goto LABEL_19;
      }

      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_7:
        v7 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v1 = MEMORY[0x245D3C2F0](v7, v5);
            v8 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:

              goto LABEL_21;
            }
          }

          else
          {
            if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_19:
              v6 = sub_2436CC008();
              if (!v6)
              {
                break;
              }

              goto LABEL_7;
            }

            v1 = *(v5 + 8 * v7 + 32);
            swift_unknownObjectRetain();
            v8 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_16;
            }
          }

          sub_243671B28(0, &unk_27ED7FF20, 0x277D82BB8);
          v9 = [v1 identifier];
          v10 = *(v3 + 16);
          v11 = sub_2436CBF18();

          if (v11)
          {
            goto LABEL_17;
          }

          swift_unknownObjectRelease();
          ++v7;
        }

        while (v8 != v6);
      }

      v1 = 0;
    }

LABEL_21:
    sub_2436ACF84(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2436ACF84(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v72 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v72 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  v14 = *(*(v75 - 1) + 64);
  MEMORY[0x28223BE20](v75);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FE80, &qword_2436D1CB8);
  v15 = *(*(v74 - 1) + 64);
  MEMORY[0x28223BE20](v74);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE88, &qword_2436D1CC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v72 - v19;
  if (a1)
  {
    v73 = v18;
    v21 = [swift_unknownObjectRetain() name];
    v22 = sub_2436CBD38();
    v24 = v23;

    swift_getKeyPath();
    swift_getKeyPath();
    v76 = v22;
    v77 = v24;

    sub_2436CAEE8();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    v76 = a1;
    swift_unknownObjectRetain();

    sub_2436CAEE8();
    v25 = type metadata accessor for EMSCourseStudentsResultProvider();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = swift_unknownObjectRetain();
    v29 = sub_2436BFE44(v28);
    v30 = type metadata accessor for EMSSearcher();
    v31 = *(v30 + 48);
    v32 = *(v30 + 52);
    v33 = swift_allocObject();
    v34 = sub_2436B121C(v29, v33);
    v35 = *(v2 + 32);
    *(v2 + 32) = v34;
    swift_retain_n();

    v36 = [a1 name];
    v37 = sub_2436CBD38();
    v39 = v38;

    v40 = type metadata accessor for EMSSearchBarViewModel();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    v43 = sub_24368A650(v34, v37, v39, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v76 = v43;

    sub_2436CAEE8();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE98, &unk_2436D1D60);
    sub_2436CAEA8();
    swift_endAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
    sub_2436CAEA8();
    swift_endAccess();
    sub_243671838(&qword_27ED7FEA8, &qword_27ED7FE80, &qword_2436D1CB8);
    sub_243671838(&qword_27ED7FEB0, &qword_27ED7EC40, &unk_2436CED90);
    sub_2436CADF8();
    v44 = swift_allocObject();
    swift_weakInit();
    v45 = swift_allocObject();
    *(v45 + 16) = sub_2436B21EC;
    *(v45 + 24) = v44;
    sub_243671838(&qword_27ED7FEB8, &unk_27ED7FE88, &qword_2436D1CC0);
    v46 = sub_2436CAF68();
    swift_unknownObjectRelease();

    (*(v73 + 8))(v20, v16);
    v47 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_searcherCancellable);
    *(v2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_searcherCancellable) = v46;
  }

  else
  {
    v75 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v76 = 0;
    swift_unknownObjectRetain();

    sub_2436CAEE8();
    if (qword_27ED7DF10 != -1)
    {
      swift_once();
    }

    v49 = sub_2436CADE8();
    __swift_project_value_buffer(v49, qword_27ED7FD78);

    v50 = sub_2436CADC8();
    v51 = sub_2436CBED8();

    v52 = os_log_type_enabled(v50, v51);
    v73 = v4;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v78 = v74;
      *v53 = 138543618;
      v55 = v11;
      v56 = *(v2 + 16);
      *(v53 + 4) = v56;
      *v54 = v56;
      *(v53 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      v57 = v56;
      v11 = v55;
      sub_2436CAED8();

      if (v77)
      {
        v58 = v76;
      }

      else
      {
        v58 = 7104878;
      }

      if (v77)
      {
        v59 = v77;
      }

      else
      {
        v59 = 0xE300000000000000;
      }

      v60 = sub_2436AFA70(v58, v59, &v78);

      *(v53 + 14) = v60;
      _os_log_impl(&dword_24366A000, v50, v51, "Course has been removed id: %{public}@ name: %{public}s", v53, 0x16u);
      sub_243671AC8(v54, &unk_27ED7ECA0, &unk_2436CEDC0);
      MEMORY[0x245D3CD90](v54, -1, -1);
      v61 = v74;
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x245D3CD90](v61, -1, -1);
      MEMORY[0x245D3CD90](v53, -1, -1);
    }

    v62 = *(v2 + 32);
    *(v2 + 32) = 0;

    swift_getKeyPath();
    swift_getKeyPath();
    v76 = 0;

    sub_2436CAEE8();
    v63 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_searcherCancellable);
    *(v2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_searcherCancellable) = 0;

    if (qword_27ED7DEE0 != -1)
    {
      swift_once();
    }

    v64 = qword_27ED83B50;
    v65 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_noLongerAvailable;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
    v67 = v66[7];
    v68 = sub_2436CAC58();
    v69 = *(v68 - 8);
    (*(v69 + 16))(&v13[v67], v64 + v65, v68);
    (*(v69 + 56))(&v13[v66[8]], 1, 1, v68);
    v70 = v66[9];
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
    (*(*(v71 - 8) + 56))(&v13[v70], 1, 1, v71);
    *v13 = 0xD000000000000015;
    *(v13 + 1) = 0x80000002436E8320;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436714A8(v13, v75, &qword_27ED7F960, &qword_2436D1210);

    sub_2436CAEE8();
    sub_2436AC17C(v11);
    sub_243671AC8(v11, &qword_27ED7F960, &qword_2436D1210);
    sub_243671AC8(v13, &qword_27ED7F960, &qword_2436D1210);
    return sub_2436AEA7C(0);
  }
}

uint64_t sub_2436ADA0C(uint64_t result, uint64_t a2, int a3)
{
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = swift_unknownObjectRetain();
      sub_2436ADA9C(v5, a2, a3);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2436ADA9C(char *a1, uint64_t a2, int a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v33 - v17;
  if (!a2)
  {
    sub_2436ADDB0(a1, &v33 - v17);
LABEL_21:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436714A8(v18, v11, &qword_27ED7F960, &qword_2436D1210);

    sub_2436CAEE8();
    sub_2436AC17C(v14);
    sub_243671AC8(v14, &qword_27ED7F960, &qword_2436D1210);
    return sub_243671AC8(v18, &qword_27ED7F960, &qword_2436D1210);
  }

  v19 = *(a2 + 16);
  if (!v19)
  {
    *v18 = (a3 & 1) != 0;
    v18[8] = 0;
LABEL_20:
    swift_storeEnumTagMultiPayload();
    goto LABEL_21;
  }

  v20 = 0;
  v21 = a2 + 40;
  v22 = MEMORY[0x277D84F90];
LABEL_4:
  v23 = (v21 + 16 * v20);
  v24 = v20;
  while (1)
  {
    if (v19 == v24)
    {
      *v18 = v22;
      v18[8] = a3 & 1;
      goto LABEL_20;
    }

    if (v24 >= v19)
    {
      break;
    }

    v20 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_23;
    }

    v25 = *v23;
    v23 += 16;
    ++v24;
    if (v25 == 1)
    {
      v34 = v21;
      v35 = a3;
      v36 = v16;
      v26 = *(v23 - 3);
      ObjectType = swift_getObjectType();
      v28 = swift_unknownObjectRetain_n();
      v33 = sub_2436B1530(v28, v3, ObjectType);
      swift_unknownObjectRelease();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2436C1690(0, *(v22 + 16) + 1, 1, v22);
        v22 = result;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        result = sub_2436C1690((v29 > 1), v30 + 1, 1, v22);
        v22 = result;
      }

      v21 = v34;
      v31 = v33 | 0x8000000000000000;
      *(v22 + 16) = v30 + 1;
      v32 = v22 + 24 * v30;
      *(v32 + 32) = v31;
      *(v32 + 40) = v26;
      *(v32 + 48) = 1;
      v16 = v36;
      a3 = v35;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2436ADDB0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v70 = sub_2436CAC58();
  v72 = *(v70 - 8);
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v70);
  KeyPath = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FE38, &qword_2436D1B30);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v62 - v9;
  v10 = sub_2436CAC98();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v62 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE40, &unk_2436D1338);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v69 = &v62 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  v64 = *(v73 - 8);
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v73);
  v18 = (&v62 - v17);
  sub_2436AEA7C(a1);
  v19 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier);
  v20 = *(v19 + 16);
  if (v20)
  {
    v63 = KeyPath;
    KeyPath = a1;
    v21 = sub_2436C4670(v20, 0);
    v65 = sub_2436BA9AC(v75, v21 + 32, v20, v19);
    a1 = v75[4];
    swift_bridgeObjectRetain_n();
    sub_243685438();
    if (v65 != v20)
    {
      __break(1u);
      goto LABEL_43;
    }

    a1 = KeyPath;
    KeyPath = v63;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  v75[0] = v21;
  sub_2436AF4EC(v75);

  v22 = v75[0];
  if ((v75[0] & 0x8000000000000000) == 0 && (v75[0] & 0x4000000000000000) == 0)
  {
    v65 = *(v75[0] + 16);
    v23 = v65;
    if (v65)
    {
      goto LABEL_8;
    }

LABEL_39:

    if (qword_27ED7DEE0 == -1)
    {
LABEL_40:
      v54 = [a1 name];
      sub_2436CBD38();

      sub_24369AAC8();

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
      v56 = v71;
      v57 = v72;
      v58 = v70;
      (*(v72 + 56))(&v71[v55[8]], 1, 1, v70);
      v59 = v55[9];
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
      (*(*(v60 - 8) + 56))(&v56[v59], 1, 1, v60);
      strcpy(v56, "person.2.slash");
      v56[15] = -18;
      (*(v57 + 32))(&v56[v55[7]], KeyPath, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_43:
    swift_once();
    goto LABEL_40;
  }

LABEL_37:
  v65 = sub_2436CC008();
  if (v65 <= 0)
  {
    goto LABEL_39;
  }

  v23 = sub_2436CC008();
LABEL_8:
  v24 = 0;
  v25 = v22 & 0xC000000000000001;
  while (v23 != v24)
  {
    if (v25)
    {
      a1 = MEMORY[0x245D3C2F0](v24, v22);
      if (__OFADD__(v24, 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v24 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      a1 = *(v22 + 8 * v24 + 32);

      if (__OFADD__(v24, 1))
      {
LABEL_17:
        __break(1u);
        break;
      }
    }

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    sub_2436CAED8();

    ++v24;
    if ((v75[0] & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE60, &qword_2436D1B80);
      v32 = *(v64 + 72);
      v33 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v34 = swift_allocObject();
      v35 = v34;
      *(v34 + 16) = xmmword_2436CFC20;
      if (qword_27ED7DEE0 != -1)
      {
        swift_once();
      }

      (*(v72 + 16))(v35 + v33, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_subtitle, v70);
      swift_storeEnumTagMultiPayload();
      v75[0] = v35;
      v74 = MEMORY[0x277D84F90];
      v36 = v65;
      sub_2436C1A28(0, v65, 0);
      v37 = v36;
      v38 = 0;
      v39 = v74;
      do
      {
        if (v25)
        {
          v40 = MEMORY[0x245D3C2F0](v38, v22);
        }

        else
        {
          v41 = *(v22 + 8 * v38 + 32);
        }

        *v18 = v40;
        swift_storeEnumTagMultiPayload();
        v74 = v39;
        v43 = *(v39 + 16);
        v42 = *(v39 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_2436C1A28(v42 > 1, v43 + 1, 1);
          v37 = v65;
          v39 = v74;
        }

        ++v38;
        *(v39 + 16) = v43 + 1;
        sub_24367A8C0(v18, v39 + v33 + v43 * v32, &qword_27ED80390, &qword_2436D1170);
      }

      while (v37 != v38);

      sub_2436AE944(v39);
      *v71 = v75[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
      return swift_storeEnumTagMultiPayload();
    }
  }

  v26 = v66;
  sub_2436CAC88();
  v28 = v67;
  v27 = v68;
  if ((*(v67 + 48))(v26, 1, v68) == 1)
  {
    sub_243671AC8(v26, &qword_27ED7FE38, &qword_2436D1B30);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
    (*(*(v29 - 8) + 56))(v69, 1, 1, v29);
    v31 = v70;
    v30 = v71;
  }

  else
  {
    v44 = *(v28 + 32);
    v45 = v62;
    v44(v62, v26, v27);
    v31 = v70;
    v30 = v71;
    if (qword_27ED7DEE0 != -1)
    {
      swift_once();
    }

    v46 = v69;
    (*(v72 + 16))(v69, qword_27ED83B50 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_learnMoreButtonTitle, v31);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F968, &qword_2436D1260);
    v44((v46 + *(v47 + 28)), v45, v27);
    (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  }

  if (qword_27ED7DEE0 != -1)
  {
    swift_once();
  }

  v48 = qword_27ED83B50;
  v49 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_notAvailableForThisClassTitle;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE50, &qword_2436D11F0);
  v51 = v72;
  v52 = *(v72 + 16);
  v52(&v30[v50[7]], v48 + v49, v31);
  v53 = v50[8];
  v52(&v30[v53], v48 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings20StudentPickerStrings_allStudentAccountsAreFederatedSubtitle, v31);
  (*(v51 + 56))(&v30[v53], 0, 1, v31);
  strcpy(v30, "person.2.slash");
  v30[15] = -18;
  sub_24367A8C0(v69, &v30[v50[9]], &unk_27ED7FE40, &unk_2436D1338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  return swift_storeEnumTagMultiPayload();
}

BOOL sub_2436AE820(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  sub_2436732AC();
  v4 = sub_2436CBF58();

  return v4 == -1;
}

uint64_t sub_2436AE944(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2436C14A0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80390, &qword_2436D1170);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2436AEA7C(void *a1)
{
  if (a1)
  {
    v1 = [a1 trustedUsers];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F5F0, &qword_2436D0780);
    v2 = sub_2436CBE08();

    if (!(v2 >> 62))
    {
      goto LABEL_3;
    }

LABEL_24:
    v3 = sub_2436CC008();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_25:
    v5 = MEMORY[0x277D84F98];
LABEL_26:

    v33 = *(v38 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier);
    *(v38 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier) = v5;
  }

  v2 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_24;
  }

LABEL_3:
  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_4:
  v4 = 0;
  v37 = v2 & 0xC000000000000001;
  v35 = v2 & 0xFFFFFFFFFFFFFF8;
  v5 = MEMORY[0x277D84F98];
  v36 = v2;
  while (v37)
  {
    v10 = MEMORY[0x245D3C2F0](v4, v2);
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_29;
    }

LABEL_13:
    v12 = v3;
    ObjectType = swift_getObjectType();
    v14 = [v10 identifier];
    v15 = sub_2436CBD38();
    v17 = v16;

    v18 = swift_unknownObjectRetain();
    v19 = sub_2436B1530(v18, v38, ObjectType);
    swift_unknownObjectRelease();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = sub_24366FE3C(v15, v17);
    v23 = v5[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_30;
    }

    v27 = v22;
    if (v5[3] < v26)
    {
      sub_2436B85B8(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_24366FE3C(v15, v17);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_33;
      }

LABEL_18:
      if (v27)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v32 = v21;
    sub_2436B8CD8();
    v21 = v32;
    if (v27)
    {
LABEL_5:
      v6 = v21;

      v7 = v5[7];
      v8 = *(v7 + 8 * v6);
      *(v7 + 8 * v6) = v19;
      swift_unknownObjectRelease();

      goto LABEL_6;
    }

LABEL_19:
    v5[(v21 >> 6) + 8] |= 1 << v21;
    v29 = (v5[6] + 16 * v21);
    *v29 = v15;
    v29[1] = v17;
    *(v5[7] + 8 * v21) = v19;
    swift_unknownObjectRelease();
    v30 = v5[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_31;
    }

    v5[2] = v31;
LABEL_6:
    ++v4;
    v3 = v12;
    v9 = v11 == v12;
    v2 = v36;
    if (v9)
    {
      goto LABEL_26;
    }
  }

  if (v4 >= *(v35 + 16))
  {
    goto LABEL_32;
  }

  v10 = *(v2 + 8 * v4 + 32);
  swift_unknownObjectRetain();
  v11 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_13;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_2436CC318();
  __break(1u);
  return result;
}

uint64_t sub_2436AED88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E400, &qword_2436CF400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v22 - v4;
  v6 = type metadata accessor for EMSUserInterfaceRecord();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = *(result + 16);
    v14 = [a1 identifier];
    v15 = sub_2436CBD38();
    v17 = v16;

    v18 = v10 + *(v6 + 24);
    sub_2436CAD28();
    *v10 = v13;
    v10[1] = v15;
    v10[2] = v17;
    sub_2436744F8(*(v12 + 24) + 16, v22);
    v19 = v23;
    v20 = v24;
    __swift_project_boxed_opaque_existential_0(v22, v23);
    sub_243682B6C(v10, v5);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v20 + 72))(v5, v19, v20);
    sub_243671AC8(v5, &qword_27ED7E400, &qword_2436CF400);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v21 = *(v12 + 24);
    sub_2436A9D1C(a1);
    sub_243670FCC(v10);
  }

  return result;
}

uint64_t sub_2436AEFB8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__course;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE98, &unk_2436D1D60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__showSearchBar;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__title;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__searchBar;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED8, &qword_2436D1DC8);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__internalSearchBar, v10);
  v12 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__content;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEE0, &qword_2436D1DD0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_scrollToUserIdentifierPrivate + 8);

  v15 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cancellables);

  v16 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_searcherCancellable);

  v17 = *(v0 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier);

  return v0;
}

uint64_t sub_2436AF1E0()
{
  sub_2436AEFB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for EMSStudentPickerViewModel()
{
  result = qword_27ED7FDE8;
  if (!qword_27ED7FDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2436AF28C()
{
  sub_2436803FC(319, &qword_27ED7FDF8, &unk_27ED7FE00, &unk_2436D1A80);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_2436803AC();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_2436803FC(319, &unk_27ED7FE10, &unk_27ED80380, &qword_2436CF6B0);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_2436803FC(319, &qword_27ED7FE20, &qword_27ED7FE28, &unk_2436D1A90);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_2436803FC(319, &qword_27ED7FE30, &qword_27ED7F960, &qword_2436D1210);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_2436AF4AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EMSStudentPickerViewModel();
  result = sub_2436CAE38();
  *a1 = result;
  return result;
}

uint64_t sub_2436AF4EC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2436C466C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2436B0018(v6);
  return sub_2436CC0D8();
}

uint64_t sub_2436AF590@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2436AF610(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436AF694(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();

  return sub_2436CAEE8();
}

double sub_2436AF710@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_2436AF790(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436AF83C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();
}

uint64_t sub_2436AF8B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_2436714A8(a1, &v16 - v12, &qword_27ED7F960, &qword_2436D1210);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436714A8(v13, v8, &qword_27ED7F960, &qword_2436D1210);

  sub_2436CAEE8();
  sub_2436AC17C(v11);
  sub_243671AC8(v11, &qword_27ED7F960, &qword_2436D1210);
  return sub_243671AC8(v13, &qword_27ED7F960, &qword_2436D1210);
}

uint64_t sub_2436AFA70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2436AFB3C(v11, 0, 0, 1, a1, a2);
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
    sub_243670ED0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2436AFB3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2436AFC48(a5, a6);
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
    result = sub_2436CC0B8();
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

uint64_t sub_2436AFC48(uint64_t a1, unint64_t a2)
{
  v4 = sub_2436AFC94(a1, a2);
  sub_2436AFDC4(&unk_285674798);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2436AFC94(uint64_t a1, unint64_t a2)
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

  v6 = sub_2436AFEB0(v5, 0);
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

  result = sub_2436CC0B8();
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
        v10 = sub_2436CBDB8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2436AFEB0(v10, 0);
        result = sub_2436CC068();
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

uint64_t sub_2436AFDC4(uint64_t result)
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

  result = sub_2436AFF24(result, v12, 1, v3);
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

void *sub_2436AFEB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE70, &unk_2436D1CA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2436AFF24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE70, &unk_2436D1CA8);
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

uint64_t sub_2436B0018(uint64_t *a1)
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
        type metadata accessor for EMSStudentViewModel();
        v6 = sub_2436CBE28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2436B02D4(v8, v9, a1, v4);
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
    return sub_2436B011C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2436B011C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v15 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_5:
    v14 = a3;
    v6 = *(v15 + 8 * a3);
    v12 = v5;
    v13 = v4;
    while (1)
    {
      v7 = *v4;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_2436CAED8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAED8();

      sub_2436732AC();
      v8 = sub_2436CBF58();

      if (v8 != -1)
      {
LABEL_4:
        a3 = v14 + 1;
        v4 = v13 + 1;
        v5 = v12 - 1;
        if (v14 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v15)
      {
        break;
      }

      v9 = *v4;
      *v4 = v4[1];
      v4[1] = v9;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2436B02D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_90:
    v5 = *v8;
    if (!*v8)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_92;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v91 = result;
  while (1)
  {
    v12 = v10;
    if (v10 + 1 >= v9)
    {
      v16 = v10 + 1;
    }

    else
    {
      v5 = v10;
      v13 = *v7;
      v100 = *(*v7 + 8 * (v10 + 1));
      v97 = v9;
      v99[0] = *(v13 + 8 * v10);

      v95 = sub_2436AE820(&v100, v99);
      if (v6)
      {
      }

      v88 = v11;

      v14 = v10 + 2;
      v90 = v5;
      v93 = 8 * v5;
      v15 = (v13 + 8 * v5 + 16);
      while (1)
      {
        v16 = v97;
        if (v97 == v14)
        {
          break;
        }

        v18 = *(v15 - 1);
        v17 = *v15;
        swift_getKeyPath();
        v11 = 0;
        swift_getKeyPath();

        sub_2436CAED8();

        swift_getKeyPath();
        swift_getKeyPath();
        sub_2436CAED8();

        v5 = v99[1];
        sub_2436732AC();
        v19 = sub_2436CBF58();

        ++v14;
        ++v15;
        if (((v95 ^ (v19 != -1)) & 1) == 0)
        {
          v16 = v14 - 1;
          break;
        }
      }

      v7 = a3;
      v12 = v90;
      v8 = v91;
      v20 = v93;
      if (v95)
      {
        if (v16 < v90)
        {
          goto LABEL_122;
        }

        if (v90 < v16)
        {
          v21 = 8 * v16 - 8;
          v22 = v16;
          v23 = v90;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v25 = *(v24 + v20);
              *(v24 + v20) = *(v24 + v21);
              *(v24 + v21) = v25;
            }

            ++v23;
            v21 -= 8;
            v20 += 8;
          }

          while (v23 < v22);
        }
      }

      v11 = v88;
    }

    v26 = v7[1];
    if (v16 < v26)
    {
      if (__OFSUB__(v16, v12))
      {
        goto LABEL_119;
      }

      if (v16 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_120;
        }

        if (v12 + a4 >= v26)
        {
          v27 = v7[1];
        }

        else
        {
          v27 = v12 + a4;
        }

        if (v27 < v12)
        {
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          result = sub_2436C3A7C(v11);
          v11 = result;
LABEL_92:
          v101 = v11;
          v81 = *(v11 + 2);
          if (v81 >= 2)
          {
            while (*v7)
            {
              v82 = *&v11[16 * v81];
              v83 = *&v11[16 * v81 + 24];
              sub_2436B0AC8((*v7 + 8 * v82), (*v7 + 8 * *&v11[16 * v81 + 16]), (*v7 + 8 * v83), v5);
              if (v6)
              {
              }

              if (v83 < v82)
              {
                goto LABEL_116;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_2436C3A7C(v11);
              }

              if (v81 - 2 >= *(v11 + 2))
              {
                goto LABEL_117;
              }

              v84 = &v11[16 * v81];
              *v84 = v82;
              *(v84 + 1) = v83;
              v101 = v11;
              result = sub_2436C39F0(v81 - 1);
              v11 = v101;
              v81 = *(v101 + 2);
              if (v81 <= 1)
              {
              }
            }

            goto LABEL_127;
          }
        }

        if (v16 != v27)
        {
          break;
        }
      }
    }

    v10 = v16;
    if (v16 < v12)
    {
      goto LABEL_118;
    }

LABEL_30:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2436C1290(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v29 = *(v11 + 2);
    v28 = *(v11 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_2436C1290((v28 > 1), v29 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v30;
    v31 = &v11[16 * v29];
    *(v31 + 4) = v12;
    *(v31 + 5) = v10;
    v32 = *v8;
    if (!v32)
    {
      goto LABEL_128;
    }

    if (v29)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v11 + 4);
          v34 = *(v11 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_49:
          if (v36)
          {
            goto LABEL_107;
          }

          v49 = &v11[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_110;
          }

          v55 = &v11[16 * v5 + 32];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_114;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v59 = &v11[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_63:
        if (v54)
        {
          goto LABEL_109;
        }

        v62 = &v11[16 * v5];
        v64 = *(v62 + 4);
        v63 = *(v62 + 5);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_112;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_70:
        v70 = v5 - 1;
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
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
          goto LABEL_121;
        }

        if (!*v7)
        {
          goto LABEL_125;
        }

        v71 = *&v11[16 * v70 + 32];
        v72 = *&v11[16 * v5 + 40];
        sub_2436B0AC8((*v7 + 8 * v71), (*v7 + 8 * *&v11[16 * v5 + 32]), (*v7 + 8 * v72), v32);
        if (v6)
        {
        }

        if (v72 < v71)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2436C3A7C(v11);
        }

        if (v70 >= *(v11 + 2))
        {
          goto LABEL_104;
        }

        v73 = &v11[16 * v70];
        *(v73 + 4) = v71;
        *(v73 + 5) = v72;
        v101 = v11;
        result = sub_2436C39F0(v5);
        v11 = v101;
        v30 = *(v101 + 2);
        if (v30 <= 1)
        {
          goto LABEL_3;
        }
      }

      v37 = &v11[16 * v30 + 32];
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_105;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_106;
      }

      v44 = &v11[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_108;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_111;
      }

      if (v48 >= v40)
      {
        v66 = &v11[16 * v5 + 32];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_115;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v9 = v7[1];
    v8 = v91;
    if (v10 >= v9)
    {
      goto LABEL_90;
    }
  }

  v89 = v11;
  v85 = v6;
  v74 = *v7;
  v75 = (*v7 + 8 * v16 - 8);
  v76 = v12 - v16;
  v92 = v27;
LABEL_81:
  v96 = v75;
  v98 = v16;
  v5 = *(v74 + 8 * v16);
  v94 = v76;
  while (1)
  {
    v77 = *v75;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_2436CAED8();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    sub_2436732AC();
    v78 = sub_2436CBF58();

    if (v78 != -1)
    {
LABEL_80:
      v16 = v98 + 1;
      v75 = v96 + 1;
      v10 = v92;
      v76 = v94 - 1;
      if (v98 + 1 != v92)
      {
        goto LABEL_81;
      }

      v6 = v85;
      v7 = a3;
      v11 = v89;
      v8 = v91;
      if (v92 < v12)
      {
        goto LABEL_118;
      }

      goto LABEL_30;
    }

    if (!v74)
    {
      break;
    }

    v79 = *v75;
    v5 = v75[1];
    *v75 = v5;
    v75[1] = v79;
    --v75;
    if (__CFADD__(v76++, 1))
    {
      goto LABEL_80;
    }
  }

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
  return result;
}

uint64_t sub_2436B0AC8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = __dst;
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      v13 = a4;
      memmove(a4, __dst, 8 * v8);
      a4 = v13;
    }

    v31 = &a4[8 * v8];
    v14 = a4;
    if (v6 < 8)
    {
LABEL_10:
      v5 = v12;
      goto LABEL_36;
    }

    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_10;
      }

      v30 = v5;
      v16 = *v5;
      v17 = *v14;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_2436CAED8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAED8();

      sub_2436732AC();
      v18 = sub_2436CBF58();

      if (v18 != -1)
      {
        break;
      }

      v15 = v5;
      v5 += 8;
      if (v12 != v30)
      {
        goto LABEL_12;
      }

LABEL_13:
      v12 += 8;
      if (v14 >= v31)
      {
        goto LABEL_10;
      }
    }

    v15 = v14;
    v19 = v12 == v14;
    v14 += 8;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v12 = *v15;
    goto LABEL_13;
  }

  v14 = a4;
  if (a4 != __src || &__src[8 * v11] <= a4)
  {
    memmove(a4, __src, 8 * v11);
  }

  v31 = &v14[8 * v11];
  if (v9 >= 8 && v5 > __dst)
  {
    v28 = v14;
LABEL_25:
    v20 = (v5 - 8);
    v4 -= 8;
    v21 = v31;
    v29 = v5 - 8;
    do
    {
      v22 = v4 + 8;
      v23 = *(v21 - 1);
      v21 -= 8;
      v24 = *v20;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_2436CAED8();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAED8();

      sub_2436732AC();
      v25 = sub_2436CBF58();

      if (v25 == -1)
      {
        if (v22 != v5)
        {
          *v4 = *v29;
        }

        v14 = v28;
        if (v31 <= v28 || (v5 -= 8, v29 <= __dst))
        {
          v5 = v29;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v22 != v31)
      {
        *v4 = *v21;
      }

      v4 -= 8;
      v31 = v21;
      v14 = v28;
      v20 = (v5 - 8);
    }

    while (v21 > v28);
    v31 = v21;
  }

LABEL_36:
  if (v5 != v14 || v5 >= &v14[(v31 - v14 + (v31 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v5, v14, 8 * ((v31 - v14) / 8));
  }

  return 1;
}

uint64_t sub_2436B0F14(uint64_t a1, uint64_t a2)
{
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  v4 = *(v20[0] - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v20[0]);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v23[3] = type metadata accessor for EMSUnionedResultProvider();
  v23[4] = &off_285676E10;
  v23[0] = a1;
  v16 = OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher__phase;
  v20[1] = 0;
  v21 = 0;
  sub_2436CAE98();
  (*(v12 + 32))(a2 + v16, v15, v11);
  v17 = (a2 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_query);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  sub_2436744F8(v23, a2 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider);
  v22 = *(a1 + 48);
  swift_beginAccess();

  sub_2436CAEA8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  sub_243671838(&qword_27ED7EF48, &unk_27ED7ED80, &qword_2436CF070);
  sub_2436CAF78();

  v18 = v20[0];
  (*(v4 + 16))(v8, v10, v20[0]);
  swift_beginAccess();
  sub_2436CAEB8();
  swift_endAccess();
  (*(v4 + 8))(v10, v18);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return a2;
}

uint64_t sub_2436B121C(uint64_t a1, uint64_t a2)
{
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC40, &unk_2436CED90);
  v4 = *(v20[0] - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v20[0]);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7EC50, &qword_2436CF6A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v23[3] = type metadata accessor for EMSCourseStudentsResultProvider();
  v23[4] = &off_285676D90;
  v23[0] = a1;
  v16 = OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher__phase;
  v20[1] = 0;
  v21 = 0;
  sub_2436CAE98();
  (*(v12 + 32))(a2 + v16, v15, v11);
  v17 = (a2 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_query);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  sub_2436744F8(v23, a2 + OBJC_IVAR____TtC14ClassroomUIKit11EMSSearcher_resultProvider);
  v22 = *(a1 + OBJC_IVAR____TtC14ClassroomUIKit31EMSCourseStudentsResultProvider_phaseSubject);
  swift_beginAccess();

  sub_2436CAEA8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED80, &qword_2436CF070);
  sub_243671838(&qword_27ED7EF48, &unk_27ED7ED80, &qword_2436CF070);
  sub_2436CAF78();

  v18 = v20[0];
  (*(v4 + 16))(v8, v10, v20[0]);
  swift_beginAccess();
  sub_2436CAEB8();
  swift_endAccess();
  (*(v4 + 8))(v10, v18);
  __swift_destroy_boxed_opaque_existential_0(v23);
  return a2;
}

char *sub_2436B1530(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 identifier];
  v7 = sub_2436CBD38();
  v9 = v8;

  v10 = *(a2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier);
  if (*(v10 + 16) && (v11 = *(a2 + OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier), , v12 = sub_24366FE3C(v7, v9), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v10 + 56) + 8 * v12);

    sub_24369E568(a1, v15);
    return v15;
  }

  else
  {

    v17 = swift_allocObject();
    swift_weakInit();
    v18 = type metadata accessor for EMSStudentViewModel();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    v21 = swift_allocObject();
    v22 = swift_unknownObjectRetain();
    v23 = sub_24369E7E0(v22, sub_2436B16CC, v17, v21, a3);
    swift_unknownObjectRelease();

    return v23;
  }
}

uint64_t sub_2436B1694()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_2436B180C(void *a1, void *a2)
{
  v3 = v2;
  v69 = a1;
  v70 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEE8, &qword_2436D1DD8);
  v4 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v57 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEF0, &qword_2436D1DE0);
  v6 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v68 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEF8, &qword_2436D1DE8);
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FEE0, &qword_2436D1DD0);
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v12);
  v65 = &v57 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F960, &qword_2436D1210);
  v15 = *(*(v64 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v64);
  v63 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED8, &qword_2436D1DC8);
  v60 = *(v19 - 8);
  v61 = v19;
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
  v57 = *(v58 - 8);
  v23 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v25 = &v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7EC08, &unk_2436CF690);
  v59 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v57 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE98, &unk_2436D1D60);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v57 - v34;
  *(v3 + 4) = 0;
  v36 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__course;
  v77 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7FE00, &unk_2436D1A80);
  sub_2436CAE98();
  (*(v32 + 32))(&v3[v36], v35, v31);
  v37 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__showSearchBar;
  LOBYTE(v77) = 0;
  sub_2436CAE98();
  (*(v27 + 32))(&v3[v37], v30, v26);
  v38 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__title;
  v77 = 0;
  v78 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED80380, &qword_2436CF6B0);
  sub_2436CAE98();
  (*(v57 + 32))(&v3[v38], v25, v58);
  v39 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__searchBar;
  v77 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FE28, &unk_2436D1A90);
  sub_2436CAE98();
  v40 = v61;
  v41 = *(v60 + 32);
  v41(&v3[v39], v22, v61);
  v42 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__internalSearchBar;
  v77 = 0;
  sub_2436CAE98();
  v41(&v3[v42], v22, v40);
  v43 = OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel__content;
  v44 = v62;
  swift_storeEnumTagMultiPayload();
  sub_2436714A8(v44, v63, &qword_27ED7F960, &qword_2436D1210);
  v45 = v65;
  sub_2436CAE98();
  sub_243671AC8(v44, &qword_27ED7F960, &qword_2436D1210);
  (*(v66 + 32))(&v3[v43], v45, v67);
  v46 = &v3[OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_scrollToUserIdentifierPrivate];
  *v46 = 0;
  *(v46 + 1) = 0;
  *&v3[OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cancellables] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_searcherCancellable] = 0;
  *&v3[OBJC_IVAR____TtC14ClassroomUIKit25EMSStudentPickerViewModel_cachedStudentViewModelsByIdentifier] = MEMORY[0x277D84F98];
  v47 = v69;
  v48 = v70;
  *(v3 + 2) = v70;
  *(v3 + 3) = v47;
  swift_beginAccess();

  v49 = v48;
  sub_2436CAEA8();
  swift_endAccess();
  swift_beginAccess();
  sub_2436CAEA8();
  swift_endAccess();
  sub_243671838(&qword_27ED7FF00, &qword_27ED7FEF0, &qword_2436D1DE0);
  sub_243671838(&qword_27ED7FF08, &qword_27ED7FEE8, &qword_2436D1DD8);
  v50 = v71;
  sub_2436CADF8();
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_2436B2278;
  *(v52 + 24) = v51;
  sub_243671838(&unk_27ED7FF10, &qword_27ED7FEF8, &qword_2436D1DE8);

  v53 = v75;
  sub_2436CAF68();

  (*(v76 + 8))(v50, v53);
  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  v54 = v47[5];
  v55 = v47[6];
  __swift_project_boxed_opaque_existential_0(v47 + 2, v54);
  v77 = (*(v55 + 8))(v54, v55);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ED7ED70, &qword_2436CEDB0);
  sub_243671838(&qword_27ED7EC60, &unk_27ED7ED70, &qword_2436CEDB0);
  sub_2436CAF68();

  swift_beginAccess();
  sub_2436CAE08();
  swift_endAccess();

  return v3;
}

uint64_t sub_2436B21F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16));
}

uint64_t sub_2436B2280()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2436B22B8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1));
}

uint64_t sub_2436B22F8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2436B2340(uint64_t *a1, int a2)
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

uint64_t sub_2436B2388(uint64_t result, int a2, int a3)
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

uint64_t sub_2436B2420(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  v20 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_2436CBB88();
}

uint64_t sub_2436B25F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v21 = a5;
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  sub_2436CBA88();
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  v9 = sub_2436CBA68();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v22 = a3;
  v23 = a4;
  v24 = a1;
  v25 = a2;
  sub_2436CB2F8();
  sub_2436CBA58();
  swift_getWitnessTable();
  v17 = v10[2];
  v17(v16, v14, v9);
  v18 = v10[1];
  v18(v14, v9);
  v17(v21, v16, v9);
  return (v18)(v16, v9);
}

uint64_t sub_2436B2840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  v9 = sub_2436CBA88();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a1;
  v21[7] = a2;
  sub_2436CB358();
  sub_2436CBA78();
  WitnessTable = swift_getWitnessTable();
  v18 = v10[2];
  v18(v16, v14, v9);
  v19 = v10[1];
  v19(v14, v9);
  v25 = 0;
  v26 = 1;
  v27[0] = &v25;
  v18(v14, v16, v9);
  v23 = 0;
  v24 = 1;
  v27[1] = v14;
  v27[2] = &v23;
  v22[0] = MEMORY[0x277CE1180];
  v22[1] = v9;
  v22[2] = MEMORY[0x277CE1180];
  v21[8] = MEMORY[0x277CE1170];
  v21[9] = WitnessTable;
  v21[10] = MEMORY[0x277CE1170];
  sub_2436B2420(v27, 3uLL, v22);
  v19(v16, v9);
  return (v19)(v14, v9);
}

uint64_t sub_2436B2AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v17 - v12;
  v11();
  v14 = v6[2];
  v14(v13, v10, a3);
  v15 = v6[1];
  v15(v10, a3);
  v21 = 0;
  v22 = 1;
  v23[0] = &v21;
  v14(v10, v13, a3);
  v19 = 0;
  v20 = 1;
  v23[1] = v10;
  v23[2] = &v19;
  v18[0] = MEMORY[0x277CE1180];
  v18[1] = a3;
  v18[2] = MEMORY[0x277CE1180];
  v17[1] = MEMORY[0x277CE1170];
  v17[2] = a4;
  v17[3] = MEMORY[0x277CE1170];
  sub_2436B2420(v23, 3uLL, v18);
  v15(v13, a3);
  return (v15)(v10, a3);
}

uint64_t sub_2436B2C9C(uint64_t *a1)
{
  v1 = *a1;
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  sub_2436CBA88();
  swift_getTupleTypeMetadata3();
  sub_2436CBB78();
  swift_getWitnessTable();
  sub_2436CBA68();

  return swift_getWitnessTable();
}

uint64_t sub_2436B2D94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  *a2 = v5;
  return result;
}

uint64_t sub_2436B2E14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2436CAEE8();
}

uint64_t sub_2436B2EF4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436B2F90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

uint64_t sub_2436B3018()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436CAED8();

  return v1;
}

id sub_2436B30CC(uint64_t *a1, Class *a2, SEL *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v10 = [objc_allocWithZone(*a2) init];
    [v10 *a3];
    v11 = *(v4 + v5);
    *(v4 + v5) = v10;
    v7 = v10;

    v6 = 0;
  }

  v12 = v6;
  return v7;
}

uint64_t sub_2436B3158(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2436B3244(v1, v2, v3);
  }

  return result;
}

uint64_t sub_2436B31D0(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2436B42A4(v1);
  }

  return result;
}

uint64_t sub_2436B3244(unint64_t KeyPath, unint64_t a2, uint64_t a3)
{
  v81 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F128, &qword_2436D1EF0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v74 - v11);
  if (KeyPath)
  {
    if (KeyPath == 1)
    {
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436714A8(v12, v10, &qword_27ED7F128, &qword_2436D1EF0);

      sub_2436CAEE8();
      v13 = v12;
      return sub_243671AC8(v13, &qword_27ED7F128, &qword_2436D1EF0);
    }

    if (KeyPath >> 62)
    {
      if (sub_2436CC008())
      {
        v14 = sub_2436CC008();
        if (!v14)
        {
          v74 = a3;
          v75 = v12;
          v82 = v6;
          v83 = v10;
          v76 = v3;
          v16 = MEMORY[0x277D84F90];
LABEL_21:
          v27 = sub_2436BBD54(v16);

          swift_getKeyPath();
          swift_getKeyPath();
          sub_2436CAED8();

          v28 = v85 + 56;
          v29 = 1 << *(v85 + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v31 = v30 & *(v85 + 56);
          v12 = ((v29 + 63) >> 6);
          v32 = v27 + 56;
          v77 = v85;

          v33 = 0;
          v78 = MEMORY[0x277D84F90];
          v80 = v27;
          while (v31)
          {
            v45 = v31;
LABEL_34:
            v31 = (v45 - 1) & v45;
            if (*(v27 + 16))
            {
              v79 = (v45 - 1) & v45;
              v47 = (*(v77 + 48) + ((v33 << 10) | (16 * __clz(__rbit64(v45)))));
              v48 = *v47;
              v49 = v47[1];
              v50 = *(v27 + 40);
              sub_2436CC368();
              sub_2436CC388();
              swift_bridgeObjectRetain_n();
              sub_2436CBD88();
              v51 = sub_2436CC398();
              v52 = -1 << *(v27 + 32);
              v53 = v51 & ~v52;
              if ((*(v32 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
              {
                v54 = ~v52;
                v55 = *(v80 + 48);
                while (1)
                {
                  v56 = (v55 + 16 * v53);
                  v57 = v56[1];
                  if (v57)
                  {
                    v58 = *v56 == v48 && v57 == v49;
                    if (v58 || (sub_2436CC2E8() & 1) != 0)
                    {
                      break;
                    }
                  }

                  v53 = (v53 + 1) & v54;
                  if (((*(v32 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v78 = sub_2436C17AC(0, *(v78 + 2) + 1, 1, v78);
                }

                v27 = v80;
                v60 = *(v78 + 2);
                v59 = *(v78 + 3);
                if (v60 >= v59 >> 1)
                {
                  v78 = sub_2436C17AC((v59 > 1), v60 + 1, 1, v78);
                }

                v61 = v78;
                *(v78 + 2) = v60 + 1;
                v62 = &v61[16 * v60];
                *(v62 + 4) = v48;
                *(v62 + 5) = v49;
                v31 = v79;
              }

              else
              {
LABEL_27:
                swift_bridgeObjectRelease_n();
                v31 = v79;
                v27 = v80;
              }
            }
          }

          while (1)
          {
            v46 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v46 >= v12)
            {
              break;
            }

            v45 = *(v28 + 8 * v46);
            ++v33;
            if (v45)
            {
              v33 = v46;
              goto LABEL_34;
            }
          }

          v63 = sub_2436BBE00(v78);

          swift_getKeyPath();
          swift_getKeyPath();
          v85 = v63;

          sub_2436CAEE8();
          v10 = 0x27ED7D000;
          if ((v81 & 1) == 0)
          {
            v64 = 0;
            v66 = 0;
            goto LABEL_53;
          }

          if (qword_27ED7DEE8 != -1)
          {
            goto LABEL_65;
          }

          while (1)
          {
            v64 = sub_24369C648();
            v66 = v65;
LABEL_53:
            swift_getKeyPath();
            swift_getKeyPath();
            v85 = v64;
            v86 = v66;

            sub_2436CAEE8();
            v84 = sub_2436B4024(KeyPath);
            sub_2436B3FAC(&v84);
            v12 = v84;
            if (v84 >> 62)
            {
LABEL_63:
              v67 = sub_2436CC008();
            }

            else
            {
              v67 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            swift_getKeyPath();
            swift_getKeyPath();
            v85 = v67;

            sub_2436CAEE8();
            if (v10[477] != -1)
            {
              swift_once();
            }

            v68 = sub_24369CA08();
            v70 = v69;
            swift_getKeyPath();
            swift_getKeyPath();
            v85 = v68;
            v86 = v70;

            sub_2436CAEE8();
            swift_getKeyPath();
            KeyPath = swift_getKeyPath();
            v10 = &v85;
            v71 = sub_2436CAEC8();
            if (!__OFADD__(*v72, 1))
            {
              break;
            }

            __break(1u);
LABEL_65:
            swift_once();
          }

          ++*v72;
          v71(&v85, 0);

          v73 = v75;
          *v75 = v12;
          swift_storeEnumTagMultiPayload();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_2436714A8(v73, v83, &qword_27ED7F128, &qword_2436D1EF0);

          sub_2436CAEE8();
          v13 = v73;
          return sub_243671AC8(v13, &qword_27ED7F128, &qword_2436D1EF0);
        }

LABEL_6:
        v74 = a3;
        v75 = v12;
        v82 = v6;
        v83 = v10;
        v76 = v3;
        v85 = MEMORY[0x277D84F90];
        sub_2436C1A48(0, v14 & ~(v14 >> 63), 0);
        if (v14 < 0)
        {
          __break(1u);
          goto LABEL_63;
        }

        v15 = 0;
        v16 = v85;
        do
        {
          if ((KeyPath & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x245D3C2F0](v15, KeyPath);
          }

          else
          {
            v17 = *(KeyPath + 8 * v15 + 32);
          }

          v18 = v17;
          v19 = [v17 identifier];
          if (v19)
          {
            v20 = v19;
            v21 = sub_2436CBD38();
            v23 = v22;
          }

          else
          {

            v21 = 0;
            v23 = 0;
          }

          v85 = v16;
          v25 = *(v16 + 16);
          v24 = *(v16 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_2436C1A48((v24 > 1), v25 + 1, 1);
            v16 = v85;
          }

          ++v15;
          *(v16 + 16) = v25 + 1;
          v26 = v16 + 16 * v25;
          *(v26 + 32) = v21;
          *(v26 + 40) = v23;
        }

        while (v14 != v15);
        goto LABEL_21;
      }
    }

    else
    {
      v14 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_6;
      }
    }
  }

  v82 = v6;
  v83 = v10;
  v81 = 0x80000002436E84B0;
  if (qword_27ED7DEE8 != -1)
  {
LABEL_61:
    swift_once();
  }

  v34 = qword_27ED83B58;
  v35 = OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_emptyDescriptionTitle;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7F110, &qword_2436CFE08);
  v37 = v36[7];
  v38 = sub_2436CAC58();
  v39 = *(v38 - 8);
  v40 = *(v39 + 16);
  v40(v12 + v37, v34 + v35, v38);
  v41 = v36[8];
  v40(v12 + v41, v34 + OBJC_IVAR____TtCC14ClassroomUIKit10EMSStrings14HistoryStrings_emptyDescriptionSubtitle, v38);
  (*(v39 + 56))(v12 + v41, 0, 1, v38);
  v42 = v36[9];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FB28, &qword_2436D2170);
  (*(*(v43 - 8) + 56))(v12 + v42, 1, 1, v43);
  *v12 = 0xD000000000000011;
  v12[1] = v81;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2436714A8(v12, v83, &qword_27ED7F128, &qword_2436D1EF0);

  sub_2436CAEE8();
  sub_243671AC8(v12, &qword_27ED7F128, &qword_2436D1EF0);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v85) = 0;

  return sub_2436CAEE8();
}

uint64_t sub_2436B3C80(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7E4F0, &qword_2436CF910);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v27[-v9];
  v11 = sub_2436CAD38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v27[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v27[-v17];
  v19 = *a1;
  v20 = *a2;
  v21 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
  swift_beginAccess();
  sub_2436714A8(v19 + v21, v10, &qword_27ED7E4F0, &qword_2436CF910);
  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) == 1)
  {
    sub_2436CACC8();
    if (v22(v10, 1, v11) != 1)
    {
      sub_243671AC8(v10, &qword_27ED7E4F0, &qword_2436CF910);
    }
  }

  else
  {
    (*(v12 + 32))(v18, v10, v11);
  }

  v23 = OBJC_IVAR____TtC14ClassroomUIKit23EMSHistoryItemViewModel_assignmentDate;
  swift_beginAccess();
  sub_2436714A8(v20 + v23, v8, &qword_27ED7E4F0, &qword_2436CF910);
  if (v22(v8, 1, v11) == 1)
  {
    sub_2436CACC8();
    if (v22(v8, 1, v11) != 1)
    {
      sub_243671AC8(v8, &qword_27ED7E4F0, &qword_2436CF910);
    }
  }

  else
  {
    (*(v12 + 32))(v16, v8, v11);
  }

  v24 = sub_2436CACE8();
  v25 = *(v12 + 8);
  v25(v16, v11);
  v25(v18, v11);
  return v24 & 1;
}

uint64_t sub_2436B3FAC(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_2436BAC60(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_2436B65FC(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_2436B4024(unint64_t result)
{
  v2 = v1;
  v3 = result;
  if (result >> 62)
  {
    result = sub_2436CC008();
    v4 = result;
    v5 = &unk_27ED83000;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:
    v7 = MEMORY[0x277D84F98];
LABEL_19:
    v26 = OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_itemsByAssignmentIdentifier;
    v27 = *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_itemsByAssignmentIdentifier);
    *(v2 + OBJC_IVAR____TtC14ClassroomUIKit19EMSHistoryViewModel_itemsByAssignmentIdentifier) = v7;

    v28 = *(v2 + v26);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = sub_2436C4670(*(v28 + 16), 0);
      v31 = sub_2436BA9B0(&v33, (v30 + 32), v29, v28);

      sub_243685438();
      if (v31 == v29)
      {
        return v30;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = &unk_27ED83000;
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v6 = 0;
    v32 = v5[399];
    v7 = MEMORY[0x277D84F98];
    while (1)
    {
      v8 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x245D3C2F0](v6, v3) : *(v3 + 8 * v6 + 32);
      v9 = v8;
      v10 = [v8 identifier];
      if (v10)
      {
        break;
      }

LABEL_6:
      if (v4 == ++v6)
      {
        goto LABEL_19;
      }
    }

    v11 = v10;
    v12 = sub_2436CBD38();
    v14 = v13;

    v15 = *(v2 + v32);
    if (*(v15 + 16))
    {
      v16 = *(v2 + v32);

      v17 = sub_24366FE3C(v12, v14);
      if (v18)
      {
        v19 = *(*(v15 + 56) + 8 * v17);

LABEL_16:
        sub_24368B818(v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v7;
        sub_2436B886C(v19, v12, v14, isUniquelyReferenced_nonNull_native);

        goto LABEL_6;
      }
    }

    v20 = sub_2436B308C();
    v21 = sub_2436B30AC();
    v22 = type metadata accessor for EMSHistoryItemViewModel();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v19 = sub_24368B444(v12, v14, v20, v21);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2436B42A4(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80078, &qword_2436D2030);
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v50 = &v42 - v7;
  MEMORY[0x28223BE20](v6);
  v47 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80080, &qword_2436D2038);
  v51 = *(v9 - 8);
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80088, &qword_2436D2040);
  v13 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80090, &qword_2436D2048);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED80098, &qword_2436D2050);
  v52 = *(v16 - 8);
  v17 = *(v52 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800A0, &qword_2436D2058);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v25 = &v42 - v24;
  if (a1)
  {
    v44 = v2;
    v45 = v23;
    v46 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2436CAED8();

    if (v54)
    {
    }

    else
    {
      v43 = v16;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800A8, &qword_2436D20F0);
      sub_2436CAEA8();
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800B0, &qword_2436D20F8);
      sub_2436CAEA8();
      swift_endAccess();
      sub_243671838(&qword_27ED800B8, &qword_27ED80080, &qword_2436D2038);
      sub_2436CAF38();
      (*(v51 + 8))(v12, v9);
      sub_243671838(&qword_27ED800C0, &qword_27ED80090, &qword_2436D2048);
      sub_243671838(&qword_27ED800C8, &qword_27ED80088, &qword_2436D2040);
      sub_2436CADF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED800D0, &unk_2436D2100);
      sub_243671838(&qword_27ED800D8, &qword_27ED80098, &qword_2436D2050);
      v27 = v43;
      sub_2436CAF38();
      (*(v52 + 8))(v19, v27);
      sub_243671838(&qword_27ED800E0, &qword_27ED800A0, &qword_2436D2058);
      v28 = v46;
      v29 = sub_2436CAF08();
      (*(v45 + 8))(v25, v28);
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      swift_weakInit();
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = type metadata accessor for EMSSelectionToolbarViewModel();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = sub_2436A0BA0(v29, sub_2436BBF60, v30, sub_2436BBF90, v31, sub_2436BBF98, v32, sub_2436B4FF4, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      v54 = v36;

      sub_2436CAEE8();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2436CAED8();

      if (v54)
      {
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ED7FED0, &qword_2436D1DC0);
        v37 = v47;
        sub_2436CAEA8();
        swift_endAccess();

        swift_beginAccess();
        v38 = v50;
        sub_2436CAEA8();
        swift_endAccess();
        sub_243671838(&qword_27ED800E8, &qword_27ED80078, &qword_2436D2030);
        v39 = v44;
        sub_2436CAF78();
        v40 = v48;
        v41 = *(v48 + 8);
        v41(v37, v39);
        (*(v40 + 16))(v49, v38, v39);
        swift_beginAccess();
        sub_2436CAEB8();
        swift_endAccess();
        return (v41)(v38, v39);
      }
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v54 = 0;
    v55 = 0;

    sub_2436CAEE8();
    swift_getKeyPath();
    swift_getKeyPath();
    v54 = 0;

    return sub_2436CAEE8();
  }

  return result;
}

__n128 sub_2436B4C4C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2436B4C58()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = sub_2436CAEC8();
    v3 = v2;
    v4 = *v2;

    *v3 = MEMORY[0x277D84FA0];
    v1(v5, 0);
  }

  return result;
}