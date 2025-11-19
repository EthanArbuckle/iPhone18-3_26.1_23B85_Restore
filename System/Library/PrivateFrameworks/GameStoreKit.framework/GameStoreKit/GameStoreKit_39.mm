unint64_t sub_24E9FC890()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x4449726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24E9FC8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24E9FCDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24E9FC918(uint64_t a1)
{
  v2 = sub_24E9FCC58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E9FC954(uint64_t a1)
{
  v2 = sub_24E9FCC58();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24E9FC9B0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24E9FCA0C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_24E9FCA0C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224E90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E9FCC58();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CC28();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CC28();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_24E9FCC58()
{
  result = qword_27F224E98;
  if (!qword_27F224E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224E98);
  }

  return result;
}

unint64_t sub_24E9FCCC0()
{
  result = qword_27F224EA8;
  if (!qword_27F224EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224EA8);
  }

  return result;
}

unint64_t sub_24E9FCD18()
{
  result = qword_27F224EB0;
  if (!qword_27F224EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224EB0);
  }

  return result;
}

unint64_t sub_24E9FCD70()
{
  result = qword_27F224EB8;
  if (!qword_27F224EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224EB8);
  }

  return result;
}

uint64_t sub_24E9FCDC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA4D4E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

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

uint64_t ImageAlignedButton.ImageAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24E9FCF74@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageAlignment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_24E9FCFC8(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageAlignment;
  swift_beginAccess();
  v1[v3] = v2;
  return [v1 setNeedsLayout];
}

id (*sub_24E9FD028(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E9FD08C;
}

id sub_24E9FD08C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

uint64_t sub_24E9FD0E0()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageWantsBaselineAlignment;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E9FD124(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageWantsBaselineAlignment;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_24E9FD1D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ImageAlignedButton();
  v58.receiver = v5;
  v58.super_class = v10;
  objc_msgSendSuper2(&v58, sel_imageRectForContentRect_, a1, a2, a3, a4);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v56 = v17;
  v57.receiver = v5;
  v57.super_class = v10;
  objc_msgSendSuper2(&v57, sel_titleRectForContentRect_, a1, a2, a3, a4);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v5 titleLabel];
  if (v26)
  {
    v27 = v26;
    v28 = OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageWantsBaselineAlignment;
    swift_beginAccess();
    if (*(v5 + v28) != 1)
    {

      goto LABEL_16;
    }

    v29 = [v27 font];
    if (!v29)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v30 = v29;
    v31 = [v27 text];
    v55 = v16;
    if (!v31)
    {

      goto LABEL_11;
    }

    v32 = v31;
    sub_24F92B0D8();

    v33 = qword_27F2104C8;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = sub_24F91EAA8();
    __swift_project_value_buffer(v34, qword_27F22C270);
    sub_24E600AEC();
    sub_24F92C508();
    v36 = v35;

    if (v36)
    {

LABEL_11:
      v37 = 1.0;
LABEL_15:
      v59.origin.x = v19;
      v59.origin.y = v21;
      v59.size.width = v23;
      v59.size.height = v25;
      v41 = v19;
      v42 = v21;
      v43 = v23;
      v44 = v25;
      v45 = v37 * CGRectGetHeight(v59);
      v60.origin.x = v41;
      v60.origin.y = v42;
      v60.size.width = v43;
      v60.size.height = v44;
      v54 = v45 - CGRectGetHeight(v60);
      v61.origin.x = v41;
      v61.origin.y = v42;
      v61.size.width = v43;
      v61.size.height = v44;
      MinY = CGRectGetMinY(v61);
      [v27 firstBaselineFromTop];
      v48 = MinY + v37 * v47;
      v62.origin.x = v12;
      v62.origin.y = v14;
      v62.size.height = v56;
      v62.size.width = v55;
      Height = CGRectGetHeight(v62);

      v50 = v48 - Height;
      v25 = v44;
      v23 = v43;
      v21 = v42;
      v19 = v41;
      v16 = v55;
      v14 = v50 + v54 * -0.5;
      goto LABEL_16;
    }

    [v30 lineHeight];
    v39 = v38;

    v37 = 1.3;
    v40 = ceil(v39 * 1.3);
    if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v40 > -9.22337204e18)
    {
      if (v40 < 9.22337204e18)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_16:
  v51 = OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageAlignment;
  swift_beginAccess();
  if (*(v5 + v51) == 1)
  {
    v52 = [v5 traitCollection];
    v53 = sub_24F92BF88();

    if (v53)
    {
      v63.origin.x = v19;
      v63.origin.y = v21;
      v63.size.width = v23;
      v63.size.height = v25;
      CGRectGetMinX(v63);
      [v5 imageEdgeInsets];
      v64.origin.x = v12;
      v64.origin.y = v14;
      v64.size.width = v16;
      v64.size.height = v56;
      CGRectGetWidth(v64);
    }

    else
    {
      v65.origin.x = v12;
      v65.origin.y = v14;
      v65.size.width = v16;
      v65.size.height = v56;
      CGRectGetMinX(v65);
      v66.size.height = v25;
      v66.origin.x = v19;
      v66.origin.y = v21;
      v66.size.width = v23;
      CGRectGetWidth(v66);
      [v5 imageEdgeInsets];
    }
  }
}

double sub_24E9FD664(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for ImageAlignedButton();
  v41.receiver = v5;
  v41.super_class = v10;
  objc_msgSendSuper2(&v41, sel_titleRectForContentRect_, a1, a2, a3, a4);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageAlignment;
  swift_beginAccess();
  if (*(v5 + v19) == 1)
  {
    v40.receiver = v5;
    v40.super_class = v10;
    objc_msgSendSuper2(&v40, sel_imageRectForContentRect_, a1, a2, a3, a4);
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [v5 traitCollection];
    v29 = sub_24F92BF88();

    v30 = v21;
    v31 = v23;
    v32 = v25;
    v33 = v27;
    if (v29)
    {
      MaxX = CGRectGetMaxX(*&v30);
      v42.origin.x = v12;
      v42.origin.y = v14;
      v42.size.width = v16;
      v42.size.height = v18;
      v35 = MaxX - CGRectGetWidth(v42);
      [v5 imageEdgeInsets];
      return v35 + v36;
    }

    else
    {
      MinX = CGRectGetMinX(*&v30);
      [v5 imageEdgeInsets];
      return MinX - v38;
    }
  }

  return v12;
}

double sub_24E9FD814(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, double (*a7)(double, double, double, double))
{
  v12 = a1;
  v13 = a7(a2, a3, a4, a5);

  return v13;
}

double sub_24E9FD898()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_touchOutsideMargin;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_24E9FD8E4(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_touchOutsideMargin);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_24E9FDA64@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_primaryActionHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24E972460;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4);
}

uint64_t sub_24E9FDB04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24E9A0188;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24E5FCA4C(v1);
  return sub_24E9FDBF0(v4, v3);
}

uint64_t sub_24E9FDB94()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_primaryActionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_24E5FCA4C(*v1);
  return v2;
}

uint64_t sub_24E9FDBF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v3 removeTarget:v3 action:sel_didTriggerPrimaryAction_ forControlEvents:0x2000];
  v6 = &v3[OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_primaryActionHandler];
  swift_beginAccess();
  v7 = *v6;
  *v6 = a1;
  v6[1] = a2;
  sub_24E5FCA4C(a1);
  sub_24E5FCA4C(a1);
  result = sub_24E824448(v7);
  if (a1)
  {
    sub_24E824448(a1);
    [v3 addTarget:v3 action:sel_didTriggerPrimaryAction_ forControlEvents:0x2000];
    return sub_24E824448(a1);
  }

  return result;
}

void (*sub_24E9FDCE0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_primaryActionHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v7;
  sub_24E5FCA4C(v6);
  return sub_24E9FDD7C;
}

void sub_24E9FDD7C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    sub_24E5FCA4C((*a1)[3]);
    sub_24E9FDBF0(v3, v4);
    sub_24E824448(v2[3]);
  }

  else
  {
    sub_24E9FDBF0((*a1)[3], v4);
  }

  free(v2);
}

id ImageAlignedButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ImageAlignedButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageAlignment] = 0;
  v4[OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageWantsBaselineAlignment] = 0;
  v9 = &v4[OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_touchOutsideMargin];
  v10 = *(MEMORY[0x277D768C8] + 16);
  *v9 = *MEMORY[0x277D768C8];
  v9[1] = v10;
  v11 = &v4[OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_primaryActionHandler];
  v12 = type metadata accessor for ImageAlignedButton();
  *v11 = 0;
  v11[1] = 0;
  v14.receiver = v4;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id ImageAlignedButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ImageAlignedButton.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageAlignment] = 0;
  v1[OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageWantsBaselineAlignment] = 0;
  v3 = &v1[OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_touchOutsideMargin];
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  v5 = &v1[OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_primaryActionHandler];
  v6 = type metadata accessor for ImageAlignedButton();
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id ImageAlignedButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImageAlignedButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24E9FE1B0()
{
  result = qword_27F224EE0;
  if (!qword_27F224EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224EE0);
  }

  return result;
}

id sub_24E9FE210(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageAlignment;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsLayout];
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_24E9FE2D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_imageWantsBaselineAlignment;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 sub_24E9FE328@<Q0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_touchOutsideMargin;
  swift_beginAccess();
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_24E9FE37C(uint64_t a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC12GameStoreKit18ImageAlignedButton_touchOutsideMargin);
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_24E9FE670()
{

  return swift_deallocObject();
}

uint64_t TodayPageIntent.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v61 - v8;
  v73 = sub_24F91F4A8();
  v70 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v67 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91F6B8();
  v62 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v61 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v61 - v22;
  sub_24F928398();
  v24 = sub_24F928348();
  if (v25)
  {
    v71 = v24;
    v72 = v25;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v10;
    v28 = v13;
    v29 = a1;
    v31 = v30;
    (*(v62 + 8))(v12, v27);
    v71 = v26;
    v72 = v31;
    a1 = v29;
    v13 = v28;
  }

  sub_24F92C7F8();
  v32 = *(v14 + 8);
  v32(v23, v13);
  sub_24F928398();
  v33 = v66;
  sub_24F928268();
  v34 = v20;
  v35 = v33;
  v32(v34, v13);
  v36 = v70;
  v37 = v73;
  if ((*(v70 + 48))(v35, 1, v73) == 1)
  {
    sub_24E601704(v35, &qword_27F228530);
    v38 = a1;
    v39 = sub_24F92AC38();
    sub_24E9FF430(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v41 = v40;
    v42 = type metadata accessor for TodayPageIntent();
    *v41 = 7107189;
    v41[1] = 0xE300000000000000;
    v41[2] = v42;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    v43 = sub_24F9285B8();
    (*(*(v43 - 8) + 8))(v68, v43);
    v32(v38, v13);
    return sub_24E6585F8(a3);
  }

  else
  {
    v45 = v35;
    v46 = v67;
    (*(v36 + 32))(v67, v45, v37);
    v47 = type metadata accessor for TodayPageIntent();
    (*(v36 + 16))(a3 + v47[5], v46, v37);
    v48 = v63;
    v49 = a1;
    sub_24F928398();
    v50 = v65;
    sub_24F9282B8();
    v66 = v13;
    v51 = v13;
    v52 = v50;
    v32(v48, v51);
    v53 = sub_24F92AC28();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v52, 1, v53) == 1)
    {
      sub_24E601704(v52, &qword_27F2213B0);
      v55 = MEMORY[0x277D84F90];
    }

    else
    {
      v56 = v69;
      v55 = sub_24F92ABB8();
      v69 = v56;
      (*(v54 + 8))(v52, v53);
    }

    *(a3 + v47[6]) = v55;
    v57 = v64;
    sub_24F928398();
    v58 = sub_24F928278();
    v59 = sub_24F9285B8();
    (*(*(v59 - 8) + 8))(v68, v59);
    v60 = v66;
    v32(v49, v66);
    v32(v57, v60);
    result = (*(v70 + 8))(v67, v73);
    *(a3 + v47[7]) = v58 & 1;
  }

  return result;
}

uint64_t type metadata accessor for TodayPageIntent()
{
  result = qword_27F224F00;
  if (!qword_27F224F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E9FEE38@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24F928348();
  if (v3)
  {
    v4 = result;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t TodayPageIntent.init(id:url:onboardingCardIds:isRunningPPTs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v9;
  *(a5 + 32) = *(a1 + 32);
  v10 = type metadata accessor for TodayPageIntent();
  v11 = v10[5];
  v12 = sub_24F91F4A8();
  result = (*(*(v12 - 8) + 32))(a5 + v11, a2, v12);
  *(a5 + v10[6]) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t TodayPageIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TodayPageIntent() + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TodayPageIntent.onboardingCardIds.getter()
{
  type metadata accessor for TodayPageIntent();
}

JSValue __swiftcall TodayPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_14;
  }

  isa = result.super.isa;
  sub_24E65864C(v1, v24);
  v7 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_24F92C328();
  v8 = type metadata accessor for TodayPageIntent();
  v24[0] = sub_24F91F398();
  v24[1] = v9;
  v10 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_24F92C328();
  v11 = *(v1 + *(v8 + 24));
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v21 = v8;
    v22 = v1;
    v23 = in.super.isa;
    v24[0] = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v12, 0);
    v13 = v24[0];
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      v24[0] = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_24F4578E0((v17 > 1), v18 + 1, 1);
        v13 = v24[0];
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v14 += 2;
      --v12;
    }

    while (v12);
    v2 = v22;
    in.super.isa = v23;
    v8 = v21;
  }

  v24[0] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  v20 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v20)
  {
    goto LABEL_16;
  }

  sub_24F92C328();
  result.super.isa = [v4 valueWithBool:*(v2 + *(v8 + 28)) inContext:in.super.isa];
  if (result.super.isa)
  {

    sub_24F92C328();
    return isa;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24E9FF430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24E9FF48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24E9FF54C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F91F4A8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24E9FF5F0()
{
  sub_24F91F4A8();
  if (v0 <= 0x3F)
  {
    sub_24E9FF68C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E9FF68C()
{
  if (!qword_27F224F10)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F224F10);
    }
  }
}

Swift::Void __swiftcall JSFreshnessWatchdog.willEnterForeground()()
{
  v1 = sub_24F928C38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EA00DB0();
  sub_24F928C28();
  v5 = OBJC_IVAR____TtC12GameStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
}

uint64_t sub_24E9FF7D4()
{
  result = sub_24F92B098();
  qword_27F224F18 = result;
  return result;
}

uint64_t sub_24E9FF830()
{
  result = sub_24F92B098();
  qword_27F224F20 = result;
  return result;
}

id sub_24E9FF88C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t JSFreshnessWatchdog.BootstrapReason.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t JSFreshnessWatchdog.BagContract.__allocating_init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = swift_allocObject();
  v7 = *a3;
  v8 = a3[1];
  LOBYTE(a3) = *(a3 + 16);
  v9 = OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v10 = sub_24F92A498();
  (*(*(v10 - 8) + 32))(v6 + v9, a1, v10);
  *(v6 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = a2;
  v11 = v6 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v11 = v7;
  *(v11 + 8) = v8;
  *(v11 + 16) = a3;
  return v6;
}

uint64_t JSFreshnessWatchdog.BagContract.init(_:isOfflineBag:bagOfflinePolicy:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v9 = OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v10 = sub_24F92A498();
  (*(*(v10 - 8) + 32))(v3 + v9, a1, v10);
  *(v3 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = a2;
  v11 = v3 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v8;
  return v3;
}

uint64_t JSFreshnessWatchdog.BagContract.bag.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v4 = sub_24F92A498();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 JSFreshnessWatchdog.BagContract.bagOfflinePolicy.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy + 16);
  result = *(v1 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

double sub_24E9FFC2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  v9 = sub_24F9288E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != -1)
  {
    swift_once();
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D21C40], v9);
  sub_24F92A368();
  (*(v10 + 8))(v12, v9);
  sub_24F92A408();
  (*(v6 + 8))(v8, v5);
  return *&v14[3];
}

uint64_t JSFreshnessWatchdog.BagContract.deinit()
{
  v1 = OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v2 = sub_24F92A498();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t JSFreshnessWatchdog.BagContract.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v2 = sub_24F92A498();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24E9FFF2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag;
  v5 = sub_24F92A498();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

__n128 sub_24E9FFFBC@<Q0>(__n128 *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy);
  v3 = v2[1].n128_u8[0];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u8[0] = v3;
  return result;
}

double sub_24EA00084(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a6;
  v16[2] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  v11 = sub_24F9288E8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a3 != -1)
  {
    swift_once();
  }

  (*(v12 + 104))(v14, *MEMORY[0x277D21C40], v11);
  sub_24F92A368();
  (*(v12 + 8))(v14, v11);
  sub_24F92A408();
  (*(v8 + 8))(v10, v7);
  return *&v16[3];
}

uint64_t sub_24EA00280()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39B440);
  __swift_project_value_buffer(v4, qword_27F39B440);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24EA003D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_allocate_value_buffer(v0, qword_27F224F28);
  __swift_project_value_buffer(v0, qword_27F224F28);
  return sub_24F928C68();
}

uint64_t static JSFreshnessWatchdog.debugAlwaysTreatResidentSessionAsInvalidKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2100C0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  v3 = __swift_project_value_buffer(v2, qword_27F224F28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t JSFreshnessWatchdog.__allocating_init(bagContract:networkInquiry:process:)(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_24EA03F18(v9, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t JSFreshnessWatchdog.init(bagContract:networkInquiry:process:)(uint64_t a1, void *a2, void *a3)
{
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_24EA03D00(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t sub_24EA00670(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = a1[3];
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v3);
    v5 = (*(v4 + 8))(v3, v4);
    sub_24EA0070C(v5 & 1);
  }

  return result;
}

void sub_24EA0070C(char a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  if (v2 & 1) == 0 && (a1)
  {
    swift_beginAccess();
    v3 = *(v1 + 136);
    v4 = *(v1 + 144);
    v5 = __swift_project_boxed_opaque_existential_1((v1 + 112), v3);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x28223BE20](v5);
    v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    LOBYTE(v4) = (*(v4 + 16))(v3, v4);
    (*(v6 + 8))(v9, v3);
    if (v4)
    {
      if (qword_27F2100B8 != -1)
      {
        swift_once();
      }

      v10 = sub_24F92AAE8();
      __swift_project_value_buffer(v10, qword_27F39B440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      sub_24EA00DB0();
    }
  }
}

uint64_t JSFreshnessWatchdog.__allocating_init(bag:isOfflineBag:bagOfflinePolicy:networkInquiry:process:)(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v23 = a5;
  v22 = a2;
  v8 = sub_24F92A498();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  v13 = a3[1];
  v15 = *(a3 + 16);
  (*(v9 + 16))(v12, a1, v8, v10);
  type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag, v12, v8);
  *(v16 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = v22;
  v17 = v16 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v17 = v14;
  *(v17 + 8) = v13;
  *(v17 + 16) = v15;
  sub_24E615E00(a4, v24);
  v18 = swift_allocObject();
  v19 = sub_24EA03B10(v16, v24, v23, v18);
  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(v9 + 8))(a1, v8);
  return v19;
}

uint64_t JSFreshnessWatchdog.deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (*(v0 + 96))
  {
    sub_24E615E00(v0 + 72, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_24E601704(v0 + 72, &qword_27F224F48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  sub_24E824448(*(v0 + 152));
  v4 = OBJC_IVAR____TtC12GameStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  v5 = sub_24F928C38();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return v1;
}

uint64_t JSFreshnessWatchdog.__deallocating_deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (*(v0 + 96))
  {
    sub_24E615E00(v0 + 72, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  sub_24E601704(v0 + 72, &qword_27F224F48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  sub_24E824448(*(v0 + 152));
  v4 = OBJC_IVAR____TtC12GameStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  v5 = sub_24F928C38();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return swift_deallocClassInstance();
}

void *JSFreshnessWatchdog.process.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_24EA00DB0()
{
  sub_24EA016DC(v10);
  v1 = v10[0];
  if (!v10[0])
  {
    if (qword_27F2100B8 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v2);
  if ((*(v3 + 8))(v2, v3))
  {
    swift_beginAccess();
    v4 = v0[19];
    if (v4 && (v10[0] = v1, , v5 = v4(v10), sub_24E824448(v4), (v5 & 1) == 0))
    {
      if (qword_27F2100B8 != -1)
      {
        swift_once();
      }

      v9 = sub_24F92AAE8();
      __swift_project_value_buffer(v9, qword_27F39B440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();
    }

    else if (v1 == 2)
    {
      sub_24EA026EC();
    }

    else
    {
      if (qword_27F2100B8 != -1)
      {
        swift_once();
      }

      v7 = sub_24F92AAE8();
      __swift_project_value_buffer(v7, qword_27F39B440);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      v11 = &type metadata for JSFreshnessWatchdog.BootstrapReason;
      v10[0] = v1;
      sub_24F928438();
      sub_24E601704(v10, &qword_27F2129B0);
      sub_24F92A588();

      v8 = [objc_opt_self() sharedCoordinator];
      [v8 notify];
    }

    return;
  }

  if (qword_27F2100B8 != -1)
  {
LABEL_19:
    swift_once();
  }

LABEL_10:
  v6 = sub_24F92AAE8();
  __swift_project_value_buffer(v6, qword_27F39B440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

uint64_t sub_24EA013A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24EA04384;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4);
}

uint64_t sub_24EA01438(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24EA0434C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 152);
  *(v7 + 152) = v6;
  *(v7 + 160) = v5;
  sub_24E5FCA4C(v3);
  return sub_24E824448(v8);
}

uint64_t JSFreshnessWatchdog.reasonValidator.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 152);
  sub_24E5FCA4C(v1);
  return v1;
}

uint64_t JSFreshnessWatchdog.reasonValidator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 152);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return sub_24E824448(v5);
}

Swift::Void __swiftcall JSFreshnessWatchdog.didFinishBootstrap()()
{
  v1 = sub_24F928C38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928C28();
  v5 = OBJC_IVAR____TtC12GameStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  swift_endAccess();
}

uint64_t sub_24EA016DC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v3 = sub_24F91F648();
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3);
  v104 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v5 - 8);
  v113 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v114 = &v103 - v8;
  v108 = sub_24F92A498();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F92AAE8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v121 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928C38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = *(v1 + 17);
  v17 = *(v1 + 18);
  v19 = __swift_project_boxed_opaque_existential_1(v1 + 14, v18);
  v20 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v21);
  v24 = (*(v17 + 40))(v18, v17);
  (*(v20 + 8))(v23, v18);
  v25 = *(v2 + 17);
  v26 = *(v2 + 18);
  v27 = __swift_project_boxed_opaque_existential_1(v2 + 14, v25);
  v28 = *(v25 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, v29);
  v32 = (*(v26 + 48))(v25, v26);
  (*(v28 + 8))(v31, v25);
  v33 = OBJC_IVAR____TtC12GameStoreKit19JSFreshnessWatchdog_lastForegroundTime;
  swift_beginAccess();
  v34 = *(v14 + 16);
  v112 = v33;
  v111 = v14 + 16;
  v110 = v34;
  v34(v16, &v2[v33], v13);
  sub_24F928C18();
  v36 = v35;
  v37 = *(v14 + 8);
  v117 = v13;
  v37(v16, v13);
  if (qword_27F2100B8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v10, qword_27F39B440);
  v118 = v11;
  v119 = v10;
  (*(v11 + 16))(v121, v38, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_24F945E30;
  v109 = v39;
  sub_24F9283A8();
  v40 = *(v2 + 17);
  v41 = *(v2 + 18);
  v42 = __swift_project_boxed_opaque_existential_1(v2 + 14, v40);
  v43 = *(v40 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v103 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v46, v44);
  LOBYTE(v41) = (*(v41 + 32))(v40, v41);
  (*(v43 + 8))(v46, v40);
  v123 = MEMORY[0x277D839B0];
  LOBYTE(v122[0]) = v41 & 1;
  sub_24F928438();
  sub_24E601704(v122, &qword_27F2129B0);
  sub_24F9283A8();
  v47 = *(v2 + 17);
  v48 = *(v2 + 18);
  v49 = __swift_project_boxed_opaque_existential_1(v2 + 14, v47);
  v105 = &v103;
  v50 = *(v47 - 8);
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v103 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v50 + 16))(v53, v51);
  v54 = v106;
  (*(v48 + 8))(v47, v48);
  (*(v50 + 8))(v53, v47);
  v55 = sub_24F92A328();
  (*(v107 + 8))(v54, v108);
  v56 = [v55 expirationDate];
  swift_unknownObjectRelease();
  if (v56)
  {
    v57 = v114;
    sub_24F91F608();

    v58 = 0;
    v60 = v115;
    v59 = v116;
  }

  else
  {
    v58 = 1;
    v60 = v115;
    v59 = v116;
    v57 = v114;
  }

  v61 = v113;
  v62 = 1819047278;
  (*(v60 + 56))(v57, v58, 1, v59);
  sub_24E728A00(v57, v61);
  if ((*(v60 + 48))(v61, 1, v59) == 1)
  {
    sub_24E601704(v57, &unk_27F22EC30);
    v123 = MEMORY[0x277D837D0];
LABEL_10:
    v66 = 0xE400000000000000;
    goto LABEL_11;
  }

  v63 = v104;
  (*(v60 + 32))(v104, v61, v59);
  v64 = sub_24F91F538();
  v66 = v65;
  (*(v60 + 8))(v63, v59);
  sub_24E601704(v57, &unk_27F22EC30);
  v123 = MEMORY[0x277D837D0];
  if (!v66)
  {
    goto LABEL_10;
  }

  v62 = v64;
LABEL_11:
  v122[0] = v62;
  v122[1] = v66;
  sub_24F928438();
  sub_24E601704(v122, &qword_27F2129B0);
  sub_24F9283A8();
  v67 = *(v2 + 17);
  v68 = *(v2 + 18);
  v69 = __swift_project_boxed_opaque_existential_1(v2 + 14, v67);
  v70 = *(v67 - 8);
  v71 = MEMORY[0x28223BE20](v69);
  v73 = &v103 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v70 + 16))(v73, v71);
  LOBYTE(v68) = (*(v68 + 16))(v67, v68);
  (*(v70 + 8))(v73, v67);
  v123 = MEMORY[0x277D839B0];
  LOBYTE(v122[0]) = v68 & 1;
  sub_24F928438();
  sub_24E601704(v122, &qword_27F2129B0);
  sub_24F9283A8();
  v74 = v117;
  v123 = v117;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v122);
  v110(boxed_opaque_existential_1, &v2[v112], v74);
  sub_24F928438();
  sub_24E601704(v122, &qword_27F2129B0);
  sub_24F9283A8();
  v123 = MEMORY[0x277D839F8];
  *v122 = v36;
  sub_24F928438();
  sub_24E601704(v122, &qword_27F2129B0);
  v76 = v119;
  v77 = v121;
  sub_24F92A588();

  (*(v118 + 8))(v77, v76);
  v78 = *(v2 + 17);
  v79 = *(v2 + 18);
  v80 = __swift_project_boxed_opaque_existential_1(v2 + 14, v78);
  v81 = *(v78 - 8);
  v82 = MEMORY[0x28223BE20](v80);
  v84 = &v103 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v81 + 16))(v84, v82);
  LOBYTE(v79) = (*(v79 + 16))(v78, v79);
  (*(v81 + 8))(v84, v78);
  if (v79)
  {
    v85 = *(v2 + 17);
    v86 = *(v2 + 18);
    v87 = __swift_project_boxed_opaque_existential_1(v2 + 14, v85);
    v88 = *(v85 - 8);
    v89 = MEMORY[0x28223BE20](v87);
    v91 = &v103 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v88 + 16))(v91, v89);
    LOBYTE(v86) = (*(v86 + 32))(v85, v86);
    result = (*(v88 + 8))(v91, v85);
    if (v86)
    {
      goto LABEL_24;
    }
  }

  sub_24F929388();
  _s9JetEngine16LocalPreferencesC12GameStoreKitE03AppfG0ACvgZ_0();
  if (qword_27F2100C0 != -1)
  {
    swift_once();
  }

  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F40);
  __swift_project_value_buffer(v93, qword_27F224F28);
  sub_24F928868();

  if (LOBYTE(v122[0]) == 2 || (v122[0] & 1) == 0)
  {
    if (v24 > 0.0 && v24 <= v36)
    {
      v94 = 4;
      goto LABEL_26;
    }

    if (v32 <= 0.0 || v32 > v36 || (v95 = *(v2 + 17), v96 = *(v2 + 18), v97 = __swift_project_boxed_opaque_existential_1(v2 + 14, v95), v98 = *(v95 - 8), v99 = MEMORY[0x28223BE20](v97), v101 = &v103 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0), (*(v98 + 16))(v101, v99), v102 = (*(v96 + 32))(v95, v96), result = (*(v98 + 8))(v101, v95), (v102 & 1) == 0))
    {
      v94 = 0;
      goto LABEL_26;
    }

LABEL_24:
    v94 = 2;
    goto LABEL_26;
  }

  v94 = 1;
LABEL_26:
  *v120 = v94;
  return result;
}

uint64_t sub_24EA026EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  if (qword_27F2100B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39B440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_24F1F2908(0, 0, v2, &unk_24F974A18, v6);

  return sub_24E601704(v2, &unk_27F21B570);
}

uint64_t sub_24EA02948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a4;
  v5 = sub_24F91F648();
  v4[43] = v5;
  v4[44] = *(v5 - 8);
  v4[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v6 = sub_24F92AAE8();
  v4[48] = v6;
  v4[49] = *(v6 - 8);
  v4[50] = swift_task_alloc();
  sub_24F921FA8();
  v4[51] = swift_task_alloc();
  sub_24F921F58();
  v4[52] = swift_task_alloc();
  sub_24F921F88();
  v4[53] = swift_task_alloc();
  v7 = sub_24F921FC8();
  v4[54] = v7;
  v4[55] = *(v7 - 8);
  v4[56] = swift_task_alloc();
  v8 = sub_24F92A468();
  v4[57] = v8;
  v4[58] = *(v8 - 8);
  v4[59] = swift_task_alloc();
  v9 = sub_24F92A498();
  v4[60] = v9;
  v4[61] = *(v9 - 8);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EA02C58, 0, 0);
}

uint64_t sub_24EA02C58()
{
  v34 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[65] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = v2[17];
    v4 = v2[18];
    v5 = __swift_project_boxed_opaque_existential_1(v2 + 14, v3);
    v6 = *(v3 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v3);
    (*(v4 + 24))(v32, v3, v4);
    (*(v6 + 8))(v7, v3);
    if (v33)
    {
      if (qword_27F210518 != -1)
      {
        swift_once();
      }

      v8 = &xmmword_27F22D048;
    }

    else
    {
      v8 = v32;
    }

    v11 = v0[64];
    v12 = v0[61];
    v26 = v0[59];
    v27 = v0[60];
    v30 = v0[58];
    v13 = v0[56];
    v31 = v0[57];
    v28 = v0[55];
    v29 = v0[54];
    v14 = *v8;
    v15 = *(v8 + 1);

    v16 = v2[17];
    v17 = v2[18];
    v18 = __swift_project_boxed_opaque_existential_1(v2 + 14, v16);
    v19 = *(v16 - 8);
    v20 = swift_task_alloc();
    (*(v19 + 16))(v20, v18, v16);
    (*(v17 + 8))(v16, v17);
    (*(v19 + 8))(v20, v16);
    sub_24F92A478();
    v21 = *(v12 + 8);
    v0[66] = v21;
    v0[67] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v11, v27);
    v32[0] = v14;
    v32[1] = v15;
    sub_24ECA1F58();
    sub_24F921F78();
    sub_24F921F48();
    sub_24F921F98();
    sub_24F921FB8();
    v0[68] = sub_24F92A338();
    (*(v28 + 8))(v13, v29);
    (*(v30 + 8))(v26, v31);

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F78);
    v23 = sub_24EA0455C();
    v24 = swift_task_alloc();
    v0[69] = v24;
    *v24 = v0;
    v24[1] = sub_24EA0312C;
    v25 = v0[63];

    return MEMORY[0x282180360](v25, v22, v23);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24EA0312C()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_24EA03864;
  }

  else
  {
    v2 = sub_24EA03240;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EA03240()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 496);
  v3 = *(v0 + 504);
  v4 = *(v0 + 480);
  v5 = *(v0 + 488);
  sub_24E615E00(v1 + 112, v0 + 16);
  (*(v5 + 16))(v2, v3, v4);
  v6 = type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v7 = swift_allocObject();
  (*(v5 + 32))(v7 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bag, v2, v4);
  *(v0 + 56) = v7;
  *(v7 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_isOfflineBag) = 0;
  v8 = v7 + OBJC_IVAR____TtCC12GameStoreKit19JSFreshnessWatchdog11BagContract_bagOfflinePolicy;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  *(v0 + 80) = v6;
  *(v0 + 88) = &protocol witness table for JSFreshnessWatchdog.BagContract;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 112);
  sub_24E612C80((v0 + 56), v1 + 112);
  swift_endAccess();
  if (qword_27F2100B8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 392);
  v9 = *(v0 + 400);
  __swift_project_value_buffer(*(v0 + 384), qword_27F39B440);
  (*(v10 + 16))(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v11 = [sub_24F92A328() expirationDate];
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_24F91F608();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = 1819047278;
  v15 = *(v0 + 368);
  v14 = *(v0 + 376);
  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  (*(v16 + 56))(v14, v12, 1, v17);
  sub_24E728A00(v14, v15);
  v18 = (*(v16 + 48))(v15, 1, v17);
  v19 = *(v0 + 376);
  if (v18 == 1)
  {
    sub_24E601704(*(v0 + 376), &unk_27F22EC30);
    *(v0 + 192) = MEMORY[0x277D837D0];
  }

  else
  {
    v20 = *(v0 + 360);
    v21 = *(v0 + 344);
    v22 = *(v0 + 352);
    (*(v22 + 32))(v20, *(v0 + 368), v21);
    v23 = sub_24F91F538();
    v25 = v24;
    (*(v22 + 8))(v20, v21);
    sub_24E601704(v19, &unk_27F22EC30);
    *(v0 + 192) = MEMORY[0x277D837D0];
    if (v25)
    {
      v13 = v23;
      goto LABEL_11;
    }
  }

  v25 = 0xE400000000000000;
LABEL_11:
  v26 = *(v0 + 520);
  v28 = *(v0 + 392);
  v27 = *(v0 + 400);
  v29 = *(v0 + 384);
  *(v0 + 168) = v13;
  *(v0 + 176) = v25;
  sub_24F928438();
  sub_24E601704(v0 + 168, &qword_27F2129B0);
  sub_24F92A588();

  (*(v28 + 8))(v27, v29);
  sub_24E615E00(v26 + 112, v0 + 96);
  LOBYTE(v27) = sub_24EA045C0((v0 + 16), (v0 + 96));
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v30 = *(v0 + 528);
  v31 = *(v0 + 504);
  v32 = *(v0 + 480);
  if (v27)
  {
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    *(v0 + 224) = &type metadata for JSFreshnessWatchdog.BootstrapReason;
    *(v0 + 200) = 3;
    sub_24F928438();
    sub_24E601704(v0 + 200, &qword_27F2129B0);
    sub_24F92A588();

    v33 = [objc_opt_self() sharedCoordinator];
    [v33 notify];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v30(v31, v32);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_24EA03864()
{
  if (qword_27F2100B8 != -1)
  {
    swift_once();
  }

  v1 = v0[70];
  __swift_project_value_buffer(v0[48], qword_27F39B440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v2 = v0[35];
  v3 = v0[36];
  v0[20] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F9283B8();
  sub_24E601704((v0 + 17), &qword_27F2129B0);
  sub_24F92A5A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EA03B10(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v21[3] = type metadata accessor for JSFreshnessWatchdog.BagContract(0);
  v21[4] = &protocol witness table for JSFreshnessWatchdog.BagContract;
  v21[0] = a1;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  sub_24F928C28();
  sub_24E615E00(v21, a4 + 112);
  sub_24E615E00(a2, a4 + 24);
  *(a4 + 16) = a3;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = *(v9 + 8);
  v18 = a3;
  *(a4 + 64) = v10(v8, v9) & 1;
  v11 = *(a4 + 48);
  v12 = *(a4 + 56);
  __swift_project_boxed_opaque_existential_1((a4 + 24), v11);
  v13 = sub_24E74EC40();
  v14 = sub_24F92BEF8();
  v19[3] = v13;
  v19[4] = MEMORY[0x277D225C0];
  v19[0] = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = *(v12 + 40);

  v16(v20, v19, sub_24EA043F0, v15, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(v21);

  __swift_destroy_boxed_opaque_existential_1(v19);
  swift_beginAccess();
  sub_24EA043F8(v20, a4 + 72);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return a4;
}

uint64_t sub_24EA03D00(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[3] = a5;
  v25[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 152) = 0;
  *(a4 + 160) = 0;
  sub_24F928C28();
  sub_24E615E00(v25, a4 + 112);
  sub_24E615E00(a2, a4 + 24);
  *(a4 + 16) = a3;
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  v14 = *(v13 + 8);
  v22 = a3;
  *(a4 + 64) = v14(v12, v13) & 1;
  v15 = *(a4 + 48);
  v16 = *(a4 + 56);
  __swift_project_boxed_opaque_existential_1((a4 + 24), v15);
  v17 = sub_24E74EC40();
  v18 = sub_24F92BEF8();
  v23[3] = v17;
  v23[4] = MEMORY[0x277D225C0];
  v23[0] = v18;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = *(v16 + 40);

  v20(v24, v23, sub_24EA049E4, v19, v15, v16);

  __swift_destroy_boxed_opaque_existential_1(v25);

  __swift_destroy_boxed_opaque_existential_1(v23);
  swift_beginAccess();
  sub_24EA043F8(v24, a4 + 72);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(a2);
  return a4;
}

uint64_t sub_24EA03F18(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  return sub_24EA03D00(v13, a2, a3, v14, a5, a6);
}

unint64_t sub_24EA04040()
{
  result = qword_27F224F50;
  if (!qword_27F224F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F224F50);
  }

  return result;
}

uint64_t sub_24EA0413C()
{
  result = sub_24F928C38();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EA04244()
{
  result = sub_24F92A498();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24EA04314()
{

  return swift_deallocObject();
}

uint64_t sub_24EA04384@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24EA043B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EA043F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA04468()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EA044A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EA02948(a1, v4, v5, v6);
}

unint64_t sub_24EA0455C()
{
  result = qword_27F22EC40;
  if (!qword_27F22EC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F224F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22EC40);
  }

  return result;
}

uint64_t sub_24EA045C0(void *a1, void *a2)
{
  v55 = a2;
  v3 = sub_24F92A498();
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v56 = sub_24F91F648();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v49 - v12;
  MEMORY[0x28223BE20](v13);
  v53 = &v49 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v21 = *(v19 + 16);
  v58 = v20;
  v59 = v21;
  v60 = v19;
  if ((v21(v18, v19) & 1) == 0)
  {
    goto LABEL_6;
  }

  v50 = v10;
  v51 = v18;
  v22 = v17;
  v23 = v3;
  v24 = v8;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  v27 = v25;
  v28 = v22;
  v29 = v57;
  v18 = v51;
  v30 = v24;
  v31 = v23;
  (*(v26 + 8))(v27, v26);
  v32 = sub_24F92A328();
  v33 = *(v29 + 1);
  v33(v7, v23);
  v34 = [v32 expirationDate];
  swift_unknownObjectRelease();
  if (!v34)
  {
    goto LABEL_6;
  }

  v35 = v53;
  sub_24F91F608();

  v49 = v33;
  v36 = v56;
  v53 = *(v30 + 32);
  (v53)(v28, v35, v56);
  v57 = v28;
  v37 = v55[3];
  v38 = v55[4];
  __swift_project_boxed_opaque_existential_1(v55, v37);
  v39 = v54;
  (*(v38 + 8))(v37, v38);
  v40 = sub_24F92A328();
  v49(v39, v31);
  v41 = [v40 expirationDate];
  swift_unknownObjectRelease();
  if (!v41)
  {
    (*(v30 + 8))(v57, v36);
    v18 = v51;
LABEL_6:
    v47 = v59(v18, v60);
    return v47 & 1;
  }

  v42 = v50;
  sub_24F91F608();

  v43 = v52;
  (v53)(v52, v42, v36);
  v44 = v57;
  v45 = sub_24F91F588();
  v46 = *(v30 + 8);
  v46(v43, v36);
  v46(v44, v36);
  v47 = v45;
  return v47 & 1;
}

uint64_t CrossfireReferralAction.__allocating_init(referrerData:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F6B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v8 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData;
  v12 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 16) = v12;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v13 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v14 = sub_24F928AD8();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8 + v13, a2, v14);
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v17 = sub_24F929608();
  (*(*(v17 - 8) + 56))(v8 + v16, 1, 1, v17);
  v18 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v18 = 0u;
  v18[1] = 0u;
  v19 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v29, &v26);
  if (*(&v27 + 1))
  {
    v20 = v27;
    *v19 = v26;
    *(v19 + 16) = v20;
    *(v19 + 32) = v28;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v5 + 8))(v7, v4);
    v25[1] = v21;
    v25[2] = v23;
    sub_24F92C7F8();
    sub_24E601704(&v26, &qword_27F235830);
  }

  (*(v15 + 8))(a2, v14);
  sub_24E601704(v29, &qword_27F235830);
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  return v8;
}

uint64_t CrossfireReferralAction.init(referrerData:actionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v30 - v11;
  v13 = sub_24F928AD8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v19 = v3 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData;
  v20 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 16) = v20;
  *(v19 + 32) = v17;
  *(v19 + 40) = v18;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  (*(v14 + 16))(v16, a2, v13);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = (v3 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v37, &v31);
  if (*(&v32 + 1))
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v24 = v7;
    v26 = v25;
    (*(v24 + 8))(v9, v6);
    v30[1] = v23;
    v30[2] = v26;
    sub_24F92C7F8();
    sub_24E601704(&v31, &qword_27F235830);
  }

  (*(v14 + 8))(a2, v13);
  sub_24E601704(v37, &qword_27F235830);
  v27 = v3 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v27 + 32) = v36;
  v28 = v35;
  *v27 = v34;
  *(v27 + 16) = v28;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  (*(v14 + 32))(v3 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v16, v13);
  return v3;
}

char *CrossfireReferralAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v46 = a2;
  v6 = *v2;
  v43 = v3;
  v44 = v6;
  v45 = sub_24F9285B8();
  v7 = *(v45 - 8);
  v8 = MEMORY[0x28223BE20](v45);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v50 = sub_24F928388();
  v12 = *(v50 - 8);
  v13 = MEMORY[0x28223BE20](v50);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  sub_24F928398();
  if (sub_24F928328())
  {
    v21 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    strcpy(v22, "referrerData");
    v23 = v44;
    v22[13] = 0;
    *(v22 + 7) = -5120;
    *(v22 + 2) = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    (*(v7 + 8))(v46, v45);
    v24 = *(v12 + 8);
    v25 = v50;
    v24(a1, v50);
    v24(v20, v25);
  }

  else
  {
    v40 = *(v12 + 16);
    v41 = a1;
    v40(v18, v20, v50);
    v39 = *(v7 + 16);
    v39(v11, v46, v45);
    v26 = v43;
    ReferrerData.init(deserializing:using:)(v18, v11, v47);
    if (!v26)
    {
      v30 = v48;
      v31 = v49;
      v32 = &v2[OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData];
      v33 = v47[1];
      *v32 = v47[0];
      *(v32 + 1) = v33;
      *(v32 + 4) = v30;
      v32[40] = v31;
      v34 = v41;
      v40(v15, v41, v50);
      v35 = v42;
      v39(v42, v46, v45);
      v4 = Action.init(deserializing:using:)(v15, v35);
      (*(v7 + 8))(v46, v45);
      v36 = *(v12 + 8);
      v37 = v34;
      v38 = v50;
      v36(v37, v50);
      v36(v20, v38);
      return v4;
    }

    (*(v7 + 8))(v46, v45);
    v27 = *(v12 + 8);
    v28 = v50;
    v27(v41, v50);
    v27(v20, v28);
  }

  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t CrossfireReferralAction.referrerData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 24);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  v5 = *(v2 + 40);
  *(a1 + 40) = v5;

  return sub_24E90BCC4(v4, v5);
}

uint64_t sub_24EA055CC()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 32);
  v3 = *(v1 + 40);

  return sub_24E7B6564(v2, v3);
}

uint64_t CrossfireReferralAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 32);
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 40);

  sub_24E7B6564(v3, v4);
  return v0;
}

uint64_t CrossfireReferralAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 32);
  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23CrossfireReferralAction_referrerData + 40);

  sub_24E7B6564(v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CrossfireReferralAction()
{
  result = qword_27F224F80;
  if (!qword_27F224F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TimedMetricsPagePresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  TimedMetricsPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(a1, a2, a3, a4);
  return v8;
}

uint64_t TimedMetricsPagePresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v56 = a2;
  v50 = a3;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - v9;
  v10 = sub_24F9288E8();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F929158();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 72) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  v17 = (v5 + qword_27F39B480);
  *v17 = 0;
  v17[1] = 0;
  *(v5 + qword_27F39B488) = 0;
  v18 = (v5 + qword_27F39B490);
  *v18 = 0;
  v18[1] = 0;
  v19 = *(*(v7 + 88) + 16);
  v20 = *(v7 + 80);
  v54 = *(v7 + 88);
  v19(v20);
  v21 = *(*v5 + 184);
  sub_24F92ADB8();
  *(v5 + v21) = sub_24F92AD98();
  v22 = v5 + *(*v5 + 192);
  *(v22 + 32) = 0;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  v23 = v5 + *(*v5 + 200);
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  v24 = (v5 + *(*v5 + 208));
  *v24 = 0;
  v24[1] = 0;
  v25 = (v5 + *(*v5 + 216));
  *v25 = 0.0;
  v25[1] = 0.0;
  *(v5 + 16) = a1;
  sub_24F928FD8();

  sub_24F92A758();
  (*(v14 + 32))(v5 + qword_27F39B498, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
  sub_24F928EF8();
  v26 = v58;
  v27 = v59;
  swift_beginAccess();
  *v25 = v26;
  *(v25 + 1) = v27;
  swift_unknownObjectRelease();
  type metadata accessor for ASKBagContract();
  sub_24F92A758();
  if (v56)
  {
    v28 = v56;
    v29 = v50;
  }

  else
  {
    v31 = v48;
    v30 = v49;
    v50 = sub_24F929EB8();
    if (qword_27F2108F0 != -1)
    {
      swift_once();
    }

    (*(v31 + 104))(v12, *MEMORY[0x277D21C38], v30);
    v32 = v51;
    sub_24F92A368();
    (*(v31 + 8))(v12, v30);
    v33 = v53;
    sub_24F92A408();
    (*(v52 + 8))(v32, v33);
    v28 = sub_24F929EA8();
    v29 = MEMORY[0x277D221C0];
  }

  v34 = (v5 + qword_27F39B4A0);
  *v34 = v28;
  v34[1] = v29;
  v35 = v55;
  if (v55)
  {
    swift_unknownObjectRetain();
    v36 = v35;
  }

  else
  {
    v37 = qword_27F2108F8;
    swift_unknownObjectRetain();
    if (v37 != -1)
    {
      swift_once();
    }

    v38 = v51;
    sub_24F92A438();
    v39 = v53;
    sub_24F92A408();
    (*(v52 + 8))(v38, v39);
    v40 = v58;
    v41 = v34[1];
    type metadata accessor for ImpressionsCalculator();
    swift_allocObject();
    v42 = swift_unknownObjectRetain();
    v36 = sub_24EB0E424(v40, v42, v41);
    swift_unknownObjectRelease();
  }

  *(v5 + qword_27F39B4A8) = v36;
  v43 = type metadata accessor for MetricsPageEnterGate();
  v44 = type metadata accessor for TimedMetricsPagePresenter();
  v45 = sub_24EED10A0(v5, v43, v44, &protocol witness table for TimedMetricsPagePresenter<A>);
  v46 = qword_27F39B488;
  swift_beginAccess();
  *(v5 + v46) = v45;

  sub_24F92A0F8();
  sub_24F928EF8();
  sub_24EA06074(v57);

  swift_unknownObjectRelease();

  return v5;
}

uint64_t sub_24EA06074(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v40 = sub_24F929AB8();
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = &v33 - v6;
  v7 = sub_24F929158();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  sub_24EA080F4(v9);
  type metadata accessor for PendingPageRender(0);
  swift_allocObject();

  v34 = v9;
  v11 = PendingPageRender.init(bag:metricsPipeline:)(v10, v9);
  swift_beginAccess();
  v1[3] = v11;

  swift_beginAccess();
  v12 = v1[3];
  if (v12)
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = *(v4 + 80);
    *(v14 + 3) = *(v4 + 88);
    *(v14 + 4) = v13;
    v15 = (v12 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_contextProvider);
    swift_beginAccess();
    *v15 = sub_24EA0A43C;
    v15[1] = v14;
  }

  swift_beginAccess();
  v16 = v2[3];
  if (v16)
  {
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = *(v4 + 80);
    v18[3] = *(v4 + 88);
    v18[4] = v17;
    v19 = a1;
    v20 = (v16 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_didPost);
    swift_beginAccess();
    v21 = *v20;
    *v20 = sub_24EA0A448;
    v20[1] = v18;
    a1 = v19;

    sub_24E824448(v21);
  }

  swift_beginAccess();
  if (byte_27F22D288)
  {
  }

  v22 = a1;
  if (!a1)
  {
    sub_24F92D1E8();
    sub_24F9286A8();
    if (qword_27F2108A8 != -1)
    {
      swift_once();
    }

    v23 = v35;
    sub_24F92A448();
    v24 = v37;
    sub_24F92A408();
    (*(v36 + 8))(v23, v24);
    sub_24EA080F4(v34);
    sub_24F92A0F8();
    swift_allocObject();
    v22 = sub_24F92A0E8();
  }

  swift_beginAccess();
  v2[4] = v22;

  v25 = (v2 + qword_27F39B480);
  swift_beginAccess();
  v26 = v25[1];
  if (!v26)
  {
  }

  v27 = *v25;
  swift_beginAccess();
  if (!v2[4])
  {
  }

  v28 = qword_27F210658;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = v40;
  __swift_project_value_buffer(v40, qword_27F22E3B8);
  v41 = v27;
  v42 = v26;
  if (qword_27F210670 != -1)
  {
    swift_once();
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
  __swift_project_value_buffer(v30, qword_27F22E400);
  v31 = v38;
  sub_24F929A48();

  sub_24F92A098();

  return (*(v39 + 8))(v31, v29);
}

uint64_t sub_24EA06738()
{
  sub_24EA09500();
}

uint64_t sub_24EA06760(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_24EA067A8()
{
  sub_24EA09534();
}

uint64_t sub_24EA067D0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_24EA06818@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030);
  v73 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v72 = &v63 - v3;
  v4 = sub_24F929AB8();
  v78 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v63 - v7;
  v9 = sub_24F928818();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v65 = v2;
    v71 = a1;
    v79 = *(Strong + qword_27F39B4A0);
    swift_beginAccess();
    sub_24E60169C(v14 + 40, v85, &qword_27F224F98);
    v15 = v86;
    if (v86)
    {
      v76 = v87;
      v16 = __swift_project_boxed_opaque_existential_1(v85, v86);
      v77 = &v63;
      v17 = *(v15 - 8);
      v18 = MEMORY[0x28223BE20](v16);
      v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v20, v18);
      swift_unknownObjectRetain();
      sub_24E601704(v85, &qword_27F224F98);
      sub_24F92AD48();
      (*(v17 + 8))(v20, v15);
      v21 = sub_24F9286C8();
      (*(v10 + 8))(v12, v9);
    }

    else
    {
      swift_unknownObjectRetain();
      sub_24E601704(v85, &qword_27F224F98);
      v21 = 0;
    }

    v24 = v78;
    v75 = v21;
    v25 = (v14 + qword_27F39B480);
    swift_beginAccess();
    v26 = v25[1];
    v63 = *v25;
    v27 = (v14 + qword_27F39B490);
    swift_beginAccess();
    v28 = v27[1];
    v68 = *v27;
    v29 = qword_27F210278;
    v30 = v79;
    swift_unknownObjectRetain();
    v77 = v26;

    v76 = v28;

    if (v29 != -1)
    {
      swift_once();
    }

    v31 = off_27F229AB8;
    swift_beginAccess();
    v67 = *(v31 + 88);
    sub_24EA0893C(v85);
    sub_24EA08A98(v84);
    swift_beginAccess();
    v32 = v31[18];
    v33 = (v14 + *(*v14 + 216));
    swift_beginAccess();
    v34 = *v33;
    v66 = v33[1];
    v35 = (v14 + *(*v14 + 208));
    swift_beginAccess();
    v36 = *v35;
    v64 = v35[1];
    v78 = v32;

    v69 = v34;
    swift_unknownObjectRetain();
    v74 = v36;
    swift_unknownObjectRetain();
    sub_24F929AA8();
    v37 = qword_27F210660;
    swift_unknownObjectRetain();
    v38 = v30;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038);
    __swift_project_value_buffer(v39, qword_27F22E3D0);
    v83[0] = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040);
    v40 = v80;
    sub_24F929A48();
    v41 = *(v24 + 8);
    v41(v8, v4);
    v70 = v38;
    swift_unknownObjectRelease();
    v42 = *(v24 + 32);
    v42(v8, v40, v4);
    if (v77)
    {
      *&v83[0] = v63;
      *(&v83[0] + 1) = v77;
      if (qword_27F210670 != -1)
      {
        swift_once();
      }

      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
      __swift_project_value_buffer(v43, qword_27F22E400);
      v44 = v80;
      sub_24F929A48();
      v41(v8, v4);
      v42(v8, v44, v4);
    }

    v45 = v80;
    if (v76)
    {
      *&v83[0] = v68;
      *(&v83[0] + 1) = v76;
      if (qword_27F210678 != -1)
      {
        swift_once();
      }

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910);
      __swift_project_value_buffer(v46, qword_27F22E418);
      sub_24F929A48();
      v41(v8, v4);
      v42(v8, v45, v4);
    }

    v68 = v14;
    v47 = v42;
    *&v79 = v41;
    LOBYTE(v83[0]) = 0;
    if (qword_27F210680 != -1)
    {
      swift_once();
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048);
    __swift_project_value_buffer(v63, qword_27F22E430);
    v48 = v80;
    sub_24F929A48();
    v49 = v79;
    (v79)(v8, v4);
    v47(v8, v48, v4);
    if (v75)
    {
      *&v83[0] = v75;
      v50 = v72;
      sub_24F929A78();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
      sub_24F929A48();
      (*(v73 + 8))(v50, v65);
      v49(v8, v4);
      v47(v8, v48, v4);
    }

    v51 = v69;
    if (v67 != 2)
    {
      LOBYTE(v83[0]) = v67 & 1;
      if (qword_27F210688 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v63, qword_27F22E448);
      v52 = v80;
      sub_24F929A48();
      v49(v8, v4);
      v47(v8, v52, v4);
    }

    sub_24E60169C(v85, &v81, &qword_27F224FA0);
    if (v82)
    {
      sub_24E612C80(&v81, v83);
      v53 = v80;
      if (qword_27F210690 != -1)
      {
        swift_once();
      }

      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078);
      __swift_project_value_buffer(v54, qword_27F22E460);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v83);
      v49(v8, v4);
      v47(v8, v53, v4);
    }

    else
    {
      sub_24E601704(&v81, &qword_27F224FA0);
      v53 = v80;
    }

    sub_24E60169C(v84, &v81, qword_27F224FA8);
    v55 = v78;
    if (v82)
    {
      sub_24E612C80(&v81, v83);
      if (qword_27F210698 != -1)
      {
        swift_once();
      }

      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068);
      __swift_project_value_buffer(v56, qword_27F22E478);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070);
      sub_24F929A48();
      __swift_destroy_boxed_opaque_existential_1(v83);
      (v79)(v8, v4);
      v47(v8, v53, v4);
      v55 = v78;
      if (!v78)
      {
        goto LABEL_42;
      }
    }

    else
    {
      sub_24E601704(&v81, qword_27F224FA8);
      if (!v55)
      {
LABEL_42:
        if (v74)
        {
          *&v83[0] = v74;
          *(&v83[0] + 1) = v64;
          v59 = qword_27F2106A8;
          swift_unknownObjectRetain();
          if (v59 != -1)
          {
            swift_once();
          }

          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058);
          __swift_project_value_buffer(v60, qword_27F22E4A8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060);
          sub_24F929A48();
          (v79)(v8, v4);
          swift_unknownObjectRelease();
          v47(v8, v53, v4);
        }

        if (v51)
        {
          *&v83[0] = v51;
          *(&v83[0] + 1) = v66;
          v61 = qword_27F2106A0;
          swift_unknownObjectRetain();
          if (v61 != -1)
          {
            swift_once();
          }

          v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050);
          __swift_project_value_buffer(v62, qword_27F22E490);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90);
          sub_24F929A48();

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          (v79)(v8, v4);
          sub_24E601704(v84, qword_27F224FA8);
          sub_24E601704(v85, &qword_27F224FA0);
          swift_unknownObjectRelease();
          v47(v8, v53, v4);
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_unknownObjectRelease();

          sub_24E601704(v84, qword_27F224FA8);
          sub_24E601704(v85, &qword_27F224FA0);
        }

        return (v47)(v71, v8, v4);
      }
    }

    *&v83[0] = v55;
    v57 = qword_27F2106B0;

    if (v57 != -1)
    {
      swift_once();
    }

    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460);
    __swift_project_value_buffer(v58, qword_27F22E4C0);
    type metadata accessor for Action();
    sub_24F929A48();
    (v79)(v8, v4);

    v47(v8, v53, v4);
    goto LABEL_42;
  }

  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, qword_27F22E3B8);
  return (*(v78 + 16))(a1, v22, v4);
}

uint64_t sub_24EA07768()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    *(v1 + 24) = 0;
  }

  return result;
}

uint64_t sub_24EA077E0()
{
  v1 = sub_24F9287F8();
  v43 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v55 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v57 = &v38 - v4;
  v5 = sub_24F928738();
  v50 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = sub_24F928818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_24E60169C(v0 + 40, &v58, &qword_27F224F98);
  if (v59)
  {
    v39 = v0;
    sub_24E8EA128(&v58, &v60);
    __swift_project_boxed_opaque_existential_1(&v60, v61);
    sub_24F92AD48();
    v14 = sub_24F928768();
    result = (*(v11 + 8))(v13, v10);
    v49 = *(v14 + 16);
    if (v49)
    {
      v16 = 0;
      v45 = v50 + 16;
      v54 = v43 + 16;
      v56 = (v43 + 8);
      v40 = (v50 + 32);
      v42 = MEMORY[0x277D84F90];
      v44 = (v50 + 8);
      v48 = v5;
      v47 = v9;
      v46 = v14;
      v17 = v55;
      while (v16 < *(v14 + 16))
      {
        v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v53 = v16;
        v51 = *(v50 + 72);
        (*(v50 + 16))(v9, v14 + v52 + v51 * v16, v5);
        v18 = sub_24F9286D8();
        sub_24F9287E8();
        if (*(v18 + 16) && (sub_24EA0A388(&qword_27F21E608), v19 = sub_24F92AEE8(), v20 = -1 << *(v18 + 32), v21 = v19 & ~v20, ((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
        {
          v22 = ~v20;
          v23 = *(v43 + 72);
          v24 = *(v43 + 16);
          while (1)
          {
            v24(v17, *(v18 + 48) + v23 * v21, v1);
            sub_24EA0A388(&qword_27F21E610);
            v25 = sub_24F92AFF8();
            v26 = *v56;
            (*v56)(v17, v1);
            if (v25)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v18 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v26(v57, v1);
          v27 = *v40;
          v9 = v47;
          v5 = v48;
          (*v40)(v41, v47, v48);
          v28 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v28;
          *&v58 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24F458108(0, *(v28 + 16) + 1, 1);
            v30 = v58;
          }

          v32 = *(v30 + 16);
          v31 = *(v30 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_24F458108(v31 > 1, v32 + 1, 1);
            v30 = v58;
          }

          *(v30 + 16) = v32 + 1;
          v42 = v30;
          result = v27((v30 + v52 + v32 * v51), v41, v5);
        }

        else
        {
LABEL_4:

          (*v56)(v57, v1);
          v9 = v47;
          v5 = v48;
          result = (*v44)(v47, v48);
        }

        v16 = v53 + 1;
        v14 = v46;
        if (v53 + 1 == v49)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v42 = MEMORY[0x277D84F90];
LABEL_21:

      v35 = qword_27F39B488;
      v36 = v39;
      swift_beginAccess();
      if (*(v36 + v35))
      {
        v37 = *(v42 + 16);

        MetricsPageEnterGate.hasMetricsPage.setter(v37 != 0);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v60);
    }
  }

  else
  {
    sub_24E601704(&v58, &qword_27F224F98);
    v33 = qword_27F39B488;
    result = swift_beginAccess();
    v34 = *(v0 + v33);
    if (v34)
    {
      result = swift_beginAccess();
      *(v34 + 34) = 0;
    }
  }

  return result;
}

uint64_t sub_24EA07F34(uint64_t a1)
{
  swift_beginAccess();
  sub_24EA095A4(a1, v1 + 40);
  swift_endAccess();
  sub_24EA077E0();
  return sub_24E601704(a1, &qword_27F224F98);
}

uint64_t (*sub_24EA07FA0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24EA07FF4;
}

uint64_t sub_24EA07FF4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24EA077E0();
  }

  return result;
}

uint64_t sub_24EA08028(uint64_t a1)
{
  v2 = sub_24F929158();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_24EA0817C(v5);
}

uint64_t sub_24EA080F4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27F39B498;
  swift_beginAccess();
  v4 = sub_24F929158();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_24EA0817C(uint64_t a1)
{
  v3 = qword_27F39B498;
  swift_beginAccess();
  v4 = sub_24F929158();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_24EA0826C()
{
  v0 = sub_24EA09614(&qword_27F39B480);

  return v0;
}

uint64_t sub_24EA08318()
{
  sub_24EA09700();
}

uint64_t sub_24EA08340(uint64_t a1)
{
  v3 = qword_27F39B488;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_24EA083F8()
{
  v0 = sub_24EA09614(&qword_27F39B490);

  return v0;
}

uint64_t sub_24EA08444(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

double sub_24EA0852C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2229C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - v2;
  type metadata accessor for ASKBagContract();
  sub_24F928FD8();
  sub_24F92A758();
  if (qword_27F2108F8 != -1)
  {
    swift_once();
  }

  sub_24F92A438();
  sub_24F92A408();

  (*(v1 + 8))(v3, v0);
  return *&v5[1];
}

uint64_t TimedMetricsPagePresenter.impressionsCalculator.getter()
{
  sub_24EA09568();
}

uint64_t sub_24EA086D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - v6;
  v8 = *(v3 + 176);
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, &v1[v8], v4);
  v10 = sub_24F92AFF8();
  v11 = *(v5 + 8);
  result = v11(v7, v4);
  if ((v10 & 1) == 0)
  {
    v9(v7, &v2[v8], v4);
    sub_24F92AD88();
    return v11(v7, v4);
  }

  return result;
}

uint64_t sub_24EA08880@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_24EA0893C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F224FA0);
}

uint64_t sub_24EA089B0(uint64_t a1)
{
  v3 = *(*v1 + 192);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F224FA0);
  return swift_endAccess();
}

uint64_t sub_24EA08A98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 200);
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, qword_27F224FA8);
}

uint64_t sub_24EA08B0C(uint64_t a1)
{
  v3 = *(*v1 + 200);
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, qword_27F224FA8);
  return swift_endAccess();
}

uint64_t sub_24EA08C20(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 208));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_24EA08D24(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 216));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_24EA08DFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - v5;
  sub_24EA08880(&v8 - v5);
  LOBYTE(v2) = (*(*(v2 + 88) + 24))(v3);
  (*(v4 + 8))(v6, v3);
  return v2 & 1;
}

uint64_t *TimedMetricsPagePresenter.deinit()
{
  v1 = *v0;

  sub_24E601704((v0 + 5), &qword_27F224F98);
  v2 = qword_27F39B498;
  v3 = sub_24F929158();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_unknownObjectRelease();

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 176));

  sub_24E601704(v0 + *(*v0 + 192), &qword_27F224FA0);
  sub_24E601704(v0 + *(*v0 + 200), qword_27F224FA8);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t TimedMetricsPagePresenter.__deallocating_deinit()
{
  TimedMetricsPagePresenter.deinit();

  return swift_deallocClassInstance();
}

void (*sub_24EA09188(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24EA084A0();
  return sub_24EA0A458;
}

uint64_t sub_24EA09228()
{
  sub_24EA09568();
}

void (*sub_24EA09258(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24EA082B8();
  return sub_24EA092C8;
}

void (*sub_24EA092D0(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24EA08398();
  return sub_24EA0A458;
}

uint64_t sub_24EA093A4(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10[-v5];
  v8 = *(v7 + 176);
  swift_beginAccess();
  (*(v4 + 16))(v6, v1 + v8, v3);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, a1, v3);
  swift_endAccess();
  sub_24EA086D4(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EA095A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F98);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA09614(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_24EA09658()
{
  v1 = v0 + *(*v0 + 216);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_24EA096AC()
{
  v1 = v0 + *(*v0 + 208);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_24EA09700()
{
  v1 = qword_27F39B488;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EA09744(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_24EA09788(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 sub_24EA09800(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t keypath_getTm_1@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
}

uint64_t keypath_get_15Tm@<X0>(void *a1@<X3>, uint64_t *a2@<X8>)
{
  *a2 = sub_24EA09614(a1);
  a2[1] = v3;
}

uint64_t keypath_set_16Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t keypath_get_35Tm@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();
  a2[1] = v3;

  return swift_unknownObjectRetain();
}

uint64_t keypath_set_36Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t sub_24EA09C8C()
{
  result = sub_24F929158();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24EA0A388(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_24F9287F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EA0A3CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EA0A404()
{

  return swift_deallocObject();
}

uint64_t sub_24EA0A4AC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24E615CF4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24EA0A5CC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24E616D5C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24EA0A6C0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24E615E80(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24EA0A7B8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24E616E90(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24EA0A904(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_24E617130(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = sub_24EAE8114(&v40, &v4[v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = v4[2];
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v43 = v23;
          v44 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v38 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    v4[2] = v18;
  }

  result = v40;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = v4[2];
  v13 = v41;
  v14 = v42;
  v2 = v43;
  v39 = v41;
  if (!v44)
  {
    goto LABEL_19;
  }

  v19 = (v44 - 1) & v44;
  v20 = __clz(__rbit64(v44)) | (v43 << 6);
  v38 = v42;
  v21 = (v42 + 64) >> 6;
LABEL_27:
  v26 = result;
  v27 = *(*(result + 56) + 8 * v20);
  v28 = v27;
  v29 = v39;
LABEL_29:
  while (1)
  {
    v30 = v4[3];
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    v4[2] = v12;
  }

  v36 = sub_24E617130((v30 > 1), v12 + 1, 1, v4);
  v29 = v39;
  v4 = v36;
  v31 = v36[3] >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v4[v12++ + 4] = v27;
    if (!v19)
    {
      break;
    }

    result = v26;
LABEL_38:
    v34 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v27 = *(*(result + 56) + ((v2 << 9) | (8 * v34)));
    v35 = v27;
    v29 = v39;
    if (v12 == v31)
    {
      v12 = v31;
      v4[2] = v31;
      goto LABEL_29;
    }
  }

  v32 = v2;
  result = v26;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v33 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v33);
    ++v32;
    if (v19)
    {
      v2 = v33;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v37 = v2 + 1;
  }

  else
  {
    v37 = v21;
  }

  v42 = v38;
  v43 = v37 - 1;
  v44 = 0;
  v4[2] = v12;
LABEL_13:
  result = sub_24E6586B4();
  *v1 = v4;
  return result;
}

uint64_t sub_24EA0ABE0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24E617B8C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24EA0AD20(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24EA0AEE8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24E618554(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24EA0AFE0(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_24E618664(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for Name(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24EA0B130(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_24E618BE0(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_24EAE8268(v38, &v3[v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v16 = *(v3 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_39;
        }

        if (v20 >= ((v14 + 64) >> 6))
        {
          goto LABEL_13;
        }

        v19 = *(v13 + 8 * v20);
        ++v15;
        if (v19)
        {
          goto LABEL_22;
        }
      }
    }

    *(v3 + 2) = v18;
  }

  if (result != v11)
  {
LABEL_13:
    result = sub_24E6586B4();
    *v1 = v3;
    return result;
  }

LABEL_16:
  v6 = *(v3 + 2);
  result = v38[0];
  v13 = v38[1];
  v14 = v38[2];
  v15 = v39;
  v19 = v40;
  if (!v40)
  {
    goto LABEL_19;
  }

  v20 = v39;
LABEL_22:
  v21 = (v19 - 1) & v19;
  v22 = *(*(result + 48) + (__clz(__rbit64(v19)) | (v20 << 6)));
  v23 = (v14 + 64) >> 6;
  v24 = v20;
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      v36 = v22;
      v37 = result;
      v35 = v13;
      v30 = v14;
      v31 = v24;
      v32 = v3;
      v33 = v21;
      v34 = sub_24E618BE0((v25 > 1), v6 + 1, 1, v32);
      v22 = v36;
      v21 = v33;
      v24 = v31;
      v14 = v30;
      v13 = v35;
      v3 = v34;
      result = v37;
      v26 = *(v3 + 3) >> 1;
    }

    if (v6 < v26)
    {
      break;
    }

LABEL_23:
    *(v3 + 2) = v6;
    if (v22 == 2)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v3[v6++ + 32] = v22 & 1;
    if (!v21)
    {
      break;
    }

    v27 = v24;
LABEL_34:
    v29 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v22 = *(*(result + 48) + (v29 | (v27 << 6)));
    if (v6 >= v26)
    {
      goto LABEL_23;
    }
  }

  v28 = v24;
  while (1)
  {
    v27 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      *(v3 + 2) = v6;
      goto LABEL_13;
    }

    v21 = *(v13 + 8 * v27);
    ++v28;
    if (v21)
    {
      v24 = v27;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_24EA0B3B4(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24E615EC4(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24EA0B4CC(uint64_t result)
{
  v4 = *(result + 16);
  v5 = *v1;
  v6 = *(*v1 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v5 + 3) >> 1, v10 < v7))
  {
    if (v6 <= v7)
    {
      v11 = v6 + v4;
    }

    else
    {
      v11 = v6;
    }

    v5 = sub_24E6164C0(isUniquelyReferenced_nonNull_native, v11, 1, v5);
    v10 = *(v5 + 3) >> 1;
  }

  v12 = *(v5 + 2);
  v13 = v10 - v12;
  result = sub_24EAE87A4(v34, &v5[16 * v12 + 32], v10 - v12, v8);
  if (result < v4)
  {
    goto LABEL_15;
  }

  if (result)
  {
    v14 = *(v5 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
      while (1)
      {
LABEL_19:
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_44;
        }

        if (v18 >= ((v3 + 64) >> 6))
        {
          goto LABEL_42;
        }

        v17 = *(v13 + 8 * v18);
        ++v16;
        if (v17)
        {
          goto LABEL_22;
        }
      }
    }

    *(v5 + 2) = v16;
  }

  if (result != v13)
  {
LABEL_13:
    result = sub_24E6586B4();
    *v1 = v5;
    return result;
  }

LABEL_16:
  v2 = *(v5 + 2);
  v13 = v34[1];
  v33 = v34[0];
  v3 = v34[2];
  v16 = v35;
  v17 = v36;
  if (!v36)
  {
    goto LABEL_19;
  }

  v18 = v35;
LABEL_22:
  v19 = (v17 - 1) & v17;
  v20 = (*(v33 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
  v21 = *v20;
  v22 = v20[1];

  if (!v22)
  {
LABEL_42:

    goto LABEL_13;
  }

  v23 = (v3 + 64) >> 6;
  v24 = v18;
  while (1)
  {
    v25 = *(v5 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) >= v2 + 1)
    {
      if (v2 < v26)
      {
        break;
      }

      goto LABEL_24;
    }

    result = sub_24E6164C0((v25 > 1), v2 + 1, 1, v5);
    v5 = result;
    v26 = *(result + 24) >> 1;
    if (v2 < v26)
    {
      break;
    }

LABEL_24:
    *(v5 + 2) = v2;
    if (!v22)
    {
      goto LABEL_42;
    }
  }

  while (1)
  {
    v30 = &v5[16 * v2 + 32];
    *v30 = v21;
    *(v30 + 1) = v22;
    ++v2;
    if (!v19)
    {
      break;
    }

LABEL_28:
    v27 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v28 = (*(v33 + 48) + ((v24 << 10) | (16 * v27)));
    v21 = *v28;
    v22 = v28[1];

    if (v22)
    {
      v29 = v2 < v26;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      goto LABEL_24;
    }
  }

  v31 = v24;
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v23)
    {
      *(v5 + 2) = v2;
      goto LABEL_42;
    }

    v19 = *(v13 + 8 * v32);
    ++v31;
    if (v19)
    {
      v24 = v32;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_24EA0B90C(uint64_t a1)
{
  v78 = sub_24F91F6B8();
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CE20);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v11;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_24E619BCC(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  sub_24EAE9174(&v80, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v27 = *(v16 + 2);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v29;
  }

  if (v24 != v23)
  {
    sub_24E6586B4();
LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v75 = *(v16 + 2);
  v26 = v81;
  v66 = v80;
  v29 = v83;
  v25 = &v85;
  v61 = v82;
  v30 = v84;
  v64 = v81;
  if (v84)
  {
    v31 = v83;
LABEL_27:
    v73 = (v30 - 1) & v30;
    v35 = v78;
    (*(v2 + 16))(v14, *(v66 + 48) + (__clz(__rbit64(v30)) | (v31 << 6)) * v17, v78, v12);
    v68 = *(v2 + 56);
    v68(v14, 0, 1, v35);
    v34 = v31;
    while (1)
    {
      v36 = v76;
      sub_24E60169C(v14, v76, &qword_27F21CE20);
      v37 = *(v2 + 48);
      v2 += 48;
      v72 = v37;
      if (v37(v36, 1, v35) == 1)
      {
        break;
      }

      v39 = (v4 + 32);
      v63 = (v61 + 64) >> 6;
      v67 = v4 + 56;
      v65 = (v4 + 16);
      v62 = (v4 + 8);
      v38 = v76;
      v74 = v39;
      while (1)
      {
        sub_24E601704(v38, &qword_27F21CE20);
        v40 = *(v16 + 3);
        v41 = v40 >> 1;
        if ((v40 >> 1) < v75 + 1)
        {
          v16 = sub_24E619BCC(v40 > 1, v75 + 1, 1, v16);
          v41 = *(v16 + 3) >> 1;
        }

        v42 = v77;
        sub_24E60169C(v14, v77, &qword_27F21CE20);
        if (v72(v42, 1, v78) != 1)
        {
          break;
        }

        v43 = v34;
        v44 = v77;
        v4 = v75;
LABEL_38:
        v34 = v43;
        sub_24E601704(v44, &qword_27F21CE20);
        v75 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v38 = v76;
        sub_24E60169C(v14, v76, &qword_27F21CE20);
        if (v72(v38, 1, v78) == 1)
        {
          goto LABEL_30;
        }
      }

      v70 = &v16[v18];
      v4 = v75;
      v45 = *v74;
      if (v75 <= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v75;
      }

      v71 = v46;
      v44 = v77;
      v47 = v78;
      v48 = v79;
      v69 = v45;
      while (1)
      {
        v52 = v48;
        v53 = v44;
        v54 = v47;
        v55 = v45;
        v45(v52, v53, v47);
        if (v4 == v71)
        {
          (*v62)(v79, v54);
          v4 = v71;
          v75 = v71;
          goto LABEL_33;
        }

        sub_24E601704(v14, &qword_27F21CE20);
        v75 = v4;
        v55(&v70[v4 * v17], v79, v54);
        v56 = v73;
        if (!v73)
        {
          break;
        }

        v57 = v34;
LABEL_55:
        v73 = (v56 - 1) & v56;
        v50 = v78;
        (*v65)(v14, *(v66 + 48) + (__clz(__rbit64(v56)) | (v57 << 6)) * v17, v78);
        v49 = 0;
        v59 = v57;
LABEL_44:
        v4 = v75 + 1;
        v68(v14, v49, 1, v50);
        v44 = v77;
        sub_24E60169C(v14, v77, &qword_27F21CE20);
        v51 = v72(v44, 1, v50);
        v47 = v50;
        v34 = v59;
        v43 = v59;
        v48 = v79;
        v45 = v69;
        if (v51 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v63 <= v34 + 1)
      {
        v58 = v34 + 1;
      }

      else
      {
        v58 = v63;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v57 >= v63)
        {
          v73 = 0;
          v49 = 1;
          v50 = v78;
          goto LABEL_44;
        }

        v56 = *(v64 + 8 * v57);
        ++v34;
        if (v56)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v35 = v78;
      v68 = *(v2 + 56);
      v68(v14, 1, 1, v78);
      v73 = 0;
    }

    v38 = v76;
LABEL_30:
    sub_24E601704(v14, &qword_27F21CE20);
    sub_24E6586B4();
    sub_24E601704(v38, &qword_27F21CE20);
    goto LABEL_14;
  }

LABEL_20:
  v32 = (*(v25 - 32) + 64) >> 6;
  if (v32 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      goto LABEL_57;
    }

    v30 = *(v26 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_24EA0C058(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_24F92C738();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_24F92C738();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24EA0C1AC(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_24EA0C2F8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = v3[3] >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_24E61A4BC(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = v3[3] >> 1;
  }

  v10 = v3[2];
  v11 = (v8 - v10);
  result = sub_24EAE9794(&v43, &v3[2 * v10 + 4], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v14 = result;
  if (result)
  {
    v15 = v3[2];
    v16 = __OFADD__(v15, result);
    v17 = result + v15;
    if (v16)
    {
      __break(1u);
LABEL_19:
      v20 = (v13 + 64) >> 6;
      if (v20 <= v5 + 1)
      {
        v21 = v5 + 1;
      }

      else
      {
        v21 = (v13 + 64) >> 6;
      }

      v22 = v21 - 1;
      do
      {
        v23 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v23 >= v20)
        {
          v46 = v22;
          v47 = 0;
          goto LABEL_13;
        }

        v24 = *(v12 + 8 * v23);
        ++v5;
      }

      while (!v24);
      v41 = v13;
      v18 = (v24 - 1) & v24;
      v19 = __clz(__rbit64(v24)) | (v23 << 6);
      v5 = v23;
      goto LABEL_27;
    }

    v3[2] = v17;
  }

  result = v43;
  if (v14 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = v3[2];
  v12 = v44;
  v13 = v45;
  v5 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v18 = (v47 - 1) & v47;
  v19 = __clz(__rbit64(v47)) | (v46 << 6);
  v41 = v45;
  v20 = (v45 + 64) >> 6;
LABEL_27:
  v25 = result;
  v26 = *(result[6] + 8 * v19);
  v27 = *(result[7] + 8 * v19);
  v28 = v27;
  v29 = v27;
  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = v3[3];
    v32 = v31 >> 1;
    if ((v31 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    v3[2] = v6;
  }

  v38 = v29;
  v39 = sub_24E61A4BC((v31 > 1), v6 + 1, 1, v3);
  v30 = v42;
  v3 = v39;
  v29 = v38;
  v32 = v3[3] >> 1;
  if (v6 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v3[2 * v6 + 4];
    *v33 = v26;
    v33[1] = v29;
    ++v6;
    if (!v18)
    {
      break;
    }

    result = v25;
LABEL_38:
    v36 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v37 = (v5 << 9) | (8 * v36);
    v26 = *(result[6] + v37);
    v29 = *(result[7] + v37);
    v30 = v42;
    if (v6 == v32)
    {
      v6 = v32;
      v3[2] = v32;
      goto LABEL_29;
    }
  }

  v34 = v5;
  result = v25;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v20)
    {
      break;
    }

    v18 = *(v30 + 8 * v35);
    ++v34;
    if (v18)
    {
      v5 = v35;
      goto LABEL_38;
    }
  }

  if (v20 <= v5 + 1)
  {
    v40 = v5 + 1;
  }

  else
  {
    v40 = v20;
  }

  v45 = v41;
  v46 = v40 - 1;
  v47 = 0;
  v3[2] = v6;
LABEL_13:
  result = sub_24E6586B4();
  *v1 = v3;
  return result;
}

uint64_t sub_24EA0C5E8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24EA0C72C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v53 = a2;
  v9 = type metadata accessor for GSKShelf();
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = v45 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v18 = v45;
  v20 = v45 - v19;
  v21 = (a4 >> 1);
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  v55 = a1;
  v5 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = (v5[3] >> 1), v18 < v25))
  {
    if (v24 <= v25)
    {
      v27 = v24 + v23;
    }

    else
    {
      v27 = v24;
    }

    v5 = sub_24E6186FC(isUniquelyReferenced_nonNull_native, v27, 1, v5);
    v18 = (v5[3] >> 1);
  }

  v28 = v18 - v5[2];
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      v18 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 < v23)
  {
    __break(1u);
    goto LABEL_29;
  }

  result = swift_arrayInitWithCopy();
  if (v23 <= 0)
  {
LABEL_16:
    v18 = v21;
LABEL_17:
    if (v23 != v28)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v50 = v18;
    v23 = v5[2];
    v32 = v54;
    v45[0] = *(v54 + 56);
    v45[1] = v54 + 56;
    (v45[0])(v20, 1, 1, v9, v17);
    v33 = v52;
    sub_24E60169C(v20, v52, &qword_27F21E5E8);
    v34 = v32;
    v25 = v33;
    v48 = *(v34 + 48);
    v49 = v34 + 48;
    if (v48(v33, 1, v9) == 1)
    {
LABEL_24:
      sub_24E601704(v20, &qword_27F21E5E8);
      swift_unknownObjectRelease();
      result = sub_24E601704(v25, &qword_27F21E5E8);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_24E601704(v25, &qword_27F21E5E8);
      v36 = v5[3];
      v37 = v36 >> 1;
      if ((v36 >> 1) < v23 + 1)
      {
        v5 = sub_24E6186FC(v36 > 1, v23 + 1, 1, v5);
        v37 = v5[3] >> 1;
      }

      v38 = *(v54 + 80);
      sub_24E60169C(v20, v13, &qword_27F21E5E8);
      if (v48(v13, 1, v9) == 1)
      {
LABEL_32:
        sub_24E601704(v13, &qword_27F21E5E8);
        v35 = v23;
      }

      else
      {
        v46 = v5 + ((v38 + 32) & ~v38);
        if (v23 <= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v23;
        }

        v47 = v39;
        v40 = v51;
        while (1)
        {
          sub_24EA119E4(v13, v40, type metadata accessor for GSKShelf);
          if (v47 == v23)
          {
            break;
          }

          sub_24E601704(v20, &qword_27F21E5E8);
          v42 = *(v54 + 72);
          result = sub_24EA119E4(v40, &v46[v42 * v23], type metadata accessor for GSKShelf);
          if (v50 == v21)
          {
            v41 = 1;
            v50 = v21;
          }

          else
          {
            if (v50 < a3 || v50 >= v21)
            {
              goto LABEL_45;
            }

            v43 = v53 + v42 * v50;
            v44 = v50;
            sub_24E614E60(v43, v20);
            v41 = 0;
            v50 = v44 + 1;
          }

          (v45[0])(v20, v41, 1, v9);
          sub_24E60169C(v20, v13, &qword_27F21E5E8);
          ++v23;
          if (v48(v13, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_24E614EC4(v40);
        v35 = v47;
        v23 = v47;
      }

      v5[2] = v35;
      v25 = v52;
      sub_24E60169C(v20, v52, &qword_27F21E5E8);
    }

    while (v48(v25, 1, v9) != 1);
    goto LABEL_24;
  }

  v30 = v5[2];
  v22 = __OFADD__(v30, v23);
  v31 = v30 + v23;
  if (!v22)
  {
    v5[2] = v31;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_24EA0CCB4(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_24E61AC50(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_24EA0CDEC(uint64_t a1)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E10);
  v4 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v79 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E20);
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v60 - v8;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v77 = v11;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_24E61AF48(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  sub_24EAE9B90(&v80, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (v24 < v15)
  {
    goto LABEL_16;
  }

  if (v24)
  {
    v27 = *(v16 + 2);
    v28 = __OFADD__(v27, v24);
    v29 = v27 + v24;
    if (v28)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v29;
  }

  if (v24 != v23)
  {
    sub_24E6586B4();
LABEL_14:
    *v1 = v16;
    return;
  }

LABEL_17:
  v75 = *(v16 + 2);
  v26 = v81;
  v66 = v80;
  v29 = v83;
  v25 = &v85;
  v61 = v82;
  v30 = v84;
  v64 = v81;
  if (v84)
  {
    v31 = v83;
LABEL_27:
    v73 = (v30 - 1) & v30;
    v35 = v78;
    (*(v2 + 16))(v14, *(v66 + 56) + (__clz(__rbit64(v30)) | (v31 << 6)) * v17, v78, v12);
    v68 = *(v2 + 56);
    v68(v14, 0, 1, v35);
    v34 = v31;
    while (1)
    {
      v36 = v76;
      sub_24E60169C(v14, v76, &qword_27F252E20);
      v37 = *(v2 + 48);
      v2 += 48;
      v72 = v37;
      if (v37(v36, 1, v35) == 1)
      {
        break;
      }

      v39 = (v4 + 32);
      v63 = (v61 + 64) >> 6;
      v67 = v4 + 56;
      v65 = (v4 + 16);
      v62 = (v4 + 8);
      v38 = v76;
      v74 = v39;
      while (1)
      {
        sub_24E601704(v38, &qword_27F252E20);
        v40 = *(v16 + 3);
        v41 = v40 >> 1;
        if ((v40 >> 1) < v75 + 1)
        {
          v16 = sub_24E61AF48(v40 > 1, v75 + 1, 1, v16);
          v41 = *(v16 + 3) >> 1;
        }

        v42 = v77;
        sub_24E60169C(v14, v77, &qword_27F252E20);
        if (v72(v42, 1, v78) != 1)
        {
          break;
        }

        v43 = v34;
        v44 = v77;
        v4 = v75;
LABEL_38:
        v34 = v43;
        sub_24E601704(v44, &qword_27F252E20);
        v75 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v38 = v76;
        sub_24E60169C(v14, v76, &qword_27F252E20);
        if (v72(v38, 1, v78) == 1)
        {
          goto LABEL_30;
        }
      }

      v70 = &v16[v18];
      v4 = v75;
      v45 = *v74;
      if (v75 <= v41)
      {
        v46 = v41;
      }

      else
      {
        v46 = v75;
      }

      v71 = v46;
      v44 = v77;
      v47 = v78;
      v48 = v79;
      v69 = v45;
      while (1)
      {
        v52 = v48;
        v53 = v44;
        v54 = v47;
        v55 = v45;
        v45(v52, v53, v47);
        if (v4 == v71)
        {
          (*v62)(v79, v54);
          v4 = v71;
          v75 = v71;
          goto LABEL_33;
        }

        sub_24E601704(v14, &qword_27F252E20);
        v75 = v4;
        v55(&v70[v4 * v17], v79, v54);
        v56 = v73;
        if (!v73)
        {
          break;
        }

        v57 = v34;
LABEL_55:
        v73 = (v56 - 1) & v56;
        v50 = v78;
        (*v65)(v14, *(v66 + 56) + (__clz(__rbit64(v56)) | (v57 << 6)) * v17, v78);
        v49 = 0;
        v59 = v57;
LABEL_44:
        v4 = v75 + 1;
        v68(v14, v49, 1, v50);
        v44 = v77;
        sub_24E60169C(v14, v77, &qword_27F252E20);
        v51 = v72(v44, 1, v50);
        v47 = v50;
        v34 = v59;
        v43 = v59;
        v48 = v79;
        v45 = v69;
        if (v51 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v63 <= v34 + 1)
      {
        v58 = v34 + 1;
      }

      else
      {
        v58 = v63;
      }

      v59 = v58 - 1;
      while (1)
      {
        v57 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v57 >= v63)
        {
          v73 = 0;
          v49 = 1;
          v50 = v78;
          goto LABEL_44;
        }

        v56 = *(v64 + 8 * v57);
        ++v34;
        if (v56)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v35 = v78;
      v68 = *(v2 + 56);
      v68(v14, 1, 1, v78);
      v73 = 0;
    }

    v38 = v76;
LABEL_30:
    sub_24E601704(v14, &qword_27F252E20);
    sub_24E6586B4();
    sub_24E601704(v38, &qword_27F252E20);
    goto LABEL_14;
  }

LABEL_20:
  v32 = (*(v25 - 32) + 64) >> 6;
  if (v32 <= v29 + 1)
  {
    v33 = v29 + 1;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 - 1;
  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v32)
    {
      goto LABEL_57;
    }

    v30 = *(v26 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_24EA0D514(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24E61B4FC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24EA0D600(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v17 = *v5;
    swift_unknownObjectRetain();
    a1(&v18, &v17);
    if (v3)
    {

      swift_unknownObjectRelease();
      return v6;
    }

    result = swift_unknownObjectRelease();
    v8 = v18;
    v9 = *(v18 + 16);
    v10 = v6[2];
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= v6[3] >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_24E6183F8(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_15:
        if ((v6[3] >> 1) - v6[2] < v9)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C18);
        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = v6[2];
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_25;
          }

          v6[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v5;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_24EA0D7A8(void (*a1)(unint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v30 = a3 + 32;
  while (1)
  {
    v36 = *(v30 + 16 * v5);
    swift_unknownObjectRetain();
    v8 = v4;
    a1(&v37, &v36);
    if (v4)
    {

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
    v9 = v37;
    v10 = v37 >> 62;
    if (v37 >> 62)
    {
      v11 = sub_24F92C738();
    }

    else
    {
      v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_24F92C738();
      v14 = v28 + v11;
      if (__OFADD__(v28, v11))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v11;
    if (result)
    {
      if (!v12)
      {
        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_24F92C738();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_24F92C8F8();
    v6 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v34)
    {
      goto LABEL_38;
    }

    v33 = v6;
    v20 = v15 + 8 * v16 + 32;
    v29 = v15;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_24E6B42EC(&qword_27F2250D8, &qword_27F2250D0);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250D0);
        v22 = sub_24E951AFC(v35, i, v9);
        v24 = *v23;
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_24E69A5C4(0, &qword_27F2250C8);
      swift_arrayInitWithCopy();
    }

    v4 = v8;
    v6 = v33;
    if (v34 > 0)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v5 == v31)
    {
      return v6;
    }
  }

  v19 = v15;
  result = sub_24F92C738();
  v15 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24EA0DAD4(void (*a1)(unint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v30 = a3 + 32;
  while (1)
  {
    v36 = *(v30 + 16 * v5);
    swift_unknownObjectRetain();
    v8 = v4;
    a1(&v37, &v36);
    if (v4)
    {

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
    v9 = v37;
    v10 = v37 >> 62;
    if (v37 >> 62)
    {
      v11 = sub_24F92C738();
    }

    else
    {
      v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_24F92C738();
      v14 = v28 + v11;
      if (__OFADD__(v28, v11))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v11;
    if (result)
    {
      if (!v12)
      {
        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_24F92C738();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_24F92C8F8();
    v6 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v34)
    {
      goto LABEL_38;
    }

    v33 = v6;
    v20 = v15 + 8 * v16 + 32;
    v29 = v15;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_24E6B42EC(&qword_27F225100, &qword_27F2250F8);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250F8);
        v22 = sub_24E951AFC(v35, i, v9);
        v24 = *v23;
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_24E69A5C4(0, &qword_27F2250F0);
      swift_arrayInitWithCopy();
    }

    v4 = v8;
    v6 = v33;
    if (v34 > 0)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v5 == v31)
    {
      return v6;
    }
  }

  v19 = v15;
  result = sub_24F92C738();
  v15 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24EA0DE00(void (*a1)(unint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v30 = a3 + 32;
  while (1)
  {
    v36 = *(v30 + 16 * v5);
    swift_unknownObjectRetain();
    v8 = v4;
    a1(&v37, &v36);
    if (v4)
    {

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
    v9 = v37;
    v10 = v37 >> 62;
    if (v37 >> 62)
    {
      v11 = sub_24F92C738();
    }

    else
    {
      v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_24F92C738();
      v14 = v28 + v11;
      if (__OFADD__(v28, v11))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v11;
    if (result)
    {
      if (!v12)
      {
        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_24F92C738();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_24F92C8F8();
    v6 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v34)
    {
      goto LABEL_38;
    }

    v33 = v6;
    v20 = v15 + 8 * v16 + 32;
    v29 = v15;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_24E6B42EC(&qword_27F2250E8, &qword_27F2250E0);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250E0);
        v22 = sub_24E951AFC(v35, i, v9);
        v24 = *v23;
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_24E69A5C4(0, &unk_27F237E80);
      swift_arrayInitWithCopy();
    }

    v4 = v8;
    v6 = v33;
    if (v34 > 0)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v5 == v31)
    {
      return v6;
    }
  }

  v19 = v15;
  result = sub_24F92C738();
  v15 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t CompoundCollectionElementsObserver.__allocating_init(children:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_24EA115C4(a1);

  return v2;
}

uint64_t CompoundCollectionElementsObserver.init(children:)(uint64_t a1)
{
  v1 = sub_24EA115C4(a1);

  return v1;
}

uint64_t CompoundCollectionElementsObserver.addChild(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_24E6182A0(0, v5[2] + 1, 1, v5);
    *(v2 + 16) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_24E6182A0((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = a1;
  v9[5] = a2;
  *(v2 + 16) = v5;
  swift_endAccess();
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (!v10 || !a1)
  {
    return swift_unknownObjectRetain();
  }

  v11 = v10;
  swift_beginAccess();
  v12 = *(v2 + 24);
  swift_unknownObjectRetain_n();
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v12;
  if ((v13 & 1) == 0)
  {
    v12 = sub_24E61827C(0, v12[2] + 1, 1, v12);
    *(v2 + 24) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_24E61827C((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = a1;
  v16[5] = v11;
  *(v2 + 24) = v12;
  return swift_endAccess();
}

Swift::Void __swiftcall CompoundCollectionElementsObserver.addChildren(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();

  sub_24EA0AD20(v2, sub_24E6182A0, &qword_27F213C38);
  swift_endAccess();
  v3 = 0;
  v4 = *(a1._rawValue + 2);
  v5 = a1._rawValue + 32;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = &v5[16 * v3];
  while (1)
  {
    if (v4 == v3)
    {
      swift_beginAccess();
      sub_24EA0AD20(v6, sub_24E61827C, &qword_27F213C28);
      swift_endAccess();
      return;
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_17;
    }

    v10 = *v7;
    v7 += 16;
    v9 = v10;
    swift_getObjectType();
    v11 = swift_conformsToProtocol2();
    ++v3;
    if (v11)
    {
      v12 = v9 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = v11;
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_24E61827C(0, v6[2] + 1, 1, v6);
      }

      v15 = v6[2];
      v14 = v6[3];
      if (v15 >= v14 >> 1)
      {
        v6 = sub_24E61827C((v14 > 1), v15 + 1, 1, v6);
      }

      v6[2] = v15 + 1;
      v16 = &v6[2 * v15];
      v16[4] = v9;
      v16[5] = v13;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t CompoundCollectionElementsObserver.removeChild(_:)(uint64_t a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    for (i = (v4 + 32); *i != a1; i += 2)
    {
      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_24EA0E8F8(v6, sub_24ECDE264);
    swift_endAccess();
    swift_unknownObjectRelease();
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (result)
    {
      if (a1)
      {
        result = swift_beginAccess();
        v8 = *(v1 + 24);
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = 0;
          for (j = (v8 + 32); *j != a1; j += 2)
          {
            if (v9 == ++v10)
            {
              return result;
            }
          }

          swift_beginAccess();
          swift_unknownObjectRetain();
          sub_24EA0E8F8(v10, sub_24ECDE250);
          swift_endAccess();
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_24EA0E6F4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24ECDE200(v3);
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

uint64_t sub_24EA0E780(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24ECDE964(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_24EA0E828@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24ECDE31C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 136 * a1;
    v9 = *(v8 + 144);
    v10 = v7 - 1;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = v9;
    *(a2 + 128) = *(v8 + 160);
    v11 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v11;
    v12 = *(v8 + 112);
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v12;
    v13 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v13;
    result = memmove((v8 + 32), (v8 + 168), 136 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24EA0E8F8(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

size_t sub_24EA0E98C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24ECDE344(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for VirtualCall() - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_24EA119E4(v11, a2, type metadata accessor for VirtualCall);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_24EA0EAEC@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = v9 + 40 * a1;
    a3(v13 + 32, a4);
    result = memmove((v13 + 32), (v13 + 72), 40 * (v12 - a1));
    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

Swift::Void __swiftcall CompoundCollectionElementsObserver.removeAllChildren()()
{
  swift_beginAccess();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v0 + 24) = v1;
}

uint64_t CompoundCollectionElementsObserver.removingChildren(where:)(uint64_t (*a1)(uint64_t, void))
{
  swift_beginAccess();
  v26 = v1;
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    v8 = v6;
    while (v8 < *(v3 + 16))
    {
      v27 = *(v3 + 32 + 16 * v8);
      v6 = v8 + 1;
      v9 = swift_unknownObjectRetain();
      if ((a1(v9, *(&v27 + 1)) & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24F4584D8(0, *(v7 + 16) + 1, 1);
        }

        v10 = v27;
        v12 = *(v7 + 16);
        v11 = *(v7 + 24);
        v13 = v12 + 1;
        if (v12 >= v11 >> 1)
        {
          result = sub_24F4584D8((v11 > 1), v12 + 1, 1);
          v13 = v12 + 1;
          v10 = v27;
        }

        *(v7 + 16) = v13;
        *(v7 + 16 * v12 + 32) = v10;
        if (v4 - 1 != v8)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }

      result = swift_unknownObjectRelease();
      ++v8;
      if (v4 == v6)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_15:

    *(v1 + 16) = v7;

    v14 = *(v1 + 16);
    v15 = *(v14 + 16);

    v16 = 0;
    v17 = MEMORY[0x277D84F90];
LABEL_16:
    v18 = 16 * v16 + 32;
    while (1)
    {
      if (v15 == v16)
      {

        swift_beginAccess();
        *(v26 + 24) = v17;
      }

      if (v16 >= *(v14 + 16))
      {
        break;
      }

      ++v16;
      v19 = v18 + 16;
      v20 = *(v14 + v18);
      swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {
        v21 = v20 == 0;
      }

      else
      {
        v21 = 1;
      }

      v18 = v19;
      if (!v21)
      {
        v22 = result;
        swift_unknownObjectRetain();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_24E61827C(0, v17[2] + 1, 1, v17);
          v17 = result;
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          result = sub_24E61827C((v23 > 1), v24 + 1, 1, v17);
          v17 = result;
        }

        v17[2] = v24 + 1;
        v25 = &v17[2 * v24];
        v25[4] = v20;
        v25[5] = v22;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA0EEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 8);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 16);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 24);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 32);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 40);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 48);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = *(v3 + 16);
  v8 = *(result + 16);
  if (v8)
  {
    v9 = ( + 40);
    do
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 56);
      swift_unknownObjectRetain();
      v12(a1, a2, a3, ObjectType, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_24EA0F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 64);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 72);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0F6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 80);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0F7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = *(v5 + 16);
  v12 = *(result + 16);
  if (v12)
  {
    v19 = a4;
    v13 = ( + 40);
    v20 = a5;
    v14 = a2;
    v15 = a1;
    do
    {
      v16 = *v13;
      ObjectType = swift_getObjectType();
      v18 = *(v16 + 88);
      swift_unknownObjectRetain();
      v18(v15, v14, a3, v19, v20, ObjectType, v16);
      swift_unknownObjectRelease();
      v13 += 2;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_24EA0F8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 96);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EA0F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = *(v4 + 16);
  v10 = *(result + 16);
  if (v10)
  {
    v16 = a4;
    v11 = ( + 40);
    v12 = a1;
    do
    {
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *(v13 + 104);
      swift_unknownObjectRetain();
      v15(v12, a2, a3, v16, ObjectType, v13);
      swift_unknownObjectRelease();
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

void *sub_24EA0FA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;

  v8 = sub_24EA0D600(sub_24EA116F8, v10, v7);

  return v8;
}

uint64_t CompoundCollectionElementsObserver.deinit()
{

  return v0;
}

uint64_t CompoundCollectionElementsObserver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_24EA0FBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;

  v8 = sub_24EA0D600(sub_24EA11A4C, v10, v7);

  return v8;
}

uint64_t sub_24EA0FC48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225198, &qword_27F216118);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216118);
            v9 = sub_24E951A7C(v13, i, a3);
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
        type metadata accessor for GSKDebugMetricsImpressionsView.TreeNode();
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

uint64_t sub_24EA0FDD8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2250B8, &qword_27F2250B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250B0);
            v9 = sub_24E951AFC(v13, i, a3);
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
        sub_24E69A5C4(0, &qword_27F235820);
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

uint64_t sub_24EA0FF78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225190, &qword_27F225188);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225188);
            v9 = sub_24E951A7C(v13, i, a3);
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
        type metadata accessor for Shelf();
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

uint64_t sub_24EA10108(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225098, &qword_27F225090);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225090);
            v9 = sub_24E951A7C(v13, i, a3);
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
        type metadata accessor for OverlayActiveCall(0);
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

uint64_t sub_24EA10298(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225170, &qword_27F225168);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225168);
            v9 = sub_24E951A7C(v13, i, a3);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225160);
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

uint64_t sub_24EA10434(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225088, &qword_27F22DFE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DFE0);
            v9 = sub_24E951AFC(v13, i, a3);
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
        sub_24E69A5C4(0, &qword_27F223450);
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

uint64_t sub_24EA105D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2251A8, &qword_27F2251A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251A0);
            v9 = sub_24E951C74(v13, i, a3);
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
        sub_24E69A5C4(0, &unk_27F23E280);
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

uint64_t sub_24EA10774(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225180, &qword_27F225178);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225178);
            v9 = sub_24E951A7C(v13, i, a3);
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
        type metadata accessor for SearchResult();
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

uint64_t sub_24EA10904(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225158, &qword_27F225150);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225150);
            v9 = sub_24E951AFC(v13, i, a3);
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
        sub_24E69A5C4(0, &qword_27F225148);
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

uint64_t sub_24EA10AA4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225140, &qword_27F225138);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225138);
            v9 = sub_24E951AFC(v13, i, a3);
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
        sub_24E69A5C4(0, &qword_27F225130);
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

uint64_t sub_24EA10C44(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2251B0, &qword_27F219650);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650);
            v9 = sub_24E951A7C(v13, i, a3);
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
        type metadata accessor for Artwork();
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

uint64_t sub_24EA10DD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225128, &qword_27F225120);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225120);
            v9 = sub_24E951A7C(v13, i, a3);
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
        type metadata accessor for GuidedSearchToken();
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

uint64_t sub_24EA10F64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225100, &qword_27F2250F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250F8);
            v9 = sub_24E951AFC(v13, i, a3);
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
        sub_24E69A5C4(0, &qword_27F2250F0);
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

uint64_t sub_24EA11104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2250A8, &qword_27F2250A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2250A0);
            v9 = sub_24E951A7C(v13, i, a3);
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
        type metadata accessor for GameCenterGameplayHistoryRecord();
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

uint64_t sub_24EA11294(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F225118, &qword_27F225110);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225110);
            v9 = sub_24E951AFC(v13, i, a3);
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
        sub_24E69A5C4(0, &qword_27F225108);
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

uint64_t sub_24EA11434(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_24F92C738();
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
      result = sub_24F92C738();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_24E6B42EC(&qword_27F2250C0, &qword_27F224980);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224980);
            v9 = sub_24E951A7C(v13, i, a3);
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
        type metadata accessor for TodayCardArtworkSizedLayoutMetrics();
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

uint64_t sub_24EA115C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(a1 + 16);

  v4 = 0;
  v5 = result + 32;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 16 * v4);
  while (1)
  {
    if (v2 == v4)
    {
      *(v1 + 24) = v6;
      return v1;
    }

    if (v4 >= v2)
    {
      break;
    }

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_17;
    }

    v10 = *v7;
    v7 += 2;
    v9 = v10;
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    ++v4;
    if (result)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = result;
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E61827C(0, v6[2] + 1, 1, v6);
        v6 = result;
      }

      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_24E61827C((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      v6[2] = v14 + 1;
      v15 = &v6[2 * v14];
      v15[4] = v9;
      v15[5] = v12;
      v4 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24EA11960@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v7 + 8))(v4, v5, v6, ObjectType, v7);
  *a2 = result;
  return result;
}

uint64_t sub_24EA119E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_24EA11A64()
{
  v1 = sub_24F923F78();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *MEMORY[0x277CDFA90];
  v7 = *(v2 + 104);
  v7(v5, v6, v1, v3);
  v8 = sub_24F923F68();
  v9 = *(v2 + 8);
  v9(v5, v1);
  v10 = *(v0 + 16);
  v11 = 64;
  if (v8)
  {
    v11 = 112;
  }

  v25 = *(v10 + v11);
  v12 = v25;
  v13 = v10;
  (v7)(v5, v6, v1);
  v26 = v12;
  LOBYTE(v12) = sub_24F923F68();
  v9(v5, v1);
  v14 = 48;
  if (v12)
  {
    v14 = 96;
  }

  v15 = *(v13 + v14);
  (v7)(v5, v6, v1);

  v16 = sub_24F923F68();
  v9(v5, v1);
  v17 = 56;
  if (v16)
  {
    v17 = 104;
  }

  v18 = *(v13 + v17);
  if (v25)
  {

    v19 = v26;
LABEL_9:
    v19 = v19;
    v20 = sub_24F926BF8();
    goto LABEL_10;
  }

  v19 = v26;
  if (v18)
  {
    v22 = *(*(v18 + OBJC_IVAR____TtC12GameStoreKit5Video_preview) + 48);
    if (v22)
    {

      v23 = v22;
      goto LABEL_9;
    }
  }

  if (!v15)
  {

    return 0;
  }

  v20 = *(v15 + 48);

  v24 = v20;
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_10:

  return v20;
}

uint64_t sub_24EA11CF4@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_24F9234D8();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x28223BE20](v2);
  v57 = &v48[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for LargeBreakoutOverlayViewModel();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_24F923F78();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v48[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2251E0);
  MEMORY[0x28223BE20](v13 - 8);
  v56 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v48[-v16];
  v18 = qword_27F2251C0;
  swift_beginAccess();
  v55 = v18;
  sub_24E60169C(v1 + v18, v17, &qword_27F2251E0);
  v58 = v5;
  v19 = *(v5 + 48);
  v61 = v4;
  if (v19(v17, 1, v4) != 1)
  {
    return sub_24EA12DC0(v17, v63);
  }

  sub_24EA12D58(v17);
  v50 = *(v1 + 16);
  v20 = *MEMORY[0x277CDFA90];
  v21 = v54;
  v22 = *(v54 + 104);
  v22(v12, v20, v8);
  v49 = sub_24E747CE4(*(v1 + qword_27F39B4B8));
  v23 = *(v21 + 8);
  v23(v12, v8);
  v53 = v23;
  v52 = v20;
  v22(v12, v20, v8);
  v51 = v22;
  v24 = sub_24EA12978();
  v23(v12, v8);
  v22(v62, v20, v8);
  v54 = v1;
  v25 = *(v1 + 24);
  v26 = v50;
  v64 = sub_24F92C7A8();
  v65 = v27;
  MEMORY[0x253050C20](0x79616C7265766F2ELL, 0xE800000000000000);
  sub_24F92C7F8();
  v28 = v61;
  v29 = v61[10];

  sub_24F7278B8(v26, v24, v25, &v7[v29]);
  v30 = *(v26 + 41);
  v7[40] = *(v26 + 40);
  v7[41] = v30;
  v31 = *(v26 + 32);
  sub_24EA12E24(v31 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge, &v7[v28[6]], type metadata accessor for BreakoutDetails.Badge);
  sub_24E60169C(v31 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title, &v7[v28[7]], &qword_27F215340);
  sub_24E60169C(v31 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description, &v7[v28[8]], &qword_27F215340);
  v51(v12, v52, v8);
  v32 = v62;
  LOBYTE(v29) = sub_24F923F68();
  v33 = v12;
  v34 = v53;
  v53(v33, v8);
  v34(v32, v8);
  v35 = 95;
  if (v29)
  {
    v35 = 120;
  }

  v36 = *(v26 + v35);
  if (v36 != 2)
  {
    v38 = v54;
    v39 = v63;
    if ((v36 & 1) == 0)
    {
LABEL_11:
      v37 = MEMORY[0x277CDF3D0];
      goto LABEL_12;
    }

LABEL_9:
    v37 = MEMORY[0x277CDF3C0];
    goto LABEL_12;
  }

  if (v49 != 2)
  {
    v38 = v54;
    v39 = v63;
    if ((v49 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v37 = MEMORY[0x277CDF3C0];
  v38 = v54;
  v39 = v63;
LABEL_12:
  v42 = v59;
  v41 = v60;
  v43 = v57;
  (*(v59 + 104))(v57, *v37, v60);
  v44 = v61;
  (*(v42 + 32))(&v7[v61[9]], v43, v41);
  sub_24EA12DC0(v7, v39);
  v45 = v39;
  v46 = v56;
  sub_24EA12E24(v45, v56, type metadata accessor for LargeBreakoutOverlayViewModel);
  (*(v58 + 56))(v46, 0, 1, v44);
  v47 = v55;
  swift_beginAccess();
  sub_24EA12E8C(v46, v38 + v47);
  return swift_endAccess();
}