uint64_t sub_215404DD0(uint64_t a1, NSObject *a2)
{
  v3 = sub_21549FB6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215462E58(a2);
  sub_2153F37B0(v6);
  sub_21549FB5C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_215404EB8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

void sub_215404FE8()
{
  type metadata accessor for RecordingView();
  v0 = sub_21549EE6C();
  if (v0)
  {
    v1 = v0;
    sub_2154764A0();
  }
}

uint64_t sub_215405058()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

uint64_t sub_215405154()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

void *sub_21540523C(void *a1)
{
  type metadata accessor for RecordingView();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      v4 = [*(*a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
      if (v4)
      {
        v5 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE00);
        sub_2154A0DEC();
        [v3 presentSharingViewForAttachment:v5 fromSourceView:v6];

        return swift_unknownObjectRelease();
      }

      else
      {
        result = swift_unknownObjectRelease();
        __break(1u);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_21540536C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

uint64_t sub_215405460()
{
  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  return sub_2154A0DFC();
}

uint64_t sub_2154054F8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

uint64_t sub_2154055E0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF30);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = v49 - v6;
  v7 = type metadata accessor for RecordingView();
  v8 = *(v7 - 8);
  v49[1] = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED0);
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v53 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = v49 - v14;
  MEMORY[0x28223BE20](v15);
  v58 = v49 - v16;
  MEMORY[0x28223BE20](v17);
  v56 = v49 - v18;
  MEMORY[0x28223BE20](v19);
  v62 = v49 - v20;
  MEMORY[0x28223BE20](v21);
  v61 = v49 - v22;
  MEMORY[0x28223BE20](v23);
  v60 = v49 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v49 - v26;
  v50 = *a1;

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
  sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
  v57 = v27;
  sub_2154A0E3C();
  sub_21539B7B8(a1, v10);
  v29 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v30 = swift_allocObject();
  sub_21541C94C(v10, v30 + v29, type metadata accessor for RecordingView);
  sub_2154A0E3C();
  sub_21539B7B8(a1, v10);
  v31 = swift_allocObject();
  sub_21541C94C(v10, v31 + v29, type metadata accessor for RecordingView);
  sub_2154A0E3C();
  sub_21539B7B8(a1, v10);
  v32 = swift_allocObject();
  sub_21541C94C(v10, v32 + v29, type metadata accessor for RecordingView);
  v49[0] = v28;
  sub_2154A0E3C();
  swift_getKeyPath();
  v33 = v50;
  v63 = v50;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v34 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
  swift_beginAccess();
  if (*(v33 + v34) == 1)
  {
    sub_21539B7B8(a1, v10);
    v35 = swift_allocObject();
    sub_21541C94C(v10, v35 + v29, type metadata accessor for RecordingView);
    v36 = v56;
    sub_2154A0E3C();
    v37 = v51;
    v38 = v52;
    (*(v51 + 32))(v52, v36, v11);
    v39 = 0;
  }

  else
  {
    v39 = 1;
    v37 = v51;
    v38 = v52;
    v36 = v56;
  }

  (*(v37 + 56))(v38, v39, 1, v11);
  v40 = *(v37 + 16);
  v40(v36, v57, v11);
  v41 = v58;
  v40(v58, v60, v11);
  v40(v59, v61, v11);
  v42 = v53;
  v40(v53, v62, v11);
  v43 = v55;
  sub_215324EEC(v38, v55, &qword_27CA5CF30);
  v44 = v54;
  v40(v54, v36, v11);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF38);
  v40(&v44[v45[12]], v41, v11);
  v46 = v59;
  v40(&v44[v45[16]], v59, v11);
  v40(&v44[v45[20]], v42, v11);
  sub_215324EEC(v43, &v44[v45[24]], &qword_27CA5CF30);
  sub_2151ADCD8(v38, &qword_27CA5CF30);
  v47 = *(v37 + 8);
  v47(v62, v11);
  v47(v61, v11);
  v47(v60, v11);
  v47(v57, v11);
  sub_2151ADCD8(v43, &qword_27CA5CF30);
  v47(v42, v11);
  v47(v46, v11);
  v47(v58, v11);
  return (v47)(v56, v11);
}

uint64_t sub_215405E4C()
{
  sub_2154A01BC();

  return sub_2154A0DBC();
}

uint64_t sub_215405EC0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

void *sub_215405FA8(void *a1, SEL *a2)
{
  type metadata accessor for RecordingView();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      v6 = [*(*a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
      if (!v6)
      {
        result = swift_unknownObjectRelease();
        __break(1u);
        return result;
      }

      v7 = v6;
      [v5 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_215406078()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

void sub_21540615C(uint64_t *a1)
{
  v1 = *a1;
  v2 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel;
  v3 = [*(*a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setNeedsTranscription_];

  v5 = [*(v1 + v2) attachment];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 managedObjectContext];

  [v7 ic_save];
}

uint64_t sub_215406230()
{
  sub_2154A01BC();

  return sub_2154A0DBC();
}

void sub_2154062A4()
{
  v0 = sub_21549EE5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v7 = [objc_opt_self() sharedInstance];
  sub_2154A269C();

  (*(v1 + 104))(v3, *MEMORY[0x277D36088], v0);
  LOBYTE(v7) = sub_21549EE4C();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  sub_21545275C(v7 & 1);
}

uint64_t sub_21540641C()
{
  sub_2154A01BC();

  return sub_2154A0DBC();
}

uint64_t sub_21540648C()
{
  sub_2154A01BC();

  return sub_2154A0DBC();
}

uint64_t sub_2154064F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE20);
  sub_215418F58();
  return sub_2154A0DAC();
}

uint64_t sub_215406588@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  result = sub_2154A092C();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_215406660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_2154A014C();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE80);
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v6 = &v46 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE58);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE40);
  MEMORY[0x28223BE20](v47);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE88);
  v51 = *(v12 - 8);
  v52 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE38);
  MEMORY[0x28223BE20](v49);
  v54 = &v46 - v15;
  v16 = sub_2154A0D7C();
  v17 = sub_2153F40D8();
  v57 = a1;
  v50 = v14;
  if (v17)
  {
    v18 = sub_2154A081C();
  }

  else
  {
    v18 = sub_2154A076C();
  }

  v19 = v18;
  KeyPath = swift_getKeyPath();
  *&v59 = v16;
  *(&v59 + 1) = KeyPath;
  *&v60 = v19;
  sub_2154A07CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE60);
  sub_2154192A8();
  sub_2154A09BC();

  v21 = &v9[*(v7 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v23 = *MEMORY[0x277CE1048];
  v24 = sub_2154A0D9C();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  (*(v46 + 32))(v9, v6, v48);
  v25 = sub_2154A07EC();
  v26 = swift_getKeyPath();
  sub_21533FB7C(v9, v11, &qword_27CA5CE58);
  v27 = &v11[*(v47 + 36)];
  *v27 = v26;
  v27[1] = v25;
  v28 = v53;
  sub_2154A013C();
  sub_2154190FC();
  sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  v29 = v50;
  v30 = v56;
  sub_2154A09CC();
  (*(v55 + 8))(v28, v30);
  sub_2151ADCD8(v11, &qword_27CA5CE40);
  if ((sub_2153F40D8() & 1) == 0)
  {
    type metadata accessor for RecordingView();
  }

  if ((sub_2153F40D8() & 1) == 0)
  {
    type metadata accessor for RecordingView();
  }

  sub_2154A0FAC();
  sub_21549FAFC();
  v31 = v54;
  (*(v51 + 32))(v54, v29, v52);
  v32 = (v31 + *(v49 + 36));
  v33 = v60;
  *v32 = v59;
  v32[1] = v33;
  v32[2] = v61;
  v34 = sub_2154A073C();
  if (sub_2153F40D8())
  {
    type metadata accessor for RecordingView();
  }

  sub_21549F99C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v58;
  sub_21533FB7C(v31, v58, &qword_27CA5CE38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE20);
  v45 = v43 + *(result + 36);
  *v45 = v34;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_215406C9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v2 = type metadata accessor for RecordingView();
  v50 = *(v2 - 8);
  v49 = *(v50 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE10);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v46 = &v43 - v11;
  MEMORY[0x28223BE20](v12);
  v45 = &v43 - v13;
  MEMORY[0x28223BE20](v14);
  v44 = &v43 - v15;
  v16 = objc_opt_self();
  v17 = [v16 mainBundle];
  v18 = sub_2154A1D2C();
  v19 = [v17 localizedStringForKey:v18 value:0 table:0];

  v20 = sub_2154A1D6C();
  v22 = v21;

  v53 = v20;
  v54 = v22;
  sub_21549F96C();
  v23 = sub_21549F98C();
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 0, 1, v23);
  sub_215324954();
  sub_2154A0E5C();
  v25 = [v16 mainBundle];
  v26 = sub_2154A1D2C();
  v27 = [v25 localizedStringForKey:v26 value:0 table:0];

  v28 = sub_2154A1D6C();
  v30 = v29;

  v53 = v28;
  v54 = v30;
  sub_21549F95C();
  v24(v6, 0, 1, v23);
  v31 = v47;
  sub_21539B7B8(v51, v47);
  v32 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v33 = swift_allocObject();
  sub_21541C94C(v31, v33 + v32, type metadata accessor for RecordingView);
  v34 = v45;
  sub_2154A0E5C();
  v35 = *(v8 + 16);
  v36 = v46;
  v37 = v44;
  v35(v46, v44, v7);
  v38 = v48;
  v35(v48, v34, v7);
  v39 = v52;
  v35(v52, v36, v7);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE18);
  v35(&v39[*(v40 + 48)], v38, v7);
  v41 = *(v8 + 8);
  v41(v34, v7);
  v41(v37, v7);
  v41(v38, v7);
  return (v41)(v36, v7);
}

uint64_t sub_2154071C4(uint64_t a1)
{
  v2 = sub_21549FB6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingView();
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21546367C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong respondsToSelector_])
    {
      sub_21539B7B8(a1, v8);
      [v10 recordingDetailViewShouldDismiss_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_2153F37B0(v5);
  sub_21549FB5C();
  return (*(v3 + 8))(v5, v2);
}

double sub_215407368@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_getKeyPath();
  *&v40 = v8;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v9 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v8 + v9, v4);
  LODWORD(v9) = (*(v5 + 88))(v7, v4);
  v10 = *MEMORY[0x277D359E8];
  (*(v5 + 8))(v7, v4);
  if (v9 == v10)
  {
    v11 = [objc_opt_self() mainBundle];
    v12 = sub_2154A1D2C();
    v13 = [v11 localizedStringForKey:v12 value:0 table:0];

    v14 = sub_2154A1D6C();
    v16 = v15;

    *&v40 = v14;
    *(&v40 + 1) = v16;
    sub_215324954();
    v17 = sub_2154A092C();
    v19 = v17;
    v20 = v18;
    *&v37 = v17;
    *(&v37 + 1) = v18;
    v22 = v21 & 1;
    *&v38 = v21 & 1;
    *(&v38 + 1) = v23;
    LOBYTE(v39) = 0;
  }

  else
  {
    swift_getKeyPath();
    *&v40 = v8;
    sub_21549ED9C();

    v24 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
    swift_beginAccess();
    if ((*(v8 + v24) & 1) == 0)
    {
      v37 = 0u;
      v38 = 0u;
      v39 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC18);
      sub_215417D00();
      sub_2154A039C();
      goto LABEL_7;
    }

    v25 = [objc_opt_self() mainBundle];
    v26 = sub_2154A1D2C();
    v27 = [v25 localizedStringForKey:v26 value:0 table:0];

    v28 = sub_2154A1D6C();
    v30 = v29;

    *&v40 = v28;
    *(&v40 + 1) = v30;
    sub_215324954();
    v17 = sub_2154A092C();
    v19 = v17;
    v20 = v18;
    v22 = v31 & 1;
    *&v37 = v17;
    *(&v37 + 1) = v18;
    *&v38 = v31 & 1;
    *(&v38 + 1) = v32;
    LOBYTE(v39) = 1;
  }

  sub_21539227C(v17, v18, v22);

  sub_2154A039C();
  v37 = v40;
  v38 = v41;
  v39 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC18);
  sub_215417D00();
  sub_2154A039C();
  sub_215354880(v19, v20, v22);

LABEL_7:
  result = *&v40;
  v34 = v41;
  v35 = v42;
  v36 = v43;
  *a2 = v40;
  *(a2 + 16) = v34;
  *(a2 + 32) = v35;
  *(a2 + 33) = v36;
  return result;
}

uint64_t sub_215407810@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_21549E95C();
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2154A055C();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecordingView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CD48);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CD40);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CD28);
  MEMORY[0x28223BE20](v47);
  v45 = &v43 - v20;
  sub_21539B7B8(v2, &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_21541C94C(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for RecordingView);
  v51 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CD90);
  sub_215418BEC();
  sub_2154A0E3C();
  sub_2154A054C();
  sub_2151ACC5C(&qword_27CA5CD50, &qword_27CA5CD48);
  sub_21541DC34(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
  v23 = v43;
  sub_2154A09DC();
  (*(v44 + 8))(v8, v23);
  (*(v13 + 8))(v15, v12);
  v24 = sub_2154A0CDC();
  KeyPath = swift_getKeyPath();
  v53 = v24;
  v26 = sub_21549FB0C();
  v27 = &v19[*(v17 + 44)];
  *v27 = KeyPath;
  v27[1] = v26;
  v28 = *v2;
  swift_getKeyPath();
  v53 = v28;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v29 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v30 = v48;
  v31 = v28 + v29;
  v32 = v46;
  v33 = v49;
  (*(v48 + 16))(v46, v31, v49);
  v34 = v30;
  v35 = v33;
  LODWORD(v33) = (*(v30 + 88))(v32, v33);
  LODWORD(v30) = *MEMORY[0x277D359E8];
  (*(v34 + 8))(v32, v35);
  if (v33 == v30)
  {
    v36 = 1;
  }

  else
  {
    swift_getKeyPath();
    v52 = v28;
    sub_21549ED9C();

    v37 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
    swift_beginAccess();
    v36 = *(v28 + v37) ^ 1;
  }

  v38 = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v36 & 1;
  v40 = v45;
  sub_21533FB7C(v19, v45, &qword_27CA5CD40);
  v41 = (v40 + *(v47 + 36));
  *v41 = v38;
  v41[1] = sub_21541E308;
  v41[2] = v39;
  sub_215418728();
  sub_2154A0B7C();
  return sub_2151ADCD8(v40, &qword_27CA5CD28);
}

uint64_t sub_215407EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2154A1FFC();
  v4[3] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_215407F3C, v6, v5);
}

uint64_t sub_215407F3C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_215407FD0;

  return sub_2154602B4();
}

uint64_t sub_215407FD0()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_21540810C;
  }

  else
  {
    v5 = sub_2153E9334;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21540810C()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_215408170@<D0>(uint64_t a1@<X8>)
{
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_2154A1D6C();
  v6 = v5;

  *&v80 = v4;
  *(&v80 + 1) = v6;
  sub_215324954();
  v7 = sub_2154A092C();
  v9 = v8;
  LOBYTE(v3) = v10;
  sub_2154A075C();
  v11 = sub_2154A08FC();
  v13 = v12;
  v15 = v14;

  sub_215354880(v7, v9, v3 & 1);

  sub_2154A07CC();
  v16 = sub_2154A08AC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_215354880(v11, v13, v15 & 1);

  v96[0] = v16;
  v96[1] = v18;
  v97 = v20 & 1;
  v98 = v22;
  if (sub_2153F40D8())
  {
    *&v64 = v16;
    *(&v64 + 1) = v18;
    LOBYTE(v65) = v20 & 1;
    *(&v65 + 1) = v22;
    sub_215418E1C(&v64);
    v45 = v76;
    v46 = v77;
    v47 = v78;
    v48 = v79;
    v41 = v72;
    v42 = v73;
    v43 = v74;
    v44 = v75;
    v37 = v68;
    v38 = v69;
    v39 = v70;
    v40 = v71;
    v33 = v64;
    v34 = v65;
    v35 = v66;
    v36 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CDA8);
    sub_215418C78();
    sub_2154A039C();
  }

  else
  {
    sub_2154086B4(v96, &v80);
    v61 = v92;
    v62 = v93;
    v63 = v94;
    v57 = v88;
    v58 = v89;
    v59 = v90;
    v60 = v91;
    v53 = v84;
    v54 = v85;
    v55 = v86;
    v56 = v87;
    v49 = v80;
    v50 = v81;
    v51 = v82;
    v52 = v83;
    v32[12] = v92;
    v32[13] = v93;
    v32[14] = v94;
    v32[8] = v88;
    v32[9] = v89;
    v32[10] = v90;
    v32[11] = v91;
    v32[4] = v84;
    v32[5] = v85;
    v32[6] = v86;
    v32[7] = v87;
    v32[0] = v80;
    v32[1] = v81;
    v32[2] = v82;
    v32[3] = v83;
    sub_215324EEC(&v49, &v64, &qword_27CA5CDA8);
    sub_2151ADCD8(v32, &qword_27CA5CDA8);
    v76 = v61;
    v77 = v62;
    v78 = v63;
    v72 = v57;
    v73 = v58;
    v74 = v59;
    v75 = v60;
    v68 = v53;
    v69 = v54;
    v70 = v55;
    v71 = v56;
    v64 = v49;
    v65 = v50;
    v66 = v51;
    v67 = v52;
    sub_215418E14(&v64);
    v45 = v76;
    v46 = v77;
    v47 = v78;
    v48 = v79;
    v41 = v72;
    v42 = v73;
    v43 = v74;
    v44 = v75;
    v37 = v68;
    v38 = v69;
    v39 = v70;
    v40 = v71;
    v33 = v64;
    v34 = v65;
    v35 = v66;
    v36 = v67;
    sub_215324EEC(&v49, &v80, &qword_27CA5CDA8);
    sub_215324EEC(&v49, &v80, &qword_27CA5CDA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CDA8);
    sub_215418C78();
    sub_2154A039C();
    sub_215354880(v16, v18, v20 & 1);

    sub_2151ADCD8(&v49, &qword_27CA5CDA8);
    sub_2151ADCD8(&v49, &qword_27CA5CDA8);
  }

  v45 = v92;
  v46 = v93;
  v47 = v94;
  v41 = v88;
  v42 = v89;
  v43 = v90;
  v44 = v91;
  v37 = v84;
  v38 = v85;
  v39 = v86;
  v40 = v87;
  v33 = v80;
  v34 = v81;
  v35 = v82;
  v36 = v83;
  v76 = v92;
  v77 = v93;
  v78 = v94;
  v72 = v88;
  v73 = v89;
  v74 = v90;
  v75 = v91;
  v68 = v84;
  v69 = v85;
  v70 = v86;
  v71 = v87;
  v64 = v80;
  v65 = v81;
  v48 = v95;
  v79 = v95;
  v66 = v82;
  v67 = v83;
  sub_215324EEC(&v33, v32, &qword_27CA5CD90);
  sub_2151ADCD8(&v64, &qword_27CA5CD90);
  v23 = v46;
  *(a1 + 192) = v45;
  *(a1 + 208) = v23;
  *(a1 + 224) = v47;
  *(a1 + 240) = v48;
  v24 = v42;
  *(a1 + 128) = v41;
  *(a1 + 144) = v24;
  v25 = v44;
  *(a1 + 160) = v43;
  *(a1 + 176) = v25;
  v26 = v38;
  *(a1 + 64) = v37;
  *(a1 + 80) = v26;
  v27 = v40;
  *(a1 + 96) = v39;
  *(a1 + 112) = v27;
  v28 = v34;
  *a1 = v33;
  *(a1 + 16) = v28;
  result = *&v35;
  v30 = v36;
  *(a1 + 32) = v35;
  *(a1 + 48) = v30;
  return result;
}

__n128 sub_2154086B4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sub_2154A073C();
  sub_21549F99C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  LOBYTE(v26) = v5;
  sub_21539227C(v3, v4, v5);

  v16 = sub_2154A06CC();
  sub_21549F99C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2154A0FAC();
  sub_21549FE4C();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  *(a2 + 48) = v11;
  *(a2 + 56) = v13;
  *(a2 + 64) = v15;
  *(a2 + 72) = 0;
  *(a2 + 80) = v16;
  *(a2 + 88) = v18;
  *(a2 + 96) = v20;
  *(a2 + 104) = v22;
  *(a2 + 112) = v24;
  *(a2 + 120) = 0;
  *(a2 + 128) = v26;
  *(a2 + 144) = v27;
  result = v28;
  *(a2 + 208) = v31;
  *(a2 + 224) = v32;
  *(a2 + 176) = v29;
  *(a2 + 192) = v30;
  *(a2 + 160) = v28;
  return result;
}

uint64_t sub_215408818@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v82 = a1;
  v3 = sub_21549E95C();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x28223BE20](v3);
  v75 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_2154A055C();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2154A014C();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v7 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecordingView();
  v66[0] = *(v8 - 8);
  v9 = *(v66[0] + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21549F98C();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CCE0);
  MEMORY[0x28223BE20](v14);
  v16 = v66 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CCD8);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v18 = v66 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CCC0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v22 = v66 - v21;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CCA8);
  MEMORY[0x28223BE20](v79);
  v74 = v66 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CD88);
  v80 = *(v24 - 8);
  v81 = v24;
  MEMORY[0x28223BE20](v24);
  v78 = v66 - v25;
  sub_21549F97C();
  sub_21539B7B8(v2, v10);
  v26 = (*(v66[0] + 80) + 16) & ~*(v66[0] + 80);
  v27 = swift_allocObject();
  sub_21541C94C(v10, v27 + v26, type metadata accessor for RecordingView);
  v28 = v27;
  v29 = v22;
  MEMORY[0x2160679E0](v13, sub_215418A28, v28);
  sub_2154A013C();
  v30 = sub_215418678();
  v31 = sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  v32 = v69;
  sub_2154A09CC();
  (*(v70 + 8))(v7, v32);
  sub_2151ADCD8(v16, &qword_27CA5CCE0);
  v33 = v71;
  sub_2154A054C();
  v88 = v14;
  v89 = v32;
  v90 = v30;
  v91 = v31;
  v34 = 1;
  swift_getOpaqueTypeConformance2();
  sub_21541DC34(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
  v35 = v67;
  v36 = v72;
  sub_2154A09DC();
  (*(v73 + 8))(v33, v36);
  (*(v68 + 8))(v18, v35);
  v37 = sub_2154A0CDC();
  KeyPath = swift_getKeyPath();
  v88 = v37;
  v39 = sub_21549FB0C();
  v40 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CCD0) + 36));
  *v40 = KeyPath;
  v40[1] = v39;
  v41 = (v29 + *(v20 + 44));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8);
  sub_21549FE6C();
  *v41 = swift_getKeyPath();
  v42 = *v66[1];
  swift_getKeyPath();
  v88 = v42;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v43 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v45 = v75;
  v44 = v76;
  v46 = v42 + v43;
  v47 = v77;
  (*(v76 + 16))(v75, v46, v77);
  v48 = v44;
  v49 = v47;
  LODWORD(v47) = (*(v44 + 88))(v45, v47);
  LODWORD(v44) = *MEMORY[0x277D359E8];
  (*(v48 + 8))(v45, v49);
  if (v47 != v44)
  {
    swift_getKeyPath();
    v87 = v42;
    sub_21549ED9C();

    v50 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
    swift_beginAccess();
    v34 = *(v42 + v50) ^ 1;
  }

  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v34 & 1;
  v53 = v74;
  sub_21533FB7C(v29, v74, &qword_27CA5CCC0);
  v54 = v79;
  v55 = (v53 + *(v79 + 36));
  *v55 = v51;
  v55[1] = sub_215418A48;
  v55[2] = v52;
  v56 = sub_215418338();
  v57 = v78;
  sub_2154A0B7C();
  sub_2151ADCD8(v53, &qword_27CA5CCA8);
  v58 = [objc_opt_self() mainBundle];
  v59 = sub_2154A1D2C();
  v60 = [v58 localizedStringForKey:v59 value:0 table:0];

  v61 = sub_2154A1D6C();
  v63 = v62;

  v85 = v61;
  v86 = v63;
  v83 = v54;
  v84 = v56;
  swift_getOpaqueTypeConformance2();
  sub_215324954();
  v64 = v81;
  sub_2154A0AAC();

  return (*(v80 + 8))(v57, v64);
}

uint64_t sub_215409248(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v4 = sub_21549FB6C();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for RecordingView();
  v32 = *(v36 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v30 - v9;
  v10 = sub_21549E95C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = *a1;
  swift_getKeyPath();
  v39 = v17;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v18 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v11 + 16))(v16, v17 + v18, v10);
  (*(v11 + 104))(v13, *MEMORY[0x277D359D0], v10);
  sub_21541DC34(&qword_27CA5AE28, MEMORY[0x277D359F0]);
  LOBYTE(v18) = sub_2154A1D1C();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v19(v16, v10);
  if ((v18 & 1) == 0)
  {
    v20 = sub_2154A202C();
    v21 = v31;
    (*(*(v20 - 8) + 56))(v31, 1, 1, v20);
    v22 = v35;
    sub_21539B7B8(a1, v35);
    sub_2154A1FFC();
    v23 = sub_2154A1FEC();
    v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    *(v25 + 16) = v23;
    *(v25 + 24) = v26;
    sub_21541C94C(v22, v25 + v24, type metadata accessor for RecordingView);
    sub_215354B4C(0, 0, v21, v34, v25);
  }

  sub_2153FC26C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if ([Strong respondsToSelector_])
    {
      sub_21539B7B8(a1, v35);
      [v28 recordingDetailViewShouldDismiss_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_2153F37B0(v6);
  sub_21549FB5C();
  return (*(v37 + 8))(v6, v38);
}

uint64_t sub_215409734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2154A1FFC();
  v4[3] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2154097CC, v6, v5);
}

uint64_t sub_2154097CC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_215409860;

  return sub_2154602B4();
}

uint64_t sub_215409860()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_21541E310;
  }

  else
  {
    v5 = sub_21541E318;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21540999C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CD78);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CD80);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CCA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (sub_2153F40D8())
  {
    sub_215408818(v9);
    sub_215324EEC(v9, v6, &qword_27CA5CCA0);
    swift_storeEnumTagMultiPayload();
    sub_215418240();
    v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CD28);
    v11 = sub_215418728();
    v15 = v10;
    v16 = v11;
    swift_getOpaqueTypeConformance2();
    sub_2154A039C();
    return sub_2151ADCD8(v9, &qword_27CA5CCA0);
  }

  else
  {
    sub_215407810(v3);
    (*(v1 + 16))(v6, v3, v0);
    swift_storeEnumTagMultiPayload();
    sub_215418240();
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CD28);
    v14 = sub_215418728();
    v15 = v13;
    v16 = v14;
    swift_getOpaqueTypeConformance2();
    sub_2154A039C();
    return (*(v1 + 8))(v3, v0);
  }
}

id sub_215409C80(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v2 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(v1 + v2) != 1)
  {
    return [*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController) skipBackByInterval:0 completion:15.0];
  }

  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
  sub_2154A0DEC();
  sub_2153FAC34();
  sub_2154A0DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  return sub_2154A0DFC();
}

id sub_215409E6C(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v2 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(v1 + v2) != 1)
  {
    return [*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController) skipAheadByInterval:0 completion:15.0];
  }

  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
  sub_2154A0DEC();
  sub_2153FAC34();
  sub_2154A0DFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  return sub_2154A0DFC();
}

uint64_t sub_21540A054@<X0>(uint64_t a1@<X8>)
{
  sub_2154A0D7C();
  sub_2154A07EC();
  swift_getKeyPath();
  sub_2154A07CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE60);
  sub_2154192A8();
  sub_2154A09BC();

  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE58) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v4 = *MEMORY[0x277CE1048];
  v5 = sub_2154A0D9C();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

uint64_t sub_21540A1A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - v3;
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecordingView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v30 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  sub_21539B7B8(a1, &v30 - v15);
  sub_21539B7B8(v16, v13);
  v17 = *(v9 + 80);
  v18 = swift_allocObject();
  sub_21541C94C(v16, v18 + ((v17 + 16) & ~v17), type metadata accessor for RecordingView);
  v31 = a1;
  v19 = *a1;
  swift_getKeyPath();
  v33 = v19;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v20 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v5 + 16))(v7, v19 + v20, v4);
  LODWORD(v20) = (*(v5 + 88))(v7, v4);
  LODWORD(v19) = *MEMORY[0x277D359D8];
  (*(v5 + 8))(v7, v4);
  if (v20 == v19)
  {
    sub_21539B81C(v13);
    v21 = sub_2154A202C();
    v22 = v32;
    (*(*(v21 - 8) + 56))(v32, 1, 1, v21);
    v23 = v30;
    sub_21539B7B8(v31, v30);
    sub_2154A1FFC();

    v24 = sub_2154A1FEC();
    v25 = (v17 + 32) & ~v17;
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D85700];
    *(v26 + 16) = v24;
    *(v26 + 24) = v27;
    sub_21541C94C(v23, v26 + v25, type metadata accessor for RecordingView);
    v28 = (v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = sub_21541AED0;
    v28[1] = v18;
    sub_2152F4D50(0, 0, v22, &unk_2154C3B60, v26);
  }

  else
  {
    sub_21540A5F4(v13);

    return sub_21539B81C(v13);
  }
}

void sub_21540A5F4(double *a1)
{
  v2 = *a1;
  swift_getKeyPath();
  aBlock = v2;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v3 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  swift_beginAccess();
  if (*(*&v2 + v3) == 1)
  {
    [*(*&v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController) pause];
    return;
  }

  swift_getKeyPath();
  aBlock = v2;
  sub_21549ED9C();

  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(*&v2 + v4) != 1)
  {
    v19 = *(*&v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
    v20 = [*(*&v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
    if (v20)
    {
      v21 = v20;
      [v19 play_];

      return;
    }

    goto LABEL_15;
  }

  v5 = (a1 + *(type metadata accessor for RecordingView() + 252));
  v6 = *v5;
  v7 = *(v5 + 1);
  aBlock = *v5;
  v24 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
  sub_2154A0DEC();
  if (v29 >= 1.0)
  {
    aBlock = v6;
    v24 = v7;
    v29 = 0.0;
    sub_2154A0DFC();
  }

  aBlock = v6;
  v24 = v7;
  sub_2154A0DEC();
  sub_2153FAC34();
  v9 = v8;
  v10 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController;
  v11 = *(*&v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_audioController);
  v12 = [*(*&v2 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!v12)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = v29 * v9;
  [v11 play_];

  v15 = *(*&v2 + v10);
  v27 = nullsub_1;
  v28 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_2153DF054;
  v26 = &block_descriptor_26;
  v16 = _Block_copy(&aBlock);
  [v15 seekToTime:v16 completion:v14];
  _Block_release(v16);
  v17 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastPlaybackTime;
  swift_beginAccess();
  if (*(*&v2 + v17) == v14)
  {
    *(*&v2 + v17) = v14;
    if (*(*&v2 + v4))
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v29 = v2;
      sub_21549ED8C();

      return;
    }
  }

  else
  {
    v22 = swift_getKeyPath();
    MEMORY[0x28223BE20](v22);
    v29 = v2;
    sub_21549ED8C();

    if (*(*&v2 + v4))
    {
      goto LABEL_9;
    }
  }

  *(*&v2 + v4) = 0;
}

uint64_t sub_21540AA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  sub_2154A1FFC();
  v6[14] = sub_2154A1FEC();
  v8 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_21540AB08, v8, v7);
}

uint64_t sub_21540AB08()
{
  v1 = *(v0 + 88);

  sub_2153FA748();
  v3 = v2;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  if (*(v4 + v5) == 1)
  {
    *(v4 + v5) = 1;
  }

  else
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = 1;
    *(v0 + 40) = v4;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastPlaybackTime;
  swift_beginAccess();
  if (*(v4 + v7) == v3)
  {
    *(v4 + v7) = v3;
  }

  else
  {
    swift_getKeyPath();
    v8 = swift_task_alloc();
    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    *(v0 + 64) = v4;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 88);
  sub_2153FAC34();
  v12 = v3 / v11;
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = type metadata accessor for RecordingView();
  v15 = (v10 + *(v14 + 252));
  v16 = *v15;
  v17 = v15[1];
  *(v0 + 64) = v16;
  *(v0 + 72) = v17;
  *(v0 + 80) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
  sub_2154A0DFC();
  v18 = (v10 + *(v14 + 256));
  v19 = *v18;
  v20 = *(v18 + 1);
  *(v0 + 64) = v19;
  *(v0 + 72) = v20;
  *(v0 + 80) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  v21 = sub_2154A0DFC();
  v9(v21);
  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_21540AE14@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  swift_beginAccess();
  sub_2154A0D7C();
  sub_2154A074C();
  swift_getKeyPath();
  sub_2154A079C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE60);
  sub_2154192A8();
  sub_2154A09BC();

  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE58) + 36));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v4 = *MEMORY[0x277CE1048];
  v5 = sub_2154A0D9C();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  result = swift_getKeyPath();
  *v2 = result;
  return result;
}

uint64_t sub_21540B02C@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v89 = a1;
  v87 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2D0);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = v68 - v5;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2D8);
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = v68 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2E0);
  v102 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = v68 - v9;
  v10 = sub_21549FE1C();
  v105 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RecordingView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2E8);
  MEMORY[0x28223BE20](v16);
  v18 = v68 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2F0);
  v103 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v20 = v68 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2F8);
  v101 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v100 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v98 = v68 - v23;
  MEMORY[0x28223BE20](v24);
  v97 = v68 - v25;
  MEMORY[0x28223BE20](v26);
  v104 = v68 - v27;
  v88 = v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21539B7B8(a1, v88);
  v95 = *(v14 + 80);
  v28 = (v95 + 16) & ~v95;
  v29 = swift_allocObject();
  v94 = type metadata accessor for RecordingView;
  sub_21541C94C(v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for RecordingView);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE58);
  v92 = sub_2154191B4();
  sub_2154A0E3C();
  v30 = v16;
  *&v18[*(v16 + 36)] = 256;
  sub_21549FE0C();
  v31 = sub_21541ADE0();
  v32 = sub_21541DC34(&qword_27CA5D310, MEMORY[0x277CDDB18]);
  v70 = v30;
  v33 = v10;
  v72 = v31;
  sub_2154A09DC();
  v34 = *(v105 + 8);
  v105 += 8;
  v91 = v34;
  v34(v12, v10);
  sub_2151ADCD8(v18, &qword_27CA5D2E8);
  v113 = v30;
  v114 = v10;
  v115 = v31;
  v116 = v32;
  v68[2] = MEMORY[0x277CDE668];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v90;
  v69 = v20;
  sub_2154A0B7C();
  v36 = *(v103 + 8);
  v103 += 8;
  v71 = v36;
  v36(v20, v35);
  *&v68[1] = a3;
  sub_2154A0FAC();
  sub_21549FAFC();
  v77 = v107;
  v76 = v109;
  v75 = v111;
  v74 = v112;
  v121 = 1;
  v120 = v108;
  v119 = v110;
  v37 = v89;
  v38 = v88;
  sub_21539B7B8(v89, v88);
  v39 = swift_allocObject();
  sub_21541C94C(v38, v39 + v28, v94);
  v106 = v37;
  v40 = v79;
  sub_2154A0E3C();
  sub_21549FE0C();
  v41 = sub_2151ACC5C(&qword_27CA5D308, &qword_27CA5D2D0);
  v42 = v78;
  v43 = v81;
  sub_2154A09DC();
  v91(v12, v33);
  (*(v82 + 8))(v40, v43);
  v113 = v43;
  v114 = v33;
  v115 = v41;
  v116 = v32;
  swift_getOpaqueTypeConformance2();
  v44 = v99;
  v45 = v83;
  sub_2154A0B7C();
  (*(v84 + 8))(v42, v45);
  sub_2154A0FAC();
  sub_21549FAFC();
  v84 = v113;
  v83 = v115;
  v82 = v117;
  v81 = v118;
  v124 = 1;
  v123 = v114;
  v122 = v116;
  v46 = v88;
  sub_21539B7B8(v89, v88);
  v47 = swift_allocObject();
  sub_21541C94C(v46, v47 + v28, v94);
  sub_2154A0E3C();
  *&v18[*(v70 + 36)] = 256;
  sub_21549FE0C();
  v48 = v69;
  sub_2154A09DC();
  v91(v12, v33);
  sub_2151ADCD8(v18, &qword_27CA5D2E8);
  v49 = v97;
  v50 = v90;
  sub_2154A0B7C();
  v71(v48, v50);
  v51 = *(v101 + 16);
  v52 = v98;
  v53 = v80;
  v51(v98, v104, v80);
  LOBYTE(v12) = v121;
  LODWORD(v94) = v120;
  LODWORD(v95) = v119;
  v54 = *(v102 + 16);
  v55 = v85;
  v56 = v44;
  v57 = v86;
  v54(v85, v56, v86);
  LODWORD(v96) = v124;
  LODWORD(v103) = v123;
  LODWORD(v105) = v122;
  v51(v100, v49, v53);
  v58 = v87;
  v51(v87, v52, v53);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D318);
  v60 = &v58[v59[12]];
  *v60 = 0;
  v60[8] = v12;
  *(v60 + 2) = v77;
  v60[24] = v94;
  *(v60 + 4) = v76;
  v60[40] = v95;
  v61 = v74;
  *(v60 + 6) = v75;
  *(v60 + 7) = v61;
  v54(&v58[v59[16]], v55, v57);
  v62 = &v58[v59[20]];
  *v62 = 0;
  v62[8] = v96;
  *(v62 + 2) = v84;
  v62[24] = v103;
  *(v62 + 4) = v83;
  v62[40] = v105;
  v63 = v81;
  *(v62 + 6) = v82;
  *(v62 + 7) = v63;
  v64 = v100;
  v51(&v58[v59[24]], v100, v53);
  v65 = *(v101 + 8);
  v65(v97, v53);
  v66 = *(v102 + 8);
  v66(v99, v57);
  v65(v104, v53);
  v65(v64, v53);
  v66(v55, v57);
  return (v65)(v98, v53);
}

uint64_t sub_21540BE7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D320);
  MEMORY[0x28223BE20](v46);
  v4 = &v45[-v3];
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D328);
  MEMORY[0x28223BE20](v47);
  v49 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v45[-v7];
  MEMORY[0x28223BE20](v9);
  v48 = &v45[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D330);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v45[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D338);
  MEMORY[0x28223BE20](v15);
  v17 = &v45[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v45[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v45[-v22];
  *v14 = sub_2154A011C();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D340);
  sub_21540C4AC(a1, &v14[*(v24 + 44)]);
  v25 = sub_2154A0D4C();
  KeyPath = swift_getKeyPath();
  v27 = &v14[*(v12 + 44)];
  *v27 = KeyPath;
  v27[1] = v25;
  type metadata accessor for RecordingView();
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v14, v20, &qword_27CA5D330);
  v28 = &v20[*(v15 + 36)];
  v29 = v56;
  v28[4] = v55;
  v28[5] = v29;
  v28[6] = v57;
  v30 = v52;
  *v28 = v51;
  v28[1] = v30;
  v31 = v54;
  v28[2] = v53;
  v28[3] = v31;
  sub_21533FB7C(v20, v23, &qword_27CA5D338);
  *v4 = sub_2154A011C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D348);
  sub_21540C86C(&v4[*(v32 + 44)]);
  v33 = sub_2154A0D4C();
  v34 = swift_getKeyPath();
  v35 = &v4[*(v46 + 36)];
  *v35 = v34;
  v35[1] = v33;
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v4, v8, &qword_27CA5D320);
  v36 = &v8[*(v47 + 36)];
  v37 = v63;
  v36[4] = v62;
  v36[5] = v37;
  v36[6] = v64;
  v38 = v59;
  *v36 = v58;
  v36[1] = v38;
  v39 = v61;
  v36[2] = v60;
  v36[3] = v39;
  v40 = v48;
  sub_21533FB7C(v8, v48, &qword_27CA5D328);
  sub_215324EEC(v23, v17, &qword_27CA5D338);
  v41 = v49;
  sub_215324EEC(v40, v49, &qword_27CA5D328);
  v42 = v50;
  sub_215324EEC(v17, v50, &qword_27CA5D338);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D350);
  sub_215324EEC(v41, v42 + *(v43 + 48), &qword_27CA5D328);
  sub_2151ADCD8(v40, &qword_27CA5D328);
  sub_2151ADCD8(v23, &qword_27CA5D338);
  sub_2151ADCD8(v41, &qword_27CA5D328);
  return sub_2151ADCD8(v17, &qword_27CA5D338);
}

uint64_t sub_21540C4AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D080);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D088);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v36 - v15;
  v17 = *a1;
  swift_getKeyPath();
  v36[1] = v17;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v18 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
  swift_beginAccess();
  LODWORD(v17) = *(v17 + v18);
  v19 = type metadata accessor for RecordingView();
  v20 = 136;
  if (v17)
  {
    v20 = 140;
  }

  v21 = *(a1 + *(v19 + v20));
  *v6 = sub_2154A011C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0D8);
  sub_21540B02C(a1, &v6[*(v22 + 44)], v21);
  KeyPath = swift_getKeyPath();
  v24 = &v6[*(v4 + 44)];
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0E0) + 28);
  v26 = *MEMORY[0x277CDFA88];
  v27 = sub_21549FD5C();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = KeyPath;
  LOBYTE(KeyPath) = sub_2153F4520();
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (KeyPath & 1) == 0;
  sub_21533FB7C(v6, v13, &qword_27CA5D080);
  v30 = &v13[*(v8 + 44)];
  *v30 = v28;
  v30[1] = sub_21541E308;
  v30[2] = v29;
  sub_21533FB7C(v13, v16, &qword_27CA5D088);
  sub_215324EEC(v16, v10, &qword_27CA5D088);
  v31 = v36[0];
  *v36[0] = 0;
  *(v31 + 8) = 1;
  v32 = v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D390);
  sub_215324EEC(v10, v32 + *(v33 + 48), &qword_27CA5D088);
  v34 = v32 + *(v33 + 64);
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_2151ADCD8(v16, &qword_27CA5D088);
  return sub_2151ADCD8(v10, &qword_27CA5D088);
}

uint64_t sub_21540C86C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D358);
  MEMORY[0x28223BE20](v2);
  v4 = &v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D360);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v54 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D138);
  v43 = *(v53 - 8);
  v11 = v43;
  MEMORY[0x28223BE20](v53);
  v52 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  type metadata accessor for RecordingView();
  sub_2154A0FAC();
  sub_21549FAFC();
  v51 = v55;
  v50 = v57;
  v49 = v59;
  v48 = v60;
  v69 = 1;
  v68 = v56;
  v67 = v58;
  v42 = v15;
  sub_21540CE7C(v15);
  sub_215407810(v4);
  v16 = sub_2154A075C();
  KeyPath = swift_getKeyPath();
  v18 = &v4[*(v2 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  sub_2154A07CC();
  sub_21541B018();
  sub_2154A09BC();
  sub_2151ADCD8(v4, &qword_27CA5D358);
  v19 = sub_2154A0FAC();
  v21 = v20;
  sub_2154A0D5C();
  v22 = sub_2154A0D3C();

  v23 = v10;
  v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D370) + 36)];
  *v24 = v22;
  v24[1] = v19;
  v24[2] = v21;
  v25 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D378) + 36)];
  v26 = *MEMORY[0x277CE0118];
  v27 = sub_2154A01DC();
  (*(*(v27 - 8) + 104))(v25, v26, v27);
  *&v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D380) + 36)] = 256;
  *&v10[*(v6 + 44)] = 1;
  v41 = v10;
  sub_2154A0FAC();
  sub_21549FAFC();
  v47 = v61;
  v46 = v63;
  v45 = v65;
  v44 = v66;
  v72 = 1;
  v71 = v62;
  v70 = v64;
  LOBYTE(v25) = v69;
  LOBYTE(v22) = v68;
  LOBYTE(v10) = v67;
  v28 = *(v11 + 16);
  v29 = v52;
  v30 = v53;
  v28(v52, v15, v53);
  v31 = v54;
  sub_215324EEC(v23, v54, &qword_27CA5D360);
  LOBYTE(v23) = v72;
  v39 = v71;
  v40 = v70;
  *a1 = 0;
  *(a1 + 8) = v25;
  *(a1 + 16) = v51;
  *(a1 + 24) = v22;
  *(a1 + 32) = v50;
  *(a1 + 40) = v10;
  v32 = v48;
  *(a1 + 48) = v49;
  *(a1 + 56) = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D388);
  v28((a1 + v33[12]), v29, v30);
  v34 = a1 + v33[16];
  *v34 = 0;
  *(v34 + 8) = 1;
  sub_215324EEC(v31, a1 + v33[20], &qword_27CA5D360);
  v35 = a1 + v33[24];
  *v35 = 0;
  *(v35 + 8) = v23;
  *(v35 + 16) = v47;
  *(v35 + 24) = v39;
  *(v35 + 32) = v46;
  *(v35 + 40) = v40;
  v36 = v44;
  *(v35 + 48) = v45;
  *(v35 + 56) = v36;
  sub_2151ADCD8(v41, &qword_27CA5D360);
  v37 = *(v43 + 8);
  v37(v42, v30);
  sub_2151ADCD8(v31, &qword_27CA5D360);
  return (v37)(v29, v30);
}

uint64_t sub_21540CE7C@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v68 = sub_21549E95C();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D160);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = type metadata accessor for RecordingView();
  v7 = *(v6 - 8);
  v74 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D168) - 8;
  MEMORY[0x28223BE20](v59);
  v11 = (&v58 - v10);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D170) - 8;
  MEMORY[0x28223BE20](v71);
  v60 = &v58 - v12;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D178);
  MEMORY[0x28223BE20](v73);
  v61 = &v58 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D180);
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v75 = &v58 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D188);
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v76 = &v58 - v15;
  v16 = v1;
  v70 = v1;
  v17 = *(v1 + 8);
  v18 = v9;
  v58 = v9;
  sub_21539B7B8(v16, v9);
  v19 = type metadata accessor for ICRecordButtonViewController();
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC11NotesEditor28ICRecordButtonViewController_interactionHandler;
  v22 = *(v7 + 56);
  v22(v20 + OBJC_IVAR____TtC11NotesEditor28ICRecordButtonViewController_interactionHandler, 1, 1, v6);
  v72 = type metadata accessor for RecordingView;
  sub_21541C94C(v18, v5, type metadata accessor for RecordingView);
  v22(v5, 0, 1, v6);
  swift_beginAccess();

  sub_215419C64(v5, v20 + v21);
  swift_endAccess();
  v23 = type metadata accessor for ICRecordButton();
  v24 = (v11 + v23[7]);
  v24[3] = v19;
  v24[4] = &off_282752BE8;
  *v24 = v20;
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D190);
  swift_storeEnumTagMultiPayload();
  v25 = v23[5];
  *(v11 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  swift_storeEnumTagMultiPayload();
  *(v11 + v23[8]) = 0x3FE0000000000000;
  *(v11 + v23[9]) = 0x3FD3333333333333;
  *(v11 + v23[10]) = 0x4010000000000000;
  *(v11 + v23[11]) = 0x4000000000000000;
  *(v11 + v23[12]) = 0x4010000000000000;
  *(v11 + v23[6]) = v17;
  v26 = v70;
  sub_2154A0FAC();
  sub_21549FAFC();
  v27 = (v11 + *(v59 + 44));
  v28 = v83;
  *v27 = v82;
  v27[1] = v28;
  v27[2] = v84;
  sub_2154A0FAC();
  sub_21549FE4C();
  v29 = v60;
  sub_21533FB7C(v11, v60, &qword_27CA5D168);
  v30 = (v29 + *(v71 + 44));
  v31 = v90;
  v30[4] = v89;
  v30[5] = v31;
  v30[6] = v91;
  v32 = v86;
  *v30 = v85;
  v30[1] = v32;
  v33 = v88;
  v30[2] = v87;
  v30[3] = v33;
  v34 = v61;
  sub_21533FB7C(v29, v61, &qword_27CA5D170);
  *(v34 + *(v73 + 36)) = 256;
  v35 = v58;
  sub_21539B7B8(v26, v58);
  v71 = *(v7 + 80);
  v36 = (v71 + 16) & ~v71;
  v37 = swift_allocObject();
  v38 = v35;
  v39 = v72;
  sub_21541C94C(v35, v37 + v36, v72);
  v60 = sub_215419CEC();
  sub_2154A0A1C();

  sub_2151ADCD8(v34, &qword_27CA5D178);
  v40 = *v26;
  v41 = v26;
  swift_getKeyPath();
  v77 = v40;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v42 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v43 = v66;
  v44 = v40 + v42;
  v45 = v64;
  v46 = v68;
  (*(v66 + 16))(v64, v44, v68);
  sub_21539B7B8(v41, v38);
  v47 = swift_allocObject();
  sub_21541C94C(v38, v47 + v36, v39);
  v77 = v73;
  v78 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_21541DC34(&qword_27CA5AE28, MEMORY[0x277D359F0]);
  v50 = v45;
  v51 = v62;
  v52 = v75;
  sub_2154A0C0C();

  (*(v43 + 8))(v50, v46);
  (*(v63 + 8))(v52, v51);
  v53 = v70;
  v81 = sub_215410CB4() & 1;
  sub_21539B7B8(v53, v38);
  v54 = swift_allocObject();
  sub_21541C94C(v38, v54 + v36, v72);
  v77 = v51;
  v78 = v46;
  v79 = OpaqueTypeConformance2;
  v80 = v49;
  swift_getOpaqueTypeConformance2();
  v55 = v65;
  v56 = v76;
  sub_2154A0C0C();

  return (*(v67 + 8))(v56, v55);
}

uint64_t sub_21540D93C()
{
  v0 = [objc_opt_self() sharedInstance];
  [v0 supportsPrivateCloudComputeSummary];

  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_2154A1D6C();
  return v4;
}

uint64_t sub_21540DB14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF58);
  sub_215419580();
  return sub_2154A0DAC();
}

double sub_21540DBB0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2154A0D7C();
  v3 = sub_2154A076C();
  *&v10 = v2;
  *(&v10 + 1) = swift_getKeyPath();
  *&v11 = v3;
  sub_2154A07CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE60);
  sub_2154192A8();
  sub_2154A09BC();

  v4 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE58) + 36));
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v6 = *MEMORY[0x277CE1048];
  v7 = sub_2154A0D9C();
  (*(*(v7 - 8) + 104))(v4 + v5, v6, v7);
  *v4 = swift_getKeyPath();
  type metadata accessor for RecordingView();
  sub_2154A0FAC();
  sub_21549FAFC();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CF58) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_21540DD7C@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v90 = sub_2154A055C();
  v91 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2154A014C();
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for RecordingView();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73[1] = v5;
  v6 = v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D268);
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v8 = v73 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D238);
  MEMORY[0x28223BE20](v81);
  v10 = v73 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D290);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v74 = v73 - v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D230);
  MEMORY[0x28223BE20](v83);
  v84 = v73 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D220);
  MEMORY[0x28223BE20](v82);
  v85 = v73 - v13;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D208);
  MEMORY[0x28223BE20](v92);
  v89 = v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D298);
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x28223BE20](v15);
  v93 = v73 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1F0);
  MEMORY[0x28223BE20](v97);
  v96 = v73 - v17;
  v99 = v1;
  v73[0] = v6;
  sub_21539B7B8(v1, v6);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  sub_21541C94C(v6, v19 + v18, type metadata accessor for RecordingView);
  v100 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2A0);
  sub_2151ACC5C(&qword_27CA5D2A8, &qword_27CA5D2A0);
  sub_2154A0E3C();
  v20 = v76;
  sub_2154A013C();
  sub_2151ACC5C(&qword_27CA5D270, &qword_27CA5D268);
  sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
  v21 = v75;
  v22 = v79;
  v23 = v78;
  sub_2154A09CC();
  (*(v80 + 8))(v20, v22);
  (*(v77 + 8))(v8, v21);
  v24 = v99;
  v25 = v73[0];
  sub_21539B7B8(v99, v73[0]);
  v26 = swift_allocObject();
  sub_21541C94C(v25, v26 + v18, type metadata accessor for RecordingView);
  v27 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D260) + 36)];
  *v27 = sub_21541ABD4;
  *(v27 + 1) = v26;
  v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D250) + 36)] = 0;
  LOBYTE(v26) = sub_2154A06CC();
  sub_21549F99C();
  v28 = &v10[*(v81 + 36)];
  *v28 = v26;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = v86;
  sub_2154A054C();
  sub_21541A924();
  sub_21541DC34(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
  v34 = v74;
  v35 = v90;
  sub_2154A09DC();
  (*(v91 + 8))(v33, v35);
  sub_2151ADCD8(v10, &qword_27CA5D238);
  v36 = v24 + *(v23 + 56);
  v37 = *v36;
  v38 = *(v36 + 8);
  LOBYTE(v101) = v37;
  v102 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  if (v105 == 1)
  {
    v39 = sub_2154A0CDC();
  }

  else
  {
    v39 = sub_2154A0D1C();
  }

  v40 = v39;
  KeyPath = swift_getKeyPath();
  v101 = v40;
  v42 = sub_21549FB0C();
  v43 = v84;
  (*(v87 + 32))(v84, v34, v88);
  v44 = (v43 + *(v83 + 36));
  *v44 = KeyPath;
  v44[1] = v42;
  v45 = v85;
  v46 = &v85[*(v82 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8);
  sub_21549FE6C();
  *v46 = swift_getKeyPath();
  sub_21533FB7C(v43, v45, &qword_27CA5D230);
  LOBYTE(v46) = sub_2154A073C();
  sub_21549F99C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v89;
  sub_21533FB7C(v45, v89, &qword_27CA5D220);
  v56 = v92;
  v57 = v55 + *(v92 + 36);
  *v57 = v46;
  *(v57 + 8) = v48;
  *(v57 + 16) = v50;
  *(v57 + 24) = v52;
  *(v57 + 32) = v54;
  *(v57 + 40) = 0;
  v101 = sub_21540D93C();
  v102 = v58;
  v59 = sub_21541A69C();
  v60 = sub_215324954();
  v61 = MEMORY[0x277D837D0];
  v62 = v93;
  sub_2154A0B9C();

  sub_2151ADCD8(v55, &qword_27CA5D208);
  v101 = sub_21540D93C();
  v102 = v63;
  v64 = sub_2154A092C();
  v66 = v65;
  v68 = v67;
  v101 = v56;
  v102 = v61;
  v103 = v59;
  v104 = v60;
  swift_getOpaqueTypeConformance2();
  v69 = v95;
  v70 = v96;
  sub_2154A0A9C();
  sub_215354880(v64, v66, v68 & 1);

  v71 = (*(v94 + 8))(v62, v69);
  MEMORY[0x28223BE20](v71);
  v73[-2] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1F8);
  sub_21541A588();
  sub_2151ACC5C(&qword_27CA5D278, &qword_27CA5D1F8);
  sub_2154A0B8C();
  return sub_2151ADCD8(v70, &qword_27CA5D1F0);
}

uint64_t sub_21540E9A8()
{
  sub_2154A0FDC();
  sub_21549FBDC();
}

uint64_t sub_21540EA14()
{
  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFD0);
  sub_2154A0DFC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  sub_2154A0DFC();
}

uint64_t sub_21540EB14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2B0);
  sub_21541AC68();
  return sub_2154A0DAC();
}

uint64_t sub_21540EBB0@<X0>(uint64_t a1@<X8>)
{
  sub_21540D93C();
  sub_215324954();
  result = sub_2154A092C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_21540EC0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE58);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2C8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = sub_2154A0D7C();
  v10 = sub_2154A076C();
  KeyPath = swift_getKeyPath();
  *&v31 = v9;
  *(&v31 + 1) = KeyPath;
  *&v32 = v10;
  sub_2154A07CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE60);
  sub_2154192A8();
  sub_2154A09BC();

  v12 = &v5[*(v3 + 44)];
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v14 = *MEMORY[0x277CE1048];
  v15 = sub_2154A0D9C();
  v16 = v14;
  v17 = v28;
  (*(*(v15 - 8) + 104))(v12 + v13, v16, v15);
  *v12 = swift_getKeyPath();
  v18 = (v17 + *(type metadata accessor for RecordingView() + 56));
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v31) = v19;
  *(&v31 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  if (v30 == 1)
  {
    v21 = sub_2154A0D2C();
  }

  else
  {
    v21 = sub_2154A0D4C();
  }

  v22 = v21;
  sub_21533FB7C(v5, v8, &qword_27CA5CE58);
  *&v8[*(v6 + 36)] = v22;
  sub_2154A0FAC();
  sub_21549FAFC();
  v23 = v29;
  sub_21533FB7C(v8, v29, &qword_27CA5D2C8);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D2B0) + 36));
  v25 = v32;
  *v24 = v31;
  v24[1] = v25;
  result = *&v33;
  v24[2] = v33;
  return result;
}

uint64_t sub_21540EF0C()
{
  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  return sub_2154A0DFC();
}

uint64_t sub_21540EF80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2154A0D7C();
  sub_21540D93C();
  sub_215324954();
  v3 = sub_2154A092C();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_21539227C(v3, v5, v7);

  sub_215354880(v3, v5, v7);
}

uint64_t sub_21540F060@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D138);
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D140);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D148);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  *v16 = sub_2154A011C();
  *(v16 + 1) = 0;
  v17 = 1;
  v16[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D150);
  sub_21540F3FC(a1, &v16[*(v18 + 44)]);
  v19 = *a1;
  swift_getKeyPath();
  v30 = v19;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v20 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
  swift_beginAccess();
  v21 = *(v19 + v20);
  v22 = v28;
  if ((v21 & 1) == 0)
  {
    v23 = v27;
    sub_21540CE7C(v27);
    (*(v3 + 32))(v10, v23, v22);
    v17 = 0;
  }

  (*(v3 + 56))(v10, v17, 1, v22);
  sub_215324EEC(v16, v13, &qword_27CA5D148);
  sub_215324EEC(v10, v7, &qword_27CA5D140);
  v24 = v29;
  sub_215324EEC(v13, v29, &qword_27CA5D148);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D158);
  sub_215324EEC(v7, v24 + *(v25 + 48), &qword_27CA5D140);
  sub_2151ADCD8(v10, &qword_27CA5D140);
  sub_2151ADCD8(v16, &qword_27CA5D148);
  sub_2151ADCD8(v7, &qword_27CA5D140);
  return sub_2151ADCD8(v13, &qword_27CA5D148);
}

uint64_t sub_21540F3FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC58);
  MEMORY[0x28223BE20](v55);
  v54 = &v53 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1B8);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1C0);
  MEMORY[0x28223BE20](v5 - 8);
  v57 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1C8);
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1D0);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1D8);
  MEMORY[0x28223BE20](v16 - 8);
  v60 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = *a1;
  swift_getKeyPath();
  v71 = v21;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v22 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle;
  swift_beginAccess();
  if (*(v21 + v22) == 1)
  {
    sub_21540DD7C(v15);
    type metadata accessor for RecordingView();
    sub_2154A0FAC();
    sub_21549FAFC();
    v23 = &v15[*(v13 + 36)];
    v24 = v66;
    *v23 = v65;
    *(v23 + 1) = v24;
    *(v23 + 2) = v67;
    sub_215324EEC(v15, v12, &qword_27CA5D1D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1E0);
    sub_21541A460();
    sub_215376614();
    sub_2154A039C();
    sub_2151ADCD8(v15, &qword_27CA5D1D0);
  }

  else
  {
    type metadata accessor for RecordingView();
    sub_2154A0FAC();
    sub_21549FAFC();
    v25 = v65;
    v26 = BYTE8(v65);
    v27 = v66;
    v28 = BYTE8(v66);
    LOBYTE(v71) = 1;
    LOBYTE(v68) = BYTE8(v65);
    v64 = BYTE8(v66);
    *v12 = 0;
    v12[8] = 1;
    *(v12 + 2) = v25;
    v12[24] = v26;
    *(v12 + 4) = v27;
    v12[40] = v28;
    *(v12 + 3) = v67;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D1E0);
    sub_21541A460();
    sub_215376614();
    sub_2154A039C();
  }

  v29 = v20;
  v30 = sub_2153F40D8();
  v31 = 1;
  v32 = v59;
  if ((v30 & 1) == 0)
  {
    v33 = v54;
    sub_21540999C();
    v34 = sub_2154A0CDC();
    *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CC70) + 36)) = v34;
    v35 = sub_2154A083C();
    KeyPath = swift_getKeyPath();
    v37 = (v33 + *(v55 + 36));
    *v37 = KeyPath;
    v37[1] = v35;
    sub_2154A07CC();
    sub_215417F7C();
    v38 = v56;
    sub_2154A09BC();
    sub_2151ADCD8(v33, &qword_27CA5CC58);
    sub_2154A0FAC();
    sub_21549FAFC();
    v39 = (v38 + *(v32 + 36));
    v40 = v69;
    *v39 = v68;
    v39[1] = v40;
    v39[2] = v70;
    sub_21533FB7C(v38, v9, &qword_27CA5D1B8);
    v31 = 0;
  }

  (*(v58 + 56))(v9, v31, 1, v32);
  type metadata accessor for RecordingView();
  sub_2154A0FAC();
  sub_21549FAFC();
  v59 = v71;
  v58 = v73;
  v56 = v75;
  v55 = v76;
  v64 = 1;
  v63 = v72;
  v62 = v74;
  v41 = v60;
  sub_215324EEC(v29, v60, &qword_27CA5D1D8);
  v42 = v57;
  sub_215324EEC(v9, v57, &qword_27CA5D1C0);
  v43 = v64;
  v54 = v29;
  v44 = v63;
  v45 = v62;
  v46 = v61;
  sub_215324EEC(v41, v61, &qword_27CA5D1D8);
  v47 = v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D288);
  v49 = v46 + v48[12];
  *v49 = 0;
  *(v49 + 8) = 1;
  sub_215324EEC(v42, v46 + v48[16], &qword_27CA5D1C0);
  v50 = v46 + v48[20];
  *v50 = 0;
  *(v50 + 8) = v43;
  *(v50 + 16) = v59;
  *(v50 + 24) = v44;
  *(v50 + 32) = v58;
  *(v50 + 40) = v45;
  v51 = v55;
  *(v50 + 48) = v56;
  *(v50 + 56) = v51;
  sub_2151ADCD8(v47, &qword_27CA5D1C0);
  sub_2151ADCD8(v54, &qword_27CA5D1D8);
  sub_2151ADCD8(v42, &qword_27CA5D1C0);
  return sub_2151ADCD8(v41, &qword_27CA5D1D8);
}

double sub_21540FC6C@<D0>(char a1@<W2>, uint64_t a2@<X8>)
{
  sub_2153FA748();
  sub_2154A317C();
  sub_2154A316C();
  sub_215324954();
  v2 = sub_2154A092C();
  v4 = v3;
  v6 = v5;
  sub_2154A074C();
  v7 = sub_2154A08FC();
  v9 = v8;
  v11 = v10;

  sub_215354880(v2, v4, v6 & 1);

  sub_2154A079C();
  v12 = sub_2154A08AC();
  v14 = v13;
  v16 = v15;
  sub_215354880(v7, v9, v11 & 1);

  v17 = sub_2154A08EC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_215354880(v12, v14, v16 & 1);

  *&v29 = v17;
  *(&v29 + 1) = v19;
  LOBYTE(v30) = v21 & 1;
  *(&v30 + 1) = v23;
  v31[0] = sub_2154A06DC();
  memset(&v31[8], 0, 32);
  v31[40] = 1;
  sub_2153FA748();
  sub_21540FF20(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF80);
  sub_215418D90();
  sub_2154A0AAC();

  v32[2] = *v31;
  v33[0] = *&v31[16];
  *(v33 + 9) = *&v31[25];
  v32[0] = v29;
  v32[1] = v30;
  sub_2151ADCD8(v32, &qword_27CA5BF80);
  type metadata accessor for RecordingView();
  sub_2154A0FAC();
  sub_21549FAFC();
  v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D398) + 36));
  *v25 = v29;
  v25[1] = v30;
  result = *v31;
  v25[2] = *v31;
  return result;
}

id sub_21540FF20(char a1, double a2)
{
  if (sub_2153F3DA8() & 1) != 0 || (sub_2153F3F00())
  {
    result = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:(a1 & 1) == 0 ignoreFractionalSeconds:a2];
    if (result)
    {
      v5 = result;
      v6 = [result durationDescription];

      if (v6)
      {
        v7 = sub_2154A1D6C();

        return v7;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_2154A317C();
    return sub_2154A316C();
  }

  return result;
}

uint64_t sub_21540FFFC@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v4 = sub_21549FCFC();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  sub_2153FA748();
  sub_2154A317C();
  v35 = sub_2154A316C();
  v36 = v10;
  sub_215324954();
  v11 = sub_2154A092C();
  v13 = v12;
  v15 = v14;
  sub_2154A07BC();
  v16 = sub_2154A08AC();
  v33 = v17;
  v34 = v16;
  v31 = v18;
  v32 = v19;
  sub_215354880(v11, v13, v15 & 1);

  sub_2153FA748();
  v21 = sub_21540FF20(a1, v20);
  v23 = v22;
  v24 = 0;
  if (sub_2153F40D8())
  {
    sub_2153F3BA0(v9);
    v25 = v30;
    (*(v30 + 104))(v6, *MEMORY[0x277CDF988], v4);
    sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
    v26 = sub_2154A1CCC();
    v27 = *(v25 + 8);
    v27(v6, v4);
    v27(v9, v4);
    v24 = v26 ^ 1;
  }

  result = sub_2153F40D8();
  v29 = v31 & 1;
  *a2 = v34;
  *(a2 + 8) = v33;
  *(a2 + 16) = v29;
  *(a2 + 24) = v32;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v24 & 1;
  *(a2 + 49) = result & 1;
  return result;
}

uint64_t sub_2154102A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  *&v63 = a2;
  *(&v63 + 1) = a3;
  v62 = a1;
  v60 = a5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE88);
  MEMORY[0x28223BE20](v59);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v55 - v8;
  v9 = sub_21549FCFC();
  v10 = *(v9 - 8);
  v65 = v9;
  v66 = v10;
  MEMORY[0x28223BE20](v9);
  v64 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v55 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE90);
  MEMORY[0x28223BE20](v57);
  v56 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D8A8);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D8B0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D8B8);
  MEMORY[0x28223BE20](v21);
  v23 = &v55 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D8C0);
  MEMORY[0x28223BE20](v24);
  v26 = &v55 - v25;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D8C8);
  MEMORY[0x28223BE20](v67);
  v68 = &v55 - v27;
  v28 = sub_2154A075C();
  KeyPath = swift_getKeyPath();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D8D0);
  (*(*(v30 - 8) + 16))(v17, v62, v30);
  v31 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D8D8) + 36)];
  *v31 = KeyPath;
  v31[1] = v28;
  *&v17[*(v15 + 36)] = sub_2154A0D5C();
  v69 = v63;
  sub_21541DE7C();
  sub_215324954();
  sub_2154A0AAC();
  sub_2151ADCD8(v17, &qword_27CA5D8A8);
  if (a4)
  {
    sub_2154A0FBC();
  }

  else
  {
    sub_2154A0FAC();
  }

  sub_21549FAFC();
  sub_21533FB7C(v20, v23, &qword_27CA5D8B0);
  v32 = &v23[*(v21 + 36)];
  v33 = v70;
  *v32 = v69;
  *(v32 + 1) = v33;
  *(v32 + 2) = v71;
  v34 = &v26[*(v24 + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D8F8) + 28);
  v36 = *MEMORY[0x277CE0B28];
  v37 = sub_2154A08BC();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  sub_21533FB7C(v23, v26, &qword_27CA5D8B8);
  v38 = swift_getKeyPath();
  v39 = v68;
  sub_21533FB7C(v26, v68, &qword_27CA5D8C0);
  v40 = v39 + *(v67 + 36);
  *v40 = v38;
  *(v40 + 8) = 1;
  *(v40 + 16) = 0;
  v42 = v65;
  v41 = v66;
  v43 = *(v66 + 104);
  v44 = v61;
  v43(v61, *MEMORY[0x277CDF9E8], v65);
  if ((a4 & 0x100) == 0)
  {
    v45 = v64;
    v43(v64, *MEMORY[0x277CDF9D0], v42);
    sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
    v43 = v42;
    if (sub_2154A1CDC())
    {
LABEL_8:
      v47 = *(v41 + 32);
      v48 = v55;
      v47(v55, v44, v42);
      v49 = v59;
      v47((v48 + *(v59 + 48)), v45, v42);
      v50 = v58;
      sub_215324EEC(v48, v58, &qword_27CA5BE88);
      v51 = *(v49 + 48);
      v52 = v56;
      v47(v56, v50, v42);
      v53 = *(v41 + 8);
      v53(v50 + v51, v42);
      sub_21533FB7C(v48, v50, &qword_27CA5BE88);
      v47((v52 + *(v57 + 36)), (v50 + *(v49 + 48)), v42);
      v53(v50, v42);
      sub_21541E018();
      sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
      v54 = v68;
      sub_2154A0A5C();
      sub_2151ADCD8(v52, &qword_27CA5BE90);
      return sub_2151ADCD8(v54, &qword_27CA5D8C8);
    }

    __break(1u);
  }

  v45 = v64;
  v43(v64, *MEMORY[0x277CDF9B8], v42);
  sub_21541DC34(&unk_27CA5CDD0, MEMORY[0x277CDFA28]);
  result = sub_2154A1CDC();
  if (result)
  {
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_215410AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_2154102A4(a1, *v2, *(v2 + 8), v3 | *(v2 + 16), a2);
}

uint64_t sub_215410AE0(uint64_t a1)
{
  v2 = type metadata accessor for RecordingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  result = sub_215410CB4();
  if (result)
  {
    v10 = sub_2154A202C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    sub_21539B7B8(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2154A1FFC();
    v11 = sub_2154A1FEC();
    v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    *(v13 + 16) = v11;
    *(v13 + 24) = v14;
    sub_21541C94C(v5, v13 + v12, type metadata accessor for RecordingView);
    sub_215354B4C(0, 0, v8, &unk_2154C3A70, v13);
  }

  return result;
}

uint64_t sub_215410CB4()
{
  v1 = sub_21549E95C();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  result = [*(*v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (result)
  {
    v8 = result;
    v9 = [result note];

    if (!v9)
    {
      return 0;
    }

    v10 = [v9 isEditable];

    if (!v10)
    {
      return 0;
    }

    v11 = v0;
    swift_getKeyPath();
    v36 = v6;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED9C();

    v12 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
    swift_beginAccess();
    if (*(*&v6 + v12))
    {
      return 0;
    }

    swift_getKeyPath();
    v34 = v6;
    sub_21549ED9C();

    if (*(*&v6 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState))
    {
      return 0;
    }

    v13 = type metadata accessor for RecordingView();
    v14 = v11 + *(v13 + 244);
    v15 = *v14;
    v16 = *(v14 + 1);
    LOBYTE(v34) = v15;
    v35 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
    sub_2154A0DEC();
    if (LOBYTE(v33))
    {
      return 0;
    }

    swift_getKeyPath();
    v34 = v6;
    sub_21549ED9C();

    v17 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    (*(v2 + 16))(v5, *&v6 + v17, v1);
    LODWORD(v17) = (*(v2 + 88))(v5, v1);
    v18 = *MEMORY[0x277D359E8];
    (*(v2 + 8))(v5, v1);
    if (v17 == v18)
    {
      return 1;
    }

    else
    {
      swift_getKeyPath();
      v33 = v6;
      sub_21549ED9C();

      v19 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
      swift_beginAccess();
      if (*(*&v6 + v19) == 1)
      {
        v20 = (v11 + *(v13 + 252));
        v21 = *v20;
        v22 = *(v20 + 1);
        v31 = v21;
        v32 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
        sub_2154A0DEC();
        v23 = v30 >= 1.0;
      }

      else
      {
        v23 = 0;
      }

      swift_getKeyPath();
      v31 = v6;
      sub_21549ED9C();

      if (*(*&v6 + v19))
      {
        v24 = 0;
      }

      else
      {
        swift_getKeyPath();
        v31 = v6;
        sub_21549ED9C();

        v25 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastPlaybackTime;
        swift_beginAccess();
        v26 = *(*&v6 + v25);
        sub_2153FAC34();
        v24 = TSUFloatsAlmostEqual(v26, v27);
      }

      swift_getKeyPath();
      v30 = v6;
      sub_21549ED9C();

      v28 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
      swift_beginAccess();
      if (*(*&v6 + v28))
      {
        return 0;
      }

      return v23 | v24;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21541117C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[31] = a4;
  v5 = sub_21549E95C();
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();
  sub_2154A1FFC();
  v4[35] = sub_2154A1FEC();
  v7 = sub_2154A1FCC();
  v4[36] = v7;
  v4[37] = v6;

  return MEMORY[0x2822009F8](sub_215411270, v7, v6);
}

uint64_t sub_215411270()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = **(v0 + 248);
  swift_getKeyPath();
  *(v0 + 184) = v4;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  LODWORD(v5) = (*(v2 + 88))(v1, v3);
  v6 = *MEMORY[0x277D359E8];
  (*(v2 + 8))(v1, v3);
  if (v5 == v6)
  {
    v7 = *(v0 + 248);
    swift_getKeyPath();
    *(v0 + 192) = v4;
    sub_21549ED9C();

    v8 = *(v4 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
    sub_21549F71C();
    v10 = v9;

    v11 = type metadata accessor for RecordingView();
    v12 = (v7 + v11[13]);
    v13 = *v12;
    v14 = v12[1];
    *(v0 + 88) = *v12;
    *(v0 + 96) = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA68);
    sub_2154A0DEC();
    v15 = v10 + *(v0 + 200);
    *(v0 + 104) = v13;
    *(v0 + 112) = v14;
    *(v0 + 208) = v15;
    sub_2154A0DFC();

    *(v0 + 120) = v13;
    *(v0 + 128) = v14;
    sub_2154A0DEC();
    v16 = *(v0 + 216);
    v17 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastPlaybackTime;
    swift_beginAccess();
    if (*(v4 + v17) == v16)
    {
      *(v4 + v17) = v16;
    }

    else
    {
      swift_getKeyPath();
      v18 = swift_task_alloc();
      *(v18 + 16) = v4;
      *(v18 + 24) = v16;
      *(v0 + 224) = v4;
      sub_21549ED8C();
    }

    v19 = (*(v0 + 248) + v11[63]);
    v20 = *v19;
    v21 = v19[1];
    *(v0 + 136) = v20;
    *(v0 + 144) = v21;
    *(v0 + 232) = 0x3FF0000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
    sub_2154A0DFC();
    v22 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
    swift_beginAccess();
    if (*(v4 + v22) == 1)
    {
      *(v4 + v22) = 1;
    }

    else
    {
      swift_getKeyPath();
      v23 = swift_task_alloc();
      *(v23 + 16) = v4;
      *(v23 + 24) = 1;
      *(v0 + 240) = v4;
      sub_21549ED8C();
    }

    v24 = *(v0 + 248);
    v25 = (v24 + v11[64]);
    v26 = *v25;
    v27 = *(v25 + 1);
    *(v0 + 152) = v26;
    *(v0 + 160) = v27;
    *(v0 + 320) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
    sub_2154A0DFC();
    v28 = (v24 + v11[65]);
    v29 = *v28;
    v30 = *(v28 + 1);
    *(v0 + 168) = v29;
    *(v0 + 176) = v30;
    *(v0 + 321) = 1;
    sub_2154A0DFC();
  }

  v31 = swift_task_alloc();
  *(v0 + 304) = v31;
  *v31 = v0;
  v31[1] = sub_215411758;

  return sub_21545F650();
}

uint64_t sub_215411758()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_215411900;
  }

  else
  {
    v5 = sub_215411894;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_215411894()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215411900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21541196C(double a1, double a2)
{
  type metadata accessor for RecordingView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0DEC();
  if (v44 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2A0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_2154BDB40;
    sub_2154A0D0C();
    *(v3 + 32) = sub_2154A0F7C();
    *(v3 + 40) = v4;
    sub_2154A0D0C();
    *(v3 + 48) = sub_2154A0F7C();
    *(v3 + 56) = v5;
    return v3;
  }

  if (a2 <= 84.0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFD0);
  sub_2154A0DEC();
  sub_2154A0DEC();
  if (v44 == 1)
  {
    sub_2154A0D1C();
  }

  else
  {
    sub_2154A0D0C();
  }

  v6 = sub_2154A0F7C();
  v8 = v7;
  v3 = sub_215318860(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  if (v10 >= v9 >> 1)
  {
    v3 = sub_215318860((v9 > 1), v10 + 1, 1, v3);
  }

  *(v3 + 16) = v10 + 1;
  v11 = v3 + 16 * v10;
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  if (TSUFloatsAlmostEqual(a2 + a2, 42.0))
  {
    if (qword_27CA598D0 != -1)
    {
      swift_once();
    }

    v12 = sub_21549F11C();
    __swift_project_value_buffer(v12, qword_27CA5C850);
    v13 = sub_21549F0FC();
    v14 = sub_2154A224C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2151A1000, v13, v14, "Detected case where size.heightx2 == gradientHeight. Gracefully degrading so we don't crash.", v15, 2u);
      MEMORY[0x21606B520](v15, -1, -1);
    }

LABEL_21:

    goto LABEL_22;
  }

  if (a2 + a2 <= 42.0)
  {
    if (qword_27CA598D0 != -1)
    {
      swift_once();
    }

    v16 = sub_21549F11C();
    __swift_project_value_buffer(v16, qword_27CA5C850);
    v13 = sub_21549F0FC();
    v17 = sub_2154A224C();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2151A1000, v13, v17, "Detected inversion where gradientHeight was higher than the available space. Gracefully degrading so we don't crash.", v18, 2u);
      MEMORY[0x21606B520](v18, -1, -1);
    }

    goto LABEL_21;
  }

LABEL_22:
  sub_2154A0D0C();
  v19 = sub_2154A0F7C();
  v22 = *(v3 + 16);
  v21 = *(v3 + 24);
  if (v22 >= v21 >> 1)
  {
    v35 = v19;
    v36 = v20;
    v37 = sub_215318860((v21 > 1), v22 + 1, 1, v3);
    v20 = v36;
    v3 = v37;
    v19 = v35;
  }

  *(v3 + 16) = v22 + 1;
  v23 = v3 + 16 * v22;
  *(v23 + 32) = v19;
  *(v23 + 40) = v20;
  sub_2154A0D0C();
  v24 = sub_2154A0F7C();
  v27 = *(v3 + 16);
  v26 = *(v3 + 24);
  if (v27 >= v26 >> 1)
  {
    v38 = v24;
    v39 = v25;
    v40 = sub_215318860((v26 > 1), v27 + 1, 1, v3);
    v25 = v39;
    v3 = v40;
    v24 = v38;
  }

  *(v3 + 16) = v27 + 1;
  v28 = v3 + 16 * v27;
  *(v28 + 32) = v24;
  *(v28 + 40) = v25;
  sub_2154A0DEC();
  if (v44)
  {
    sub_2154A0D1C();
  }

  else
  {
    sub_2154A0D0C();
  }

  v29 = sub_2154A0F7C();
  v32 = *(v3 + 16);
  v31 = *(v3 + 24);
  if (v32 >= v31 >> 1)
  {
    v41 = v29;
    v42 = v30;
    v43 = sub_215318860((v31 > 1), v32 + 1, 1, v3);
    v30 = v42;
    v3 = v43;
    v29 = v41;
  }

  *(v3 + 16) = v32 + 1;
  v33 = v3 + 16 * v32;
  *(v33 + 32) = v29;
  *(v33 + 40) = v30;
  return v3;
}

void *sub_215411E94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for RecordingView();
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + v4[61];
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v47[0]) = v9;
  v47[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0E0C();
  v41 = v66[1];
  v42 = v66[0];
  v40 = LOBYTE(v66[2]);
  v11 = a1 + v4[62];
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v47[0]) = v12;
  v47[1] = v13;
  sub_2154A0E0C();
  v38 = v66[1];
  v39 = v66[0];
  v37 = LOBYTE(v66[2]);
  v14 = a1 + v4[63];
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v47[0]) = v15;
  v47[1] = v16;
  sub_2154A0E0C();
  v35 = v66[1];
  v36 = v66[0];
  v34 = LOBYTE(v66[2]);
  v17 = a1 + v4[18];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v47[0]) = v18;
  v47[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CFD0);
  sub_2154A0E0C();
  v33 = v66[0];
  v20 = v66[1];
  HIDWORD(v32) = LOBYTE(v66[2]);
  v21 = *a1;
  v22 = *(a1 + v4[64]);

  v23 = sub_2154A0FAC();
  v25 = v24;
  sub_21539B7B8(a1, v7);
  v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v27 = swift_allocObject();
  sub_21541C94C(v7, v27 + v26, type metadata accessor for RecordingView);
  v28 = sub_2154A06DC();
  v48[0] = v42;
  v48[1] = v41;
  v49 = v40;
  v50 = v39;
  v51 = v38;
  v52 = v37;
  v53 = v36;
  v54 = v35;
  v55 = v34;
  v56 = v33;
  v57 = v20;
  v58 = BYTE4(v32);
  v59 = v21;
  v60 = v22;
  v61 = v23;
  v62 = v25;
  v63 = sub_21541C558;
  v64 = v27;
  v65 = v28;
  v29 = sub_2153F40D8();
  v45 = a1;
  sub_2153F317C(v29 & 1, sub_21541C5D8, v46);
  sub_2151ADCD8(v48, &qword_27CA5D638);
  memcpy(v47, v46, 0x139uLL);
  v30 = sub_2153F40D8();
  v44 = a1;
  sub_2153F342C((v30 & 1) == 0, sub_21541C5E0, v66);
  sub_2151ADCD8(v47, &qword_27CA5D640);
  return memcpy(v43, v66, 0x171uLL);
}

double sub_215412220@<D0>(uint64_t a1@<X8>)
{
  sub_21549FB7C();
  sub_21541196C(v2, v3);
  sub_2154A0F8C();
  sub_2154A105C();
  sub_2154A106C();
  sub_21549FBEC();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

double sub_2154122B4@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[7];
  v31[6] = a1[6];
  v31[7] = v4;
  v31[8] = a1[8];
  v32 = *(a1 + 144);
  v5 = a1[3];
  v31[2] = a1[2];
  v31[3] = v5;
  v6 = a1[5];
  v31[4] = a1[4];
  v31[5] = v6;
  v7 = a1[1];
  v31[0] = *a1;
  v31[1] = v7;
  v8 = sub_2154A06CC();
  type metadata accessor for RecordingView();
  sub_21549F99C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = a1[7];
  v39 = a1[6];
  v40 = v17;
  v41 = a1[8];
  LOBYTE(v42) = *(a1 + 144);
  v18 = a1[3];
  v35 = a1[2];
  v36 = v18;
  v19 = a1[5];
  v37 = a1[4];
  v38 = v19;
  v20 = a1[1];
  v33 = *a1;
  v34 = v20;
  v30 = 0;
  sub_215324EEC(v31, v29, &qword_27CA5D638);
  sub_2154A0FAC();
  sub_21549FE4C();
  v21 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v21;
  *(a2 + 128) = v41;
  *(a2 + 144) = v42;
  v22 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v22;
  v23 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v23;
  v24 = v34;
  *a2 = v33;
  *(a2 + 16) = v24;
  *(a2 + 152) = v8;
  *(a2 + 160) = v10;
  *(a2 + 168) = v12;
  *(a2 + 176) = v14;
  *(a2 + 184) = v16;
  *(a2 + 192) = 0;
  v25 = v29[2];
  *(a2 + 248) = v29[3];
  v26 = v29[5];
  *(a2 + 264) = v29[4];
  *(a2 + 280) = v26;
  *(a2 + 296) = v29[6];
  result = *v29;
  v28 = v29[1];
  *(a2 + 200) = v29[0];
  *(a2 + 216) = v28;
  *(a2 + 232) = v25;
  return result;
}

uint64_t sub_215412464@<X0>(void *__src@<X0>, _OWORD *a2@<X8>)
{
  memcpy(__dst, __src, 0x139uLL);
  sub_21541250C();
  sub_2154A0FAC();
  sub_21549FAFC();
  memcpy(a2, __dst, 0x139uLL);
  v3 = v5[21];
  a2[20] = v5[20];
  a2[21] = v3;
  a2[22] = v5[22];
  return sub_215324EEC(__dst, v5, &qword_27CA5D640);
}

double sub_21541250C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 keyWindow];

  if (v1)
  {
    [v1 bounds];
    Width = CGRectGetWidth(v17);
  }

  else
  {
    if (qword_27CA598D0 != -1)
    {
      swift_once();
    }

    v3 = sub_21549F11C();
    __swift_project_value_buffer(v3, qword_27CA5C850);
    v4 = sub_21549F0FC();
    v5 = sub_2154A227C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2151A1000, v4, v5, "keyWindow wasn't available to determine nonCompactTranscriptWidth. Falling back to UIScreen. This won't work well for multitasking.", v6, 2u);
      MEMORY[0x21606B520](v6, -1, -1);
    }

    v7 = [objc_opt_self() mainScreen];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v18.origin.x = v9;
    v18.origin.y = v11;
    v18.size.width = v13;
    v18.size.height = v15;
    Width = CGRectGetWidth(v18);
  }

  return ceil(Width * 0.85);
}

uint64_t sub_2154126C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2154A0FAC();
  v6 = v5;
  sub_215411E94(a1, __src);
  memcpy(__dst, __src, 0x171uLL);
  memcpy(v11, __src, 0x171uLL);
  sub_215324EEC(__dst, v12, &qword_27CA5D550);
  sub_2151ADCD8(v11, &qword_27CA5D550);
  memcpy(&__src[2], __dst, 0x171uLL);
  v9[392] = 1;
  v12[0] = v4;
  v12[1] = v6;
  memcpy(&v12[2], __dst, 0x171uLL);
  memcpy(&v9[7], v12, 0x181uLL);
  v8[392] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  memcpy((a2 + 9), v9, 0x188uLL);
  *(a2 + 408) = 0;
  *(a2 + 416) = 1;
  __src[0] = v4;
  __src[1] = v6;
  sub_215324EEC(v12, v8, &qword_27CA5D480);
  return sub_2151ADCD8(__src, &qword_27CA5D480);
}

__n128 sub_215412828@<Q0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D6D8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D4A8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  LOBYTE(a1) = *a1;
  *v13 = sub_2154A025C();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D6E0) + 44)];
  sub_215415C5C(a1, v9);
  *&v9[*(v4 + 44)] = sub_2154A04AC();
  sub_215324EEC(v9, v6, &qword_27CA5D6D8);
  *v14 = 0;
  v14[8] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D6E8);
  sub_215324EEC(v6, &v14[*(v15 + 48)], &qword_27CA5D6D8);
  v16 = &v14[*(v15 + 64)];
  *v16 = 0;
  v16[8] = 1;
  sub_2151ADCD8(v9, &qword_27CA5D6D8);
  sub_2151ADCD8(v6, &qword_27CA5D6D8);
  LOBYTE(v15) = sub_2154A06DC();
  v17 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D4B8) + 36)];
  *v17 = v15;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  KeyPath = swift_getKeyPath();
  v19 = &v13[*(v11 + 44)];
  *v19 = KeyPath;
  v19[8] = 1;
  sub_2154A0FAC();
  sub_21549FE4C();
  v20 = v26;
  sub_21533FB7C(v13, v26, &qword_27CA5D4A8);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3D8) + 36);
  v22 = v32;
  *(v21 + 64) = v31;
  *(v21 + 80) = v22;
  *(v21 + 96) = v33;
  v23 = v28;
  *v21 = v27;
  *(v21 + 16) = v23;
  result = v30;
  *(v21 + 32) = v29;
  *(v21 + 48) = result;
  return result;
}

id sub_215412B00@<X0>(double *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v118 = a2;
  v117 = sub_2154A04EC();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v115 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for RecordingView();
  v122 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v123 = v6;
  v121 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_21549FCAC();
  v102 = *(v119 - 1);
  MEMORY[0x28223BE20](v119);
  v101 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v85 - v9;
  v96 = sub_21549E95C();
  v10 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for WaveformScrollView();
  MEMORY[0x28223BE20](v99);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D518);
  MEMORY[0x28223BE20](v104);
  v103 = &v85 - v15;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D6B0);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v85 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D500);
  MEMORY[0x28223BE20](v110);
  v108 = &v85 - v17;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D6B8);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v109 = &v85 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D4F8);
  *&v19 = MEMORY[0x28223BE20](v114).n128_u64[0];
  v113 = &v85 - v20;
  v21 = a1;
  v22 = *a1;
  result = [*(*a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  v98 = result;
  if (result)
  {
    v93 = *(*&v22 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_generator);
    swift_getKeyPath();
    v24 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
    *&v136 = v22;
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);

    v85 = v24;
    sub_21549ED9C();

    v25 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isPlaying;
    swift_beginAccess();
    v92 = *(*&v22 + v25);
    v26 = v97;
    v27 = (v21 + *(v97 + 252));
    v28 = *v27;
    v95 = v27[1];
    v124 = v28;
    v125 = v95;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA78);
    sub_2154A0E0C();
    v90 = *(&v136 + 1);
    v91 = v136;
    v29 = v137;
    sub_2153FA748();
    v124 = v30;
    sub_2154A0EFC();
    v88 = *(&v136 + 1);
    v89 = v136;
    v31 = v137;
    v32 = v21 + *(v26 + 256);
    v33 = *v32;
    v34 = *(v32 + 8);
    v131 = v33;
    v132 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
    sub_2154A0E0C();
    v97 = v124;
    v87 = v125;
    v86 = v126;
    swift_getKeyPath();
    v124 = *&v22;
    sub_21549ED9C();

    v35 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
    swift_beginAccess();
    v36 = v96;
    (*(v10 + 16))(v12, *&v22 + v35, v96);
    LOBYTE(v35) = (*(v10 + 88))(v12, v36) == *MEMORY[0x277D359E8];
    (*(v10 + 8))(v12, v36);
    LOBYTE(v124) = v35;
    sub_2154A0EFC();
    v37 = v133;
    v38 = v134;
    v120 = v21;
    LOBYTE(v36) = v135;
    v129 = a3;
    sub_2154A0EFC();
    v39 = v124;
    v40 = v125;
    v41 = v126;
    swift_getKeyPath();
    v129 = v22;
    sub_21549ED9C();

    v42 = *(*&v22 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode);
    v43 = v93;
    *v14 = v98;
    *(v14 + 1) = v43;
    v14[16] = v92;
    v44 = v90;
    *(v14 + 3) = v91;
    *(v14 + 4) = v44;
    *(v14 + 5) = v29;
    v45 = v88;
    *(v14 + 6) = v89;
    *(v14 + 7) = v45;
    *(v14 + 8) = v31;
    v46 = v87;
    *(v14 + 9) = v97;
    *(v14 + 10) = v46;
    v14[88] = v86;
    *(v14 + 12) = v37;
    *(v14 + 13) = v38;
    v14[112] = v36;
    *(v14 + 15) = v39;
    *(v14 + 16) = v40;
    *(v14 + 17) = v41;
    v14[144] = v42;
    v47 = v99;
    v48 = v100;
    sub_21549FC8C();
    v49 = v102;
    v50 = v119;
    (*(v102 + 16))(v101, v48, v119);
    sub_2154A0DDC();
    (*(v49 + 8))(v48, v50);
    v51 = &v14[*(v47 + 56)];
    v128 = 0;
    sub_2154A0DDC();
    v52 = v130;
    *v51 = LOBYTE(v129);
    *(v51 + 1) = v52;
    v53 = &v14[*(v47 + 60)];
    v128 = 0;
    sub_2154A0DDC();
    v54 = v130;
    *v53 = LOBYTE(v129);
    *(v53 + 1) = v54;
    sub_2154A0FAC();
    sub_21549FE4C();
    v55 = v103;
    sub_21541C94C(v14, v103, type metadata accessor for WaveformScrollView);
    v56 = v104;
    v57 = (v55 + *(v104 + 36));
    v58 = v141;
    v57[4] = v140;
    v57[5] = v58;
    v57[6] = v142;
    v59 = v137;
    *v57 = v136;
    v57[1] = v59;
    v60 = v139;
    v57[2] = v138;
    v57[3] = v60;
    v124 = v28;
    v125 = v95;
    sub_2154A0DEC();
    v61 = v120;
    v62 = v121;
    sub_21539B7B8(v120, v121);
    v122 = *(v122 + 80);
    v63 = (v122 + 16) & ~v122;
    v64 = swift_allocObject();
    v119 = type metadata accessor for RecordingView;
    sub_21541C94C(v62, v64 + v63, type metadata accessor for RecordingView);
    v65 = sub_21541BCAC();
    v66 = sub_21541BD68();
    v67 = v105;
    sub_2154A0C1C();

    sub_2151ADCD8(v55, &qword_27CA5D518);
    v68 = v115;
    sub_2154A04DC();
    v69 = v121;
    sub_21539B7B8(v61, v121);
    v102 = v63;
    v70 = swift_allocObject() + v63;
    sub_21541C94C(v69, v70, type metadata accessor for RecordingView);
    v124 = v56;
    v125 = MEMORY[0x277D85048];
    v126 = v65;
    v127 = v66;
    swift_getOpaqueTypeConformance2();
    v71 = v108;
    v72 = v107;
    sub_2154A0ACC();

    (*(v116 + 8))(v68, v117);
    v73 = (*(v106 + 8))(v67, v72);
    MEMORY[0x28223BE20](v73);
    v74 = v120;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D508);
    v76 = sub_21541BB98();
    v77 = sub_21541BDBC();
    v78 = v109;
    v79 = v110;
    sub_2154A0AFC();
    sub_2151ADCD8(v71, &qword_27CA5D500);
    sub_21539B7B8(v74, v69);
    v80 = v102;
    v81 = swift_allocObject();
    sub_21541C94C(v69, v81 + v80, v119);
    v124 = v79;
    v125 = v75;
    v126 = v76;
    v127 = v77;
    swift_getOpaqueTypeConformance2();
    v82 = v113;
    v83 = v112;
    sub_2154A0B6C();

    (*(v111 + 8))(v78, v83);
    sub_21539B7B8(v74, v69);
    v84 = swift_allocObject();
    sub_21541C94C(v69, v84 + v80, v119);
    sub_21549FDBC();

    return sub_2151ADCD8(v82, &qword_27CA5D4F8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215413AC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  result = swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

void sub_215413BF4(uint64_t *a1)
{
  v2 = type metadata accessor for RecordingView();
  MEMORY[0x28223BE20](v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  swift_getKeyPath();
  v19 = v5;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode;
  if (*(v5 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode) == 3)
  {
    sub_215464680(1);
    swift_getKeyPath();
    v19 = v5;
    sub_21549ED9C();

    if (*(v5 + v7) == 3)
    {
      return;
    }

    goto LABEL_20;
  }

  v18[1] = v2;
  MEMORY[0x28223BE20](v6);
  v18[-2] = a1;
  v8 = sub_2153F27D0(sub_21541E2DC, &v18[-4], &unk_28274DB60);
  swift_getKeyPath();
  v19 = v5;
  sub_21549ED9C();

  v9 = *(v5 + v7);
  if (v9 == 3 || (v10 = *(v8 + 16)) == 0)
  {
LABEL_9:

    return;
  }

  v11 = 0;
  while (*(v8 + v11 + 32) != v9)
  {
    if (v10 == ++v11)
    {
      goto LABEL_9;
    }
  }

  if (v10 - 1 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
LABEL_23:
      __break(1u);
      return;
    }
  }

  if (v12 >= v10)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = *(v8 + 32 + v12);

  v14 = *(v5 + v7);
  if (v14 != 3 && v14 == v13)
  {
    *(v5 + v7) = v13;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v18[-2] = v5;
    LOBYTE(v18[-1]) = v13;
    v19 = v5;
    sub_21549ED8C();
  }

LABEL_20:
  sub_21539B7B8(a1, v4);
  sub_2154A2FEC();
  sub_2154525D8();
  v17 = sub_2154A1D2C();

  ICAccessibilityPostAnnouncementNotification();
  swift_unknownObjectRelease();
}

uint64_t sub_215413F4C(uint64_t a1)
{
  v2 = type metadata accessor for RecordingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v12 = a1;
  v5 = sub_2153F27D0(sub_21541CAF8, v11, &unk_28274DB88);
  v10 = a1;
  v13 = sub_2153F27D0(sub_21541CB34, v9, v5);
  sub_21539B7B8(a1, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21541C94C(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for RecordingView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D6C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED0);
  sub_2151ACC5C(&qword_27CA5D6C8, &qword_27CA5D6C0);
  sub_2151ACC5C(&qword_27CA5D540, &qword_27CA5CED0);
  sub_21541CBD4();
  return sub_2154A0F4C();
}

uint64_t sub_215414184(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  LOBYTE(a1) = *a1;
  sub_21539B7B8(a2, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21541C94C(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for RecordingView);
  *(v8 + v7 + v6) = a1;
  v10[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0);
  sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0);
  return sub_2154A0E3C();
}

void *sub_21541431C(void *result, unsigned __int8 a2)
{
  v2 = *(*result + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode);
  if (v2 != 3 && v2 == a2)
  {
    *(*result + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t sub_21541443C()
{
  sub_2154525D8();
  sub_215324954();
  return sub_2154A0DCC();
}

void *sub_2154144F4(uint64_t a1)
{
  result = sub_215414548(a1);
  if (result != 2)
  {
    v2 = result;
    sub_2153FA748();
    return sub_215464AF8(1, v2 & 1, v3);
  }

  return result;
}

uint64_t sub_215414548(uint64_t a1)
{
  v2 = sub_2154A067C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CDE498])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277CDE490])
  {
    return 0;
  }

  if (qword_27CA598D0 != -1)
  {
    swift_once();
  }

  v9 = sub_21549F11C();
  __swift_project_value_buffer(v9, qword_27CA5C850);
  v10 = sub_21549F0FC();
  v11 = sub_2154A226C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2151A1000, v10, v11, "Unknown direction for accessibility adjustment", v12, 2u);
    MEMORY[0x21606B520](v12, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 2;
}

void *sub_215414738(void *result)
{
  if (result > 1u)
  {
    if (result == 2)
    {
      return result;
    }

    v1 = 0;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v1 = 1;
  }

  sub_2153FA748();
  return sub_215464AF8(0, v1, v2);
}

uint64_t sub_21541479C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v76 = a3;
  v5 = sub_2154A05DC();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21549EB6C();
  v7 = *(v63 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v63);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecordingView();
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE10);
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  v64 = &v61 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D560);
  MEMORY[0x28223BE20](v67);
  v62 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D568);
  v16 = *(v15 - 8);
  v72 = v15;
  v73 = v16;
  MEMORY[0x28223BE20](v15);
  v68 = &v61 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D570);
  MEMORY[0x28223BE20](v18 - 8);
  v75 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v61 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D578);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v74 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - v27;
  sub_215414FE0(a1, a2, &v61 - v27);
  *&v28[*(v24 + 44)] = sub_2154A04AC();
  v29 = sub_21549EB5C();
  if (v30)
  {
    v77 = v29;
    v78 = v30;
    sub_21539B7B8(a2, &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = v63;
    (*(v7 + 16))(&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v63);
    v32 = (*(v61 + 80) + 16) & ~*(v61 + 80);
    v33 = (v11 + *(v7 + 80) + v32) & ~*(v7 + 80);
    v34 = swift_allocObject();
    sub_21541C94C(&v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v32, type metadata accessor for RecordingView);
    (*(v7 + 32))(v34 + v33, v9, v31);
    sub_215324954();
    v35 = v64;
    sub_2154A0E6C();
    v36 = v69;
    sub_2154A05CC();
    sub_2151ACC5C(&qword_27CA5D588, &qword_27CA5CE10);
    sub_21541DC34(&qword_27CA5CFF0, MEMORY[0x277CDE400]);
    v37 = v62;
    v38 = v66;
    v39 = v71;
    sub_2154A09DC();
    (*(v70 + 8))(v36, v39);
    (*(v65 + 8))(v35, v38);
    v40 = sub_2154A075C();
    KeyPath = swift_getKeyPath();
    v42 = (v37 + *(v67 + 36));
    *v42 = KeyPath;
    v42[1] = v40;
    sub_2154A07CC();
    sub_21541C078();
    v43 = v68;
    sub_2154A09BC();
    sub_2151ADCD8(v37, &qword_27CA5D560);
    v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D598) + 36);
    v45 = *MEMORY[0x277CE0118];
    v46 = sub_2154A01DC();
    (*(*(v46 - 8) + 104))(v44, v45, v46);
    *(v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D380) + 36)) = 256;
    LOBYTE(v44) = sub_2154A06EC();
    sub_21549F99C();
    v47 = v72;
    v48 = v43 + *(v72 + 36);
    *v48 = v44;
    *(v48 + 8) = v49;
    *(v48 + 16) = v50;
    *(v48 + 24) = v51;
    *(v48 + 32) = v52;
    *(v48 + 40) = 0;
    sub_21533FB7C(v43, v22, &qword_27CA5D568);
    v53 = 0;
    v54 = v47;
  }

  else
  {
    v53 = 1;
    v54 = v72;
  }

  (*(v73 + 56))(v22, v53, 1, v54);
  v55 = v74;
  sub_215324EEC(v28, v74, &qword_27CA5D578);
  v56 = v75;
  sub_215324EEC(v22, v75, &qword_27CA5D570);
  v57 = v76;
  *v76 = 0;
  *(v57 + 8) = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D580);
  sub_215324EEC(v55, v57 + v58[12], &qword_27CA5D578);
  sub_215324EEC(v56, v57 + v58[16], &qword_27CA5D570);
  v59 = v57 + v58[20];
  *v59 = 0;
  v59[8] = 1;
  sub_2151ADCD8(v22, &qword_27CA5D570);
  sub_2151ADCD8(v28, &qword_27CA5D578);
  sub_2151ADCD8(v56, &qword_27CA5D570);
  return sub_2151ADCD8(v55, &qword_27CA5D578);
}

uint64_t sub_215414FE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v98 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5A0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v93 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5A8);
  MEMORY[0x28223BE20](v7);
  v9 = &v93 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5B0);
  MEMORY[0x28223BE20](v10);
  v12 = &v93 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5B8);
  MEMORY[0x28223BE20](v13);
  v15 = &v93 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5C0);
  MEMORY[0x28223BE20](v16 - 8);
  v101 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v93 - v19;
  v102 = a1;
  if (sub_21549EB1C())
  {
    sub_21549FA5C();
    v21 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D608) + 36)];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBC8) + 28);
    v23 = *MEMORY[0x277CDF420];
    v24 = sub_21549FA0C();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    LOBYTE(v23) = sub_2154A06FC();
    sub_21549F99C();
    v25 = &v15[*(v13 + 36)];
    *v25 = v23;
    *(v25 + 1) = v26;
    *(v25 + 2) = v27;
    *(v25 + 3) = v28;
    *(v25 + 4) = v29;
    v25[40] = 0;
    v30 = &qword_27CA5D5B8;
    sub_215324EEC(v15, v12, &qword_27CA5D5B8);
    swift_storeEnumTagMultiPayload();
    sub_21541C3E8();
    sub_21541B290(&qword_27CA5D630, &qword_27CA5D5A8, &unk_2154C3D68, sub_21541C2A4);
    sub_2154A039C();
    v31 = v15;
LABEL_5:
    sub_2151ADCD8(v31, v30);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5C8);
    (*(*(v44 - 8) + 56))(v20, 0, 1, v44);
    goto LABEL_6;
  }

  v96 = v10;
  v99 = v13;
  v100 = v7;
  sub_21549EB3C();
  if (v32)
  {
    v33 = sub_2154A0D7C();
    v95 = sub_2154A07FC();
    KeyPath = swift_getKeyPath();
    v34 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5E0) + 36));
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
    v36 = *MEMORY[0x277CE1048];
    v37 = sub_2154A0D9C();
    (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
    *v34 = swift_getKeyPath();
    v38 = KeyPath;
    *v6 = v33;
    v6[1] = v38;
    v6[2] = v95;
    LOBYTE(v36) = sub_2154A06FC();
    sub_21549F99C();
    v39 = v6 + *(v4 + 36);
    *v39 = v36;
    *(v39 + 1) = v40;
    *(v39 + 2) = v41;
    *(v39 + 3) = v42;
    *(v39 + 4) = v43;
    v39[40] = 0;
    sub_21541C2A4();
    sub_2154A0ADC();
    sub_2151ADCD8(v6, &qword_27CA5D5A0);
    v30 = &qword_27CA5D5A8;
    sub_215324EEC(v9, v12, &qword_27CA5D5A8);
    swift_storeEnumTagMultiPayload();
    sub_21541C3E8();
    sub_21541B290(&qword_27CA5D630, &qword_27CA5D5A8, &unk_2154C3D68, sub_21541C2A4);
    sub_2154A039C();
    v31 = v9;
    goto LABEL_5;
  }

  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5C8);
  (*(*(v92 - 8) + 56))(v20, 1, 1, v92);
LABEL_6:
  v45 = sub_21549EB2C();
  if (v46)
  {
    v107 = v45;
    v108 = v46;
    sub_215324954();
    v47 = sub_2154A092C();
    v49 = v48;
    v51 = v50;
    sub_2154A083C();
    v96 = sub_2154A08FC();
    v95 = v52;
    v54 = v53;
    KeyPath = v55;

    sub_215354880(v47, v49, v51 & 1);

    LOBYTE(v47) = sub_2154A06FC();
    sub_21549F99C();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    LOBYTE(v107) = v54 & 1;
    LOBYTE(v103) = 0;
    v100 = v54 & 1;
    v99 = v47;
  }

  else
  {
    v96 = 0;
    v95 = 0;
    KeyPath = 0;
    v99 = 0;
    v100 = 0;
    v57 = 0;
    v59 = 0;
    v61 = 0;
    v63 = 0;
  }

  v64 = *v97;
  swift_getKeyPath();
  v107 = v64;
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  swift_beginAccess();
  v65 = sub_21549EB4C();
  if (v66)
  {
    v107 = v65;
    v108 = v66;
    sub_215324954();
    v67 = sub_2154A092C();
    v69 = v68;
    v71 = v70;
    sub_2154A075C();
    v72 = sub_2154A08FC();
    v74 = v73;
    v76 = v75;
    v78 = v77;

    sub_215354880(v67, v69, v71 & 1);

    v79 = v76 & 1;
    sub_21539227C(v72, v74, v76 & 1);
  }

  else
  {
    v72 = 0;
    v74 = 0;
    v79 = 0;
    v78 = 0;
  }

  v80 = v101;
  sub_215324EEC(v20, v101, &qword_27CA5D5C0);
  v81 = v80;
  v82 = v98;
  sub_215324EEC(v81, v98, &qword_27CA5D5C0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5D0);
  v84 = (v82 + *(v83 + 48));
  v85 = v96;
  *&v103 = v96;
  v86 = v95;
  *(&v103 + 1) = v95;
  *&v104 = v100;
  v87 = KeyPath;
  *(&v104 + 1) = KeyPath;
  *&v105 = v99;
  *(&v105 + 1) = v57;
  *v106 = v59;
  *&v106[8] = v61;
  *&v106[16] = v63;
  v106[24] = 0;
  v88 = v104;
  *v84 = v103;
  v84[1] = v88;
  v89 = *v106;
  v84[2] = v105;
  v84[3] = v89;
  *(v84 + 57) = *&v106[9];
  v90 = (v82 + *(v83 + 64));
  sub_215324EEC(&v103, &v107, &qword_27CA5D5D8);
  sub_2153A2484(v72, v74, v79, v78);
  sub_2153A24C8(v72, v74, v79, v78);
  *v90 = v72;
  v90[1] = v74;
  v90[2] = v79;
  v90[3] = v78;
  sub_2151ADCD8(v20, &qword_27CA5D5C0);
  sub_2153A24C8(v72, v74, v79, v78);
  v107 = v85;
  v108 = v86;
  v109 = v100;
  v110 = v87;
  v111 = v99;
  v112 = v57;
  v113 = v59;
  v114 = v61;
  v115 = v63;
  v116 = 0;
  sub_2151ADCD8(&v107, &qword_27CA5D5D8);
  return sub_2151ADCD8(v101, &qword_27CA5D5C0);
}

uint64_t sub_215415A24(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_21549EB6C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  (*(v8 + 16))(v11, a2, v7, v9);
  v13 = (*(v8 + 88))(v11, v7);
  if (v13 != *MEMORY[0x277D35AA8] && v13 != *MEMORY[0x277D35AA0] && v13 != *MEMORY[0x277D35A98])
  {
    return (*(v8 + 8))(v11, v7);
  }

  v16 = sub_2154A202C();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_2154A1FFC();

  v17 = sub_2154A1FEC();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v12;
  sub_2152F4D50(0, 0, v6, &unk_2154C3D58, v18);
}

uint64_t sub_215415C5C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5A0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v86 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v80 - v7);
  v9 = sub_2154A0D7C();
  v10 = sub_2154A077C();
  KeyPath = swift_getKeyPath();
  v12 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D5E0) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70) + 28);
  v14 = *MEMORY[0x277CE1048];
  v15 = sub_2154A0D9C();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v8 = v9;
  v8[1] = KeyPath;
  v8[2] = v10;
  LOBYTE(v9) = sub_2154A06FC();
  sub_21549F99C();
  v16 = *(v4 + 44);
  v87 = v8;
  v17 = v8 + v16;
  *v17 = v9;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  if (a1)
  {
    v22 = objc_opt_self();
    v23 = [v22 mainBundle];
    v24 = sub_2154A1D2C();
    v25 = [v23 localizedStringForKey:v24 value:0 table:0];

    v26 = sub_2154A1D6C();
    v28 = v27;

    v91 = v26;
    v92 = v28;
    sub_215324954();
    v29 = sub_2154A092C();
    v31 = v30;
    v33 = v32;
    sub_2154A083C();
    v84 = sub_2154A08FC();
    v83 = v34;
    v36 = v35;
    *(&v82 + 1) = v37;

    sub_215354880(v29, v31, v33 & 1);

    v80 = sub_2154A06FC();
    sub_21549F99C();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    LOBYTE(v91) = v36 & 1;
    LOBYTE(v88[0]) = 0;
    *&v82 = v36 & 1;
    v46 = [v22 mainBundle];
    v47 = sub_2154A1D2C();
    v48 = [v46 localizedStringForKey:v47 value:0 table:0];

    v49 = sub_2154A1D6C();
    v51 = v50;

    v91 = v49;
    v92 = v51;
    v52 = sub_2154A092C();
    v54 = v53;
    LOBYTE(v48) = v55;
    sub_2154A075C();
    v56 = sub_2154A08FC();
    v58 = v57;
    v60 = v59;
    v62 = v61;

    sub_215354880(v52, v54, v48 & 1);

    v63 = v60 & 1;
    v81 = v56;
    v64 = v58;
    sub_21539227C(v56, v58, v60 & 1);
    v65 = v80;
    v66 = v62;
  }

  else
  {
    v84 = 0;
    v83 = 0;
    v65 = 0;
    v82 = 0uLL;
    v81 = 0;
    v64 = 0;
    v63 = 0;
    v66 = 0;
    v39 = 0;
    v41 = 0;
    v43 = 0;
    v45 = 0;
  }

  v80 = v65;
  v67 = v86;
  sub_215324EEC(v87, v86, &qword_27CA5D5A0);
  v68 = v85;
  sub_215324EEC(v67, v85, &qword_27CA5D5A0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D6F0);
  v70 = (v68 + *(v69 + 48));
  v71 = v84;
  *&v88[0] = v84;
  v72 = v83;
  *(&v88[0] + 1) = v83;
  v73 = v82;
  v88[1] = v82;
  v74 = *(&v82 + 1);
  *&v89 = v65;
  *(&v89 + 1) = v39;
  *v90 = v41;
  *&v90[8] = v43;
  *&v90[16] = v45;
  v90[24] = 0;
  v75 = v82;
  *v70 = v88[0];
  v70[1] = v75;
  v76 = *v90;
  v70[2] = v89;
  v70[3] = v76;
  *(v70 + 57) = *&v90[9];
  v77 = (v68 + *(v69 + 64));
  sub_215324EEC(v88, &v91, &qword_27CA5D5D8);
  v78 = v81;
  sub_2153A2484(v81, v64, v63, v66);
  sub_2153A24C8(v78, v64, v63, v66);
  *v77 = v78;
  v77[1] = v64;
  v77[2] = v63;
  v77[3] = v66;
  sub_2151ADCD8(v87, &qword_27CA5D5A0);
  sub_2153A24C8(v78, v64, v63, v66);
  v91 = v71;
  v92 = v72;
  v93 = v73;
  v94 = v74;
  v95 = v80;
  v96 = v39;
  v97 = v41;
  v98 = v43;
  v99 = v45;
  v100 = 0;
  sub_2151ADCD8(&v91, &qword_27CA5D5D8);
  return sub_2151ADCD8(v67, &qword_27CA5D5A0);
}

BOOL sub_2154162D8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  v4 = *(v3 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode);
  return v4 == 3 || v4 != v2;
}

uint64_t sub_2154163A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C918);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  v12 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C920);
  sub_21541655C();
  sub_21549FDCC();
  v8 = sub_2151ACC5C(&qword_27CA5C998, &qword_27CA5C918);
  sub_21544FCA0(v4, v1, v8);
  v9 = *(v2 + 8);
  v9(v4, v1);
  sub_21544FCA0(v7, v1, v8);
  return (v9)(v7, v1);
}

unint64_t sub_21541655C()
{
  result = qword_27CA5C928;
  if (!qword_27CA5C928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C920);
    sub_2154165E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C928);
  }

  return result;
}

unint64_t sub_2154165E8()
{
  result = qword_27CA5C930;
  if (!qword_27CA5C930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C938);
    sub_2154166A0();
    sub_2151ACC5C(&qword_27CA5C988, &qword_27CA5C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C930);
  }

  return result;
}

unint64_t sub_2154166A0()
{
  result = qword_27CA5C940;
  if (!qword_27CA5C940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C948);
    sub_215416758();
    sub_2151ACC5C(&qword_27CA5C248, &qword_27CA5C980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C940);
  }

  return result;
}

unint64_t sub_215416758()
{
  result = qword_27CA5C950;
  if (!qword_27CA5C950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C958);
    sub_2151ACC5C(&qword_27CA5C960, &qword_27CA5C968);
    sub_21541DC34(&unk_27CA5C970, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C950);
  }

  return result;
}

unint64_t sub_215416848()
{
  result = qword_27CA5C9D0;
  if (!qword_27CA5C9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5C9C8);
    sub_2151ACC5C(&qword_27CA5C9D8, &qword_27CA5C9E0);
    sub_2151ACC5C(&qword_27CA5C9E8, &qword_27CA5C9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5C9D0);
  }

  return result;
}

uint64_t sub_215416928(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for RecordingView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2153F9720(a1, a2, v6);
}

uint64_t sub_215416A08()
{
  type metadata accessor for RecordingView();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2151BD36C;

  return sub_2153FBD9C();
}

unint64_t sub_215416AD4()
{
  result = qword_27CA5CA50;
  if (!qword_27CA5CA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CA48);
    sub_2151ACC5C(&qword_27CA5C248, &qword_27CA5C980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CA50);
  }

  return result;
}

uint64_t sub_215416BA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21541DC34(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel);
  sub_21549ED9C();

  *a2 = *(v3 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__accessibilityScrubMode);
  return result;
}

uint64_t sub_215416CD0@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, _BYTE *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D7B0);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v16, v10);
    (*(v7 + 8))(v10, v6);
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24[0] = v16;
    v24[1] = v17;
    v24[2] = v18;
    v25 = v19;
    sub_215324EEC(&v20, v15, &qword_27CA5D788);
    result = sub_2151ADCD8(v24, &qword_27CA5D788);
    v14 = v21;
    *a3 = v20;
    *(a3 + 16) = v14;
    *(a3 + 32) = v22;
    *(a3 + 48) = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215416E9C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D3C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v14 = *(v12 - 8);
  result = v12 - 8;
  if (*(v14 + 64) == v9)
  {
    (*(v8 + 16))(v11, a1, v7);
    a2(v11);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215416FEC(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_2153FAF98(a1, v6, v7, v1 + v5);
}

uint64_t sub_2154170FC(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_2153F9A90(a1, v6, v7, v1 + v5);
}

unint64_t sub_2154171F4()
{
  result = qword_27CA5CAB8;
  if (!qword_27CA5CAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CAB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA5CAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE90);
    sub_215417314();
    sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CAB8);
  }

  return result;
}

unint64_t sub_215417314()
{
  result = qword_27CA5CAD0;
  if (!qword_27CA5CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA5CAC0);
    sub_2154173A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CAD0);
  }

  return result;
}

unint64_t sub_2154173A0()
{
  result = qword_27CA5CAD8;
  if (!qword_27CA5CAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CAE0);
    sub_21541742C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CAD8);
  }

  return result;
}

unint64_t sub_21541742C()
{
  result = qword_27CA5CAE8;
  if (!qword_27CA5CAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CAF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CAF8);
    sub_2154A055C();
    sub_215417544();
    sub_21541DC34(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CAE8);
  }

  return result;
}

unint64_t sub_215417544()
{
  result = qword_27CA5CB00;
  if (!qword_27CA5CB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CAF8);
    sub_2154175FC();
    sub_2151ACC5C(&qword_27CA5CB38, &unk_27CA5CB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CB00);
  }

  return result;
}

unint64_t sub_2154175FC()
{
  result = qword_27CA5CB08;
  if (!qword_27CA5CB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB18);
    sub_2154A014C();
    sub_2151ACC5C(&unk_27CA5CB20, &qword_27CA5CB18);
    sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_2153CE4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CB08);
  }

  return result;
}

unint64_t sub_21541776C()
{
  result = qword_27CA5CB70;
  if (!qword_27CA5CB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB88);
    sub_215417900();
    sub_215324954();
    sub_2151ACC5C(&qword_27CA5CC00, &qword_27CA5CB80);
    sub_215417C74();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CC20, &qword_27CA5BC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CB70);
  }

  return result;
}

unint64_t sub_215417900()
{
  result = qword_27CA5CB90;
  if (!qword_27CA5CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB78);
    sub_2154179B8();
    sub_2151ACC5C(&qword_27CA5CBF0, &qword_27CA5CBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CB90);
  }

  return result;
}

unint64_t sub_2154179B8()
{
  result = qword_27CA5CB98;
  if (!qword_27CA5CB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CBA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CBA8);
    sub_21549FDFC();
    sub_215417AFC();
    sub_21541DC34(&qword_27CA5CBD8, MEMORY[0x277CDDA98]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CBE0, &qword_27CA5B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CB98);
  }

  return result;
}

unint64_t sub_215417AFC()
{
  result = qword_27CA5CBB0;
  if (!qword_27CA5CBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CBA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CBB8);
    sub_2154A014C();
    sub_2151ACC5C(&qword_27CA5CBC0, &qword_27CA5CBB8);
    sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5CBC8, &qword_27CA5CBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CBB0);
  }

  return result;
}

unint64_t sub_215417C74()
{
  result = qword_27CA5CC08;
  if (!qword_27CA5CC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB88);
    sub_215417D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CC08);
  }

  return result;
}

unint64_t sub_215417D00()
{
  result = qword_27CA5CC10;
  if (!qword_27CA5CC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CC10);
  }

  return result;
}

unint64_t sub_215417D84()
{
  result = qword_27CA5CC38;
  if (!qword_27CA5CC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CC30);
    sub_215417E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CC38);
  }

  return result;
}

unint64_t sub_215417E08()
{
  result = qword_27CA5CC40;
  if (!qword_27CA5CC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CC48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CB68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE90);
    sub_21541776C();
    sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CC40);
  }

  return result;
}

unint64_t sub_215417F7C()
{
  result = qword_27CA5CC60;
  if (!qword_27CA5CC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CC58);
    sub_215418034();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CC60);
  }

  return result;
}

unint64_t sub_215418034()
{
  result = qword_27CA5CC68;
  if (!qword_27CA5CC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CC70);
    sub_2154180EC();
    sub_2151ACC5C(&qword_27CA5CD58, &unk_27CA5CD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CC68);
  }

  return result;
}

unint64_t sub_2154180EC()
{
  result = qword_27CA5CC78;
  if (!qword_27CA5CC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CC80);
    sub_215418170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CC78);
  }

  return result;
}

unint64_t sub_215418170()
{
  result = qword_27CA5CC88;
  if (!qword_27CA5CC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CC90);
    sub_215418240();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CD28);
    sub_215418728();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CC88);
  }

  return result;
}

unint64_t sub_215418240()
{
  result = qword_27CA5CC98;
  if (!qword_27CA5CC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CCA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CCA8);
    sub_215418338();
    swift_getOpaqueTypeConformance2();
    sub_21541DC34(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CC98);
  }

  return result;
}

unint64_t sub_215418338()
{
  result = qword_27CA5CCB0;
  if (!qword_27CA5CCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CCA8);
    sub_2154183F0();
    sub_2151ACC5C(&unk_27CA5CD10, &qword_27CA5B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CCB0);
  }

  return result;
}

unint64_t sub_2154183F0()
{
  result = qword_27CA5CCB8;
  if (!qword_27CA5CCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CCC0);
    sub_2154184A8();
    sub_2151ACC5C(&unk_27CA5CBE0, &qword_27CA5B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CCB8);
  }

  return result;
}

unint64_t sub_2154184A8()
{
  result = qword_27CA5CCC8;
  if (!qword_27CA5CCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CCD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CCD8);
    sub_2154A055C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CCE0);
    sub_2154A014C();
    sub_215418678();
    sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_21541DC34(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CD00, &qword_27CA5B8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CCC8);
  }

  return result;
}

unint64_t sub_215418678()
{
  result = qword_27CA5CCE8;
  if (!qword_27CA5CCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CCE0);
    sub_2151ACC5C(&qword_27CA5CCF0, &qword_27CA5CCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CCE8);
  }

  return result;
}

unint64_t sub_215418728()
{
  result = qword_27CA5CD30;
  if (!qword_27CA5CD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CD28);
    sub_2154187E0();
    sub_2151ACC5C(&unk_27CA5CD10, &qword_27CA5B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CD30);
  }

  return result;
}

unint64_t sub_2154187E0()
{
  result = qword_27CA5CD38;
  if (!qword_27CA5CD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CD40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CD48);
    sub_2154A055C();
    sub_2151ACC5C(&qword_27CA5CD50, &qword_27CA5CD48);
    sub_21541DC34(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CD00, &qword_27CA5B8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CD38);
  }

  return result;
}

uint64_t sub_215418958@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2154A006C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2154189C4@<X0>(uint64_t a1@<X8>)
{
  result = sub_2154A008C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_215418A60(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_215409734(a1, v6, v7, v1 + v5);
}

unint64_t sub_215418BEC()
{
  result = qword_27CA5CD98;
  if (!qword_27CA5CD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CD90);
    sub_215418C78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CD98);
  }

  return result;
}

unint64_t sub_215418C78()
{
  result = qword_27CA5CDA0;
  if (!qword_27CA5CDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CDA8);
    sub_215418D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CDA0);
  }

  return result;
}

unint64_t sub_215418D04()
{
  result = qword_27CA5CDB0;
  if (!qword_27CA5CDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CDB8);
    sub_215418D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CDB0);
  }

  return result;
}

unint64_t sub_215418D90()
{
  result = qword_27CA5CDC0;
  if (!qword_27CA5CDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CDC0);
  }

  return result;
}

uint64_t sub_215418E28(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD278;

  return sub_215407EA4(a1, v6, v7, v1 + v5);
}

unint64_t sub_215418F58()
{
  result = qword_27CA5CE28;
  if (!qword_27CA5CE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CE20);
    sub_215418FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CE28);
  }

  return result;
}

unint64_t sub_215418FE4()
{
  result = qword_27CA5CE30;
  if (!qword_27CA5CE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CE38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CE40);
    sub_2154A014C();
    sub_2154190FC();
    sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CE30);
  }

  return result;
}

unint64_t sub_2154190FC()
{
  result = qword_27CA5CE48;
  if (!qword_27CA5CE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CE40);
    sub_2154191B4();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CE48);
  }

  return result;
}

unint64_t sub_2154191B4()
{
  result = qword_27CA5CE50;
  if (!qword_27CA5CE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CE58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CE60);
    sub_2154192A8();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CE70, &qword_27CA5BF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CE50);
  }

  return result;
}

unint64_t sub_2154192A8()
{
  result = qword_27CA5CE68;
  if (!qword_27CA5CE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CE60);
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CE68);
  }

  return result;
}

uint64_t sub_21541947C()
{
  v1 = *(type metadata accessor for RecordingView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_215404DD0(v0 + v2, v3);
}

unint64_t sub_215419580()
{
  result = qword_27CA5CF60;
  if (!qword_27CA5CF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CF58);
    sub_2154191B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5CF60);
  }

  return result;
}

unint64_t sub_21541960C()
{
  result = qword_27CA5D008;
  if (!qword_27CA5D008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CFB8);
    sub_2154196C8();
    sub_21541DC34(&qword_27CA5D038, MEMORY[0x277CE0660]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D008);
  }

  return result;
}

unint64_t sub_2154196C8()
{
  result = qword_27CA5D010;
  if (!qword_27CA5D010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CFB0);
    sub_215419754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D010);
  }

  return result;
}

unint64_t sub_215419754()
{
  result = qword_27CA5D018;
  if (!qword_27CA5D018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CFA8);
    sub_21541980C();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D018);
  }

  return result;
}

unint64_t sub_21541980C()
{
  result = qword_27CA5D020;
  if (!qword_27CA5D020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CFF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CFA0);
    sub_2154A05DC();
    sub_2151ACC5C(&qword_27CA5CFE8, &qword_27CA5CFA0);
    sub_21541DC34(&qword_27CA5CFF0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CBE0, &qword_27CA5B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D020);
  }

  return result;
}

unint64_t sub_215419984()
{
  result = qword_27CA5D0E8;
  if (!qword_27CA5D0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D098);
    sub_215419A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D0E8);
  }

  return result;
}

unint64_t sub_215419A10()
{
  result = qword_27CA5D0F0;
  if (!qword_27CA5D0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D090);
    sub_215419AC8();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D0F0);
  }

  return result;
}

unint64_t sub_215419AC8()
{
  result = qword_27CA5D0F8;
  if (!qword_27CA5D0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D088);
    sub_215419B80();
    sub_2151ACC5C(&unk_27CA5CD10, &qword_27CA5B918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D0F8);
  }

  return result;
}

unint64_t sub_215419B80()
{
  result = qword_27CA5D100;
  if (!qword_27CA5D100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D080);
    sub_2151ACC5C(&qword_27CA5D108, &qword_27CA5D110);
    sub_2151ACC5C(&qword_27CA5D118, &qword_27CA5D0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D100);
  }

  return result;
}

uint64_t sub_215419C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_215419CEC()
{
  result = qword_27CA5D198;
  if (!qword_27CA5D198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D178);
    sub_215419D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D198);
  }

  return result;
}

unint64_t sub_215419D78()
{
  result = qword_27CA5D1A0;
  if (!qword_27CA5D1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D170);
    sub_215419E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D1A0);
  }

  return result;
}

unint64_t sub_215419E04()
{
  result = qword_27CA5D1A8;
  if (!qword_27CA5D1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D168);
    sub_21541DC34(&qword_27CA5D1B0, type metadata accessor for ICRecordButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D1A8);
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  v1 = type metadata accessor for RecordingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21549FB6C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2154A04CC();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21549FCFC();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  sub_21537702C(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_21537702C(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  MEMORY[0x21606B640](v5 + v1[19]);
  v13 = v1[20];
  v14 = sub_21549E6AC();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21541A350(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_21541117C(a1, v6, v7, v1 + v5);
}

unint64_t sub_21541A460()
{
  result = qword_27CA5D1E8;
  if (!qword_27CA5D1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D1D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D1F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D1F8);
    sub_21541A588();
    sub_2151ACC5C(&qword_27CA5D278, &qword_27CA5D1F8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D1E8);
  }

  return result;
}

unint64_t sub_21541A588()
{
  result = qword_27CA5D200;
  if (!qword_27CA5D200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D1F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D208);
    sub_21541A69C();
    sub_215324954();
    swift_getOpaqueTypeConformance2();
    sub_21541DC34(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D200);
  }

  return result;
}

unint64_t sub_21541A69C()
{
  result = qword_27CA5D210;
  if (!qword_27CA5D210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D208);
    sub_21541A728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D210);
  }

  return result;
}

unint64_t sub_21541A728()
{
  result = qword_27CA5D218;
  if (!qword_27CA5D218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D220);
    sub_21541A7E0();
    sub_2151ACC5C(&unk_27CA5CBE0, &qword_27CA5B8E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D218);
  }

  return result;
}

unint64_t sub_21541A7E0()
{
  result = qword_27CA5D228;
  if (!qword_27CA5D228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D230);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D238);
    sub_2154A055C();
    sub_21541A924();
    sub_21541DC34(&qword_27CA5B8E0, MEMORY[0x277CDE340]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CD00, &qword_27CA5B8D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D228);
  }

  return result;
}

unint64_t sub_21541A924()
{
  result = qword_27CA5D240;
  if (!qword_27CA5D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D238);
    sub_21541A9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D240);
  }

  return result;
}

unint64_t sub_21541A9B0()
{
  result = qword_27CA5D248;
  if (!qword_27CA5D248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D250);
    sub_21541AA68();
    sub_2151ACC5C(&qword_27CA5CB38, &unk_27CA5CB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D248);
  }

  return result;
}

unint64_t sub_21541AA68()
{
  result = qword_27CA5D258;
  if (!qword_27CA5D258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D268);
    sub_2154A014C();
    sub_2151ACC5C(&qword_27CA5D270, &qword_27CA5D268);
    sub_21541DC34(&qword_27CA5B608, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_2153CE4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D258);
  }

  return result;
}

unint64_t sub_21541AC68()
{
  result = qword_27CA5D2B8;
  if (!qword_27CA5D2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D2B0);
    sub_21541ACF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D2B8);
  }

  return result;
}

unint64_t sub_21541ACF4()
{
  result = qword_27CA5D2C0;
  if (!qword_27CA5D2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D2C8);
    sub_2154191B4();
    sub_2151ACC5C(&qword_27CA5CD58, &unk_27CA5CD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D2C0);
  }

  return result;
}

unint64_t sub_21541ADE0()
{
  result = qword_27CA5D300;
  if (!qword_27CA5D300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D2E8);
    sub_2151ACC5C(&qword_27CA5D308, &qword_27CA5D2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D300);
  }

  return result;
}

uint64_t sub_21541AEE8(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2151BD278;

  return sub_21540AA6C(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_21541B018()
{
  result = qword_27CA5D368;
  if (!qword_27CA5D368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D358);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CD28);
    sub_215418728();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D368);
  }

  return result;
}

double sub_21541B10C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecordingView() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64));

  return sub_21540FC6C(v4, a1);
}

unint64_t sub_21541B1D8()
{
  result = qword_27CA5D3A8;
  if (!qword_27CA5D3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D398);
    sub_21541B290(&qword_27CA5D3B0, &qword_27CA5D3B8, &unk_2154C3BE0, sub_215418D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D3A8);
  }

  return result;
}

uint64_t sub_21541B290(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_21541DC34(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21541B344()
{
  result = qword_27CA5D420;
  if (!qword_27CA5D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D418);
    sub_21541B3D0();
    sub_21541B5CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D420);
  }

  return result;
}

unint64_t sub_21541B3D0()
{
  result = qword_27CA5D428;
  if (!qword_27CA5D428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D408);
    sub_21541B45C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D428);
  }

  return result;
}

unint64_t sub_21541B45C()
{
  result = qword_27CA5D430;
  if (!qword_27CA5D430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D400);
    sub_21541B514();
    sub_2151ACC5C(&qword_27CA5D458, &qword_27CA5D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D430);
  }

  return result;
}

unint64_t sub_21541B514()
{
  result = qword_27CA5D438;
  if (!qword_27CA5D438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D440);
    sub_2151ACC5C(&qword_27CA5D448, &qword_27CA5D450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D438);
  }

  return result;
}

unint64_t sub_21541B5CC()
{
  result = qword_27CA5D468;
  if (!qword_27CA5D468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D470);
    sub_2151ACC5C(&qword_27CA5D478, &qword_27CA5D480);
    sub_2151ACC5C(&qword_27CA5D488, &qword_27CA5D490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D468);
  }

  return result;
}

unint64_t sub_21541B6B0()
{
  result = qword_27CA5D498;
  if (!qword_27CA5D498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D3D8);
    sub_21541B73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D498);
  }

  return result;
}

unint64_t sub_21541B73C()
{
  result = qword_27CA5D4A0;
  if (!qword_27CA5D4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D4A8);
    sub_21541B7F4();
    sub_2151ACC5C(&qword_27CA5D458, &qword_27CA5D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D4A0);
  }

  return result;
}

unint64_t sub_21541B7F4()
{
  result = qword_27CA5D4B0;
  if (!qword_27CA5D4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D4B8);
    sub_2151ACC5C(&qword_27CA5D4C0, &qword_27CA5D4C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D4B0);
  }

  return result;
}

unint64_t sub_21541B8AC()
{
  result = qword_27CA5D4D0;
  if (!qword_27CA5D4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D3F0);
    sub_21541B344();
    sub_21541B6B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D4D0);
  }

  return result;
}

unint64_t sub_21541B938()
{
  result = qword_27CA5D4D8;
  if (!qword_27CA5D4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D3D0);
    sub_21541B9F0();
    sub_2151ACC5C(&qword_27CA5D118, &qword_27CA5D0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D4D8);
  }

  return result;
}

unint64_t sub_21541B9F0()
{
  result = qword_27CA5D4E0;
  if (!qword_27CA5D4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D4E8);
    sub_21541BA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D4E0);
  }

  return result;
}

unint64_t sub_21541BA74()
{
  result = qword_27CA5D4F0;
  if (!qword_27CA5D4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D4F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D508);
    sub_21541BB98();
    sub_21541BDBC();
    swift_getOpaqueTypeConformance2();
    sub_21541DC34(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D4F0);
  }

  return result;
}

unint64_t sub_21541BB98()
{
  result = qword_27CA5D510;
  if (!qword_27CA5D510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D500);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D518);
    sub_21541BCAC();
    sub_21541BD68();
    swift_getOpaqueTypeConformance2();
    sub_21541DC34(&qword_27CA5CD20, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D510);
  }

  return result;
}

unint64_t sub_21541BCAC()
{
  result = qword_27CA5D520;
  if (!qword_27CA5D520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D518);
    sub_21541DC34(&qword_27CA5D528, type metadata accessor for WaveformScrollView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D520);
  }

  return result;
}

unint64_t sub_21541BD68()
{
  result = qword_27CA5D530;
  if (!qword_27CA5D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D530);
  }

  return result;
}

unint64_t sub_21541BDBC()
{
  result = qword_27CA5D538;
  if (!qword_27CA5D538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D508);
    sub_2151ACC5C(&qword_27CA5D540, &qword_27CA5CED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D538);
  }

  return result;
}

id sub_21541BE6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecordingView() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_215412B00((v1 + v4), a1, v5);
}

uint64_t sub_21541BF58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21549FF9C();
  *a1 = result;
  return result;
}

uint64_t sub_21541BFAC()
{
  v1 = *(type metadata accessor for RecordingView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_21549EB6C() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_215415A24((v0 + v2), v5);
}

unint64_t sub_21541C078()
{
  result = qword_27CA5D590;
  if (!qword_27CA5D590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D560);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5CE10);
    sub_2154A05DC();
    sub_2151ACC5C(&qword_27CA5D588, &qword_27CA5CE10);
    sub_21541DC34(&qword_27CA5CFF0, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D590);
  }

  return result;
}

uint64_t sub_21541C1F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21545B230(a1, v4, v5, v6);
}

unint64_t sub_21541C2A4()
{
  result = qword_27CA5D5E8;
  if (!qword_27CA5D5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D5A0);
    sub_21541C330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D5E8);
  }

  return result;
}

unint64_t sub_21541C330()
{
  result = qword_27CA5D5F0;
  if (!qword_27CA5D5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D5E0);
    sub_2154192A8();
    sub_2151ACC5C(&unk_27CA5CE70, &qword_27CA5BF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D5F0);
  }

  return result;
}

unint64_t sub_21541C3E8()
{
  result = qword_27CA5D5F8;
  if (!qword_27CA5D5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D5B8);
    sub_21541C474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D5F8);
  }

  return result;
}

unint64_t sub_21541C474()
{
  result = qword_27CA5D600;
  if (!qword_27CA5D600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D608);
    sub_2151ACC5C(&qword_27CA5D610, &qword_27CA5D618);
    sub_2151ACC5C(&unk_27CA5D620, &qword_27CA5BBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D600);
  }

  return result;
}

double sub_21541C558@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for RecordingView();

  return sub_215412220(a1);
}

unint64_t sub_21541C5F4()
{
  result = qword_27CA5D650;
  if (!qword_27CA5D650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D648);
    sub_21541C680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D650);
  }

  return result;
}

unint64_t sub_21541C680()
{
  result = qword_27CA5D658;
  if (!qword_27CA5D658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D640);
    sub_21541C70C();
    sub_21541C824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D658);
  }

  return result;
}

unint64_t sub_21541C70C()
{
  result = qword_27CA5D660;
  if (!qword_27CA5D660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D668);
    sub_21541C798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D660);
  }

  return result;
}

unint64_t sub_21541C798()
{
  result = qword_27CA5D670;
  if (!qword_27CA5D670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D678);
    sub_21541C824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D670);
  }

  return result;
}

unint64_t sub_21541C824()
{
  result = qword_27CA5D680;
  if (!qword_27CA5D680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D638);
    sub_21541C8DC();
    sub_2151ACC5C(&qword_27CA5D690, &unk_27CA5D698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D680);
  }

  return result;
}

unint64_t sub_21541C8DC()
{
  result = qword_27CA5E9B0;
  if (!qword_27CA5E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E9B0);
  }

  return result;
}

uint64_t sub_21541C94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21541CA04(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for RecordingView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void *sub_21541CA88(void *a1)
{
  type metadata accessor for RecordingView();

  return sub_215414738(a1);
}

uint64_t sub_21541CB54(_BYTE *a1)
{
  v3 = *(type metadata accessor for RecordingView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_215414184(a1, v4);
}

unint64_t sub_21541CBD4()
{
  result = qword_27CA5D6D0;
  if (!qword_27CA5D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D6D0);
  }

  return result;
}

void *sub_21541CC28()
{
  v1 = *(type metadata accessor for RecordingView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = *(v2 + *(v1 + 64));

  return sub_21541431C(v2, v3);
}

unint64_t sub_21541CCD0()
{
  result = qword_27CA5D798;
  if (!qword_27CA5D798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D788);
    sub_21541CD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D798);
  }

  return result;
}

unint64_t sub_21541CD5C()
{
  result = qword_27CA5D7A0;
  if (!qword_27CA5D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D7A0);
  }

  return result;
}

uint64_t objectdestroy_265Tm()
{
  v1 = type metadata accessor for RecordingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21549FB6C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2154A04CC();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21549FCFC();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  v13 = v4 + v3;
  sub_21537702C(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_21537702C(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  MEMORY[0x21606B640](v5 + v1[19]);
  v14 = v1[20];
  v15 = sub_21549E6AC();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v13 + 1, v2 | 7);
}

uint64_t sub_21541D1DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecordingView() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64));

  return sub_21540FFFC(v4, a1);
}

unint64_t sub_21541D284()
{
  result = qword_27CA5D7A8;
  if (!qword_27CA5D7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D790);
    sub_21541CCD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D7A8);
  }

  return result;
}

uint64_t sub_21541D320(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RecordingView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_21541D394()
{
  result = qword_27CA5D820;
  if (!qword_27CA5D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D7F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D7F0);
    sub_2154A028C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BC30);
    sub_2151ACC5C(&qword_27CA5D810, &qword_27CA5BC30);
    swift_getOpaqueTypeConformance2();
    sub_21541DC34(&qword_27CA5D818, MEMORY[0x277CDDF20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5D458, &qword_27CA5D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D820);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for RecordingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21549FB6C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2154A04CC();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21549FCFC();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  sub_21537702C(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_21537702C(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  MEMORY[0x21606B640](v5 + v1[19]);
  v13 = v1[20];
  v14 = sub_21549E6AC();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_21541DA30()
{
  result = qword_27CA5D850;
  if (!qword_27CA5D850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D848);
    sub_21541DAE8();
    sub_2151ACC5C(&qword_27CA5D868, &qword_27CA5D870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D850);
  }

  return result;
}

unint64_t sub_21541DAE8()
{
  result = qword_27CA5D858;
  if (!qword_27CA5D858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D858);
  }

  return result;
}

unint64_t sub_21541DB6C()
{
  result = qword_27CA5D878;
  if (!qword_27CA5D878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D848);
    sub_21541DA30();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D878);
  }

  return result;
}

uint64_t sub_21541DC34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21541DC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_21541DD60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_21541DDA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21541DE0C()
{
  result = qword_27CA5D8A0;
  if (!qword_27CA5D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D8A0);
  }

  return result;
}

unint64_t sub_21541DE7C()
{
  result = qword_27CA5D8E0;
  if (!qword_27CA5D8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D8A8);
    sub_21541DF34();
    sub_2151ACC5C(&qword_27CA5CD58, &unk_27CA5CD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D8E0);
  }

  return result;
}

unint64_t sub_21541DF34()
{
  result = qword_27CA5D8E8;
  if (!qword_27CA5D8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D8D8);
    sub_2151ACC5C(&qword_27CA5D8F0, &qword_27CA5D8D0);
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D8E8);
  }

  return result;
}

unint64_t sub_21541E018()
{
  result = qword_27CA5D900;
  if (!qword_27CA5D900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D8C8);
    sub_21541E0D0();
    sub_2151ACC5C(&qword_27CA5D868, &qword_27CA5D870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D900);
  }

  return result;
}

unint64_t sub_21541E0D0()
{
  result = qword_27CA5D908;
  if (!qword_27CA5D908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D8C0);
    sub_21541E188();
    sub_2151ACC5C(&qword_27CA5D920, &qword_27CA5D8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D908);
  }

  return result;
}

unint64_t sub_21541E188()
{
  result = qword_27CA5D910;
  if (!qword_27CA5D910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D8B8);
    sub_21541B290(&qword_27CA5D918, &qword_27CA5D8B0, &unk_2154C4270, sub_21541DE7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D910);
  }

  return result;
}

unint64_t sub_21541E240()
{
  result = qword_27CA5D928;
  if (!qword_27CA5D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D928);
  }

  return result;
}

void sub_21541E31C(uint64_t a1, void (*a2)(void))
{
  a2();
  v2 = [objc_opt_self() sharedState];
  [v2 endBlockingDeauthentication];
}

char *sub_21541E390(uint64_t a1, void *a2)
{
  v4 = sub_21549E56C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 paperBundleModel];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 paperBundleURL];

    sub_21549E51C();
    (*(v5 + 32))(a1, v8, v4);
    v8 = objc_allocWithZone(sub_21549EADC());
    v12 = a2;
    v13 = sub_21549EAAC();
    v14 = sub_21549EABC();
    if (v14)
    {
      v8 = v14;
    }

    else
    {
      v16 = v12;
      sub_2154A1C6C();
      swift_willThrow();

      (*(v5 + 8))(a1, v4);
    }
  }

  else
  {
    v15 = a2;
    sub_2154A1C6C();
    swift_willThrow();
  }

  return v8;
}

uint64_t sub_21541E550@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a3;
  v88 = a1;
  v87 = sub_2154A1C2C();
  v76 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = sub_2154A120C();
  v92 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A4A0);
  v74 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v82 = &v58[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A470);
  MEMORY[0x28223BE20](v10 - 8);
  v83 = &v58[-v11];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A4A8);
  v73 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v58[-v12];
  v70 = sub_2154A184C();
  v77 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_2154A16FC();
  v14 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_2154A165C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A4B0);
  MEMORY[0x28223BE20](v20 - 8);
  v96 = &v58[-v21];
  v101 = sub_2154A18DC();
  v22 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v81 = &v58[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v26 = &v58[-v25];
  v100 = sub_2154A1BDC();
  v102 = a4;
  sub_2154A164C();
  if (a2 >> 62)
  {
    v27 = sub_2154A2C8C();
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_31:
  }

  v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (v27 >= 1)
  {
    v80 = v8;
    v28 = 0;
    v94 = (v17 + 16);
    v95 = a2 & 0xC000000000000001;
    v90 = (v17 + 8);
    v89 = (v22 + 48);
    v78 = (v22 + 32);
    v63 = *MEMORY[0x277CD9558];
    v65 = (v14 + 104);
    v64 = (v14 + 8);
    v61 = *MEMORY[0x277CD9560];
    v68 = (v77 + 1);
    v77 = (v22 + 16);
    v76 += 7;
    v60 = *MEMORY[0x277CD9550];
    v75 = (v92 + 104);
    ++v74;
    v59 = *MEMORY[0x277CD9548];
    ++v73;
    v72 = (v22 + 8);
    v71 = *MEMORY[0x277CD9460];
    v62 = 0x3FF921FB54442D18;
    v92 = v26;
    v79 = v16;
    v93 = v19;
    v91 = v27;
    while (1)
    {
      if (v95)
      {
        v29 = MEMORY[0x216069960](v28, a2);
      }

      else
      {
        v29 = *(a2 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = a2;
      v32 = objc_autoreleasePoolPush();
      (*v94)(v19, v102, v16);
      v33 = [v30 fullImageUUID];
      if (!v33)
      {
        goto LABEL_35;
      }

      v34 = v33;
      sub_2154A1D6C();

      v35 = v96;
      sub_2154205BC(v99, v96);

      (*v90)(v19, v16);
      v36 = v101;
      if ((*v89)(v35, 1, v101) != 1)
      {
        break;
      }

      sub_2151ADCD8(v35, &qword_27CA5A4B0);
LABEL_6:
      ++v28;
      objc_autoreleasePoolPop(v32);

      a2 = v31;
      v19 = v93;
      if (v91 == v28)
      {
      }
    }

    v37 = v92;
    (*v78)(v92, v35, v36);
    if ([v30 hasFilter])
    {
      v38 = [v30 currentFilter];
      if (v38 > 1)
      {
        v39 = v63;
        if (v38 != 4)
        {
          v39 = v61;
          if (v38 != 3)
          {
            v39 = v60;
            if (v38 != 2)
            {
              goto LABEL_36;
            }
          }
        }

        goto LABEL_20;
      }

      if (v38)
      {
        v39 = v59;
LABEL_20:
        v40 = v66;
        v41 = v67;
        (*v65)(v66, v39, v67);
        sub_2154A185C();
        (*v64)(v40, v41);
      }
    }

    v42 = [v30 imageQuad];
    if (v42)
    {
      v43 = v42;
      [v42 topLeft];
      [v43 topRight];
      [v43 bottomLeft];
      [v43 bottomRight];
      v44 = v69;
      sub_2154A183C();
      sub_2154A187C();

      (*v68)(v44, v70);
    }

    v45 = v81;
    (*v77)(v81, v37, v36);
    v46 = v83;
    (*v76)(v83, 1, 1, v87);
    v47 = sub_215421804(&qword_27CA5A4D0, MEMORY[0x277CD95C0]);

    MEMORY[0x216068690](v48, v45, v46, v36, v47);
    (*v75)(v84, v71, v85);
    sub_2154A1AEC();
    sub_2154A121C();
    sub_215421804(&qword_27CA5A4D8, MEMORY[0x277CD9478]);
    v49 = v82;
    sub_2154A1A4C();
    v50 = [v30 currentOrientation];
    if (v50 == 3 || v50 == 2)
    {
      v51 = v80;
      v54 = sub_2154A1A5C();
      __swift_mutable_project_boxed_opaque_existential_1(v55, *(v55 + 24));
      sub_2154A15EC();
      v54(v103, 0);
    }

    else
    {
      v51 = v80;
      if (v50 == 1)
      {
        v52 = sub_2154A1A5C();
        __swift_mutable_project_boxed_opaque_existential_1(v53, *(v53 + 24));
        sub_2154A15EC();
        v52(v103, 0);
      }
    }

    v56 = sub_2154A161C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A410);
    sub_2154A1A2C();
    v56(v103, 0);
    (*v74)(v49, v51);
    (*v73)(v97, v98);
    (*v72)(v92, v101);
    v16 = v79;
    goto LABEL_6;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

void sub_21541F384(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v28 = a8;
  v29 = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A378);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A380);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v27 - v21;
  sub_2154216F0(a1, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_2151ADCD8(v18, &qword_27CA5A378);
    sub_215421760();
    v23 = swift_allocError();
    *v24 = 0;
    v29();
  }

  else
  {
    v27 = a10;
    v25 = (*(v20 + 32))(v22, v18, v19);
    MEMORY[0x28223BE20](v25);
    *(&v27 - 6) = a4;
    *(&v27 - 5) = a5;
    *(&v27 - 4) = a6;
    *(&v27 - 3) = a7;
    *(&v27 - 2) = v28;
    *(&v27 - 1) = a9;
    sub_2154A1B3C();
    v26 = swift_allocObject();
    *(v26 + 16) = v29;
    *(v26 + 24) = a3;

    sub_2154A1A8C();

    (*(v20 + 8))(v22, v19);
  }
}

void sub_21541F638(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7)
{
  v111 = a7;
  v109 = a6;
  v121 = a3;
  v114 = a1;
  v98 = sub_2154A1C2C();
  v118 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_2154A120C();
  v117 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A4A0);
  v116 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v72 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A470);
  MEMORY[0x28223BE20](v14 - 8);
  v94 = &v72 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A4A8);
  v16 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v72 - v17;
  v84 = sub_2154A184C();
  v18 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2154A16FC();
  v20 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2154A165C();
  v22 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A4B0);
  MEMORY[0x28223BE20](v25 - 8);
  v106 = &v72 - v26;
  v105 = sub_2154A18DC();
  MEMORY[0x28223BE20](v105);
  v93 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v112 = &v72 - v30;
  v31 = (a5 >> 1) - a4;
  if (a5 >> 1 == a4)
  {
    return;
  }

  v104 = (v22 + 16);
  v102 = (v22 + 8);
  v101 = (v29 + 48);
  v92 = (v29 + 32);
  v79 = (v20 + 104);
  v78 = (v20 + 8);
  v77 = *MEMORY[0x277CD9558];
  v82 = (v18 + 8);
  v91 = (v29 + 16);
  v90 = (v118 + 56);
  v75 = *MEMORY[0x277CD9560];
  v89 = (v117 + 104);
  v88 = (v116 + 8);
  v74 = *MEMORY[0x277CD9550];
  v87 = (v16 + 8);
  v86 = (v29 + 8);
  v73 = *MEMORY[0x277CD9548];
  if (a4 <= (a5 >> 1))
  {
    v32 = a5 >> 1;
  }

  else
  {
    v32 = a4;
  }

  v85 = *MEMORY[0x277CD9460];
  v33 = v32 - a4;
  v34 = (v121 + 8 * a4);
  v76 = 0x3FF921FB54442D18;
  v99 = v11;
  v100 = v13;
  v103 = v24;
  while (v33)
  {
    v117 = v33;
    v121 = v31;
    v35 = *v34;
    v36 = sub_2154A1BDC();
    v118 = sub_2154A1B7C();
    v38 = v37;
    v116 = objc_autoreleasePoolPush();
    v39 = *v104;
    v113 = v38;
    v40 = v110;
    v39(v24, v38, v110);
    v41 = [v35 fullImageUUID];
    if (!v41)
    {
      goto LABEL_31;
    }

    v42 = v41;
    sub_2154A1D6C();

    v43 = v106;
    sub_2154205BC(v109, v106);

    v44 = v24;
    v45 = v43;
    (*v102)(v44, v40);
    v46 = v43;
    v47 = v105;
    v48 = (*v101)(v46, 1, v105);
    v115 = v36;
    if (v48 != 1)
    {
      v49 = v112;
      (*v92)(v112, v45, v47);
      if ([v35 hasFilter])
      {
        v50 = [v35 currentFilter];
        if (v50 <= 1)
        {
          if (v50)
          {
            v51 = v73;
            goto LABEL_20;
          }
        }

        else
        {
          v51 = v77;
          if (v50 != 4)
          {
            v51 = v75;
            if (v50 != 3)
            {
              v51 = v74;
              if (v50 != 2)
              {
                goto LABEL_32;
              }
            }
          }

LABEL_20:
          v52 = v80;
          v53 = v81;
          (*v79)(v80, v51, v81);
          v49 = v112;
          sub_2154A185C();
          (*v78)(v52, v53);
        }
      }

      v54 = [v35 imageQuad];
      if (v54)
      {
        v55 = v54;
        [v54 topLeft];
        [v55 topRight];
        [v55 bottomLeft];
        [v55 bottomRight];
        v56 = v83;
        sub_2154A183C();
        sub_2154A187C();

        (*v82)(v56, v84);
      }

      v57 = v93;
      (*v91)(v93, v49, v47);
      v58 = v94;
      (*v90)(v94, 1, 1, v98);
      v59 = sub_215421804(&qword_27CA5A4D0, MEMORY[0x277CD95C0]);

      MEMORY[0x216068690](v60, v57, v58, v47, v59);
      (*v89)(v95, v85, v96);
      sub_2154A1AEC();
      sub_2154A121C();
      sub_215421804(&qword_27CA5A4D8, MEMORY[0x277CD9478]);
      v61 = v100;
      sub_2154A1A4C();
      v62 = [v35 currentOrientation];
      if (v62 == 3)
      {
        v68 = v99;
        v69 = sub_2154A1A5C();
        __swift_mutable_project_boxed_opaque_existential_1(v70, *(v70 + 24));
        v63 = v68;
        v61 = v100;
        sub_2154A15EC();
        v69(v119, 0);
      }

      else
      {
        v63 = v99;
        if (v62 == 2)
        {
          v66 = sub_2154A1A5C();
          __swift_mutable_project_boxed_opaque_existential_1(v67, *(v67 + 24));
          v63 = v99;
          v61 = v100;
          sub_2154A15EC();
          v66(v119, 0);
        }

        else if (v62 == 1)
        {
          v64 = sub_2154A1A5C();
          __swift_mutable_project_boxed_opaque_existential_1(v65, *(v65 + 24));
          v61 = v100;
          sub_2154A15EC();
          v64(v119, 0);
          v63 = v99;
        }
      }

      v71 = sub_2154A161C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A410);
      sub_2154A1A2C();
      v71(v119, 0);
      (*v88)(v61, v63);
      (*v87)(v107, v108);
      (*v86)(v112, v47);
      goto LABEL_8;
    }

    sub_2151ADCD8(v45, &qword_27CA5A4B0);
LABEL_8:
    objc_autoreleasePoolPop(v116);

    (v118)(v120, 0);

    v33 = v117 - 1;
    ++v34;
    v31 = v121 - 1;
    v24 = v103;
    if (v121 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_2154A2EDC();
  __break(1u);
}

uint64_t sub_215420480(int a1, int a2, void *a3, int a4, void *a5, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_2151A6C9C(0, &qword_27CA5AF70);
  v9 = sub_2154A1F4C();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v8);
  v11 = a3;
  v12 = a5;
  sub_215420CFC(v11, v9, v12, ObjCClassMetadata, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_215420558(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_21549E3CC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2154205BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C4F0);
  MEMORY[0x28223BE20](v3 - 8);
  v55 = &v49 - v4;
  v5 = sub_21549E56C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  v12 = sub_2154A1D2C();
  v13 = [a1 getImageURL:v12 async:0];

  sub_21549E51C();
  v14 = [a1 dataCryptorDelegate];
  if (!v14)
  {
    (*(v6 + 16))(v8, v11, v5);

    sub_2154A188C();
    return (*(v6 + 8))(v11, v5);
  }

  v15 = v14;
  v56 = v5;
  v53 = sub_21549E57C();
  v54 = v18;
  v19 = sub_21549E58C();
  v20 = sub_2154A1D2C();
  v21 = [v15 decryptEncryptedData:v19 identifier:v20];

  v22 = v6;
  if (!v21)
  {
    sub_215324170(v53, v54);
    swift_unknownObjectRelease();
    (*(v6 + 8))(v11, v56);
LABEL_3:
    v16 = sub_2154A18DC();
    return (*(*(v16 - 8) + 56))(v57, 1, 1, v16);
  }

  v23 = sub_21549E59C();
  v25 = v24;

  v26 = sub_21549E58C();
  v27 = CGImageSourceCreateWithData(v26, 0);

  if (!v27)
  {
    (*(v6 + 8))(v11, v56);
    sub_215324170(v53, v54);
    sub_215324170(v23, v25);
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v52 = v27;
  v28 = CGImageSourceCopyPropertiesAtIndex(v27, 0, 0);
  if (!v28)
  {
    v35 = v57;
    goto LABEL_31;
  }

  v29 = v28;
  sub_2151A6C9C(0, &qword_281199490);
  sub_2153DE474();
  v30 = sub_2154A1C8C();

  v31 = *MEMORY[0x277CD3450];
  v32 = v30 & 0xC000000000000001;
  if ((v30 & 0xC000000000000001) == 0)
  {
    if (*(v30 + 16))
    {

      v36 = sub_2153B0DE0(v31);
      if (v37)
      {
        v50 = v25;
        v51 = v23;
        v34 = *(*(v30 + 56) + 8 * v36);
        swift_unknownObjectRetain();

        goto LABEL_17;
      }
    }

    v38 = *MEMORY[0x277CD3448];
    goto LABEL_26;
  }

  v50 = v25;
  v51 = v23;

  v33 = v31;
  v34 = sub_2154A2EBC();

  if (v34)
  {
    v32 = v30 & 0xC000000000000001;
LABEL_17:
    v58 = v34;
    swift_dynamicCast();
    v38 = *MEMORY[0x277CD3448];
    if (v32)
    {
      goto LABEL_20;
    }

    v25 = v50;
    v23 = v51;
LABEL_26:
    v35 = v57;
    if (!*(v30 + 16) || (v41 = sub_2153B0DE0(v38), (v42 & 1) == 0))
    {

      goto LABEL_31;
    }

    v40 = *(*(v30 + 56) + 8 * v41);
    swift_unknownObjectRetain();

    goto LABEL_29;
  }

  v38 = *MEMORY[0x277CD3448];
LABEL_20:
  v39 = v38;
  v40 = sub_2154A2EBC();

  if (v40)
  {
    v25 = v50;
    v23 = v51;
LABEL_29:
    v58 = v40;
    swift_dynamicCast();
    v35 = v57;
    goto LABEL_31;
  }

  v35 = v57;
  v25 = v50;
  v23 = v51;
LABEL_31:
  sub_2154A18CC();
  sub_215324200(v23, v25);

  v43 = v23;
  v44 = v55;
  sub_2154A1B0C();
  v45 = *MEMORY[0x277CD9530];
  v46 = sub_2154A16BC();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v44, v45, v46);
  (*(v47 + 56))(v44, 0, 1, v46);
  sub_2154A18AC();
  sub_2154A189C();
  sub_2154A18BC();
  sub_215324170(v53, v54);
  swift_unknownObjectRelease();

  sub_215324170(v43, v25);
  (*(v22 + 8))(v11, v56);
  v48 = sub_2154A18DC();
  return (*(*(v48 - 8) + 56))(v35, 0, 1, v48);
}

uint64_t sub_215420CFC(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void (**a5)(const void *, void))
{
  v80 = a4;
  v81 = a3;
  v79 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A378);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v66 - v9;
  v10 = sub_2154A1C2C();
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A380);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = sub_21549E56C();
  v74 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v78 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  v22 = objc_opt_self();
  v76 = a5;
  _Block_copy(a5);
  v75 = v22;
  v23 = [v22 sharedState];
  [v23 beginBlockingDeauthentication];

  v24 = swift_allocObject();
  *(v24 + 16) = sub_21542169C;
  *(v24 + 24) = v21;
  v25 = a2 >> 62;
  v77 = v24;
  if (a2 >> 62)
  {
    if (a2 < 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v35 = sub_2154A2C8C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_47;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v26 = v5;
  while (2)
  {
    v27 = v5 != 0;
    if (v26 >= v27)
    {
      v73 = v15;
      v70 = v13;
      v71 = v12;
      v13 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0 && v5)
      {
        sub_2151A6C9C(0, &qword_27CA5AF70);

        v28 = 0;
        do
        {
          v12 = v28 + 1;
          sub_2154A2DBC();
          v28 = v12;
        }

        while (v27 != v12);
        if (!v25)
        {
          goto LABEL_9;
        }
      }

      else
      {

        if (!v25)
        {
LABEL_9:
          v15 = 0;
          v27 = a2 & 0xFFFFFFFFFFFFFF8;
          v29 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
          if (v5)
          {
            v5 = 3;
          }

          else
          {
            v5 = 1;
          }

          goto LABEL_15;
        }
      }

      v27 = sub_2154A2F0C();
      v15 = v30;
      v5 = v31;
      if ((v31 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_15:
      v69 = a2 & 0xC000000000000001;
      v13 = v20;
      v12 = v16;
      v16 = v21;
      v67 = v29;
      sub_2154A2FCC();
      swift_unknownObjectRetain_n();
      v33 = swift_dynamicCastClass();
      if (!v33)
      {
        swift_unknownObjectRelease();
        v33 = MEMORY[0x277D84F90];
      }

      v34 = *(v33 + 16);

      if (!__OFSUB__(v5 >> 1, v15))
      {
        if (v34 == (v5 >> 1) - v15)
        {
          v15 = swift_dynamicCastClass();
          v16 = v12;
          v20 = v13;
          v13 = v69;
          if (!v15)
          {
            swift_unknownObjectRelease();
            v15 = MEMORY[0x277D84F90];
          }

          goto LABEL_21;
        }

        goto LABEL_51;
      }

      goto LABEL_50;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      swift_unknownObjectRelease();
      v29 = v67;
      v21 = v16;
      v16 = v12;
      v20 = v13;
      v13 = v69;
LABEL_14:
      sub_215364C28(v27, v29, v15, v5);
      v15 = v32;
LABEL_21:
      v82 = v21;
      swift_unknownObjectRelease();
      if (!v25)
      {
        v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v5 = v27 != 0;
        if (v27 < v5)
        {
          goto LABEL_48;
        }

LABEL_30:
        if (v13 && v27 > 1)
        {
          sub_2151A6C9C(0, &qword_27CA5AF70);

          v36 = v5;
          do
          {
            v37 = v36 + 1;
            sub_2154A2DBC();
            v36 = v37;
          }

          while (v27 != v37);
          if (!v25)
          {
            goto LABEL_35;
          }
        }

        else
        {

          if (!v25)
          {
LABEL_35:
            v38 = a2 & 0xFFFFFFFFFFFFFF8;
            v67 = v38 + 32;
            v69 = (2 * v27) | 1;
LABEL_38:
            v42 = v78;
            swift_unknownObjectRetain();
            v43 = sub_21541E390(v42, v79);
            v44 = v81;
            v45 = v42;
            v46 = v43;
            (*(v74 + 32))(v20, v45, v16);
            v47 = sub_2154A1C1C();
            v79 = &v66;
            MEMORY[0x28223BE20](v47);
            *(&v66 - 4) = v15;
            *(&v66 - 3) = v44;
            *(&v66 - 2) = v46;
            sub_2154A165C();
            v80 = v16;
            sub_215421804(&qword_27CA5A478, MEMORY[0x277CD94D0]);
            sub_2154A1B6C();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A3F0);
            sub_2154A1ACC();
            swift_unknownObjectRelease();
            v48 = v69;
            v49 = v70;
            v50 = v71;
            if (v5 == v69 >> 1)
            {
              v76[2](v76, 0);
              v51 = [v75 sharedState];
              [v51 endBlockingDeauthentication];

              swift_unknownObjectRelease();
            }

            else
            {
              v52 = v68;
              (*(v70 + 56))(v68, 1, 1, v71);
              v53 = v46;
              v54 = sub_2154A1ABC();
              sub_2151ADCD8(v52, &qword_27CA5A378);
              v55 = swift_allocObject();
              v56 = v77;
              v55[2] = sub_2154216A4;
              v55[3] = v56;
              v57 = v67;
              v55[4] = v38;
              v55[5] = v57;
              v55[6] = v5;
              v55[7] = v48;
              v58 = v81;
              v55[8] = v81;
              v55[9] = v53;
              v55[10] = v54;
              swift_unknownObjectRetain();

              v59 = v58;
              v60 = v53;

              sub_2154A1ADC();

              swift_unknownObjectRelease();
            }

            (*(v49 + 8))(v73, v50);
            (*(v74 + 8))(v20, v80);
          }
        }

        v38 = sub_2154A2F0C();
        v67 = v39;
        v5 = v40;
        v69 = v41;
        goto LABEL_38;
      }

      v21 = a2 < 0 ? a2 : a2 & 0xFFFFFFFFFFFFFF8;
      v35 = sub_2154A2C8C();
      if (v35 < 0)
      {
        break;
      }

      v27 = v35;
      v5 = v35 != 0;
      if (sub_2154A2C8C() < v5)
      {
        goto LABEL_48;
      }

      if (sub_2154A2C8C() >= v27)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_53:
    v5 = v35;
    v62 = v21;
    v63 = v20;
    v64 = v62;
    result = sub_2154A2C8C();
    if ((result & 0x8000000000000000) == 0)
    {
      v26 = sub_2154A2C8C();
      v65 = v64;
      v20 = v63;
      v21 = v65;
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_2154216F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_215421760()
{
  result = qword_27CA5D930;
  if (!qword_27CA5D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D930);
  }

  return result;
}

uint64_t sub_215421804(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21542184C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_2154727F4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2153B0D68(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_2153DCCC0();
        v14 = v16;
      }

      result = sub_21536D3B8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_215421944(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TextElementAnimationConfiguration();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_2151ADCD8(a1, &qword_27CA5D960);
    sub_21536D1E8(a2, v7);
    v13 = sub_21549E70C();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_2151ADCD8(v7, &qword_27CA5D960);
  }

  else
  {
    sub_215328E68(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_215472BE8(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_21549E70C();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

BOOL sub_215421B5C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_21549E70C();
    ++v2;
    sub_215424E2C();
  }

  while ((sub_2154A1D1C() & 1) == 0);
  return v3 != v4;
}

id TextElementAnimator.__allocating_init(textView:originTrackedParagraphs:destinationTrackedParagraphs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___ICTextElementAnimator_textView] = a1;
  *&v7[OBJC_IVAR___ICTextElementAnimator_originTrackedParagraphs] = a2;
  *&v7[OBJC_IVAR___ICTextElementAnimator_destinationTrackedParagraphs] = a3;
  v8 = a1;
  *&v7[OBJC_IVAR___ICTextElementAnimator_uuidsToElementAnimationConfigurations] = sub_215328A80(MEMORY[0x277D84F90]);
  v11.receiver = v7;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_215421DB4();

  return v9;
}

id TextElementAnimator.init(textView:originTrackedParagraphs:destinationTrackedParagraphs:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___ICTextElementAnimator_textView] = a1;
  *&v3[OBJC_IVAR___ICTextElementAnimator_originTrackedParagraphs] = a2;
  *&v3[OBJC_IVAR___ICTextElementAnimator_destinationTrackedParagraphs] = a3;
  v8 = a1;
  *&v3[OBJC_IVAR___ICTextElementAnimator_uuidsToElementAnimationConfigurations] = sub_215328A80(MEMORY[0x277D84F90]);
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_215421DB4();

  return v9;
}

void sub_215421DB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D960);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v96 - v2;
  v111 = sub_21549E70C();
  v4 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v101 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v103 = &v96 - v7;
  MEMORY[0x28223BE20](v8);
  v102 = (&v96 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v96 - v11;
  v114 = type metadata accessor for TextElementAnimationConfiguration();
  v13 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v100 = &v96 - v16;
  MEMORY[0x28223BE20](v17);
  v97 = &v96 - v18;
  v19 = OBJC_IVAR___ICTextElementAnimator_uuidsToElementAnimationConfigurations;
  swift_beginAccess();
  v112 = v19;
  *&v0[v19] = MEMORY[0x277D84F98];

  v20 = type metadata accessor for TextElementLocator();
  v21 = objc_allocWithZone(v20);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v119.receiver = v21;
  v119.super_class = v20;
  v22 = objc_msgSendSuper2(&v119, sel_init);
  v113 = v0;
  v23 = v0;
  v96 = v22;
  sub_215490514(v22, v23);

  v24 = sub_215422F34();
  v25 = *(v24 + 2);
  v115 = v23;
  if (v25)
  {
    v99 = v4;
    v27 = v4[2];
    v26 = (v4 + 2);
    v107 = v27;
    v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
    v98 = v24;
    v29 = &v24[v28];
    v106 = v26[7];
    v105 = (v13 + 56);
    v30 = v13;
    v108 = v26;
    v31 = (v26 - 1);
    v104 = v30;
    v32 = (v30 + 48);
    v33 = MEMORY[0x277D84F90];
    v34 = v111;
    v109 = v12;
    do
    {
      v35 = v3;
      v36 = v34;
      v107(v12, v29, v34);
      v38 = v112;
      v37 = v113;
      swift_beginAccess();
      v39 = *&v37[v38];
      if (*(v39 + 16) && (v40 = sub_2153B11FC(v12), (v41 & 1) != 0))
      {
        sub_2153DDBB8(*(v39 + 56) + *(v104 + 72) * v40, v35);
        v42 = 0;
      }

      else
      {
        v42 = 1;
      }

      v34 = v36;
      v3 = v35;
      v43 = v114;
      (*v105)(v35, v42, 1, v114);
      swift_endAccess();
      v12 = v109;
      (*v31)(v109, v34);
      if ((*v32)(v35, 1, v43) == 1)
      {
        sub_2151ADCD8(v35, &qword_27CA5D960);
      }

      else
      {
        sub_215328E68(v35, v110);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_215318994(0, v33[2] + 1, 1, v33);
        }

        v45 = v33[2];
        v44 = v33[3];
        if (v45 >= v44 >> 1)
        {
          v33 = sub_215318994(v44 > 1, v45 + 1, 1, v33);
        }

        v33[2] = v45 + 1;
        sub_215328E68(v110, v33 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v45);
        v34 = v111;
      }

      v29 = v106 + v29;
      --v25;
    }

    while (v25);

    v23 = v115;
    v4 = v99;
    v13 = v104;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v46 = v102;
  v47 = v114;
  if (v33[2])
  {
    v48 = v100;
    sub_2153DDBB8(v33 + ((v13[80] + 32) & ~v13[80]), v100);

    v49 = v48;
    v50 = v97;
    sub_215328E68(v49, v97);
    [*(v50 + *(v47 + 20)) frame];
    v52 = v51;
    v53 = *&v23[OBJC_IVAR___ICTextElementAnimator_originTrackedParagraphs];
    if (v53 >> 62)
    {
      goto LABEL_76;
    }

    for (i = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
    {
      v55 = 0;
      v109 = OBJC_IVAR___ICTextElementAnimator_destinationTrackedParagraphs;
      v110 = v53 & 0xC000000000000001;
      v105 = v53 & 0xFFFFFFFFFFFFFF8;
      v104 = v53 + 32;
      v108 = (v4 + 4);
      v99 = v4 + 2;
      v98 = (v13 + 48);
      v106 = (v4 + 1);
      v100 = v53;
      v107 = i;
      while (1)
      {
        if (v110)
        {
          v56 = MEMORY[0x216069960](v55, v53);
        }

        else
        {
          if (v55 >= *(v105 + 16))
          {
            goto LABEL_74;
          }

          v56 = *(v104 + 8 * v55);
        }

        v13 = v56;
        if (__OFADD__(v55++, 1))
        {
          break;
        }

        v4 = [v56 paragraph];
        v58 = [v4 todoTrackingUUID];

        if (v58)
        {
          v4 = v53;
          v59 = v103;
          sub_21549E6EC();

          v53 = v111;
          v60 = (*v108)(v46, v59, v111);
          v61 = *&v23[v109];
          MEMORY[0x28223BE20](v60);
          *(&v96 - 2) = v46;
          sub_2153177D0(sub_215424E0C, (&v96 - 4), v61);
          if ((v63 & 1) == 0)
          {
            v64 = v62;
            if (v62 < 0)
            {
              goto LABEL_75;
            }

            v65 = v61 >> 62;
            if (v61 >> 62)
            {
              if (sub_2154A2C8C() < 0)
              {
                __break(1u);
                return;
              }

              if (sub_2154A2C8C() < v64)
              {
LABEL_70:
                __break(1u);
                goto LABEL_71;
              }
            }

            else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) < v62)
            {
              goto LABEL_70;
            }

            if ((v61 & 0xC000000000000001) != 0 && v64)
            {
              sub_2151A6C9C(0, &qword_27CA5D958);

              v66 = 0;
              do
              {
                v67 = v66 + 1;
                sub_2154A2DBC();
                v66 = v67;
              }

              while (v64 != v67);
              if (!v65)
              {
LABEL_39:
                v68 = 0;
                v4 = ((v61 & 0xFFFFFFFFFFFFFF8) + 32);
                goto LABEL_42;
              }
            }

            else
            {

              if (!v65)
              {
                goto LABEL_39;
              }
            }

            sub_2154A2F0C();
            v4 = v69;
            v68 = v70;
            v64 = v71 >> 1;
LABEL_42:
            swift_unknownObjectRetain();
            v72 = v64 - v68;
            if (v64 != v68)
            {
              if (v64 <= v68)
              {
                v78 = v68;
              }

              else
              {
                v78 = v64;
              }

              v53 = v78 - v68;
              v46 = &v4[v68];
              v73 = MEMORY[0x277D84F90];
              while (v53)
              {
                v118 = *v46;
                v4 = v118;
                sub_215423C4C(&v118, v23, &v116);

                if ((v117 & 1) == 0)
                {
                  v79 = v116;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v73 = sub_215317D18(0, *(v73 + 2) + 1, 1, v73);
                  }

                  v81 = *(v73 + 2);
                  v80 = *(v73 + 3);
                  v4 = (v81 + 1);
                  if (v81 >= v80 >> 1)
                  {
                    v73 = sub_215317D18((v80 > 1), v81 + 1, 1, v73);
                  }

                  *(v73 + 2) = v4;
                  *&v73[8 * v81 + 32] = v79;
                  v23 = v115;
                }

                --v53;
                ++v46;
                if (!--v72)
                {
                  goto LABEL_44;
                }
              }

              __break(1u);
              break;
            }

            v73 = MEMORY[0x277D84F90];
LABEL_44:
            swift_unknownObjectRelease_n();
            v74 = *(v73 + 2);
            if (v74)
            {
              v75 = v101;
              v46 = v102;
              if (v74 <= 3)
              {
                v76 = 0;
                v77 = v52;
                goto LABEL_63;
              }

              v76 = v74 & 0x7FFFFFFFFFFFFFFCLL;
              v82 = (v73 + 48);
              v83 = v74 & 0x7FFFFFFFFFFFFFFCLL;
              v77 = v52;
              do
              {
                v77 = v77 + *(v82 - 2) + *(v82 - 1) + *v82 + v82[1];
                v82 += 4;
                v83 -= 4;
              }

              while (v83);
              if (v74 != v76)
              {
LABEL_63:
                v84 = v74 - v76;
                v85 = &v73[8 * v76 + 32];
                do
                {
                  v86 = *v85++;
                  v77 = v77 + v86;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v77 = v52;
              v75 = v101;
              v46 = v102;
            }

            v87 = v111;
            (*v99)(v75, v46, v111);
            swift_beginAccess();
            v88 = sub_2154242EC(&v116);
            v4 = v89;
            v90 = v114;
            if (!(*v98)(v89, 1, v114))
            {
              [*(v4 + *(v90 + 20)) frame];
              v91 = (v4 + *(v90 + 32));
              *v91 = v92;
              v91[1] = v77;
              *(v91 + 2) = v93;
              *(v91 + 3) = v94;
              *(v91 + 32) = 0;
            }

            (v88)(&v116, 0);
            swift_endAccess();

            v95 = *v106;
            (*v106)(v75, v87);
            v95(v46, v87);
            i = v107;
            v53 = v100;
            goto LABEL_22;
          }

          (*v106)(v46, v53);
          i = v107;
          v53 = v4;
        }

        else
        {
        }

LABEL_22:
        if (v55 == i)
        {
          goto LABEL_77;
        }
      }

      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      ;
    }

LABEL_77:

    sub_215424DB0(v97);
  }

  else
  {
LABEL_71:
  }
}

void TextElementAnimator.animate(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v6) = 1051260355;
  LODWORD(v7) = 1045220557;
  LODWORD(v8) = 1.0;
  v9 = [v5 initWithControlPoints__:v6 :{0.0, v7, v8}];
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v20 = sub_215424D18;
  v21 = v11;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_2151BD7E4;
  v19 = &block_descriptor_27;
  v12 = _Block_copy(&v16);
  v13 = v2;

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v20 = sub_215424D20;
  v21 = v14;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_2151BD7E4;
  v19 = &block_descriptor_6_1;
  v15 = _Block_copy(&v16);
  sub_2151BD748(a1);

  [v10 ic:v9 animateWithDuration:v12 timingFunction:v15 animations:0.35 completion:?];
  _Block_release(v15);
  _Block_release(v12);
}

uint64_t sub_215422C80(uint64_t a1)
{
  v2 = type metadata accessor for TextElementAnimationConfiguration();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR___ICTextElementAnimator_uuidsToElementAnimationConfigurations;
  swift_beginAccess();
  v10 = *(a1 + v9);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  while (v13)
  {
LABEL_10:
    sub_2153DDBB8(*(v10 + 56) + *(v3 + 72) * (__clz(__rbit64(v13)) | (v16 << 6)), v8);
    sub_215328E68(v8, v5);
    v18 = &v5[*(v2 + 32)];
    if ((v18[32] & 1) == 0)
    {
      v20 = *v18;
      v19 = *(v18 + 1);
      v21 = *&v5[*(v2 + 20)];
      [v21 frame];
      [v21 setFrame_];
    }

    v13 &= v13 - 1;
    result = sub_215424DB0(v5);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
    }

    v13 = *(v10 + 64 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

char *sub_215422F34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v29 - v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = sub_21549E70C();
  v29 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR___ICTextElementAnimator_originTrackedParagraphs);
  if (v12 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
  {
    v14 = 0;
    v36 = v12 & 0xC000000000000001;
    v34 = v3;
    v35 = v12 & 0xFFFFFFFFFFFFFF8;
    v31 = (v29 + 48);
    v32 = (v29 + 56);
    v30 = (v29 + 32);
    v15 = MEMORY[0x277D84F90];
    v33 = i;
    while (v36)
    {
      v16 = MEMORY[0x216069960](v14, v12, v10);
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v3 = v8;
      v18 = v16;
      v19 = [v18 paragraph];
      v20 = [v19 todoTrackingUUID];
      if (v20)
      {
        v21 = v20;
        v22 = v34;
        sub_21549E6EC();

        v23 = 0;
      }

      else
      {
        v23 = 1;
        v22 = v34;
      }

      (*v32)(v22, v23, 1, v9);
      v24 = v38;
      sub_215424E84(v22, v38);
      v8 = v3;
      sub_215424E84(v24, v3);

      if ((*v31)(v3, 1, v9) == 1)
      {
        sub_2151ADCD8(v3, &unk_27CA5EA00);
      }

      else
      {
        v25 = *v30;
        (*v30)(v37, v3, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_21531896C(0, *(v15 + 2) + 1, 1, v15);
        }

        v27 = *(v15 + 2);
        v26 = *(v15 + 3);
        if (v27 >= v26 >> 1)
        {
          v15 = sub_21531896C(v26 > 1, v27 + 1, 1, v15);
        }

        *(v15 + 2) = v27 + 1;
        v25(&v15[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27], v37, v9);
      }

      ++v14;
      if (v17 == v33)
      {
        return v15;
      }
    }

    if (v14 >= *(v35 + 16))
    {
      goto LABEL_21;
    }

    v16 = *(v12 + 8 * v14 + 32);
    v17 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_215423308(void *a1, void *a2, void *a3, uint64_t a4)
{
  v39 = a1;
  v40 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D960);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v35 - v7;
  v8 = type metadata accessor for TextElementAnimationConfiguration();
  v37 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21549E70C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v36 = a2;
    v41 = a3;
    v23 = [v22 attributedString];
    v24 = [v23 attribute:*MEMORY[0x277D35DA8] atIndex:0 effectiveRange:0];

    if (v24)
    {
      sub_2154A2BCC();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45[0] = v43;
    v45[1] = v44;
    if (*(&v44 + 1))
    {
      sub_2151A6C9C(0, &qword_27CA5D970);
      if (swift_dynamicCast())
      {
        v25 = v42;
        v26 = [v42 todoTrackingUUID];
        if (v26)
        {
          v35 = v25;
          v27 = v26;
          sub_21549E6EC();

          (*(v12 + 32))(v20, v17, v11);
          v28 = sub_215422F34();
          v29 = sub_215421B5C(v20, v28);

          if (v29)
          {
            v30 = *(v12 + 16);
            v30(v10, v20, v11);
            *&v10[v8[5]] = v39;
            *&v10[v8[6]] = v36;
            *&v10[v8[7]] = v22;
            v31 = &v10[v8[8]];
            *v31 = 0u;
            *(v31 + 1) = 0u;
            v31[32] = 1;
            v30(v14, v20, v11);
            v32 = v38;
            sub_2153DDBB8(v10, v38);
            (*(v37 + 56))(v32, 0, 1, v8);
            swift_beginAccess();
            v33 = v39;
            v34 = v36;
            sub_215421944(v32, v14);
            swift_endAccess();

            sub_215424DB0(v10);
            (*(v12 + 8))(v20, v11);
            return;
          }

          (*(v12 + 8))(v20, v11);
        }

        else
        {
        }
      }
    }

    else
    {

      sub_2151ADCD8(v45, &qword_27CA5ABC0);
    }
  }
}

uint64_t sub_2154237A4(id *a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_21549E70C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D968);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v9 - 8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v28 - v16;
  v18 = [*a1 paragraph];
  v19 = [v18 todoTrackingUUID];

  if (v19)
  {
    sub_21549E6EC();

    v20 = *(v4 + 56);
    v20(v17, 0, 1, v3);
  }

  else
  {
    v20 = *(v4 + 56);
    v20(v17, 1, 1, v3);
  }

  (*(v4 + 16))(v13, v31, v3);
  v20(v13, 0, 1, v3);
  v21 = *(v6 + 48);
  sub_215324EEC(v17, v8, &unk_27CA5EA00);
  sub_215324EEC(v13, &v8[v21], &unk_27CA5EA00);
  v22 = *(v4 + 48);
  if (v22(v8, 1, v3) != 1)
  {
    v24 = v30;
    sub_215324EEC(v8, v30, &unk_27CA5EA00);
    if (v22(&v8[v21], 1, v3) != 1)
    {
      v25 = v29;
      (*(v4 + 32))(v29, &v8[v21], v3);
      sub_215424E2C();
      v23 = sub_2154A1D1C();
      v26 = *(v4 + 8);
      v26(v25, v3);
      sub_2151ADCD8(v13, &unk_27CA5EA00);
      sub_2151ADCD8(v17, &unk_27CA5EA00);
      v26(v30, v3);
      sub_2151ADCD8(v8, &unk_27CA5EA00);
      return v23 & 1;
    }

    sub_2151ADCD8(v13, &unk_27CA5EA00);
    sub_2151ADCD8(v17, &unk_27CA5EA00);
    (*(v4 + 8))(v24, v3);
    goto LABEL_9;
  }

  sub_2151ADCD8(v13, &unk_27CA5EA00);
  sub_2151ADCD8(v17, &unk_27CA5EA00);
  if (v22(&v8[v21], 1, v3) != 1)
  {
LABEL_9:
    sub_2151ADCD8(v8, &qword_27CA5D968);
    v23 = 0;
    return v23 & 1;
  }

  sub_2151ADCD8(v8, &unk_27CA5EA00);
  v23 = 1;
  return v23 & 1;
}

void sub_215423C4C(id *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v67 = a3;
  v5 = type metadata accessor for TextElementAnimationConfiguration();
  v65 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v62 - v9;
  v10 = sub_21549E70C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v62 - v16;
  v18 = [*a1 paragraph];
  v19 = [v18 todoTrackingUUID];

  v20 = 0.0;
  if (!v19)
  {
    goto LABEL_26;
  }

  sub_21549E6EC();

  (*(v11 + 32))(v17, v13, v10);
  v21 = OBJC_IVAR___ICTextElementAnimator_uuidsToElementAnimationConfigurations;
  swift_beginAccess();
  v22 = *(a2 + v21);
  v23 = v10;
  if (!*(v22 + 16) || (v24 = sub_2153B11FC(v17), (v25 & 1) == 0))
  {
    swift_endAccess();
    (*(v11 + 8))(v17, v10);
LABEL_26:
    v60 = 1;
LABEL_27:
    v61 = v67;
    *v67 = v20;
    *(v61 + 8) = v60;
    return;
  }

  v64 = v17;
  v26 = v11;
  sub_2153DDBB8(*(v22 + 56) + *(v65 + 72) * v24, v7);
  v27 = v66;
  sub_215328E68(v7, v66);
  swift_endAccess();
  v28 = *(v27 + *(v5 + 24));
  [v28 layoutFragmentFrame];
  v20 = v29;
  v30 = [v28 textLineFragments];
  sub_2151A6C9C(0, &qword_27CA5C558);
  v31 = sub_2154A1F4C();

  if (v31 >> 62)
  {
    v32 = sub_2154A2C8C();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v32 < 2)
  {
    goto LABEL_29;
  }

  v33 = *(v27 + *(v5 + 28));
  v34 = [v33 textContentManager];
  if (!v34)
  {
    goto LABEL_29;
  }

  v35 = v34;
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36 || (v37 = v36, (v38 = [v33 elementRange]) == 0))
  {

LABEL_29:
    (*(v26 + 8))(v64, v23);
    goto LABEL_30;
  }

  v39 = v38;
  v40 = [v38 endLocation];

  if (!v40)
  {
    (*(v26 + 8))(v64, v23);

    goto LABEL_30;
  }

  v65 = v23;
  v41 = [v37 documentRange];
  v42 = [v41 location];

  v43 = [v37 offsetFromLocation:v42 toLocation:v40];
  swift_unknownObjectRelease();
  v44 = [v37 textStorage];
  v45 = [v44 length];

  if (v43 != v45)
  {
    (*(v26 + 8))(v64, v65);

    swift_unknownObjectRelease();
    v27 = v66;
    goto LABEL_30;
  }

  v46 = [v28 textLineFragments];
  v47 = sub_2154A1F4C();

  v23 = v65;
  v27 = v66;
  if (!(v47 >> 62))
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v48)
    {
      goto LABEL_14;
    }

LABEL_35:

LABEL_41:
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v48 = sub_2154A2C8C();
  if (!v48)
  {
    goto LABEL_35;
  }

LABEL_14:
  v49 = __OFSUB__(v48, 1);
  v50 = v48 - 1;
  if (v49)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ((v47 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v51 = MEMORY[0x216069960](v50, v47);
    goto LABEL_19;
  }

  if ((v50 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v50 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_43;
  }

  v51 = *(v47 + 8 * v50 + 32);
LABEL_19:
  v63 = v51;

  v52 = [v28 textLineFragments];
  v47 = sub_2154A1F4C();

  if (!(v47 >> 62))
  {
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_39:
  if (!sub_2154A2C8C())
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_21:
  if ((v47 & 0xC000000000000001) != 0)
  {
LABEL_43:
    v53 = MEMORY[0x216069960](0, v47);
    goto LABEL_24;
  }

  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v53 = *(v47 + 32);
LABEL_24:
    v54 = v53;

    [v54 typographicBounds];
    v56 = v55;
    v57 = v63;
    [v63 typographicBounds];
    v59 = v58;

    swift_unknownObjectRelease();
    (*(v26 + 8))(v64, v65);
    v20 = v20 - (v56 + v59);
LABEL_30:
    sub_215424DB0(v27);
    v60 = 0;
    goto LABEL_27;
  }

  __break(1u);
}

void (*sub_2154242EC(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_21549E70C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_2154245B4(v4, v9);
  return sub_215424404;
}

void sub_215424404(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

id TextElementAnimator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TextElementAnimator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_2154245B4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_21549E70C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_215424CE4(v6);
  v6[12] = sub_215424788(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_2154246F0;
}

void sub_2154246F0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_215424788(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_21549E70C();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = type metadata accessor for TextElementAnimationConfiguration();
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D960) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_2153B11FC(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_2153DD38C();
      goto LABEL_21;
    }

    sub_2153DB3D0(v26, a3 & 1);
    v29 = sub_2153B11FC(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_2154A300C();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    sub_215328E68(*(*v4 + 56) + *(v15 + 72) * v23, v20);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return sub_215424AA4;
}