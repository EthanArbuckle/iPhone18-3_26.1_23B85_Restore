void sub_214BE73A0()
{
  v0 = OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_helpMailLearnButton;
  sub_214BD2A6C();
  *v0 = sub_214A61730();
  v1 = OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_cancelButton;
  *v1 = sub_214A61730();
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

id MessageListHelpMailLearnCollectionViewCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_214BE7604()
{
  sub_214A7802C();
  v2 = sub_214CCF7D4();
  v3 = [v1 initWithArrangedSubviews_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t sub_214BE76B8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BE7728(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BE77C0(double a1, double a2, double a3, double a4)
{
  *&v7 = a1;
  *(&v7 + 1) = a2;
  *&v8 = a3;
  *(&v8 + 1) = a4;
  ObjectType = swift_getObjectType();
  v11 = v7;
  v12 = v8;
  v13 = v4;
  *&v4[OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController] = 0;
  v10.receiver = v13;
  v10.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v10, sel_initWithFrame_, v7, v8);
  MEMORY[0x277D82BE0](v9);
  v13 = v9;
  sub_214BE78B8();
  MEMORY[0x277D82BD8](v13);
  return v9;
}

uint64_t sub_214BE78B8()
{
  sub_214BE8454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36970);

  v60 = sub_214CCE5A4();
  MEMORY[0x277D82BE0](v60);
  v59 = &v58[OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController];
  swift_beginAccess();
  v0 = *v59;
  *v59 = v60;
  MEMORY[0x277D82BD8](v0);
  swift_endAccess();
  v61 = [v60 view];
  *&v1 = MEMORY[0x277D82BD8](v60).n128_u64[0];
  if (v61)
  {
    v57 = v61;
  }

  else
  {
    LOBYTE(v9) = 2;
    v15 = 29;
    LODWORD(v21) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v57 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v57);
  v55 = [v58 contentView];
  (MEMORY[0x277D82BD8])();
  v56 = [v60 view];
  *&v2 = MEMORY[0x277D82BD8](v60).n128_u64[0];
  if (v56)
  {
    v54 = v56;
  }

  else
  {
    LOBYTE(v10) = 2;
    v16 = 31;
    LODWORD(v22) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v55 addSubview_];
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  v51 = objc_opt_self();
  sub_214A6F394();
  sub_214CD03C4();
  v52 = v3;
  v53 = [v60 view];
  *&v4 = MEMORY[0x277D82BD8](v60).n128_u64[0];
  if (v53)
  {
    v50 = v53;
  }

  else
  {
    LOBYTE(v11) = 2;
    v17 = 34;
    LODWORD(v23) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v47 = [v50 0x1FBBB4950];
  MEMORY[0x277D82BD8](v50);
  v45 = [v58 contentView];
  v46 = [v45 0x1FBBB4950];
  v48 = [v47 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  *v52 = v48;
  v49 = [v60 view];
  *&v5 = MEMORY[0x277D82BD8](v60).n128_u64[0];
  if (v49)
  {
    v44 = v49;
  }

  else
  {
    LOBYTE(v12) = 2;
    v18 = 35;
    LODWORD(v24) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v41 = [v44 0x1FBB5C529];
  MEMORY[0x277D82BD8](v44);
  v39 = [v58 contentView];
  v40 = [v39 0x1FBB5C529];
  v42 = [v41 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  v52[1] = v42;
  v43 = [v60 view];
  *&v6 = MEMORY[0x277D82BD8](v60).n128_u64[0];
  if (v43)
  {
    v38 = v43;
  }

  else
  {
    LOBYTE(v13) = 2;
    v19 = 36;
    LODWORD(v25) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v35 = [v38 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v38);
  v33 = [v58 contentView];
  v34 = [v33 0x1FBBB59CCLL];
  v36 = [v35 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  v52[2] = v36;
  v37 = [v60 view];
  *&v7 = MEMORY[0x277D82BD8](v60).n128_u64[0];
  if (v37)
  {
    v32 = v37;
  }

  else
  {
    LOBYTE(v14) = 2;
    v20 = 37;
    LODWORD(v26) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v29 = [v32 0x1FBB20D25];
  MEMORY[0x277D82BD8](v32);
  v27 = [v58 contentView];
  v28 = [v27 0x1FBB20D25];
  v30 = [v29 constraintEqualToAnchor_];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  v52[3] = v30;
  sub_214A63280();
  v31 = sub_214CCF7D4();

  [v51 activateConstraints_];
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v60);
}

id sub_214BE830C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  *&v1[OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController] = 0;
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, sel_initWithCoder_);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v9 = v6;
    sub_214BE78B8();
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v9);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

uint64_t sub_214BE8454()
{
  type metadata accessor for MailCleanupTipView.ViewModel();
  sub_214BEC444(0, 0, 0, 0, 0, 0, 0);
  v1 = sub_214BEC9D4();

  sub_214AA8B50();
  return v1;
}

uint64_t MessageListMailCleanupTipCollectionViewCell.configure(forTip:onSetupClick:onDismissClick:onAppear:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController;
  v19 = (v7 + OBJC_IVAR____TtC6MailUI43MessageListMailCleanupTipCollectionViewCell_hostingController);
  swift_beginAccess();
  if (!*v19)
  {
    return swift_endAccess();
  }

  v9 = *(v17 + v18);
  MEMORY[0x277D82BE0](v9);
  swift_endAccess();
  sub_214CCE5C4();
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BE0](a1);
  sub_214BE8664(a1, a2, a3, a4, a5, a6, a7, v20, v21);
  MEMORY[0x277D82BD8](a1);
}

uint64_t sub_214BE8664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_214BECA1C(a8, a9);
  MEMORY[0x277D82BE0](a1);
  sub_214BE8CCC(a1);

  sub_214BECA1C(a8, a9);
  sub_214B5188C(a2);
  sub_214BE99A0(a2, a3);

  sub_214BECA1C(a8, a9);
  sub_214B5188C(a4);
  sub_214BEA95C(a4, a5);

  sub_214BECA1C(a8, a9);
  sub_214B5188C(a6);
  sub_214BEB918(a6, a7);
}

id MessageListMailCleanupTipCollectionViewCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_214BE8AF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[1] = a1;
  MEMORY[0x277D82BE0](a1);
  v6[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36978);
  sub_214BEFB40(v6, v2, a2);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BE8B6C()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214CCE014();

  return v1;
}

uint64_t sub_214BE8C08@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214BE8B6C();
}

uint64_t sub_214BE8C64(uint64_t *a1)
{
  sub_214A671A8(a1, &v3);
  v2 = v3;

  sub_214BE8CCC(v2);
}

double sub_214BE8CCC(uint64_t a1)
{

  swift_getKeyPath();
  swift_getKeyPath();
  MEMORY[0x277D82BE0](a1);
  sub_214CCE024();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void (*sub_214BE8D80(void *a1))(void (***a1)(void, void))
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v2;

  v3[5] = swift_getKeyPath();
  v3[6] = swift_getKeyPath();
  v3[7] = sub_214CCE004();
  return sub_214BE8E60;
}

void sub_214BE8E60(void (***a1)(void, void))
{
  v1 = *a1;
  v1[7](v1, 0);

  free(v1);
}

uint64_t sub_214BE8F3C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988);
  sub_214CCDFE4();
  return swift_endAccess();
}

uint64_t sub_214BE8FB8(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36990);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988);
  sub_214CCDFF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

void (*sub_214BE910C(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36990);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_214BE8F3C();
  return sub_214BE9230;
}

void sub_214BE9230(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_214BE8FB8(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_214BE8FB8(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_214BE932C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__tipInfo;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_214BE93C4(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__tipInfo;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214BE9510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  sub_214B5188C(a1);
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
    v6 = sub_214B14B24;
    v7 = v3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11[0] = v6;
  v11[1] = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36160);
  sub_214BEFB40(v11, v4, a3);
  return sub_214A6B584(a1);
}

uint64_t (*sub_214BE9630())()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214CCE014();
  if (v3)
  {
    v0 = swift_allocObject();
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    v2 = sub_214B1C21C;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_214BE9780@<X0>(uint64_t (**a1)()@<X8>)
{

  v7 = sub_214BE9630();
  v8 = v1;
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_214B14B24;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_214BE9884(uint64_t *a1)
{
  sub_214B78A8C(a1, v7);
  v5 = v7[0];
  v6 = v7[1];
  if (v7[0])
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    v3 = sub_214B1C21C;
    v4 = v1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  sub_214BE99A0(v3, v4);
}

uint64_t sub_214BE99A0(uint64_t a1, uint64_t a2)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214B5188C(a1);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  sub_214CCE024();
  return sub_214A6B584(a1);
}

void (*sub_214BE9AFC(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v6;
  v6[6] = v5;

  v6[7] = swift_getKeyPath();
  v6[8] = swift_getKeyPath();
  v6[9] = sub_214CCE004();
  v6[10] = v1;
  v8 = *v1;
  v7 = v1[1];
  sub_214B5188C(*v1);
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v7;
    v9 = sub_214B1C21C;
    v10 = v2;
  }

  v6[4] = v9;
  v6[5] = v10;
  return sub_214BE9C90;
}

void sub_214BE9C90(void **a1, char a2)
{
  v18 = *a1;
  if (a2)
  {
    v10 = v18[4];
    v9 = v18[5];
    sub_214B5188C(v10);
    v11 = 0;
    v12 = 0;
    if (v10)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      *(v5 + 24) = v9;
      v11 = sub_214B14B24;
      v12 = v5;
    }

    v6 = v18[10];
    v8 = v18[9];
    v7 = *v6;
    *v6 = v11;
    v6[1] = v12;
    sub_214A6B584(v7);
    sub_214B86488(v18 + 4);
    v8();
  }

  else
  {
    v14 = v18[4];
    v15 = v18[5];
    v16 = 0;
    v17 = 0;
    if (v14)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = v14;
      *(v2 + 24) = v15;
      v16 = sub_214B14B24;
      v17 = v2;
    }

    v3 = v18[10];
    v13 = v18[9];
    v4 = *v3;
    *v3 = v16;
    v3[1] = v17;
    sub_214A6B584(v4);
    v13();
  }

  free(v18);
}

uint64_t sub_214BE9EF8()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  sub_214CCDFE4();
  return swift_endAccess();
}

uint64_t sub_214BE9F74(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  sub_214CCDFF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

void (*sub_214BEA0C8(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_214BE9EF8();
  return sub_214BEA1EC;
}

void sub_214BEA1EC(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_214BE9F74(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_214BE9F74(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_214BEA2E8@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onSetupClick;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_214BEA380(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onSetupClick;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214BEA4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  sub_214B5188C(a1);
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
    v6 = sub_214B14B24;
    v7 = v3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11[0] = v6;
  v11[1] = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36160);
  sub_214BEFB40(v11, v4, a3);
  return sub_214A6B584(a1);
}

uint64_t (*sub_214BEA5EC())()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214CCE014();
  if (v3)
  {
    v0 = swift_allocObject();
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    v2 = sub_214B1C21C;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_214BEA73C@<X0>(uint64_t (**a1)()@<X8>)
{

  v7 = sub_214BEA5EC();
  v8 = v1;
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_214B14B24;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_214BEA840(uint64_t *a1)
{
  sub_214B78A8C(a1, v7);
  v5 = v7[0];
  v6 = v7[1];
  if (v7[0])
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    v3 = sub_214B1C21C;
    v4 = v1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  sub_214BEA95C(v3, v4);
}

uint64_t sub_214BEA95C(uint64_t a1, uint64_t a2)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214B5188C(a1);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  sub_214CCE024();
  return sub_214A6B584(a1);
}

void (*sub_214BEAAB8(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v6;
  v6[6] = v5;

  v6[7] = swift_getKeyPath();
  v6[8] = swift_getKeyPath();
  v6[9] = sub_214CCE004();
  v6[10] = v1;
  v8 = *v1;
  v7 = v1[1];
  sub_214B5188C(*v1);
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v7;
    v9 = sub_214B1C21C;
    v10 = v2;
  }

  v6[4] = v9;
  v6[5] = v10;
  return sub_214BEAC4C;
}

void sub_214BEAC4C(void **a1, char a2)
{
  v18 = *a1;
  if (a2)
  {
    v10 = v18[4];
    v9 = v18[5];
    sub_214B5188C(v10);
    v11 = 0;
    v12 = 0;
    if (v10)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      *(v5 + 24) = v9;
      v11 = sub_214B14B24;
      v12 = v5;
    }

    v6 = v18[10];
    v8 = v18[9];
    v7 = *v6;
    *v6 = v11;
    v6[1] = v12;
    sub_214A6B584(v7);
    sub_214B86488(v18 + 4);
    v8();
  }

  else
  {
    v14 = v18[4];
    v15 = v18[5];
    v16 = 0;
    v17 = 0;
    if (v14)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = v14;
      *(v2 + 24) = v15;
      v16 = sub_214B14B24;
      v17 = v2;
    }

    v3 = v18[10];
    v13 = v18[9];
    v4 = *v3;
    *v3 = v16;
    v3[1] = v17;
    sub_214A6B584(v4);
    v13();
  }

  free(v18);
}

uint64_t sub_214BEAEB4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  sub_214CCDFE4();
  return swift_endAccess();
}

uint64_t sub_214BEAF30(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  sub_214CCDFF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

void (*sub_214BEB084(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_214BEAEB4();
  return sub_214BEB1A8;
}

void sub_214BEB1A8(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_214BEAF30(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_214BEAF30(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_214BEB2A4@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onDismissClick;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_214BEB33C(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onDismissClick;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214BEB488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11[2] = a1;
  v11[3] = a2;
  sub_214B5188C(a1);
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
    v6 = sub_214B14B24;
    v7 = v3;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v11[0] = v6;
  v11[1] = v7;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36160);
  sub_214BEFB40(v11, v4, a3);
  return sub_214A6B584(a1);
}

uint64_t (*sub_214BEB5A8())()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214CCE014();
  if (v3)
  {
    v0 = swift_allocObject();
    *(v0 + 16) = v3;
    *(v0 + 24) = v4;
    v2 = sub_214B1C21C;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_214BEB6F8@<X0>(uint64_t (**a1)()@<X8>)
{

  v7 = sub_214BEB5A8();
  v8 = v1;
  if (v7)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    v4 = sub_214B14B24;
    v5 = v2;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  *a1 = v4;
  a1[1] = v5;
}

uint64_t sub_214BEB7FC(uint64_t *a1)
{
  sub_214B78A8C(a1, v7);
  v5 = v7[0];
  v6 = v7[1];
  if (v7[0])
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v5;
    *(v1 + 24) = v6;
    v3 = sub_214B1C21C;
    v4 = v1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  sub_214BEB918(v3, v4);
}

uint64_t sub_214BEB918(uint64_t a1, uint64_t a2)
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_214B5188C(a1);
  if (a1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  sub_214CCE024();
  return sub_214A6B584(a1);
}

void (*sub_214BEBA74(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v6;
  v6[6] = v5;

  v6[7] = swift_getKeyPath();
  v6[8] = swift_getKeyPath();
  v6[9] = sub_214CCE004();
  v6[10] = v1;
  v8 = *v1;
  v7 = v1[1];
  sub_214B5188C(*v1);
  v9 = 0;
  v10 = 0;
  if (v8)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v7;
    v9 = sub_214B1C21C;
    v10 = v2;
  }

  v6[4] = v9;
  v6[5] = v10;
  return sub_214BEBC08;
}

void sub_214BEBC08(void **a1, char a2)
{
  v18 = *a1;
  if (a2)
  {
    v10 = v18[4];
    v9 = v18[5];
    sub_214B5188C(v10);
    v11 = 0;
    v12 = 0;
    if (v10)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      *(v5 + 24) = v9;
      v11 = sub_214B14B24;
      v12 = v5;
    }

    v6 = v18[10];
    v8 = v18[9];
    v7 = *v6;
    *v6 = v11;
    v6[1] = v12;
    sub_214A6B584(v7);
    sub_214B86488(v18 + 4);
    v8();
  }

  else
  {
    v14 = v18[4];
    v15 = v18[5];
    v16 = 0;
    v17 = 0;
    if (v14)
    {
      v2 = swift_allocObject();
      *(v2 + 16) = v14;
      *(v2 + 24) = v15;
      v16 = sub_214B14B24;
      v17 = v2;
    }

    v3 = v18[10];
    v13 = v18[9];
    v4 = *v3;
    *v3 = v16;
    v3[1] = v17;
    sub_214A6B584(v4);
    v13();
  }

  free(v18);
}

uint64_t sub_214BEBE70()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  sub_214CCDFE4();
  return swift_endAccess();
}

uint64_t sub_214BEBEEC(uint64_t a1)
{
  v8 = a1;
  v12 = 0;
  v11 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v5[1] = v5 - v5[0];
  v12 = v3;
  v11 = v1;
  (*(v6 + 16))(v2);
  v5[2] = &v10;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  sub_214CCDFF4();
  swift_endAccess();
  return (*(v6 + 8))(v8, v9);
}

void (*sub_214BEC040(void *a1))(void **a1, char a2)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A8);
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5);
  v6[4] = __swift_coroFrameAllocStub(v5);
  sub_214BEBE70();
  return sub_214BEC164;
}

void sub_214BEC164(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_214BEBEEC(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_214BEBEEC(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_214BEC260@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onAppear;
  swift_beginAccess();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_214BEC2F8(uint64_t a1)
{
  v11 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v12);
  v7 = &v4 - v5;
  (*(v9 + 16))(v2);
  v6 = v1 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onAppear;
  v8 = &v13;
  swift_beginAccess();
  (*(v9 + 40))(v6, v7, v12);
  swift_endAccess();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214BEC4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = a1;
  v39 = a2;
  v40 = a3;
  v37 = a4;
  v38 = a5;
  v35 = a6;
  v36 = a7;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  v25 = *(v32 - 8);
  v26 = v32 - 8;
  v18 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v31 = &v17 - v18;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988);
  v20 = *(v24 - 8);
  v21 = v24 - 8;
  v19 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v23 = &v17 - v19;
  v50 = v8;
  v48 = v9;
  v49 = v10;
  v46 = v11;
  v47 = v12;
  v44 = v13;
  v45 = v14;
  v43 = v7;
  v22 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__tipInfo;
  v29 = 0;
  v15 = sub_214BE8AF0(0, &v17 - v19);
  (*(v20 + 32))(v7 + v22, v23, v24, v15);
  v27 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onSetupClick;
  sub_214BE9510(v29, v29, v31);
  v34 = *(v25 + 32);
  v33 = v25 + 32;
  v34(v7 + v27, v31, v32);
  v28 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onDismissClick;
  sub_214BEA4CC(v29, v29, v31);
  v34(v7 + v28, v31, v32);
  v30 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onAppear;
  sub_214BEB488(v29, v29, v31);
  v34(v7 + v30, v31, v32);
  MEMORY[0x277D82BE0](v41);
  sub_214BE8CCC(v41);
  sub_214B5188C(v39);
  sub_214BE99A0(v39, v40);
  sub_214B5188C(v37);
  sub_214BEA95C(v37, v38);
  sub_214BEB918(v35, v36);
  sub_214A6B584(v37);
  sub_214A6B584(v39);
  MEMORY[0x277D82BD8](v41);
  return v42;
}

uint64_t sub_214BEC80C()
{
  v3 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__tipInfo;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36988);
  (*(*(v1 - 8) + 8))(v0 + v3);
  v4 = OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onSetupClick;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369A0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4);
  (v6)(v0 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onDismissClick, v5);
  (v6)(v0 + OBJC_IVAR____TtCV6MailUI18MailCleanupTipView9ViewModel__onAppear, v5);
  return v7;
}

uint64_t sub_214BEC998@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MailCleanupTipView.ViewModel();
  result = sub_214CCDFC4();
  *a1 = result;
  return result;
}

uint64_t sub_214BEC9D4()
{
  type metadata accessor for MailCleanupTipView.ViewModel();
  sub_214BEFCA4();
  return sub_214CCE254();
}

uint64_t sub_214BECA1C(uint64_t a1, uint64_t a2)
{

  return a2;
}

uint64_t sub_214BECA70(uint64_t a1)
{

  *(v1 + 8) = a1;
}

uint64_t sub_214BECAC4()
{

  type metadata accessor for MailCleanupTipView.ViewModel();
  sub_214BEFCA4();
  v1 = sub_214CCE264();

  return v1;
}

uint64_t sub_214BECB74(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_214BECBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v24 = a1;
  v25 = a2;
  v15 = sub_214BEFD24;
  v27 = sub_214BF0018;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369C8);
  v10 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v23 = &v9 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369D0);
  v11 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v29 = &v9 - v11;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369D8);
  v13 = *(*(v31 - 8) + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v33 = &v9 - v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v34 = &v9 - v14;
  v40 = &v9 - v14;
  v38 = v4;
  v39 = v5;

  v16 = &v35;
  v36 = v24;
  v37 = v25;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369E0);
  v18 = sub_214BEFD30();
  sub_214B6C2A4();
  v19 = 0;
  v20 = 1;
  sub_214CCF064();

  v22 = sub_214CCE8A4();
  sub_214BEFF90();
  sub_214CCED64();
  sub_214A99004(v23);

  v6 = swift_allocObject();
  v7 = v25;
  *(v6 + 16) = v24;
  *(v6 + 24) = v7;
  v28 = v6;
  sub_214BF0024();
  sub_214CCEDA4();
  sub_214A6B584(v27);
  sub_214A99004(v29);
  v32 = sub_214BF00C8();
  sub_214B061F0(v33, v31, v34);
  sub_214A992F8(v33);
  sub_214A99624(v34, v33);
  sub_214B061F0(v33, v31, v30);
  sub_214A992F8(v33);
  return sub_214A992F8(v34);
}

uint64_t sub_214BECF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = a3;
  v23 = a1;
  v28 = a2;
  v24 = sub_214BF0498;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A08);
  v12 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v35 = v9 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369F8);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13);
  v29 = v9 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA369E0);
  v19 = *(*(v15 - 8) + 64);
  v16 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v17 = v9 - v16;
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v20 = v9 - v18;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v22 = v9 - v21;
  v43 = v9 - v21;
  v41 = v5;
  v42 = v6;

  v25 = &v36;
  v37 = v23;
  v38 = v28;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AF0);
  v27 = sub_214BF04A4();
  sub_214B6C2A4();
  sub_214CCF064();

  nullsub_1(v7);
  sub_214BEF55C(MEMORY[0x277CDF950], MEMORY[0x277CDF948], &v40);
  v34 = &v39;
  v39 = v40;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B00);
  v32 = sub_214BEFE80();
  v33 = sub_214BF052C();
  sub_214B07A68();
  sub_214CCEAC4();
  sub_214A9A188(v35);
  if (MUISolariumFeatureEnabled())
  {
    v10 = 20.0;
  }

  else
  {
    v10 = 10.0;
  }

  *&v9[1] = v10;
  v9[2] = sub_214BEFDD8();
  sub_214C666A0();
  sub_214CCEB84();
  sub_214A9A188(v29);
  v9[3] = sub_214BEFD30();
  sub_214B061F0(v20, v15, v22);
  sub_214A9A394(v20);
  sub_214A9A620(v22, v17);
  sub_214B061F0(v17, v15, v11);
  sub_214A9A394(v17);
  return sub_214A9A394(v22);
}

uint64_t sub_214BED348(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v107 = v235;
  v108 = &v234;
  v109 = &v214;
  v110 = &v203;
  v150 = v1;
  v151 = v2;
  v111 = v3;
  v143 = 0;
  v242 = 0;
  v241 = 0;
  v240 = 0;
  v239 = 0;
  v238 = 0;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B10);
  v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112 - 8);
  v114 = v56 - v113;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA8);
  v116 = (*(*(v115 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v115 - 8);
  v117 = v56 - v116;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB0);
  v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v118 - 8);
  v120 = v56 - v119;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB8);
  v122 = (*(*(v121 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121 - 8);
  v123 = v56 - v122;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AC0);
  v125 = *(*(v124 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v127 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  v126 = v56 - v127;
  MEMORY[0x28223BE20](v4);
  v128 = v56 - v127;
  v242 = v56 - v127;
  v129 = sub_214CCF0C4();
  v130 = *(v129 - 8);
  v131 = v130;
  MEMORY[0x28223BE20](v129 - 8);
  v132 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A90);
  v134 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133 - 8);
  v136 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  v135 = v56 - v136;
  MEMORY[0x28223BE20](v6);
  v137 = v56 - v136;
  v241 = v56 - v136;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B18);
  v138 = v147;
  v139 = *(*(v147 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v141 = (v139 + 15) & 0xFFFFFFFFFFFFFFF0;
  v149 = v56 - v141;
  v140 = v56 - v141;
  MEMORY[0x28223BE20](v7);
  v146 = v56 - v141;
  v142 = v56 - v141;
  v240 = v56 - v141;
  v238 = v8;
  v239 = v9;

  v153 = v151;
  v154 = v150;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B20);
  v145 = sub_214BF0650();
  sub_214C11934();
  sub_214CCF024();

  v148 = sub_214BF06D8();
  sub_214B061F0(v149, v147, v146);
  sub_214A9AD9C(v149);
  v152 = sub_214BECA1C(v151, v150);
  v231 = sub_214BE8B6C();
  if (v231)
  {
    v102 = v231;
    v10 = v231;
    sub_214A671E8(&v231);

    v104 = *&v102[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_message];
    v103 = *&v102[OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_message + 8];

    v105 = v104;
    v106 = v103;
  }

  else
  {
    sub_214A671E8(&v231);

    v105 = 0;
    v106 = 0;
  }

  v229 = v105;
  v230 = v106;
  if (v106)
  {
    v232 = v229;
    v233 = v230;
  }

  else
  {
    v232 = sub_214CCF614();
    v233 = v11;
    if (v230)
    {
      sub_214A61B48();
    }
  }

  v192 = v232;
  v193 = v233;
  sub_214B075A0();
  v188 = sub_214CCEA74();
  v189 = v12;
  v190 = v13;
  v191 = v14;
  v57 = v188;
  v58 = v12;
  v59 = v13;
  v60 = v14;
  v56[1] = sub_214CCE904();
  v184 = v57;
  v185 = v58;
  v186 = v59;
  v187 = v60;
  v180 = sub_214CCEA34();
  v181 = v15;
  v182 = v16;
  v183 = v17;
  v61 = v180;
  v62 = v15;
  v63 = v16;
  v64 = v17;

  sub_214B072EC(v57, v58, v59);

  v179 = sub_214BE7678();
  v175 = v61;
  v176 = v62;
  v177 = v63;
  v178 = v64;
  v171 = sub_214CCEA04();
  v172 = v18;
  v173 = v19;
  v174 = v20;
  v65 = v171;
  v66 = v18;
  v67 = v19;
  v68 = v20;
  sub_214B072EC(v61, v62, v63);

  v168[0] = v65;
  v168[1] = v66;
  v169 = v67;
  v170 = v68;
  v21 = sub_214CCF1A4();
  v55 = MEMORY[0x277CE0BC8];
  v54 = MEMORY[0x277CE0BD8];
  v53[1] = v22;
  v53[0] = v21;
  v85 = 1;
  v84 = 0;
  v94 = 0;
  v69 = v168;
  sub_214CCED14();
  sub_214B07618(v69);
  v194 = *v108;
  v23 = v108[1];
  v24 = v108[2];
  v25 = v108[3];
  v198 = v108[4];
  v197 = v25;
  v196 = v24;
  v195 = v23;
  v26 = v108[5];
  v27 = v108[6];
  v28 = v108[7];
  v202 = v108[8];
  v201 = v28;
  v200 = v27;
  v199 = v26;
  v167[0] = v194;
  v167[4] = v198;
  v167[3] = v197;
  v167[2] = v196;
  v167[1] = v195;
  v167[8] = v202;
  v167[7] = v28;
  v167[6] = v27;
  v167[5] = v26;
  v71 = sub_214CCE8D4();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B38);
  sub_214BF0760();
  v91 = 0x4030000000000000;
  v72 = v167;
  sub_214CCED64();
  sub_214B07618(v72);
  v29 = v110;
  v30 = v108[9];
  v31 = v108[10];
  v32 = v108[11];
  v206 = v108[12];
  v205 = v32;
  v204 = v31;
  v203 = v30;
  v33 = v108[13];
  v34 = v108[14];
  v35 = v108[15];
  v210 = v108[16];
  v209 = v35;
  v208 = v34;
  v207 = v33;
  v36 = v108[17];
  v37 = v108[18];
  v38 = v108[19];
  *(v110 + 169) = *(v107 + 169);
  v213 = v38;
  v212 = v37;
  v211 = v36;
  v165[3] = v206;
  v165[2] = v205;
  v165[1] = v204;
  v165[0] = v203;
  v165[7] = v210;
  v165[6] = v209;
  v165[5] = v208;
  v165[4] = v207;
  *(v166 + 9) = *(v29 + 169);
  v166[0] = v38;
  v165[9] = v37;
  v165[8] = v36;
  v74 = sub_214CCE8E4();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B48);
  sub_214BF0800();
  v75 = v165;
  sub_214CCED64();
  sub_214B07618(v75);
  v39 = v109;
  v40 = v107[12];
  v41 = v107[13];
  v216 = v107[14];
  v215 = v41;
  v214 = v40;
  v42 = v107[15];
  v43 = v107[16];
  v44 = v107[17];
  v220 = v107[18];
  v219 = v44;
  v218 = v43;
  v217 = v42;
  v45 = v107[19];
  v46 = v107[20];
  v47 = v107[21];
  v224 = v107[22];
  v223 = v47;
  v222 = v46;
  v221 = v45;
  v48 = v107[23];
  v49 = v107[24];
  v50 = v107[25];
  *(v109 + 217) = *&v235[409];
  v227 = v50;
  v226 = v49;
  v225 = v48;
  v163[2] = v216;
  v163[1] = v215;
  v163[0] = v214;
  v163[6] = v220;
  v163[5] = v219;
  v163[4] = v218;
  v163[3] = v217;
  v163[10] = v224;
  v163[9] = v223;
  v163[8] = v222;
  v163[7] = v221;
  *(v164 + 9) = *(v39 + 217);
  v164[0] = v50;
  v163[12] = v49;
  v163[11] = v48;
  v77 = sub_214CCE8C4();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B58);
  sub_214BF08A4();
  v79 = &v236;
  v78 = v163;
  sub_214CCED64();
  sub_214B07618(v78);
  v81 = 281;
  v80 = v228;
  memcpy(v228, v79, 0x119uLL);
  v82 = v162;
  memcpy(v162, v228, 0x119uLL);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B68);
  v97 = sub_214BF0948();
  v101 = v237;
  sub_214B061F0(v82, v96, v237);
  sub_214B07618(v82);
  sub_214CCF0B4();
  v83 = sub_214CCE8D4();
  sub_214B0C24C();
  sub_214CCED64();
  (*(v131 + 8))(v132, v129);
  v98 = sub_214BF09EC();
  sub_214B061F0(v135, v133, v137);
  sub_214BF0A90(v135);

  v89 = v56;
  MEMORY[0x28223BE20](v56);
  v86 = v53;
  v54 = v151;
  v55 = v51;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B80);
  v88 = sub_214BF0AF8();
  sub_214C11934();
  sub_214CCF024();

  v90 = sub_214CCE8D4();
  sub_214BF0B80();
  sub_214CCED64();
  sub_214BF0C08(v114);
  v92 = sub_214CCE8E4();
  sub_214BF0C94();
  sub_214CCED64();
  sub_214BF0C08(v117);
  v93 = sub_214CCE8B4();
  sub_214BF0D38();
  sub_214CCED64();
  sub_214BF0C08(v120);
  v95 = sub_214CCE8C4();
  sub_214BF0DDC();
  sub_214CCED64();
  sub_214BF0C08(v123);
  v99 = sub_214BF0E80();
  sub_214B061F0(v126, v124, v128);
  sub_214BF0C08(v126);
  sub_214A9AE70(v142, v140);
  v161[0] = v140;
  v100 = v160;
  sub_214BF0F24(v101, v160);
  v161[1] = v100;
  sub_214BF1018(v137, v135);
  v161[2] = v135;
  sub_214BF10B8(v128, v126);
  v161[3] = v126;
  v159[0] = v138;
  v159[1] = v96;
  v159[2] = v133;
  v159[3] = v124;
  v155 = v148;
  v156 = v97;
  v157 = v98;
  v158 = v99;
  sub_214C663A4(v161, 4uLL, v159, v111);
  sub_214BF0C08(v126);
  sub_214BF0A90(v135);
  sub_214B07618(v100);
  sub_214A9AD9C(v140);
  sub_214BF0C08(v128);
  sub_214BF0A90(v137);
  sub_214B07618(v101);
  return sub_214A9AD9C(v142);
}

uint64_t sub_214BEE268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a3;
  v86 = a1;
  v85 = a2;
  v69 = sub_214BF1494;
  v70 = sub_214BEECAC;
  v144 = 0;
  v142 = 0;
  v143 = 0;
  v104 = 0;
  v105 = 0;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A48);
  v72 = *(v71 - 8);
  v73 = v71 - 8;
  v74 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v71);
  v75 = v22 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A70);
  v77 = (*(*(v76 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v78 = v22 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A78);
  v80 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79);
  v81 = v22 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A80);
  v83 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v82);
  v84 = v22 - v83;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A88);
  v88 = (*(*(v87 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v89 = v22 - v88;
  v90 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v91 = v22 - v90;
  v144 = v22 - v90;
  v142 = v5;
  v143 = v6;
  v92 = sub_214BECA1C(v5, v6);
  v136 = sub_214BE8B6C();
  if (v136)
  {
    v62 = &v136;
    v63 = v136;
    MEMORY[0x277D82BE0](v136);
    sub_214A671E8(v62);

    v64 = *(v63 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_title);
    v65 = *(v63 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_title + 8);

    MEMORY[0x277D82BD8](v63);
    v66 = v64;
    v67 = v65;
  }

  else
  {
    sub_214A671E8(&v136);

    v66 = 0;
    v67 = 0;
  }

  v134 = v66;
  v135 = v67;
  if (v67)
  {
    v137 = v134;
    v138 = v135;
  }

  else
  {
    v137 = sub_214CCF614();
    v138 = v7;
    if (v135)
    {
      sub_214A61B48();
    }
  }

  v22[0] = v131;
  v131[0] = v137;
  v131[1] = v138;
  sub_214B075A0();
  v127 = sub_214CCEA74();
  v128 = v8;
  v129 = v9;
  v130 = v10;
  v23 = v127;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v22[1] = sub_214CCE914();
  v123 = v23;
  v124 = v24;
  v46 = 1;
  v125 = v25 & 1;
  v126 = v26;
  v119 = sub_214CCEA34();
  v120 = v11;
  v121 = v12;
  v122 = v13;
  v28 = v119;
  v29 = v11;
  v27 = v12;
  v30 = v13;

  sub_214B072EC(v23, v24, v25 & 1);

  sub_214CCE964();
  v115 = v28;
  v116 = v29;
  v117 = v27 & 1 & v46;
  v118 = v30;
  v52 = 0;
  v111 = sub_214CCE9E4();
  v112 = v14;
  v113 = v15;
  v114 = v16;
  v31 = v111;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  sub_214B072EC(v28, v29, v27 & 1);

  v35 = v108;
  v108[0] = v31;
  v108[1] = v32;
  v109 = v33 & 1 & v46;
  v110 = v34;
  sub_214CCE8B4();
  v36 = &v139;
  sub_214CCED64();
  sub_214B07618(v35);
  v37 = v132;
  v38 = 73;
  memcpy(v132, v36, 0x49uLL);
  v41 = v107;
  memcpy(v107, v132, 0x49uLL);
  v40 = sub_214CCE8D4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C18);
  sub_214B07048();
  v42 = &v140;
  sub_214CCED64();
  sub_214B07618(v41);
  v43 = v133;
  v44 = 121;
  memcpy(v133, v42, 0x79uLL);
  v45 = v106;
  memcpy(v106, v133, 0x79uLL);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34C08);
  v56 = sub_214B06FA4();
  v61 = v141;
  sub_214B061F0(v45, v54, v141);
  sub_214B07618(v45);
  v102 = sub_214CCF054();
  v103 = v17 & 1 & v46;
  v55 = MEMORY[0x277CE1180];
  v57 = MEMORY[0x277CE1170];
  sub_214B061F0(&v102, MEMORY[0x277CE1180], &v104);

  v18 = swift_allocObject();
  v19 = v85;
  v47 = v18;
  *(v18 + 16) = v86;
  *(v18 + 24) = v19;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BC0);
  sub_214BF14A0();
  sub_214CCF004();
  v20 = sub_214C22D88();
  v49 = &v101;
  v101 = v20;
  sub_214BF1584();
  sub_214CCEC04();
  (*(v72 + 8))(v75, v71);
  v50 = sub_214CCE8B4();
  sub_214BF160C();
  sub_214CCED64();
  sub_214A9B15C(v78);
  v51 = sub_214CCE8D4();
  sub_214BF16B4();
  sub_214CCED64();
  sub_214A9B15C(v81);
  v53 = sub_214CCE8E4();
  sub_214BF1758();
  sub_214CCED64();
  sub_214A9B15C(v84);
  v58 = sub_214BF17FC();
  sub_214B061F0(v89, v87, v91);
  sub_214A9B15C(v89);
  v60 = v99;
  sub_214BF18A0(v61, v99);
  v59 = v100;
  v100[0] = v60;
  v97 = v104;
  v98 = v105;
  v100[1] = &v97;
  sub_214A9B1C4(v91, v89);
  v100[2] = v89;
  v96[0] = v54;
  v96[1] = v55;
  v96[2] = v87;
  v93 = v56;
  v94 = v57;
  v95 = v58;
  sub_214C663A4(v59, 3uLL, v96, v68);
  sub_214A9B15C(v89);
  sub_214B07618(v60);
  sub_214A9B15C(v91);
  return sub_214B07618(v61);
}

uint64_t sub_214BEEBF4(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  sub_214BECA1C(a1, a2);
  v6[0] = sub_214BEA5EC();
  v6[1] = v2;
  if (v6[0])
  {
    v5 = v6[0];

    sub_214B86488(v6);

    v5(v4);
  }

  else
  {
    sub_214B86488(v6);
  }
}

uint64_t sub_214BEECAC@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v11 = MEMORY[0x277CE0C08];
  v25 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BF8);
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v5 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v15 = &v4 - v5;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36BC0);
  v6 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v20 = &v4 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v6);
  v21 = &v4 - v7;
  v25 = &v4 - v7;
  sub_214CCF614();
  v2 = sub_214CCEF34();
  v8 = &v24;
  v24 = v2;
  sub_214CCE964();
  v9 = MEMORY[0x277CE1088];
  v10 = MEMORY[0x277CE1078];
  sub_214CCEAE4();
  sub_214A75F80();
  v12 = sub_214CCE904();
  v22 = v9;
  v23 = v10;
  swift_getOpaqueTypeConformance2();
  sub_214CCECF4();

  (*(v13 + 8))(v15, v16);
  v19 = sub_214BF14A0();
  sub_214B061F0(v20, v18, v21);
  sub_214A9B314(v20);
  sub_214A9B3B8(v21, v20);
  sub_214B061F0(v20, v18, v17);
  sub_214A9B314(v20);
  return sub_214A9B314(v21);
}

uint64_t sub_214BEEF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v35 = a1;
  v34 = a2;
  v28 = sub_214BF12D0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v52 = 0;
  v53 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v32 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v33 = v15 - v32;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A98);
  v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v38 = v15 - v37;
  v39 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v40 = v15 - v39;
  v41 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v42 = v15 - v41;
  v62 = v15 - v41;
  v60 = v7;
  v61 = v8;
  v43 = sub_214BECA1C(v7, v8);
  v57 = sub_214BE8B6C();
  if (v57)
  {
    v21 = &v57;
    v22 = v57;
    MEMORY[0x277D82BE0](v57);
    sub_214A671E8(v21);

    v23 = *(v22 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_submitButtonLabel);
    v24 = *(v22 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_submitButtonLabel + 8);

    MEMORY[0x277D82BD8](v22);
    v25 = v23;
    v26 = v24;
  }

  else
  {
    sub_214A671E8(&v57);

    v25 = 0;
    v26 = 0;
  }

  v55 = v25;
  v56 = v26;
  if (v26)
  {
    v58 = v55;
    v59 = v56;
  }

  else
  {
    v58 = sub_214CCF614();
    v59 = v9;
    if (v56)
    {
      sub_214A61B48();
    }
  }

  v15[1] = v54;
  v54[0] = v58;
  v54[1] = v59;

  v10 = swift_allocObject();
  v11 = v34;
  v15[0] = v10;
  *(v10 + 16) = v35;
  *(v10 + 24) = v11;
  sub_214B075A0();
  sub_214CCF014();
  v15[2] = sub_214CCF1A4();
  v15[3] = v12;
  sub_214B79534();
  v17 = 0;
  v16 = 1;
  sub_214CCED04();
  (*(v30 + 8))(v33, v29);
  v19 = sub_214BF12DC();
  sub_214B061F0(v40, v36, v42);
  sub_214BF1380(v40);
  v50 = sub_214CCF054();
  v51 = v13 & 1;
  v18 = MEMORY[0x277CE1180];
  v20 = MEMORY[0x277CE1170];
  sub_214B061F0(&v50, MEMORY[0x277CE1180], &v52);
  sub_214BF13E8(v42, v38);
  v49[0] = v38;
  v47 = v52;
  v48 = v53;
  v49[1] = &v47;
  v46[0] = v36;
  v46[1] = v18;
  v44 = v19;
  v45 = v20;
  sub_214C663A4(v49, 2uLL, v46, v27);
  sub_214BF1380(v38);
  return sub_214BF1380(v42);
}

uint64_t sub_214BEF4A4(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[3] = a2;
  sub_214BECA1C(a1, a2);
  v6[0] = sub_214BE9630();
  v6[1] = v2;
  if (v6[0])
  {
    v5 = v6[0];

    sub_214B86488(v6);

    v5(v4);
  }

  else
  {
    sub_214B86488(v6);
  }
}

uint64_t sub_214BEF55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = a3;
  v9 = a1;
  v10 = a2;
  v12 = a1;
  v7 = *(a1 - 8);
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](a1);
  v11 = &v5 - v6;
  (*(v7 + 16))(v3);
  return sub_214BF05B4(v11, 1, v9, v8);
}

double sub_214BEF624(uint64_t a1, uint64_t a2)
{
  v32[2] = a1;
  v32[3] = a2;
  sub_214BECA1C(a1, a2);
  v32[0] = sub_214BEB5A8();
  v32[1] = v2;
  if (v32[0])
  {
    v17 = v32[0];

    sub_214B86488(v32);

    v17(v3);
  }

  else
  {
    sub_214B86488(v32);
  }

  sub_214BECA1C(a1, a2);
  v31 = sub_214BE8B6C();
  if (v31)
  {
    v12 = v31;
    MEMORY[0x277D82BE0](v31);
    sub_214A671E8(&v31);

    v13 = *(v12 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId);
    v14 = *(v12 + OBJC_IVAR____TtC6MailUI17MUIMailCleanupTip_tipId + 8);

    MEMORY[0x277D82BD8](v12);
    v15 = v13;
    v16 = v14;
  }

  else
  {
    sub_214A671E8(&v31);

    v15 = 0;
    v16 = 0;
  }

  v10 = sub_214CCF614();
  v11 = v4;

  v28[0] = v15;
  v28[1] = v16;
  v29 = v10;
  v30 = v11;
  if (v16)
  {
    sub_214A61AD0(v28, v20);
    if (v30)
    {
      v8 = MEMORY[0x21605D8D0](v20[0], v20[1], v29, v30);
      sub_214A61B48();
      sub_214A61B48();
      sub_214A61B48();
      v9 = v8;
      goto LABEL_13;
    }

    sub_214A61B48();
    goto LABEL_15;
  }

  if (v30)
  {
LABEL_15:
    sub_214A76610();
    v9 = 0;
    goto LABEL_13;
  }

  sub_214A61B48();
  v9 = 1;
LABEL_13:

  if (v9)
  {
    sub_214CCF614();
    v7 = sub_214CCF544();

    v26 = sub_214BEF9C8;
    v27 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = 0;
    v24 = sub_214C60F20;
    v25 = &block_descriptor_12;
    v6 = _Block_copy(&aBlock);
    AnalyticsSendEventLazy();
    _Block_release(v6);
    *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  }

  return result;
}

uint64_t sub_214BEF9C8()
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

uint64_t sub_214BEFB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5[1] = a3;
  v8 = a1;
  v9 = a2;
  v10 = a2;
  v6 = *(a2 - 8);
  v7 = a2 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](a1);
  v5[2] = v5 - v5[0];
  (*(v6 + 16))(v3);
  sub_214CCDFD4();
  return (*(v6 + 8))(v8, v9);
}

uint64_t type metadata accessor for MailCleanupTipView.ViewModel()
{
  v1 = qword_27CA36AC8;
  if (!qword_27CA36AC8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_214BEFCA4()
{
  v2 = qword_27CA369C0;
  if (!qword_27CA369C0)
  {
    type metadata accessor for MailCleanupTipView.ViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA369C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFD30()
{
  v2 = qword_27CA369E8;
  if (!qword_27CA369E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369E0);
    sub_214BEFDD8();
    sub_214B07170();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA369E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFDD8()
{
  v2 = qword_27CA369F0;
  if (!qword_27CA369F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369F8);
    sub_214BEFE80();
    sub_214BEFF08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA369F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFE80()
{
  v2 = qword_27CA36A00;
  if (!qword_27CA36A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFF08()
{
  v2 = qword_27CA36A10;
  if (!qword_27CA36A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BEFF90()
{
  v2 = qword_27CA36A20;
  if (!qword_27CA36A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0024()
{
  v2 = qword_27CA36A60;
  if (!qword_27CA36A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369D0);
    sub_214BEFF90();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF00C8()
{
  v2 = qword_27CA36A68;
  if (!qword_27CA36A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA369D8);
    sub_214BF0024();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36A68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF01C4()
{
  updated = sub_214BF0310();
  if (v0 <= 0x3F)
  {
    updated = sub_214BF03B4();
    if (v1 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_214BF0310()
{
  v4 = qword_27CA36AD8;
  if (!qword_27CA36AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36978);
    v3 = sub_214CCE034();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27CA36AD8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214BF03B4()
{
  v4 = qword_27CA36AE0;
  if (!qword_27CA36AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36160);
    v3 = sub_214CCE034();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27CA36AE0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_214BF04A4()
{
  v2 = qword_27CA36AF8;
  if (!qword_27CA36AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36AF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF052C()
{
  v2 = qword_27CA36B08;
  if (!qword_27CA36B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF05B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = sub_214CCE844();
  *(a4 + *(result + 36)) = a2;
  return result;
}

unint64_t sub_214BF0650()
{
  v2 = qword_27CA36B28;
  if (!qword_27CA36B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF06D8()
{
  v2 = qword_27CA36B30;
  if (!qword_27CA36B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0760()
{
  v2 = qword_27CA36B40;
  if (!qword_27CA36B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0800()
{
  v2 = qword_27CA36B50;
  if (!qword_27CA36B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B48);
    sub_214BF0760();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF08A4()
{
  v2 = qword_27CA36B60;
  if (!qword_27CA36B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B58);
    sub_214BF0800();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0948()
{
  v2 = qword_27CA36B70;
  if (!qword_27CA36B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B68);
    sub_214BF08A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF09EC()
{
  v2 = qword_27CA36B78;
  if (!qword_27CA36B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A90);
    sub_214B0C24C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF0A90(uint64_t a1)
{
  v1 = sub_214CCF0C4();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_214BF0AF8()
{
  v2 = qword_27CA36B88;
  if (!qword_27CA36B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0B80()
{
  v2 = qword_27CA36B90;
  if (!qword_27CA36B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36B10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF0C08(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_214BF0C94()
{
  v2 = qword_27CA36B98;
  if (!qword_27CA36B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AA8);
    sub_214BF0B80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36B98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0D38()
{
  v2 = qword_27CA36BA0;
  if (!qword_27CA36BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AB0);
    sub_214BF0C94();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0DDC()
{
  v2 = qword_27CA36BA8;
  if (!qword_27CA36BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AB8);
    sub_214BF0D38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF0E80()
{
  v2 = qword_27CA36BB0;
  if (!qword_27CA36BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36AC0);
    sub_214BF0DDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF0F24(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_214B0755C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  memcpy((a2 + 32), (a1 + 32), 0x70uLL);
  memcpy((a2 + 144), (a1 + 144), 0x29uLL);
  memcpy((a2 + 192), (a1 + 192), 0x29uLL);
  memcpy((a2 + 240), (a1 + 240), 0x29uLL);
  return a2;
}

uint64_t sub_214BF1018(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCF0C4();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A90);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_214BF10B8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A58) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v2 - 8) + 16))();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A98);
  memcpy((a2 + v12 + *(v3 + 36)), (a1 + v12 + *(v3 + 36)), 0x30uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA0);
  v5 = a1 + v12 + *(v4 + 48);
  v6 = a2 + v12 + *(v4 + 48);
  *v6 = *v5;
  *(v6 + 8) = *(v5 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AA8);
  memcpy((a2 + *(v7 + 36)), (a1 + *(v7 + 36)), 0x29uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB0);
  memcpy((a2 + *(v8 + 36)), (a1 + *(v8 + 36)), 0x29uLL);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AB8);
  memcpy((a2 + *(v9 + 36)), (a1 + *(v9 + 36)), 0x29uLL);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36AC0);
  memcpy((a2 + *(v10 + 36)), (a1 + *(v10 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_214BF12DC()
{
  v2 = qword_27CA36BB8;
  if (!qword_27CA36BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A98);
    sub_214B79534();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF1380(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_214BF13E8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35DA8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36A98);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x30uLL);
  return a2;
}

unint64_t sub_214BF14A0()
{
  v2 = qword_27CA36BC8;
  if (!qword_27CA36BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36BC0);
    swift_getOpaqueTypeConformance2();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF1584()
{
  v2 = qword_27CA36BD0;
  if (!qword_27CA36BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF160C()
{
  v2 = qword_27CA36BD8;
  if (!qword_27CA36BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A70);
    sub_214BF1584();
    sub_214B0DB84();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF16B4()
{
  v2 = qword_27CA36BE0;
  if (!qword_27CA36BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A78);
    sub_214BF160C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF1758()
{
  v2 = qword_27CA36BE8;
  if (!qword_27CA36BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A80);
    sub_214BF16B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BF17FC()
{
  v2 = qword_27CA36BF0;
  if (!qword_27CA36BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36A88);
    sub_214BF1758();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36BF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BF18A0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_214B0755C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  memcpy((a2 + 32), (a1 + 32), 0x29uLL);
  memcpy((a2 + 80), (a1 + 80), 0x29uLL);
  return a2;
}

id sub_214BF1960(uint64_t a1)
{
  v3 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

uint64_t sub_214BF1A50()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1AC0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF1B5C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1BCC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF1C68()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1CD8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF1D74()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1DE4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF1E80()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF1EF0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BF1F8C()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF2094();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BF2094()
{
  sub_214A73F68();
  v4 = sub_214A61730();
  v1 = objc_opt_self();
  v2 = *MEMORY[0x277D769D0];
  v3 = [v1 preferredFontForTextStyle_];
  [v4 setFont_];
  [v4 setNumberOfLines_];
  return v4;
}

double sub_214BF2174(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BF220C()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF2314();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BF2314()
{
  sub_214A73F04();
  v7 = sub_214A61730();
  sub_214A731BC();
  MEMORY[0x277D82BE0](@"app.badge");
  sub_214CCF564();
  v8 = sub_214B4D9C8();
  [v7 setImage_];
  MEMORY[0x277D82BD8](v8);
  sub_214A74030();
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D769A8];
  MEMORY[0x277D82BE0](*MEMORY[0x277D769A8]);
  v11 = [v9 _preferredFontForTextStyle_weight_];
  MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    v6 = v11;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v4 = sub_214A74094(v6);
  sub_214A65CE0();
  sub_214CD03C4();
  v2 = v0;
  *v0 = [objc_opt_self() systemRedColor];
  v2[1] = [objc_opt_self() tertiaryLabelColor];
  sub_214A63280();
  v3 = sub_214A79C6C();
  v5 = [v4 configurationByApplyingConfiguration_];
  MEMORY[0x277D82BD8](v3);
  [v7 setPreferredSymbolConfiguration_];
  MEMORY[0x277D82BD8](v5);
  [v7 setContentMode_];
  MEMORY[0x277D82BD8](v7);
  return v7;
}

double sub_214BF2614(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BF26AC()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF27C0();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BF27C0()
{
  sub_214A7802C();
  v7 = sub_214A61730();
  v2 = [objc_opt_self() separatorColor];
  [v7 setBackgroundColor_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 contentScaleFactor];
  v4 = v0;
  (MEMORY[0x277D82BD8])();
  v5 = [v7 heightAnchor];
  v6 = [v5 constraintEqualToConstant_];
  [v6 setActive_];
  MEMORY[0x277D82BD8](v6);
  return v7;
}

double sub_214BF2938(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BF29D0()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF27C0();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF2AE4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF2EFC(1);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF2D6C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF2E04@<D0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF2E70(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF2D6C(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

id sub_214BF2EFC(uint64_t a1)
{
  v29 = a1;
  v13 = 0;
  v14 = sub_214BF4354;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36C50);
  v10 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v21 = &v7 - v10;
  v28 = 0;
  v24 = sub_214CCFEA4();
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v11 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v26 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v25 = &v7 - v12;
  v36 = &v7 - v12;
  v20 = sub_214CCDFA4();
  v18 = *(v20 - 8);
  v19 = v20 - 8;
  v15 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14);
  v17 = &v7 - v15;
  v35 = &v7 - v15;
  v34 = v29;
  v33 = v16;
  sub_214CCDFB4();
  sub_214CCFE74();
  MUIOnboardingTip.primaryActionTitle.getter(v29);
  sub_214CCFE84();
  (*(v18 + 16))(v21, v17, v20);
  (*(v18 + 56))(v21, 0, 1, v20);
  sub_214CCFE34();
  sub_214CCFDF4();
  sub_214BD2A6C();
  (*(v22 + 16))(v26, v25, v24);
  v27 = sub_214CCFEB4();
  v32 = v27;
  *&v4 = MEMORY[0x277D82BE0](v27).n128_u64[0];
  [v27 setContentHorizontalAlignment_];
  v5 = MEMORY[0x277D82BD8](v27);
  v5.n128_u32[0] = 1148846080;
  [v27 setContentHuggingPriority:v28 forAxis:v5.n128_f64[0]];
  v30 = MUIOnboardingTip.primaryAction.getter(v29);
  if (v30)
  {
    v9 = v30;
    v8 = v30;
    v31 = v30;
    [v27 addAction_forControlEvents_];
    MEMORY[0x277D82BD8](v8);
  }

  (*(v22 + 8))(v25, v24);
  (*(v18 + 8))(v17, v20);
  return v27;
}

id MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF3674(1);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF34E4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF357C@<D0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF35E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF34E4(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

id sub_214BF3674(uint64_t a1)
{
  v18 = a1;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = 0;
  v13 = sub_214CCFEA4();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = *(v11 + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v15 = v7 - v8;
  v10 = v8;
  MEMORY[0x28223BE20](v1);
  v14 = v7 - v10;
  v24 = v7 - v10;
  v23 = v2;
  v22 = v3;
  sub_214CCFE74();
  MUIOnboardingTip.secondaryActionTitle.getter(v18);
  sub_214CCFE84();
  sub_214CCFDF4();
  sub_214BD2A6C();
  (*(v11 + 16))(v15, v14, v13);
  v16 = sub_214CCFEB4();
  v21 = v16;
  *&v4 = MEMORY[0x277D82BE0](v16).n128_u64[0];
  [v16 setContentHorizontalAlignment_];
  v5 = MEMORY[0x277D82BD8](v16);
  v5.n128_u32[0] = 1148846080;
  [v16 setContentHuggingPriority:v17 forAxis:v5.n128_f64[0]];
  v19 = MUIOnboardingTip.secondaryAction.getter(v18);
  if (v19)
  {
    v7[1] = v19;
    v7[0] = v19;
    v20 = v19;
    [v16 addAction_forControlEvents_];
    MEMORY[0x277D82BD8](v7[0]);
  }

  (*(v11 + 8))(v14, v13);
  return v16;
}

id MessageListOnboardingTipCollectionViewCell.okButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF2EFC(2);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF3AC4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF3B5C@<D0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.okButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF3BC8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF3AC4(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

id MessageListOnboardingTipCollectionViewCell.customizeButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BF3674(2);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF3E44(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF3EDC@<D0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.customizeButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF3F48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF3E44(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

id MessageListOnboardingTipCollectionViewCell.cancelButton.getter()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  sub_214BD2A6C();
  v4 = sub_214A61730();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double sub_214BF41C4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BF425C@<D0>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BF42C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214BF41C4(v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

uint64_t sub_214BF4354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v5[1] = a1;
  v20 = 0;
  v19 = 0;
  v16 = sub_214CCCFA4();
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v6 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v16);
  v15 = v5 - v6;
  v20 = v5 - v6;
  v19 = v3;
  (*(v12 + 16))(v5 - v6, v2);
  KeyPath = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v7 = objc_opt_self();
  v8 = *MEMORY[0x277D76918];
  MEMORY[0x277D82BE0](v8);
  v9 = [v7 _preferredFontForTextStyle_weight_];
  MEMORY[0x277D82BD8](v8);
  v11 = &v18;
  v18 = v9;
  sub_214BD24A8();
  sub_214CCCF64();
  return (*(v12 + 32))(v14, v15, v16);
}

char *sub_214BF4514(double a1, double a2, double a3, double a4)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  *&v13 = a3;
  *(&v13 + 1) = a4;
  ObjectType = swift_getObjectType();
  v16 = v12;
  v17 = v13;
  v18 = v4;
  v6 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel;
  sub_214A73F68();
  *&v4[v6] = sub_214A61730();
  v7 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel;
  *&v18[v7] = sub_214A61730();
  v8 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView;
  sub_214A7802C();
  *&v18[v8] = sub_214A61730();
  v9 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView;
  sub_214A73FCC();
  *&v18[v9] = sub_214A61730();
  v10 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView;
  *&v18[v10] = sub_214A61730();
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton] = 0;
  *&v18[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton] = 0;
  v15.receiver = v18;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, sel_initWithFrame_, v12, v13);
  MEMORY[0x277D82BE0](v14);
  v18 = v14;
  sub_214BF4794();
  MEMORY[0x277D82BD8](v18);
  return v14;
}

uint64_t sub_214BF4794()
{
  v131 = "Fatal error";
  v132 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v133 = "MailUI/MessageListOnboardingTipCollectionViewCell.swift";
  v201 = 0;
  v200 = 0;
  v196 = 0;
  v195 = 0;
  v189 = 0;
  v187 = 0;
  v182 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8);
  v134 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v0);
  v135 = v33 - v134;
  v169 = 0;
  v136 = sub_214CCFE44();
  v137 = *(v136 - 8);
  v138 = v136 - 8;
  v139 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v169);
  v140 = v33 - v139;
  v167 = sub_214CCFDB4();
  v165 = *(v167 - 8);
  v166 = v167 - 8;
  v141 = (*(v165 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v169);
  v168 = v33 - v141;
  v142 = sub_214CCFEA4();
  v143 = *(v142 - 8);
  v144 = v142 - 8;
  v145 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v142);
  v146 = v33 - v145;
  v201 = v33 - v145;
  v200 = v1;
  v155 = &qword_27CA36000;
  v147 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  v148 = &v199;
  v157 = 32;
  v158 = 0;
  swift_beginAccess();
  v151 = *v147;
  MEMORY[0x277D82BE0](v151);
  swift_endAccess();
  sub_214CCF614();
  v149 = v2;
  v150 = sub_214CCF544();

  [v151 setText_];
  MEMORY[0x277D82BD8](v150);
  MEMORY[0x277D82BD8](v151);
  v152 = &v156[v155[384]];
  v153 = &v198;
  swift_beginAccess();
  v154 = *v152;
  MEMORY[0x277D82BE0](v154);
  swift_endAccess();
  [v154 setNumberOfLines_];
  MEMORY[0x277D82BD8](v154);
  v159 = &v156[v155[384]];
  v160 = &v197;
  swift_beginAccess();
  v164 = *v159;
  MEMORY[0x277D82BE0](v164);
  swift_endAccess();
  v170 = 0x277D74000uLL;
  v161 = objc_opt_self();
  v162 = *MEMORY[0x277D76918];
  MEMORY[0x277D82BE0](v162);
  v3 = *MEMORY[0x277D74420];
  v172 = 0x1FBACF000uLL;
  v163 = [v161 0x1FBACF65ALL];
  *&v4 = MEMORY[0x277D82BD8](v162).n128_u64[0];
  [v164 setFont_];
  MEMORY[0x277D82BD8](v163);
  MEMORY[0x277D82BD8](v164);
  sub_214CCFE94();
  (*(v165 + 104))(v168, *MEMORY[0x277D74FD8], v167);
  sub_214CCFDC4();
  v171 = sub_214A74030();
  v173 = objc_opt_self();
  v174 = *MEMORY[0x277D76968];
  MEMORY[0x277D82BE0](v174);
  v175 = [v173 (v172 + 1626)];
  MEMORY[0x277D82BD8](v174);
  if (v175)
  {
    v130 = v175;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v129 = sub_214A74094(v130);
  v196 = v129;
  v89 = 1;
  v128 = sub_214BCD550(1);
  v195 = v128;
  *&v5 = MEMORY[0x277D82BE0](v128).n128_u64[0];
  v33[1] = [v129 configurationByApplyingConfiguration_];
  MEMORY[0x277D82BD8](v128);
  sub_214CCFD94();
  (*(v137 + 104))(v140, *MEMORY[0x277D75028], v136);
  sub_214CCFDA4();
  v87 = 0;
  sub_214A731BC();
  v122 = 1;
  sub_214CCF614();
  sub_214B4D9C8();
  sub_214CCFE64();
  v34 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  (*(v143 + 16))(v135, v146, v142);
  v6 = *(v143 + 56);
  v91 = 0;
  v6(v135);
  sub_214CCFED4();
  MEMORY[0x277D82BD8](v34);
  v7 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  v8 = v156;
  v35 = v7;
  LODWORD(v9) = 1148846080;
  [v7 setContentHuggingPriority:v87 forAxis:v9];
  MEMORY[0x277D82BD8](v35);
  v60 = &qword_27CA36000;
  v36 = &v8[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel];
  v37 = &v194;
  v116 = 32;
  v117 = 0;
  swift_beginAccess();
  v40 = *v36;
  MEMORY[0x277D82BE0](v40);
  swift_endAccess();
  sub_214CCF614();
  v38 = v10;
  v39 = sub_214CCF544();

  [v40 setText_];
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  v41 = &v8[v60[385]];
  v42 = &v193;
  swift_beginAccess();
  v46 = *v41;
  MEMORY[0x277D82BE0](v46);
  swift_endAccess();
  v43 = objc_opt_self();
  v44 = *MEMORY[0x277D769D0];
  *&v11 = MEMORY[0x277D82BE0](v44).n128_u64[0];
  v45 = [v43 preferredFontForTextStyle_];
  *&v12 = MEMORY[0x277D82BD8](v44).n128_u64[0];
  [v46 setFont_];
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  v47 = &v8[v60[385]];
  v48 = &v192;
  swift_beginAccess();
  v50 = *v47;
  MEMORY[0x277D82BE0](v50);
  swift_endAccess();
  v49 = [objc_opt_self() secondaryLabelColor];
  [v50 setTextColor_];
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  v51 = &v8[v60[385]];
  v52 = &v191;
  swift_beginAccess();
  v53 = *v51;
  MEMORY[0x277D82BE0](v53);
  swift_endAccess();
  [v53 setNumberOfLines_];
  MEMORY[0x277D82BD8](v53);
  v66 = sub_214A73FCC();
  v84 = sub_214A7802C();
  v59 = 2;
  v58 = sub_214CD03C4();
  v57 = v13;
  v54 = &v8[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel];
  v55 = &v190;
  swift_beginAccess();
  v56 = *v54;
  MEMORY[0x277D82BE0](v56);
  swift_endAccess();
  *v57 = v56;
  v57[1] = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  sub_214A63280();
  v127 = sub_214BE74DC();
  v189 = v127;
  v86 = 0x1FB0ED000uLL;
  [v127 0x1FB0EDBF8];
  v88 = 0x1FA9B9000uLL;
  [v127 0x1FA9B94F8];
  *&v14 = MEMORY[0x277D82BE0](v127).n128_u64[0];
  v90 = 0x1FAECA000uLL;
  [v127 0x1FAECA5BALL];
  MEMORY[0x277D82BD8](v127);
  MEMORY[0x277D82BE0](v127);
  v111 = 0x1FAAAA000uLL;
  v112 = 10.0;
  v188[3] = 10.0;
  v114 = 16.0;
  v188[4] = 16.0;
  v113 = 14.0;
  v188[5] = 14.0;
  v188[6] = 16.0;
  [v127 0x1FAAAAAF8];
  MEMORY[0x277D82BD8](v127);
  v65 = sub_214CD03C4();
  v63 = v15;
  MEMORY[0x277D82BE0](v127);
  v16 = v60;
  v17 = v156;
  *v63 = v127;
  v61 = &v17[v16[385]];
  v62 = v188;
  swift_beginAccess();
  v64 = *v61;
  MEMORY[0x277D82BE0](v64);
  swift_endAccess();
  v63[1] = v64;
  sub_214A63280();
  v126 = sub_214BE74DC();
  v187 = v126;
  [v126 (v86 + 3064)];
  v92 = 0x1FA943000uLL;
  v93 = 8.0;
  [v126 0x1FA943B0ALL];
  *&v18 = MEMORY[0x277D82BE0](v126).n128_u64[0];
  [v126 (v90 + 1466)];
  MEMORY[0x277D82BD8](v126);
  *&v19 = MEMORY[0x277D82BE0](v156).n128_u64[0];
  v120 = 0x1FB774000uLL;
  v67 = [v156 0x1FB774AF8];
  *&v20 = MEMORY[0x277D82BD8](v156).n128_u64[0];
  v108 = 0x1FAB99000uLL;
  [v67 0x1FAB997F8];
  MEMORY[0x277D82BD8](v67);
  *&v21 = MEMORY[0x277D82BE0](v156).n128_u64[0];
  v68 = [v156 (v120 + 2808)];
  *&v22 = MEMORY[0x277D82BD8](v156).n128_u64[0];
  v121 = 0x1FC5D2000uLL;
  [v126 0x1FC5D2B59];
  MEMORY[0x277D82BD8](v68);
  v115 = &qword_27CA36000;
  v69 = &v156[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView];
  v70 = &v186;
  swift_beginAccess();
  v71 = *v69;
  MEMORY[0x277D82BE0](v71);
  swift_endAccess();
  [v71 (v90 + 1466)];
  MEMORY[0x277D82BD8](v71);
  v72 = &v156[v115[386]];
  v73 = &v185;
  swift_beginAccess();
  v74 = *v72;
  MEMORY[0x277D82BE0](v74);
  swift_endAccess();
  v78 = 0x1FADAE000uLL;
  v75 = [v74 0x1FADAE878];
  MEMORY[0x277D82BD8](v74);
  [v75 setCornerRadius_];
  MEMORY[0x277D82BD8](v75);
  v76 = &v156[v115[386]];
  v77 = &v184;
  swift_beginAccess();
  v79 = *v76;
  MEMORY[0x277D82BE0](v79);
  swift_endAccess();
  v80 = [v79 (v78 + 2168)];
  *&v23 = MEMORY[0x277D82BD8](v79).n128_u64[0];
  [v80 setMasksToBounds_];
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BE0](v126);
  v81 = &v156[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView];
  v82 = &v183;
  v94 = 33;
  swift_beginAccess();
  v24 = *v81;
  *v81 = v126;
  MEMORY[0x277D82BD8](v24);
  swift_endAccess();
  v85 = sub_214CD03C4();
  v83 = v25;
  MEMORY[0x277D82BE0](v126);
  *v83 = v126;
  sub_214A63280();
  v125 = sub_214BE74DC();
  v182 = v125;
  [v125 (v86 + 3064)];
  [v125 (v88 + 1272)];
  *&v26 = MEMORY[0x277D82BE0](v125).n128_u64[0];
  [v125 (v90 + 1466)];
  MEMORY[0x277D82BD8](v125);
  [v125 (v92 + 2826)];
  MEMORY[0x277D82BE0](v125);
  v95 = &v156[OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView];
  v96 = &v181;
  swift_beginAccess();
  v27 = *v95;
  *v95 = v125;
  MEMORY[0x277D82BD8](v27);
  swift_endAccess();
  v97 = &v156[v115[386]];
  v98 = &v180;
  swift_beginAccess();
  v99 = *v97;
  MEMORY[0x277D82BE0](v99);
  swift_endAccess();
  [v99 (v108 + 2040)];
  MEMORY[0x277D82BD8](v99);
  v100 = &v156[v115[386]];
  v101 = &v179;
  swift_beginAccess();
  v102 = *v100;
  MEMORY[0x277D82BE0](v102);
  swift_endAccess();
  *&v178[3] = v114;
  v178[4] = 22.0;
  v178[5] = 22.0;
  *&v178[6] = v114;
  [v102 (v111 + 2808)];
  MEMORY[0x277D82BD8](v102);
  v103 = &v156[v115[386]];
  v104 = v178;
  swift_beginAccess();
  v105 = *v103;
  MEMORY[0x277D82BE0](v105);
  swift_endAccess();
  [v125 (v121 + 2905)];
  MEMORY[0x277D82BD8](v105);
  *&v28 = MEMORY[0x277D82BE0](v156).n128_u64[0];
  v110 = [v156 (v120 + 2808)];
  MEMORY[0x277D82BD8](v156);
  v106 = &v156[v115[386]];
  v107 = &v177;
  swift_beginAccess();
  v109 = *v106;
  MEMORY[0x277D82BE0](v109);
  swift_endAccess();
  [v110 (v108 + 2040)];
  MEMORY[0x277D82BD8](v109);
  MEMORY[0x277D82BD8](v110);
  MEMORY[0x277D82BE0](v156);
  *&v176[3] = v112;
  *&v176[4] = v114;
  *&v176[5] = v113;
  *&v176[6] = v114;
  [v156 (v111 + 2808)];
  MEMORY[0x277D82BD8](v156);
  v118 = &v156[v115[386]];
  v119 = v176;
  swift_beginAccess();
  v124 = *v118;
  MEMORY[0x277D82BE0](v124);
  swift_endAccess();
  *&v29 = MEMORY[0x277D82BE0](v156).n128_u64[0];
  v123 = [v156 (v120 + 2808)];
  *&v30 = MEMORY[0x277D82BD8](v156).n128_u64[0];
  [v124 (v121 + 2905)];
  MEMORY[0x277D82BD8](v123);
  MEMORY[0x277D82BD8](v124);
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](v126);
  MEMORY[0x277D82BD8](v127);
  MEMORY[0x277D82BD8](v128);
  v31 = MEMORY[0x277D82BD8](v129);
  return (*(v143 + 8))(v146, v142, v31);
}

void sub_214BF5C18()
{
  v0 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel;
  sub_214A73F68();
  *v0 = sub_214A61730();
  v1 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel;
  *v1 = sub_214A61730();
  v2 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView;
  sub_214A7802C();
  *v2 = sub_214A61730();
  v3 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView;
  sub_214A73FCC();
  *v3 = sub_214A61730();
  v4 = OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView;
  *v4 = sub_214A61730();
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___infoLabel = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___appBadgeImageView = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___primarySeparator = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___secondarySeparator = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___tryCategoriesButton = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___turnOffCategoriesButton = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___okButton = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___customizeButton = 0;
  *OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell____lazy_storage___cancelButton = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

double MessageListOnboardingTipCollectionViewCell.configure(forBucket:primaryUnreadCount:otherUnreadCount:)(uint64_t a1, Swift::Int a2, Swift::Int a3)
{
  v245 = a1;
  v243 = a2;
  v244 = a3;
  v252 = 0;
  v242 = sub_214BF7C40;
  v297 = 0;
  v296 = 0;
  v295 = 0;
  v294 = 0;
  v293 = 0;
  v283 = 0;
  v282 = 0;
  v273 = 0;
  v272 = 0;
  v269 = 0;
  v270 = 0;
  v260 = 0;
  v259 = 0;
  v246 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v245);
  v247 = &v56 - v246;
  v248 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v249 = &v56 - v248;
  v250 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v251 = &v56 - v250;
  v297 = v8;
  v296 = v9;
  v295 = v10;
  v294 = v3;
  v256 = sub_214C63994(v8);
  v293 = v256;
  v253 = (v3 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  v255 = &v292;
  swift_beginAccess();
  v254 = *v253;
  MEMORY[0x277D82BE0](v254);
  swift_endAccess();
  v257 = MUIOnboardingTip.title.getter(v256);
  v258 = v11;
  if (v11)
  {
    v239 = v257;
    v240 = v258;
    v236 = v258;
    v237 = sub_214CCF544();

    v238 = v237;
  }

  else
  {
    v238 = 0;
  }

  v224 = v238;
  [v254 setText_];
  MEMORY[0x277D82BD8](v224);
  MEMORY[0x277D82BD8](v254);
  v225 = (v241 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  v226 = &v291;
  v229 = 32;
  v230 = 0;
  swift_beginAccess();
  v228 = *v225;
  MEMORY[0x277D82BE0](v228);
  swift_endAccess();
  v227 = MUIOnboardingTip.titleColor.getter(v256);
  [v228 setTextColor_];
  MEMORY[0x277D82BD8](v227);
  MEMORY[0x277D82BD8](v228);
  v231 = (v241 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
  v233 = &v290;
  swift_beginAccess();
  v232 = *v231;
  MEMORY[0x277D82BE0](v232);
  swift_endAccess();
  v234 = MUIOnboardingTip.message.getter(v256);
  v235 = v12;
  if (v12)
  {
    v222 = v234;
    v223 = v235;
    v219 = v235;
    v220 = sub_214CCF544();

    v221 = v220;
  }

  else
  {
    v221 = 0;
  }

  v13 = v241;
  v192 = v221;
  [v232 setText_];
  MEMORY[0x277D82BD8](v192);
  MEMORY[0x277D82BD8](v232);
  v203 = &qword_27CA36000;
  v193 = (v13 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
  v194 = &v289;
  v208 = 32;
  v209 = 0;
  swift_beginAccess();
  v196 = *v193;
  MEMORY[0x277D82BE0](v196);
  swift_endAccess();
  v195 = MUIOnboardingTip.subtitleColor.getter(v256);
  v197 = 0x1FB30B000uLL;
  [v196 0x1FB30BC78];
  MEMORY[0x277D82BD8](v195);
  MEMORY[0x277D82BD8](v196);
  v14 = sub_214BF1F8C();
  v15 = v241;
  v199 = v14;
  v198 = MUIOnboardingTip.subtitleColor.getter(v256);
  [v199 (v197 + 3192)];
  MEMORY[0x277D82BD8](v198);
  MEMORY[0x277D82BD8](v199);
  v200 = (v15 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_titleLabel);
  v201 = &v288;
  swift_beginAccess();
  v202 = *v200;
  MEMORY[0x277D82BE0](v202);
  swift_endAccess();
  v16 = MUIOnboardingTip.preferredLabelVibrancy.getter();
  v206 = 0x1FBB95000uLL;
  [v202 0x1FBB95950];
  MEMORY[0x277D82BD8](v202);
  v204 = (v15 + v203[385]);
  v205 = &v287;
  swift_beginAccess();
  v207 = *v204;
  MEMORY[0x277D82BE0](v207);
  swift_endAccess();
  [v207 (v206 + 2384)];
  MEMORY[0x277D82BD8](v207);
  v210 = (v15 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView);
  v211 = &v286;
  swift_beginAccess();
  v213 = *v210;
  MEMORY[0x277D82BE0](v213);
  swift_endAccess();
  v212 = MUIOnboardingTip.backgroundColor.getter(v256);
  [v213 setBackgroundColor_];
  MEMORY[0x277D82BD8](v212);
  MEMORY[0x277D82BD8](v213);
  v214 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  sub_214CCFEC4();
  v215 = sub_214CCFEA4();
  v17 = *(v215 - 8);
  v216 = *(v17 + 48);
  v217 = v17 + 48;
  if (v216(v251, 1) == 0)
  {
    v191 = MUIOnboardingTip.titleColor.getter(v256);
    if (v191)
    {
      v190 = v191;
      v187 = v191;
      v188 = [v191 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v187);
      v189 = v188;
    }

    else
    {
      v189 = 0;
    }

    sub_214CCFE24();
    sub_214CCFED4();
    MEMORY[0x277D82BD8](v214);
  }

  else
  {
    sub_214BD2598(v251, v247);
    sub_214CCFED4();
    sub_214BD26C0(v251);
    MEMORY[0x277D82BD8](v214);
  }

  v185 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  sub_214CCFEC4();
  if ((v216)(v249, 1, v215) == 0)
  {
    v184 = MUIOnboardingTip.titleColor.getter(v256);
    if (v184)
    {
      v183 = v184;
      v180 = v184;
      v181 = [v184 colorWithAlphaComponent_];
      MEMORY[0x277D82BD8](v180);
      v182 = v181;
    }

    else
    {
      v182 = 0;
    }

    sub_214CCFE14();
    sub_214CCFED4();
    MEMORY[0x277D82BD8](v185);
  }

  else
  {
    sub_214BD2598(v249, v247);
    sub_214CCFED4();
    sub_214BD26C0(v249);
    MEMORY[0x277D82BD8](v185);
  }

  v178 = MUIOnboardingTip.information.getter();
  v179 = v18;
  if (v18)
  {
    v176 = v178;
    v177 = v179;
    v171 = v179;
    v172 = v178;
    v269 = v178;
    v270 = v179;
    v175 = &v268;
    v268 = v256;
    v173 = &v267;
    v267 = 1;
    v174 = type metadata accessor for MUIOnboardingTip();
    sub_214B04028();
    v19 = sub_214CD03F4();
    if (v19)
    {
      v137 = sub_214BF1F8C();
      v168 = 1;
      v131 = sub_214CCF614();
      v135 = v20;
      v134 = @"ellipsis.circle";
      MEMORY[0x277D82BE0](@"ellipsis.circle");
      v130 = sub_214CCF564();
      v133 = v21;
      v132 = MUIOnboardingTip.titleColor.getter(v256);
      v136 = sub_214BF7698(v131, v135, v172, v171, v130, v133, v132);
      MEMORY[0x277D82BD8](v132);

      MEMORY[0x277D82BD8](v134);

      [v137 setAttributedText_];
      MEMORY[0x277D82BD8](v136);
      MEMORY[0x277D82BD8](v137);
      v22 = sub_214BF1F8C();
      v23 = v241;
      v139 = v22;
      v138 = MUIOnboardingTip.titleColor.getter(v256);
      [v139 setTextColor_];
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v139);
      v160 = &qword_27CA36000;
      v140 = (v23 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
      v141 = &v266;
      v161 = 32;
      v162 = 0;
      swift_beginAccess();
      v143 = *v140;
      MEMORY[0x277D82BE0](v143);
      swift_endAccess();
      v24 = sub_214BF1F8C();
      v25 = v241;
      v142 = v24;
      v165 = 0x1FBB16000uLL;
      [v143 0x1FBB16380];
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](v143);
      v144 = (v25 + v160[388]);
      v145 = &v265;
      swift_beginAccess();
      v147 = *v144;
      MEMORY[0x277D82BE0](v147);
      swift_endAccess();
      v26 = sub_214BF1F8C();
      v27 = v241;
      v146 = v26;
      [v147 setCustomSpacing:20.0 afterView:?];
      MEMORY[0x277D82BD8](v146);
      MEMORY[0x277D82BD8](v147);
      v148 = (v27 + v160[388]);
      v149 = &v264;
      swift_beginAccess();
      v151 = *v148;
      MEMORY[0x277D82BE0](v151);
      swift_endAccess();
      v28 = sub_214BF26AC();
      v29 = v241;
      v150 = v28;
      [v151 (v165 + 896)];
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](v151);
      v152 = (v29 + v160[388]);
      v153 = &v263;
      swift_beginAccess();
      v155 = *v152;
      MEMORY[0x277D82BE0](v155);
      swift_endAccess();
      v30 = MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter();
      v31 = v241;
      v154 = v30;
      [v155 (v165 + 896)];
      MEMORY[0x277D82BD8](v154);
      MEMORY[0x277D82BD8](v155);
      v156 = (v31 + v160[388]);
      v157 = &v262;
      swift_beginAccess();
      v159 = *v156;
      MEMORY[0x277D82BE0](v159);
      swift_endAccess();
      v32 = sub_214BF29D0();
      v33 = v241;
      v158 = v32;
      [v159 (v165 + 896)];
      MEMORY[0x277D82BD8](v158);
      MEMORY[0x277D82BD8](v159);
      v163 = (v33 + v160[388]);
      v164 = &v261;
      swift_beginAccess();
      v167 = *v163;
      MEMORY[0x277D82BE0](v167);
      swift_endAccess();
      v166 = MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter();
      [v167 (v165 + 896)];
      MEMORY[0x277D82BD8](v166);
      MEMORY[0x277D82BD8](v167);
      v169 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
      [v169 setHidden_];
      MEMORY[0x277D82BD8](v169);
      v170 = MUIOnboardingTip.primaryAction.getter(v256);
      if (v170)
      {
        v129 = v170;
        v128 = v170;
        v259 = v170;
        v127 = MessageListOnboardingTipCollectionViewCell.tryCategoriesButton.getter();
        [v127 addAction:v128 forControlEvents:64];
        MEMORY[0x277D82BD8](v127);
        MEMORY[0x277D82BD8](v128);
      }

      v126 = MUIOnboardingTip.secondaryAction.getter(v256);
      if (v126)
      {
        v125 = v126;
        v124 = v126;
        v260 = v126;
        v123 = MessageListOnboardingTipCollectionViewCell.turnOffCategoriesButton.getter();
        [v123 addAction:v124 forControlEvents:64];
        MEMORY[0x277D82BD8](v123);
        MEMORY[0x277D82BD8](v124);
      }

      goto LABEL_36;
    }
  }

  v122 = &v285;
  v285 = v256;
  v120 = &v284;
  v284 = 2;
  v121 = type metadata accessor for MUIOnboardingTip();
  sub_214B04028();
  if (sub_214CD03F4())
  {
    v117 = (v241 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_subtitleLabel);
    v119 = &v281;
    swift_beginAccess();
    v118 = *v117;
    MEMORY[0x277D82BE0](v118);
    v282 = v118;
    swift_endAccess();
    if (v243 > 0 || v244 > 0)
    {
      v34 = sub_214BF1F8C();
      v35 = v241;
      v111 = v34;
      object = MUIOnboardingTip.badgeCountInformationLabel(withPrimaryUnreadCount:otherUnreadCount:)(v243, v244)._object;
      v110 = sub_214CCF544();

      [v111 setText_];
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v111);
      v112 = (v35 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
      v113 = &v271;
      swift_beginAccess();
      v115 = *v112;
      MEMORY[0x277D82BE0](v115);
      swift_endAccess();
      v114 = sub_214BF1F8C();
      [v115 addArrangedSubview_];
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v115);
      v36 = sub_214BF1F8C();
      v37 = v282;
      v282 = v36;
      MEMORY[0x277D82BD8](v37);
    }

    v38 = v241;
    v98 = &qword_27CA36000;
    v70 = (v241 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_verticalStackView);
    v71 = &v280;
    v99 = 32;
    v100 = 0;
    swift_beginAccess();
    v73 = *v70;
    MEMORY[0x277D82BE0](v73);
    swift_endAccess();
    v72 = v282;
    MEMORY[0x277D82BE0](v282);
    [v73 setCustomSpacing:v72 afterView:20.0];
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    v74 = (v38 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_tipContentView);
    v75 = &v279;
    swift_beginAccess();
    v76 = *v74;
    MEMORY[0x277D82BE0](v76);
    swift_endAccess();
    [v76 layoutMargins];
    *&v278[7] = v39;
    v278[8] = v40;
    *&v278[9] = v41;
    *&v278[10] = v42;
    *&v278[3] = v39;
    v278[4] = 0x4023555555555555;
    *&v278[5] = v41;
    *&v278[6] = v42;
    [v76 setLayoutMargins_];
    MEMORY[0x277D82BD8](v76);
    v77 = (v38 + v98[388]);
    v78 = v278;
    swift_beginAccess();
    v80 = *v77;
    MEMORY[0x277D82BE0](v80);
    swift_endAccess();
    v43 = sub_214BF26AC();
    v44 = v241;
    v79 = v43;
    v103 = 0x1FBB16000uLL;
    [v80 0x1FBB16380];
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v80);
    v81 = (v44 + OBJC_IVAR____TtC6MailUI42MessageListOnboardingTipCollectionViewCell_horizontalStackView);
    v82 = &v277;
    swift_beginAccess();
    v84 = *v81;
    MEMORY[0x277D82BE0](v84);
    swift_endAccess();
    v83 = sub_214BF220C();
    [v84 insertArrangedSubview_atIndex_];
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    v85 = sub_214BF220C();
    v88 = [v85 widthAnchor];
    MEMORY[0x277D82BD8](v85);
    v45 = sub_214BF220C();
    v46 = v241;
    v86 = v45;
    [v45 intrinsicContentSize];
    *&v276[3] = v47;
    v276[4] = v48;
    v87 = v47;
    MEMORY[0x277D82BD8](v86);
    v89 = [v88 constraintEqualToConstant_];
    *&v49 = MEMORY[0x277D82BD8](v88).n128_u64[0];
    v106 = 1;
    [v89 setActive_];
    MEMORY[0x277D82BD8](v89);
    v90 = (v46 + v98[388]);
    v91 = v276;
    swift_beginAccess();
    v93 = *v90;
    MEMORY[0x277D82BE0](v93);
    swift_endAccess();
    v50 = MessageListOnboardingTipCollectionViewCell.okButton.getter();
    v51 = v241;
    v92 = v50;
    [v93 (v103 + 896)];
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    v94 = (v51 + v98[388]);
    v95 = &v275;
    swift_beginAccess();
    v97 = *v94;
    MEMORY[0x277D82BE0](v97);
    swift_endAccess();
    v52 = sub_214BF29D0();
    v53 = v241;
    v96 = v52;
    [v97 (v103 + 896)];
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    v101 = (v53 + v98[388]);
    v102 = &v274;
    swift_beginAccess();
    v105 = *v101;
    MEMORY[0x277D82BE0](v105);
    swift_endAccess();
    v104 = MessageListOnboardingTipCollectionViewCell.customizeButton.getter();
    [v105 (v103 + 896)];
    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);
    v107 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
    [v107 setHidden_];
    MEMORY[0x277D82BD8](v107);
    v108 = MUIOnboardingTip.primaryAction.getter(v256);
    if (v108)
    {
      v69 = v108;
      v68 = v108;
      v272 = v108;
      v67 = MessageListOnboardingTipCollectionViewCell.okButton.getter();
      [v67 addAction:v68 forControlEvents:64];
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v68);
    }

    v66 = MUIOnboardingTip.secondaryAction.getter(v256);
    if (v66)
    {
      v65 = v66;
      v64 = v66;
      v273 = v66;
      v63 = MessageListOnboardingTipCollectionViewCell.customizeButton.getter();
      [v63 addAction:v64 forControlEvents:64];
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v64);
    }

    MEMORY[0x277D82BD8](v282);
  }

LABEL_36:
  v59 = 0;
  sub_214BD1DB0();
  v57 = swift_allocObject();
  *(v57 + 16) = v256;
  v60 = sub_214B1C228();
  v58 = v54;
  v56 = sub_214BD2BD8();
  sub_214A73344();
  v62 = sub_214CCFD84();
  v283 = v62;
  v61 = MessageListOnboardingTipCollectionViewCell.cancelButton.getter();
  [v61 addAction:v62 forControlEvents:64];
  MEMORY[0x277D82BD8](v61);
  *&result = MEMORY[0x277D82BD8](v62).n128_u64[0];
  return result;
}

id sub_214BF7698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v34 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v40 = a1;
  v41 = a2;
  v38 = a3;
  v39 = a4;
  v36 = a5;
  v37 = a6;
  v35 = a7;
  v32 = a3;
  v33 = a4;
  v30 = a1;
  v31 = a2;
  sub_214B075A0();
  v29 = sub_214CCFF84();
  sub_214BD299C();
  v21 = sub_214A61730();
  v28 = v21;
  if (sub_214CCF854() == 2)
  {
    sub_214AF7FCC();
    sub_214CCF914();
    v17 = sub_214BC9508();
    v27 = v17;
    [v21 appendAttributedString_];
    sub_214BF7CB0();
    v18 = sub_214A61730();
    v26 = v18;
    sub_214A731BC();

    v19 = sub_214B4D9C8();
    if (v19)
    {
      *&v8 = MEMORY[0x277D82BE0](a7).n128_u64[0];
      v22 = a7;
      if (a7)
      {
        v23 = v22;
      }

      else
      {
        v23 = [objc_opt_self() secondaryLabelColor];
      }

      v14 = v23;
      v15 = [v19 imageWithTintColor_];
      MEMORY[0x277D82BD8](v14);
      *&v7 = MEMORY[0x277D82BD8](v19).n128_u64[0];
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [v18 setImage_];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BE0](v18);
    v11 = sub_214BF1960(v18);
    v25 = v11;
    [v21 0x1FB92B19BLL];
    sub_214CCF914();
    v10 = sub_214BC9508();
    v24 = v10;
    [v21 0x1FB92B19BLL];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);

    return v21;
  }

  else
  {
    sub_214AF7FCC();

    v12 = sub_214BC9508();
    MEMORY[0x277D82BD8](v21);

    return v12;
  }
}

void sub_214BF7A88(uint64_t a1, uint64_t a2)
{
  v8 = MUIOnboardingTipKeyForTip(a2);
  if (v8)
  {
    sub_214CCF564();
    v6 = v2;
    MEMORY[0x277D82BD8](v8);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v3 = [objc_opt_self() em_userDefaults];
    v5 = v3;
    if (v3)
    {

      v4 = sub_214CCF544();

      [v5 setInteger:1 forKey:v4];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
    }
  }
}

unint64_t sub_214BF7CB0()
{
  v2 = qword_280C7CBB8;
  if (!qword_280C7CBB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CBB8);
    return ObjCClassMetadata;
  }

  return v2;
}

id MessageListOnboardingTipCollectionViewCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214BF7F04()
{
  v2 = (v0 + OBJC_IVAR___MUIAboutCategoriesViewController_daemonInterface);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF7F74(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAboutCategoriesViewController_daemonInterface);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF8010()
{
  v2 = (v0 + OBJC_IVAR___MUIAboutCategoriesViewController_provider);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BF8080(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAboutCategoriesViewController_provider);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BF811C()
{
  v2 = (v0 + OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BF8184(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214BF8278()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_214BF8348()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id sub_214BF83C8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDaemonInterface:a1 delegate:a2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v4;
}

char *sub_214BF8430(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = a1;
  v7 = a2;
  *OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView = 0;
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BE0](a1);
  *&v9[OBJC_IVAR___MUIAboutCategoriesViewController_daemonInterface] = a1;
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  v3 = v9;
  type metadata accessor for AboutCategoriesStatisticsProvider();
  MEMORY[0x277D82BE0](a1);
  *&v3[OBJC_IVAR___MUIAboutCategoriesViewController_provider] = sub_214B0E238(a1);
  v6.receiver = v9;
  v6.super_class = MUIAboutCategoriesViewController;
  v5 = objc_msgSendSuper2(&v6, sel_initWithNibName_bundle_, 0);
  MEMORY[0x277D82BE0](v5);
  v9 = v5;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v9);
  return v5;
}

id MUIAboutCategoriesViewController.init(coder:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

void MUIAboutCategoriesViewController.init(coder:)()
{
  *OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView = 0;
  swift_unknownObjectWeakInit();
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

Swift::Void __swiftcall MUIAboutCategoriesViewController.viewDidLoad()()
{
  v43 = 0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v42.receiver = v0;
  v42.super_class = MUIAboutCategoriesViewController;
  objc_msgSendSuper2(&v42, sel_viewDidLoad, v1);
  (MEMORY[0x277D82BD8])();
  sub_214CCF614();
  sub_214CCF614();
  v28 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614();
  v27 = v2;
  sub_214B1C228();
  v31 = sub_214CCCF54();
  v32 = v3;

  MEMORY[0x277D82BD8](v28);

  type metadata accessor for AboutCategoriesView.ViewModel();

  sub_214CCF614();
  sub_214CCF614();
  v30 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614();
  v29 = v4;
  sub_214B1C228();
  v33 = sub_214CCCF54();
  v34 = v5;

  MEMORY[0x277D82BD8](v30);

  v35 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  memset(__src, 0, sizeof(__src));
  memcpy(__dst, __src, sizeof(__dst));
  v36 = sub_214B142FC(v31, v32, v33, v34, sub_214BF916C, v35, __dst);

  v38 = nullsub_1(v36);
  v37 = &v40[OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView];
  swift_beginAccess();
  *v37 = v38;

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36C98);
  swift_beginAccess();

  swift_endAccess();
  v39 = sub_214CCE5A4();
  [v40 addChildViewController_];
  v41 = [v40 view];
  (MEMORY[0x277D82BD8])();
  if (v41)
  {
    v26 = v41;
  }

  else
  {
    LOBYTE(v9) = 2;
    v12 = 65;
    LODWORD(v15) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v25 = [v39 view];
  *&v6 = MEMORY[0x277D82BD8](v39).n128_u64[0];
  if (v25)
  {
    v24 = v25;
  }

  else
  {
    LOBYTE(v9) = 2;
    v12 = 65;
    LODWORD(v15) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v26 addSubview_];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v26);
  v23 = [v39 view];
  *&v7 = MEMORY[0x277D82BD8](v39).n128_u64[0];
  if (v23)
  {
    v22 = v23;
  }

  else
  {
    LOBYTE(v10) = 2;
    v13 = 67;
    LODWORD(v16) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v22);
  v21 = [v39 view];
  MEMORY[0x277D82BD8](v39);
  if (v21)
  {
    v20 = v21;
  }

  else
  {
    LOBYTE(v11) = 2;
    v14 = 69;
    LODWORD(v17) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v19 = [v40 view];
  *&v8 = (MEMORY[0x277D82BD8])().n128_u64[0];
  if (v19)
  {
    v18 = v19;
  }

  else
  {
    LOBYTE(v11) = 2;
    v14 = 69;
    LODWORD(v17) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  [v20 mf:v8 pinToView:v11 usingLayoutMargins:{v14, v17}];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v20);
  [v39 didMoveToParentViewController_];
  (MEMORY[0x277D82BD8])();
  MEMORY[0x277D82BD8](v39);
}

double sub_214BF90B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    [Strong dismissViewControllerAnimated:1 completion:0];
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

Swift::Void __swiftcall MUIAboutCategoriesViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v6 = a1;
  v5 = v1;
  *&v2 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v4.receiver = v1;
  v4.super_class = MUIAboutCategoriesViewController;
  objc_msgSendSuper2(&v4, sel_viewWillAppear_, a1, v2);
  (MEMORY[0x277D82BD8])();
  sub_214BF9258();
}

double sub_214BF9258()
{
  v2 = (v0 + OBJC_IVAR___MUIAboutCategoriesViewController_provider);
  swift_beginAccess();
  v4 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  v3 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  sub_214B0E368(sub_214BFA6A8, v3);

  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t *sub_214BF93DC(uint64_t *a1)
{
  v21 = a1;
  v20 = v1;
  v13 = sub_214BF95F4(a1);
  v14 = sub_214BF97CC();
  v15 = v2;
  v16 = v3;
  v12 = v4;
  v24 = a1[12];
  sub_214BF996C(v24 == 0, v22);
  v5 = sub_214BF9B68(a1[12]);
  sub_214B153C8(v22, v13, v14, v15, v16, v12, v5, v6, v23, v7, v8);
  memcpy(__dst, v23, sizeof(__dst));
  v17 = (v11 + OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView);
  swift_beginAccess();
  if (!*v17)
  {
    sub_214CD01F4();
    __break(1u);
  }

  swift_endAccess();
  sub_214B1ACA8(v23, v18);
  memcpy(v19, __dst, sizeof(v19));
  memcpy(v25, v19, sizeof(v25));
  sub_214B13B98(v25);

  result = v23;
  sub_214B14E3C();
  return result;
}

uint64_t sub_214BF95F4(uint64_t *a1)
{
  v12 = sub_214CD03C4();
  __dst = v1;
  v3 = *a1;

  sub_214BFB0E4(v3, a1[13], v13);

  memcpy(__dst, v13, 0x48uLL);
  v4 = a1[3];
  v5 = a1[4];

  sub_214BFB348(v4, v5, v14);

  memcpy(__dst + 72, v14, 0x48uLL);
  v6 = a1[6];
  v7 = a1[7];

  sub_214BFBABC(v6, v7, v15);

  memcpy(__dst + 144, v15, 0x48uLL);
  v9 = a1[9];
  v10 = a1[10];

  sub_214BFC230(v9, v10, v16);

  memcpy(__dst + 216, v16, 0x48uLL);
  result = v12;
  sub_214A63280();
  return result;
}

uint64_t sub_214BF97CC()
{
  MEMORY[0x277D82BE0](@"clock.fill");
  v2 = sub_214CCF564();
  sub_214CCF614();
  sub_214CCF614();
  v1 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614();
  sub_214B1C228();
  sub_214CCCF54();

  MEMORY[0x277D82BD8](v1);

  v3 = nullsub_1(v2);
  MEMORY[0x277D82BD8](@"clock.fill");
  return v3;
}

void *sub_214BF996C@<X0>(char a1@<W0>, void *a2@<X8>)
{
  sub_214CCF614();
  sub_214CCF614();
  v4 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614();
  sub_214B1C228();
  v5 = sub_214CCCF54();
  v6 = v2;

  MEMORY[0x277D82BD8](v4);

  v8 = swift_allocObject();
  (MEMORY[0x277D82BE0])();
  swift_unknownObjectWeakInit();
  (MEMORY[0x277D82BD8])();

  sub_214B051D4(v5, v6, a1 & 1, sub_214BFC9A4, v8, v10);

  return memcpy(a2, v10, 0x28uLL);
}

uint64_t sub_214BF9B68(uint64_t a1)
{
  if (a1 <= 0)
  {
    sub_214CCF614();
    sub_214CCF614();
    v3 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614();
    sub_214B1C228();
    sub_214CCCF54();

    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v4 = [objc_opt_self() resetUserOverrideForNumberOfOverrides_];
    sub_214CCF564();

    MEMORY[0x277D82BD8](v4);
  }

  v2 = nullsub_1(0);
  sub_214A61B48();
  return v2;
}

uint64_t *sub_214BF9D8C()
{
  v18 = v0;
  v11 = sub_214BF9F7C();
  v12 = sub_214BF97CC();
  v13 = v1;
  v14 = v2;
  v10 = v3;
  sub_214BF996C(1, v19);
  v4 = sub_214BF9B68(0);
  sub_214B153C8(v19, v11, v12, v13, v14, v10, v4, v5, v20, v6, v7);
  memcpy(__dst, v20, sizeof(__dst));
  v15 = (v9 + OBJC_IVAR___MUIAboutCategoriesViewController_categoriesView);
  swift_beginAccess();
  if (!*v15)
  {
    sub_214CD01F4();
    __break(1u);
  }

  swift_endAccess();
  sub_214B1ACA8(v20, v16);
  memcpy(v17, __dst, sizeof(v17));
  memcpy(v21, v17, sizeof(v21));
  sub_214B13B98(v21);

  result = v20;
  sub_214B14E3C();
  return result;
}

uint64_t sub_214BF9F7C()
{
  v25 = sub_214CD03C4();
  __dst = v0;
  sub_214CCF614();
  sub_214CCF614();
  v10 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614();
  v9 = v1;
  sub_214B1C228();
  v11 = sub_214CCCF54();
  v12 = v2;

  MEMORY[0x277D82BD8](v10);

  sub_214BFA6B0(1, v11, v12, v26);

  memcpy(__dst, v26, 0x48uLL);
  sub_214CCF614();
  sub_214CCF614();
  v14 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614();
  v13 = v3;
  sub_214B1C228();
  v15 = sub_214CCCF54();
  v16 = v4;

  MEMORY[0x277D82BD8](v14);

  sub_214BFA6B0(2, v15, v16, v27);

  memcpy(__dst + 72, v27, 0x48uLL);
  sub_214CCF614();
  sub_214CCF614();
  v18 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614();
  v17 = v5;
  sub_214B1C228();
  v19 = sub_214CCCF54();
  v20 = v6;

  MEMORY[0x277D82BD8](v18);

  sub_214BFA6B0(3, v19, v20, v28);

  memcpy(__dst + 144, v28, 0x48uLL);
  sub_214CCF614();
  sub_214CCF614();
  v21 = [objc_opt_self() 0x1FCB47FD2];
  sub_214CCF614();
  sub_214B1C228();
  v22 = sub_214CCCF54();
  v23 = v7;

  MEMORY[0x277D82BD8](v21);

  sub_214BFA6B0(4, v22, v23, v29);

  memcpy(__dst + 216, v29, 0x48uLL);
  result = v25;
  sub_214A63280();
  return result;
}

double sub_214BFA4EC(void *a1, uint64_t a2)
{
  v8[15] = a1;
  v8[14] = a2 + 16;
  sub_214BFD1A4(a1, v8);
  memcpy(__dst, a1, sizeof(__dst));
  if (__dst[2])
  {
    memcpy(v10, __dst, sizeof(v10));
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      MEMORY[0x277D82BE0](Strong);
      sub_214A671E8(&Strong);
      swift_endAccess();
      sub_214BF93DC(v10);
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      sub_214A671E8(&Strong);
      swift_endAccess();
    }

    sub_214B119FC();
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v3 = v7;
      MEMORY[0x277D82BE0](v7);
      sub_214A671E8(&v7);
      swift_endAccess();
      sub_214BF9D8C();
      *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
    }

    else
    {
      sub_214A671E8(&v7);
      swift_endAccess();
    }
  }

  return result;
}

void *sub_214BFA6B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = MUISelectedImageNameForBucket(a1);
  if (v24)
  {
    v16 = sub_214CCF564();
    v17 = v4;
    MEMORY[0x277D82BD8](v24);
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  if (v19)
  {
    v14 = v18;
    v15 = v19;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  if (!MUIPlatformColorForBucket(a1))
  {
    sub_214CD01F4();
    __break(1u);
  }

  v8 = sub_214CCEE54();
  v13 = MUILocalizedStringFromBucket(a1);
  v9 = sub_214CCF564();
  v10 = v5;
  v11 = sub_214BFA94C(a1);
  v12 = v6;

  sub_214B07CEC(v14, v15, v8, v9, v10, v11, v12, a2, v25, a3);
  MEMORY[0x277D82BD8](v13);
  return memcpy(a4, v25, 0x48uLL);
}

uint64_t sub_214BFA94C(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return sub_214CCF614();
    case 1:
      sub_214CCF614();
      sub_214CCF614();
      v10 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v11 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v10);

      return v11;
    case 2:
      sub_214CCF614();
      sub_214CCF614();
      v8 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v9 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v8);

      return v9;
    case 3:
      sub_214CCF614();
      sub_214CCF614();
      v6 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v7 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v6);

      return v7;
    case 4:
      sub_214CCF614();
      sub_214CCF614();
      v4 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v5 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v4);

      return v5;
    case 5:
      return sub_214CCF614();
  }

  sub_214CD03B4();
  v1 = sub_214CCF614();
  MEMORY[0x21605E650](v1);

  type metadata accessor for MUIBucket();
  sub_214CD0374();
  v2 = sub_214CCF614();
  MEMORY[0x21605E650](v2);

  sub_214A61B48();
  sub_214CCF5F4();
  sub_214CD0204();
  __break(1u);
  return v12;
}

double sub_214BFAFD0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v1 = [Strong delegate];
    v2 = v1;
    if (v1)
    {
      swift_getObjectType();
      [v2 aboutCategoriesViewControllerDidSelectResetButton_];
      swift_unknownObjectRelease();
    }

    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

void *sub_214BFB0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  sub_214CCF614();
  sub_214CCF614();
  v8 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614();
  sub_214B1C228();
  sub_214CCCF54();

  MEMORY[0x277D82BD8](v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270);
  sub_214CD03C4();
  v3 = MEMORY[0x277D83B88];
  v4[3] = MEMORY[0x277D83B88];
  v5 = MEMORY[0x277D83C10];
  v4[4] = MEMORY[0x277D83C10];
  *v4 = a1;
  v4[8] = v3;
  v4[9] = v5;
  v4[5] = a2;
  sub_214A63280();
  v11 = sub_214CCF554();
  v12 = v6;

  sub_214BFA6B0(1, v11, v12, v14);

  return memcpy(a3, v14, 0x48uLL);
}

void *sub_214BFB348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {

    v26 = sub_214CCF854();

    if (v26 == 1)
    {
      sub_214CCF614();
      sub_214CCF614();
      v21 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v22 = sub_214CCCF54();
      v23 = v4;

      MEMORY[0x277D82BD8](v21);

      v24 = v22;
      v25 = v23;
    }

    else if (v26 == 2)
    {
      sub_214CCF614();
      sub_214CCF614();
      v18 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v19 = sub_214CCCF54();
      v20 = v5;

      MEMORY[0x277D82BD8](v18);

      v24 = v19;
      v25 = v20;
    }

    else
    {
      sub_214CCF614();
      sub_214CCF614();
      if (v26 == 3)
      {
        v15 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614();
        sub_214B1C228();
        v16 = sub_214CCCF54();
        v17 = v6;

        MEMORY[0x277D82BD8](v15);

        v24 = v16;
        v25 = v17;
      }

      else
      {
        v12 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614();
        sub_214B1C228();
        v13 = sub_214CCCF54();
        v14 = v7;

        MEMORY[0x277D82BD8](v12);

        v24 = v13;
        v25 = v14;
      }
    }

    v11 = sub_214BFC9AC(v24, v25, a1, a2);
    v10 = v8;

    sub_214A61B48();
    v30 = v11;
    v31 = v10;
  }

  else
  {
    sub_214CCF614();
    sub_214CCF614();
    v27 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614();
    sub_214B1C228();
    v28 = sub_214CCCF54();
    v29 = v3;

    MEMORY[0x277D82BD8](v27);

    v30 = v28;
    v31 = v29;
  }

  sub_214BFA6B0(2, v30, v31, v35);

  sub_214A61B48();
  return memcpy(a3, v35, 0x48uLL);
}

void *sub_214BFBABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {

    v26 = sub_214CCF854();

    if (v26 == 1)
    {
      sub_214CCF614();
      sub_214CCF614();
      v21 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v22 = sub_214CCCF54();
      v23 = v4;

      MEMORY[0x277D82BD8](v21);

      v24 = v22;
      v25 = v23;
    }

    else if (v26 == 2)
    {
      sub_214CCF614();
      sub_214CCF614();
      v18 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v19 = sub_214CCCF54();
      v20 = v5;

      MEMORY[0x277D82BD8](v18);

      v24 = v19;
      v25 = v20;
    }

    else
    {
      sub_214CCF614();
      sub_214CCF614();
      if (v26 == 3)
      {
        v15 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614();
        sub_214B1C228();
        v16 = sub_214CCCF54();
        v17 = v6;

        MEMORY[0x277D82BD8](v15);

        v24 = v16;
        v25 = v17;
      }

      else
      {
        v12 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614();
        sub_214B1C228();
        v13 = sub_214CCCF54();
        v14 = v7;

        MEMORY[0x277D82BD8](v12);

        v24 = v13;
        v25 = v14;
      }
    }

    v11 = sub_214BFC9AC(v24, v25, a1, a2);
    v10 = v8;

    sub_214A61B48();
    v30 = v11;
    v31 = v10;
  }

  else
  {
    sub_214CCF614();
    sub_214CCF614();
    v27 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614();
    sub_214B1C228();
    v28 = sub_214CCCF54();
    v29 = v3;

    MEMORY[0x277D82BD8](v27);

    v30 = v28;
    v31 = v29;
  }

  sub_214BFA6B0(3, v30, v31, v35);

  sub_214A61B48();
  return memcpy(a3, v35, 0x48uLL);
}

void *sub_214BFC230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1)
  {

    v26 = sub_214CCF854();

    if (v26 == 1)
    {
      sub_214CCF614();
      sub_214CCF614();
      v21 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v22 = sub_214CCCF54();
      v23 = v4;

      MEMORY[0x277D82BD8](v21);

      v24 = v22;
      v25 = v23;
    }

    else if (v26 == 2)
    {
      sub_214CCF614();
      sub_214CCF614();
      v18 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v19 = sub_214CCCF54();
      v20 = v5;

      MEMORY[0x277D82BD8](v18);

      v24 = v19;
      v25 = v20;
    }

    else
    {
      sub_214CCF614();
      sub_214CCF614();
      if (v26 == 3)
      {
        v15 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614();
        sub_214B1C228();
        v16 = sub_214CCCF54();
        v17 = v6;

        MEMORY[0x277D82BD8](v15);

        v24 = v16;
        v25 = v17;
      }

      else
      {
        v12 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614();
        sub_214B1C228();
        v13 = sub_214CCCF54();
        v14 = v7;

        MEMORY[0x277D82BD8](v12);

        v24 = v13;
        v25 = v14;
      }
    }

    v11 = sub_214BFC9AC(v24, v25, a1, a2);
    v10 = v8;

    sub_214A61B48();
    v30 = v11;
    v31 = v10;
  }

  else
  {
    sub_214CCF614();
    sub_214CCF614();
    v27 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614();
    sub_214B1C228();
    v28 = sub_214CCCF54();
    v29 = v3;

    MEMORY[0x277D82BD8](v27);

    v30 = v28;
    v31 = v29;
  }

  sub_214BFA6B0(4, v30, v31, v35);

  sub_214A61B48();
  return memcpy(a3, v35, 0x48uLL);
}

uint64_t sub_214BFC9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v30 = sub_214CCF854();

  if (v30 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270);
    sub_214CD03C4();
    v25 = v4;
    v5 = MEMORY[0x277D83B88];
    v4[3] = MEMORY[0x277D83B88];
    v6 = MEMORY[0x277D83C10];
    v4[4] = MEMORY[0x277D83C10];
    *v4 = a3;
    v4[8] = v5;
    v4[9] = v6;
    v4[5] = a4;

    v25[13] = MEMORY[0x277D837D0];
    v25[14] = sub_214BD1FAC();
    sub_214CCF914();

    sub_214A63280();
    v26 = sub_214CCF554();

    return v26;
  }

  else if (v30 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270);
    sub_214CD03C4();
    v22 = v7;
    v8 = MEMORY[0x277D83B88];
    v7[3] = MEMORY[0x277D83B88];
    v9 = MEMORY[0x277D83C10];
    v7[4] = MEMORY[0x277D83C10];
    *v7 = a3;
    v7[8] = v8;
    v7[9] = v9;
    v7[5] = a4;

    v23 = MEMORY[0x277D837D0];
    v22[13] = MEMORY[0x277D837D0];
    v21 = sub_214BD1FAC();
    v22[14] = v21;
    sub_214CCF914();

    v22[18] = v23;
    v22[19] = v21;
    sub_214CCF914();

    sub_214A63280();
    v24 = sub_214CCF554();

    return v24;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270);
    sub_214CD03C4();
    if (v30 == 3)
    {
      v18 = v10;
      v11 = MEMORY[0x277D83B88];
      v10[3] = MEMORY[0x277D83B88];
      v12 = MEMORY[0x277D83C10];
      v10[4] = MEMORY[0x277D83C10];
      *v10 = a3;
      v10[8] = v11;
      v10[9] = v12;
      v10[5] = a4;

      v19 = MEMORY[0x277D837D0];
      v18[13] = MEMORY[0x277D837D0];
      v17 = sub_214BD1FAC();
      v18[14] = v17;
      sub_214CCF914();

      v18[18] = v19;
      v18[19] = v17;
      sub_214CCF914();

      v18[23] = v19;
      v18[24] = v17;
      sub_214CCF914();

      sub_214A63280();
      v20 = sub_214CCF554();

      return v20;
    }

    else
    {
      v13 = MEMORY[0x277D83B88];
      v10[3] = MEMORY[0x277D83B88];
      v14 = MEMORY[0x277D83C10];
      v10[4] = MEMORY[0x277D83C10];
      *v10 = a3;
      v10[8] = v13;
      v10[9] = v14;
      v10[5] = a4;
      sub_214A63280();
      v16 = sub_214CCF554();

      return v16;
    }
  }
}

id MUIAboutCategoriesViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (a2)
  {
    v5 = sub_214CCF544();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [v9 initWithNibName_bundle_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v6);
  return v4;
}

unint64_t type metadata accessor for MUIAboutCategoriesViewController()
{
  v2 = qword_27CA36CA0;
  if (!qword_27CA36CA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA36CA0);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_214BFD1A4(void *a1, void *a2)
{
  if (a1[2])
  {
    *a2 = *a1;
    a2[1] = a1[1];
    v3 = a1[2];

    a2[2] = v3;
    a2[3] = a1[3];
    a2[4] = a1[4];
    v4 = a1[5];

    a2[5] = v4;
    a2[6] = a1[6];
    a2[7] = a1[7];
    v5 = a1[8];

    a2[8] = v5;
    a2[9] = a1[9];
    a2[10] = a1[10];
    v6 = a1[11];

    a2[11] = v6;
    a2[12] = a1[12];
    a2[13] = a1[13];
  }

  else
  {
    memcpy(a2, a1, 0x70uLL);
  }

  return a2;
}

uint64_t sub_214BFD2BC()
{
  v2 = *(v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_publicDescriptionAddress);

  return v2;
}

uint64_t sub_214BFD308()
{
  v2 = *(v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_214BFD348()
{
  v2 = *(v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double MUIAvatarImageGeneratorResult.contact.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___contact);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BFD498@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 contact];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFD50C(uint64_t *a1, id *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  [*a2 setContact_];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

id sub_214BFD5A8(char *a1)
{
  v42 = *&a1[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact];
  *&v1 = MEMORY[0x277D82BE0](v42).n128_u64[0];
  if (v42)
  {
    [a1 avatarType];
    type metadata accessor for MUIAvatarType();
    sub_214B03AA8();
    v2 = sub_214CD03F4();
    if (v2)
    {
      return v42;
    }

    MEMORY[0x277D82BD8](v42);
  }

  sub_214C013B4();
  v38 = sub_214A61730();
  MEMORY[0x277D82BE0](v38);
  v39 = [a1 image];
  if (v39)
  {
    v35 = [v39 mui_pngRepresentation];
    MEMORY[0x277D82BD8](v39);
    if (v35)
    {
      v31 = sub_214CCD184();
      v32 = v3;
      MEMORY[0x277D82BD8](v35);
      v33 = v31;
      v34 = v32;
    }

    else
    {
      v33 = 0;
      v34 = 0xF000000000000000;
    }

    v36 = v33;
    v37 = v34;
  }

  else
  {
    v36 = 0;
    v37 = 0xF000000000000000;
  }

  if ((v37 & 0xF000000000000000) == 0xF000000000000000)
  {
    v30 = 0;
  }

  else
  {
    v29 = sub_214CCD174();
    sub_214AF83FC(v36, v37);
    v30 = v29;
  }

  [v38 setImageData_];
  MEMORY[0x277D82BD8](v30);
  [v38 setContactType_];
  MEMORY[0x277D82BE0](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36D10);
  sub_214CD03C4();
  v22 = v4;
  v23 = *MEMORY[0x277CBD8E8];
  MEMORY[0x277D82BE0](*MEMORY[0x277CBD8E8]);
  v24 = sub_214CCF564();
  v25 = v5;
  obj = *&a1[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
  swift_unknownObjectRetain();
  location = 0;
  objc_storeStrong(&location, obj);
  v27 = [location emailAddressValue];
  v28 = [v27 simpleAddress];
  v43 = 0;
  if (v28)
  {
    MEMORY[0x277D82BE0](v28);
  }

  else
  {
    v44 = [location stringValue];
    v43 = 1;
    MEMORY[0x277D82BE0](v44);
  }

  v46 = v6;
  if (v43)
  {
    MEMORY[0x277D82BD8](v44);
  }

  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v27);
  objc_storeStrong(&location, 0);
  v20 = v46;
  v7 = v46;
  v21 = v20;
  swift_unknownObjectRelease();
  if (!v21)
  {
    sub_214CD01F4();
    __break(1u);
  }

  sub_214AF82CC();
  v16 = sub_214BFDD68(v24, v25);
  MEMORY[0x277D82BD8](v23);
  *v22 = v16;
  sub_214A63280();
  v17 = sub_214CCF7D4();

  [v38 setEmailAddresses_];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v38);
  v18 = *&a1[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v19 = [v18 emailAddressValue];
  swift_unknownObjectRelease();
  if (v19)
  {
    v8 = [v19 displayName];
    v14 = v8;
    if (v8)
    {
      sub_214CCF564();
      v12 = v9;
      MEMORY[0x277D82BD8](v14);
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x277D82BD8](v19);
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    sub_214CCF614();
  }

  v11 = sub_214CCF544();

  [v38 setOrganizationName_];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v38);
  return v38;
}

uint64_t sub_214BFDDC4()
{
  v2 = *(v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingImageProvider);

  return v2;
}

uint64_t sub_214BFDE10()
{
  v7 = (v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___underlyingImage);
  swift_beginAccess();
  v8 = *v7;
  sub_214BFDF10(*v7);
  swift_endAccess();
  if (v8 != 1)
  {
    return v8;
  }

  v4 = sub_214BFDF50(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___underlyingImage);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  sub_214BFDFC0(v1);
  swift_endAccess();
  return v4;
}

uint64_t sub_214BFDF10(uint64_t result)
{
  if (result != 1)
  {
    return MEMORY[0x277D82BE0](result);
  }

  return result;
}

uint64_t sub_214BFDF50(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingImageProvider);

  v4 = v3(v1);

  return v4;
}

uint64_t sub_214BFDFC0(uint64_t result)
{
  if (result != 1)
  {
    return MEMORY[0x277D82BD8](result);
  }

  return result;
}

double sub_214BFE000(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___underlyingImage);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  sub_214BFDFC0(v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BFE090()
{
  v5 = sub_214BFDE10();
  if (!v5)
  {
    return 0;
  }

  [v4 avatarStyle];
  type metadata accessor for MUIAvatarStyle();
  sub_214A86DE8();
  v0 = sub_214CD03F4();
  if ((v0 & 1) == 0)
  {
    MEMORY[0x277D82BD8](v5);
    return 0;
  }

  v2 = [objc_opt_self() compositedDarkImageWithImage_];
  MEMORY[0x277D82BD8](v5);
  return v2;
}

uint64_t MUIAvatarImageGeneratorResult.image.getter()
{
  v7 = (v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___image);
  swift_beginAccess();
  v8 = *v7;
  sub_214BFDF10(*v7);
  swift_endAccess();
  if (v8 != 1)
  {
    return v8;
  }

  v4 = sub_214BFE528(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = &v6[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___image];
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  sub_214BFDFC0(v1);
  swift_endAccess();
  return v4;
}

double MUIAvatarImageGeneratorResult.image.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___image);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  sub_214BFDFC0(v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BFE42C@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 image];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFE4A0(uint64_t *a1, id *a2)
{
  sub_214A671A8(a1, &v6);
  v4 = v6;
  v5 = *a2;
  [*a2 setImage_];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214BFE528(void *a1)
{
  v34 = a1;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  isa = 0;
  v36 = 0;
  v41 = a1;
  v35 = sub_214BFDE10();
  if (!v35)
  {
    return 0;
  }

  v33 = v35;
  v31 = v35;
  v40 = v35;
  if ([objc_opt_self() preferenceEnabled_])
  {
    v21 = 0x1FBE71000uLL;
    v23 = sub_214C01418([v34 0x1FBE71849]);
    v29 = v1;
    v38 = v23;
    v39 = v1;
    v28.super.isa = sub_214C015B4([v34 0x1FBE71849]);
    isa = v28.super.isa;
    v27.super.isa = sub_214C01750([v34 0x1FBE71849]);
    v36 = v27.super.isa;
    v2 = sub_214A731BC();
    v3._countAndFlagsBits = v23;
    v22 = v2;
    v3._object = v29;
    v25 = UIImage.badged(with:background:foreground:)(v3, v28, v27).super.isa;
    v4 = v34;

    v5 = v28.super.isa;
    v6 = v27.super.isa;
    v24 = &v18;
    MEMORY[0x28223BE20](v25);
    v15[2] = v7;
    v15[3] = v23;
    v16[0] = v8;
    v16[1] = v28.super.isa;
    v17 = v9;
    v26 = static UIImage.mui_dynamicImage(baseImage:dark:)(v10, sub_214C0139C, v15);

    v30 = v26;

    return v30;
  }

  else
  {
    sub_214A731BC();
    v11 = v34;
    v18 = &v18;
    MEMORY[0x28223BE20](v31);
    v17 = v12;
    v19 = static UIImage.mui_dynamicImage(baseImage:dark:)(v13, sub_214C01394, v16);

    v20 = v19;
    return v20;
  }
}

Class sub_214BFE7FC(uint64_t a1, uint64_t a2, void *a3, UIColor a4, UIColor a5)
{
  with._countAndFlagsBits = a2;
  with._object = a3;
  v11 = sub_214BFE090();
  if (!v11)
  {
    return 0;
  }

  isa = UIImage.badged(with:background:foreground:)(with, a4, a5).super.isa;
  MEMORY[0x277D82BD8](v11);
  return isa;
}

uint64_t MUIAvatarImageGeneratorResult.style.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult_style);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_214BFE990@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 avatarStyle];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFE9FC(void *a1, id *a2)
{
  v3 = *a2;
  [*a2 setAvatarStyle_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

uint64_t sub_214BFEAC4(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult_type);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_214BFEB30@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 avatarType];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFEB9C(void *a1, id *a2)
{
  v3 = *a2;
  [*a2 setAvatarType_];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void *sub_214BFEC04(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v7 = __src;
  v6 = v1;
  sub_214A85640(__dst, v5);
  memcpy(v9, __dst, sizeof(v9));
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___analysis);
  swift_beginAccess();
  memcpy(v10, v4, sizeof(v10));
  memcpy(v4, v9, 0x78uLL);
  sub_214A8FC3C(v10);
  swift_endAccess();
  return sub_214A854B4(__dst);
}

id MUIAvatarImageGeneratorResult.colors.getter()
{
  v7 = (v0 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___colors);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BFF078(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___colors);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

double MUIAvatarImageGeneratorResult.colors.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___colors);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BFEF68@<D0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = [*a1 headerColors];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BFEFDC(uint64_t *a1, id *a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5 = *a2;
  [*a2 setHeaderColors_];
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

id sub_214BFF078(uint64_t a1)
{
  v9 = 0;
  v12[15] = a1;
  if (([objc_opt_self() isMainThread] & 1) == 0)
  {
    sub_214B11080();
    sub_214CD0204();
    __break(1u);
  }

  sub_214A866E0(v10);
  memcpy(__dst, v10, sizeof(__dst));
  memcpy(v12, __dst, 0x78uLL);
  if (v12[1])
  {
    v9 = v12;
    type metadata accessor for MUISenderHeaderColors();
    sub_214A8FA8C(v12, v8);
    memcpy(&v7, v12, sizeof(v7));
    v3 = MUISenderHeaderColors.init(analysis:)(&v7);
    sub_214A86594(v12);
    return v3;
  }

  else
  {
    type metadata accessor for MUISenderHeaderColors();
    sub_214A65CE0();
    v5 = sub_214C7AC2C();
    v4 = static UIColor.platformLabel.getter();
    v1 = static UIColor.platformSecondaryLabel.getter();
    return sub_214BFF240(v5, v4, v1);
  }
}

id MUIAvatarImageGeneratorResult.init(_:image:style:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAddress:a1 image:a2 style:a3 type:a4];
  MEMORY[0x277D82BD8](a2);
  swift_unknownObjectRelease();
  return v6;
}

{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v6 = v24;
  MEMORY[0x277D82BE0](a2);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v18 = sub_214BFF4D4;
  v19 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = 0;
  v16 = sub_214B4DD74;
  v17 = &block_descriptor_13;
  v9 = _Block_copy(&aBlock);

  v12 = [v6 init:0 address:a1 imageProvider:v9 style:a3 type:a4];
  _Block_release(v9);
  MEMORY[0x277D82BE0](v12);
  v24 = v12;
  MEMORY[0x277D82BD8](a2);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v24);
  return v12;
}

id MUIAvatarImageGeneratorResult.init(_:address:imageProvider:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = a3;
  v18 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_214B4DD74;
  v16 = &block_descriptor_3_1;
  v8 = _Block_copy(&aBlock);
  v11 = [v7 initWithContact:a1 address:a2 imageProvider:? style:?];
  _Block_release(v8);

  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v11;
}

id MUIAvatarImageGeneratorResult.init(_:address:imageProvider:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a1;
  v24 = a2;
  v22 = a3;
  v23 = a4;
  v21 = a5;
  v7 = v26;
  MEMORY[0x277D82BE0](a1);

  v19 = a3;
  v20 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = 0;
  v17 = sub_214B4DD74;
  v18 = &block_descriptor_6_2;
  v9 = _Block_copy(&aBlock);

  v13 = [v7 init:a1 address:a2 imageProvider:v9 style:a5 type:2];
  _Block_release(v9);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BE0](v13);
  v26 = v13;

  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v26);
  return v13;
}

uint64_t block_copy_helper_4_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

id sub_214BFF8F0(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

id static MUIAvatarImageGeneratorResult.circularPlaceholder()()
{
  type metadata accessor for MUIAvatarImageGeneratorResult();
  sub_214CCF614();
  v0 = sub_214CCF544();
  v2 = sub_214BFFA14(v0, 0, 0, 0);

  return v2;
}

unint64_t type metadata accessor for MUIAvatarImageGeneratorResult()
{
  v2 = qword_280C7C7A0;
  if (!qword_280C7C7A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C7A0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_214BFFAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = a3;
  v18 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = 0;
  v15 = sub_214B4DD74;
  v16 = &block_descriptor_12;
  v8 = _Block_copy(&aBlock);
  v11 = [v7 init:a1 address:a2 imageProvider:? style:? type:?];
  _Block_release(v8);

  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v11;
}

char *sub_214BFFC1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = 0;
  v36 = a1;
  v35 = a2;
  v33 = a3;
  v34 = a4;
  v32 = a5;
  v31 = a6;
  *OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___contact = 0;
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___underlyingImage] = 1;
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___image] = 1;
  __src[0] = 0;
  __src[1] = 1;
  memset(&__src[2], 0, 104);
  memcpy(&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___analysis], __src, 0x78uLL);
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult____lazy_storage___colors] = 0;
  MEMORY[0x277D82BE0](a1);
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact] = a1;
  swift_unknownObjectRetain();
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress] = a2;
  v30 = a6;
  v29 = 0;
  type metadata accessor for MUIAvatarType();
  sub_214B03AA8();
  if (sub_214CD03F4())
  {
    v20 = sub_214CCF614();
    v21 = v6;
  }

  else
  {
    location = 0;
    objc_storeStrong(&location, a2);
    v45 = [location emailAddressValue];
    v43 = 0;
    v41 = 0;
    v39 = 0;
    if (v45)
    {
      v44 = [v45 ef_publicDescription];
      v43 = 1;
      MEMORY[0x277D82BE0](v44);
    }

    else
    {
      v19 = MEMORY[0x277D07198];
      v42 = [location stringValue];
      v41 = 1;
      v40 = [v19 fullyOrPartiallyRedactedStringForString:?];
      v39 = 1;
      MEMORY[0x277D82BE0](v40);
    }

    v47 = v7;
    if (v39)
    {
      MEMORY[0x277D82BD8](v40);
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](v42);
    }

    if (v43)
    {
      MEMORY[0x277D82BD8](v44);
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&location, 0);
    v15 = v47;
    v8 = v47;
    v16 = v15;
    v17 = sub_214CCF564();
    v18 = v9;
    MEMORY[0x277D82BD8](v16);
    v20 = v17;
    v21 = v18;
  }

  v10 = &v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_publicDescriptionAddress];
  *v10 = v20;
  v10[1] = v21;
  v13 = v37;

  v11 = &v13[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingImageProvider];
  *v11 = a3;
  *(v11 + 1) = a4;
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_style] = a5;
  *&v37[OBJC_IVAR___MUIAvatarImageGeneratorResult_type] = a6;
  v28.receiver = v37;
  v28.super_class = MUIAvatarImageGeneratorResult;
  v14 = objc_msgSendSuper2(&v28, sel_init);
  MEMORY[0x277D82BE0](v14);
  v37 = v14;

  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v37);
  return v14;
}

uint64_t sub_214C00198()
{
  [v0 avatarStyle];
  type metadata accessor for MUIAvatarStyle();
  sub_214A86DE8();
  v7 = sub_214CD03F4();
  *&v1 = MEMORY[0x277D82BE0](v0).n128_u64[0];
  if (v7)
  {
    [v0 avatarType];
    type metadata accessor for MUIAvatarType();
    sub_214B03AA8();
    v6 = sub_214CD03F4();
    *&v2 = MEMORY[0x277D82BE0](v0).n128_u64[0];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      [v0 avatarType];
      v5 = sub_214CD03F4();
    }

    MEMORY[0x277D82BD8](v0);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x277D82BD8](v0);
  return v4 & 1;
}

uint64_t MUIAvatarImageGeneratorResult.isEqual(_:)(uint64_t a1)
{
  v24 = 0;
  v25 = a1;
  sub_214C011C8(a1, v22);
  if (v23)
  {
    type metadata accessor for MUIAvatarImageGeneratorResult();
    if (swift_dynamicCast())
    {
      v19 = v21;
    }

    else
    {
      v19 = 0;
    }

    v18 = v19;
  }

  else
  {
    sub_214A7D24C(v22);
    v18 = 0;
  }

  if (v18)
  {
    v9 = *&v20[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
    swift_unknownObjectRetain();
    swift_getObjectType();
    v16 = [v9 0x1FB466F78];
    v11 = sub_214CCF564();
    v15 = v1;
    swift_unknownObjectRelease();
    v10 = *&v18[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
    swift_unknownObjectRetain();
    swift_getObjectType();
    v14 = [v10 0x1FB466F78];
    v12 = sub_214CCF564();
    v13 = v2;
    swift_unknownObjectRelease();
    v17 = MEMORY[0x21605D8D0](v11, v15, v12, v13);

    MEMORY[0x277D82BD8](v14);

    MEMORY[0x277D82BD8](v16);
    (MEMORY[0x277D82BE0])();
    *&v3 = MEMORY[0x277D82BE0](v18).n128_u64[0];
    if (v17)
    {
      [v20 0x1FBE7180ELL];
      [v18 0x1FBE7180ELL];
      type metadata accessor for MUIAvatarStyle();
      sub_214A86DE8();
      v8 = sub_214CD03F4();
    }

    else
    {
      v8 = 0;
    }

    (MEMORY[0x277D82BD8])();
    MEMORY[0x277D82BD8](v18);
    (MEMORY[0x277D82BE0])();
    *&v4 = MEMORY[0x277D82BE0](v18).n128_u64[0];
    if (v8)
    {
      [v20 0x1FBE71849];
      [v18 0x1FBE71849];
      type metadata accessor for MUIAvatarType();
      sub_214B03AA8();
      v7 = sub_214CD03F4();
    }

    else
    {
      v7 = 0;
    }

    (MEMORY[0x277D82BD8])();
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v18);
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t MUIAvatarImageGeneratorResult.hash.getter()
{
  memset(__b, 0, sizeof(__b));
  v6 = v0;
  sub_214CD0584();
  memcpy(__b, v7, sizeof(__b));
  [v2 avatarStyle];
  type metadata accessor for MUIAvatarStyle();
  sub_214C01258();
  sub_214A86DE8();
  sub_214CCF7C4();
  [v2 avatarType];
  type metadata accessor for MUIAvatarType();
  sub_214C012D8();
  sub_214B03AA8();
  sub_214CCF7C4();
  v3 = *&v2[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = [v3 stringValue];
  sub_214CCF564();
  swift_unknownObjectRelease();
  sub_214CCF634();

  MEMORY[0x277D82BD8](v4);
  memcpy(v8, __b, sizeof(v8));
  return sub_214CD0564();
}

uint64_t MUIAvatarImageGeneratorResult.debugDescription.getter()
{
  v17[7] = 0;
  v17[5] = sub_214CD03B4();
  v17[6] = v0;
  v1 = sub_214CCF614();
  MEMORY[0x21605E650](v1);

  v11 = *&v15[OBJC_IVAR___MUIAvatarImageGeneratorResult_emailAddress];
  swift_unknownObjectRetain();
  swift_getObjectType();
  v14 = [v11 stringValue];
  v12 = sub_214CCF564();
  v13 = v2;
  swift_unknownObjectRelease();
  v17[3] = v12;
  v17[4] = v13;
  sub_214CD0394();
  sub_214A61B48();
  MEMORY[0x277D82BD8](v14);
  v3 = sub_214CCF614();
  MEMORY[0x21605E650](v3);

  v17[2] = [v15 avatarStyle];
  type metadata accessor for MUIAvatarStyle();
  sub_214A86928();
  sub_214CD0384();
  v4 = sub_214CCF614();
  MEMORY[0x21605E650](v4);

  v17[1] = [v15 avatarType];
  type metadata accessor for MUIAvatarType();
  sub_214A86BE4();
  sub_214CD0384();
  v5 = sub_214CCF614();
  MEMORY[0x21605E650](v5);

  v16 = *&v15[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact];
  MEMORY[0x277D82BE0](v16);
  v17[0] = v16;
  sub_214A671E8(v17);
  sub_214CD0384();
  v6 = sub_214CCF614();
  MEMORY[0x21605E650](v6);

  v10 = *&v15[OBJC_IVAR___MUIAvatarImageGeneratorResult_underlyingContact];
  *&v7 = MEMORY[0x277D82BE0](v10).n128_u64[0];
  if (v10)
  {
    [v10 imageDataAvailable];
    MEMORY[0x277D82BD8](v10);
  }

  sub_214CD0384();
  v8 = sub_214CCF614();
  MEMORY[0x21605E650](v8);

  sub_214A61B48();
  return sub_214CCF5F4();
}

id sub_214C0101C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_214CCF544();

    v2 = [v7 initWithLabel:v6 value:?];
  }

  else
  {
    v2 = [v7 initWithLabel:0 value:?];
  }

  v5 = v2;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id sub_214C010E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [v3 initWithContrastingBackgroundColor:a1 textColor:? secondaryTextColor:?];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v8;
}

id sub_214C01160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [v4 initWithAddress:a1 image:a2 style:a3 type:a4];
  MEMORY[0x277D82BD8](a2);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_214C011C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

unint64_t sub_214C01258()
{
  v2 = qword_27CA36D00;
  if (!qword_27CA36D00)
  {
    type metadata accessor for MUIAvatarStyle();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36D00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C012D8()
{
  v2 = qword_27CA36D08;
  if (!qword_27CA36D08)
  {
    type metadata accessor for MUIAvatarType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36D08);
    return WitnessTable;
  }

  return v2;
}

Class sub_214C0139C()
{
  v1.super.isa = *(v0 + 40);
  v2.super.isa = *(v0 + 48);
  return sub_214BFE7FC(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1, v2);
}

unint64_t sub_214C013B4()
{
  v2 = qword_280C7CBF0;
  if (!qword_280C7CBF0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CBF0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C01418(unint64_t a1)
{
  if (a1 <= 4)
  {
    return sub_214CCF614();
  }

  sub_214B11080();
  sub_214CD0204();
  __break(1u);
  return v2;
}

id sub_214C015B4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return [objc_opt_self() systemYellowColor];
    case 1:
      return [objc_opt_self() systemIndigoColor];
    case 2:
      return [objc_opt_self() systemPurpleColor];
    case 3:
      return [objc_opt_self() systemBlueColor];
    case 4:
      return [objc_opt_self() systemTealColor];
  }

  sub_214B11080();
  sub_214CD0204();
  __break(1u);
  return v2;
}

id sub_214C01750(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1 || a1 == 2 || a1 == 3 || a1 == 4)
    {
      sub_214A65CE0();
      return static UIColor.platformWhite.getter();
    }

    else
    {
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
    }
  }

  else
  {
    sub_214A65CE0();
    return static UIColor.platformBlack.getter();
  }

  return v2;
}

id MUIBucket.unseenImage.getter(uint64_t a1)
{
  v10 = MUIUnseenImageNameForBucket(a1);
  if (v10)
  {
    v6 = sub_214CCF564();
    v7 = v1;
    MEMORY[0x277D82BD8](v10);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if (!v9)
  {
    return 0;
  }

  sub_214A731BC();
  v5 = static UIImage.mui_systemImage(with:)(v8, v9);
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  return v4;
}

id sub_214C01A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_214CCF544();
  v6 = [swift_getObjCClassFromMetadata() colorNamed:v5 bundle:a3];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

uint64_t sub_214C01AB0()
{
  type metadata accessor for MUIBucket();
  result = sub_214CD03C4();
  *v1 = 1;
  v1[1] = 2;
  v1[2] = 3;
  v1[3] = 4;
  sub_214A63280();
  qword_280C7C4A8 = result;
  return result;
}

uint64_t *sub_214C01B20()
{
  if (qword_280C7C4A0 != -1)
  {
    swift_once();
  }

  return &qword_280C7C4A8;
}

uint64_t static MUIBucket.all.getter()
{
  v1 = *sub_214C01B20();

  return v1;
}

uint64_t static MUIBucket.allIncludingAllMail.getter()
{
  v1 = *sub_214A650A0();

  return v1;
}

uint64_t sub_214C01BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C0);
  return sub_214C09638(v7, a1, a3, v3);
}

uint64_t sub_214C01CA0()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_280C7C6C0);
  __swift_project_value_buffer(v1, qword_280C7C6C0);
  type metadata accessor for MUIBusinessConnectServiceProvider();
  return static Logger.mailUILogger<A>(for:)();
}

unint64_t type metadata accessor for MUIBusinessConnectServiceProvider()
{
  v2 = qword_280C7C6A0;
  if (!qword_280C7C6A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C6A0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C01D6C()
{
  if (qword_280C7C6B0 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_280C7C6C0);
}

uint64_t sub_214C01DD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C01D6C();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214C01EB8()
{
  v2 = *(v0 + OBJC_IVAR___MUIBusinessConnectServiceProvider_service);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214C01F74()
{
  v2 = *(v0 + OBJC_IVAR___MUIBusinessConnectServiceProvider_messageRepository);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

id sub_214C01FBC(uint64_t a1)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMessageRepository_];
  MEMORY[0x277D82BD8](a1);
  return v3;
}

void MUIBusinessConnectServiceProvider.businessLogo(for:handler:)(uint64_t a1, void (*a2)(void, void, __n128), uint64_t a3)
{
  v83 = a1;
  v81 = a2;
  v82 = a3;
  v73 = 0;
  v67 = &unk_214CF2CF0;
  v68 = sub_214C02C00;
  v69 = sub_214A7E854;
  v70 = sub_214A662DC;
  v71 = sub_214A662DC;
  v72 = sub_214A7E40C;
  ObjectType = swift_getObjectType();
  v97 = 0;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  v75 = 0;
  v88 = 0;
  v76 = sub_214CCDA74();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v80 = v36 - v79;
  v84 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v83);
  v85 = v36 - v84;
  v97 = v5;
  v95 = v6;
  v96 = v7;
  v94 = v3;
  v86 = [v5 emailAddress];
  swift_getObjectType();
  v87 = [v86 emailAddressValue];
  if (v87)
  {
    v65 = v87;
    v64 = v87;
    v88 = v87;
    swift_unknownObjectRelease();
    v62 = 0;
    v8 = sub_214CCF994();
    (*(*(v8 - 8) + 56))(v85, 1);
    MEMORY[0x277D82BE0](v83);
    MEMORY[0x277D82BE0](v64);
    MEMORY[0x277D82BE0](v66);

    v9 = swift_allocObject();
    v10 = v83;
    v11 = v66;
    v12 = v81;
    v13 = v82;
    v14 = ObjectType;
    v15 = v62;
    v16 = v85;
    v17 = v67;
    v18 = v64;
    v63 = v9;
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v10;
    v9[5] = v18;
    v9[6] = v11;
    v9[7] = v12;
    v9[8] = v13;
    v9[9] = v14;
    sub_214B88C30(v15, v15, v16, v17, v9, MEMORY[0x277D84F78] + 8);

    MEMORY[0x277D82BD8](v64);
  }

  else
  {
    v19 = v80;
    swift_unknownObjectRelease();
    v20 = sub_214C01D6C();
    (*(v77 + 16))(v19, v20, v76);
    MEMORY[0x277D82BE0](v83);
    v51 = 7;
    v52 = swift_allocObject();
    *(v52 + 16) = v83;
    v60 = sub_214CCDA54();
    v61 = sub_214CCFB84();
    v49 = 17;
    v54 = swift_allocObject();
    *(v54 + 16) = 32;
    v55 = swift_allocObject();
    *(v55 + 16) = 8;
    v50 = 32;
    v21 = swift_allocObject();
    v22 = v52;
    v53 = v21;
    *(v21 + 16) = v68;
    *(v21 + 24) = v22;
    v23 = swift_allocObject();
    v24 = v53;
    v57 = v23;
    *(v23 + 16) = v69;
    *(v23 + 24) = v24;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v56 = sub_214CD03C4();
    v58 = v25;

    v26 = v54;
    v27 = v58;
    *v58 = v70;
    v27[1] = v26;

    v28 = v55;
    v29 = v58;
    v58[2] = v71;
    v29[3] = v28;

    v30 = v57;
    v31 = v58;
    v58[4] = v72;
    v31[5] = v30;
    sub_214A63280();

    if (os_log_type_enabled(v60, v61))
    {
      v32 = v75;
      v42 = sub_214CCFF24();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v43 = sub_214A632C4(0);
      v44 = sub_214A632C4(1);
      v45 = &v93;
      v93 = v42;
      v46 = &v92;
      v92 = v43;
      v47 = &v91;
      v91 = v44;
      sub_214A6627C(2, &v93);
      sub_214A6627C(1, v45);
      v89 = v70;
      v90 = v54;
      sub_214A66290(&v89, v45, v46, v47);
      v48 = v32;
      if (v32)
      {

        __break(1u);
      }

      else
      {
        v89 = v71;
        v90 = v55;
        sub_214A66290(&v89, &v93, &v92, &v91);
        v40 = 0;
        v89 = v72;
        v90 = v57;
        sub_214A66290(&v89, &v93, &v92, &v91);
        _os_log_impl(&dword_214A5E000, v60, v61, "Could not fetch business logo for address %s: invalid address format", v42, 0xCu);
        sub_214A669DC(v43);
        sub_214A669DC(v44);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v33 = MEMORY[0x277D82BD8](v60);
    (*(v77 + 8))(v80, v76, v33);

    v37 = objc_opt_self();
    sub_214CCF614();
    v36[1] = v34;
    v38 = sub_214CCF544();

    v39 = [v37 em:v38 internalErrorWithReason:?];
    v35 = MEMORY[0x277D82BD8](v38);
    v81(0, v39, v35);
  }
}

uint64_t sub_214C029E0(void *a1)
{
  location = 0;
  objc_storeStrong(&location, [a1 emailAddress]);
  v14 = [location emailAddressValue];
  v12 = 0;
  v10 = 0;
  v8 = 0;
  if (v14)
  {
    v13 = [v14 ef_publicDescription];
    v12 = 1;
    MEMORY[0x277D82BE0](v13);
  }

  else
  {
    v7 = MEMORY[0x277D07198];
    v11 = [location stringValue];
    v10 = 1;
    v9 = [v7 fullyOrPartiallyRedactedStringForString:?];
    v8 = 1;
    MEMORY[0x277D82BE0](v9);
  }

  v16 = v1;
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&location, 0);
  v4 = v16;
  v2 = v16;
  v5 = v4;
  swift_unknownObjectRelease();
  v6 = sub_214CCF564();
  MEMORY[0x277D82BD8](v5);
  return v6;
}

uint64_t sub_214C02C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[69] = a8;
  v8[68] = a7;
  v8[67] = a6;
  v8[66] = a5;
  v8[65] = a4;
  v8[49] = v8;
  v8[50] = 0;
  v8[51] = 0;
  v8[52] = 0;
  v8[34] = 0;
  v8[35] = 0;
  v8[53] = 0;
  v8[57] = 0;
  v8[58] = 0;
  v8[59] = 0;
  v8[60] = 0;
  v8[62] = 0;
  v8[63] = 0;
  v8[42] = 0;
  v8[43] = 0;
  v8[64] = 0;
  v8[44] = 0;
  v8[45] = 0;
  v9 = sub_214CCD154();
  v8[70] = v9;
  v8[71] = *(v9 - 8);
  v8[72] = swift_task_alloc();
  v8[73] = swift_task_alloc();
  v10 = sub_214CCDA74();
  v8[74] = v10;
  v8[75] = *(v10 - 8);
  v8[76] = swift_task_alloc();
  v8[77] = swift_task_alloc();
  v8[78] = swift_task_alloc();
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();
  v8[81] = swift_task_alloc();
  v8[82] = swift_task_alloc();
  v8[83] = swift_task_alloc();
  v8[50] = a4;
  v8[51] = a5;
  v8[52] = a6;
  v8[34] = a7;
  v8[35] = a8;

  return MEMORY[0x2822009F8](sub_214C02EC4, 0);
}

uint64_t sub_214C02EC4()
{
  v63 = v0;
  v1 = v0[83];
  v44 = v0[75];
  v45 = v0[74];
  v46 = v0[65];
  v0[49] = v0;
  v2 = sub_214C01D6C();
  v3 = *(v44 + 16);
  v0[84] = v3;
  v0[85] = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v45);
  MEMORY[0x277D82BE0](v46);
  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  oslog = sub_214CCDA54();
  v54 = sub_214CCFBB4();
  v49 = swift_allocObject();
  *(v49 + 16) = 66;
  v50 = swift_allocObject();
  *(v50 + 16) = 8;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_214B1DA88;
  *(v48 + 24) = v47;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_214B21624;
  *(v51 + 24) = v48;
  v0[86] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  sub_214CD03C4();
  v52 = v4;

  *v52 = sub_214A662DC;
  v52[1] = v49;

  v52[2] = sub_214A662DC;
  v52[3] = v50;

  v52[4] = sub_214B217B4;
  v52[5] = v51;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v54))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v41 = sub_214A632C4(1);
    v42 = sub_214A632C4(0);
    v58 = buf;
    v59 = v41;
    v60 = v42;
    sub_214A6627C(2, &v58);
    sub_214A6627C(1, &v58);
    v61 = sub_214A662DC;
    v62 = v49;
    sub_214A66290(&v61, &v58, &v59, &v60);
    v61 = sub_214A662DC;
    v62 = v50;
    sub_214A66290(&v61, &v58, &v59, &v60);
    v61 = sub_214B217B4;
    v62 = v51;
    sub_214A66290(&v61, &v58, &v59, &v60);
    _os_log_impl(&dword_214A5E000, oslog, v54, "Fetching business metadata for context:\n%{public}@", buf, 0xCu);
    sub_214A669DC(v41);
    sub_214A669DC(v42);
    sub_214CCFF04();
  }

  else
  {
  }

  *(v43 + 696) = 0;
  v34 = *(v43 + 664);
  v35 = *(v43 + 592);
  v36 = *(v43 + 528);
  v33 = *(v43 + 600);
  v5 = MEMORY[0x277D82BD8](oslog);
  v6 = *(v33 + 8);
  *(v43 + 704) = v6;
  *(v43 + 712) = (v33 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v34, v35, v5);
  sub_214C097EC();
  MEMORY[0x277D82BE0](v36);
  *(v43 + 384) = 0;
  objc_storeStrong((v43 + 384), v36);
  v37 = [*(v43 + 384) emailAddressValue];
  v38 = [v37 simpleAddress];
  v57 = 0;
  v39 = v38;
  if (!v38)
  {
    v56 = [*(v43 + 384) stringValue];
    v57 = 1;
    v39 = v56;
  }

  MEMORY[0x277D82BE0](v39);
  v55 = v7;
  if (v57)
  {
    MEMORY[0x277D82BD8](v56);
  }

  v29 = *(v43 + 528);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v37);
  objc_storeStrong((v43 + 384), 0);
  v8 = v55;
  v28 = v55;
  swift_unknownObjectRelease();
  v30 = sub_214CCF564();
  v31 = v9;
  v32 = [v29 domain];
  if (v32)
  {
    v24 = sub_214CCF564();
    v25 = v11;
    *&v10 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    v26 = v24;
    v27 = v25;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v23 = [*(v43 + 528) highLevelDomain];
  if (v23)
  {
    v19 = sub_214CCF564();
    v20 = v12;
    MEMORY[0x277D82BD8](v23);
    v21 = v19;
    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v15 = *(v43 + 536);
  v17 = sub_214C08E0C(v30, v31, v26, v27, v21, v22);
  *(v43 + 720) = v17;
  *&v13 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  *(v43 + 424) = v17;
  v18 = [v15 service];
  *(v43 + 728) = v18;
  *(v43 + 16) = *(v43 + 392);
  *(v43 + 56) = v43 + 432;
  *(v43 + 24) = sub_214C03964;
  v16 = swift_continuation_init();
  *(v43 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36DA0);
  *(v43 + 176) = v16;
  *(v43 + 144) = MEMORY[0x277D85DD0];
  *(v43 + 152) = 1107296256;
  *(v43 + 156) = 0;
  *(v43 + 160) = sub_214C08E74;
  *(v43 + 168) = &block_descriptor_14;
  [v18 fetchBusinessMetadataForEmailIdentifier:v17 completion:?];

  return MEMORY[0x282200938](v43 + 16);
}

uint64_t sub_214C03964()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 392) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 736) = v1;
  if (v1)
  {
    v2 = sub_214C0662C;
  }

  else
  {
    v2 = sub_214C03AD8;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214C03AD8()
{
  v86 = v0;
  v1 = v0[91];
  v72 = v0[65];
  v0[49] = v0;
  v71 = v0[54];
  v0[93] = v71;
  v0[59] = v71;
  v73 = [v72 businessLogoID];
  if (v73)
  {
    v66 = sub_214CCF564();
    v67 = v3;
    *&v2 = MEMORY[0x277D82BD8](v73).n128_u64[0];
    v68 = v66;
    v69 = v67;
  }

  else
  {
    v68 = 0;
    v69 = 0;
  }

  if (v69)
  {
    *(v70 + 352) = v68;
    *(v70 + 360) = v69;
    v79 = v68;
    v80 = v69;
    v64 = [v71 businessId];
    *(v70 + 368) = sub_214CCF564();
    *(v70 + 376) = v4;
    v65 = MEMORY[0x21605D8D0](v79, v80, *(v70 + 368), *(v70 + 376));
    sub_214A61B48();
    MEMORY[0x277D82BD8](v64);
    if (v65)
    {

      v63 = *(v70 + 696);
    }

    else
    {
      v53 = *(v70 + 672);
      v5 = *(v70 + 656);
      v52 = *(v70 + 592);
      v54 = *(v70 + 520);
      v6 = sub_214C01D6C();
      v53(v5, v6, v52);
      MEMORY[0x277D82BE0](v54);
      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      oslog = sub_214CCDA54();
      v62 = sub_214CCFBA4();
      v57 = swift_allocObject();
      *(v57 + 16) = 66;
      v58 = swift_allocObject();
      *(v58 + 16) = 8;
      v56 = swift_allocObject();
      *(v56 + 16) = sub_214B1DA88;
      *(v56 + 24) = v55;
      v59 = swift_allocObject();
      *(v59 + 16) = sub_214B21624;
      *(v59 + 24) = v56;
      sub_214CD03C4();
      v60 = v7;

      *v60 = sub_214A662DC;
      v60[1] = v57;

      v60[2] = sub_214A662DC;
      v60[3] = v58;

      v60[4] = sub_214B217B4;
      v60[5] = v59;
      sub_214A63280();

      if (os_log_type_enabled(oslog, v62))
      {
        v8 = *(v70 + 696);
        buf = sub_214CCFF24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v50 = sub_214A632C4(1);
        v51 = sub_214A632C4(0);
        v81 = buf;
        v82 = v50;
        v83 = v51;
        sub_214A6627C(2, &v81);
        sub_214A6627C(1, &v81);
        v84 = sub_214A662DC;
        v85 = v57;
        sub_214A66290(&v84, &v81, &v82, &v83);
        if (v8)
        {
        }

        v84 = sub_214A662DC;
        v85 = v58;
        sub_214A66290(&v84, &v81, &v82, &v83);
        v84 = sub_214B217B4;
        v85 = v59;
        sub_214A66290(&v84, &v81, &v82, &v83);
        _os_log_impl(&dword_214A5E000, oslog, v62, "Found mismatching business logo IDs for context:\n%{public}@", buf, 0xCu);
        sub_214A669DC(v50);
        sub_214A669DC(v51);
        sub_214CCFF04();

        v48 = 0;
      }

      else
      {

        v48 = *(v70 + 696);
      }

      v42 = *(v70 + 704);
      v40 = *(v70 + 656);
      v41 = *(v70 + 592);
      v43 = *(v70 + 536);
      v46 = *(v70 + 528);
      v10 = MEMORY[0x277D82BD8](oslog);
      v42(v40, v41, v10);
      v47 = [v43 messageRepository];
      MEMORY[0x277D82BE0](v46);
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v44 = NSStringFromClass(ObjCClassFromMetadata);
      sub_214CCF564();
      v45 = sub_214CCF544();

      [v47 reportIncorrectBusinessForAddress:v46 isBusinessConnectGrouping:1 fromClassName:{v45, MEMORY[0x277D82BD8](v44).n128_f64[0]}];
      MEMORY[0x277D82BD8](v45);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v47);

      v63 = v48;
    }
  }

  else
  {
    v63 = *(v70 + 696);
  }

  v30 = *(v70 + 672);
  v12 = *(v70 + 648);
  v29 = *(v70 + 592);
  v31 = *(v70 + 520);
  v13 = sub_214C01D6C();
  v30(v12, v13, v29);
  MEMORY[0x277D82BE0](v31);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  log = sub_214CCDA54();
  v39 = sub_214CCFBB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 66;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_214B1DA88;
  *(v33 + 24) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_214B21624;
  *(v36 + 24) = v33;
  sub_214CD03C4();
  v37 = v14;

  *v37 = sub_214A662DC;
  v37[1] = v34;

  v37[2] = sub_214A662DC;
  v37[3] = v35;

  v37[4] = sub_214B217B4;
  v37[5] = v36;
  sub_214A63280();

  if (os_log_type_enabled(log, v39))
  {
    v26 = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v27 = sub_214A632C4(1);
    v28 = sub_214A632C4(0);
    v74 = v26;
    v75 = v27;
    v76 = v28;
    sub_214A6627C(2, &v74);
    sub_214A6627C(1, &v74);
    v77 = sub_214A662DC;
    v78 = v34;
    sub_214A66290(&v77, &v74, &v75, &v76);
    if (v63)
    {
    }

    v77 = sub_214A662DC;
    v78 = v35;
    sub_214A66290(&v77, &v74, &v75, &v76);
    v77 = sub_214B217B4;
    v78 = v36;
    sub_214A66290(&v77, &v74, &v75, &v76);
    _os_log_impl(&dword_214A5E000, log, v39, "Fetching business logo for context:\n%{public}@", v26, 0xCu);
    sub_214A669DC(v27);
    sub_214A669DC(v28);
    sub_214CCFF04();

    v25 = 0;
  }

  else
  {

    v25 = v63;
  }

  *(v70 + 752) = v25;
  v19 = *(v70 + 704);
  v17 = *(v70 + 648);
  v18 = *(v70 + 592);
  v21 = *(v70 + 536);
  v15 = MEMORY[0x277D82BD8](log);
  v19(v17, v18, v15);
  sub_214C09858();
  v20 = [v71 businessId];
  sub_214CCF564();
  v23 = sub_214C08FAC();
  *(v70 + 760) = v23;
  *&v16 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  *(v70 + 480) = v23;
  v24 = [v21 service];
  *(v70 + 768) = v24;
  *(v70 + 80) = *(v70 + 392);
  *(v70 + 120) = v70 + 488;
  *(v70 + 88) = sub_214C04C08;
  v22 = swift_continuation_init();
  *(v70 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DB0);
  *(v70 + 240) = v22;
  *(v70 + 208) = MEMORY[0x277D85DD0];
  *(v70 + 216) = 1107296256;
  *(v70 + 220) = 0;
  *(v70 + 224) = sub_214C08FF4;
  *(v70 + 232) = &block_descriptor_137;
  [v24 fetchBusinessLogoForBusinessIdentifier:v23 completion:?];

  return MEMORY[0x282200938](v70 + 80);
}

uint64_t sub_214C04C08()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 392) = *v0;
  v1 = *(v4 + 112);
  *(v5 + 776) = v1;
  if (v1)
  {
    v2 = sub_214C081CC;
  }

  else
  {
    v2 = sub_214C04D7C;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214C04D7C()
{
  v100 = v0;
  v1 = v0[96];
  v2 = v0[94];
  v0[49] = v0;
  v86 = v0[61];
  v0[63] = v86;
  v87 = [v86 logoURL];
  sub_214CCD124();
  sub_214C80E84();
  v88 = sub_214CCD164();
  v89 = v3;
  (*(v85[71] + 8))(v85[73], v85[70]);
  MEMORY[0x277D82BD8](v87);
  if (v2)
  {

    v83 = 0;
    v84 = 0xF000000000000000;
  }

  else
  {
    v83 = v88;
    v84 = v89;
  }

  if ((v84 & 0xF000000000000000) == 0xF000000000000000)
  {
    v80 = v85[95];
    v73 = v85[72];
    v74 = v85[70];
    v72 = v85[71];
    v78 = objc_opt_self();
    v85[38] = sub_214CD03B4();
    v85[39] = v4;
    v5 = sub_214CCF614();
    MEMORY[0x21605E650](v5);

    v77 = [v86 logoURL];
    sub_214CCD124();
    v75 = sub_214CCD134();
    v76 = v6;
    (*(v72 + 8))(v73, v74);
    v85[40] = v75;
    v85[41] = v76;
    sub_214CD0394();
    sub_214A61B48();
    MEMORY[0x277D82BD8](v77);
    v7 = sub_214CCF614();
    MEMORY[0x21605E650](v7);

    sub_214A61B48();
    sub_214CCF5F4();
    v79 = sub_214CCF544();

    v81 = [v78 em:v79 internalErrorWithReason:?];
    MEMORY[0x277D82BD8](v79);
    swift_willThrow();
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v80);
    v82 = v81;
LABEL_14:
    v30 = v85[84];
    v15 = v85[76];
    v29 = v85[74];
    v31 = v85[65];
    v16 = v82;
    v85[62] = v82;
    v17 = sub_214C01D6C();
    v30(v15, v17, v29);
    MEMORY[0x277D82BE0](v31);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v18 = v82;
    v34 = swift_allocObject();
    *(v34 + 16) = v82;
    log = sub_214CCDA54();
    v44 = sub_214CCFBA4();
    v36 = swift_allocObject();
    *(v36 + 16) = 66;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_214B1DA88;
    *(v33 + 24) = v32;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_214B21624;
    *(v38 + 24) = v33;
    v39 = swift_allocObject();
    *(v39 + 16) = 34;
    v40 = swift_allocObject();
    *(v40 + 16) = 8;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_214C09850;
    *(v35 + 24) = v34;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_214A7E854;
    *(v41 + 24) = v35;
    sub_214CD03C4();
    v42 = v19;

    *v42 = sub_214A662DC;
    v42[1] = v36;

    v42[2] = sub_214A662DC;
    v42[3] = v37;

    v42[4] = sub_214B217B4;
    v42[5] = v38;

    v42[6] = sub_214A662DC;
    v42[7] = v39;

    v42[8] = sub_214A662DC;
    v42[9] = v40;

    v42[10] = sub_214A7E40C;
    v42[11] = v41;
    sub_214A63280();

    if (os_log_type_enabled(log, v44))
    {
      v26 = sub_214CCFF24();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v27 = sub_214A632C4(1);
      v28 = sub_214A632C4(1);
      v90 = v26;
      v91 = v27;
      v92 = v28;
      sub_214A6627C(2, &v90);
      sub_214A6627C(2, &v90);
      v93 = sub_214A662DC;
      v94 = v36;
      sub_214A66290(&v93, &v90, &v91, &v92);
      v93 = sub_214A662DC;
      v94 = v37;
      sub_214A66290(&v93, &v90, &v91, &v92);
      v93 = sub_214B217B4;
      v94 = v38;
      sub_214A66290(&v93, &v90, &v91, &v92);
      v93 = sub_214A662DC;
      v94 = v39;
      sub_214A66290(&v93, &v90, &v91, &v92);
      v93 = sub_214A662DC;
      v94 = v40;
      sub_214A66290(&v93, &v90, &v91, &v92);
      v93 = sub_214A7E40C;
      v94 = v41;
      sub_214A66290(&v93, &v90, &v91, &v92);
      _os_log_impl(&dword_214A5E000, log, v44, "Could not fetch business logo for context:\n%{public}@\nError: %{public}s", v26, 0x16u);
      sub_214A669DC(v27);
      sub_214A669DC(v28);
      sub_214CCFF04();
    }

    else
    {
    }

    v24 = v85[88];
    v22 = v85[76];
    v23 = v85[74];
    v25 = v85[68];
    v20 = MEMORY[0x277D82BD8](log);
    v24(v22, v23, v20);

    v21 = v82;
    v25(0, v82);

    goto LABEL_11;
  }

  v62 = v85[84];
  v8 = v85[80];
  v61 = v85[74];
  v63 = v85[65];
  v85[42] = v83;
  v85[43] = v84;
  v9 = sub_214C01D6C();
  v62(v8, v9, v61);
  MEMORY[0x277D82BE0](v63);
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  oslog = sub_214CCDA54();
  v71 = sub_214CCFBB4();
  v66 = swift_allocObject();
  *(v66 + 16) = 66;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_214B1DA88;
  *(v65 + 24) = v64;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_214B21624;
  *(v68 + 24) = v65;
  sub_214CD03C4();
  v69 = v10;

  *v69 = sub_214A662DC;
  v69[1] = v66;

  v69[2] = sub_214A662DC;
  v69[3] = v67;

  v69[4] = sub_214B217B4;
  v69[5] = v68;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v71))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v59 = sub_214A632C4(1);
    v60 = sub_214A632C4(0);
    v95 = buf;
    v96 = v59;
    v97 = v60;
    sub_214A6627C(2, &v95);
    sub_214A6627C(1, &v95);
    v98 = sub_214A662DC;
    v99 = v66;
    sub_214A66290(&v98, &v95, &v96, &v97);
    v98 = sub_214A662DC;
    v99 = v67;
    sub_214A66290(&v98, &v95, &v96, &v97);
    v98 = sub_214B217B4;
    v99 = v68;
    sub_214A66290(&v98, &v95, &v96, &v97);
    _os_log_impl(&dword_214A5E000, oslog, v71, "Successfully fetched business logo for context:\n%{public}@", buf, 0xCu);
    sub_214A669DC(v59);
    sub_214A669DC(v60);
    sub_214CCFF04();
  }

  else
  {
  }

  v54 = v85[88];
  v52 = v85[80];
  v53 = v85[74];
  v11 = MEMORY[0x277D82BD8](oslog);
  v54(v52, v53, v11);
  v55 = objc_opt_self();
  sub_214AF8330(v83, v84);
  v56 = sub_214CCD174();
  sub_214AF83FC(v83, v84);
  v57 = [v55 mui:v56 imageWithData:?];
  MEMORY[0x277D82BD8](v56);
  if (!v57)
  {
    v48 = v85[95];
    v46 = objc_opt_self();
    sub_214CCF614();
    v47 = sub_214CCF544();

    v49 = [v46 em:v47 internalErrorWithReason:?];
    MEMORY[0x277D82BD8](v47);
    swift_willThrow();
    sub_214AF83FC(v83, v84);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v48);
    v82 = v49;
    goto LABEL_14;
  }

  v51 = v85[95];
  v50 = v85[68];
  v85[64] = v57;

  v12 = MEMORY[0x277D82BE0](v57);
  v50(v57, 0, v12);
  MEMORY[0x277D82BD8](v57);

  MEMORY[0x277D82BD8](v57);
  sub_214AF83FC(v83, v84);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v51);
LABEL_11:
  v45 = v85[90];
  MEMORY[0x277D82BD8](v85[93]);
  MEMORY[0x277D82BD8](v45);

  v13 = *(v85[49] + 8);

  return v13();
}

uint64_t sub_214C0662C()
{
  v117 = v0;
  v101 = v0[92];
  v99 = v0[91];
  v100 = v0[90];
  v0[49] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v100);
  v1 = v101;
  v0[55] = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C0);
  sub_214BC5914();
  if (swift_dynamicCast())
  {
    v94 = *(v98 + 448);
    v95 = objc_opt_self();
    MEMORY[0x277D82BE0](v94);
    v96 = sub_214CCD074();

    v97 = [v95 ed:v96 isNoBusinessMetadataFoundError:?];
    MEMORY[0x277D82BD8](v96);
    if (v97)
    {
      v84 = *(v98 + 672);
      v4 = *(v98 + 632);
      v83 = *(v98 + 592);
      v85 = *(v98 + 520);
      *(v98 + 464) = v94;
      v5 = sub_214C01D6C();
      v84(v4, v5, v83);
      MEMORY[0x277D82BE0](v85);
      v86 = swift_allocObject();
      *(v86 + 16) = v85;
      oslog = sub_214CCDA54();
      v93 = sub_214CCFBB4();
      v88 = swift_allocObject();
      *(v88 + 16) = 66;
      v89 = swift_allocObject();
      *(v89 + 16) = 8;
      v87 = swift_allocObject();
      *(v87 + 16) = sub_214B1DA88;
      *(v87 + 24) = v86;
      v90 = swift_allocObject();
      *(v90 + 16) = sub_214B21624;
      *(v90 + 24) = v87;
      sub_214CD03C4();
      v91 = v6;

      *v91 = sub_214A662DC;
      v91[1] = v88;

      v91[2] = sub_214A662DC;
      v91[3] = v89;

      v91[4] = sub_214B217B4;
      v91[5] = v90;
      sub_214A63280();

      if (os_log_type_enabled(oslog, v93))
      {
        buf = sub_214CCFF24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v81 = sub_214A632C4(1);
        v82 = sub_214A632C4(0);
        v112 = buf;
        v113 = v81;
        v114 = v82;
        sub_214A6627C(2, &v112);
        sub_214A6627C(1, &v112);
        v115 = sub_214A662DC;
        v116 = v88;
        sub_214A66290(&v115, &v112, &v113, &v114);
        v115 = sub_214A662DC;
        v116 = v89;
        sub_214A66290(&v115, &v112, &v113, &v114);
        v115 = sub_214B217B4;
        v116 = v90;
        sub_214A66290(&v115, &v112, &v113, &v114);
        _os_log_impl(&dword_214A5E000, oslog, v93, "No business metadata returned for context:\n%{public}@", buf, 0xCu);
        sub_214A669DC(v81);
        sub_214A669DC(v82);
        sub_214CCFF04();
      }

      else
      {
      }

      v77 = *(v98 + 704);
      v75 = *(v98 + 632);
      v76 = *(v98 + 592);
      v78 = *(v98 + 520);
      v7 = MEMORY[0x277D82BD8](oslog);
      v77(v75, v76, v7);
      v79 = [v78 businessLogoID];
      if (v79)
      {
        v71 = sub_214CCF564();
        v72 = v8;
        MEMORY[0x277D82BD8](v79);
        v73 = v71;
        v74 = v72;
      }

      else
      {
        v73 = 0;
        v74 = 0;
      }

      *(v98 + 288) = v73;
      *(v98 + 296) = v74;
      if (*(v98 + 296))
      {
        sub_214A61B48();
        v61 = *(v98 + 672);
        v9 = *(v98 + 624);
        v60 = *(v98 + 592);
        v62 = *(v98 + 520);
        v10 = sub_214C01D6C();
        v61(v9, v10, v60);
        MEMORY[0x277D82BE0](v62);
        v63 = swift_allocObject();
        *(v63 + 16) = v62;
        log = sub_214CCDA54();
        v70 = sub_214CCFBA4();
        v65 = swift_allocObject();
        *(v65 + 16) = 66;
        v66 = swift_allocObject();
        *(v66 + 16) = 8;
        v64 = swift_allocObject();
        *(v64 + 16) = sub_214B1DA88;
        *(v64 + 24) = v63;
        v67 = swift_allocObject();
        *(v67 + 16) = sub_214B21624;
        *(v67 + 24) = v64;
        sub_214CD03C4();
        v68 = v11;

        *v68 = sub_214A662DC;
        v68[1] = v65;

        v68[2] = sub_214A662DC;
        v68[3] = v66;

        v68[4] = sub_214B217B4;
        v68[5] = v67;
        sub_214A63280();

        if (os_log_type_enabled(log, v70))
        {
          v57 = sub_214CCFF24();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
          v58 = sub_214A632C4(1);
          v59 = sub_214A632C4(0);
          v107 = v57;
          v108 = v58;
          v109 = v59;
          sub_214A6627C(2, &v107);
          sub_214A6627C(1, &v107);
          v110 = sub_214A662DC;
          v111 = v65;
          sub_214A66290(&v110, &v107, &v108, &v109);
          v110 = sub_214A662DC;
          v111 = v66;
          sub_214A66290(&v110, &v107, &v108, &v109);
          v110 = sub_214B217B4;
          v111 = v67;
          sub_214A66290(&v110, &v107, &v108, &v109);
          _os_log_impl(&dword_214A5E000, log, v70, "Found mismatching business logo IDs for context:\n%{public}@", v57, 0xCu);
          sub_214A669DC(v58);
          sub_214A669DC(v59);
          sub_214CCFF04();
        }

        else
        {
        }

        v51 = *(v98 + 704);
        v49 = *(v98 + 624);
        v50 = *(v98 + 592);
        v52 = *(v98 + 536);
        v55 = *(v98 + 528);
        v12 = MEMORY[0x277D82BD8](log);
        v51(v49, v50, v12);
        v56 = [v52 messageRepository];
        MEMORY[0x277D82BE0](v55);
        swift_getObjectType();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v53 = NSStringFromClass(ObjCClassFromMetadata);
        sub_214CCF564();
        v54 = sub_214CCF544();

        [v56 reportIncorrectBusinessForAddress:v55 isBusinessConnectGrouping:1 fromClassName:{v54, MEMORY[0x277D82BD8](v53).n128_f64[0]}];
        MEMORY[0x277D82BD8](v54);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v56);
      }

      else
      {
        sub_214A61B48();
      }

      v48 = *(v98 + 736);
      v47 = *(v98 + 544);

      v14 = MEMORY[0x277D82BE0](v94);
      v47(0, v94, v14);

      MEMORY[0x277D82BD8](v94);

      goto LABEL_3;
    }

    MEMORY[0x277D82BD8](v94);
  }

  else
  {
  }

  v33 = *(v98 + 736);
  v31 = *(v98 + 672);
  v15 = *(v98 + 616);
  v30 = *(v98 + 592);
  v32 = *(v98 + 520);
  v16 = v33;
  *(v98 + 456) = v33;
  v17 = sub_214C01D6C();
  v31(v15, v17, v30);
  MEMORY[0x277D82BE0](v32);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v18 = v33;
  v36 = swift_allocObject();
  *(v36 + 16) = v33;
  v45 = sub_214CCDA54();
  v46 = sub_214CCFBA4();
  v38 = swift_allocObject();
  *(v38 + 16) = 66;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_214B1DA88;
  *(v35 + 24) = v34;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_214B21624;
  *(v40 + 24) = v35;
  v41 = swift_allocObject();
  *(v41 + 16) = 34;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_214C09850;
  *(v37 + 24) = v36;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_214A7E854;
  *(v43 + 24) = v37;
  sub_214CD03C4();
  v44 = v19;

  *v44 = sub_214A662DC;
  v44[1] = v38;

  v44[2] = sub_214A662DC;
  v44[3] = v39;

  v44[4] = sub_214B217B4;
  v44[5] = v40;

  v44[6] = sub_214A662DC;
  v44[7] = v41;

  v44[8] = sub_214A662DC;
  v44[9] = v42;

  v44[10] = sub_214A7E40C;
  v44[11] = v43;
  sub_214A63280();

  if (os_log_type_enabled(v45, v46))
  {
    v27 = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v28 = sub_214A632C4(1);
    v29 = sub_214A632C4(1);
    v102 = v27;
    v103 = v28;
    v104 = v29;
    sub_214A6627C(2, &v102);
    sub_214A6627C(2, &v102);
    v105 = sub_214A662DC;
    v106 = v38;
    sub_214A66290(&v105, &v102, &v103, &v104);
    v105 = sub_214A662DC;
    v106 = v39;
    sub_214A66290(&v105, &v102, &v103, &v104);
    v105 = sub_214B217B4;
    v106 = v40;
    sub_214A66290(&v105, &v102, &v103, &v104);
    v105 = sub_214A662DC;
    v106 = v41;
    sub_214A66290(&v105, &v102, &v103, &v104);
    v105 = sub_214A662DC;
    v106 = v42;
    sub_214A66290(&v105, &v102, &v103, &v104);
    v105 = sub_214A7E40C;
    v106 = v43;
    sub_214A66290(&v105, &v102, &v103, &v104);
    _os_log_impl(&dword_214A5E000, v45, v46, "Could not fetch business metadata for context:\n%{public}@\nError: %{public}s", v27, 0x16u);
    sub_214A669DC(v28);
    sub_214A669DC(v29);
    sub_214CCFF04();
  }

  else
  {
  }

  v26 = *(v98 + 736);
  v24 = *(v98 + 704);
  v22 = *(v98 + 616);
  v23 = *(v98 + 592);
  v25 = *(v98 + 544);
  v20 = MEMORY[0x277D82BD8](v45);
  v24(v22, v23, v20);

  v21 = v26;
  v25(0, v26);

LABEL_3:

  v2 = *(*(v98 + 392) + 8);

  return v2();
}

uint64_t sub_214C081CC()
{
  v43 = v0;
  v19 = v0[96];
  v20 = v0[95];
  v0[49] = v0;
  swift_willThrow();
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v24 = v0[97];
  v22 = v0[84];
  v1 = v0[76];
  v21 = v0[74];
  v23 = v0[65];
  v2 = v24;
  v0[62] = v24;
  v3 = sub_214C01D6C();
  v22(v1, v3, v21);
  MEMORY[0x277D82BE0](v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v4 = v24;
  v27 = swift_allocObject();
  *(v27 + 16) = v24;
  oslog = sub_214CCDA54();
  v37 = sub_214CCFBA4();
  v29 = swift_allocObject();
  *(v29 + 16) = 66;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_214B1DA88;
  *(v26 + 24) = v25;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_214B21624;
  *(v31 + 24) = v26;
  v32 = swift_allocObject();
  *(v32 + 16) = 34;
  v33 = swift_allocObject();
  *(v33 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_214C09850;
  *(v28 + 24) = v27;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_214A7E854;
  *(v34 + 24) = v28;
  sub_214CD03C4();
  v35 = v5;

  *v35 = sub_214A662DC;
  v35[1] = v29;

  v35[2] = sub_214A662DC;
  v35[3] = v30;

  v35[4] = sub_214B217B4;
  v35[5] = v31;

  v35[6] = sub_214A662DC;
  v35[7] = v32;

  v35[8] = sub_214A662DC;
  v35[9] = v33;

  v35[10] = sub_214A7E40C;
  v35[11] = v34;
  sub_214A63280();

  if (os_log_type_enabled(oslog, v37))
  {
    buf = sub_214CCFF24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v16 = sub_214A632C4(1);
    v17 = sub_214A632C4(1);
    v38 = buf;
    v39 = v16;
    v40 = v17;
    sub_214A6627C(2, &v38);
    sub_214A6627C(2, &v38);
    v41 = sub_214A662DC;
    v42 = v29;
    sub_214A66290(&v41, &v38, &v39, &v40);
    v41 = sub_214A662DC;
    v42 = v30;
    sub_214A66290(&v41, &v38, &v39, &v40);
    v41 = sub_214B217B4;
    v42 = v31;
    sub_214A66290(&v41, &v38, &v39, &v40);
    v41 = sub_214A662DC;
    v42 = v32;
    sub_214A66290(&v41, &v38, &v39, &v40);
    v41 = sub_214A662DC;
    v42 = v33;
    sub_214A66290(&v41, &v38, &v39, &v40);
    v41 = sub_214A7E40C;
    v42 = v34;
    sub_214A66290(&v41, &v38, &v39, &v40);
    _os_log_impl(&dword_214A5E000, oslog, v37, "Could not fetch business logo for context:\n%{public}@\nError: %{public}s", buf, 0x16u);
    sub_214A669DC(v16);
    sub_214A669DC(v17);
    sub_214CCFF04();
  }

  else
  {
  }

  v12 = v18[88];
  v10 = v18[76];
  v11 = v18[74];
  v13 = v18[68];
  v6 = MEMORY[0x277D82BD8](oslog);
  v12(v10, v11, v6);

  v7 = v24;
  v13(0, v24);

  v14 = v18[90];
  MEMORY[0x277D82BD8](v18[93]);
  MEMORY[0x277D82BD8](v14);

  v8 = *(v18[49] + 8);

  return v8();
}

double sub_214C08E74(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_214C09960();
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
    v3 = sub_214C09960();
    sub_214C01C44(v11, &v12, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

double sub_214C08FF4(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v11 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_214C098FC();
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
    v3 = sub_214C098FC();
    sub_214C01C44(v11, &v12, v3);
  }

  MEMORY[0x277D82BD8](a3);
  *&result = MEMORY[0x277D82BD8](a2).n128_u64[0];
  return result;
}

uint64_t sub_214C0912C(void *a1)
{
  v1 = a1;
  v3 = sub_214CCD074();
  v4 = [v3 ef_publicDescription];
  v6 = sub_214CCF564();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v6;
}

double sub_214C09294(uint64_t a1, id a2, uint64_t a3)
{
  v3 = a2;
  if (a2)
  {
    v5 = sub_214CCD074();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  (*(a3 + 16))(a3, a1);
  *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  return result;
}

MUIBusinessConnectServiceProvider __swiftcall MUIBusinessConnectServiceProvider.init()()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result.messageRepository = v2;
  result.service = v1;
  result.super.isa = v0;
  return result;
}

id sub_214C093FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = sub_214CCF544();
  if (a4)
  {
    v11 = sub_214CCF544();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (a6)
  {
    v10 = sub_214CCF544();

    v6 = [v14 initWithEmail:v16 fullDomain:v12 topLevelDomain:v10];
  }

  else
  {
    v6 = [v14 initWithEmail:v16 fullDomain:v12 topLevelDomain:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v16);

  return v9;
}

id sub_214C09554()
{
  v2 = sub_214CCF544();
  v3 = [v1 initWithBusinessId_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

uint64_t sub_214C09638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v4, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_214C096C8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[8];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C02C08(a1, v6, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_214C097EC()
{
  v2 = qword_280C7C868;
  if (!qword_280C7C868)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C868);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C09858()
{
  v2 = qword_280C7C8D8;
  if (!qword_280C7C8D8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C8D8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C098FC()
{
  v2 = qword_280C7CC48;
  if (!qword_280C7CC48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CC48);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C09960()
{
  v2 = qword_280C7CAA0[0];
  if (!qword_280C7CAA0[0])
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, qword_280C7CAA0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t static MUICatchUpFeedbackController.provideAutomaticSummaryFeedback(with:message:sourceViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v19 = a2;
  v20 = a3;
  v23 = &unk_214CF2D10;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v22 = &v17 - v18;
  v28 = v4;
  v27 = v5;
  v26 = v6;
  v25 = v3;
  v21 = 0;
  v7 = sub_214CCF994();
  (*(*(v7 - 8) + 56))(v22, 1);
  MEMORY[0x277D82BE0](v19);
  MEMORY[0x277D82BE0](v20);
  v8 = swift_allocObject();
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v8;
  v15 = v24;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v15;
  v14[5] = v9;
  v14[6] = v10;
  sub_214B88C30(v11, v11, v12, v13, v14, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214C09B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = v6;
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  type metadata accessor for CatchUpFeedbackController();
  v7 = swift_task_alloc();
  *(v9 + 48) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_214C09C4C;

  return sub_214B52490(a4, a5, a6);
}

uint64_t sub_214C09C4C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_214C09D98(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C09B5C(a1, v6, v7, v8, v9, v10);
}

uint64_t static MUICatchUpFeedbackController.provideHighlightsFeedback(with:message:sourceViewController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v19 = a2;
  v20 = a3;
  v23 = &unk_214CF2D20;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v22 = &v17 - v18;
  v28 = v4;
  v27 = v5;
  v26 = v6;
  v25 = v3;
  v21 = 0;
  v7 = sub_214CCF994();
  (*(*(v7 - 8) + 56))(v22, 1);
  MEMORY[0x277D82BE0](v19);
  MEMORY[0x277D82BE0](v20);
  v8 = swift_allocObject();
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v8;
  v15 = v24;
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v15;
  v14[5] = v9;
  v14[6] = v10;
  sub_214B88C30(v11, v11, v12, v13, v14, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214C0A0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = v6;
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = 0;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = a6;
  type metadata accessor for CatchUpFeedbackController();
  v7 = swift_task_alloc();
  *(v9 + 48) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_214C09C4C;

  return sub_214B526E0(a4, a5, a6);
}

uint64_t sub_214C0A1A4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C0A0B4(a1, v6, v7, v8, v9, v10);
}

uint64_t static MUICatchUpFeedbackController.isFeedbackRestricted()()
{
  if (EFIsCustomerBuild())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_214C0A328();
  }

  return v1 & 1;
}

id MUICatchUpFeedbackController.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = MUICatchUpFeedbackController;
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

unint64_t type metadata accessor for MUICatchUpFeedbackController()
{
  v2 = qword_27CA36DB8;
  if (!qword_27CA36DB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA36DB8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t MUICatchUpFeedbackType.title.getter(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_214CCF614();
      v4 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v5 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v4);

      return v5;
    }

    else if (a1 == 2)
    {
      sub_214CCF614();
      v2 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v3 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v2);

      return v3;
    }

    else
    {
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
    }
  }

  else
  {
    sub_214CCF614();
    v6 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614();
    sub_214B1C228();
    v7 = sub_214CCCF54();

    MEMORY[0x277D82BD8](v6);

    return v7;
  }

  return v8;
}

uint64_t sub_214C0AA28@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 2)
  {
    v5 = *MEMORY[0x277D08590];
    v4 = sub_214CCD514();
    return (*(*(v4 - 8) + 104))(a2, v5);
  }

  else if (a1 == 2)
  {
    v6 = *MEMORY[0x277D08578];
    v2 = sub_214CCD514();
    return (*(*(v2 - 8) + 104))(a2, v6);
  }

  else
  {
    sub_214B11080();
    result = sub_214CD0204();
    __break(1u);
  }

  return result;
}

id MUICatchUpFeedbackType.image.getter()
{
  MUICatchUpFeedbackType.imageName(selected:)(0);
  v1 = objc_opt_self();
  MUICatchUpFeedbackType.imageName(selected:)(0);
  v3 = sub_214CCF544();

  v2 = sub_214CCF544();

  v4 = [v1 mui:v3 imageWithSystemSymbolName:0 symbolColor:-1 hintScale:v2 accessibilityDescription:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);

  return v4;
}

uint64_t MUICatchUpFeedbackType.feedbackAction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = *MEMORY[0x277D084E8];
      v3 = sub_214CCD4F4();
      return (*(*(v3 - 8) + 104))(a2, v7);
    }

    else if (a1 == 2)
    {
      v6 = *MEMORY[0x277D084F8];
      v4 = sub_214CCD4F4();
      return (*(*(v4 - 8) + 104))(a2, v6);
    }

    else
    {
      sub_214B11080();
      result = sub_214CD0204();
      __break(1u);
    }
  }

  else
  {
    v8 = *MEMORY[0x277D08510];
    v2 = sub_214CCD4F4();
    return (*(*(v2 - 8) + 104))(a2, v8);
  }

  return result;
}

Swift::String __swiftcall MUICatchUpFeedbackType.imageName(selected:)(Swift::Bool selected)
{
  if (v1)
  {
    if (v1 == 1)
    {
      v19 = sub_214CCF614();
      v20 = v4;
      v18 = sub_214CCF614();
      v16 = MEMORY[0x21605D8B0](v19, v20, v18);
      v17 = v5;

      v23 = v16;
      v24 = v17;
    }

    else if (v1 == 2)
    {
      v14 = sub_214CCF614();
      v15 = v6;
      v13 = sub_214CCF614();
      v11 = MEMORY[0x21605D8B0](v14, v15, v13);
      v12 = v7;

      v23 = v11;
      v24 = v12;
    }

    else
    {
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
    }
  }

  else
  {
    v26 = sub_214CCF614();
    v27 = v2;
    v25 = sub_214CCF614();
    v21 = MEMORY[0x21605D8B0](v26, v27, v25);
    v22 = v3;

    v23 = v21;
    v24 = v22;
  }

  v8 = v23;
  v9 = v24;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id MUICatchUpFeedbackType.selectedImage.getter()
{
  MUICatchUpFeedbackType.imageName(selected:)(1);
  v1 = objc_opt_self();
  MUICatchUpFeedbackType.imageName(selected:)(0);
  v3 = sub_214CCF544();

  v2 = sub_214CCF544();

  v4 = [v1 mui:v3 imageWithSystemSymbolName:0 symbolColor:-1 hintScale:v2 accessibilityDescription:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);

  return v4;
}