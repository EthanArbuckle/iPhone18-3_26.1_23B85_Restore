Swift::Void __swiftcall MUILastSeenBucketHelper.clearState()()
{
  v48 = 0;
  v59 = 0;
  v37 = 0;
  v45 = sub_214CCDA74();
  v39 = v45;
  v40 = *(v45 - 8);
  v44 = v40;
  v41 = v40;
  v42 = *(v40 + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v0 = v5 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v0;
  v59 = v1;
  v2 = sub_214C50524();
  (*(v44 + 16))(v0, v2, v45);
  v50 = sub_214CCDA54();
  v46 = v50;
  v49 = sub_214CCFBB4();
  v47 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v51 = sub_214CD03C4();
  if (os_log_type_enabled(v50, v49))
  {
    v3 = v37;
    v28 = sub_214CCFF24();
    v24 = v28;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v26 = 0;
    v29 = sub_214A632C4(0);
    v27 = v29;
    v30 = sub_214A632C4(v26);
    v55 = v28;
    v54 = v29;
    v53 = v30;
    v31 = 0;
    v32 = &v55;
    sub_214A6627C(0, &v55);
    sub_214A6627C(v31, v32);
    v52 = v51;
    v33 = v5;
    MEMORY[0x28223BE20](v5);
    v34 = &v5[-6];
    v5[-4] = v4;
    v5[-3] = &v54;
    v5[-2] = &v53;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    v36 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v46, v47, "Clearing all state", v24, 2u);
      v22 = 0;
      sub_214A669DC(v27);
      sub_214A669DC(v30);
      sub_214CCFF04();

      v23 = v36;
    }
  }

  else
  {

    v23 = v37;
  }

  (*(v41 + 8))(v43, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37900);
  v18 = 0;
  v5[2] = sub_214CD03C4();
  v16 = type metadata accessor for MUIBucket();
  v5[1] = sub_214CCD254();
  v15 = sub_214A69344();
  v7 = sub_214CCF344();
  v6 = (v38 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSelectedDateByBucket);
  v17 = 33;
  v8 = &v58;
  swift_beginAccess();
  *v6 = v7;

  swift_endAccess();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37908);
  v9 = sub_214CD03C4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0);
  v11 = sub_214CCF344();
  v10 = (v38 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_sessionLastSeenDatesByBucket);
  v12 = &v57;
  swift_beginAccess();
  *v10 = v11;

  swift_endAccess();
  sub_214CD03C4();
  v20 = sub_214CCF344();
  v19 = (v38 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSeenDatesByBucket);
  v21 = &v56;
  swift_beginAccess();
  *v19 = v20;

  swift_endAccess();
}

uint64_t MUILastSeenBucketHelper.updateLastSeenDates(_:forMailboxes:bucket:)(void *a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v60 = a2;
  v59 = a3;
  v52 = "Fatal error";
  v53 = "MailUI/MUILastSeenBucketHelper.swift";
  v54 = sub_214C56D1C;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
  v55 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v56 = &v27 - v55;
  v57 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v27 - v55);
  v58 = &v27 - v57;
  v62 = sub_214CCD254();
  v64 = *(v62 - 8);
  v63 = v62 - 8;
  v65 = v64;
  v66 = *(v64 + 64);
  v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v68 = &v27 - v67;
  v69 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v70 = &v27 - v69;
  v89 = &v27 - v69;
  v71 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v72 = &v27 - v71;
  v73 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v11);
  v74 = &v27 - v73;
  v88 = &v27 - v73;
  v87 = v13;
  v86 = v14;
  v85 = v15;
  v84 = v3;
  v75 = [v13 first];
  if (v75)
  {
    v50 = v75;
    v49 = v75;
    sub_214CCD224();
    (*(v64 + 32))(v58, v72, v62);
    (*(v64 + 56))(v58, 0, 1, v62);
    v16 = MEMORY[0x277D82BD8](v49);
  }

  else
  {
    (*(v64 + 56))(v58, 1, 1, v62);
  }

  v47 = *(v64 + 48);
  v48 = v64 + 48;
  if (v47(v58, 1, v62, v16) == 1)
  {
    sub_214A871C0(v58);
  }

  else
  {
    v44 = *(v64 + 32);
    v45 = v64 + 32;
    v44(v74, v58, v62);
    v46 = [v61 second];
    if (v46)
    {
      v43 = v46;
      v42 = v46;
      sub_214CCD224();
      v44(v56, v72, v62);
      (*(v64 + 56))(v56, 0, 1, v62);
      v17 = MEMORY[0x277D82BD8](v42);
    }

    else
    {
      (*(v64 + 56))(v56, 1, 1, v62);
    }

    if (v47(v56, 1, v62, v17) != 1)
    {
      v44(v70, v56, v62);
      v28 = *(v51 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 8);
      MEMORY[0x277D82BE0](v28);

      sub_214A63684();
      v27 = sub_214CCF7D4();

      v39 = [v28 mui:v27 inboxExternalURLsFromMailboxes:?];
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      v83 = v39;
      v33 = 7;
      v37 = swift_allocObject();
      v29 = v37 + 16;
      MEMORY[0x277D82BE0](v51);
      swift_unknownObjectWeakInit();
      MEMORY[0x277D82BD8](v51);

      v32 = v65;
      v31 = *(v64 + 16);
      v30 = v64 + 16;
      v31(v72, v74, v62);
      v31(v68, v70, v62);
      v18 = *(v32 + 80);
      v34 = (v18 + 32) & ~v18;
      v35 = (v34 + v66 + v18) & ~v18;
      v19 = swift_allocObject();
      v20 = v59;
      v21 = v34;
      v22 = v72;
      v23 = v44;
      v24 = v62;
      v36 = v19;
      *(v19 + 16) = v37;
      *(v19 + 24) = v20;
      v23(v19 + v21, v22, v24);
      v44((v36 + v35), v68, v62);
      v81 = v54;
      v82 = v36;
      aBlock = MEMORY[0x277D85DD0];
      v77 = 1107296256;
      v78 = 0;
      v79 = sub_214B100BC;
      v80 = &block_descriptor_95;
      v38 = _Block_copy(&aBlock);

      [v39 addSuccessBlock_];
      _Block_release(v38);
      v25 = MEMORY[0x277D82BD8](v39);
      v41 = *(v64 + 8);
      v40 = v64 + 8;
      v41(v70, v62, v25);
      return (v41)(v74, v62);
    }

    sub_214A871C0(v56);
    (*(v64 + 8))(v74, v62);
  }

  sub_214CCF614();
  result = sub_214CD0204();
  __break(1u);
  return result;
}

Swift::Void __swiftcall MUILastSeenBucketHelper.update(mailboxes:)(Swift::OpaquePointer mailboxes)
{

  v2 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  v2->_rawValue = mailboxes._rawValue;

  swift_endAccess();
  v3 = sub_214C52384(mailboxes._rawValue);
  v4 = (v5 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs);
  swift_beginAccess();
  *v4 = v3;

  swift_endAccess();
  MUILastSeenBucketHelper.updateSessionLastSeenDates()();
  sub_214C5197C(mailboxes._rawValue);
}

id sub_214C50438()
{
  sub_214A7C550();
  v1 = sub_214CCF7D4();
  v2 = [swift_getObjCClassFromMetadata() orPredicateWithSubpredicates_];
  MEMORY[0x277D82BD8](v1);

  return v2;
}

uint64_t sub_214C504BC()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_280C7DC40);
  __swift_project_value_buffer(v1, qword_280C7DC40);
  type metadata accessor for MUILastSeenBucketHelper();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_214C50524()
{
  if (qword_280C7DC30 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7DC40);
}

uint64_t sub_214C50590@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C50524();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214C505FC@<X0>(char *a1@<X8>)
{
  v8 = a1;
  v25 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
  v10 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v11 = v6 - v10;
  v12 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6 - v10);
  v21 = v6 - v12;
  v22 = sub_214CCD254();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v13 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v14 = v6 - v13;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6 - v13);
  v16 = v6 - v15;
  v25 = v1;
  v17 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper____lazy_storage___defaultDate);
  v18 = &v24;
  swift_beginAccess();
  sub_214A8782C(v17, v21);
  swift_endAccess();
  if ((*(v19 + 48))(v21, 1, v22) == 1)
  {
    sub_214A871C0(v21);
    sub_214C50980();
    v7 = *(v19 + 16);
    v6[2] = (v19 + 16);
    v7(v11, v14, v22);
    (*(v19 + 56))(v11, 0, 1, v22);
    v6[0] = (v9 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper____lazy_storage___defaultDate);
    v6[1] = &v23;
    swift_beginAccess();
    sub_214A87954(v11, v6[0]);
    swift_endAccess();
    v7(v8, v14, v22);
    return (*(v19 + 8))(v14, v22);
  }

  else
  {
    (*(v19 + 32))(v16, v21, v22);
    (*(v19 + 16))(v8, v16, v22);
    return (*(v19 + 8))(v16, v22);
  }
}

uint64_t sub_214C509A4(uint64_t a1)
{
  v11 = a1;
  v15 = 0;
  v14 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v6 = &v4 - v5;
  v15 = v2;
  v14 = v1;
  v12 = sub_214CCD254();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  (*(v9 + 16))(v6, v11);
  (*(v9 + 56))(v6, 0, 1, v12);
  v7 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper____lazy_storage___defaultDate);
  v8 = &v13;
  swift_beginAccess();
  sub_214A87954(v6, v7);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214C50B60()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C50BC8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C50C4C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C50CB4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C50D38()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueryTokens);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C50DA0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueryTokens);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C50E24()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C50E94(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C50F30()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSeenDatesByBucket);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C50F98(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSeenDatesByBucket);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C5101C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_sessionLastSeenDatesByBucket);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C51084(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_sessionLastSeenDatesByBucket);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C51108()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSelectedDateByBucket);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C51170(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_lastSelectedDateByBucket);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C511F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v16 = a4;
  v17 = a1;
  v28 = a2;
  v29 = a3;
  v24 = 0;
  v33 = sub_214C56E38;
  v50 = 0;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v45 = 0;
  v36 = sub_214CCD254();
  v18 = *(v36 - 8);
  v19 = v36 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v17);
  v21 = v13 - v20;
  v22 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v37 = v13 - v22;
  v23 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v32 = v13 - v23;
  v50 = v13 - v23;
  v49 = v9;
  v47 = v10;
  v48 = v11;
  v46 = v4;
  EMCategoryTypeForBucket(v9);
  sub_214A6E0D8();
  v31 = sub_214CCFF44();
  v45 = v31;
  v25 = (v4 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_externalMailboxURLs);
  v26 = &v44;
  swift_beginAccess();
  v27 = *v25;

  swift_endAccess();
  v43 = v27;
  sub_214CCD194();
  MEMORY[0x277D82BE0](v31);
  MEMORY[0x277D82BE0](v30);
  v34 = &v38;
  v39 = v28;
  v40 = v29;
  v41 = v31;
  v42 = v30;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37918);
  sub_214A87308();
  sub_214CCF744();
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v30);
  v14 = *(v18 + 8);
  v13[1] = v18 + 8;
  v14(v37, v36);
  sub_214A62278();
  sub_214CCD1A4();
  v15 = sub_214CCD214();
  v14(v21, v36);
  if (v15)
  {
    sub_214C505FC(v16);
  }

  else
  {
    (*(v18 + 16))(v16, v32, v36);
  }

  v14(v32, v36);
  return MEMORY[0x277D82BD8](v31);
}

uint64_t sub_214C5163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = a7;
  v21 = a1;
  v18 = a2;
  v17 = a3;
  v19 = a5;
  v23 = a6;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v30 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
  v16 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v27 = &v14 - v16;
  v26 = sub_214CCD254();
  v24 = *(v26 - 8);
  v25 = v26 - 8;
  v20 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v19);
  v22 = &v14 - v20;
  v36 = &v14 - v20;
  v35 = v21;
  v34 = v10;
  v32 = v11;
  v33 = a4;
  v31 = v9;
  v30 = v12;
  v11();
  MEMORY[0x277D82BE0](v23);
  v28 = *(v24 + 48);
  v29 = v24 + 48;
  if (v28(v27, 1, v26) == 1)
  {
    sub_214C505FC(v22);
    if (v28(v27, 1, v26) != 1)
    {
      sub_214A871C0(v27);
    }
  }

  else
  {
    (*(v24 + 32))(v22, v27, v26);
  }

  MEMORY[0x277D82BD8](v23);
  if (sub_214CCD1D4())
  {
    (*(v24 + 16))(v15, v22, v26);
  }

  else
  {
    (*(v24 + 16))(v15, v21, v26);
  }

  return (*(v24 + 8))(v22, v26);
}

uint64_t sub_214C5197C(uint64_t a1)
{
  v19 = a1;
  v18 = v1;
  sub_214C51BF0();
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36150);
  sub_214A7C404();
  if (sub_214CCFA94())
  {
    v3 = 0;
    goto LABEL_5;
  }

  (MEMORY[0x277D82BE0])();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v8;

  v4 = swift_allocObject();
  *(v4 + 16) = sub_214C56E6C;
  *(v4 + 24) = v5;

  v15 = sub_214C54658;
  v16 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_214C52350;
  v14 = &block_descriptor_105;
  v6 = _Block_copy(&aBlock);

  MUIBucketEnumerateAllBuckets(v6);
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v3 = sub_214C56E6C;
LABEL_5:
    sub_214A6B584(v3);
    return sub_214A6B584(0);
  }

  __break(1u);
  return result;
}

double sub_214C51BF0()
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37928);
  sub_214C56EDC();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37938);
    sub_214CD01B4();
    if (!v4)
    {
      break;
    }

    swift_getObjectType();
    [v4 cancel];
    swift_unknownObjectRelease();
  }

  sub_214A62278();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37940);
  sub_214C52618();
  sub_214CCF8B4();
  swift_endAccess();
  v1 = (v3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  [v2 removeAllObjects];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

void *sub_214C51DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[3] = a1;
  v28[2] = a2;
  v28[1] = a3;
  sub_214A7C550();
  v18 = sub_214CD03C4();
  v17 = v3;
  v13 = objc_opt_self();
  *v17 = [v13 predicateForMessagesWithCategoryType_];
  v14 = objc_opt_self();

  sub_214A63684();
  v15 = sub_214CCF7D4();

  v16 = [v14 predicateForMessagesInMailboxes_];
  MEMORY[0x277D82BD8](v15);
  v17[1] = v16;
  sub_214A63280();
  v28[0] = v18;
  MUILastSeenBucketHelper.unseenPredicates(for:usingCurrentLastSeenDates:)(a1, 1);
  sub_214CCF844();

  sub_214B10198();

  v22 = sub_214B101FC();
  MEMORY[0x277D82BE0](v22);
  v27 = v22;
  v21 = *(a3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 24);

  v23 = v21(v22);
  MEMORY[0x277D82BD8](v22);
  v25 = v23;
  if (v23)
  {
    v26 = v25;
  }

  else
  {
    MEMORY[0x277D82BE0](v27);
    v26 = v27;
  }

  v8 = v26;
  MEMORY[0x277D82BE0](v26);
  v4 = v27;
  v27 = v8;
  MEMORY[0x277D82BD8](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34E10);
  v7 = sub_214B71394();
  sub_214A7C860();
  sub_214CD03C4();
  v24 = sub_214C522CC(v7, v8);
  v9 = (a3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
  swift_beginAccess();
  v11 = *v9;
  MEMORY[0x277D82BE0](*v9);
  swift_endAccess();
  sub_214A69284();
  sub_214A6E0D8();
  v10 = sub_214BD1BBC(v5);
  [v11 setObject:v10 forKey:{v24, MEMORY[0x277D82BE0](v24).n128_f64[0]}];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = *(a3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration);
  MEMORY[0x277D82BE0](v12);
  [v12 startCountingQuery:v24 includingServerCountsForMailboxScope:0 withObserver:{a3, MEMORY[0x277D82BE0](a3).n128_f64[0]}];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v12);
  swift_unknownObjectRetain();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37928);
  sub_214CCF884();
  swift_endAccess();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v27);
  result = v28;
  sub_214A62278();
  return result;
}

uint64_t sub_214C52384(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13[1] = 0;
  v13[2] = a1;
  v15[0] = 0;
  v9 = *(v1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 8);
  MEMORY[0x277D82BE0](v9);

  sub_214A63684();
  v8 = sub_214CCF7D4();

  v11 = [v9 mui:v8 inboxExternalURLsFromMailboxes:?];
  MEMORY[0x277D82BD8](v8);
  v13[0] = 0;
  v12 = [v11 result_];
  v10 = v13[0];
  MEMORY[0x277D82BE0](v13[0]);
  v2 = v15[0];
  v15[0] = v10;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37918);
    MEMORY[0x277D82BE0](v12);
    sub_214A6E46C();
    sub_214CD04A4();
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v12);
    if (v14)
    {
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }

    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    sub_214A671E8(v15);
    return v6;
  }

  else
  {
    sub_214CCD154();
    v4 = sub_214CCF2D4();
    sub_214A671E8(v15);
    return v4;
  }
}

uint64_t MUILastSeenBucketHelper.Configuration.messageRepository.getter()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t MUILastSeenBucketHelper.Configuration.messageRepository.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t MUILastSeenBucketHelper.Configuration.mailboxRepository.getter()
{
  v2 = *(v0 + 8);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t MUILastSeenBucketHelper.Configuration.mailboxRepository.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t MUILastSeenBucketHelper.Configuration.mailboxCategoryStorage.getter()
{
  v2 = *(v0 + 16);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t MUILastSeenBucketHelper.Configuration.mailboxCategoryStorage.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_214C528C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_214A68750(a1, v10);
  v6 = v10[0];
  v7 = v10[1];
  v8 = v10[2];
  v4 = v10[3];
  v9 = v10[4];

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v9;
  *a2 = sub_214C5750C;
  a2[1] = v2;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
}

uint64_t sub_214C529B8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  return result;
}

uint64_t sub_214C529F8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  *(a2 + 24) = sub_214C57500;
  *(a2 + 32) = v2;
}

uint64_t sub_214C52AAC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a1;
  a2(&v3, &v4);
  return v3;
}

uint64_t MUILastSeenBucketHelper.Configuration.predicateUpdater.getter()
{
  v2 = *(v0 + 24);

  return v2;
}

uint64_t MUILastSeenBucketHelper.Configuration.predicateUpdater.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_214C52BD0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_214A68750(a1, v10);
  v6 = v10[0];
  v7 = v10[1];
  v8 = v10[2];
  v4 = v10[5];
  v9 = v10[6];

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v9;
  *a2 = sub_214C574F4;
  a2[1] = v2;
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
}

uint64_t sub_214C52CF4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];

  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  *(a2 + 40) = sub_214C574E8;
  *(a2 + 48) = v2;
}

uint64_t sub_214C52DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v5 = a1;
  v4 = a2;
  return a3(&v5, &v4);
}

uint64_t MUILastSeenBucketHelper.Configuration.unseenCountUpdater.getter()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t MUILastSeenBucketHelper.Configuration.unseenCountUpdater.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

id MUILastSeenBucketHelper.__deallocating_deinit()
{
  v3.super_class = swift_getObjectType();
  v5 = v0;
  v1 = sub_214C51BF0();
  v4 = v3;
  return objc_msgSendSuper2(&v4, sel_dealloc, v1);
}

uint64_t MUILastSeenBucketHelper.sessionLastSeenDates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v15 = a2;
  v20 = a3;
  v35 = 0;
  v34 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378D0);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v29 = &v8 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0);
  v26 = *(v28 - 8);
  v27 = v28 - 8;
  v17 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v18 = &v8 - v17;
  v35 = v5;
  v34 = v3;
  v19 = (v3 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_sessionLastSeenDatesByBucket);
  v24 = &v33;
  swift_beginAccess();
  v21 = *v19;
  v23 = &v32;
  v32 = v20;
  v22 = type metadata accessor for MUIBucket();
  sub_214A69344();
  sub_214CCF3D4();
  swift_endAccess();
  MEMORY[0x277D82BE0](v25);
  v30 = *(v26 + 48);
  v31 = v26 + 48;
  if (v30(v29, 1, v28) == 1)
  {
    v13 = &v18[*(v28 + 48)];
    sub_214C505FC(v18);
    sub_214C505FC(v13);
    if (v30(v29, 1, v28) != 1)
    {
      sub_214A84F00(v29);
    }
  }

  else
  {
    sub_214C56F64(v29, v18);
  }

  MEMORY[0x277D82BD8](v25);
  v9 = &v18[*(v28 + 48)];
  v10 = sub_214CCD254();
  v6 = *(v10 - 8);
  v12 = *(v6 + 32);
  v11 = v6 + 32;
  v12(v14, v18);
  return (v12)(v15, v9, v10);
}

uint64_t MUILastSeenBucketHelper.updateSessionLastSeenDates(for:lastSeenDate:lastSeenDisplayDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a1;
  v83 = a2;
  v90 = a3;
  v88 = sub_214C57018;
  v100 = sub_214C57018;
  v102 = sub_214B4C108;
  v104 = sub_214A7E854;
  v106 = sub_214A7E768;
  v108 = sub_214A7E854;
  v113 = sub_214A7E768;
  v117 = sub_214A7E854;
  v119 = sub_214A662DC;
  v121 = sub_214A662DC;
  v123 = sub_214A7E40C;
  v125 = sub_214A662DC;
  v127 = sub_214A662DC;
  v129 = sub_214A7E40C;
  v131 = sub_214A662DC;
  v133 = sub_214A662DC;
  v136 = sub_214A7E40C;
  v152 = 0;
  v151 = 0;
  v150 = 0;
  v149 = 0;
  v72 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378D0);
  v73 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v74 = &v53 - v73;
  v75 = 0;
  v97 = sub_214CCD254();
  v85 = *(v97 - 8);
  v86 = v97 - 8;
  v84 = v85;
  v94 = *(v85 + 64);
  v76 = (v94 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v96 = &v53 - v76;
  v81 = sub_214CCDA74();
  v79 = *(v81 - 8);
  v80 = v81 - 8;
  v77 = (*(v79 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v82);
  v5 = &v53 - v77;
  v78 = &v53 - v77;
  v152 = v4;
  v151 = v6;
  v150 = v7;
  v149 = v8;
  v9 = sub_214C50524();
  (*(v79 + 16))(v5, v9, v81);
  v115 = 7;
  v10 = swift_allocObject();
  v11 = v83;
  v12 = v85;
  v13 = v97;
  v14 = v10;
  v15 = v96;
  v103 = v14;
  *(v14 + 16) = v82;
  v92 = *(v12 + 16);
  v91 = v12 + 16;
  (v92)(v15, v11, v13);
  v93 = *(v84 + 80);
  v87 = (v93 + 16) & ~v93;
  v89 = swift_allocObject();
  v99 = *(v85 + 32);
  v98 = v85 + 32;
  v99(v89 + v87, v96, v97);

  v114 = 32;
  v16 = swift_allocObject();
  v17 = v89;
  v107 = v16;
  *(v16 + 16) = v88;
  *(v16 + 24) = v17;

  (v92)(v96, v90, v97);
  v95 = (v93 + 16) & ~v93;
  v101 = swift_allocObject();
  v99(v101 + v95, v96, v97);

  v18 = swift_allocObject();
  v19 = v101;
  v116 = v18;
  *(v18 + 16) = v100;
  *(v18 + 24) = v19;

  v140 = sub_214CCDA54();
  v141 = sub_214CCFBB4();
  v111 = 17;
  v120 = swift_allocObject();
  v110 = 32;
  *(v120 + 16) = 32;
  v122 = swift_allocObject();
  v112 = 8;
  *(v122 + 16) = 8;
  v20 = swift_allocObject();
  v21 = v103;
  v105 = v20;
  *(v20 + 16) = v102;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v105;
  v124 = v22;
  *(v22 + 16) = v104;
  *(v22 + 24) = v23;
  v126 = swift_allocObject();
  *(v126 + 16) = v110;
  v128 = swift_allocObject();
  *(v128 + 16) = v112;
  v24 = swift_allocObject();
  v25 = v107;
  v109 = v24;
  *(v24 + 16) = v106;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v109;
  v130 = v26;
  *(v26 + 16) = v108;
  *(v26 + 24) = v27;
  v132 = swift_allocObject();
  *(v132 + 16) = v110;
  v134 = swift_allocObject();
  *(v134 + 16) = v112;
  v28 = swift_allocObject();
  v29 = v116;
  v118 = v28;
  *(v28 + 16) = v113;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v118;
  v137 = v30;
  *(v30 + 16) = v117;
  *(v30 + 24) = v31;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v135 = sub_214CD03C4();
  v138 = v32;

  v33 = v120;
  v34 = v138;
  *v138 = v119;
  v34[1] = v33;

  v35 = v122;
  v36 = v138;
  v138[2] = v121;
  v36[3] = v35;

  v37 = v124;
  v38 = v138;
  v138[4] = v123;
  v38[5] = v37;

  v39 = v126;
  v40 = v138;
  v138[6] = v125;
  v40[7] = v39;

  v41 = v128;
  v42 = v138;
  v138[8] = v127;
  v42[9] = v41;

  v43 = v130;
  v44 = v138;
  v138[10] = v129;
  v44[11] = v43;

  v45 = v132;
  v46 = v138;
  v138[12] = v131;
  v46[13] = v45;

  v47 = v134;
  v48 = v138;
  v138[14] = v133;
  v48[15] = v47;

  v49 = v137;
  v50 = v138;
  v138[16] = v136;
  v50[17] = v49;
  sub_214A63280();

  if (os_log_type_enabled(v140, v141))
  {
    v51 = v72;
    v65 = sub_214CCFF24();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v66 = sub_214A632C4(0);
    v67 = sub_214A632C4(3);
    v68 = &v146;
    v146 = v65;
    v69 = &v145;
    v145 = v66;
    v70 = &v144;
    v144 = v67;
    sub_214A6627C(2, &v146);
    sub_214A6627C(3, v68);
    v142 = v119;
    v143 = v120;
    sub_214A66290(&v142, v68, v69, v70);
    v71 = v51;
    if (v51)
    {

      __break(1u);
    }

    else
    {
      v142 = v121;
      v143 = v122;
      sub_214A66290(&v142, &v146, &v145, &v144);
      v63 = 0;
      v142 = v123;
      v143 = v124;
      sub_214A66290(&v142, &v146, &v145, &v144);
      v62 = 0;
      v142 = v125;
      v143 = v126;
      sub_214A66290(&v142, &v146, &v145, &v144);
      v61 = 0;
      v142 = v127;
      v143 = v128;
      sub_214A66290(&v142, &v146, &v145, &v144);
      v60 = 0;
      v142 = v129;
      v143 = v130;
      sub_214A66290(&v142, &v146, &v145, &v144);
      v59 = 0;
      v142 = v131;
      v143 = v132;
      sub_214A66290(&v142, &v146, &v145, &v144);
      v58 = 0;
      v142 = v133;
      v143 = v134;
      sub_214A66290(&v142, &v146, &v145, &v144);
      v57 = 0;
      v142 = v136;
      v143 = v137;
      sub_214A66290(&v142, &v146, &v145, &v144);
      _os_log_impl(&dword_214A5E000, v140, v141, "Updating session last seen dates for bucket %s to %s, %s", v65, 0x20u);
      sub_214A669DC(v66);
      sub_214A669DC(v67);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v140);
  (*(v79 + 8))(v78, v81);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0);
  v53 = &v74[*(v54 + 48)];
  v92();
  (v92)(v53, v90, v97);
  (*(*(v54 - 8) + 56))(v74, 0, 1);
  v55 = &v148;
  v148 = v82;
  v56 = &v147;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E8);
  sub_214CCF3E4();
  return swift_endAccess();
}

double MUILastSeenBucketHelper.messageRepository(_:query:countDidChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v20 = a2;
  v21 = a3;
  v22 = sub_214C5708C;
  ObjectType = swift_getObjectType();
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v25 = 0;
  v29 = sub_214CCF224();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v15 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v28 = &v14 - v15;
  v33 = sub_214CCF254();
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v17 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v32 = &v14 - v17;
  v46 = v4;
  v45 = v5;
  v44 = v6;
  v43 = v3;
  sub_214B51A38();
  v35 = sub_214CCFC44();
  v19 = 7;
  v24 = swift_allocObject();
  MEMORY[0x277D82BE0](v18);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BE0](v20);
  v7 = swift_allocObject();
  v8 = v20;
  v9 = v21;
  v10 = v22;
  v11 = v7;
  v12 = ObjectType;
  v11[2] = v24;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = v12;
  v41 = v10;
  v42 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = 0;
  v39 = sub_214A746A8;
  v40 = &block_descriptor_177;
  v34 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v25, v32, v28, v34);
  (*(v26 + 8))(v28, v29);
  (*(v30 + 8))(v32, v33);
  _Block_release(v34);
  *&result = MEMORY[0x277D82BD8](v35).n128_u64[0];
  return result;
}

double sub_214C54A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a1;
  v94 = a2;
  v92 = a3;
  v93 = 0;
  v81 = sub_214B95D20;
  v82 = sub_214B26858;
  v83 = sub_214B4C108;
  v84 = sub_214A7E854;
  v85 = sub_214A662DC;
  v86 = sub_214A662DC;
  v87 = sub_214A662E4;
  v88 = sub_214A662DC;
  v89 = sub_214A662DC;
  v90 = sub_214A7E40C;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v112 = 0;
  v110 = 0;
  v109 = 0;
  v91 = 0;
  v96 = sub_214CCDA74();
  v97 = *(v96 - 8);
  v98 = v96 - 8;
  v99 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v100 = v36 - v99;
  v101 = v3 + 16;
  v116 = v3 + 16;
  v115 = v4;
  v114 = v5;
  v102 = &v113;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v80 = Strong;
    v75 = Strong;
    v112 = Strong;
    v76 = (Strong + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_countQueries);
    v77 = &v111;
    swift_beginAccess();
    v78 = *v76;
    MEMORY[0x277D82BE0](v78);
    swift_endAccess();
    *&v7 = MEMORY[0x277D82BE0](v94).n128_u64[0];
    v79 = [v78 objectForKey_];
    MEMORY[0x277D82BD8](v94);
    *&v8 = MEMORY[0x277D82BD8](v78).n128_u64[0];
    if (v79)
    {
      v74 = v79;
      v70 = v79;
      v71 = [v79 integerValue];
      MEMORY[0x277D82BD8](v70);
      v72 = v71;
      v73 = 0;
    }

    else
    {
      v72 = 0;
      v73 = 1;
    }

    v69 = v72;
    if (v73 & 1) != 0 || (v68 = v69, v110 = v69, sub_214A706A8(), v67 = v9, (v10))
    {
      *&result = MEMORY[0x277D82BD8](v75).n128_u64[0];
    }

    else
    {
      v66 = v67;
      v11 = v100;
      v46 = v67;
      v109 = v67;
      v12 = sub_214C50524();
      (*(v97 + 16))(v11, v12, v96);
      v45 = 24;
      v52 = 7;
      v47 = swift_allocObject();
      *(v47 + 16) = v92;
      v53 = swift_allocObject();
      *(v53 + 16) = v46;
      v64 = sub_214CCDA54();
      v65 = sub_214CCFBB4();
      v49 = 17;
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      v56 = swift_allocObject();
      v50 = 8;
      *(v56 + 16) = 8;
      v51 = 32;
      v13 = swift_allocObject();
      v14 = v47;
      v48 = v13;
      *(v13 + 16) = v81;
      *(v13 + 24) = v14;
      v15 = swift_allocObject();
      v16 = v48;
      v57 = v15;
      *(v15 + 16) = v82;
      *(v15 + 24) = v16;
      v58 = swift_allocObject();
      *(v58 + 16) = 32;
      v59 = swift_allocObject();
      *(v59 + 16) = v50;
      v17 = swift_allocObject();
      v18 = v53;
      v54 = v17;
      *(v17 + 16) = v83;
      *(v17 + 24) = v18;
      v19 = swift_allocObject();
      v20 = v54;
      v61 = v19;
      *(v19 + 16) = v84;
      *(v19 + 24) = v20;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      v60 = sub_214CD03C4();
      v62 = v21;

      v22 = v55;
      v23 = v62;
      *v62 = v85;
      v23[1] = v22;

      v24 = v56;
      v25 = v62;
      v62[2] = v86;
      v25[3] = v24;

      v26 = v57;
      v27 = v62;
      v62[4] = v87;
      v27[5] = v26;

      v28 = v58;
      v29 = v62;
      v62[6] = v88;
      v29[7] = v28;

      v30 = v59;
      v31 = v62;
      v62[8] = v89;
      v31[9] = v30;

      v32 = v61;
      v33 = v62;
      v62[10] = v90;
      v33[11] = v32;
      sub_214A63280();

      if (os_log_type_enabled(v64, v65))
      {
        v34 = v91;
        v37 = sub_214CCFF24();
        v36[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v38 = sub_214A632C4(0);
        v39 = sub_214A632C4(1);
        v41 = &v108;
        v108 = v37;
        v42 = &v107;
        v107 = v38;
        v43 = &v106;
        v106 = v39;
        v40 = 2;
        sub_214A6627C(2, &v108);
        sub_214A6627C(v40, v41);
        v104 = v85;
        v105 = v55;
        sub_214A66290(&v104, v41, v42, v43);
        v44 = v34;
        if (v34)
        {

          __break(1u);
        }

        else
        {
          v104 = v86;
          v105 = v56;
          sub_214A66290(&v104, &v108, &v107, &v106);
          v36[5] = 0;
          v104 = v87;
          v105 = v57;
          sub_214A66290(&v104, &v108, &v107, &v106);
          v36[4] = 0;
          v104 = v88;
          v105 = v58;
          sub_214A66290(&v104, &v108, &v107, &v106);
          v36[3] = 0;
          v104 = v89;
          v105 = v59;
          sub_214A66290(&v104, &v108, &v107, &v106);
          v36[2] = 0;
          v104 = v90;
          v105 = v61;
          sub_214A66290(&v104, &v108, &v107, &v106);
          _os_log_impl(&dword_214A5E000, v64, v65, "Updating unseenCount: %ld for bucket: %s", v37, 0x16u);
          sub_214A669DC(v38);
          sub_214A669DC(v39);
          sub_214CCFF04();
        }
      }

      else
      {
      }

      v35 = MEMORY[0x277D82BD8](v64);
      (*(v97 + 8))(v100, v96, v35);
      v36[0] = *(v75 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 40);
      v36[1] = *(v75 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 48);

      (v36[0])(v92, v46);

      *&result = MEMORY[0x277D82BD8](v75).n128_u64[0];
    }
  }

  return result;
}

double MUILastSeenBucketHelper.categoryCloudStorage(_:didChangeLastSeenDate:lastSeenDisplay:forCategoryType:inMailboxWithExternalURL:originator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a1;
  v16[6] = a2;
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v19 = sub_214C57104;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v20 = 0;
  v24 = sub_214CCF224();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v16[0] = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v23 = v16 - v16[0];
  v28 = sub_214CCF254();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v17 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v27 = v16 - v17;
  v44 = v7;
  v43 = v8;
  v42 = v9;
  v41 = v10;
  v40 = v11;
  v39 = v12;
  v38 = v6;
  sub_214B51A38();
  v30 = sub_214CCFC44();
  MEMORY[0x277D82BE0](v18);
  v13 = swift_allocObject();
  v14 = v19;
  *(v13 + 16) = v18;
  v36 = v14;
  v37 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v32 = 1107296256;
  v33 = 0;
  v34 = sub_214A746A8;
  v35 = &block_descriptor_183;
  v29 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v20, v27, v23, v29);
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);
  *&result = MEMORY[0x277D82BD8](v30).n128_u64[0];
  return result;
}

uint64_t sub_214C55B1C(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  sub_214C5197C(v3);
}

id sub_214C561D4(void *a1)
{
  *&v1 = MEMORY[0x277D82BE0](a1).n128_u64[0];
  if (a1)
  {
    v4 = [a1 first];
    MEMORY[0x277D82BD8](a1);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

double sub_214C5631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v59 = a1;
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v73 = 0;
  v71 = 0;
  v68 = 0;
  v66 = 0;
  v67 = 0;
  v42 = 0;
  v43 = sub_214CCD254();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (v44[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v47 = v20 - v46;
  v48 = sub_214CCD154();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v52 = v20 - v51;
  v53 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20 - v51);
  v54 = v20 - v53;
  v80 = v20 - v53;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35A48) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v61 = v20 - v60;
  v79 = v6;
  v62 = v7 + 16;
  v78 = v7 + 16;
  v77 = v8;
  v76 = v9;
  v75 = v10;
  v63 = &v74;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v41 = Strong;
    v39 = Strong;
    v73 = Strong;
    MEMORY[0x277D82BE0](v59);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37918);
    MEMORY[0x277D82BE0](v59);
    sub_214A6E46C();
    sub_214CD04A4();
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v59);
    if (v72)
    {
      v38 = v72;
    }

    else
    {
      v38 = 0;
    }

    v37 = v38;
    if (v38)
    {
      v36 = v37;
      v32 = v37;
      v71 = v37;
      v35 = &v70;
      v70 = v56;
      v33 = &v69;
      v69 = 0;
      v34 = type metadata accessor for MUIBucket();
      sub_214A693C4();
      v12 = sub_214CCF4A4();
      if (v12)
      {
        v31 = 0;
      }

      else
      {
        EMCategoryTypeForBucket(v56);
        sub_214A6E0D8();
        v31 = sub_214CCFF44();
      }

      v30 = v31;
      v68 = v31;

      v65 = v32;
      sub_214C57518();
      sub_214CCFAC4();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37A80);
        sub_214CD01B4();
        if ((*(v49 + 48))(v61, 1, v48) == 1)
        {
          break;
        }

        v13 = v47;
        (*(v49 + 32))(v54, v61, v48);
        v27 = *(v39 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_configuration + 16);
        v14 = MEMORY[0x277D82BE0](v27);
        v21 = v44[2];
        v20[1] = v44 + 2;
        v21(v13, v57, v43, v14);
        v15 = sub_214CCD1C4();
        v16 = v47;
        v26 = v15;
        v23 = v44[1];
        v22 = v44 + 1;
        v23(v47, v43);
        (v21)(v16, v58, v43);
        v17 = sub_214CCD1C4();
        v18 = v52;
        v25 = v17;
        v23(v47, v43);
        (*(v49 + 16))(v18, v54, v48);
        v24 = sub_214CCD104();
        v29 = *(v49 + 8);
        v28 = v49 + 8;
        v29(v52, v48);
        [v27 setIfNeededLastSeenDate:v26 lastSeenDisplayDate:v25 forCategoryType:v30 inMailboxWithExternalURL:v24 originator:0];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
        MEMORY[0x277D82BD8](v26);
        v19 = MEMORY[0x277D82BD8](v27);
        (v29)(v54, v48, v19);
      }

      sub_214A62278();
      MEMORY[0x277D82BD8](v30);

      *&result = MEMORY[0x277D82BD8](v39).n128_u64[0];
    }

    else
    {
      *&result = MEMORY[0x277D82BD8](v39).n128_u64[0];
    }
  }

  return result;
}

id sub_214C56BF8(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_214A7C860();
  v5 = sub_214CCF7D4();
  v7 = [v4 initWithTargetClass:ObjCClassFromMetadata predicate:a2 sortDescriptors:?];
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](a2);
  return v7;
}

unint64_t sub_214C56C94()
{
  v2 = qword_280C7EAE8;
  if (!qword_280C7EAE8)
  {
    sub_214CCD254();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EAE8);
    return WitnessTable;
  }

  return v2;
}

double sub_214C56D1C(uint64_t a1)
{
  v2 = *(sub_214CCD254() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((v3 + *(v2 + 64) + *(v2 + 80)) & ~*(v2 + 80));

  return sub_214C5631C(a1, v4, v5, v1 + v3, v6);
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214C56EDC()
{
  v2 = qword_280C7CEB0;
  if (!qword_280C7CEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37928);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C56F64(uint64_t a1, uint64_t a2)
{
  v5 = sub_214CCD254();
  v6 = *(*(v5 - 8) + 32);
  v6(a2, a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_214C57018@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_214CCD254();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_214C545B0(v3, a1);
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_181(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_214C571E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_214C572F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_214C57518()
{
  v2 = qword_280C7CFA8;
  if (!qword_280C7CFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37918);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CFA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MUIMailCleanupTip.tipId.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId);

  return v2;
}

uint64_t MUIMailCleanupTip.title.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_title);

  return v2;
}

uint64_t MUIMailCleanupTip.message.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_message);

  return v2;
}

uint64_t MUIMailCleanupTip.submitButtonLabel.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_submitButtonLabel);

  return v2;
}

char *MUIMailCleanupTip.init(tipId:title:message:submitButtonLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = 0;
  v29 = a1;
  v30 = a2;
  v27 = a3;
  v28 = a4;
  v25 = a5;
  v26 = a6;
  v23 = a7;
  v24 = a8;

  v8 = OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId;
  *OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId = a1;
  *(v8 + 8) = a2;

  v9 = &v31[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_title];
  *v9 = a3;
  *(v9 + 1) = a4;

  v10 = &v31[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_message];
  *v10 = a5;
  *(v10 + 1) = a6;

  v11 = &v31[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_submitButtonLabel];
  *v11 = a7;
  *(v11 + 1) = a8;
  v22.receiver = v31;
  v22.super_class = type metadata accessor for MUIMailCleanupTip();
  v21 = objc_msgSendSuper2(&v22, sel_init);
  MEMORY[0x277D82BE0](v21);
  v31 = v21;

  MEMORY[0x277D82BD8](v31);
  return v21;
}

id MUIMailCleanupTip.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUIMailCleanupTip();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214C57E58()
{
  result = sub_214CCF614();
  qword_280C7C850 = result;
  qword_280C7C858 = v1;
  return result;
}

uint64_t *sub_214C57E9C()
{
  if (qword_280C7C848 != -1)
  {
    swift_once();
  }

  return &qword_280C7C850;
}

uint64_t sub_214C57EFC()
{
  v1 = *sub_214C57E9C();

  return v1;
}

uint64_t sub_214C57F88()
{
  v14 = 0;
  v10 = 0;
  v5 = objc_opt_self();
  sub_214C57E9C();

  v6 = sub_214CCF544();

  v7 = [v5 getValueForKey_];
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    sub_214CD0054();
    sub_214B11A4C(v8, &v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0uLL;
    v12 = 0uLL;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    sub_214A69284();
    if (swift_dynamicCast())
    {
      v4 = v9;
    }

    else
    {
      v4 = 0;
    }

    v3 = v4;
  }

  else
  {
    sub_214A7D24C(v13);
    v3 = 0;
  }

  if (v3)
  {
    v10 = v3;
    v1 = [v3 BOOLValue];
    MEMORY[0x277D82BD8](v3);
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_214C5817C()
{
  v2 = *(v0 + OBJC_IVAR___MUIManualSummaryController_underlying);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

id sub_214C581C4(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_214B71394();
  v5 = sub_214CCF7D4();
  v6 = [v3 initWithMessages_sourceViewController_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

id sub_214C5825C(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  type metadata accessor for ManualSummaryController();

  MEMORY[0x277D82BE0](a2);
  *OBJC_IVAR___MUIManualSummaryController_underlying = ManualSummaryController.__allocating_init(messages:sourceViewController:)(a1, a2);
  v6.receiver = v9;
  v6.super_class = MUIManualSummaryController;
  v5 = objc_msgSendSuper2(&v6, sel_init);
  MEMORY[0x277D82BE0](v5);
  v9 = v5;
  MEMORY[0x277D82BD8](a2);

  MEMORY[0x277D82BD8](v9);
  return v5;
}

double MUIManualSummaryController.summarizeMessage(usingExternalIntelligence:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + OBJC_IVAR___MUIManualSummaryController_underlying);
  MEMORY[0x277D82BE0](v9);

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  sub_214BBD100(a1 & 1, sub_214C58630, v8);

  *&result = MEMORY[0x277D82BD8](v9).n128_u64[0];
  return result;
}

uint64_t sub_214C584D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);

  sub_214C589A4(v9, v10, v11);
  if (v11 == 255)
  {
    v6 = 0;
  }

  else
  {
    sub_214BC5A10();
    v3 = swift_allocError();
    *v4 = v9;
    *(v4 + 8) = v10;
    *(v4 + 16) = v11;
    v6 = v3;
  }

  a3(a1);
}

double MUIManualSummaryController.provideFeedback(with:)(uint64_t a1)
{
  v4 = *(v1 + OBJC_IVAR___MUIManualSummaryController_underlying);
  MEMORY[0x277D82BE0](v4);
  sub_214BC3F30(a1);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

unint64_t type metadata accessor for MUIManualSummaryController()
{
  v2 = qword_27CA37AB8;
  if (!qword_27CA37AB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA37AB8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C589A4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 255)
  {
    return sub_214BBA9BC(result, a2, a3);
  }

  return result;
}

uint64_t sub_214C589F0()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA37AC0);
  __swift_project_value_buffer(v1, qword_27CA37AC0);
  type metadata accessor for MUIManualSummaryViewManager();
  return static Logger.mailUILogger<A>(for:)();
}

unint64_t type metadata accessor for MUIManualSummaryViewManager()
{
  v2 = qword_280C7C7B0;
  if (!qword_280C7C7B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C7B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C58ABC()
{
  if (qword_27CA340A0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA37AC0);
}

uint64_t sub_214C58B28@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C58ABC();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_214C58C08()
{
  v1 = [v0 summaryView];

  return v1;
}

uint64_t sub_214C58CCC()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_didCancelSummarization);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214C58D9C(char a1)
{
  v3 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_didCancelSummarization);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214C58E84()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_viewModel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C58F64(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_viewModel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C59074()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_delegate);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_214C59144(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_delegate);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214C59238()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_summaryView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C59318(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_summaryView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C59428()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryViewManager_onboardingController);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C59508(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryViewManager_onboardingController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214C595A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithViewModel:a1 delegate:a2 summaryView:a3];
  MEMORY[0x277D82BD8](a3);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v6;
}

char *sub_214C59620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = 0;
  v17 = a1;
  v16 = a2;
  v15 = a3;
  *OBJC_IVAR___MUIManualSummaryViewManager_didCancelSummarization = 0;
  *&v18[OBJC_IVAR___MUIManualSummaryViewManager_delegate] = 0;
  *&v18[OBJC_IVAR___MUIManualSummaryViewManager_onboardingController] = 0;
  MEMORY[0x277D82BE0](a1);
  *&v18[OBJC_IVAR___MUIManualSummaryViewManager_viewModel] = a1;
  swift_unknownObjectRetain();
  v10 = &v18[OBJC_IVAR___MUIManualSummaryViewManager_delegate];
  swift_beginAccess();
  *v10 = a2;
  swift_unknownObjectRelease();
  swift_endAccess();
  v12 = &v18[OBJC_IVAR___MUIManualSummaryViewManager_didCancelSummarization];
  swift_beginAccess();
  *v12 = 0;
  swift_endAccess();
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for ManualSummaryView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      MEMORY[0x277D82BD8](a3);
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    MEMORY[0x277D82BE0](v8);
    *&v18[OBJC_IVAR___MUIManualSummaryViewManager_summaryView] = v8;
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    type metadata accessor for ManualSummaryView();
    *&v18[OBJC_IVAR___MUIManualSummaryViewManager_summaryView] = sub_214A61730();
  }

  v14.receiver = v18;
  v14.super_class = MUIManualSummaryViewManager;
  v6 = objc_msgSendSuper2(&v14, sel_init);
  *&v4 = MEMORY[0x277D82BE0](v6).n128_u64[0];
  v18 = v6;
  [v6 configureManualSummaryView];
  MEMORY[0x277D82BD8](a3);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v18);
  return v6;
}

void sub_214C59994()
{
  v2 = [v0 0x1FBC040C8];
  MEMORY[0x277D82BE0](v0);
  v1 = &v2[OBJC_IVAR___MUIManualSummaryView_delegate];
  swift_beginAccess();
  *(v1 + 1) = &protocol witness table for MUIManualSummaryViewManager;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v3 = [v0 0x1FBC040C8];
  ManualSummaryView.viewModel.setter([v0 viewModel]);
  v4 = [v0 delegate];
  if (v4)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_getObjectType();
    [v4 summaryViewManagerDidUpdateSummaryViewSize_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
  }
}

Swift::Void __swiftcall MUIManualSummaryViewManager.resetToInitialStateIfLoading()()
{
  v35 = 0;
  v41 = 0;
  v27 = 0;
  v29 = sub_214CCDA74();
  v30 = *(v29 - 8);
  v31 = v30;
  v0 = MEMORY[0x28223BE20](v28);
  v32 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  v33 = [v2 viewModel];
  v34 = [v33 state];

  v40[2] = v34;
  v40[1] = 1;
  v36 = type metadata accessor for MUIManualSummaryViewModelState();
  sub_214B04718();
  if (sub_214CD03F4())
  {
    v3 = v32;
    v4 = sub_214C58ABC();
    (*(v31 + 16))(v3, v4, v29);
    v25 = sub_214CCDA54();
    v22 = v25;
    v24 = sub_214CCFBA4();
    v23 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v26 = sub_214CD03C4();
    if (os_log_type_enabled(v25, v24))
    {
      v5 = v27;
      v13 = sub_214CCFF24();
      v9 = v13;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v11 = 0;
      v14 = sub_214A632C4(0);
      v12 = v14;
      v15 = sub_214A632C4(v11);
      v40[0] = v13;
      v39 = v14;
      v38 = v15;
      v16 = 0;
      v17 = v40;
      sub_214A6627C(0, v40);
      sub_214A6627C(v16, v17);
      v37 = v26;
      v18 = v7;
      MEMORY[0x28223BE20](v7);
      v19 = &v7[-6];
      v7[-4] = v6;
      v7[-3] = &v39;
      v7[-2] = &v38;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v21 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v22, v23, "Will cancel summarization", v9, 2u);
        v7[3] = 0;
        sub_214A669DC(v12);
        sub_214A669DC(v15);
        sub_214CCFF04();

        v8 = v21;
      }
    }

    else
    {

      v8 = v27;
    }

    v7[1] = v8;

    (*(v31 + 8))(v32, v29);
    [v28 setDidCancelSummarization_];
    v7[0] = [v28 viewModel];
    [v7[0] resetToInitialState];

    [v28 refreshSummaryViewModel];
  }
}

Swift::Void __swiftcall MUIManualSummaryViewManager.beginSummarizing(usingExternalIntelligence:)(Swift::Bool usingExternalIntelligence)
{
  ObjectType = swift_getObjectType();
  v31 = usingExternalIntelligence;
  v30 = v1;
  v4 = [v1 0x1FA98D910];
  [v4 updateToLoadingState];
  [v1 refreshSummaryViewModel];
  [v1 setDidCancelSummarization_];
  v5 = [v1 0x1FA98D910];
  v8 = [v5 0x1FCB4BD11];
  MEMORY[0x277D82BD8](v5);
  (MEMORY[0x277D82BE0])();
  v2 = swift_allocObject();
  *(v2 + 16) = usingExternalIntelligence;
  *(v2 + 24) = v1;
  *(v2 + 32) = ObjectType;
  v28 = sub_214C5F704;
  v29 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_214B100BC;
  v27 = &block_descriptor_18;
  v7 = _Block_copy(&aBlock);

  [v8 addSuccessBlock_];
  _Block_release(v7);
  v9 = [v10 0x1FA98D910];
  v15 = [v9 0x1FCB4BD11];
  MEMORY[0x277D82BD8](v9);
  v14 = [objc_opt_self() mainThreadScheduler];
  v12 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  v3 = swift_allocObject();
  *(v3 + 16) = v12;
  *(v3 + 24) = ObjectType;
  v21 = sub_214C5F718;
  v22 = v3;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = 0;
  v19 = sub_214C18604;
  v20 = &block_descriptor_9_1;
  v13 = _Block_copy(&v16);

  [v15 onScheduler:v14 addFailureBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v15);
}

void sub_214C5A444(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v19 = a2 & 1;
  v18 = a3;
  v7 = swift_allocObject();
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](a3);

  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  *(v4 + 24) = a4;
  v16 = sub_214C5FB0C;
  v17 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = 0;
  v14 = sub_214B673A0;
  v15 = &block_descriptor_93;
  v10 = _Block_copy(&aBlock);

  [a1 summarizeMessageUsingExternalIntelligence:a2 & 1 completion:v10];
  _Block_release(v10);
}

uint64_t sub_214C5A5CC(void *a1, void *a2, uint64_t a3)
{
  v139 = a3;
  v142 = a2;
  v141 = a1;
  v140 = 0;
  v180 = 0;
  v179 = 0;
  v178 = 0;
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v130 = 0;
  v155 = 0;
  v131 = sub_214CCF224();
  v132 = *(v131 - 8);
  v133 = v132;
  MEMORY[0x28223BE20](0);
  v134 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_214CCF254();
  v136 = *(v135 - 8);
  v137 = v136;
  MEMORY[0x28223BE20](v140);
  v138 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_214CCDA74();
  v144 = *(v143 - 8);
  v145 = v144;
  v146 = *(v144 + 64);
  MEMORY[0x28223BE20](v141);
  v148 = (v146 + 15) & 0xFFFFFFFFFFFFFFF0;
  v147 = v45 - v148;
  MEMORY[0x28223BE20](v5);
  v149 = v45 - v148;
  v180 = v6;
  v179 = v7;
  v150 = v8 + 16;
  v178 = v8 + 16;
  v151 = &v177;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v152 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v130;
  }

  v129 = v152;
  v127 = v152;
  v176 = v152;
  v175 = 0;
  v174 = 0;
  v9 = [v152 didCancelSummarization];
  if ((v9 & 1) == 0)
  {
    v10 = v141;
    if (v141)
    {
      v126 = v141;
      v123 = v141;
      v155 = v141;
      v124 = [v141 attributedString];
      v125 = [v124 length];

      if (v125 >= 1)
      {
        v154 = v142;
        v122 = v142 == 0;
        if (!v142)
        {
          v118 = [v127 viewModel];
          v117 = [v123 attributedString];
          v11 = [v123 isExternalSummary];
          [v118 updateToCompleteStateWithSummary:v117 isExternalSummary:v11];

          v119 = [v123 requiresConfirmation];
          v175 = v119;

          v120 = v119;
          v121 = v130;
LABEL_29:
          v69 = v121;
          v65 = v120;
          v66 = 0;
          sub_214B51A38();
          v68 = sub_214CCFC44();
          v35 = v141;
          v36 = v127;
          v37 = swift_allocObject();
          v38 = v141;
          v39 = v127;
          *(v37 + 16) = v65 & 1;
          *(v37 + 24) = v38;
          *(v37 + 32) = v39;
          v166 = sub_214C5FBB0;
          v167 = v37;
          aBlock = MEMORY[0x277D85DD0];
          v162 = 1107296256;
          v163 = 0;
          v164 = sub_214A746A8;
          v165 = &block_descriptor_123_0;
          v67 = _Block_copy(&aBlock);

          sub_214BC69C4();
          sub_214BC69DC();
          MEMORY[0x21605DF00](v66, v138, v134, v67);
          (*(v133 + 8))(v134, v131);
          (*(v137 + 8))(v138, v135);
          _Block_release(v67);

          return v69;
        }
      }
    }

    v12 = v149;
    v13 = sub_214C58ABC();
    (*(v145 + 16))(v12, v13, v143);
    v14 = v142;
    v105 = 7;
    v103 = swift_allocObject();
    *(v103 + 16) = v142;
    sub_214B1C228();

    v116 = sub_214CCDA54();
    v98 = v116;
    v115 = sub_214CCFBA4();
    v99 = v115;
    v100 = 17;
    v109 = swift_allocObject();
    v101 = v109;
    *(v109 + 16) = 64;
    v110 = swift_allocObject();
    v102 = v110;
    *(v110 + 16) = 8;
    v104 = 32;
    v15 = swift_allocObject();
    v16 = v103;
    v106 = v15;
    *(v15 + 16) = sub_214C5FB7C;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v106;
    v107 = v17;
    *(v17 + 16) = sub_214BC6628;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v107;
    v113 = v19;
    v108 = v19;
    *(v19 + 16) = sub_214B21624;
    *(v19 + 24) = v20;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v111 = sub_214CD03C4();
    v112 = v21;

    v22 = v109;
    v23 = v112;
    *v112 = sub_214A662DC;
    v23[1] = v22;

    v24 = v110;
    v25 = v112;
    v112[2] = sub_214A662DC;
    v25[3] = v24;

    v26 = v112;
    v27 = v113;
    v112[4] = sub_214B217B4;
    v26[5] = v27;
    sub_214A63280();

    if (os_log_type_enabled(v116, v115))
    {
      v28 = v130;
      v91 = sub_214CCFF24();
      v88 = v91;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v94 = 1;
      v92 = sub_214A632C4(1);
      v90 = v92;
      v93 = sub_214A632C4(0);
      v160 = v91;
      v159 = v92;
      v158 = v93;
      v95 = &v160;
      sub_214A6627C(2, &v160);
      sub_214A6627C(v94, v95);
      v156 = sub_214A662DC;
      v157 = v101;
      sub_214A66290(&v156, v95, &v159, &v158);
      v96 = v28;
      v97 = v28;
      if (v28)
      {
        v86 = 0;

        __break(1u);
      }

      else
      {
        v156 = sub_214A662DC;
        v157 = v102;
        sub_214A66290(&v156, &v160, &v159, &v158);
        v84 = 0;
        v85 = 0;
        v156 = sub_214B217B4;
        v157 = v108;
        sub_214A66290(&v156, &v160, &v159, &v158);
        v82 = 0;
        v83 = 0;
        _os_log_impl(&dword_214A5E000, v98, v99, "Unable to generate summary for mail messages, error: %@", v88, 0xCu);
        sub_214A669DC(v90);
        sub_214A669DC(v93);
        sub_214CCFF04();

        v87 = v82;
      }
    }

    else
    {
      v29 = v130;

      v87 = v29;
    }

    v81 = v87;

    (*(v145 + 8))(v149, v143);
    v30 = v142;
    if (v142)
    {
      v80 = v142;
      v77 = v142;
      v78 = sub_214CCD074();

      v79 = v78;
    }

    else
    {
      v79 = 0;
    }

    v75 = v79;
    v76 = [v127 needsToUseExternalIntelligenceErrorFrom_];

    if (v76)
    {
      v74 = [v127 viewModel];
      [v74 resetToInitialState];

      v174 = 1;
    }

    else
    {
      v73 = [v127 viewModel];
      v31 = v142;
      v168 = v142;
      if (v142)
      {
        v169 = v168;
      }

      else
      {
        sub_214BC5A10();
        v72 = 0;
        v32 = swift_allocError();
        v33 = v72;
        v169 = v32;
        *v34 = 3;
        *(v34 + 8) = v33;
        *(v34 + 16) = 2;
        if (v168)
        {
          sub_214C5FB84(&v168);
        }
      }

      v70 = v169;
      v71 = sub_214CCD074();

      [v73 updateToErrorState_];
    }

    v120 = 0;
    v121 = v81;
    goto LABEL_29;
  }

  v40 = v147;
  v41 = sub_214C58ABC();
  (*(v145 + 16))(v40, v41, v143);
  v63 = sub_214CCDA54();
  v60 = v63;
  v62 = sub_214CCFBA4();
  v61 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v64 = sub_214CD03C4();
  if (os_log_type_enabled(v63, v62))
  {
    v42 = v130;
    v51 = sub_214CCFF24();
    v47 = v51;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v49 = 0;
    v52 = sub_214A632C4(0);
    v50 = v52;
    v53 = sub_214A632C4(v49);
    v173 = v51;
    v172 = v52;
    v171 = v53;
    v54 = 0;
    v55 = &v173;
    sub_214A6627C(0, &v173);
    sub_214A6627C(v54, v55);
    v170 = v64;
    v56 = v45;
    MEMORY[0x28223BE20](v45);
    v57 = &v45[-6];
    v45[-4] = v43;
    v45[-3] = &v172;
    v45[-2] = &v171;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    v59 = v42;
    if (v42)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v60, v61, "Summarization was cancelled, skipping UI update", v47, 2u);
      v45[1] = 0;
      sub_214A669DC(v50);
      sub_214A669DC(v53);
      sub_214CCFF04();

      v46 = v59;
    }
  }

  else
  {

    v46 = v130;
  }

  v45[0] = v46;

  (*(v145 + 8))(v147, v143);
  return v45[0];
}

id sub_214C5B9AC(void *a1)
{
  v1 = a1;
  v5 = a1;
  if (a1)
  {
    return v5;
  }

  sub_214BC5A10();
  v6 = swift_allocError();
  *v2 = 3;
  *(v2 + 8) = 0;
  *(v2 + 16) = 2;
  if (v5)
  {
    sub_214C5FB84(&v5);
  }

  return v6;
}

void sub_214C5BA48(char a1, void *a2, void *a3)
{
  if (a1)
  {
    *&v3 = MEMORY[0x277D82BE0](a2).n128_u64[0];
    if (a2)
    {
      v5 = [a2 attributedString];
      v6 = [v5 length];
      *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
      if (v6 > 0)
      {
        [a3 requestConfirmationToDisplaySummary];
        MEMORY[0x277D82BD8](a2);
        return;
      }

      MEMORY[0x277D82BD8](a2);
    }
  }

  [a3 refreshSummaryViewModel];
}

uint64_t sub_214C5BB70(void *a1, uint64_t a2)
{
  v101 = a2;
  v100 = a1;
  v99 = 0;
  v124 = 0;
  v123 = 0;
  v121 = 0;
  v98 = 0;
  v102 = sub_214CCDA74();
  v103 = *(v102 - 8);
  v104 = v103;
  v105 = *(v103 + 64);
  MEMORY[0x28223BE20](v100);
  v107 = (v105 + 15) & 0xFFFFFFFFFFFFFFF0;
  v106 = &v30 - v107;
  MEMORY[0x28223BE20](v2);
  v108 = &v30 - v107;
  v124 = v3;
  v109 = v4 + 16;
  v123 = v4 + 16;
  v110 = &v122;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v111 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v98;
  }

  v97 = v111;
  v5 = v108;
  v73 = v111;
  v121 = v111;
  v6 = sub_214C58ABC();
  v74 = *(v104 + 16);
  v75 = (v104 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v74(v5, v6, v102);
  v7 = v100;
  v83 = 7;
  v81 = swift_allocObject();
  *(v81 + 16) = v100;
  sub_214B1C228();

  v95 = sub_214CCDA54();
  v76 = v95;
  v94 = sub_214CCFBA4();
  v77 = v94;
  v78 = 17;
  v88 = swift_allocObject();
  v79 = v88;
  *(v88 + 16) = 64;
  v89 = swift_allocObject();
  v80 = v89;
  *(v89 + 16) = 8;
  v82 = 32;
  v8 = swift_allocObject();
  v9 = v81;
  v84 = v8;
  *(v8 + 16) = sub_214BC6620;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v84;
  v85 = v10;
  *(v10 + 16) = sub_214BC6628;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v85;
  v92 = v12;
  v86 = v12;
  *(v12 + 16) = sub_214B21624;
  *(v12 + 24) = v13;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v87 = v93;
  v90 = sub_214CD03C4();
  v91 = v14;

  v15 = v88;
  v16 = v91;
  *v91 = sub_214A662DC;
  v16[1] = v15;

  v17 = v89;
  v18 = v91;
  v91[2] = sub_214A662DC;
  v18[3] = v17;

  v19 = v91;
  v20 = v92;
  v91[4] = sub_214B217B4;
  v19[5] = v20;
  sub_214A63280();

  if (os_log_type_enabled(v95, v94))
  {
    v22 = v98;
    v66 = sub_214CCFF24();
    v63 = v66;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v69 = 1;
    v67 = sub_214A632C4(1);
    v65 = v67;
    v68 = sub_214A632C4(0);
    v117[0] = v66;
    v116 = v67;
    v115 = v68;
    v70 = v117;
    sub_214A6627C(2, v117);
    sub_214A6627C(v69, v70);
    v113 = sub_214A662DC;
    v114 = v79;
    sub_214A66290(&v113, v70, &v116, &v115);
    v71 = v22;
    v72 = v22;
    if (v22)
    {
      v61 = 0;

      __break(1u);
    }

    else
    {
      v113 = sub_214A662DC;
      v114 = v80;
      sub_214A66290(&v113, v117, &v116, &v115);
      v59 = 0;
      v60 = 0;
      v113 = sub_214B217B4;
      v114 = v86;
      sub_214A66290(&v113, v117, &v116, &v115);
      v57 = 0;
      v58 = 0;
      _os_log_impl(&dword_214A5E000, v76, v77, "Unable to generate summary: %@", v63, 0xCu);
      sub_214A669DC(v65);
      sub_214A669DC(v68);
      sub_214CCFF04();

      v62 = v57;
    }
  }

  else
  {
    v23 = v98;

    v62 = v23;
  }

  v54 = v62;

  v55 = *(v104 + 8);
  v56 = (v104 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v55(v108, v102);
  if ([v73 didCancelSummarization])
  {
    v25 = v106;
    v26 = sub_214C58ABC();
    v74(v25, v26, v102);
    v50 = sub_214CCDA54();
    v47 = v50;
    v49 = sub_214CCFBA4();
    v48 = v49;
    v51 = sub_214CD03C4();
    if (os_log_type_enabled(v50, v49))
    {
      v27 = v54;
      v38 = sub_214CCFF24();
      v34 = v38;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v36 = 0;
      v39 = sub_214A632C4(0);
      v37 = v39;
      v40 = sub_214A632C4(v36);
      v120 = v38;
      v119 = v39;
      v118 = v40;
      v41 = 0;
      v42 = &v120;
      sub_214A6627C(0, &v120);
      sub_214A6627C(v41, v42);
      v117[2] = v51;
      v43 = &v30;
      MEMORY[0x28223BE20](&v30);
      v44 = &v30 - 6;
      *(&v30 - 4) = v28;
      *(&v30 - 3) = &v119;
      *(&v30 - 2) = &v118;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v46 = v27;
      if (v27)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v47, v48, "Summarization was cancelled, skipping UI update", v34, 2u);
        v32 = 0;
        sub_214A669DC(v37);
        sub_214A669DC(v40);
        sub_214CCFF04();

        v33 = v46;
      }
    }

    else
    {

      v33 = v54;
    }

    v31 = v33;

    v55(v106, v102);
    return v31;
  }

  else
  {
    v53 = [v73 viewModel];
    v24 = v100;
    v52 = sub_214CCD074();

    [v53 updateToErrorState_];
    [v73 refreshSummaryViewModel];

    return v54;
  }
}

void sub_214C5C8B0()
{
  v1 = [v0 summaryView];
  ManualSummaryView.viewModel.setter([v0 viewModel]);
  v2 = [v0 delegate];
  if (v2)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_getObjectType();
    [v2 summaryViewManagerDidUpdateSummaryViewSize_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
  }
}

uint64_t sub_214C5CABC()
{
  v106 = 0;
  v136 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v46 = 0;
  v103 = sub_214CCDA74();
  v47 = v103;
  v48 = *(v103 - 8);
  v102 = v48;
  v49 = v48;
  v50 = *(v48 + 64);
  MEMORY[0x28223BE20](v103 - 8);
  v0 = &v31 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  v136 = v1;
  v75 = 1;
  v53 = sub_214CCF614();
  v58 = v2;
  v73 = 0x277CCA000uLL;
  v3 = objc_opt_self();
  v74 = 0x1FCB47000uLL;
  v57 = [v3 0x1FCB47FD2];
  v52 = sub_214CCF614();
  v56 = v4;
  sub_214B1C228();
  v54 = v5;
  v83 = sub_214CCCF54();
  v84 = v6;
  v55 = v6;

  v134 = v83;
  v135 = v84;
  v94 = 0;
  v60 = sub_214CCF614();
  v65 = v7;
  v64 = [objc_opt_self() (v74 + 4050)];
  v59 = sub_214CCF614();
  v63 = v8;
  sub_214B1C228();
  v61 = v9;
  v85 = sub_214CCCF54();
  v86 = v10;
  v62 = v10;

  v132 = v85;
  v133 = v86;
  v67 = sub_214CCF614();
  v72 = v11;
  v71 = [objc_opt_self() (v74 + 4050)];
  v66 = sub_214CCF614();
  v70 = v12;
  sub_214B1C228();
  v68 = v13;
  v87 = sub_214CCCF54();
  v88 = v14;
  v69 = v14;

  v130 = v87;
  v131 = v88;
  v77 = sub_214CCF614();
  v82 = v15;
  v81 = [objc_opt_self() (v74 + 4050)];
  v76 = sub_214CCF614();
  v80 = v16;
  sub_214B1C228();
  v78 = v17;
  v30 = v80;
  v89 = sub_214CCCF54();
  v90 = v18;
  v79 = v18;

  v128 = v89;
  v129 = v90;

  v101 = sub_214CCF544();

  v100 = sub_214CCF544();

  v99 = sub_214CCF544();

  v19 = v95;
  v91 = 24;
  v92 = 7;
  v20 = swift_allocObject();
  v21 = v94;
  *(v20 + 16) = v95;
  v126 = sub_214C5F788;
  v127 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v93 = 1107296256;
  v122 = 1107296256;
  v123 = v21;
  v124 = sub_214A746A8;
  v125 = &block_descriptor_15_0;
  v98 = _Block_copy(&aBlock);

  v97 = sub_214CCF544();

  v22 = v95;
  v23 = swift_allocObject();
  v24 = v93;
  v25 = v94;
  *(v23 + 16) = v95;
  v119 = sub_214C5F7F4;
  v120 = v23;
  v114 = MEMORY[0x277D85DD0];
  v115 = v24;
  v116 = v25;
  v117 = sub_214A746A8;
  v118 = &block_descriptor_21_0;
  v96 = _Block_copy(&v114);

  [v95 presentAlertWithTitle:v101 message:v100 confirmTitle:v99 confirmActionHandler:v98 cancelTitle:v97 cancelActionHandler:v96];
  _Block_release(v96);

  _Block_release(v98);
  v26 = sub_214C58ABC();
  (*(v102 + 16))(v0, v26, v103);
  v108 = sub_214CCDA54();
  v104 = v108;
  v107 = sub_214CCFBB4();
  v105 = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v109 = sub_214CD03C4();
  if (os_log_type_enabled(v108, v107))
  {
    v27 = v46;
    v37 = sub_214CCFF24();
    v33 = v37;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v35 = 0;
    v38 = sub_214A632C4(0);
    v36 = v38;
    v39 = sub_214A632C4(v35);
    v113 = v37;
    v112 = v38;
    v111 = v39;
    v40 = 0;
    v41 = &v113;
    sub_214A6627C(0, &v113);
    sub_214A6627C(v40, v41);
    v110 = v109;
    v42 = &v31;
    MEMORY[0x28223BE20](&v31);
    v43 = &v31 - 6;
    *(&v31 - 4) = v28;
    *(&v31 - 3) = &v112;
    v30 = &v111;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    v45 = v27;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v104, v105, "Did display summary-confirmation alert", v33, 2u);
      v31 = 0;
      sub_214A669DC(v36);
      sub_214A669DC(v39);
      sub_214CCFF04();

      v32 = v45;
    }
  }

  else
  {

    v32 = v46;
  }

  (*(v49 + 8))(v51, v47);
}

id sub_214C5D7BC(void *a1)
{
  v2 = [a1 viewModel];
  [v2 resetToInitialState];
  return [a1 refreshSummaryViewModel];
}

double sub_214C5D884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_214C5F860();

  v28 = sub_214C5DCB4(a1, a2, a3, a4, 1);

  if (a10)
  {
    sub_214C5F8C4();

    sub_214B5188C(a11);
    v12 = swift_allocObject();
    *(v12 + 16) = a11;
    *(v12 + 24) = a12;
    v29 = sub_214C5DE90(a9, a10, 1, sub_214C5F928, v12);
    [v28 addAction_];
    MEMORY[0x277D82BD8](v29);
  }

  sub_214C5F8C4();

  sub_214B5188C(a7);
  v13 = swift_allocObject();
  *(v13 + 16) = a7;
  *(v13 + 24) = a8;
  v18 = sub_214C5DE90(a5, a6, 0, sub_214C5F928, v13);
  [v28 addAction_];
  [v28 setPreferredAction_];
  v30 = [v23 delegate];
  if (v30)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_getObjectType();
    v16 = [v30 presentingViewControllerForSummaryViewManager_];
    swift_unknownObjectRelease();
    v17 = v16;
  }

  else
  {
    sub_214A759F4();
    v17 = 0;
  }

  *&v14 = MEMORY[0x277D82BE0](v17).n128_u64[0];
  if (v17)
  {
    [v17 presentViewController:v28 animated:1 completion:{0, v14}];
    MEMORY[0x277D82BD8](v17);
  }

  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *&result = MEMORY[0x277D82BD8](v28).n128_u64[0];
  return result;
}

id sub_214C5DCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = sub_214CCF544();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v7 = sub_214CCF544();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v10 message:v8 preferredStyle:a5];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v10);
  return v6;
}

uint64_t sub_214C5DDF8(uint64_t a1, void (*a2)(uint64_t))
{
  result = sub_214B5188C(a2);
  if (a2)
  {
    a2(result);
  }

  return result;
}

id sub_214C5DE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = sub_214CCF544();

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (a4)
  {
    v19 = a4;
    v20 = a5;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = 0;
    v17 = sub_214B100BC;
    v18 = &block_descriptor_65;
    v7 = _Block_copy(&aBlock);

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v6 = [swift_getObjCClassFromMetadata() actionWithTitle:v10 style:a3 handler:v8];
  _Block_release(v8);
  MEMORY[0x277D82BD8](v10);
  return v6;
}

uint64_t MUIManualSummaryViewManager.didSelectFeedbackMenuItem(for:type:)(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v45 = a1;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v44 = 0;
  v56 = 0;
  v48 = sub_214CCDA74();
  v49 = *(v48 - 8);
  v50 = v49;
  v51 = *(v49 + 64);
  v2 = MEMORY[0x28223BE20](v46);
  v52 = v11 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v3;
  v64 = v4;
  v63 = v5;
  v53 = [v5 viewModel];
  v55 = [v53 summary];
  v54 = v55;

  if (v55)
  {
    v43 = v54;
    v39 = v54;
    v40 = [v54 length];

    v41 = v40;
    v42 = 0;
  }

  else
  {
    v41 = 0;
    v42 = 1;
  }

  v61 = v41;
  v62 = v42 & 1;
  if (v42)
  {
    v38 = 0;
  }

  else
  {
    v38 = v61;
  }

  if (v38 > 0)
  {
    v34 = [v46 viewModel];
    v36 = [v34 summaryControllerFuture];
    v35 = v36;

    v37 = [v36 resultIfAvailable];
    if (v37)
    {
      v33 = v37;
      v31 = v37;
      v56 = v37;

      [v31 provideFeedbackWithType_];
      return v44;
    }
  }

  v6 = v52;
  v7 = sub_214C58ABC();
  (*(v50 + 16))(v6, v7, v48);
  v29 = sub_214CCDA54();
  v26 = v29;
  v28 = sub_214CCFBA4();
  v27 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v30 = sub_214CD03C4();
  if (os_log_type_enabled(v29, v28))
  {
    v8 = v44;
    v17 = sub_214CCFF24();
    v13 = v17;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v15 = 0;
    v18 = sub_214A632C4(0);
    v16 = v18;
    v19 = sub_214A632C4(v15);
    v60 = v17;
    v59 = v18;
    v58 = v19;
    v20 = 0;
    v21 = &v60;
    sub_214A6627C(0, &v60);
    sub_214A6627C(v20, v21);
    v57 = v30;
    v22 = v11;
    MEMORY[0x28223BE20](v11);
    v23 = &v11[-6];
    v11[-4] = v9;
    v11[-3] = &v59;
    v11[-2] = &v58;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    v25 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v26, v27, "Attempting to provide feedback without a summary", v13, 2u);
      v11[1] = 0;
      sub_214A669DC(v16);
      sub_214A669DC(v19);
      sub_214CCFF04();

      v12 = v25;
    }
  }

  else
  {

    v12 = v44;
  }

  v11[0] = v12;

  (*(v50 + 8))(v52, v48);
  return v11[0];
}

double MUIManualSummaryViewManager.didAttemptRestrictedAction(for:reasons:)(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v64 = a2;
  v65 = sub_214A7E9D4;
  v68 = sub_214A7E7C4;
  v72 = sub_214A7E854;
  v74 = sub_214A662DC;
  v76 = sub_214A662DC;
  v79 = sub_214A7E40C;
  v44 = sub_214C5F788;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v45 = 0;
  v51 = 0;
  v46 = sub_214CCF224();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v50 = &v27 - v49;
  v52 = sub_214CCF254();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v56 = &v27 - v55;
  v63 = sub_214CCDA74();
  v61 = *(v63 - 8);
  v62 = v63 - 8;
  v59 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v2 = &v27 - v59;
  v60 = &v27 - v59;
  v100 = v3;
  v99 = v4;
  v98 = v5;
  v6 = sub_214C58ABC();
  (*(v61 + 16))(v2, v6, v63);

  v70 = 7;
  v66 = swift_allocObject();
  *(v66 + 16) = v64;

  v69 = 32;
  v7 = swift_allocObject();
  v8 = v66;
  v71 = v7;
  *(v7 + 16) = v65;
  *(v7 + 24) = v8;

  v83 = sub_214CCDA54();
  v84 = sub_214CCFBA4();
  v67 = 17;
  v75 = swift_allocObject();
  *(v75 + 16) = 32;
  v77 = swift_allocObject();
  *(v77 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v71;
  v73 = v9;
  *(v9 + 16) = v68;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v73;
  v80 = v11;
  *(v11 + 16) = v72;
  *(v11 + 24) = v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v78 = sub_214CD03C4();
  v81 = v13;

  v14 = v75;
  v15 = v81;
  *v81 = v74;
  v15[1] = v14;

  v16 = v77;
  v17 = v81;
  v81[2] = v76;
  v17[3] = v16;

  v18 = v80;
  v19 = v81;
  v81[4] = v79;
  v19[5] = v18;
  sub_214A63280();

  if (os_log_type_enabled(v83, v84))
  {
    v20 = v45;
    v37 = sub_214CCFF24();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v38 = sub_214A632C4(0);
    v39 = sub_214A632C4(1);
    v40 = &v89;
    v89 = v37;
    v41 = &v88;
    v88 = v38;
    v42 = &v87;
    v87 = v39;
    sub_214A6627C(2, &v89);
    sub_214A6627C(1, v40);
    v85 = v74;
    v86 = v75;
    sub_214A66290(&v85, v40, v41, v42);
    v43 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v85 = v76;
      v86 = v77;
      sub_214A66290(&v85, &v89, &v88, &v87);
      v35 = 0;
      v85 = v79;
      v86 = v80;
      sub_214A66290(&v85, &v89, &v88, &v87);
      _os_log_impl(&dword_214A5E000, v83, v84, "Did attempt restricted action, reasons: %s", v37, 0xCu);
      sub_214A669DC(v38);
      sub_214A669DC(v39);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277D82BD8](v83);
  (*(v61 + 8))(v60, v63, v21);
  v31 = [v57 viewModel];

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37B10);
  v28 = v97;
  v97[3] = v22;
  v97[4] = sub_214C5F9BC();
  v97[0] = v64;
  sub_214BC5A10();
  v29 = swift_allocError();
  sub_214BD0E34(v28, v23);
  v30 = sub_214CCD074();

  [v31 updateToErrorState_];
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  v32 = 0;
  sub_214B51A38();
  v34 = sub_214CCFC44();
  MEMORY[0x277D82BE0](v57);
  v24 = swift_allocObject();
  v25 = v44;
  *(v24 + 16) = v57;
  v95 = v25;
  v96 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v91 = 1107296256;
  v92 = 0;
  v93 = sub_214A746A8;
  v94 = &block_descriptor_61;
  v33 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v32, v56, v50, v33);
  (*(v47 + 8))(v50, v46);
  (*(v53 + 8))(v56, v52);
  _Block_release(v33);
  *&result = MEMORY[0x277D82BD8](v34).n128_u64[0];
  return result;
}

double sub_214C5F660(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  [v2 didSelectShowSummaryButtonForSummaryView_];
  (MEMORY[0x277D82BD8])();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t block_copy_helper_7_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_13_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_19_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214C5F860()
{
  v2 = qword_27CA37B00;
  if (!qword_27CA37B00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA37B00);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C5F8C4()
{
  v2 = qword_27CA37B08;
  if (!qword_27CA37B08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA37B08);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C5F934()
{
  v2 = qword_27CA37B18;
  if (!qword_27CA37B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37B10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37B18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C5F9BC()
{
  v2 = qword_27CA37B20;
  if (!qword_27CA37B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37B10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37B20);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_121_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

double sub_214C5FC28(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = (a3 >> 5) & 7;
  if (v5)
  {
    if (v5 == 1 || v5 == 2 || v5 == 3)
    {
      sub_214CD0554();
      sub_214CD0554();
    }

    else if (v5 == 4)
    {
      MEMORY[0x277D82BE0](a2);
      sub_214CD0554();
      type metadata accessor for MessageListSection();
      sub_214B04498();
      sub_214CD0554();
      *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
    }

    else
    {
      sub_214CD0554();
    }
  }

  else
  {
    sub_214CD0554();
    sub_214CD0554();
    sub_214CD0554();
  }

  return result;
}

unint64_t sub_214C60078()
{
  v2 = qword_27CA37B28;
  if (!qword_27CA37B28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37B28);
    return WitnessTable;
  }

  return v2;
}

char *sub_214C60188(uint64_t a1, unsigned __int8 a2)
{
  v7 = sub_214A7A398(a1, a2);
  if (v2)
  {
    goto LABEL_6;
  }

  if (v7 == sub_214CCCE14())
  {
    return [objc_opt_self() failed];
  }

  if (v7 > 0)
  {
LABEL_6:
    type metadata accessor for MUIMessageListSectionDataSourceChange();
    sub_214A6FB64(a1, a2);
    return sub_214A6FA30(a1, a2);
  }

  return [objc_opt_self() skipped];
}

char *static MUIMessageListSectionDataSourceChange.sectionRemoved(_:)(uint64_t a1)
{
  type metadata accessor for MUIMessageListSectionDataSourceChange();
  MEMORY[0x277D82BE0](a1);
  return sub_214A6FA30(a1, 0x80u);
}

uint64_t sub_214C60678(uint64_t a1)
{
  if ((*(a1 + 8) & 0xFE) != 0xFE)
  {
    sub_214A6FB18(*a1, *(a1 + 8));
  }

  if ((*(a1 + 24) & 0xFE) != 0xFE)
  {
    sub_214A6FB18(*(a1 + 16), *(a1 + 24));
  }

  return a1;
}

uint64_t MUIMessageListSectionDataSourceChange.isSectionRemoval.getter()
{
  v3 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  sub_214A6D370(*v3, v5);
  swift_endAccess();
  if ((v5 & 0xFE) == 0xFE)
  {
    goto LABEL_5;
  }

  if (((v5 >> 5) & 7) != 4)
  {
    sub_214A6FB18(v4, v5);
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  MEMORY[0x277D82BD8](v4);
  v2 = 1;
  return v2 & 1;
}

uint64_t sub_214C60878()
{
  v2 = v0 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v3 = *v2;
  sub_214A6D370(*v2, *(v2 + 8));
  swift_endAccess();
  return v3;
}

uint64_t sub_214C608EC(uint64_t a1, unsigned __int8 a2)
{
  sub_214A6D370(a1, a2);
  v6 = v2 + OBJC_IVAR___MUIMessageListSectionDataSourceChange_change;
  swift_beginAccess();
  v3 = *v6;
  v4 = *(v6 + 8);
  *v6 = a1;
  *(v6 + 8) = a2;
  sub_214A70FA8(v3, v4);
  swift_endAccess();
  return sub_214A70FA8(a1, a2);
}

uint64_t MUIMessageListSectionDataSourceChange.debugDescription.getter()
{
  v2 = [v0 ef_publicDescription];
  v3 = sub_214CCF564();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t get_enum_tag_for_layout_string_So37MUIMessageListSectionDataSourceChangeC6MailUIE0F033_F43593081D8AFDF48B015BA201A508BELLO(uint64_t a1)
{
  v1 = (*(a1 + 8) >> 5) & 7;
  if (v1 < 5)
  {
    return v1;
  }

  else
  {
    return *a1 + 5;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_214C60AF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7A && *(a1 + 9))
    {
      v5 = *a1 + 122;
    }

    else
    {
      v2 = (*(a1 + 8) >> 1) & 0x7F;
      v3 = 127 - (((8 * v2) | (v2 >> 4)) & 0x7F);
      if (v3 >= 0x7A)
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

uint64_t sub_214C60C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0x7A)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 123;
    if (a3 >= 0x7B)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 & 0x78) >> 2) - 32 * a2;
    }
  }

  return result;
}

uint64_t sub_214C60DF0(uint64_t result)
{
  v1 = *(result + 8) & 0x1F;
  *result = *result;
  *(result + 8) = v1;
  return result;
}

uint64_t sub_214C60E08(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = (32 * (a2 & 7)) | *(result + 8) & 1;
    *result = *result;
    *(result + 8) = v2;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = -96;
  }

  return result;
}

unint64_t sub_214C60EA4()
{
  v2 = qword_27CA37B38;
  if (!qword_27CA37B38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37B38);
    return WitnessTable;
  }

  return v2;
}

id sub_214C60F20(uint64_t a1)
{
  v5 = *(a1 + 32);

  if (v5(v1))
  {
    sub_214A77084();
    v3 = sub_214CCF304();

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_214C60FF8()
{
  result = sub_214CCF614();
  qword_27CA3EF90 = result;
  qword_27CA3EF98 = v1;
  return result;
}

uint64_t *sub_214C6103C()
{
  if (qword_27CA340A8 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EF90;
}

Swift::Void __swiftcall MUIMessageListViewController.presentMailCleanupView(mailCleanupTipId:)(Swift::String mailCleanupTipId)
{
  v12 = 0;
  v14 = mailCleanupTipId;
  v13 = v1;
  v4 = [v1 iCloudMailCleanupService];
  if (v4)
  {
    v12 = v4;
    [v4 setProviderDelegate_];

    v3 = sub_214CCF544();

    v10 = nullsub_1;
    v11 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v6 = 1107296256;
    v7 = 0;
    v8 = sub_214A746A8;
    v9 = &block_descriptor_19;
    v2 = _Block_copy(&aBlock);
    [v4 acceptTip:v3 completion:?];
    _Block_release(v2);
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
  }
}

Swift::Void __swiftcall MUIMessageListViewController.dismissMailCleanupTip(mailCleanupTipId:)(Swift::String mailCleanupTipId)
{
  v16 = 0;
  v18 = mailCleanupTipId;
  v17 = v1;
  v8 = [v1 iCloudMailCleanupService];
  if (v8)
  {
    v16 = v8;

    v5 = sub_214CCF544();

    [v8 dismissTip_];
    MEMORY[0x277D82BD8](v5);
    v2 = sub_214CCF614();
    v6 = MEMORY[0x21605D8D0](mailCleanupTipId._countAndFlagsBits, mailCleanupTipId._object, v2);

    if (v6)
    {
      sub_214C6103C();

      v4 = sub_214CCF544();

      v14 = sub_214C614BC;
      v15 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v10 = 1107296256;
      v11 = 0;
      v12 = sub_214C60F20;
      v13 = &block_descriptor_3_2;
      v3 = _Block_copy(&aBlock);
      AnalyticsSendEventLazy();
      _Block_release(v3);
      MEMORY[0x277D82BD8](v4);
    }

    MEMORY[0x277D82BD8](v8);
  }
}

uint64_t sub_214C614BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AE8);
  sub_214CD03C4();
  v4 = v0;
  *v0 = sub_214CCF614();
  v4[1] = v1;
  sub_214AF82CC();
  sub_214CCF614();
  v4[2] = sub_214BC9508();
  v4[3] = sub_214CCF614();
  v4[4] = v2;
  sub_214CCF614();
  v4[5] = sub_214BC9508();
  sub_214A63280();
  sub_214A77084();
  return sub_214CCF344();
}

Swift::Void __swiftcall MUIMessageListViewController.onAppear(mailCleanupTipId:)(Swift::String mailCleanupTipId)
{
  v3 = [v1 iCloudMailCleanupService];
  if (v3)
  {

    v2 = sub_214CCF544();

    [v3 onAppearTip_];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }
}

double sub_214C6183C(MUIMessageListViewController *self, SEL a2)
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = MUIMessageListViewController.bucketsViewControllerHeight.getter();
  MEMORY[0x277D82BD8](self);
  return v5;
}

double MUIMessageListViewController.bucketsViewControllerHeight.getter()
{
  v7 = [v0 bucketsViewController];
  if (v7)
  {
    type metadata accessor for BucketsViewController();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      MEMORY[0x277D82BD8](v7);
      v5 = 0;
    }

    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0.0;
  }

  v2 = BucketsViewController.preferredHeight.getter();
  MEMORY[0x277D82BD8](v4);
  return v2;
}

Swift::Void __swiftcall MUIMessageListViewController.refreshBucketsSession()()
{
  v4 = [v0 bucketsViewController];
  if (v4)
  {
    type metadata accessor for BucketsViewController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      MEMORY[0x277D82BD8](v4);
      v2 = 0;
    }

    v1 = v2;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    BucketsViewController.refreshSession()();
    MEMORY[0x277D82BD8](v1);
  }
}

double sub_214C61B34(uint64_t a1, char a2)
{
  v9 = [v2 bucketsViewController];
  if (v9)
  {
    type metadata accessor for BucketsViewController();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      *&result = MEMORY[0x277D82BD8](v9).n128_u64[0];
      v5 = 0;
    }

    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    BucketsViewController.select(bucket:notifyObserver:)(a1, a2 & 1);
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  return result;
}

Swift::Void __swiftcall MUIMessageListViewController.updateBucketBar(isHidden:)(Swift::Bool isHidden)
{
  if (isHidden)
  {
    [v2 updateSelectedBucket:0 unseenPredicate:0];
  }

  else
  {
    [v2 _selectBucket_];
    v1 = [v2 unseenPredicate];
    [v2 updateSelectedBucket:1 unseenPredicate:?];
    MEMORY[0x277D82BD8](v1);
  }
}

Swift::Void __swiftcall MUIMessageListViewController.updateUnseenCountQueries()()
{
  v4 = [v0 bucketsViewController];
  if (v4)
  {
    type metadata accessor for BucketsViewController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      MEMORY[0x277D82BD8](v4);
      v2 = 0;
    }

    v1 = v2;
  }

  else
  {
    v1 = 0;
  }

  if (v1)
  {
    BucketsViewController.updateUnseenCountQueries()();
    MEMORY[0x277D82BD8](v1);
  }
}

void MUIMessageListViewController.bucketsViewController(_:didAccept:into:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = 0;
  v24 = a1;
  v25 = a2;
  v23 = a3;
  v22 = a4;
  v20 = a5;
  v21 = a6;

  v17 = a5;
  v18 = a6;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_214A7A88C;
  v16 = &block_descriptor_20;
  v11 = _Block_copy(&aBlock);

  [v8 changeCategoryOfDragItem:a3 toBucket:a4 completion:v11];
  _Block_release(v11);
}

double MUIMessageListViewController.bucketBarConfigurationController(_:isHidden:forMailboxes:)(uint64_t a1, int a2, uint64_t a3)
{
  v13[1] = a1;
  v18 = a2;
  v17 = a3;
  v19 = sub_214C629EC;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v21 = 0;
  v25 = sub_214CCF224();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v13[0] = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v24 = v13 - v13[0];
  v29 = sub_214CCF254();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v14 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v28 = v13 - v14;
  v42 = v4;
  v41 = v5 & 1;
  v40 = v6;
  v39 = v3;
  sub_214B51A38();
  v31 = sub_214CCFC44();
  v16 = 7;
  v20 = swift_allocObject();
  MEMORY[0x277D82BE0](v15);
  swift_unknownObjectUnownedInit();
  MEMORY[0x277D82BD8](v15);

  v7 = swift_allocObject();
  v8 = v18;
  v9 = v19;
  v10 = v7;
  v11 = v20;
  *(v10 + 16) = v17;
  *(v10 + 24) = v11;
  *(v10 + 32) = v8;
  v37 = v9;
  v38 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = 0;
  v35 = sub_214A746A8;
  v36 = &block_descriptor_6_3;
  v30 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v21, v28, v24, v30);
  (*(v22 + 8))(v24, v25);
  (*(v26 + 8))(v28, v29);
  _Block_release(v30);
  *&result = MEMORY[0x277D82BD8](v31).n128_u64[0];
  return result;
}

uint64_t sub_214C62670(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37BC0);
  sub_214C63444();
  result = sub_214CCFA74();
  if (v21)
  {
    swift_getObjectType();
    v14 = [v21 bucketBarConfigurationIdentifier];
    v15 = sub_214CCF564();
    v16 = v4;
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v14);
    result = v15;
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
    Strong = swift_unknownObjectUnownedLoadStrong();
    v12 = [Strong mailboxes];
    sub_214A63684();
    sub_214CCF7E4();
    MEMORY[0x277D82BD8](Strong);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36150);
    sub_214A7C404();
    sub_214CCFA74();

    if (v20)
    {
      v9 = [v20 bucketBarConfigurationIdentifier];
      sub_214CCF564();
      v10 = v5;
      (MEMORY[0x277D82BD8])();
      MEMORY[0x277D82BD8](v9);
      v6 = MEMORY[0x277D82BD8](v12);
      v11 = v10;
    }

    else
    {
      v6 = MEMORY[0x277D82BD8](v12);
      v11 = 0;
    }

    if (v11)
    {
      v7 = MEMORY[0x21605D8D0](v17, v18, v6);
      if (v7)
      {
        v8 = swift_unknownObjectUnownedLoadStrong();
        [v8 _updateBucketBarIsHidden_];
        MEMORY[0x277D82BD8](v8);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t block_copy_helper_4_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

double MUIMessageListViewController.bucketBarConfigurationControllerRequiresReload(_:)(uint64_t a1)
{
  v12 = a1;
  v13 = sub_214C62F88;
  v34 = 0;
  v33 = 0;
  v15 = 0;
  v19 = sub_214CCF224();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v8 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v18 = &v8 - v8;
  v23 = sub_214CCF254();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v9 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v22 = &v8 - v9;
  v34 = v2;
  v33 = v1;
  sub_214B51A38();
  v25 = sub_214CCFC44();
  v11 = 7;
  v14 = swift_allocObject();
  MEMORY[0x277D82BE0](v10);
  swift_unknownObjectUnownedInit();
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BE0](v12);

  v3 = swift_allocObject();
  v4 = v13;
  v5 = v3;
  v6 = v14;
  *(v5 + 16) = v12;
  *(v5 + 24) = v6;
  v31 = v4;
  v32 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = 0;
  v29 = sub_214A746A8;
  v30 = &block_descriptor_13;
  v24 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v15, v22, v18, v24);
  (*(v16 + 8))(v18, v19);
  (*(v20 + 8))(v22, v23);
  _Block_release(v24);
  *&result = MEMORY[0x277D82BD8](v25).n128_u64[0];
  return result;
}

double sub_214C62E38(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong mailboxes];
  sub_214A63684();
  sub_214CCF7E4();
  MEMORY[0x277D82BD8](Strong);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37B50);
  sub_214CD01A4();
  v5 = sub_214CCF7D4();

  v6 = [a1 isBucketBarHiddenForMailboxes_];
  MEMORY[0x277D82BD8](v5);
  v7 = swift_unknownObjectUnownedLoadStrong();
  [v7 _updateBucketBarIsHidden_];
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

id MUIMessageListViewController.bucketsViewController(_:didSelectBucket:unseenPredicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [v4 bucketBarConfigurationController];
  sub_214A6E0D8();
  v8 = v5;
  v7 = [v4 mailboxes];
  sub_214A63684();
  sub_214CCF7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37B50);
  sub_214CD01A4();
  v9 = sub_214CCF7D4();

  [v10 setSelectedBucket:v8 mailboxes:{v9, MEMORY[0x277D82BD8](v7).n128_f64[0]}];
  MEMORY[0x277D82BD8](v9);
  return [v4 updateSelectedBucket:a3 unseenPredicate:{a4, MEMORY[0x277D82BD8](v10).n128_f64[0]}];
}

id MUIMessageListViewController.bucketsViewController(_:didDeselectBucket:)()
{
  v6 = [v0 bucketBarConfigurationController];
  sub_214A6E0D8();
  v4 = v1;
  v3 = [v0 mailboxes];
  sub_214A63684();
  sub_214CCF7E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37B50);
  sub_214CD01A4();
  v5 = sub_214CCF7D4();

  [v6 setSelectedBucket:v4 mailboxes:{v5, MEMORY[0x277D82BD8](v3).n128_f64[0]}];
  MEMORY[0x277D82BD8](v5);
  return [v0 updateSelectedBucket:5 unseenPredicate:{0, MEMORY[0x277D82BD8](v6).n128_f64[0]}];
}

id MUIMessageListViewController.bucketsViewController(_:updatedPredicateForFocusedAccounts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 updatedPredicateForFocusedAccounts_];

  return v4;
}

unint64_t sub_214C63444()
{
  v2 = qword_27CA37BC8;
  if (!qword_27CA37BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37BC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37BC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MUIOnboardingTip.primaryActionTitle.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    v4 = MUILocalizedOnboardingStringPrimaryActionTitle();
    v5 = sub_214CCF564();
    MEMORY[0x277D82BD8](v4);
    return v5;
  }

  else if (a1 == 2)
  {
    v2 = MUILocalizedOnboardingStringBadgeSettingsActionTitle();
    v3 = sub_214CCF564();
    MEMORY[0x277D82BD8](v2);
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t MUIOnboardingTip.primaryAction.getter(uint64_t a1)
{
  if (a1 != 1 && a1 != 2)
  {
    return 0;
  }

  sub_214BD1DB0();
  sub_214B1C228();
  sub_214BD2BD8();
  sub_214A73344();
  return sub_214CCFD84();
}

uint64_t MUIOnboardingTip.secondaryActionTitle.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    v4 = MUILocalizedOnboardingStringPrimarySecondaryActionTitle();
    v5 = sub_214CCF564();
    MEMORY[0x277D82BD8](v4);
    return v5;
  }

  else if (a1 == 2)
  {
    v2 = MUILocalizedOnboardingStringBadgeSettingsSecondaryActionTitle();
    v3 = sub_214CCF564();
    MEMORY[0x277D82BD8](v2);
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t MUIOnboardingTip.secondaryAction.getter(uint64_t a1)
{
  if (a1 != 1 && a1 != 2)
  {
    return 0;
  }

  sub_214BD1DB0();
  sub_214B1C228();
  sub_214BD2BD8();
  sub_214A73344();
  return sub_214CCFD84();
}

uint64_t MUIOnboardingTip.title.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v12 = MUILocalizedOnboardingStringPrimaryTitle();
      v13 = sub_214CCF564();
      MEMORY[0x277D82BD8](v12);
      return v13;
    case 2:
      v10 = MUILocalizedOnboardingStringBadgeSettingsTitle();
      v11 = sub_214CCF564();
      MEMORY[0x277D82BD8](v10);
      return v11;
    case 3:
      v8 = MUILocalizedOnboardingStringTransactionsTitle();
      v9 = sub_214CCF564();
      MEMORY[0x277D82BD8](v8);
      return v9;
    case 4:
      v6 = MUILocalizedOnboardingStringUpdatesTitle();
      v7 = sub_214CCF564();
      MEMORY[0x277D82BD8](v6);
      return v7;
    case 5:
      v4 = MUILocalizedOnboardingStringPromotionsTitle();
      v5 = sub_214CCF564();
      MEMORY[0x277D82BD8](v4);
      return v5;
    case 6:
      v2 = MUILocalizedOnboardingStringAllMailTitle();
      v3 = sub_214CCF564();
      MEMORY[0x277D82BD8](v2);
      return v3;
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v14;
}

id MUIOnboardingTip.titleColor.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v2 = [objc_opt_self() labelColor];
      v3 = [v2 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v2);
      return v3;
    case 2:
      return MUIBucket.backgroundColor.getter(5);
    case 3:
      return MUIBucket.backgroundColor.getter(2);
    case 4:
      return MUIBucket.backgroundColor.getter(3);
    case 5:
      return MUIBucket.backgroundColor.getter(4);
    case 6:
      return MUIBucket.backgroundColor.getter(5);
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v4;
}

uint64_t MUIOnboardingTip.message.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v12 = MUILocalizedOnboardingStringPrimaryMessage();
      v13 = sub_214CCF564();
      MEMORY[0x277D82BD8](v12);
      return v13;
    case 2:
      v10 = MUILocalizedOnboardingStringBadgeSettingsMessage();
      v11 = sub_214CCF564();
      MEMORY[0x277D82BD8](v10);
      return v11;
    case 3:
      v8 = MUILocalizedOnboardingStringTransactionsMessage();
      v9 = sub_214CCF564();
      MEMORY[0x277D82BD8](v8);
      return v9;
    case 4:
      v6 = MUILocalizedOnboardingStringUpdatesMessage();
      v7 = sub_214CCF564();
      MEMORY[0x277D82BD8](v6);
      return v7;
    case 5:
      v4 = MUILocalizedOnboardingStringPromotionsMessage();
      v5 = sub_214CCF564();
      MEMORY[0x277D82BD8](v4);
      return v5;
    case 6:
      v2 = MUILocalizedOnboardingStringAllMailMessage();
      v3 = sub_214CCF564();
      MEMORY[0x277D82BD8](v2);
      return v3;
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v14;
}

id MUIOnboardingTip.subtitleColor.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v2 = [objc_opt_self() labelColor];
      v3 = [v2 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v2);
      return v3;
    case 2:
      return [objc_opt_self() secondaryLabelColor];
    case 3:
      return MUIBucket.backgroundColor.getter(2);
    case 4:
      return MUIBucket.backgroundColor.getter(3);
    case 5:
      return MUIBucket.backgroundColor.getter(4);
    case 6:
      return [objc_opt_self() secondaryLabelColor];
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v4;
}

BOOL MUIOnboardingTip.preferredLabelVibrancy.getter()
{
  type metadata accessor for MUIOnboardingTip();
  sub_214B04028();
  return (sub_214CD03F4() & 1) != 0;
}

id MUIOnboardingTip.backgroundColor.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      v16 = MUIBucket.backgroundColor.getter(1);
      if (v16)
      {
        v15 = v16;
      }

      else
      {
        LOBYTE(v2) = 2;
        v3 = 221;
        LODWORD(v4) = 0;
        sub_214CD01F4();
        __break(1u);
      }

      v14 = [v15 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v15);
      return v14;
    case 2:
      return [objc_opt_self() secondarySystemBackgroundColor];
    case 3:
      v13 = MUIBucket.backgroundColor.getter(2);
      if (!v13)
      {
        return 0;
      }

      v11 = [v13 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v13);
      return v11;
    case 4:
      v10 = MUIBucket.backgroundColor.getter(3);
      if (!v10)
      {
        return 0;
      }

      v8 = [v10 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v10);
      return v8;
    case 5:
      v7 = MUIBucket.backgroundColor.getter(4);
      if (!v7)
      {
        return 0;
      }

      v5 = [v7 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v7);
      return v5;
    case 6:
      return [objc_opt_self() secondarySystemBackgroundColor];
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      return v17;
  }
}

uint64_t MUIOnboardingTip.information.getter()
{
  type metadata accessor for MUIOnboardingTip();
  sub_214B04028();
  if ((sub_214CD03F4() & 1) == 0)
  {
    return 0;
  }

  v1 = MUILocalizedOnboardingStringPrimaryInformation();
  v2 = sub_214CCF564();
  MEMORY[0x277D82BD8](v1);
  return v2;
}

Swift::String __swiftcall MUIOnboardingTip.badgeCountInformationLabel(withPrimaryUnreadCount:otherUnreadCount:)(Swift::Int withPrimaryUnreadCount, Swift::Int otherUnreadCount)
{
  v25 = withPrimaryUnreadCount;
  v26 = otherUnreadCount;
  v18 = v2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v22 = 0;
  v17 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v24 = &v17 - v17;
  v19 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v21 = &v17 - v19;
  v39 = v3;
  v38 = v4;
  v37 = v5;
  v20 = 1;
  sub_214CCF614();
  sub_214CCF4C4();
  v23 = [objc_opt_self() mui_MailUIBundle];
  sub_214B1CFBC();
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = v20 & 1;
  v28 = sub_214CCF5A4();
  v30 = v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270);
  v7 = sub_214CD03C4();
  v8 = v25;
  v9 = v26;
  v10 = MEMORY[0x277D83B88];
  v11[3] = MEMORY[0x277D83B88];
  v12 = MEMORY[0x277D83C10];
  v11[4] = MEMORY[0x277D83C10];
  *v11 = v8;
  v11[8] = v10;
  v11[9] = v12;
  v11[5] = v9;
  sub_214A63280();
  v29 = v7;
  v31 = sub_214CCF554();
  v32 = v13;

  v14 = v31;
  v15 = v32;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t MUIOnboardingTip.showActionButtons.getter()
{
  type metadata accessor for MUIOnboardingTip();
  sub_214B04028();
  if (sub_214CD03F4())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_214CD03F4();
  }

  return v1 & 1;
}

uint64_t MUIOnboardingTip.accessibilityIdentifier.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return sub_214CCF614();
    case 1:
      v12 = *MEMORY[0x277D25910];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25910]);
      v13 = sub_214CCF564();
      MEMORY[0x277D82BD8](v12);
      return v13;
    case 2:
      v10 = *MEMORY[0x277D25908];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25908]);
      v11 = sub_214CCF564();
      MEMORY[0x277D82BD8](v10);
      return v11;
    case 3:
      v8 = *MEMORY[0x277D25920];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25920]);
      v9 = sub_214CCF564();
      MEMORY[0x277D82BD8](v8);
      return v9;
    case 4:
      v6 = *MEMORY[0x277D25928];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25928]);
      v7 = sub_214CCF564();
      MEMORY[0x277D82BD8](v6);
      return v7;
    case 5:
      v4 = *MEMORY[0x277D25918];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25918]);
      v5 = sub_214CCF564();
      MEMORY[0x277D82BD8](v4);
      return v5;
    case 6:
      v2 = *MEMORY[0x277D25870];
      MEMORY[0x277D82BE0](*MEMORY[0x277D25870]);
      v3 = sub_214CCF564();
      MEMORY[0x277D82BD8](v2);
      return v3;
    default:
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      break;
  }

  return v14;
}

void sub_214C64E68()
{
  v6 = MUIOnboardingTipKeyForBucket(1);
  if (v6)
  {
    sub_214CCF564();
    v4 = v0;
    MEMORY[0x277D82BD8](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v1 = [objc_opt_self() em_userDefaults];
    v3 = v1;
    if (v1)
    {

      v2 = sub_214CCF544();

      [v3 setInteger:1 forKey:v2];
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v3);
    }
  }
}

double sub_214C65018()
{
  v3 = [objc_opt_self() em_userDefaults];
  if (v3)
  {
    v1 = *MEMORY[0x277D06C68];
    MEMORY[0x277D82BE0](*MEMORY[0x277D06C68]);
    sub_214AFD2F4(v1);
    v2 = sub_214CCF544();
    MEMORY[0x277D82BD8](v1);

    [v3 setInteger:1 forKey:v2];
    MEMORY[0x277D82BD8](v2);
    *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  return result;
}

void sub_214C65114()
{
  v8 = MUIOnboardingTipKeyForBucket(1);
  if (v8)
  {
    sub_214CCF564();
    v6 = v0;
    MEMORY[0x277D82BD8](v8);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v1 = [objc_opt_self() em_userDefaults];
    v5 = v1;
    if (v1)
    {

      v2 = sub_214CCF544();

      [v5 setInteger:1 forKey:v2];
      MEMORY[0x277D82BD8](v2);
      v3 = *MEMORY[0x277D06C50];
      MEMORY[0x277D82BE0](*MEMORY[0x277D06C50]);
      sub_214AFD2F4(v3);
      v4 = sub_214CCF544();
      MEMORY[0x277D82BD8](v3);

      [v5 setBool:0 forKey:v4];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
    }
  }
}

unint64_t sub_214C65354()
{
  v2 = qword_27CA37BD0;
  if (!qword_27CA37BD0)
  {
    type metadata accessor for MUIOnboardingTip();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37BD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t static MUIOpenMailboxQuicklySearchController.filterMailboxes(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v37 = a2;
  v36 = a1;
  v45 = 0;
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v52 = 0;
  v41 = sub_214CCCE64();
  v38 = *(v41 - 8);
  v40 = v38;
  MEMORY[0x28223BE20](v36);
  v42 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v5;
  v39 = *(v3 + 80);
  v60 = v39;
  v58 = v6;
  v59 = v7;
  v57 = v3;
  v55 = v6;
  v56 = v7;
  sub_214CCCE44();
  sub_214B075A0();
  v43 = sub_214CCFF74();
  (*(v40 + 8))(v42, v41);
  v54 = v43;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  v44 = v46;
  sub_214B22E9C();
  v8 = sub_214CCF754();
  v47 = 0;
  v48 = v8;
  v31 = v8;
  sub_214A62278();
  v53 = v31;
  sub_214C65A3C();
  v9 = sub_214CD0154();
  v32 = 0;
  v33 = v9;
  v29 = v9;
  v52 = v9;
  v30 = sub_214CCF664();

  if (v30)
  {
    v28 = 1;
  }

  else
  {
    v51 = v36;
    v27 = sub_214CCF8D4();
    swift_getWitnessTable();
    v28 = sub_214CCFA94();
  }

  v26 = v28;

  if (v26)
  {
    v25 = 1;
  }

  else
  {
    v50 = v29;
    sub_214B50C54();
    v25 = sub_214CCFA94();
  }

  v24 = v25;

  if (v24)
  {
    v14 = sub_214CD03C4();
    v15 = v14;

    v17 = v15;
    v18 = v32;
    return v17;
  }

  v10 = v32;

  v49 = v36;

  v19 = &v14;
  MEMORY[0x28223BE20](&v14);
  v20 = &v14 - 4;
  *(&v14 - 2) = v34;
  *(&v14 - 1) = v11;
  v21 = sub_214CCF8D4();
  swift_getWitnessTable();
  v12 = sub_214CD0154();
  v22 = v10;
  v23 = v12;
  if (!v10)
  {
    v16 = v23;

    v17 = v16;
    v18 = v22;
    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_214C65A3C()
{
  v2 = qword_280C7CEC8;
  if (!qword_280C7CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA34EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C65AC4(id *a1, uint64_t a2, uint64_t a3)
{
  v7 = [*a1 displayName];
  v3 = sub_214CCF564();
  v8 = sub_214C65BA0(v3, v4, a3);

  MEMORY[0x277D82BD8](v7);
  return v8 & 1;
}

uint64_t sub_214C65BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a1;
  v51 = a2;
  v60 = a3;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v87 = 0;
  v85 = 0;
  v61 = v84;
  v84[0] = 0;
  v84[1] = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  memset(&v77[1], 0, 24);
  v71 = 0;
  v69 = 0;
  v70 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35978);
  v49 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v50 = &v15 - v49;
  v57 = sub_214CCCE64();
  v55 = *(v57 - 8);
  v56 = v57 - 8;
  v53 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v58 = &v15 - v53;
  v89 = v5;
  v90 = v6;
  v88 = v7;
  v87 = v3;
  v86 = *(v3 + 80);
  v84[2] = v5;
  v84[3] = v6;
  sub_214CCCE44();
  v54 = sub_214B075A0();
  v59 = sub_214CCFF74();
  (*(v55 + 8))(v58, v57);
  v85 = v59;

  v83 = v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B50C54();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37BD8);
    sub_214CD01B4();
    v47 = v81;
    v48 = v82;
    if (!v82)
    {
      break;
    }

    v45 = v47;
    v46 = v48;
    v41 = v48;
    v42 = v47;
    v79 = v47;
    v80 = v48;
    v78 = 0;
    v43 = v85;

    v44 = &v76;
    v76 = v43;
    v8 = sub_214B22E9C();
    MEMORY[0x21605D9B0](v77, v62, v8);
    sub_214A62278();
    v75 = v77[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37BE0);
    sub_214CD0244();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA37BE8);
      sub_214CD0254();
      v38 = v72;
      v39 = v73;
      v40 = v74;
      if (!v74)
      {
        break;
      }

      v35 = v38;
      v36 = v39;
      v37 = v40;
      v24 = v40;
      v25 = v38;
      v71 = v38;
      v69 = v39;
      v70 = v40;
      v27 = v68;
      v68[0] = v39;
      v68[1] = v40;
      v28 = v67;
      v67[0] = v42;
      v67[1] = v41;
      v30 = 0;
      type metadata accessor for CompareOptions();
      v9 = sub_214CD03C4();
      *v10 = 1;
      v10[1] = 8;
      sub_214A63280();
      v26 = v9;
      sub_214B01510();
      sub_214CD0084();
      v29 = v66;
      v11 = *(*(sub_214CCD2D4() - 8) + 56);
      v33 = 1;
      v11(v50, 1);
      v34 = sub_214CCFFF4();
      v31 = v12;
      v32 = v13;
      sub_214B6107C(v50);
      v63 = v34;
      v64 = v31;
      v65 = v32 & 1 & v33;
      v23 = v65 == 0;
      v21 = v25;
      v22 = v24;
      if (!v65)
      {
        v19 = v22;
        v78 = 1;
        sub_214CCF8A4();

        v20 = 1;
        goto LABEL_9;
      }
    }

    v20 = 0;
LABEL_9:
    v17 = v20;
    sub_214A62278();
    v18 = v41;
    if ((v17 & 1) == 0)
    {

      sub_214A62278();
      sub_214A62278();
      v16 = 0;
      return v16 & 1;
    }
  }

  sub_214A62278();
  sub_214A62278();
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_214C6622C()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t *sub_214C663A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a3;
  v26 = a2;
  v27 = a1;
  v28 = a4;
  v29 = a3 & 0xFFFFFFFFFFFFFFFELL;
  if (a2 == 1)
  {
    TupleTypeMetadata = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    v24 = 0;
  }

  else
  {
    v20 = &v10;
    MEMORY[0x28223BE20](&v10);
    v21 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; ; i = v5 + 1)
    {
      v19 = i;
      if (i >= v26)
      {
        break;
      }

      v5 = v19;
      *&v21[8 * v19] = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * v19);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v24 = v6;
  }

  v15 = TupleTypeMetadata;
  v17 = *(*(TupleTypeMetadata - 8) + 64);
  v16 = &v10;
  v7.n128_f64[0] = MEMORY[0x28223BE20](&v10);
  v18 = &v10 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    for (j = 0; ; j = v10)
    {
      v12 = j;
      v13 = *((v25 & 0xFFFFFFFFFFFFFFFELL) + 8 * j);
      v11 = v26 == 1 ? 0 : *(v15 + 16 * v12 + 32);
      (*(*(v13 - 8) + 16))(&v18[v11], *(v27 + 8 * v12), v7);
      v10 = v12 + 1;
      if (v12 + 1 == v26)
      {
        break;
      }
    }
  }

  sub_214CCF204();
  return v16;
}

uint64_t sub_214C66758()
{
  v2 = *(v0 + 40);

  return v2;
}

uint64_t sub_214C667A4()
{
  v2 = *(v0 + 56);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_214C667E4(uint64_t a1)
{
  swift_unknownObjectRetain();
  *(v1 + 56) = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_214C66840()
{

  sub_214CCF8D4();
  sub_214CCEFB4();

  return v1;
}

uint64_t sub_214C668C4()
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFC4();

  return v1;
}

uint64_t sub_214C66970()
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFD4();
  sub_214C12204();
}

uint64_t sub_214C66A58()
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFE4();

  return v1;
}

uint64_t sub_214C66B1C()
{
  v2 = *(v0 + 64);

  return v2;
}

uint64_t sub_214C66B70(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_214C66C00()
{

  sub_214CCEFB4();

  return v1;
}

uint64_t sub_214C66C98()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C70);
  sub_214CCEFC4();

  return v1;
}

uint64_t sub_214C66D54()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C70);
  sub_214CCEFD4();
  sub_214C66E54();
}

uint64_t sub_214C66E8C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C70);
  sub_214CCEFE4();

  return v1;
}

uint64_t sub_214C66F60()
{
  v2 = *(v0 + 80);

  return v2;
}

uint64_t sub_214C66FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[10] = a1;
  v3[11] = a2;
  v3[12] = a3;
}

uint64_t sub_214C6706C()
{
  swift_unknownObjectRetain();
  sub_214CCFF34();
  sub_214CCEFB4();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_214C670EC()
{
  swift_unknownObjectRetain();

  sub_214CCFF34();
  sub_214CCEFF4();
  sub_214CCEFC4();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_214C67198()
{
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  sub_214CCFF34();
  sub_214CCEFF4();
  sub_214CCEFD4();
  sub_214C125A8();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_214C67280()
{
  swift_unknownObjectRetain();

  sub_214CCFF34();
  sub_214CCEFF4();
  sub_214CCEFE4();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_214C67344()
{
  v2 = *(v0 + 104);
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_214C67398(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_214C67424()
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFC4();

  return v1;
}

uint64_t sub_214C674D0()
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFD4();
  sub_214C12204();
}

uint64_t sub_214C675B8()
{

  sub_214CCF8D4();
  sub_214CCEFF4();
  sub_214CCEFE4();

  return v1;
}

uint64_t sub_214C6767C()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_214C676D0(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
}

uint64_t sub_214C67760(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C78);
  sub_214CCEFB4();
  MEMORY[0x277D82BD8](a1);
  return v3;
}

uint64_t sub_214C677F4()
{
  v2 = *(v0 + 136);
  MEMORY[0x277D82BE0](v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C80);
  sub_214CCEFC4();
  MEMORY[0x277D82BD8](v2);

  return v3;
}

double sub_214C678A4(uint64_t a1, uint64_t a2)
{
  v8[3] = 0;
  v8[4] = a1;
  v3 = *(v2 + 136);
  v5 = v3;
  v6 = *(v2 + 144);
  v8[2] = *(a2 + 16);
  MEMORY[0x277D82BE0](v3);

  MEMORY[0x277D82BE0](v5);

  v8[0] = v5;
  v8[1] = v6;
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C80);
  sub_214CCEFD4();
  sub_214C679A8(v8);
  MEMORY[0x277D82BD8](v5);

  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C679E8()
{
  v2 = *(v0 + 136);
  MEMORY[0x277D82BE0](v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C80);
  sub_214CCEFE4();
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t sub_214C67AB0()
{
  v2 = *(v0 + 136);
  MEMORY[0x277D82BE0](v2);

  return v2;
}

uint64_t sub_214C67B0C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x277D82BE0](a1);

  v3 = *(v2 + 136);
  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  MEMORY[0x277D82BD8](v3);

  MEMORY[0x277D82BD8](a1);
}

uint64_t sub_214C67BB0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C88);
  sub_214CCE054();

  return v1 & 1;
}

uint64_t sub_214C67C54()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C88);
  sub_214CCE064();
  sub_214AA8B50();
}

uint64_t sub_214C67D20()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C88);
  sub_214CCE074();

  return v1;
}

uint64_t sub_214C67DDC()
{
  v2 = *(v0 + 152);

  return v2 & 1;
}

uint64_t sub_214C67E3C(char a1, uint64_t a2, char a3)
{

  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
}

uint64_t MUIOpenMailboxQuicklyView.init(delegate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(__b, 0, 0xA9uLL);
  __b[22] = a2;
  __b[0] = 0x4077700000000000;
  __b[1] = 0x4085E00000000000;
  __b[2] = 10.0;
  __b[3] = 20.0;
  __b[4] = 15.0;
  sub_214CCF614();
  v13 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614();
  sub_214B1C228();
  v14 = sub_214CCCF54();
  v15 = v3;

  MEMORY[0x277D82BD8](v13);

  __b[5] = v14;
  __b[6] = v15;
  sub_214CCF2D4();
  __b[8] = sub_214C66840();
  __b[9] = v4;
  sub_214CCF614();
  __b[10] = sub_214C66C00();
  __b[11] = v5;
  __b[12] = v6;
  __b[13] = sub_214C6706C();
  __b[14] = v7;
  sub_214CCF2D4();
  __b[15] = sub_214C66840();
  __b[16] = v8;
  __b[17] = sub_214C67760(0);
  __b[18] = v9;
  LOBYTE(__b[19]) = sub_214CCE084() & 1;
  __b[20] = v10;
  LOBYTE(__b[21]) = v11 & 1;
  swift_unknownObjectRetain();
  __b[7] = a1;
  sub_214C68154(__b, a3);
  swift_unknownObjectRelease();
  return sub_214C68334(__b);
}

uint64_t sub_214C68154(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v3 = *(a1 + 48);

  *(a2 + 48) = v3;
  v4 = *(a1 + 56);
  swift_unknownObjectRetain();
  *(a2 + 56) = v4;
  v5 = *(a1 + 64);

  *(a2 + 64) = v5;
  v6 = *(a1 + 72);

  *(a2 + 72) = v6;
  *(a2 + 80) = *(a1 + 80);
  v7 = *(a1 + 88);

  *(a2 + 88) = v7;
  v8 = *(a1 + 96);

  *(a2 + 96) = v8;
  v9 = *(a1 + 104);
  swift_unknownObjectRetain();
  *(a2 + 104) = v9;
  v10 = *(a1 + 112);

  *(a2 + 112) = v10;
  v11 = *(a1 + 120);

  *(a2 + 120) = v11;
  v12 = *(a1 + 128);

  *(a2 + 128) = v12;
  v13 = *(a1 + 136);
  MEMORY[0x277D82BE0](v13);
  *(a2 + 136) = v13;
  v14 = *(a1 + 144);

  *(a2 + 144) = v14;
  *(a2 + 152) = *(a1 + 152);
  v16 = *(a1 + 160);

  result = a2;
  *(a2 + 160) = v16;
  *(a2 + 168) = *(a1 + 168);
  return result;
}

uint64_t sub_214C68334(uint64_t a1)
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + 136));

  return a1;
}

uint64_t MUIOpenMailboxQuicklyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v24 = a1;
  v67 = 0;
  v25 = &unk_214CF5498;
  v28 = MEMORY[0x277CE1148];
  v141 = MEMORY[0x277CDFAD8];
  v133 = MEMORY[0x277CE0CA8];
  v33 = MEMORY[0x277D83980];
  v68 = MEMORY[0x277CE14C0];
  v39 = MEMORY[0x277CE1290];
  v76 = MEMORY[0x277CE1198];
  v42 = MEMORY[0x277D84F50];
  v47 = MEMORY[0x277CE0E40];
  v48 = MEMORY[0x277CDDB40];
  v65 = MEMORY[0x277CDE610];
  v79 = MEMORY[0x277CE0FB0];
  v93 = sub_214C6A79C;
  v110 = sub_214C7010C;
  v135 = sub_214C70450;
  v158 = 0;
  v95 = 0;
  v100 = sub_214CCF184();
  v97 = *(v100 - 8);
  v98 = v100 - 8;
  v22 = (*(v97 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v100);
  v99 = &v21 - v22;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C90);
  v23 = (*(*(v101 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101);
  v104 = &v21 - v23;
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37C98);
  v70 = 255;
  v52 = sub_214CCF0C4();
  v126 = *(v24 + 16);
  v219 = v126;
  v36 = sub_214CCF8D4();
  v127 = *(v24 + 24);
  v35 = *(v127 + 16);
  v34 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v215 = v26;
  v216 = MEMORY[0x277D837D0];
  v217 = WitnessTable;
  v218 = MEMORY[0x277D837E0];
  v27 = sub_214CCF034();
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v30 = sub_214CCE2F4();
  v29 = swift_getWitnessTable();
  v81 = sub_214C200FC();
  v213 = v29;
  v214 = v81;
  v3 = swift_getWitnessTable();
  v211 = v30;
  v212 = v3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v31 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  v32 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  v38 = sub_214CCF1F4();
  v37 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v206 = v36;
  v207 = AssociatedTypeWitness;
  v208 = v38;
  v209 = v37;
  v210 = AssociatedConformanceWitness;
  v40 = sub_214CCF0F4();
  v205 = swift_getWitnessTable();
  swift_getWitnessTable();
  v41 = sub_214CCF074();
  v43 = sub_214CCE2F4();
  v50 = sub_214CCE2F4();
  v44 = sub_214CCFF34();
  v203 = swift_getWitnessTable();
  v78 = MEMORY[0x277CDF918];
  v204 = MEMORY[0x277CDF918];
  v45 = swift_getWitnessTable();
  v202 = *(v127 + 8);
  v46 = swift_getWitnessTable();
  v198 = v43;
  v199 = v44;
  v200 = v45;
  v201 = v46;
  v88 = swift_getOpaqueTypeMetadata2();
  v194 = v43;
  v195 = v44;
  v196 = v45;
  v197 = v46;
  v134 = 1;
  swift_getOpaqueTypeConformance2();
  v49 = sub_214CCE394();
  swift_getWitnessTable();
  sub_214CCE0A4();
  swift_getTupleTypeMetadata2();
  v51 = sub_214CCF1F4();
  swift_getWitnessTable();
  sub_214CCE1B4();
  sub_214CCE2F4();
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  sub_214CCFF34();
  swift_getTupleTypeMetadata2();
  v54 = sub_214CCF1F4();
  swift_getWitnessTable();
  v55 = sub_214CCF074();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CC0);
  v57 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34C28);
  v59 = sub_214CCE2F4();
  v60 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CD0);
  v62 = sub_214CCE2F4();
  v56 = swift_getWitnessTable();
  v5 = sub_214B070E8();
  v192 = v56;
  v193 = v5;
  v58 = swift_getWitnessTable();
  v6 = sub_214B07170();
  v190 = v58;
  v191 = v6;
  v188 = swift_getWitnessTable();
  v189 = MEMORY[0x277CDF760];
  v61 = swift_getWitnessTable();
  v7 = sub_214C69780();
  v186 = v61;
  v187 = v7;
  v63 = swift_getWitnessTable();
  v184 = v62;
  v185 = v63;
  v85 = swift_getOpaqueTypeMetadata2();
  v182 = v62;
  v183 = v63;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v180 = v85;
  v181 = OpaqueTypeConformance2;
  v83 = swift_getOpaqueTypeMetadata2();
  v66 = sub_214CCE2F4();
  v178 = v85;
  v179 = OpaqueTypeConformance2;
  v176 = swift_getOpaqueTypeConformance2();
  v177 = v81;
  v8 = swift_getWitnessTable();
  v174 = v66;
  v175 = v8;
  v117 = swift_getOpaqueTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v119 = sub_214CCF1F4();
  swift_getWitnessTable();
  v121 = sub_214CCF074();
  v122 = sub_214CCE2F4();
  v71 = MEMORY[0x277CDFC70];
  v123 = sub_214CCE2F4();
  v112 = sub_214CCE2F4();
  v113 = sub_214CCEF24();
  v72 = (*(*(v113 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v96 = &v21 - v72;
  v114 = sub_214CCE2F4();
  v73 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v105 = &v21 - v73;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CF0);
  v115 = sub_214CCE2F4();
  v75 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v109 = &v21 - v75;
  v131 = sub_214CCE2F4();
  v77 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v116 = &v21 - v77;
  v172 = swift_getWitnessTable();
  v173 = MEMORY[0x277CDF678];
  v170 = swift_getWitnessTable();
  v80 = MEMORY[0x277CDFC60];
  v171 = MEMORY[0x277CDFC60];
  v168 = swift_getWitnessTable();
  v169 = v78;
  v92 = swift_getWitnessTable();
  v167 = v92;
  v94 = swift_getWitnessTable();
  v165 = v94;
  v166 = v80;
  v102 = swift_getWitnessTable();
  v9 = sub_214C69808();
  v163 = v102;
  v164 = v9;
  v107 = swift_getWitnessTable();
  v161 = v107;
  v162 = v81;
  v132 = swift_getWitnessTable();
  v159 = v131;
  v160 = v132;
  v145 = swift_getOpaqueTypeMetadata2();
  v137 = *(v145 - 8);
  v138 = v145 - 8;
  v82 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v139 = &v21 - v82;
  v146 = sub_214CCE2F4();
  v89 = *(*(v146 - 8) + 64);
  v84 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v95);
  v144 = &v21 - v84;
  swift_checkMetadataState();
  swift_checkMetadataState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20);
  swift_checkMetadataState();
  swift_checkMetadataState();
  v10 = swift_checkMetadataState();
  v90 = (v89 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v147 = &v21 - v90;
  v158 = &v21 - v90;
  v128 = v220;
  v129 = 169;
  memcpy(v220, v11, 0xA9uLL);
  memcpy(__dst, v91, sizeof(__dst));
  sub_214C68154(v220, &v157);
  v148 = v126;
  v149 = v127;
  v150 = v128;
  sub_214CCEF14();
  sub_214C68334(v128);
  sub_214B68808();
  sub_214CCED14();
  v120 = sub_214CCE224();
  sub_214AA2AE4(v96, v117, TupleTypeMetadata2, v119, v120);
  sub_214C6FFB8();
  sub_214CCE0E4();
  (*(v97 + 8))(v99, v100);
  v103 = sub_214C6FFD0();
  sub_214B07A68();
  sub_214CCEAC4();
  sub_214C70058(v104);
  sub_214AA2AE4(v105, v117, TupleTypeMetadata2, v119, v120);
  sub_214CCF1D4();
  v108 = sub_214C1FFD4();
  v106 = MEMORY[0x277CE14A8];
  sub_214B28CB0();
  sub_214CCEB74();
  sub_214AA2B38(v109, v117, TupleTypeMetadata2, v119, v120, v121, v122, v123, v112, v113, v114, v115);
  sub_214C68154(v128, &v156);
  v124 = 201;
  v125 = 7;
  v12 = swift_allocObject();
  v13 = v127;
  v14 = v128;
  v15 = v129;
  v111 = v12;
  v12[2] = v126;
  v12[3] = v13;
  memcpy(v12 + 4, v14, v15);
  sub_214B61150();
  sub_214CCEB94();

  sub_214AA2B38(v116, v117, TupleTypeMetadata2, v119, v120, v121, v122, v123, v112, v113, v114, v115);
  sub_214C68154(v128, &v155);
  v16 = swift_allocObject();
  v17 = v127;
  v18 = v128;
  v19 = v129;
  v130 = v16;
  v16[2] = v126;
  v16[3] = v17;
  memcpy(v16 + 4, v18, v19);
  v136 = v130;
  v153 = v131;
  v154 = v132;
  v140 = swift_getOpaqueTypeConformance2();
  sub_214CCEDA4();
  sub_214A6B584(v135);
  (*(v137 + 8))(v139, v145);
  v151 = v140;
  v152 = MEMORY[0x277CE0790];
  v143 = swift_getWitnessTable();
  sub_214B061F0(v144, v146, v147);
  sub_214AA2D38(v144, v145, v146);
  sub_214AA2DEC(v147, v144, v145, v146);
  sub_214B061F0(v144, v146, v142);
  sub_214AA2D38(v144, v145, v146);
  return sub_214AA2D38(v147, v145, v146);
}

unint64_t sub_214C69780()
{
  v2 = qword_27CA37CE8;
  if (!qword_27CA37CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37CE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C69808()
{
  v2 = qword_27CA37CF8;
  if (!qword_27CA37CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37CF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C69890@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  __src = a1;
  v71 = a2;
  v72 = a3;
  v56 = 0;
  v10[2] = &unk_214CF5498;
  v13 = MEMORY[0x277CE1148];
  v95 = MEMORY[0x277CDFAD8];
  v55 = MEMORY[0x277CE0CA8];
  v18 = MEMORY[0x277D83980];
  v58 = MEMORY[0x277CE14C0];
  v24 = MEMORY[0x277CE1290];
  v76 = MEMORY[0x277CE1198];
  v27 = MEMORY[0x277D84F50];
  v32 = MEMORY[0x277CE0E40];
  v33 = MEMORY[0x277CDDB40];
  v52 = MEMORY[0x277CDE610];
  v73 = sub_214C7AA08;
  v113 = 0;
  v161 = a2;
  v10[0] = v159;
  v10[1] = 169;
  memcpy(v159, a1, 0xA9uLL);
  memcpy(__dst, v159, sizeof(__dst));
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37C98);
  v57 = 255;
  v37 = sub_214CCF0C4();
  v21 = sub_214CCF8D4();
  v20 = *(v72 + 16);
  v19 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v155 = v11;
  v156 = MEMORY[0x277D837D0];
  v157 = WitnessTable;
  v158 = MEMORY[0x277D837E0];
  v12 = sub_214CCF034();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v15 = sub_214CCE2F4();
  v14 = swift_getWitnessTable();
  v53 = sub_214C200FC();
  v153 = v14;
  v154 = v53;
  v151 = v15;
  v152 = swift_getWitnessTable();
  v89 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v61 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v16 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  v17 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  v23 = sub_214CCF1F4();
  v22 = swift_getWitnessTable();
  v146 = v21;
  v147 = AssociatedTypeWitness;
  v148 = v23;
  v149 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = sub_214CCF0F4();
  v145 = swift_getWitnessTable();
  swift_getWitnessTable();
  v26 = sub_214CCF074();
  v28 = sub_214CCE2F4();
  v35 = sub_214CCE2F4();
  v29 = sub_214CCFF34();
  v143 = swift_getWitnessTable();
  v94 = MEMORY[0x277CDF918];
  v144 = MEMORY[0x277CDF918];
  v30 = swift_getWitnessTable();
  v142 = *(v72 + 8);
  v31 = swift_getWitnessTable();
  v138 = v28;
  v139 = v29;
  v140 = v30;
  v141 = v31;
  v68 = swift_getOpaqueTypeMetadata2();
  v134 = v28;
  v135 = v29;
  v136 = v30;
  v137 = v31;
  v51 = 1;
  swift_getOpaqueTypeConformance2();
  v34 = sub_214CCE394();
  swift_getWitnessTable();
  sub_214CCE0A4();
  swift_getTupleTypeMetadata2();
  v36 = sub_214CCF1F4();
  swift_getWitnessTable();
  sub_214CCE1B4();
  sub_214CCE2F4();
  swift_getTupleTypeMetadata2();
  sub_214CCF1F4();
  sub_214CCFF34();
  swift_getTupleTypeMetadata2();
  v39 = sub_214CCF1F4();
  swift_getWitnessTable();
  v40 = sub_214CCF074();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CC0);
  v42 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34C28);
  v44 = sub_214CCE2F4();
  v45 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CD0);
  v47 = sub_214CCE2F4();
  v41 = swift_getWitnessTable();
  v132 = v41;
  v133 = sub_214B070E8();
  v43 = swift_getWitnessTable();
  v130 = v43;
  v131 = sub_214B07170();
  v128 = swift_getWitnessTable();
  v129 = MEMORY[0x277CDF760];
  v46 = swift_getWitnessTable();
  v126 = v46;
  v127 = sub_214C69780();
  v48 = swift_getWitnessTable();
  v124 = v47;
  v125 = v48;
  v65 = swift_getOpaqueTypeMetadata2();
  v122 = v47;
  v123 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = v65;
  v121 = OpaqueTypeConformance2;
  v63 = swift_getOpaqueTypeMetadata2();
  v54 = sub_214CCE2F4();
  v118 = v65;
  v119 = OpaqueTypeConformance2;
  v116 = swift_getOpaqueTypeConformance2();
  v117 = v53;
  v114 = v54;
  v115 = swift_getWitnessTable();
  v100 = swift_getOpaqueTypeMetadata2();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v102 = sub_214CCF1F4();
  v75 = swift_getWitnessTable();
  v104 = sub_214CCF074();
  v59 = (*(*(v104 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v78 = v10 - v59;
  v105 = sub_214CCE2F4();
  v60 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v89);
  v84 = v10 - v60;
  v106 = sub_214CCE2F4();
  v62 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v89);
  v92 = v10 - v62;
  v99 = sub_214CCE2F4();
  v69 = *(*(v99 - 8) + 64);
  v64 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v89);
  v98 = v10 - v64;
  swift_checkMetadataState();
  swift_checkMetadataState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20);
  swift_checkMetadataState();
  swift_checkMetadataState();
  swift_checkMetadataState();
  v70 = (v69 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](__src);
  v107 = v10 - v70;
  v113 = v10 - v70;
  sub_214C68154(v5, &v112);
  v74 = v108;
  v108[2] = v71;
  v108[3] = v72;
  v108[4] = __src;
  sub_214B6C2A4();
  v81 = 1;
  v90 = 1;
  sub_214CCF064();
  sub_214C68334(__src);
  v77 = *__src;
  v80 = swift_getWitnessTable();
  sub_214B68808();
  v83 = 0;
  sub_214CCED04();
  v103 = sub_214CCE224();
  sub_214AA2AE4(v78, v100, TupleTypeMetadata2, v102, v103);
  v82 = *(__src + 1);
  v110 = v80;
  v111 = MEMORY[0x277CDF678];
  v88 = swift_getWitnessTable();
  sub_214B68808();
  sub_214CCED14();
  sub_214AA2AE4(v84, v100, TupleTypeMetadata2, v102, v103);
  v86 = sub_214CD03C4();
  v85 = v6;
  *v6 = sub_214CCE8D4();
  v7 = sub_214CCE8E4();
  v8 = v86;
  v85[1] = v7;
  sub_214A63280();
  v87 = v8;
  sub_214C151AC();
  sub_214CD0084();
  v91 = v109;
  v108[8] = v88;
  v108[9] = MEMORY[0x277CDFC60];
  v93 = swift_getWitnessTable();
  sub_214CCED64();
  sub_214AA2AE4(v92, v100, TupleTypeMetadata2, v102, v103);
  v108[6] = v93;
  v108[7] = v94;
  v97 = swift_getWitnessTable();
  sub_214B061F0(v98, v99, v107);
  sub_214AA2AE4(v98, v100, TupleTypeMetadata2, v102, v103);
  sub_214AA4A60(v107, v98, v100, TupleTypeMetadata2, v102, v103, v104, v105, v106, v99);
  sub_214B061F0(v98, v99, v96);
  sub_214AA2AE4(v98, v100, TupleTypeMetadata2, v102, v103);
  return sub_214AA2AE4(v107, v100, TupleTypeMetadata2, v102, v103);
}

uint64_t sub_214C6A7B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v163 = a4;
  __src = a1;
  v126 = a2;
  v127 = a3;
  v148 = 0;
  v33 = &unk_214CF5498;
  v36 = MEMORY[0x277CE1148];
  v74 = MEMORY[0x277CDFAD8];
  v153 = MEMORY[0x277CE0CA8];
  v41 = MEMORY[0x277D83980];
  v61 = MEMORY[0x277CE14C0];
  v48 = MEMORY[0x277CE1290];
  v66 = MEMORY[0x277CE1198];
  v49 = MEMORY[0x277D84F50];
  v53 = MEMORY[0x277CE0E40];
  v55 = MEMORY[0x277CDDB40];
  v71 = MEMORY[0x277CDE610];
  v78 = sub_214C7AA24;
  v102 = sub_214C7AAB8;
  v130 = sub_214C7AAD4;
  v147 = nullsub_1;
  v186 = 0;
  v157 = &v176;
  v176 = 0;
  v177 = 0;
  v234 = a2;
  v31 = v232;
  __n = 169;
  memcpy(v232, a1, 0xA9uLL);
  memcpy(v233, v232, sizeof(v233));
  v155 = 0;
  v134 = sub_214CCE204();
  v105 = *(v134 - 8);
  v106 = v134 - 8;
  v32 = (*(v105 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v134);
  v133 = &v30 - v32;
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37C98);
  v60 = 255;
  v58 = sub_214CCF0C4();
  v44 = sub_214CCF8D4();
  v43 = *(v127 + 16);
  v42 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v228 = v34;
  v229 = MEMORY[0x277D837D0];
  v230 = WitnessTable;
  v231 = MEMORY[0x277D837E0];
  v35 = sub_214CCF034();
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v38 = sub_214CCE2F4();
  v37 = swift_getWitnessTable();
  v73 = sub_214C200FC();
  v226 = v37;
  v227 = v73;
  v5 = swift_getWitnessTable();
  v224 = v38;
  v225 = v5;
  swift_getOpaqueTypeMetadata2();
  v57 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v39 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  v40 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  v47 = sub_214CCF1F4();
  v46 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v219 = v44;
  v220 = AssociatedTypeWitness;
  v221 = v47;
  v222 = v46;
  v223 = AssociatedConformanceWitness;
  v116 = sub_214CCF0F4();
  v218 = swift_getWitnessTable();
  swift_getWitnessTable();
  v118 = sub_214CCF074();
  v119 = sub_214CCE2F4();
  v120 = sub_214CCE2F4();
  v50 = sub_214CCFF34();
  v216 = swift_getWitnessTable();
  v217 = MEMORY[0x277CDF918];
  v51 = swift_getWitnessTable();
  v215 = *(v127 + 8);
  v52 = swift_getWitnessTable();
  v211 = v119;
  v212 = v50;
  v213 = v51;
  v214 = v52;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v207 = v119;
  v208 = v50;
  v209 = v51;
  v210 = v52;
  v154 = 1;
  swift_getOpaqueTypeConformance2();
  v56 = sub_214CCE394();
  swift_getWitnessTable();
  v121 = sub_214CCE0A4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_214CCF1F4();
  swift_getWitnessTable();
  v8 = sub_214CCE1B4();
  v9 = sub_214CCE2F4();
  v10 = swift_getTupleTypeMetadata2();
  v11 = sub_214CCF1F4();
  v123 = sub_214CCFF34();
  v107 = swift_getTupleTypeMetadata2();
  v108 = sub_214CCF1F4();
  v80 = swift_getWitnessTable();
  v110 = sub_214CCF074();
  v62 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v110);
  v87 = &v30 - v62;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CC0);
  v111 = sub_214CCE2F4();
  v63 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v111);
  v90 = &v30 - v63;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA34C28);
  v112 = sub_214CCE2F4();
  v64 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155);
  v95 = &v30 - v64;
  v113 = sub_214CCE2F4();
  v65 = (*(*(v113 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v113);
  v101 = &v30 - v65;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CD0);
  v114 = sub_214CCE2F4();
  v67 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66);
  v115 = &v30 - v67;
  v82 = swift_getWitnessTable();
  v12 = sub_214B070E8();
  v205 = v82;
  v206 = v12;
  v89 = swift_getWitnessTable();
  v13 = sub_214B07170();
  v203 = v89;
  v204 = v13;
  v92 = swift_getWitnessTable();
  v201 = v92;
  v202 = MEMORY[0x277CDF760];
  v99 = swift_getWitnessTable();
  v14 = sub_214C69780();
  v199 = v99;
  v200 = v14;
  v103 = swift_getWitnessTable();
  v197 = v114;
  v198 = v103;
  v140 = swift_getOpaqueTypeMetadata2();
  v137 = *(v140 - 8);
  v138 = v140 - 8;
  v68 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v140);
  v139 = &v30 - v68;
  v195 = v114;
  v196 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v193 = v140;
  v194 = OpaqueTypeConformance2;
  v150 = swift_getOpaqueTypeMetadata2();
  v144 = *(v150 - 8);
  v145 = v150 - 8;
  v70 = (*(v144 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v155);
  v146 = &v30 - v70;
  v151 = sub_214CCE2F4();
  v72 = (*(*(v151 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v151);
  v149 = &v30 - v72;
  v191 = v140;
  v192 = v16;
  v142 = swift_getOpaqueTypeConformance2();
  v189 = v142;
  v190 = v73;
  v152 = swift_getWitnessTable();
  v187 = v151;
  v188 = v152;
  v166 = swift_getOpaqueTypeMetadata2();
  v158 = *(v166 - 8);
  v159 = v166 - 8;
  v76 = *(v158 + 64);
  v75 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v166);
  v164 = &v30 - v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20);
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](__src);
  v165 = &v30 - v77;
  v186 = &v30 - v77;
  sub_214C68154(v17, &v185);
  v79 = v169;
  v169[2] = v126;
  v169[3] = v127;
  v169[4] = __src;
  sub_214B6C2A4();
  v156 = 0;
  sub_214CCF064();
  sub_214C68334(__src);
  memcpy(&v184, __src, __n);
  v96 = type metadata accessor for MUIOpenMailboxQuicklyView();
  v18 = sub_214C6F93C();
  v84 = &v183;
  v183 = v18;
  v81 = MEMORY[0x277CE0F78];
  v83 = MEMORY[0x277CE0F60];
  sub_214B07A68();
  sub_214CCEAC4();
  sub_214A75F80();
  v86 = MEMORY[0x277CDF7A0];
  v85 = MEMORY[0x277CDF798];
  v117 = sub_214CCE224();
  sub_214C7AA40();
  v19 = sub_214CCE224();
  v109 = sub_214CCE224();
  sub_214AA4B98(v87, v116, v117, v118, v119, v120, v121, TupleTypeMetadata2, v7, v19, v8, v9, v10, v11, v123, v107, v108, v109);
  v88 = *(__src + 4);
  sub_214C666A0();
  sub_214CCEB84();
  sub_214AA4D94(v90, v116, v117, v118, v119, v120, v121, TupleTypeMetadata2, v7, v19, v8, v9, v10, v11, v123, v107, v108, v109);
  v93 = *(__src + 4);
  v94 = sub_214C6F9A8(v112);
  v91 = sub_214C6FA68();
  sub_214C6FA68();
  sub_214CCED34();

  sub_214AA4FAC(v95, v116, v117, v118, v119, v120, v121, TupleTypeMetadata2, v7, v19, v8, v9, v10, v11, v123, v107, v108, v109, v110, v111, v112);
  v100 = sub_214CCF1C4();
  memcpy(&v182, __src, __n);
  v97 = sub_214C67424();
  v98 = sub_214CCF854();

  v181[22] = v98;
  sub_214CCEDE4();

  sub_214AA5230(v101, v116, v117, v118, v119, v120, v121, TupleTypeMetadata2, v7, v19, v8, v9, v10, v11, v123, v107, v108, v109, v110, v111, v112);
  sub_214CCE1E4();
  sub_214C68154(__src, v181);
  v124 = 201;
  v125 = 7;
  v20 = swift_allocObject();
  v21 = v127;
  v22 = __src;
  v23 = __n;
  v104 = v20;
  v20[2] = v126;
  v20[3] = v21;
  memcpy(v20 + 4, v22, v23);
  sub_214CCEB04();

  v136 = *(v105 + 8);
  v135 = v105 + 8;
  v136(v133, v134);
  sub_214AA5580(v115, v116, v117, v118, v119, v120, v121, TupleTypeMetadata2, v7, v19, v8, v9, v10, v11, v123, v107, v108, v109, v110, v111, v112);
  sub_214CCE1F4();
  sub_214C68154(__src, &v180);
  v24 = swift_allocObject();
  v25 = v127;
  v26 = __src;
  v27 = __n;
  v132 = v24;
  v24[2] = v126;
  v24[3] = v25;
  memcpy(v24 + 4, v26, v27);
  sub_214CCEB04();

  v136(v133, v134);
  (*(v137 + 8))(v139, v140);
  sub_214CCF1D4();
  v143 = sub_214C1FFD4();
  v141 = MEMORY[0x277CE14A8];
  sub_214B28CB0();
  sub_214CCEB74();
  (*(v144 + 8))(v146, v150);
  sub_214B61150();
  sub_214CCEB94();
  sub_214AA4178(v149, v150);
  v178 = v151;
  v179 = v152;
  v161 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v164, v166, v165);
  v168 = *(v158 + 8);
  v167 = v158 + 8;
  v168(v164, v166);
  v174 = sub_214CCF054();
  v175 = v28 & 1;
  v160 = MEMORY[0x277CE1180];
  v162 = MEMORY[0x277CE1170];
  sub_214B061F0(&v174, MEMORY[0x277CE1180], v157);
  (*(v158 + 16))(v164, v165, v166);
  v173[0] = v164;
  v171 = v176;
  v172 = v177;
  v173[1] = &v171;
  v170[0] = v166;
  v170[1] = v160;
  v169[5] = v161;
  v169[6] = v162;
  sub_214C663A4(v173, 2uLL, v170, v163);
  v168(v164, v166);
  return (v168)(v165, v166);
}

uint64_t sub_214C6BD80@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = &v247;
  v171 = &v216;
  v179 = &v215;
  v199 = v212;
  v181 = a3;
  v180 = a2;
  v198 = a1;
  v100 = a4;
  v172 = 0;
  v221 = 0;
  v220 = 0;
  v219 = 0;
  v218 = 0;
  v217 = 0;
  v258 = a2;
  v4 = *a1;
  v5 = a1[1];
  v249 = a1[2];
  v248 = v5;
  v247 = v4;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v253 = a1[6];
  v252 = v8;
  v251 = v7;
  v250 = v6;
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  *(v256 + 9) = *(a1 + 153);
  v256[0] = v11;
  v255 = v10;
  v254 = v9;
  v256[4] = v249;
  v256[3] = v248;
  v256[2] = v247;
  v256[8] = v253;
  v256[7] = v252;
  v256[6] = v251;
  v256[5] = v250;
  *(v257 + 9) = *(v256 + 9);
  v257[0] = v11;
  v256[10] = v10;
  v256[9] = v9;
  v111 = *(a3 + 16);
  v110 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v139 = 255;
  v101 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v243 = v101;
  v186 = MEMORY[0x277D837D0];
  v244 = MEMORY[0x277D837D0];
  v245 = WitnessTable;
  v246 = MEMORY[0x277D837E0];
  v102 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v104 = sub_214CCE2F4();
  v103 = swift_getWitnessTable();
  v13 = sub_214C200FC();
  v241 = v103;
  v242 = v13;
  v120 = MEMORY[0x277CDFAD8];
  v14 = swift_getWitnessTable();
  v239 = v104;
  v240 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v201 = sub_214CCF8D4();
  v137 = MEMORY[0x277CDF928];
  v106 = sub_214CCE2F4();
  v107 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  v108 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v114 = sub_214CCF1F4();
  v113 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v234 = v201;
  v235 = AssociatedTypeWitness;
  v236 = v114;
  v237 = v113;
  v238 = AssociatedConformanceWitness;
  v116 = sub_214CCF0F4();
  v115 = v116;
  v133 = MEMORY[0x277CE14C0];
  v233 = swift_getWitnessTable();
  swift_getWitnessTable();
  v119 = sub_214CCF074();
  v117 = v119;
  v122 = sub_214CCE2F4();
  v118 = v122;
  v123 = sub_214CCFF34();
  v231 = swift_getWitnessTable();
  v232 = MEMORY[0x277CDF918];
  v124 = swift_getWitnessTable();
  v230 = *(v181 + 8);
  v125 = swift_getWitnessTable();
  v226 = v122;
  v227 = v123;
  v228 = v124;
  v229 = v125;
  v188 = MEMORY[0x277CE0E40];
  v127 = swift_getOpaqueTypeMetadata2();
  v143 = sub_214CCF0C4();
  v121 = v143;
  v129 = sub_214CCE2F4();
  v126 = v129;
  v222 = v122;
  v223 = v123;
  v224 = v124;
  v225 = v125;
  v189 = 1;
  swift_getOpaqueTypeConformance2();
  v128 = sub_214CCE394();
  swift_getWitnessTable();
  v130 = sub_214CCE0A4();
  v131 = swift_getTupleTypeMetadata2();
  v132 = v131;
  v135 = sub_214CCF1F4();
  v134 = v135;
  v136 = swift_getWitnessTable();
  v149 = sub_214CCE1B4();
  v138 = v149;
  v152 = sub_214CCE2F4();
  v140 = v152;
  v141 = swift_getTupleTypeMetadata2();
  v142 = v141;
  v144 = sub_214CCF1F4();
  v145 = v144;
  v146 = *(v144 - 8);
  v147 = v146;
  v148 = (*(v146 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v150 = v76 - v148;
  v221 = v76 - v148;
  v151 = (*(*(v149 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v153 = v76 - v151;
  v154 = *(*(v152 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v156 = (v154 + 15) & 0xFFFFFFFFFFFFFFF0;
  v155 = v76 - v156;
  MEMORY[0x28223BE20](v18);
  v157 = v76 - v156;
  v220 = v76 - v156;
  v158 = *(v19 - 8);
  v159 = v158;
  v160 = *(v158 + 64);
  MEMORY[0x28223BE20](v20);
  v162 = (v160 + 15) & 0xFFFFFFFFFFFFFFF0;
  v161 = v76 - v162;
  MEMORY[0x28223BE20](v21);
  v163 = v76 - v162;
  v219 = v76 - v162;
  v164 = sub_214CCFF34();
  v166 = *(*(v164 - 8) + 64);
  MEMORY[0x28223BE20](v164 - 8);
  v168 = (v166 + 15) & 0xFFFFFFFFFFFFFFF0;
  v165 = v76 - v168;
  MEMORY[0x28223BE20](v76 - v168);
  v167 = v76 - v168;
  MEMORY[0x28223BE20](v22);
  v169 = v76 - v168;
  v218 = v76 - v168;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37F28);
  v170 = (*(*(v185 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v185 - 8);
  v184 = v76 - v170;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37C98);
  v173 = v195;
  v174 = *(v195 - 8);
  v193 = v174;
  v175 = v174;
  v176 = *(v174 + 64);
  MEMORY[0x28223BE20](v172);
  v194 = v76 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = v194;
  MEMORY[0x28223BE20](v23);
  v24 = v179;
  v25 = v198;
  v191 = v76 - v26;
  v178 = v76 - v26;
  v217 = v76 - v26;
  v27 = *v198;
  v28 = v198[1];
  *(v179 + 13) = v198[2];
  *(v24 + 12) = v28;
  *(v24 + 11) = v27;
  v29 = v25[3];
  v30 = v25[4];
  v31 = v25[5];
  *(v24 + 17) = v25[6];
  *(v24 + 16) = v31;
  *(v24 + 15) = v30;
  *(v24 + 14) = v29;
  v32 = v25[7];
  v33 = v25[8];
  v34 = v25[9];
  *(v35 + 153) = *(v25 + 153);
  v35[9] = v34;
  v35[8] = v33;
  v35[7] = v32;
  v200 = type metadata accessor for MUIOpenMailboxQuicklyView();
  sub_214C6D548(v200, v184);
  v36 = v179;
  v37 = v198;
  v38 = v199;
  v39 = *v198;
  v40 = v198[1];
  *(v199 + 27) = v198[2];
  v38[26] = v40;
  v38[25] = v39;
  v41 = v37[3];
  v42 = v37[4];
  v43 = v37[5];
  v38[31] = v37[6];
  v38[30] = v43;
  v38[29] = v42;
  v38[28] = v41;
  v44 = v37[7];
  v45 = v37[8];
  v46 = v37[9];
  *(v36 + 153) = *(v37 + 153);
  *(v36 + 9) = v46;
  *(v36 + 8) = v45;
  *(v36 + 7) = v44;
  v214[0] = sub_214C66C98();
  v214[1] = v47;
  sub_214C68154(v198, &v213);
  v48 = swift_allocObject();
  v49 = v181;
  v50 = v198;
  v182 = v48;
  *(v48 + 16) = v180;
  *(v48 + 24) = v49;
  v51 = *v50;
  v52 = v50[1];
  *(v48 + 64) = v50[2];
  *(v48 + 48) = v52;
  *(v48 + 32) = v51;
  v53 = v50[3];
  v54 = v50[4];
  v55 = v50[5];
  *(v48 + 128) = v50[6];
  *(v48 + 112) = v55;
  *(v48 + 96) = v54;
  *(v48 + 80) = v53;
  v56 = v50[7];
  v57 = v50[8];
  v58 = v50[9];
  *(v48 + 185) = *(v50 + 153);
  *(v48 + 176) = v58;
  *(v48 + 160) = v57;
  *(v48 + 144) = v56;
  v190 = sub_214C77C8C();
  v187 = MEMORY[0x277D837F8];
  sub_214B28CB0();
  v183 = v214;
  sub_214CCEDC4();

  sub_214A61B48();
  sub_214AA2F50(v184);
  v212[22] = v185;
  v212[23] = v186;
  v212[24] = v190;
  v212[25] = v187;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v194, v195, v191);
  v196 = *(v193 + 8);
  v197 = (v193 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v196(v194, v195);
  v59 = v198;
  v60 = v199;
  v61 = *v198;
  v62 = v198[1];
  *(v199 + 2) = v198[2];
  v60[1] = v62;
  *v60 = v61;
  v63 = v59[3];
  v64 = v59[4];
  v65 = v59[5];
  v60[6] = v59[6];
  v60[5] = v65;
  v60[4] = v64;
  v60[3] = v63;
  v66 = v59[7];
  v67 = v59[8];
  v68 = v59[9];
  *(v60 + 153) = *(v59 + 153);
  v60[9] = v68;
  v60[8] = v67;
  v60[7] = v66;
  v202 = sub_214C67424();
  v211[2] = v202;
  swift_getWitnessTable();
  v203 = sub_214CCFA94();

  if (v203)
  {
    (*(v147 + 56))(v165, 1, 1, v145);
    swift_getWitnessTable();
    sub_214C66600(v165, v145, v167);
    v79 = 0;
    v81 = sub_214CCE224();
    sub_214C7AA40();
    v80 = sub_214CCE224();
    sub_214AA599C(v165, v115, v81, v117, v118, v126, v130, v132, v134, v80, v138, v140, v142, v145);
    v82 = &v73;
    sub_214AA5B04(v167, v169, v115, v81, v117, v118, v126, v130, v132, v134, v80, v138, v140, v142, v145, v164);
  }

  else
  {
    sub_214CCF0B4();
    v91 = sub_214B0C24C();
    sub_214B061F0(v161, v121, v163);
    v98 = *(v159 + 8);
    v97 = v159 + 8;
    v98(v161, v121);
    v83 = sub_214CCE884();
    sub_214C68154(v198, v209);
    v84 = v76;
    MEMORY[0x28223BE20](v83);
    sub_214CCE1A4();
    sub_214C68334(v198);
    v86 = sub_214CD03C4();
    v85 = v69;
    *v69 = sub_214CCE8D4();
    v85[1] = sub_214CCE8B4();
    v70 = sub_214CCE8C4();
    v71 = v86;
    v85[2] = v70;
    sub_214A63280();
    v87 = v71;
    sub_214C151AC();
    sub_214CD0084();
    v88 = v208;
    v90 = swift_getWitnessTable();
    v89 = 0;
    v93 = 1;
    sub_214CCED64();
    v96 = sub_214CCE224();
    sub_214C7AA40();
    v95 = sub_214CCE224();
    sub_214AA6060(v153, v115, v96, v117, v118, v126, v130, v132, v134, v95);
    v207[2] = v90;
    v207[3] = MEMORY[0x277CDF918];
    v92 = swift_getWitnessTable();
    sub_214B061F0(v155, v140, v157);
    v75 = v140;
    v74 = v138;
    sub_214AA6060(v155, v115, v96, v117, v118, v126, v130, v132, v134, v95);
    (*(v159 + 16))(v161, v163, v121);
    v207[0] = v161;
    sub_214AA6124(v157, v155, v115, v96, v117, v118, v126, v130, v132, v134, v95, v138, v140);
    v207[1] = v155;
    v206[0] = v121;
    v206[1] = v140;
    v204 = v91;
    v205 = v92;
    sub_214C663A4(v207, 2uLL, v206, v150);
    v75 = v140;
    sub_214AA6060(v155, v115, v96, v117, v118, v126, v130, v132, v134, v95);
    v98(v161, v121);
    v74 = v145;
    sub_214AA62B4(v150, v165, v115, v96, v117, v118, v126, v130, v132, v134, v95, v138, v140, v142);
    (*(v147 + 56))(v165, 0, v93, v145);
    swift_getWitnessTable();
    sub_214C66600(v165, v145, v167);
    sub_214AA599C(v165, v115, v96, v117, v118, v126, v130, v132, v134, v95, v138, v140, v142, v145);
    v94 = &v73;
    sub_214AA5B04(v167, v169, v115, v96, v117, v118, v126, v130, v132, v134, v95, v138, v140, v142, v145, v164);
    v75 = v145;
    sub_214AA64C4(v150, v115, v96, v117, v118, v126, v130, v132, v134, v95, v138, v140, v142);
    v75 = v140;
    v74 = v138;
    sub_214AA6060(v157, v115, v96, v117, v118, v126, v130, v132, v134, v95);
    v98(v163, v121);
  }

  (*(v175 + 16))(v177, v178, v173);
  v211[0] = v177;
  v76[1] = 0;
  v78 = sub_214CCE224();
  sub_214C7AA40();
  v77 = sub_214CCE224();
  sub_214AA5D94(v169, v167, v115, v78, v117, v118, v126, v130, v132, v134, v77, v138, v140, v142, v145, v164);
  v211[1] = v167;
  v210[0] = v173;
  v210[1] = v164;
  v209[23] = OpaqueTypeConformance2;
  v209[22] = swift_getWitnessTable();
  v209[24] = swift_getWitnessTable();
  sub_214C663A4(v211, 2uLL, v210, v100);
  v74 = v164;
  sub_214AA599C(v167, v115, v78, v117, v118, v126, v130, v132, v134, v77, v138, v140, v142, v145);
  v196(v177, v173);
  v74 = v164;
  sub_214AA599C(v169, v115, v78, v117, v118, v126, v130, v132, v134, v77, v138, v140, v142, v145);
  return (v196)(v178, v173);
}

uint64_t sub_214C6D548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v6 = a1;
  v7 = sub_214C71B38;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D38);
  v4[0] = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v17 = v4 - v4[0];
  v11 = v20;
  v4[2] = 169;
  memcpy(v20, v2, 0xA9uLL);
  memcpy(__dst, v4[1], sizeof(__dst));
  v5 = *(v6 + 16);
  v19[22] = v5;
  v10 = sub_214CCE454();
  sub_214C68154(v11, v19);
  v8 = v18;
  v18[2] = v5;
  v18[3] = *(v6 + 24);
  v18[4] = v11;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D40);
  sub_214C71B54();
  v13 = 0;
  v14 = 1;
  sub_214CCF024();
  sub_214C68334(v11);
  v16 = sub_214C71BDC();
  sub_214B09708();
  sub_214CCED64();
  return sub_214AA2F50(v17);
}

uint64_t sub_214C6D6F8(const void *a1, uint64_t a2)
{
  v15 = a2;
  v14 = a1;
  sub_214C68154(a1, v13);
  memcpy(__dst, a1, 0xA9uLL);
  type metadata accessor for MUIOpenMailboxQuicklySearchController();
  memcpy(v11, a1, sizeof(v11));
  type metadata accessor for MUIOpenMailboxQuicklyView();
  v5 = sub_214C668C4();
  memcpy(v10, a1, sizeof(v10));
  v4 = sub_214C66C98();
  static MUIOpenMailboxQuicklySearchController.filterMailboxes(_:with:)(v5, v4, v2);

  sub_214C674D0();
  sub_214C68334(__dst);
  sub_214C68154(a1, v9);
  memcpy(v8, a1, 0xA9uLL);
  memcpy(v7, a1, sizeof(v7));
  sub_214C67424();
  sub_214CCF8D4();
  swift_getWitnessTable();
  sub_214CCFA74();

  sub_214C67198();
  return sub_214C68334(v8);
}

uint64_t sub_214C6D8C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  __src = a1;
  v54 = a2;
  v55 = a3;
  v19 = 0;
  v10[1] = &unk_214CF5498;
  v13 = MEMORY[0x277CE1148];
  v53 = MEMORY[0x277CDFAD8];
  v16 = MEMORY[0x277CE0CA8];
  v20 = MEMORY[0x277D83980];
  v26 = MEMORY[0x277CE14C0];
  v27 = MEMORY[0x277CE1290];
  v29 = MEMORY[0x277CE1198];
  v30 = MEMORY[0x277D84F50];
  v33 = MEMORY[0x277CE0E40];
  v36 = MEMORY[0x277CDDB40];
  v56 = sub_214C7AB28;
  v61 = MEMORY[0x277CDD6E0];
  v86 = 0;
  v85 = 0;
  v114 = a2;
  v10[0] = v112;
  __n = 169;
  memcpy(v112, a1, 0xA9uLL);
  memcpy(__dst, v112, sizeof(__dst));
  v35 = 255;
  v23 = sub_214CCF8D4();
  v22 = *(v55 + 16);
  v21 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v108 = v11;
  v109 = MEMORY[0x277D837D0];
  v110 = WitnessTable;
  v111 = MEMORY[0x277D837E0];
  v12 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v15 = sub_214CCE2F4();
  v14 = swift_getWitnessTable();
  v106 = v14;
  v107 = sub_214C200FC();
  v104 = v15;
  v105 = swift_getWitnessTable();
  v50 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v17 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  v18 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  v25 = sub_214CCF1F4();
  v24 = swift_getWitnessTable();
  v99 = v23;
  v100 = AssociatedTypeWitness;
  v101 = v25;
  v102 = v24;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v48 = sub_214CCF0F4();
  v98 = swift_getWitnessTable();
  swift_getWitnessTable();
  v49 = sub_214CCF074();
  v41 = sub_214CCE2F4();
  v31 = sub_214CCFF34();
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x277CDF918];
  v52 = swift_getWitnessTable();
  v95 = *(v55 + 8);
  v32 = swift_getWitnessTable();
  v91 = v41;
  v92 = v31;
  v93 = v52;
  v94 = v32;
  v34 = swift_getOpaqueTypeMetadata2();
  v87 = v41;
  v88 = v31;
  v89 = v52;
  v90 = v32;
  swift_getOpaqueTypeConformance2();
  v58 = sub_214CCE394();
  v59 = swift_getWitnessTable();
  v70 = sub_214CCE0A4();
  v62 = *(v70 - 8);
  v63 = v70 - 8;
  v40 = *(v62 + 64);
  v38 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v68 = v10 - v38;
  swift_checkMetadataState();
  swift_checkMetadataState();
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v73 = v10 - v42;
  v86 = v10 - v42;
  v78 = swift_checkMetadataState();
  v43 = (*(*(v78 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v51 = v10 - v43;
  v79 = sub_214CCE2F4();
  v45 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79);
  v69 = v10 - v45;
  v46 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10 - v45);
  v74 = v10 - v46;
  v85 = v10 - v46;
  memcpy(&v84, v6, v7);
  v8 = type metadata accessor for MUIOpenMailboxQuicklyView();
  sub_214C6E278(v8, v51);
  v47 = sub_214CCF1B4();
  sub_214CCEDF4();

  v75 = swift_checkMetadataState();
  v76 = sub_214CCE224();
  v77 = swift_checkMetadataState();
  sub_214AA30F8(v51, v75, v76);
  v83[22] = v52;
  v83[23] = MEMORY[0x277CE03F0];
  v64 = swift_getWitnessTable();
  sub_214B061F0(v69, v79, v74);
  sub_214AA65F0(v69, v75, v76);
  sub_214C68154(__src, v83);
  v57 = v80;
  v80[2] = v54;
  v80[3] = v55;
  v80[4] = __src;
  sub_214B1916C();
  sub_214C6664C();
  sub_214C68334(__src);
  v65 = swift_getWitnessTable();
  sub_214B061F0(v68, v70, v73);
  v72 = *(v62 + 8);
  v71 = v62 + 8;
  v72(v68, v70);
  sub_214AA6660(v74, v69, v75, v76, v77, v78, v79);
  v67 = v82;
  v82[0] = v69;
  (*(v62 + 16))(v68, v73, v70);
  v82[1] = v68;
  v81[0] = v79;
  v81[1] = v70;
  v80[6] = v64;
  v80[7] = v65;
  sub_214C663A4(v67, 2uLL, v81, v66);
  v72(v68, v70);
  sub_214AA65F0(v69, v75, v76);
  v72(v73, v70);
  return sub_214AA65F0(v74, v75, v76);
}

uint64_t sub_214C6E278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v6[0] = a1;
  v17 = 0;
  v6[1] = &unk_214CF5498;
  v9 = MEMORY[0x277CE1148];
  v11 = MEMORY[0x277CDFAD8];
  v13 = MEMORY[0x277CE0CA8];
  v18 = MEMORY[0x277D83980];
  v26 = MEMORY[0x277CE14C0];
  v27 = MEMORY[0x277CE1290];
  v33 = sub_214C72984;
  v37 = MEMORY[0x277CE1198];
  v31 = *(a1 + 16);
  v45[36] = v31;
  v24 = 255;
  v21 = sub_214CCF8D4();
  v32 = *(v6[0] + 24);
  v20 = *(v32 + 16);
  v19 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v45[32] = v7;
  v45[33] = MEMORY[0x277D837D0];
  v45[34] = WitnessTable;
  v45[35] = MEMORY[0x277D837E0];
  v8 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v12 = sub_214CCE2F4();
  v10 = swift_getWitnessTable();
  v45[30] = v10;
  v45[31] = sub_214C200FC();
  v45[28] = v12;
  v45[29] = swift_getWitnessTable();
  v40 = 0;
  swift_getOpaqueTypeMetadata2();
  v14 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v15 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  v16 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  v25 = sub_214CCF1F4();
  v23 = swift_getWitnessTable();
  v45[23] = v21;
  v45[24] = AssociatedTypeWitness;
  v45[25] = v25;
  v45[26] = v23;
  v45[27] = swift_getAssociatedConformanceWitness();
  v42 = sub_214CCF0F4();
  v45[22] = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  v41 = sub_214CCF074();
  v28 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v43 = v6 - v28;
  v36 = v46;
  v30 = 169;
  memcpy(v46, v3, 0xA9uLL);
  memcpy(__dst, v29, sizeof(__dst));
  sub_214C68154(v46, v45);
  v34 = v44;
  v44[2] = v31;
  v44[3] = v32;
  v44[4] = v36;
  sub_214B6C2A4();
  sub_214CCF064();
  sub_214C68334(v36);
  v39 = sub_214CCE8E4();
  swift_getWitnessTable();
  sub_214CCED64();
  v4 = sub_214CCE224();
  return sub_214AA30F8(v43, v42, v4);
}

uint64_t *sub_214C6E73C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = 0;
  v33 = 0;
  v56 = a2;
  v55 = a1;
  v13 = sub_214CCF8D4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v51 = v10;
  v52 = MEMORY[0x277D837D0];
  v53 = WitnessTable;
  v54 = MEMORY[0x277D837E0];
  sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v12 = sub_214CCE2F4();
  v11 = swift_getWitnessTable();
  v5 = sub_214C200FC();
  v49 = v11;
  v50 = v5;
  v6 = swift_getWitnessTable();
  v47 = v12;
  v48 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_214CCE2F4();
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  v15 = sub_214CCF1F4();
  v14 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v42 = v13;
  v43 = AssociatedTypeWitness;
  v44 = v15;
  v45 = v14;
  v46 = AssociatedConformanceWitness;
  sub_214CCF0F4();
  v41 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_214CCF074();
  v20 = sub_214CCE2F4();
  v21 = sub_214CCFF34();
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CDF918];
  v22 = swift_getWitnessTable();
  v38 = *(a3 + 8);
  v23 = swift_getWitnessTable();
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  swift_getOpaqueTypeMetadata2();
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_214C68154(a1, v31);
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  memcpy(v24 + 4, a1, 0xA9uLL);
  v30[2] = v20;
  v30[3] = v21;
  v30[4] = v22;
  v30[5] = v23;
  swift_getOpaqueTypeConformance2();
  v30[0] = sub_214CCE384();
  v30[1] = v8;
  v28 = sub_214CCE394();
  swift_getWitnessTable();
  sub_214B061F0(v30, v28, &v32);
  sub_214AA8B50();
  v25 = v32;
  v26 = v33;

  v29[0] = v25;
  v29[1] = v26;
  sub_214B061F0(v29, v28, a4);
  sub_214AA8B50();
  result = &v32;
  sub_214AA8B50();
  return result;
}

uint64_t sub_214C6ED20@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a5;
  v48 = a1;
  v53 = a2;
  v51 = a3;
  v52 = a4;
  v29 = 0;
  v20[1] = &unk_214CF5498;
  v23 = MEMORY[0x277CE1148];
  v43 = MEMORY[0x277CDFAD8];
  v26 = MEMORY[0x277CE0CA8];
  v30 = MEMORY[0x277D83980];
  v37 = MEMORY[0x277CE14C0];
  v38 = MEMORY[0x277CE1290];
  v42 = MEMORY[0x277CE1198];
  v44 = MEMORY[0x277D84F50];
  v72 = MEMORY[0x277CE0E40];
  v61 = sub_214C7AB60;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v114 = a3;
  v64 = 0;
  v59 = sub_214CCE324();
  v55 = *(v59 - 8);
  v56 = v59 - 8;
  v49 = v55;
  v50 = *(v55 + 64);
  v20[0] = (v50 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v58 = v20 - v20[0];
  v40 = 255;
  v33 = sub_214CCF8D4();
  v32 = *(v52 + 16);
  v31 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v110 = v21;
  v111 = MEMORY[0x277D837D0];
  v112 = WitnessTable;
  v113 = MEMORY[0x277D837E0];
  v22 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v25 = sub_214CCE2F4();
  v24 = swift_getWitnessTable();
  v6 = sub_214C200FC();
  v108 = v24;
  v109 = v6;
  v7 = swift_getWitnessTable();
  v106 = v25;
  v107 = v7;
  swift_getOpaqueTypeMetadata2();
  v39 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v27 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  v28 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  v36 = sub_214CCF1F4();
  v35 = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v101 = v33;
  v102 = AssociatedTypeWitness;
  v103 = v36;
  v104 = v35;
  v105 = AssociatedConformanceWitness;
  v66 = sub_214CCF0F4();
  v100 = swift_getWitnessTable();
  swift_getWitnessTable();
  v65 = sub_214CCF074();
  v68 = sub_214CCE2F4();
  v41 = (*(*(v68 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v67 = v20 - v41;
  v60 = sub_214CCFF34();
  v98 = swift_getWitnessTable();
  v99 = MEMORY[0x277CDF918];
  v70 = swift_getWitnessTable();
  v97 = *(v52 + 8);
  v71 = swift_getWitnessTable();
  v93 = v68;
  v94 = v60;
  v95 = v70;
  v96 = v71;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  v74 = OpaqueTypeMetadata2 - 8;
  v45 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v77 = v20 - v45;
  v46 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v78 = v20 - v46;
  v92 = v20 - v46;
  v91 = v11;
  v90 = v12;
  v54 = 169;
  memcpy(v89, v12, sizeof(v89));
  v47 = type metadata accessor for MUIOpenMailboxQuicklyView();
  sub_214C6E278(v47, v67);
  memcpy(&v88, v53, v54);
  v13 = sub_214C670EC();
  v63 = &v87;
  v87 = v13;
  sub_214C68154(v53, &v86);
  (*(v55 + 16))(v58, v48, v59);
  v57 = (*(v49 + 80) + 201) & ~*(v49 + 80);
  v14 = swift_allocObject();
  v15 = v52;
  v16 = v53;
  v17 = v54;
  v62 = v14;
  v14[2] = v51;
  v14[3] = v15;
  memcpy(v14 + 4, v16, v17);
  (*(v55 + 32))(v62 + v57, v58, v59);
  v69 = swift_checkMetadataState();
  sub_214B28CB0();
  sub_214CCEDC4();

  sub_214A759F4();
  v18 = sub_214CCE224();
  sub_214AA30F8(v67, v66, v18);
  v82 = v68;
  v83 = v69;
  v84 = v70;
  v85 = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v77, OpaqueTypeMetadata2, v78);
  v81 = *(v73 + 8);
  v80 = v73 + 8;
  v81(v77, OpaqueTypeMetadata2);
  (*(v73 + 16))(v77, v78, OpaqueTypeMetadata2);
  sub_214B061F0(v77, OpaqueTypeMetadata2, v75);
  v81(v77, OpaqueTypeMetadata2);
  return (v81)(v78, OpaqueTypeMetadata2);
}

uint64_t sub_214C6F5E0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v23 = a2;
  v24 = a1;
  v27 = 0;
  v25 = 0;
  v40 = a3;
  v39 = a1;
  v38 = a2;
  v4 = *a1;
  v5 = a1[1];
  v30 = a1[2];
  v29 = v5;
  v28 = v4;
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v34 = a1[6];
  v33 = v8;
  v32 = v7;
  v31 = v6;
  v9 = a1[7];
  v10 = a1[8];
  v11 = a1[9];
  *(v37 + 9) = *(a1 + 153);
  v37[0] = v11;
  v36 = v10;
  v35 = v9;
  type metadata accessor for MUIOpenMailboxQuicklyView();
  v26 = sub_214C670EC();
  if (!v26)
  {
    return v25;
  }

  v20 = v26;
  v12 = v25;
  v17[0] = v26;
  v27 = v26;
  swift_unknownObjectRetain();
  v17[1] = v17;
  MEMORY[0x28223BE20](v17);
  v17[2] = v16;
  v16[2] = v13;
  v16[3] = v21;
  v16[4] = v23;
  v16[5] = v14;
  v17[3] = MEMORY[0x277D84F78] + 8;
  v17[4] = sub_214C6F918();
  sub_214CCE234();
  v18 = v12;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v18;
}

double sub_214C6F85C(int a1, id a2)
{
  v3 = [a2 identifier];
  sub_214CCF564();
  sub_214CCF214();
  sub_214CCE314();
  sub_214A61B48();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_214C6F93C()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = [objc_opt_self() secondarySystemBackgroundColor];
  return sub_214CCEE54();
}

uint64_t sub_214C6F9A8(uint64_t a1)
{
  v7 = a1;
  v1 = sub_214CCEE74();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v6 = &v4 - v4;
  (*(v5 + 104))(v2);
  return sub_214CCEEF4();
}

void *sub_214C6FA7C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a2;
  v7 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v3 = type metadata accessor for MUIOpenMailboxQuicklyView();
  return sub_214C6FAF4(v3, a3);
}

void *sub_214C6FAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  memcpy(__dst, v2, 0xA9uLL);
  v19 = v2;
  v18 = *(a1 + 16);
  memcpy(v17, __dst, sizeof(v17));
  v12 = sub_214C74090(a1);
  if (v3)
  {
    v8 = *MEMORY[0x277CDF128];
    v7 = sub_214CCF164();
    return (*(*(v7 - 8) + 104))(a2, v8);
  }

  else
  {
    v16 = v12;
    if (v12 <= 0)
    {
LABEL_8:
      v9 = *MEMORY[0x277CDF120];
      v6 = sub_214CCF164();
      return (*(*(v6 - 8) + 104))(a2, v9);
    }

    sub_214C68154(__dst, v15);
    result = memcpy(v14, __dst, 0xA9uLL);
    if (!__OFSUB__(v12, 1))
    {
      memcpy(v13, __dst, sizeof(v13));
      sub_214C67424();
      sub_214CCF914();
      sub_214C67198();

      sub_214C68334(v14);
      goto LABEL_8;
    }

    __break(1u);
  }

  return result;
}

void *sub_214C6FCEC@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a2;
  v7 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v3 = type metadata accessor for MUIOpenMailboxQuicklyView();
  return sub_214C6FD64(v3, a3);
}

void *sub_214C6FD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = 0;
  memcpy(__dst, v2, 0xA9uLL);
  v22 = v2;
  v21 = *(a1 + 16);
  memcpy(v20, __dst, sizeof(v20));
  v14 = sub_214C74090(a1);
  if (v3)
  {
    v9 = *MEMORY[0x277CDF128];
    v8 = sub_214CCF164();
    return (*(*(v8 - 8) + 104))(a2, v9);
  }

  else
  {
    v19 = v14;
    memcpy(v18, __dst, sizeof(v18));
    sub_214C67424();
    v11 = sub_214CCF854();

    result = v11;
    if (__OFSUB__(v11, 1))
    {
      __break(1u);
    }

    else
    {
      if (v14 >= v11 - 1)
      {
LABEL_12:
        v10 = *MEMORY[0x277CDF120];
        v7 = sub_214CCF164();
        return (*(*(v7 - 8) + 104))(a2, v10);
      }

      sub_214C68154(__dst, v17);
      result = memcpy(v16, __dst, 0xA9uLL);
      if (!__OFADD__(v14, 1))
      {
        memcpy(v15, __dst, sizeof(v15));
        sub_214C67424();
        sub_214CCF914();
        sub_214C67198();

        sub_214C68334(v16);
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_214C6FFD0()
{
  v2 = qword_27CA37D28;
  if (!qword_27CA37D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37C90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C70058(uint64_t a1)
{
  v1 = sub_214CCF184();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_214C700B4(uint64_t a1)
{
  v2 = *(a1 + 56);
  swift_unknownObjectRetain();
  swift_getObjectType();
  [v2 closeOpenMailboxQuicklyViewController];
  return swift_unknownObjectRelease();
}

void sub_214C70128(_OWORD *a1, uint64_t a2)
{
  v28 = a2;
  v27 = a1;
  v2 = *a1;
  v3 = a1[1];
  v25[13] = a1[2];
  v25[12] = v3;
  v25[11] = v2;
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v25[17] = a1[6];
  v25[16] = v6;
  v25[15] = v5;
  v25[14] = v4;
  v7 = a1[7];
  v8 = a1[8];
  v9 = a1[9];
  *&v26[9] = *(a1 + 153);
  *v26 = v9;
  v25[19] = v8;
  v25[18] = v7;
  v21 = type metadata accessor for MUIOpenMailboxQuicklyView();
  sub_214C7046C(v21);
  sub_214C68154(a1, v25);
  v10 = *a1;
  v11 = a1[1];
  v23[2] = a1[2];
  v23[1] = v11;
  v23[0] = v10;
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1[5];
  v23[6] = a1[6];
  v23[5] = v14;
  v23[4] = v13;
  v23[3] = v12;
  v15 = a1[7];
  v16 = a1[8];
  v17 = a1[9];
  *(v24 + 9) = *(a1 + 153);
  v24[0] = v17;
  v23[8] = v16;
  v23[7] = v15;
  sub_214C67C54();
  sub_214C68334(v23);
  v22 = sub_214C677F4();
  if (v22)
  {
    v19 = v22;
    v18 = v22;
    sub_214A671E8(&v22);
    [v19 selectAll_];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A671E8(&v22);
  }
}

double sub_214C7046C(uint64_t a1)
{
  v23 = 0;
  memcpy(__dst, v1, 0xA9uLL);
  v25 = v1;
  v24 = *(a1 + 16);
  v8 = __dst[7];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v7 = [v8 openMailboxQuicklyItems];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D68);
  sub_214CCF7E4();
  swift_unknownObjectRelease();
  v9 = sub_214CD0344();
  if (v9)
  {
    v23 = v9;

    MEMORY[0x277D82BD8](v7);
    sub_214C68154(__dst, v22);
    memcpy(v21, __dst, 0xA9uLL);

    sub_214C66970();
    sub_214C68334(v21);
    sub_214C68154(__dst, v20);
    memcpy(v19, __dst, 0xA9uLL);
    type metadata accessor for MUIOpenMailboxQuicklySearchController();
    memcpy(v18, __dst, sizeof(v18));
    v5 = sub_214C66C98();
    static MUIOpenMailboxQuicklySearchController.filterMailboxes(_:with:)(v9, v5, v2);

    sub_214C674D0();
    sub_214C68334(v19);
    sub_214C68154(__dst, v17);
    memcpy(v16, __dst, 0xA9uLL);
    memcpy(v15, __dst, sizeof(v15));
    v13 = sub_214C74090(a1);
    v14 = v3 & 1;
    if (v3)
    {
      memcpy(v12, __dst, sizeof(v12));
      v11 = sub_214C67424();
      sub_214CCF8D4();
      swift_getWitnessTable();
      sub_214CCFA74();
    }

    else
    {
      memcpy(v10, __dst, sizeof(v10));
      sub_214C670EC();
    }

    sub_214C67198();
    sub_214C68334(v16);
  }

  else
  {

    *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  return result;
}

uint64_t *sub_214C707CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = v196;
  v53 = a4;
  v176 = a1;
  v155 = a2;
  v156 = a3;
  v123 = MEMORY[0x277CDE848];
  v132 = MEMORY[0x277CDEEC0];
  v141 = MEMORY[0x277CDEB78];
  v142 = sub_214C7A584;
  v157 = sub_214C7A620;
  v166 = MEMORY[0x277CDEF38];
  v54 = MEMORY[0x277CDE668];
  v55 = sub_214C7A988;
  v56 = sub_214C721A8;
  v205 = 0;
  v204 = 0;
  v203 = 0;
  v202 = 0;
  v181 = 0;
  v206[3] = a2;
  v136 = 0;
  v57 = sub_214CCE344();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v61 = &v38 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38078);
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v62);
  v66 = &v38 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D20);
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v67);
  v71 = &v38 - v70;
  v72 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v38 - v70);
  v73 = &v38 - v72;
  v74 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v38 - v72);
  v75 = &v38 - v74;
  v205 = &v38 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38080);
  v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136);
  v78 = &v38 - v77;
  v79 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v80 = &v38 - v79;
  v81 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v82 = &v38 - v81;
  v204 = &v38 - v81;
  v161 = sub_214CCE2A4();
  v158 = *(v161 - 8);
  v159 = v161 - 8;
  v83 = (*(v158 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136);
  v160 = &v38 - v83;
  v148 = sub_214CCFC94();
  v145 = *(v148 - 8);
  v146 = v148 - 8;
  v84 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v136);
  v147 = &v38 - v84;
  v120 = sub_214CCE554();
  v115 = *(v120 - 8);
  v116 = v120 - 8;
  v85 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v120);
  v117 = &v38 - v85;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38088);
  v111 = *(v114 - 8);
  v112 = v114 - 8;
  v86 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v113 = &v38 - v86;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38090);
  v87 = (*(*(v119 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v119);
  v118 = &v38 - v87;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D18);
  v127 = *(v130 - 8);
  v128 = v130 - 8;
  v88 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v130);
  v129 = &v38 - v88;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D10);
  v133 = *(v139 - 8);
  v134 = v139 - 8;
  v89 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v139);
  v135 = &v38 - v89;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D08);
  v149 = *(v152 - 8);
  v150 = v152 - 8;
  v90 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v152);
  v151 = &v38 - v90;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38098);
  v91 = (*(*(v164 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v164);
  v163 = &v38 - v91;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D00);
  v170 = *(v173 - 8);
  v171 = v173 - 8;
  v92 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v176);
  v172 = &v38 - v92;
  v93 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v168 = &v38 - v93;
  v203 = &v38 - v93;
  v202 = v12;
  v94 = @"magnifyingglass";
  MEMORY[0x277D82BE0](@"magnifyingglass");
  sub_214CCF564();
  v95 = sub_214CCEF34();
  MEMORY[0x277D82BD8](v94);
  v97 = v200;
  v200[0] = v95;
  v96 = sub_214CCEE94();
  sub_214CCEBF4();

  sub_214A75F80();
  v100 = v199;
  v199[0] = v200[1];
  v199[1] = v200[2];
  v199[2] = v200[3];
  v99 = sub_214CCE974();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA380A0);
  sub_214C7A100();
  sub_214CCECF4();

  sub_214B0B504();
  v103 = v198;
  v198[0] = v200[4];
  v198[1] = v200[5];
  v198[2] = v200[6];
  v198[3] = v200[7];
  v198[4] = v200[8];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA380C0);
  v102 = sub_214C7A22C();
  sub_214B061F0(v103, v101, v201);
  sub_214C7A2D4();
  v104[15] = *(v176 + 40);
  sub_214A61AD0(v206, &v197);
  v13 = v176;
  v14 = v104[15];
  v109 = v196;
  *v104 = v14;
  v177 = 169;
  memcpy(v195, v13, sizeof(v195));
  v178 = type metadata accessor for MUIOpenMailboxQuicklyView();
  v15 = sub_214C66E8C();
  v16 = v113;
  v105 = v15;
  v106 = v17;
  v107 = v18;
  v108 = v19;
  v20 = sub_214B075A0();
  sub_214C71C64(v109, v105, v106, v107, v108, MEMORY[0x277D837D0], v20, v16);
  v110 = sub_214CCE974();
  sub_214C7A330();
  sub_214CCECF4();

  (*(v111 + 8))(v113, v114);
  sub_214C71DD4();
  v121 = sub_214C7A3B8();
  v122 = sub_214C7A460();
  sub_214CCEBD4();
  (*(v115 + 8))(v117, v120);
  sub_214C7A4E0(v118);
  memcpy(&v194, v176, v177);
  v125 = sub_214C67D20();
  v126 = v21;
  v124 = v22;
  v193[24] = v119;
  v193[25] = v120;
  v193[26] = v121;
  v193[27] = v122;
  v167 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214CCED44();

  (*(v127 + 8))(v129, v130);
  v193[22] = v130;
  v193[23] = OpaqueTypeConformance2;
  v140 = swift_getOpaqueTypeConformance2();
  v23 = sub_214C666A0();
  sub_214C71DEC(v23 & 1);
  (*(v133 + 8))(v135, v139);
  v138 = [objc_opt_self() defaultCenter];
  v137 = *MEMORY[0x277D770A8];
  MEMORY[0x277D82BE0](v137);
  sub_214CCFCA4();
  MEMORY[0x277D82BD8](v137);
  MEMORY[0x277D82BD8](v138);
  sub_214C68154(v176, v193);
  v153 = 201;
  v154 = 7;
  v24 = swift_allocObject();
  v25 = v156;
  v26 = v176;
  v27 = v177;
  v144 = v24;
  v24[2] = v155;
  v24[3] = v25;
  memcpy(v24 + 4, v26, v27);
  v192[22] = v139;
  v192[23] = v140;
  v143 = swift_getOpaqueTypeConformance2();
  sub_214C7A5A0();
  sub_214CCEE44();

  (*(v145 + 8))(v147, v148);
  (*(v149 + 8))(v151, v152);
  sub_214C68154(v176, v192);
  v28 = swift_allocObject();
  v29 = v156;
  v30 = v176;
  v31 = v177;
  v162 = v28;
  v28[2] = v155;
  v28[3] = v29;
  memcpy(v28 + 4, v30, v31);
  v165 = sub_214C7A63C();
  sub_214C720CC();
  sub_214CCEDD4();
  (*(v158 + 8))(v160, v161);

  sub_214AA45B4(v163);
  v191[22] = v164;
  v191[23] = v165;
  v169 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v172, v173, v168);
  v174 = *(v170 + 8);
  v175 = v170 + 8;
  v174(v172, v173);
  memcpy(v191, v176, v177);
  sub_214C66C98();
  v179 = v32;
  v180 = sub_214CCF664();

  if (v180)
  {
    (*(v68 + 56))(v78, 1, 1, v67);
    v44 = sub_214C7A6C4();
    v36 = sub_214C7A74C();
    v190[3] = v62;
    v190[4] = v57;
    v190[5] = v44;
    v190[6] = v36;
    swift_getOpaqueTypeConformance2();
    sub_214C66600(v78, v67, v80);
    sub_214AA4694(v78);
    sub_214AA4748(v80, v82);
  }

  else
  {
    sub_214C68154(v176, &v186);
    v33 = swift_allocObject();
    v34 = v156;
    v35 = v176;
    v47 = v33;
    v33[2] = v155;
    v33[3] = v34;
    memcpy(v33 + 4, v35, 0xA9uLL);
    sub_214CCF004();
    sub_214C723E4();
    v48 = sub_214C7A6C4();
    v49 = sub_214C7A74C();
    sub_214CCEB24();
    (*(v58 + 8))(v61, v57);
    (*(v63 + 8))(v66, v62);
    v182 = v62;
    v183 = v57;
    v184 = v48;
    v185 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    sub_214B061F0(v73, v67, v75);
    v51 = *(v68 + 8);
    v52 = v68 + 8;
    v51(v73, v67);
    v181 = v73;
    v46 = *(v68 + 16);
    v45 = v68 + 16;
    v46(v71, v75, v67);
    sub_214B061F0(v71, v67, v73);
    v51(v71, v67);
    v46(v78, v73, v67);
    (*(v68 + 56))(v78, 0, 1, v67);
    sub_214C66600(v78, v67, v80);
    sub_214AA4694(v78);
    sub_214AA4748(v80, v82);
    v51(v73, v67);
    v51(v75, v67);
  }

  v43 = v201;
  v42 = v189;
  sub_214C7A7CC(v201, v189);
  v41 = v190;
  v190[0] = v42;
  (*(v170 + 16))(v172, v168, v173);
  v190[1] = v172;
  sub_214AA487C(v82, v80);
  v190[2] = v80;
  v39 = v188;
  v188[0] = v101;
  v188[1] = v173;
  v188[2] = v76;
  v40 = v187;
  v187[0] = v102;
  v187[1] = v169;
  v187[2] = sub_214C7A878();
  sub_214C663A4(v41, 3uLL, v39, v53);
  sub_214AA4694(v80);
  v174(v172, v173);
  sub_214C7A2D4();
  sub_214AA4694(v82);
  v174(v168, v173);
  result = v43;
  sub_214C7A2D4();
  return result;
}

unint64_t sub_214C71B54()
{
  v2 = qword_27CA37D48;
  if (!qword_27CA37D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37D40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C71BDC()
{
  v2 = qword_27CA37D50;
  if (!qword_27CA37D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37D38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C71C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10[2] = a8;
  v13 = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = a5;
  v14 = a6;
  v10[1] = a7;
  v10[8] = 0;
  v10[7] = nullsub_1;
  v10[9] = nullsub_1;
  v15 = a6;
  v11 = *(a6 - 8);
  v12 = a6 - 8;
  v10[0] = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a2);
  v10[10] = v10 - v10[0];
  (*(v11 + 16))(v8);
  sub_214CCF1E4();
  return (*(v11 + 8))(v13, v14);
}

uint64_t sub_214C71E18(uint64_t a1, const void *a2, uint64_t a3)
{
  v15 = a3;
  v14 = a1;
  v13 = a2;
  sub_214C68154(a2, v12);
  memcpy(__dst, a2, 0xA9uLL);
  sub_214CCCE84();
  if (v10)
  {
    sub_214C7A9A4();
    if (swift_dynamicCast())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    sub_214A7D24C(v9);
    v6 = 0;
  }

  v3 = type metadata accessor for MUIOpenMailboxQuicklyView();
  sub_214C678A4(v6, v3);
  return sub_214C68334(__dst);
}

uint64_t sub_214C71F3C(const void *a1, uint64_t a2)
{
  v6 = 0;
  v9 = a2;
  v8 = a1;
  memcpy(__dst, a1, sizeof(__dst));
  type metadata accessor for MUIOpenMailboxQuicklyView();
  result = sub_214C670EC();
  v4 = result;
  if (result)
  {
    v6 = result;
    memcpy(v5, a1, sizeof(v5));
    sub_214C7200C(v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_214C7200C(void *a1)
{
  v6 = *(v1 + 56);
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = [a1 identifier];
  sub_214CCF564();
  v5 = sub_214CCF544();

  [v6 openMailboxQuicklyDidSelectMailboxWithIdentifier_];
  MEMORY[0x277D82BD8](v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_214C720F0(const void *a1, uint64_t a2)
{
  v7 = a2;
  v6 = a1;
  sub_214C68154(a1, v5);
  memcpy(__dst, a1, 0xA9uLL);
  sub_214CCF614();
  type metadata accessor for MUIOpenMailboxQuicklyView();
  sub_214C66D54();
  return sub_214C68334(__dst);
}

void *sub_214C721A8@<X0>(uint64_t a1@<X8>)
{
  MEMORY[0x277D82BE0](@"xmark.circle.fill");
  sub_214CCF564();
  v3 = sub_214CCEF34();
  MEMORY[0x277D82BD8](@"xmark.circle.fill");
  v12[8] = v3;
  v1 = [objc_opt_self() systemGrayColor];
  sub_214CCEE54();
  sub_214CCEBF4();

  sub_214A75F80();
  v12[5] = v12[9];
  v12[6] = v12[10];
  v12[7] = v12[11];
  sub_214CCE984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA380A0);
  sub_214C7A100();
  sub_214CCECF4();

  sub_214B0B504();
  v12[0] = v12[12];
  v12[1] = v12[13];
  v12[2] = v12[14];
  v12[3] = v12[15];
  v12[4] = v12[16];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA380C0);
  sub_214C7A22C();
  sub_214B061F0(v12, v10, v13);
  sub_214C7A2D4();
  v4 = v13[0];
  v5 = v13[1];
  v6 = v13[2];
  v7 = v13[3];
  v8 = v13[4];

  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  sub_214B061F0(v11, v10, a1);
  sub_214C7A2D4();
  result = v13;
  sub_214C7A2D4();
  return result;
}

uint64_t sub_214C723FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v48 = a4;
  v33 = a1;
  v31 = a2;
  v32 = a3;
  v24 = 0;
  v13[1] = &unk_214CF5498;
  v16 = MEMORY[0x277CE1148];
  v18 = MEMORY[0x277CDFAD8];
  v20 = MEMORY[0x277CE0CA8];
  v26 = MEMORY[0x277D83980];
  v35 = MEMORY[0x277CE14C0];
  v37 = sub_214C79C80;
  v45 = MEMORY[0x277CE1290];
  v60 = 0;
  v59 = 0;
  v74 = a2;
  v25 = 255;
  v39 = sub_214CCF8D4();
  v36 = *(v32 + 16);
  v27 = MEMORY[0x277D840C0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v70 = v14;
  v71 = MEMORY[0x277D837D0];
  v72 = WitnessTable;
  v73 = MEMORY[0x277D837E0];
  v15 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v19 = sub_214CCE2F4();
  v17 = swift_getWitnessTable();
  v68 = v17;
  v69 = sub_214C200FC();
  v66 = v19;
  v67 = swift_getWitnessTable();
  v30 = 0;
  swift_getOpaqueTypeMetadata2();
  v21 = MEMORY[0x277CDF928];
  sub_214CCE2F4();
  v22 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  v23 = sub_214CCE2F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB8);
  swift_getTupleTypeMetadata2();
  v41 = sub_214CCF1F4();
  v42 = swift_getWitnessTable();
  v61 = v39;
  v62 = AssociatedTypeWitness;
  v63 = v41;
  v64 = v42;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v52 = sub_214CCF0F4();
  v46 = *(v52 - 8);
  v47 = v52 - 8;
  v28 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v50 = v13 - v28;
  v29 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - v28);
  v51 = v13 - v29;
  v60 = v13 - v29;
  v59 = v6;
  v34 = 169;
  memcpy(v58, v6, sizeof(v58));
  type metadata accessor for MUIOpenMailboxQuicklyView();
  v7 = sub_214C67424();
  v43 = &v57;
  v57 = v7;
  sub_214C68154(v33, &v56);
  v8 = swift_allocObject();
  v9 = v32;
  v10 = v33;
  v11 = v34;
  v38 = v8;
  v8[2] = v31;
  v8[3] = v9;
  memcpy(v8 + 4, v10, v11);
  v44 = swift_getWitnessTable();
  sub_214CCF0E4();
  v55 = v44;
  v49 = swift_getWitnessTable();
  sub_214B061F0(v50, v52, v51);
  v54 = *(v46 + 8);
  v53 = v46 + 8;
  v54(v50, v52);
  (*(v46 + 16))(v50, v51, v52);
  sub_214B061F0(v50, v52, v48);
  v54(v50, v52);
  return (v54)(v51, v52);
}

uint64_t sub_214C729A0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v47 = a1;
  v104 = a2;
  v107 = a3;
  v108 = a4;
  v40 = &unk_214CF5498;
  v42 = MEMORY[0x277CE1148];
  v95 = MEMORY[0x277CDFAD8];
  v73 = MEMORY[0x277CE0CA8];
  v68 = sub_214C79CD4;
  v89 = sub_214C79CF4;
  v141 = 0;
  v132 = 0;
  v131 = 0;
  v146 = a3;
  __src = v143;
  __n = 169;
  memcpy(v143, a2, 0xA9uLL);
  memcpy(v144, v143, sizeof(v144));
  v106 = 0;
  v29 = sub_214CCF0C4();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v103 = v23 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37CB8);
  v34 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v35 = v23 - v34;
  v36 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23 - v34);
  v37 = v23 - v36;
  v38 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23 - v36);
  v39 = v23 - v38;
  v141 = v23 - v38;
  v41 = 255;
  v51 = type metadata accessor for MailboxView();
  WitnessTable = swift_getWitnessTable();
  v137 = v51;
  v52 = MEMORY[0x277D837D0];
  v138 = MEMORY[0x277D837D0];
  v139 = WitnessTable;
  v54 = MEMORY[0x277D837E0];
  v140 = MEMORY[0x277D837E0];
  v58 = sub_214CCF034();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
  v67 = sub_214CCE2F4();
  v61 = swift_getWitnessTable();
  v7 = sub_214C200FC();
  v135 = v61;
  v136 = v7;
  v72 = swift_getWitnessTable();
  v133 = v67;
  v134 = v72;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  v77 = OpaqueTypeMetadata2 - 8;
  v43 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v106);
  v78 = v23 - v43;
  v44 = MEMORY[0x277CDF928];
  v100 = sub_214CCE2F4();
  v45 = (*(*(v100 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v106);
  v86 = v23 - v45;
  v101 = sub_214CCE2F4();
  v46 = (*(*(v101 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v101);
  v93 = v23 - v46;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37CB0);
  v102 = sub_214CCE2F4();
  v48 = (*(*(v102 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v98 = v23 - v48;
  v49 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v96 = v23 - v49;
  v132 = v23 - v49;
  v109 = *v10;
  v131 = v109;
  swift_unknownObjectRetain();
  v50 = v142;
  sub_214C73504(v109, v142);
  v57 = v122;
  memcpy(v122, v50, sizeof(v122));
  v56 = [v109 identifier];
  v11 = sub_214CCF564();
  v55 = v121;
  v121[0] = v11;
  v121[1] = v12;
  swift_checkMetadataState();
  sub_214CCECE4();
  sub_214A61B48();
  MEMORY[0x277D82BD8](v56);
  sub_214C751EC();
  v63 = v120;
  v120[0] = v123;
  v120[1] = v124;
  v120[2] = v125;
  v120[3] = v126;
  v120[4] = v127;
  v120[5] = v128;
  v120[6] = v129;
  sub_214CCF1D4();
  v59 = swift_checkMetadataState();
  v62 = sub_214C1FFD4();
  v60 = MEMORY[0x277CE14A8];
  sub_214B28CB0();
  v64 = &v130;
  sub_214CCEB74();
  sub_214C79C9C();
  v65 = __dst;
  v66 = 57;
  memcpy(__dst, v64, 0x39uLL);
  v70 = v119;
  memcpy(v119, __dst, 0x39uLL);
  sub_214C68154(v104, &v118);
  swift_unknownObjectRetain();
  v13 = swift_allocObject();
  v14 = v104;
  v15 = __n;
  v16 = v108;
  v69 = v13;
  v13[2] = v107;
  v13[3] = v16;
  memcpy(v13 + 4, v14, v15);
  v69[26] = v109;
  v71 = swift_checkMetadataState();
  sub_214B61150();
  sub_214CCEB94();

  sub_214C79C9C();
  v75 = sub_214CCE8D4();
  v74 = v104[3];
  v116 = v71;
  v117 = v72;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v84 = 0;
  sub_214CCED64();
  (*(v76 + 8))(v78, OpaqueTypeMetadata2);
  v80 = sub_214CD03C4();
  v79 = v17;
  *v17 = sub_214CCE8B4();
  v18 = sub_214CCE8C4();
  v19 = v80;
  v79[1] = v18;
  sub_214A63280();
  v81 = v19;
  sub_214C151AC();
  sub_214CD0084();
  v85 = v115;
  v83 = v104[2];
  v114[22] = OpaqueTypeConformance2;
  v88 = MEMORY[0x277CDF918];
  v114[23] = MEMORY[0x277CDF918];
  v87 = swift_getWitnessTable();
  sub_214CCED64();
  sub_214AA4178(v86, OpaqueTypeMetadata2);
  sub_214C68154(v104, v114);
  swift_unknownObjectRetain();
  v90 = v110;
  v110[2] = v107;
  v110[3] = v108;
  v110[4] = v104;
  v110[5] = v109;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38048);
  v113[24] = v87;
  v113[25] = v88;
  v94 = swift_getWitnessTable();
  v92 = sub_214C79D14();
  sub_214C2E5C4();
  sub_214CCEAB4();
  sub_214C68334(v104);
  swift_unknownObjectRelease();
  sub_214AA4178(v93, OpaqueTypeMetadata2);
  v20 = sub_214C79D9C();
  v113[22] = v94;
  v113[23] = v20;
  v97 = swift_getWitnessTable();
  sub_214B061F0(v98, v102, v96);
  sub_214AA41C4(v98, OpaqueTypeMetadata2, v100, v101, v102);
  sub_214CCF0B4();
  memcpy(v113, v104, __n);
  v21 = type metadata accessor for MUIOpenMailboxQuicklyView();
  if (sub_214C73C28(v109, v21))
  {
    v26 = 1.0;
  }

  else
  {
    v26 = 0.0;
  }

  *&v23[1] = v26;
  sub_214B0C24C();
  sub_214CCED54();
  (*(v30 + 8))(v103, v29);
  v24 = sub_214C79E24();
  sub_214B061F0(v37, v33, v39);
  sub_214BF0A90(v37);
  sub_214AA4298(v96, v98, OpaqueTypeMetadata2, v100, v101, v102);
  v25 = v112;
  v112[0] = v98;
  sub_214C79EC8(v39, v35);
  v112[1] = v35;
  v111[0] = v102;
  v111[1] = v33;
  v110[7] = v97;
  v110[8] = v24;
  sub_214C663A4(v25, 2uLL, v111, v27);
  sub_214BF0A90(v35);
  sub_214AA41C4(v98, OpaqueTypeMetadata2, v100, v101, v102);
  sub_214BF0A90(v39);
  return sub_214AA41C4(v96, OpaqueTypeMetadata2, v100, v101, v102);
}

double sub_214C73504@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 10.0;
  *(a2 + 8) = 30.0;
  *(a2 + 16) = 5.0;
  result = 40.0;
  *(a2 + 24) = 0x4044000000000000;
  *(a2 + 32) = a1;
  return result;
}

uint64_t sub_214C7353C(const void *a1, void *a2, uint64_t a3)
{
  v8 = a3;
  v7 = a1;
  v6 = a2;
  memcpy(__dst, a1, sizeof(__dst));
  type metadata accessor for MUIOpenMailboxQuicklyView();
  return sub_214C7200C(a2);
}

uint64_t sub_214C735C0@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v37 = a1;
  v43 = a2;
  v39 = a3;
  v40 = a4;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v57 = a3;
  v38 = 0;
  v23 = (*(*(sub_214CCE4D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v36 = &v11 - v23;
  v24 = sub_214CCE374();
  v25 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v34 = &v11 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38048);
  v30 = *(*(v26 - 8) + 64);
  v27 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v28 = &v11 - v27;
  v29 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v31 = &v11 - v29;
  v32 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v33 = &v11 - v32;
  v56 = &v11 - v32;
  v55 = v7;
  v54 = v8;
  v35 = *(v7 + 32);
  sub_214B697DC(v9);
  sub_214CCE364();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  memcpy(__dst, v37, sizeof(__dst));
  v41 = type metadata accessor for MUIOpenMailboxQuicklyView();
  v42 = sub_214C670EC();
  swift_unknownObjectRetain();
  v51 = v43;
  v52 = v42;
  if (v43)
  {
    sub_214B5AEEC(&v51, &v46);
    if (v52)
    {
      v45 = v46;
      v19 = &v51;
      v44 = v52;
      v20 = sub_214CCF4A4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_214A759F4();
      v21 = v20;
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if (v52)
  {
LABEL_9:
    sub_214C742E8();
    v21 = 0;
    goto LABEL_7;
  }

  sub_214A759F4();
  v21 = 1;
LABEL_7:
  v18 = v21;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v18)
  {
    memcpy(v47, v37, sizeof(v47));
    v17 = sub_214C73A2C();
  }

  else
  {
    v17 = sub_214CCEEA4();
  }

  v15 = &v50;
  v50 = v17;
  v13 = sub_214B07660();
  v12 = MEMORY[0x277CE0F78];
  v14 = MEMORY[0x277CE0F60];
  v49 = sub_214B07A90();
  v48 = v49;
  sub_214C73A98(v15, v49, v24, v12, v13, v14, v31);
  sub_214A75F80();
  sub_214B076E0(v34);
  v16 = sub_214C79D14();
  sub_214B061F0(v31, v26, v33);
  sub_214C79F58(v31);
  sub_214C79FFC(v33, v28);
  sub_214B061F0(v28, v26, v22);
  sub_214C79F58(v28);
  return sub_214C79F58(v33);
}

uint64_t sub_214C73A2C()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = [objc_opt_self() secondarySystemFillColor];
  return sub_214CCEE54();
}

uint64_t sub_214C73A98@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = a7;
  v15 = a1;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v29 = a2;
  v16 = a2;
  v17 = HIBYTE(a2);
  v28 = a3;
  v27 = a4;
  v13 = *(a4 - 8);
  v14 = a4 - 8;
  v10 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v19 = &v10 - v10;
  v12 = *(v7 - 8);
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](&v10 - v10);
  v24 = &v10 - v11;
  (*(v12 + 16))(v8);
  (*(v13 + 16))(v19, v15, v21);
  v25 = v16;
  v26 = v17;
  return sub_214CCE104();
}

uint64_t sub_214C73C28(uint64_t a1, uint64_t a2)
{
  v38 = 0;
  v37 = 0;
  v30 = 0;
  v26 = 0;
  v21 = 0;
  v40 = a1;
  v39 = *(a2 + 16);
  memcpy(__dst, v2, sizeof(__dst));
  v38 = v2;
  v37 = 0;
  memcpy(v36, __dst, sizeof(v36));
  v19 = sub_214C74198(a1, a2);
  if (v3)
  {
    v16 = 0;
  }

  else
  {
    v21 = v19;
    memcpy(v20, __dst, sizeof(v20));
    result = sub_214C74090(a2);
    if (v5)
    {
      v16 = 0;
    }

    else
    {
      v15 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
        return result;
      }

      v37 = v19 == v15;
      v16 = v19 == v15;
    }
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  memcpy(v35, __dst, sizeof(v35));
  v34 = sub_214C67424();
  sub_214CCF8D4();
  swift_getWitnessTable();
  sub_214CCF434();
  v14 = v33;

  swift_unknownObjectRetain();
  v31 = a1;
  v32 = v14;
  if (a1)
  {
    sub_214B5AEEC(&v31, v24);
    if (v32)
    {
      v23 = v24[0];
      v22 = v32;
      v12 = sub_214CCF4A4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_214A759F4();
      v13 = v12;
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  if (v32)
  {
LABEL_19:
    sub_214C742E8();
    v13 = 0;
    goto LABEL_17;
  }

  sub_214A759F4();
  v13 = 1;
LABEL_17:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v30 = v13 & 1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  memcpy(v29, __dst, sizeof(v29));
  v11 = sub_214C670EC();
  swift_unknownObjectRetain();
  v27 = a1;
  v28 = v11;
  if (!a1)
  {
    if (!v28)
    {
      sub_214A759F4();
      v10 = 1;
      goto LABEL_26;
    }

    goto LABEL_28;
  }

  sub_214B5AEEC(&v27, &v25);
  if (!v28)
  {
    swift_unknownObjectRelease();
LABEL_28:
    sub_214C742E8();
    v10 = 0;
    goto LABEL_26;
  }

  v24[2] = v25;
  v24[1] = v28;
  v9 = sub_214CCF4A4();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_214A759F4();
  v10 = v9;
LABEL_26:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v26 = v10 & 1;
  if (v13)
  {
    v8 = 1;
  }

  else
  {
    v8 = v10;
  }

  v7 = (v8 & 1) != 0 || v16;
  return (v7 ^ 1) & 1;
}

uint64_t sub_214C74090(uint64_t a1)
{
  v8 = 0;
  memcpy(__dst, v1, sizeof(__dst));
  v11 = v1;
  v10 = *(a1 + 16);
  memcpy(v9, __dst, sizeof(v9));
  v6 = sub_214C670EC();
  if (!v6)
  {
    return 0;
  }

  v8 = v6;
  memcpy(v7, __dst, sizeof(v7));
  v3 = sub_214C74198(v6, a1);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_214C74198(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v8 = a1;
  v7 = *(a2 + 16);
  memcpy(__dst, v2, sizeof(__dst));
  v6 = v2;
  memcpy(v4, __dst, sizeof(v4));
  sub_214C67424();
  swift_unknownObjectRetain();
  sub_214CCF8D4();
  swift_getWitnessTable();
  sub_214CCFA54();
  swift_unknownObjectRelease();
  sub_214A62278();
  return v5;
}

uint64_t sub_214C743E8()
{
  v2 = *(v0 + 32);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_214C74414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v21 = a1;
  v22 = sub_214C75148;
  v45 = 0;
  v10 = 40;
  v32 = 0;
  memset(&v44[6], 0, 0x28uLL);
  memcpy(__dst, v26, sizeof(__dst));
  v12 = __dst[0];
  v13 = __dst[1];
  v14 = __dst[2];
  v15 = __dst[3];
  v19 = __dst[4];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D70);
  v11 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v34 = &v10 - v11;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D78);
  v17 = *(*(v36 - 8) + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v38 = &v10 - v16;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v2);
  v39 = &v10 - v18;
  v45 = &v10 - v18;
  v44[6] = v4;
  v44[7] = v5;
  v44[8] = v6;
  *&v44[9] = v3;
  v44[10] = v19;
  v20 = *(v7 + 16);
  v44[5] = v20;
  sub_214C750F0(v8, v44);
  v23 = &v40;
  v41 = v20;
  v42 = *(v21 + 24);
  v43 = v26;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37D80);
  v25 = sub_214C75164();
  sub_214C11934();
  v29 = 0;
  v27 = 1;
  v30 = 1;
  sub_214CCF024();
  sub_214C751EC();
  v31 = *(v26 + 3);
  v33 = sub_214C75218();
  sub_214B68808();
  sub_214CCED14();
  sub_214C752A0(v34);
  v37 = sub_214C75608();
  sub_214B061F0(v38, v36, v39);
  sub_214C752A0(v38);
  sub_214C756AC(v39, v38);
  sub_214B061F0(v38, v36, v35);
  sub_214C752A0(v38);
  return sub_214C752A0(v39);
}