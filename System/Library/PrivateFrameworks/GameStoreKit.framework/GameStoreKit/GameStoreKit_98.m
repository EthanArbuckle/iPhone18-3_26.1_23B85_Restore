uint64_t ActionWrapper.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  type metadata accessor for Action();
  v7 = static Action.makeInstance(byDeserializing:using:)(a1, a2);
  if (v3)
  {
    v8 = sub_24F9285B8();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_24F928388();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_24F9285B8();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_24F928388();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

uint64_t sub_24F00A28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  type metadata accessor for Action();
  v7 = static Action.makeInstance(byDeserializing:using:)(a1, a2);
  if (v3)
  {
    v8 = sub_24F9285B8();
    (*(*(v8 - 8) + 8))(a2, v8);
    v9 = sub_24F928388();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    v11 = v7;
    v12 = sub_24F9285B8();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_24F928388();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v11;
  }

  return result;
}

uint64_t ActionIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActionIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActionIntent() + 20);
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void ActionIntent.referrerData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActionIntent() + 28);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;

  sub_24EA145F0(v4, v5, v6, v7, v8, v9);
}

JSValue __swiftcall ActionIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_10;
  }

  isa = result.super.isa;
  v7 = type metadata accessor for ActionIntent();
  v8 = isa;
  sub_24F91F398();
  v9 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24F92C328();
  v10 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_24F92C328();
  if (*(v2 + *(v7 + 28) + 8) == 1)
  {
    v11 = in.super.isa;
    v12 = 0;
  }

  else
  {
    v15 = sub_24EDC3010();
    v13 = in.super.isa;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v12 = sub_24F92CDE8();
    sub_24F00A764(&v15);
  }

  v14 = [v4 valueWithObject:v12 inContext:in.super.isa];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_24F92C328();

    return v8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24F00A764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F00A834(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ActionIntent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F00A87C()
{
  result = qword_27F236F90;
  if (!qword_27F236F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236F90);
  }

  return result;
}

uint64_t sub_24F00A8F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F91F4A8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F00A9B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
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

uint64_t WordmarkView.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

char *WordmarkView.__allocating_init(frame:wordmark:referenceLineHeight:alignment:)(_BYTE *a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v18 = sub_24F00C488(a1, v17, a3, a4, a5, a6, a7, v7, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v18;
}

char *WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)(_BYTE *a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7)
{
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_24F00C1B4(a1, v20, a3, v7, v15, v16, a4, a5, a6, a7);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v22;
}

id WordmarkView.show(wordmark:with:)(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView];
  if (qword_27F2103D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27F22B5B8;
  v6 = sub_24F92B098();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:a2];

  [v4 setImage_];
  return [v2 setNeedsLayout];
}

id WordmarkView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *WordmarkView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4 = sub_24F00BF0C(1, 0, a1, a2, a3, a4, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

id WordmarkView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WordmarkView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  sub_24F92CA88();
  __break(1u);
}

uint64_t WordmarkView.referenceLineHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  return sub_24E615E00(v1 + v3, a1);
}

uint64_t sub_24F00B0AC(uint64_t a1, void **a2)
{
  sub_24E615E00(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v3[v4], v6);
  swift_endAccess();
  [v3 setNeedsLayout];
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t WordmarkView.referenceLineHeight.setter(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&v1[v3], a1);
  swift_endAccess();
  [v1 setNeedsLayout];
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

id (*WordmarkView.referenceLineHeight.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F00B204;
}

uint64_t WordmarkView.alignment.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id WordmarkView.alignment.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  v1[v3] = v2;
  return [v1 setNeedsLayout];
}

id (*WordmarkView.alignment.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F00C788;
}

BOOL WordmarkView.hasContent.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView) image];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Void __swiftcall WordmarkView.layoutSubviews()()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView];
  v2 = [v1 image];
  v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  v16 = v0[v3];
  [v0 frame];
  [v0 layoutMargins];
  sub_24F92C1C8();
  sub_24F00B4E0(v2, &v16, v4, v5, v6, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [v1 setFrame_];
}

void sub_24F00B4E0(uint64_t a1, unsigned __int8 *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(sub_24F922348() - 8);
  *&v20 = MEMORY[0x28223BE20](a1).n128_u64[0];
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a2;
  if (v18)
  {
    v30 = v19;
    [v18 size];
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v29 = v13;
    v24 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
    swift_beginAccess();
    sub_24E615E00(v6 + v24, v31);
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    (*(v14 + 8))(v16, v29);
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_24F9222F8();
    (*(v17 + 8))(v22, v30);
  }

  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  if (v23 <= 1)
  {
    if (v23)
    {
      CGRectGetMidX(*&v25);
    }

    else
    {
      CGRectGetMinX(*&v25);
    }

    goto LABEL_13;
  }

  if (v23 == 2)
  {
    CGRectGetMaxX(*&v25);
LABEL_13:
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = a6;
    CGRectGetMinY(v33);
    sub_24F92C1D8();
    return;
  }

  if (v23 == 3)
  {
    CGRectGetMinX(*&v25);
  }

  else
  {
    CGRectGetMaxX(*&v25);
  }

  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetMinY(v32);
}

CGSize __swiftcall WordmarkView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = sub_24F92CDB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922348();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v1 + OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView) image];
  if (v13)
  {
    v24 = v4;
    v14 = v13;
    [v13 size];
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    v15 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
    swift_beginAccess();
    sub_24E615E00(v1 + v15, v25);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    sub_24E8ED7D8();
    sub_24F9223A8();
    v17 = v16;
    (*(v5 + 8))(v7, v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_24F9222F8();
    v19 = v18;

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v19 = 0.0;
    v17 = 0.0;
  }

  if (v19 <= width)
  {
    v20 = v19;
  }

  else
  {
    v20 = width;
  }

  if (v17 <= height)
  {
    v21 = v17;
  }

  else
  {
    v21 = height;
  }

  result.height = v21;
  result.width = v20;
  return result;
}

double WordmarkView.intrinsicContentSize.getter()
{
  v1 = sub_24F92CDB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F922348();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView) image];
  if (!v10)
  {
    return 0.0;
  }

  v17 = v1;
  v11 = v10;
  [v10 size];
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v12 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  sub_24E615E00(v0 + v12, v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_24E8ED7D8();
  sub_24F9223A8();
  (*(v2 + 8))(v4, v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_24F9222F8();
  v14 = v13;

  (*(v6 + 8))(v9, v5);
  return v14;
}

uint64_t WordmarkView.updateAlignment(toMatch:)(uint64_t result)
{
  if (result <= 1)
  {
    if (result)
    {
      if (result != 1)
      {
        return result;
      }

      v3 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
      swift_beginAccess();
      v1[v3] = 1;
      return [v1 setNeedsLayout];
    }

    v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
    swift_beginAccess();
    v5 = 3;
    goto LABEL_11;
  }

  if (result == 2)
  {
    v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
    swift_beginAccess();
    v5 = 4;
LABEL_11:
    v1[v4] = v5;
    return [v1 setNeedsLayout];
  }

  if (result == 3 || result == 4)
  {
    v2 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
    swift_beginAccess();
    v1[v2] = 0;
    return [v1 setNeedsLayout];
  }

  return result;
}

id WordmarkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_24F00BF0C(char a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = type metadata accessor for WordmarkView();
  v15 = objc_allocWithZone(v14);
  v32[3] = MEMORY[0x277D839F8];
  v32[4] = MEMORY[0x277D22A30];
  *v32 = a7;
  v16 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  *&v15[v16] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  sub_24E615E00(v32, &v15[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight]);
  v15[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment] = a2;
  v31.receiver = v15;
  v31.super_class = v14;
  v17 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a3, a4, a5, a6);
  v18 = *MEMORY[0x277D768C8];
  v19 = *(MEMORY[0x277D768C8] + 8);
  v20 = *(MEMORY[0x277D768C8] + 16);
  v21 = *(MEMORY[0x277D768C8] + 24);
  v22 = v17;
  [v22 setLayoutMargins_];
  v23 = [objc_opt_self() labelColor];
  [v22 setTintColor_];

  v24 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  [v22 addSubview_];
  if ((a1 & 1) == 0)
  {
    v25 = [v22 traitCollection];
    v26 = *&v22[v24];
    if (qword_27F2103D8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v27 = qword_27F22B5B8;
    v28 = sub_24F92B098();
    v29 = [objc_opt_self() imageNamed:v28 inBundle:v27 compatibleWithTraitCollection:v25];

    [v26 setImage_];
    [v22 setNeedsLayout];
  }

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v22;
}

char *sub_24F00C1B4(_BYTE *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  ObjectType = swift_getObjectType();
  v38[3] = a5;
  v38[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  LOBYTE(a5) = *a1;
  LOBYTE(a6) = *a3;
  v22 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  *&a4[v22] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  sub_24E615E00(v38, &a4[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight]);
  a4[OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment] = a6;
  v37.receiver = a4;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, sel_initWithFrame_, a7, a8, a9, a10);
  v24 = *MEMORY[0x277D768C8];
  v25 = *(MEMORY[0x277D768C8] + 8);
  v26 = *(MEMORY[0x277D768C8] + 16);
  v27 = *(MEMORY[0x277D768C8] + 24);
  v28 = v23;
  [v28 setLayoutMargins_];
  v29 = [objc_opt_self() labelColor];
  [v28 setTintColor_];

  v30 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_imageView;
  [v28 addSubview_];
  if ((a5 & 1) == 0)
  {
    v31 = [v28 traitCollection];
    v32 = *&v28[v30];
    if (qword_27F2103D8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = qword_27F22B5B8;
    v34 = sub_24F92B098();
    v35 = [objc_opt_self() imageNamed:v34 inBundle:v33 compatibleWithTraitCollection:v31];

    [v32 setImage_];
    [v28 setNeedsLayout];
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  return v28;
}

char *sub_24F00C488(_BYTE *a1, uint64_t a2, _BYTE *a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = objc_allocWithZone(v22);
  (*(v19 + 16))(v21, a2, a9);
  return sub_24F00C1B4(a1, v21, a3, v23, a9, a10, a4, a5, a6, a7);
}

unint64_t sub_24F00C5B8()
{
  result = qword_27F236FC0;
  if (!qword_27F236FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FC0);
  }

  return result;
}

uint64_t sub_24F00C60C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_referenceLineHeight;
  swift_beginAccess();
  return sub_24E615E00(v3 + v4, a2);
}

uint64_t sub_24F00C66C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_24F00C6C4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit12WordmarkView_alignment;
  swift_beginAccess();
  v3[v4] = v2;
  return [v3 setNeedsLayout];
}

GameStoreKit::RoundedButtonType_optional __swiftcall RoundedButtonType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t RoundedButtonType.rawValue.getter()
{
  if (*v0)
  {
    return 0x647261646E617473;
  }

  else
  {
    return 0x6572616873;
  }
}

uint64_t sub_24F00C828(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x647261646E617473;
  }

  else
  {
    v3 = 0x6572616873;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x647261646E617473;
  }

  else
  {
    v5 = 0x6572616873;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F00C8CC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F00C94C()
{
  sub_24F92B218();
}

uint64_t sub_24F00C9B8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F00CA34@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F00CA94(uint64_t *a1@<X8>)
{
  v2 = 0x6572616873;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RoundedButton.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *RoundedButton.buttonColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *RoundedButton.textColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

uint64_t RoundedButton.__allocating_init(id:type:hasDivider:title:action:buttonColor:textColor:)(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a4;
  v31 = a6;
  v29 = a3;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v18 = *a2;
  sub_24E65E064(a1, &v34);
  if (*(&v35 + 1))
  {
    v19 = v35;
    *(v17 + 64) = v34;
    *(v17 + 80) = v19;
    *(v17 + 96) = v36;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v28 = a5;
    v21 = a7;
    v22 = a8;
    v24 = v23;
    (*(v14 + 8))(v16, v13);
    v32 = v20;
    v33 = v24;
    a8 = v22;
    a7 = v21;
    a5 = v28;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v34);
  }

  sub_24E9BBAA8(a1);
  *(v17 + 17) = v18;
  *(v17 + 16) = v29 & 1;
  v25 = v30;
  *(v17 + 24) = v31;
  *(v17 + 32) = v25;
  *(v17 + 40) = a5;
  *(v17 + 48) = a7;
  *(v17 + 56) = a8;
  return v17;
}

uint64_t RoundedButton.init(id:type:hasDivider:title:action:buttonColor:textColor:)(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v33 = a4;
  v32 = a3;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  sub_24E65E064(a1, &v36);
  if (*(&v37 + 1))
  {
    v39 = v36;
    v40 = v37;
    v41 = v38;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v30 = a2;
    a2 = v20;
    v31 = a6;
    v21 = a5;
    v22 = a7;
    v23 = a8;
    v25 = v24;
    (*(v16 + 8))(v18, v15);
    v34 = a2;
    v35 = v25;
    LOBYTE(a2) = v30;
    a8 = v23;
    a7 = v22;
    a5 = v21;
    a6 = v31;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v36);
  }

  sub_24E9BBAA8(a1);
  v26 = v40;
  *(v9 + 64) = v39;
  *(v9 + 80) = v26;
  *(v9 + 96) = v41;
  *(v9 + 17) = a2;
  *(v9 + 16) = v32 & 1;
  v27 = v33;
  *(v9 + 24) = a6;
  *(v9 + 32) = v27;
  *(v9 + 40) = a5;
  *(v9 + 48) = a7;
  *(v9 + 56) = a8;
  return v9;
}

uint64_t RoundedButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RoundedButton.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *RoundedButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v52 = *v3;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v54 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v52 - v13;
  MEMORY[0x28223BE20](v14);
  v55 = &v52 - v15;
  MEMORY[0x28223BE20](v16);
  v56 = &v52 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  v57 = a1;
  sub_24F928398();
  v24 = sub_24F928348();
  if (v25)
  {
    v59 = v24;
    v60 = v25;
  }

  else
  {
    sub_24F91F6A8();
    v26 = sub_24F91F668();
    v27 = v6;
    v29 = v28;
    (*(v27 + 8))(v8, v5);
    v59 = v26;
    v60 = v29;
  }

  sub_24F92C7F8();
  v30 = *(v10 + 8);
  v30(v23, v9);
  v31 = v62;
  *(v3 + 4) = v61;
  *(v3 + 5) = v31;
  v3[12] = v63;
  v32 = v57;
  sub_24F928398();
  sub_24F00D67C();
  v33 = v58;
  sub_24F928218();
  if (v33)
  {
    v34 = sub_24F9285B8();
    (*(*(v34 - 8) + 8))(v64, v34);
    v30(v32, v9);
    v30(v20, v9);
  }

  else
  {
    v58 = v10 + 8;
    v30(v20, v9);
    *(v3 + 17) = v61;
    type metadata accessor for Action();
    v35 = v56;
    sub_24F928398();
    v37 = static Action.makeInstance(byDeserializing:using:)(v35, v64);
    v30(v35, v9);
    v3[3] = v37;
    v38 = v55;
    sub_24F928398();
    v39 = sub_24F928348();
    v40 = v32;
    v42 = v41;
    v30(v38, v9);
    if (v42)
    {
      v3[4] = v39;
      v3[5] = v42;
      v43 = v53;
      sub_24F928398();
      v44 = JSONObject.appStoreColor.getter();
      v30(v43, v9);
      v3[6] = v44;
      sub_24F928398();
      v45 = JSONObject.appStoreColor.getter();
      v30(v43, v9);
      v3[7] = v45;
      v46 = v54;
      sub_24F928398();
      LOBYTE(v45) = sub_24F928278();
      v47 = sub_24F9285B8();
      (*(*(v47 - 8) + 8))(v64, v47);
      v30(v40, v9);
      v30(v46, v9);
      *(v3 + 16) = v45 & 1;
      return v3;
    }

    v48 = sub_24F92AC38();
    sub_24F00D82C(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v49 = 0x656C746974;
    v50 = v52;
    v49[1] = 0xE500000000000000;
    v49[2] = v50;
    (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    v51 = sub_24F9285B8();
    (*(*(v51 - 8) + 8))(v64, v51);
    v30(v40, v9);
  }

  sub_24E6585F8((v3 + 8));
  type metadata accessor for RoundedButton();
  swift_deallocPartialClassInstance();
  return v3;
}

unint64_t sub_24F00D67C()
{
  result = qword_27F236FC8;
  if (!qword_27F236FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FC8);
  }

  return result;
}

uint64_t RoundedButton.deinit()
{

  sub_24E6585F8(v0 + 64);
  return v0;
}

uint64_t RoundedButton.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_24F00D790()
{
  result = qword_27F236FD0;
  if (!qword_27F236FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FD0);
  }

  return result;
}

uint64_t sub_24F00D82C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_24F00D884@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for RoundedButton();
  v7 = swift_allocObject();
  result = RoundedButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t ClickableModel<>.segue.getter@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  result = (*(a1 + 8))();
  v4 = result;
  if (result)
  {
    v5 = type metadata accessor for Action();
    result = sub_24F00D9C8();
  }

  else
  {
    v5 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *a2 = v4;
  a2[3] = v5;
  a2[4] = result;
  return result;
}

unint64_t sub_24F00D9C8()
{
  result = qword_27F216DE8;
  if (!qword_27F216DE8)
  {
    type metadata accessor for Action();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216DE8);
  }

  return result;
}

char *BlankAction.__allocating_init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v10 = sub_24F91F6B8();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v29 = a1;
  sub_24E60169C(a1, v39, &qword_27F235830);
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 16);
  v28 = a6;
  v17(&v13[v14], a6, v15);
  sub_24E60169C(a7, &v13[OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics], &qword_27F213E68);
  v18 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E60169C(v39, &v36, &qword_27F235830);
  if (*(&v37 + 1))
  {
    v20 = v37;
    *v19 = v36;
    *(v19 + 1) = v20;
    *(v19 + 4) = v38;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v27 + 8))(v12, v10);
    v34 = v21;
    v35 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v36, &qword_27F235830);
  }

  sub_24E601704(a7, &qword_27F213E68);
  (*(v16 + 8))(v28, v15);
  sub_24E601704(v29, &qword_27F235830);
  sub_24E601704(v39, &qword_27F235830);
  v24 = v31;
  *(v13 + 2) = v30;
  *(v13 + 3) = v24;
  v25 = v33;
  *(v13 + 4) = v32;
  *(v13 + 5) = v25;
  return v13;
}

uint64_t BlankAction.__allocating_init(actionMetrics:)(uint64_t a1)
{
  v2 = sub_24F91F6B8();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v12 = *(v9 + 16);
  v26 = a1;
  v12(v11, a1, v8);
  v13 = sub_24F929608();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  sub_24E60169C(v33, v32, &qword_27F235830);
  v12((v14 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v11, v8);
  sub_24E60169C(v7, v14 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  v15 = (v14 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  v16 = v14 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v32, &v29, &qword_27F235830);
  if (*(&v30 + 1))
  {
    v17 = v30;
    *v16 = v29;
    *(v16 + 16) = v17;
    *(v16 + 32) = v31;
  }

  else
  {
    sub_24F91F6A8();
    v18 = sub_24F91F668();
    v20 = v19;
    (*(v24 + 8))(v4, v25);
    v27 = v18;
    v28 = v20;
    sub_24F92C7F8();
    sub_24E601704(&v29, &qword_27F235830);
  }

  v21 = *(v9 + 8);
  v21(v26, v8);
  sub_24E601704(v32, &qword_27F235830);
  sub_24E601704(v7, &qword_27F213E68);
  v21(v11, v8);
  sub_24E601704(v33, &qword_27F235830);
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  return v14;
}

void *BlankAction.init(id:title:artwork:presentationStyle:actionMetrics:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a7;
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v40 = a2;
  v37 = sub_24F91F6B8();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  v20 = a1;
  v21 = a6;
  v22 = v38;
  sub_24E60169C(v20, v52, &qword_27F235830);
  (*(v17 + 16))(v19, v21, v16);
  sub_24E60169C(v22, v15, &qword_27F213E68);
  v23 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v23 = 0u;
  v23[1] = 0u;
  sub_24E60169C(v52, &v46, &qword_27F235830);
  if (*(&v47 + 1))
  {
    v49 = v46;
    v50 = v47;
    v51 = v48;
  }

  else
  {
    sub_24F91F6A8();
    v24 = v22;
    v25 = sub_24F91F668();
    v26 = v15;
    v28 = v27;
    (*(v36 + 8))(v12, v37);
    v44 = v25;
    v45 = v28;
    v22 = v24;
    v15 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v46, &qword_27F235830);
  }

  sub_24E601704(v22, &qword_27F213E68);
  (*(v17 + 8))(v21, v16);
  sub_24E601704(v39, &qword_27F235830);
  sub_24E601704(v52, &qword_27F235830);
  v29 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v51;
  v30 = v50;
  *v29 = v49;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v31 = v41;
  v32 = v42;
  v8[2] = v40;
  v8[3] = v31;
  v33 = v43;
  v8[4] = v32;
  v8[5] = v33;
  (*(v17 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v8;
}

char *BlankAction.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v12 = *(v9 + 16);
  v16 = a1;
  v12(v11, a1, v8);
  (*(v5 + 16))(v7, a2, v4);
  v13 = Action.init(deserializing:using:)(v11, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v16, v8);
  return v13;
}

char *BlankAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v9 + 16);
  v17 = a1;
  v13(v12, a1, v8, v10);
  (*(v5 + 16))(v7, a2, v4);
  v14 = Action.init(deserializing:using:)(v12, v7);
  (*(v5 + 8))(a2, v4);
  (*(v9 + 8))(v17, v8);
  return v14;
}

uint64_t BlankAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);
  return v0;
}

uint64_t BlankAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BlankAction()
{
  result = qword_27F236FE0;
  if (!qword_27F236FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F00EA68(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = 7;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 > 7)
  {
    v4 = v2;
  }

  v6 = v4 + 1;
  v7 = (&unk_2861B2B40 + 24 * v2 + 32);
  while (v2 != 7)
  {
    if (v6 == ++v2)
    {
      __break(1u);
      return result;
    }

    v8 = v7 + 3;
    v9 = *v7;
    v7 += 3;
    if ((v9 & v1) != 0)
    {
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24F457940(0, v5[2] + 1, 1);
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_24F457940((v12 > 1), v13 + 1, 1);
      }

      v5[2] = v13 + 1;
      v14 = &v5[3 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = v10;
      v4 = 7;
      goto LABEL_2;
    }
  }

  v15 = v5[2];
  if (v15)
  {
    sub_24F4578E0(0, v15, 0);
    v16 = v5 + 6;
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = *(v3 + 16);
      v20 = *(v3 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_24F4578E0((v20 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      v21 = v3 + 16 * v19;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_24F00EC48(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v4 = 15;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 > 0xF)
  {
    v4 = v2;
  }

  v6 = v4 + 1;
  v7 = (&unk_2861B2C08 + 24 * v2 + 32);
  while (v2 != 15)
  {
    if (v6 == ++v2)
    {
      __break(1u);
      return result;
    }

    v8 = v7 + 3;
    v9 = *v7;
    v7 += 3;
    if ((v9 & v1) != 0)
    {
      v11 = *(v8 - 2);
      v10 = *(v8 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24F457980(0, v5[2] + 1, 1);
      }

      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_24F457980((v12 > 1), v13 + 1, 1);
      }

      v5[2] = v13 + 1;
      v14 = &v5[3 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v14[6] = v10;
      v4 = 15;
      goto LABEL_2;
    }
  }

  v15 = v5[2];
  if (v15)
  {
    sub_24F4578E0(0, v15, 0);
    v16 = v5 + 6;
    do
    {
      v18 = *(v16 - 1);
      v17 = *v16;
      v19 = *(v3 + 16);
      v20 = *(v3 + 24);

      if (v19 >= v20 >> 1)
      {
        sub_24F4578E0((v20 > 1), v19 + 1, 1);
      }

      *(v3 + 16) = v19 + 1;
      v21 = v3 + 16 * v19;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v16 += 3;
      --v15;
    }

    while (v15);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t Shelf.PresentationHints.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v108 = sub_24F928388();
  v6 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v94 - v9;
  MEMORY[0x28223BE20](v10);
  v105 = &v94 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v94 - v13;
  MEMORY[0x28223BE20](v15);
  v104 = &v94 - v16;
  MEMORY[0x28223BE20](v17);
  v103 = &v94 - v18;
  MEMORY[0x28223BE20](v19);
  v102 = &v94 - v20;
  MEMORY[0x28223BE20](v21);
  v101 = &v94 - v22;
  MEMORY[0x28223BE20](v23);
  v100 = &v94 - v24;
  MEMORY[0x28223BE20](v25);
  v99 = &v94 - v26;
  MEMORY[0x28223BE20](v27);
  v98 = &v94 - v28;
  MEMORY[0x28223BE20](v29);
  v97 = &v94 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v94 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v94 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v94 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v94 - v41;
  if (sub_24F928328())
  {
    v43 = sub_24F9285B8();
    (*(*(v43 - 8) + 8))(a2, v43);
    result = (*(v6 + 8))(a1, v108);
    v45 = 0;
  }

  else
  {
    v95 = a2;
    v96 = a3;
    sub_24F928398();
    v46 = sub_24F928278();
    v94 = v14;
    v47 = *(v6 + 8);
    v48 = v108;
    v47(v42, v108);
    sub_24F928398();
    v49 = sub_24F928278();
    v109 = a1;
    v47(v39, v48);
    v50 = v46 & 1 | 2;
    if ((v49 & 1) == 0)
    {
      v50 = v46 & 1;
    }

    if (v49 == 2)
    {
      v51 = v46 & 1;
    }

    else
    {
      v51 = v50;
    }

    sub_24F928398();
    v52 = sub_24F928278();
    v47(v36, v48);
    v53 = v51 | 4;
    if ((v52 & 1) == 0)
    {
      v53 = v51;
    }

    if (v52 != 2)
    {
      v51 = v53;
    }

    sub_24F928398();
    v54 = sub_24F928278();
    v47(v33, v48);
    v55 = v51 | 8;
    if ((v54 & 1) == 0)
    {
      v55 = v51;
    }

    if (v54 != 2)
    {
      v51 = v55;
    }

    v56 = v97;
    sub_24F928398();
    v57 = sub_24F928278();
    v47(v56, v48);
    v58 = v51 | 0x10;
    if ((v57 & 1) == 0)
    {
      v58 = v51;
    }

    if (v57 != 2)
    {
      v51 = v58;
    }

    v59 = v98;
    sub_24F928398();
    v60 = sub_24F928278();
    v47(v59, v48);
    v61 = v51 | 0x20;
    if ((v60 & 1) == 0)
    {
      v61 = v51;
    }

    if (v60 != 2)
    {
      v51 = v61;
    }

    v62 = v99;
    sub_24F928398();
    v63 = sub_24F928278();
    v47(v62, v48);
    v64 = v51 | 0x40;
    if ((v63 & 1) == 0)
    {
      v64 = v51;
    }

    if (v63 != 2)
    {
      v51 = v64;
    }

    v65 = v100;
    sub_24F928398();
    v66 = sub_24F928278();
    v47(v65, v48);
    v67 = v51 | 0x80;
    if ((v66 & 1) == 0)
    {
      v67 = v51;
    }

    if (v66 != 2)
    {
      v51 = v67;
    }

    v68 = v101;
    sub_24F928398();
    v69 = sub_24F928278();
    v47(v68, v48);
    v70 = v51 | 0x100;
    if ((v69 & 1) == 0)
    {
      v70 = v51;
    }

    if (v69 != 2)
    {
      v51 = v70;
    }

    v71 = v102;
    sub_24F928398();
    v72 = sub_24F928278();
    v47(v71, v48);
    v73 = v51 | 0x200;
    if ((v72 & 1) == 0)
    {
      v73 = v51;
    }

    if (v72 != 2)
    {
      v51 = v73;
    }

    v74 = v103;
    sub_24F928398();
    v75 = sub_24F928278();
    v47(v74, v48);
    v76 = v51 | 0x400;
    if ((v75 & 1) == 0)
    {
      v76 = v51;
    }

    if (v75 != 2)
    {
      v51 = v76;
    }

    v77 = v104;
    sub_24F928398();
    v78 = sub_24F928278();
    v47(v77, v48);
    v79 = v51 | 0x800;
    if ((v78 & 1) == 0)
    {
      v79 = v51;
    }

    if (v78 != 2)
    {
      v51 = v79;
    }

    v80 = v94;
    sub_24F928398();
    v81 = sub_24F928278();
    v47(v80, v48);
    v82 = v51 | 0x1000;
    if ((v81 & 1) == 0)
    {
      v82 = v51;
    }

    if (v81 != 2)
    {
      v51 = v82;
    }

    v83 = v105;
    sub_24F928398();
    v84 = sub_24F928278();
    v47(v83, v48);
    v85 = v51 | 0x2000;
    if ((v84 & 1) == 0)
    {
      v85 = v51;
    }

    if (v84 != 2)
    {
      v51 = v85;
    }

    v86 = v106;
    sub_24F928398();
    v87 = sub_24F928278();
    v47(v86, v48);
    v88 = v51 | 0x4000;
    if ((v87 & 1) == 0)
    {
      v88 = v51;
    }

    if (v87 == 2)
    {
      v45 = v51;
    }

    else
    {
      v45 = v88;
    }

    v89 = v109;
    v90 = v107;
    sub_24F928398();
    v91 = sub_24F928278();
    v47(v90, v48);
    if (v91 == 2 || (v91 & 1) == 0)
    {
      v93 = sub_24F9285B8();
      (*(*(v93 - 8) + 8))(v95, v93);
      result = (v47)(v89, v48);
    }

    else
    {
      v92 = sub_24F9285B8();
      (*(*(v92 - 8) + 8))(v95, v92);
      result = (v47)(v89, v48);
      v45 |= 0x8000uLL;
    }

    a3 = v96;
  }

  *a3 = v45;
  return result;
}

uint64_t sub_24F00F920()
{
  sub_24F00EC48(*v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
  sub_24E907170();
  v1 = sub_24F92AF68();

  return v1;
}

unint64_t sub_24F00F9AC()
{
  result = qword_27F236FF0;
  if (!qword_27F236FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FF0);
  }

  return result;
}

unint64_t sub_24F00FA04()
{
  result = qword_27F236FF8;
  if (!qword_27F236FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F236FF8);
  }

  return result;
}

unint64_t sub_24F00FA58(uint64_t a1)
{
  *(a1 + 8) = sub_24F00FA88();
  result = sub_24F00FADC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F00FA88()
{
  result = qword_27F237000;
  if (!qword_27F237000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237000);
  }

  return result;
}

unint64_t sub_24F00FADC()
{
  result = qword_27F237008;
  if (!qword_27F237008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237008);
  }

  return result;
}

unint64_t sub_24F00FB34()
{
  result = qword_27F237010;
  if (!qword_27F237010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237010);
  }

  return result;
}

unint64_t sub_24F00FB8C()
{
  result = qword_27F237018;
  if (!qword_27F237018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237018);
  }

  return result;
}

uint64_t ArcadeShowcase.__allocating_init(id:unsubscribedAction:unsubscribedDescription:subscribedAction:subscribedDescription:iconArtworks:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a2;
  v37 = a3;
  v35 = a10;
  v38 = a9;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  sub_24E60169C(a1, &v41, &qword_27F235830);
  if (*(&v42 + 1))
  {
    v21 = v42;
    *(v20 + 80) = v41;
    *(v20 + 96) = v21;
    *(v20 + 112) = v43;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v33 = a4;
    v34 = a5;
    v23 = a6;
    v24 = a8;
    v25 = v22;
    v26 = a7;
    v28 = v27;
    (*(v17 + 8))(v19, v16);
    v39 = v25;
    v40 = v28;
    a8 = v24;
    a6 = v23;
    a7 = v26;
    a4 = v33;
    a5 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(v35, v20 + OBJC_IVAR____TtC12GameStoreKit14ArcadeShowcase_impressionMetrics);
  v29 = v37;
  *(v20 + 16) = v36;
  *(v20 + 24) = v29;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v30 = v38;
  *(v20 + 64) = a8;
  *(v20 + 72) = v30;
  return v20;
}

uint64_t ArcadeShowcase.init(id:unsubscribedAction:unsubscribedDescription:subscribedAction:subscribedDescription:iconArtworks:offerDisplayProperties:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v37 = a2;
  v38 = a3;
  v36 = a10;
  v39 = a9;
  v18 = sub_24F91F6B8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v42, &qword_27F235830);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v34 = a4;
    v35 = a5;
    v23 = a6;
    v24 = a8;
    v25 = v22;
    v26 = a7;
    v28 = v27;
    (*(v19 + 8))(v21, v18);
    v40 = v25;
    v41 = v28;
    a8 = v24;
    a6 = v23;
    a7 = v26;
    a4 = v34;
    a5 = v35;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v29 = v46;
  *(v11 + 80) = v45;
  *(v11 + 96) = v29;
  *(v11 + 112) = v47;
  sub_24E65E0D4(v36, v11 + OBJC_IVAR____TtC12GameStoreKit14ArcadeShowcase_impressionMetrics);
  v30 = v38;
  *(v11 + 16) = v37;
  *(v11 + 24) = v30;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;
  *(v11 + 48) = a6;
  *(v11 + 56) = a7;
  v31 = v39;
  *(v11 + 64) = a8;
  *(v11 + 72) = v31;
  return v11;
}

uint64_t sub_24F01000C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork();
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24F011270(&qword_27F225B18, type metadata accessor for ImpressionableArtwork);
  return sub_24F929548();
}

uint64_t ArcadeShowcase.unsubscribedDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ArcadeShowcase.subscribedDescription.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *sub_24F0102AC()
{
  result = *(v0 + 64);
  if (result)
  {
    return sub_24E8E8794(result);
  }

  return result;
}

uint64_t ArcadeShowcase.deinit()
{

  sub_24E6585F8(v0 + 80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14ArcadeShowcase_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t ArcadeShowcase.__deallocating_deinit()
{
  ArcadeShowcase.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F0103A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24F010430(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *sub_24F0103D0()
{
  result = *(*v0 + 64);
  if (result)
  {
    return sub_24E8E8794(result);
  }

  return result;
}

uint64_t sub_24F010430(char *a1, uint64_t a2)
{
  v109 = a2;
  v90 = sub_24F91F6B8();
  v98 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v4 - 8);
  v93 = v88 - v5;
  v6 = sub_24F9285B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v116 = v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v88 - v10;
  v12 = sub_24F928388();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x28223BE20](v12);
  v97 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v96 = v88 - v15;
  MEMORY[0x28223BE20](v16);
  v95 = v88 - v17;
  MEMORY[0x28223BE20](v18);
  v91 = v88 - v19;
  MEMORY[0x28223BE20](v20);
  v100 = v88 - v21;
  MEMORY[0x28223BE20](v22);
  v101 = v88 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v88 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v27 - 8);
  v99 = v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v88 - v30;
  sub_24F929608();
  sub_24F928398();
  v106 = v7;
  v32 = v7 + 16;
  v33 = *(v7 + 16);
  v34 = v11;
  v35 = v11;
  v36 = v109;
  v33(v35, v109, v6);
  v107 = v31;
  v92 = v26;
  v94 = v34;
  sub_24F929548();
  v37 = v116;
  v108 = v6;
  v33(v116, v36, v6);
  type metadata accessor for Action();
  v38 = v101;
  v104 = a1;
  sub_24F928398();
  v39 = v38;
  v40 = v105;
  v41 = static Action.makeInstance(byDeserializing:using:)(v38, v37);
  if (v40)
  {
    v42 = *(v106 + 8);
    v43 = v108;
    v42(v109, v108);
    v44 = v103;
    v45 = *(v102 + 8);
    v45(v104, v103);
    v45(v39, v44);
    v46 = v116;
    sub_24E601704(v107, &qword_27F213E68);
    v42(v46, v43);
  }

  else
  {
    v88[0] = v33;
    v88[1] = v32;
    v105 = v41;
    v47 = *(v102 + 8);
    v48 = v103;
    v47(v38, v103);
    v49 = v100;
    v50 = v104;
    sub_24F928398();
    v51 = v116;
    v101 = static Action.makeInstance(byDeserializing:using:)(v49, v116);
    v102 = 0;
    v47(v100, v48);
    v53 = v91;
    sub_24F928398();
    v54 = v93;
    sub_24F9282B8();
    v47(v53, v48);
    v55 = sub_24F92AC28();
    v56 = *(v55 - 8);
    v57 = (*(v56 + 48))(v54, 1, v55);
    if (v57 == 1)
    {
      sub_24E601704(v54, &qword_27F2213B0);
      v100 = 0;
    }

    else
    {
      MEMORY[0x28223BE20](v57);
      v88[-2] = v116;
      type metadata accessor for ImpressionableArtwork();
      v58 = v102;
      v100 = sub_24F92ABB8();
      v102 = v58;
      v51 = v116;
      (*(v56 + 8))(v54, v55);
    }

    v59 = v98;
    type metadata accessor for OfferDisplayProperties();
    sub_24F928398();
    (v88[0])(v94, v51, v108);
    sub_24F011270(&qword_27F225B10, type metadata accessor for OfferDisplayProperties);
    sub_24F929548();
    v104 = v115[0];
    v60 = v95;
    sub_24F928398();
    v61 = sub_24F928348();
    if (v62)
    {
      *&v112 = v61;
      *(&v112 + 1) = v62;
      sub_24F92C7F8();
      v47(v60, v48);
      v63 = v47;
    }

    else
    {
      v63 = v47;
      v64 = v89;
      sub_24F91F6A8();
      v65 = sub_24F91F668();
      v67 = v66;
      (*(v59 + 8))(v64, v90);
      *&v112 = v65;
      *(&v112 + 1) = v67;
      sub_24F92C7F8();
      v63(v60, v48);
    }

    v68 = v97;
    v69 = v96;
    sub_24F928398();
    v103 = sub_24F928348();
    v97 = v70;
    v63(v69, v48);
    v71 = v50;
    sub_24F928398();
    v96 = sub_24F928348();
    v95 = v72;
    v73 = v48;
    v63(v68, v48);
    sub_24E60169C(v107, v99, &qword_27F213E68);
    type metadata accessor for ArcadeShowcase();
    v39 = swift_allocObject();
    sub_24E60169C(v115, &v112, &qword_27F235830);
    v74 = v109;
    v75 = v106;
    if (*(&v113 + 1))
    {
      v76 = v113;
      *(v39 + 80) = v112;
      *(v39 + 96) = v76;
      *(v39 + 112) = v114;
    }

    else
    {
      v77 = v89;
      sub_24F91F6A8();
      v78 = sub_24F91F668();
      v80 = v79;
      (*(v98 + 8))(v77, v90);
      v110 = v78;
      v111 = v80;
      v75 = v106;
      v74 = v109;
      sub_24F92C7F8();
      sub_24E601704(&v112, &qword_27F235830);
    }

    v81 = *(v75 + 8);
    v82 = v74;
    v83 = v108;
    v81(v82, v108);
    v63(v71, v73);
    sub_24E601704(v115, &qword_27F235830);
    sub_24E601704(v107, &qword_27F213E68);
    sub_24E65E0D4(v99, v39 + OBJC_IVAR____TtC12GameStoreKit14ArcadeShowcase_impressionMetrics);
    v84 = v103;
    *(v39 + 16) = v105;
    *(v39 + 24) = v84;
    v85 = v101;
    *(v39 + 32) = v97;
    *(v39 + 40) = v85;
    v86 = v95;
    *(v39 + 48) = v96;
    *(v39 + 56) = v86;
    v87 = v104;
    *(v39 + 64) = v100;
    *(v39 + 72) = v87;
    v81(v116, v83);
  }

  return v39;
}

uint64_t type metadata accessor for ArcadeShowcase()
{
  result = qword_27F237028;
  if (!qword_27F237028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F0110B0(uint64_t a1)
{
  result = sub_24F011270(&qword_27F232B20, type metadata accessor for ArcadeShowcase);
  *(a1 + 8) = result;
  return result;
}

void sub_24F011110()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F011270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E615E00(a1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_24E601704(&v39, &qword_27F226858);
    return (*(a4 + 40))(0, a3, a4);
  }

  sub_24E612C80(&v39, v42);
  sub_24E615E00(a1, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237038);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_24E601704(v37, &qword_27F237040);
    goto LABEL_12;
  }

  v32 = a2;
  sub_24E612C80(v37, &v39);
  v8 = *(&v40 + 1);
  v9 = v41;
  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v10 = (*(v9 + 8))(v8, v9);
  if (!*(v10 + 16) || (sub_24F92D068(), sub_24F92B218(), v11 = sub_24F92D0B8(), v12 = -1 << *(v10 + 32), v13 = v11 & ~v12, ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
  {
LABEL_9:

    __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v42);
    return (*(a4 + 40))(0, a3, a4);
  }

  v14 = ~v12;
  while (*(*(v10 + 48) + v13) != 1)
  {
    v15 = sub_24F92CE08();

    if (v15)
    {
      goto LABEL_16;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_16:
  v17 = v32;

  v18 = (*(a4 + 32))(a3, a4);
  if (v18)
  {
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = (*(a4 + 56))(a3, a4);
    (*(a4 + 64))(&v34, a3, a4);
    v37[0] = v34;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = (*(AssociatedConformanceWitness + 8))(v20, v37, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(a4 + 40))(v22, a3, a4);
  }

  type metadata accessor for GameCenter();
  sub_24F928FD8();
  sub_24F92A758();
  v23 = v34;
  v33 = v34;
  v24 = v43;
  v25 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v25 + 8))(v37, v24, v25);
  v26 = v37[0];
  v27 = sub_24E74EC40();
  v28 = sub_24F92BEF8();
  v35 = v27;
  v36 = MEMORY[0x277D225C0];
  *&v34 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C38);
  sub_24F92A9E8();
  sub_24F0122E4(v26, *(&v26 + 1), v28, *(v23 + OBJC_IVAR____TtC12GameStoreKit10GameCenter_cache));
  swift_retain_n();
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  v30[2] = a3;
  v30[3] = a4;
  v30[4] = v17;
  v30[5] = v29;

  v31 = sub_24F92BEF8();
  v35 = v27;
  v36 = MEMORY[0x277D225C0];
  *&v34 = v31;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(&v34);
  __swift_destroy_boxed_opaque_existential_1(&v39);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t sub_24F011894(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  type metadata accessor for ArtworkLoader();
  sub_24F928FD8();
  sub_24F92A758();
  v24 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_23:
    v6 = sub_24F92C738();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x253052270](v7, v5);
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v9 = *(v5 + 8 * v7 + 32);

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    v11 = *(v9 + 72);

    ++v7;
    if (v11)
    {
      MEMORY[0x253050F00](v12);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v8 = v24;
      v7 = v10;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = (*(a5 + 32))(a4);

    if (v15)
    {
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v17 = *(AssociatedConformanceWitness + 16);
      v18 = swift_checkMetadataState();
      v17(v8, v25, v18, AssociatedConformanceWitness);
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    (*(*(a5 + 8) + 24))(a4);
  }
}

uint64_t sub_24F011B6C()
{
  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v0 = sub_24F92AAE8();
  __swift_project_value_buffer(v0, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E601704(v4, &qword_27F2129B0);
  sub_24F92A5A8();
}

Swift::Void __swiftcall AvatarShowcaseDisplaying.unapply()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 32))();
  if (v4)
  {
    v5 = v4;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = *(AssociatedConformanceWitness + 24);
    v8 = swift_checkMetadataState();
    v7(v8, AssociatedConformanceWitness);
  }

  v9 = *(v2 + 40);

  v9(0, v3, v2);
}

Swift::Void __swiftcall AvatarShowcaseDisplaying.placeAvatarShowcase()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = *(v1 + 32);
  v7 = v6();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  [v7 measurementsWithFitting:v3 in:{1.79769313e308, 1.79769313e308}];
  v10 = v9;
  v12 = v11;

  (*(v4 + 80))(v5, v4);
  (*(v4 + 72))(v5, v4);
  sub_24F92C1C8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = (*(v4 + 96))(v5, v4);
  v22 = [v3 traitCollection];
  v23 = sub_24F92BF88();

  if (v23)
  {
    if (v21 <= 3)
    {
      if (v21 != 1)
      {
        if (v21 != 2)
        {
          goto LABEL_17;
        }

        goto LABEL_19;
      }

      goto LABEL_10;
    }

    if (v21 != 4)
    {
      if (v21 != 8)
      {
        goto LABEL_17;
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

  if (v21 > 3)
  {
    if (v21 == 4)
    {
LABEL_21:
      v34.origin.x = v14;
      v34.origin.y = v16;
      v34.size.width = v18;
      v34.size.height = v20;
      MinX = CGRectGetMinX(v34);
      goto LABEL_22;
    }

    if (v21 == 8)
    {
LABEL_16:
      v31.origin.x = v14;
      v31.origin.y = v16;
      v31.size.width = v18;
      v31.size.height = v20;
      MinX = CGRectGetMaxX(v31) - v10;
LABEL_22:
      v35.origin.x = v14;
      v35.origin.y = v16;
      v35.size.width = v18;
      v35.size.height = v20;
      MinY = CGRectGetMaxY(v35) - v12;
      goto LABEL_23;
    }
  }

  else
  {
    if (v21 == 1)
    {
LABEL_19:
      v32.origin.x = v14;
      v32.origin.y = v16;
      v32.size.width = v18;
      v32.size.height = v20;
      MinX = CGRectGetMinX(v32);
      goto LABEL_20;
    }

    if (v21 == 2)
    {
LABEL_10:
      v30.origin.x = v14;
      v30.origin.y = v16;
      v30.size.width = v18;
      v30.size.height = v20;
      MinX = CGRectGetMaxX(v30) - v10;
LABEL_20:
      v33.origin.x = v14;
      v33.origin.y = v16;
      v33.size.width = v18;
      v33.size.height = v20;
      MinY = CGRectGetMinY(v33);
LABEL_23:
      v27 = (v6)(v5, v4);
      if (!v27)
      {
        return;
      }

      v28 = v27;
      [v27 setFrame_];
      goto LABEL_25;
    }
  }

LABEL_17:
  v25 = (v6)(v5, v4);
  if (!v25)
  {
    return;
  }

  v28 = v25;
  [v25 setHidden_];
LABEL_25:
}

uint64_t sub_24F012130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v15[3] = sub_24F9298F8();
  v15[4] = MEMORY[0x277D22078];
  v15[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C38);

  v9 = sub_24F92A9E8();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = v9;
  v11[6] = v8;
  sub_24E615E00(v15, v14);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = sub_24F012698;
  v12[4] = v11;
  sub_24E612C80(v14, (v12 + 5));
  v12[10] = v8;

  sub_24EEABF30(a3, sub_24F0126A0, v12);

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v9;
}

uint64_t sub_24F0122E4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v8 = *a4;
  v16[3] = sub_24E74EC40();
  v16[4] = MEMORY[0x277D225C0];
  v16[0] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232C38);
  v9 = a3;
  v10 = sub_24F92A9E8();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = v10;
  v12[6] = v8;
  sub_24E615E00(v16, v15);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = sub_24F01275C;
  v13[4] = v12;
  sub_24E612C80(v15, (v13 + 5));
  v13[10] = v8;

  sub_24EEACD50(v9, sub_24F012764, v13);

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v10;
}

uint64_t sub_24F01249C()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24F0124D4()
{

  return swift_deallocObject();
}

uint64_t sub_24F01265C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm_3()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_15Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t FramedVideo.__allocating_init(id:video:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v26 = a7;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_video) = a2;
  if (a2)
  {
  }

  else
  {
    v16 = 0;
  }

  *(v15 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_artwork) = v16;
  sub_24E60169C(a1, v36, &qword_27F235830);
  sub_24E60169C(a8, v15 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);
  v17 = v15 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  sub_24E60169C(v36, &v33, &qword_27F235830);
  if (*(&v34 + 1))
  {
    v18 = v34;
    *v17 = v33;
    *(v17 + 16) = v18;
    *(v17 + 32) = v35;
  }

  else
  {

    sub_24F91F6A8();
    v19 = sub_24F91F668();
    v21 = v20;
    (*(v12 + 8))(v14, v11);
    v31 = v19;
    v32 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830);
  }

  sub_24E601704(a8, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v36, &qword_27F235830);
  *(v15 + 17) = v27 & 1;
  *(v15 + 16) = v28 & 1;
  v22 = v30;
  *(v15 + 24) = v29;
  *(v15 + 32) = v22;
  v23 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v24 = sub_24F91F008();
  (*(*(v24 - 8) + 56))(v15 + v23, 1, 1, v24);
  return v15;
}

uint64_t FramedVideo.init(id:video:isFullWidth:hasRoundedCorners:ordinal:caption:impressionMetrics:)(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v9 = v8;
  v31 = a7;
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v30 - v18;
  *(v9 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_video) = a2;
  if (a2)
  {
  }

  else
  {
    v20 = 0;
  }

  *(v9 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_artwork) = v20;
  sub_24E60169C(a1, v44, &qword_27F235830);
  sub_24E60169C(a8, v19, &qword_27F213E68);
  sub_24E60169C(v44, &v38, &qword_27F235830);
  if (*(&v39 + 1))
  {
    v41 = v38;
    v42 = v39;
    v43 = v40;
  }

  else
  {

    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v23 = v22;
    (*(v14 + 8))(v16, v13);
    v36 = v21;
    v37 = v23;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830);
  }

  sub_24E601704(a8, &qword_27F213E68);
  sub_24E601704(a1, &qword_27F235830);
  sub_24E601704(v44, &qword_27F235830);
  v24 = v9 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id;
  *(v24 + 32) = v43;
  v25 = v42;
  *v24 = v41;
  *(v24 + 16) = v25;
  sub_24E65E0D4(v19, v9 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics);
  *(v9 + 17) = v32 & 1;
  *(v9 + 16) = v33 & 1;
  v26 = v35;
  *(v9 + 24) = v34;
  *(v9 + 32) = v26;
  v27 = OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption;
  v28 = sub_24F91F008();
  (*(*(v28 - 8) + 56))(v9 + v27, 1, 1, v28);
  return v9;
}

uint64_t FramedVideo.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v27 = sub_24F928388();
  v10 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  type metadata accessor for Video();
  v33 = a1;
  sub_24F928398();
  v30 = v5;
  v31 = v4;
  v14 = *(v5 + 16);
  v32 = a2;
  v26 = v14;
  v14(v9, a2, v4);
  sub_24F0130BC();
  sub_24F929548();
  v15 = v28;
  v16 = v34;
  *(v28 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_video) = v34;
  if (v16)
  {
  }

  else
  {
    v17 = 0;
  }

  *(v15 + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_artwork) = v17;
  v18 = v33;
  v19 = v27;
  (*(v10 + 16))(v12, v33, v27);
  v20 = v29;
  v21 = v31;
  v22 = v32;
  v26(v29, v32, v31);
  v23 = FramedMedia.init(deserializing:using:)(v12, v20);
  (*(v30 + 8))(v22, v21);
  (*(v10 + 8))(v18, v19);
  return v23;
}

unint64_t sub_24F0130BC()
{
  result = qword_27F221590;
  if (!qword_27F221590)
  {
    type metadata accessor for Video();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F221590);
  }

  return result;
}

uint64_t sub_24F013164()
{
}

uint64_t FramedVideo.deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);

  return v0;
}

uint64_t FramedVideo.__deallocating_deinit()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, &qword_27F215340);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FramedVideo()
{
  result = qword_27F237048;
  if (!qword_27F237048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id Paragraph.collapsedText.getter()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    v4 = sub_24EFED3B0();
    v5 = *(v0 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id Paragraph.text.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    v4 = sub_24EFED3B0();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t Paragraph.__allocating_init(id:text:wantsCollapsedNewlines:alignment:style:isCollapsed:suppressVerticalMargins:impressionMetrics:)(uint64_t a1, void *a2, char a3, unsigned __int8 *a4, char *a5, int a6, int a7, uint64_t a8)
{
  v46 = a6;
  v47 = a7;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v45 = *a4;
  v19 = *a5;
  *(v18 + 24) = 0;
  *(v18 + 40) = 0;
  sub_24E60169C(a1, &v50, &qword_27F235830);
  if (*(&v51 + 1))
  {
    v20 = v51;
    *(v18 + 56) = v50;
    *(v18 + 72) = v20;
    *(v18 + 88) = v52;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v44 = a2;
    v22 = a3;
    v23 = a8;
    v24 = a1;
    v25 = v19;
    v27 = v26;
    (*(v15 + 8))(v17, v14);
    v48 = v21;
    v49 = v27;
    v19 = v25;
    a1 = v24;
    a8 = v23;
    a3 = v22;
    a2 = v44;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830);
  }

  sub_24E60169C(a8, v18 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68);
  swift_beginAccess();
  v28 = byte_27F236A29;
  v29 = type metadata accessor for LanguageAwareString();
  v30 = objc_allocWithZone(v29);
  v31 = a2;
  v32 = sub_24EFF0E44(v31, 0, v28);

  *(v18 + 16) = v32;
  if (a3)
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v34 = [v33 length];
    v35 = [v33 mutableString];
    v36 = sub_24F92B098();
    v44 = a1;
    v37 = v19;
    v38 = v36;
    v39 = sub_24F92B098();
    [v35 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v34}];

    v19 = v37;
    LOBYTE(v34) = byte_27F236A29;
    v40 = objc_allocWithZone(v29);
    v41 = sub_24EFF0E44(v33, 0, v34);

    sub_24E601704(a8, &qword_27F213E68);
    sub_24E601704(v44, &qword_27F235830);
  }

  else
  {

    sub_24E601704(a8, &qword_27F213E68);
    sub_24E601704(a1, &qword_27F235830);
    v41 = v32;
  }

  *(v18 + 32) = v41;
  v42 = v46;
  *(v18 + 48) = v45;
  *(v18 + 49) = v19;
  *(v18 + 50) = v42 & 1;
  *(v18 + 51) = v47 & 1;
  return v18;
}

void sub_24F0138A8()
{
  v0 = *MEMORY[0x277D76838];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 traitCollectionWithPreferredContentSizeCategory_];

  qword_27F237058 = v3;
}

void Paragraph.Style.nqmlConfiguration.getter(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F91F7C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v2;
  sub_24F91F758();
  sub_24F91F708();
  v9 = sub_24F92B358();

  if (v9 & 1) != 0 || (sub_24F91F708(), v10 = sub_24F92B358(), , (v10))
  {
    (*(v5 + 8))(v7, v4);
LABEL_4:
    v19[14] = v8;
    v11 = sub_24F014AAC();
    goto LABEL_5;
  }

  sub_24F91F708();
  v18 = sub_24F92B358();

  (*(v5 + 8))(v7, v4);
  if (v18)
  {
    goto LABEL_4;
  }

  v19[15] = v8;
  v11 = sub_24F014B34();
LABEL_5:
  v12 = v11;
  v13 = objc_opt_self();
  v14 = qword_27F210E80;
  v15 = v12;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = [v13 preferredFontForTextStyle:v15 compatibleWithTraitCollection:qword_27F237058];

  *a1 = 10;
  a1[1] = 0xE100000000000000;
  a1[2] = v16;
  v17 = v16;
  a1[3] = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  a1[4] = 161644770;
  a1[5] = 0xA400000000000000;
  a1[6] = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  a1[9] = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  a1[7] = 606245;
  a1[8] = 0xE300000000000000;
}

GameStoreKit::Paragraph::Alignment_optional __swiftcall Paragraph.Alignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Paragraph.Alignment.rawValue.getter()
{
  v1 = *v0;
  v2 = 1952867692;
  v3 = 0x7468676972;
  v4 = 0x656966697473756ALL;
  if (v1 != 3)
  {
    v4 = 0x657A696C61636F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7265746E6563;
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

uint64_t sub_24F013C7C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F013D58()
{
  sub_24F92B218();
}

uint64_t sub_24F013E20()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F013F04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952867692;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  v7 = 0x656966697473756ALL;
  if (v2 != 3)
  {
    v7 = 0x657A696C61636F6CLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE900000000000064;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

id Paragraph.Style.textStyle.getter()
{
  v0 = sub_24F014B34();

  return v0;
}

id Paragraph.Style.smallerTextStyle.getter()
{
  v0 = sub_24F014AAC();

  return v0;
}

GameStoreKit::Paragraph::Style_optional __swiftcall Paragraph.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Paragraph.Style.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x656C6369747261;
    if (v1 != 1)
    {
      v5 = 0x6E6F6974706163;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x647261646E617473;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F014154()
{
  sub_24F92B218();
}

void sub_24F014288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE800000000000000;
    v9 = 0x656C6369747261;
    if (v2 != 1)
    {
      v9 = 0x6E6F6974706163;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0x647261646E617473;
    }

    if (!v10)
    {
      v8 = 0xE700000000000000;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x800000024FA43CA0;
    v4 = 0xD00000000000001BLL;
    if (v2 != 5)
    {
      v4 = 0xD000000000000011;
      v3 = 0x800000024FA43D70;
    }

    v5 = 0xD000000000000010;
    v6 = 0x800000024FA43D50;
    if (v2 != 3)
    {
      v5 = 0xD000000000000012;
      v6 = 0x800000024FA43BB0;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t Paragraph.init(id:text:wantsCollapsedNewlines:alignment:style:isCollapsed:suppressVerticalMargins:impressionMetrics:)(uint64_t a1, void *a2, char a3, unsigned __int8 *a4, char *a5, int a6, int a7, uint64_t a8)
{
  v9 = v8;
  v46 = a6;
  v47 = a7;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *a4;
  v20 = *a5;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  sub_24E60169C(a1, &v50, &qword_27F235830);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v44 = a2;
    v22 = a3;
    v23 = a8;
    v24 = a1;
    v25 = v20;
    v27 = v26;
    (*(v17 + 8))(v19, v16);
    v48 = v21;
    v49 = v27;
    v20 = v25;
    a1 = v24;
    a8 = v23;
    a3 = v22;
    a2 = v44;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830);
  }

  v28 = v54;
  *(v9 + 56) = v53;
  *(v9 + 72) = v28;
  *(v9 + 88) = v55;
  sub_24E60169C(a8, v9 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68);
  swift_beginAccess();
  v29 = byte_27F236A29;
  v30 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v30);
  v31 = a2;
  v32 = sub_24EFF0E44(v31, 0, v29);

  *(v9 + 16) = v32;
  if (a3)
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v34 = [v33 length];
    v35 = [v33 mutableString];
    v36 = sub_24F92B098();
    v44 = a1;
    v37 = v20;
    v38 = v36;
    v39 = sub_24F92B098();
    [v35 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v34}];

    v20 = v37;
    LOBYTE(v34) = byte_27F236A29;
    v40 = objc_allocWithZone(v30);
    v41 = sub_24EFF0E44(v33, 0, v34);

    sub_24E601704(a8, &qword_27F213E68);
    sub_24E601704(v44, &qword_27F235830);
  }

  else
  {

    sub_24E601704(a8, &qword_27F213E68);
    sub_24E601704(a1, &qword_27F235830);
    v41 = *(v9 + 16);
  }

  *(v9 + 32) = v41;
  v42 = v46;
  *(v9 + 48) = v45;
  *(v9 + 49) = v20;
  *(v9 + 50) = v42 & 1;
  *(v9 + 51) = v47 & 1;
  return v9;
}

void Paragraph.text.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void (*Paragraph.text.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Paragraph.text.getter();
  return sub_24ED29BC4;
}

void Paragraph.collapsedText.setter(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void (*Paragraph.collapsedText.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = Paragraph.collapsedText.getter();
  return sub_24ED29C8C;
}

uint64_t Paragraph.isCollapsed.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 50) = a1;
  return result;
}

double Paragraph.clickSender.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id *Paragraph.deinit()
{
  sub_24E6585F8((v0 + 7));
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68);
  return v0;
}

uint64_t Paragraph.__deallocating_deinit()
{
  sub_24E6585F8((v0 + 7));
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68);

  return swift_deallocClassInstance();
}

uint64_t sub_24F014A44@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_24F0151C0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F014AAC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (!*v0)
    {
      goto LABEL_10;
    }

    if (v1 != 1)
    {
      return sub_24F014AAC();
    }

LABEL_9:
    v2 = MEMORY[0x277D76918];
    return *v2;
  }

  if (*v0 > 4u)
  {
    if (v1 != 5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v1 == 3)
  {
LABEL_10:
    v2 = MEMORY[0x277D769D0];
    return *v2;
  }

  v2 = MEMORY[0x277D76968];
  return *v2;
}

uint64_t sub_24F014B34()
{
  v1 = *v0;
  if (v1 > 2)
  {
    if (*v0 > 4u)
    {
      v2 = MEMORY[0x277D76918];
      return *v2;
    }

    if (v1 != 3)
    {
      v2 = MEMORY[0x277D76968];
      return *v2;
    }

LABEL_8:
    v2 = MEMORY[0x277D769D0];
    return *v2;
  }

  if (!*v0)
  {
    goto LABEL_8;
  }

  if (v1 != 1)
  {
    return sub_24F014B34();
  }

  v2 = MEMORY[0x277D76A28];
  return *v2;
}

id _s12GameStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, _BYTE *a4)
{
  v8 = sub_24F91EE98();
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F91EEA8();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - v16;
  if (a2)
  {
    v40 = v10;
    v41 = v8;
    v18 = a1;
    v19 = *a3;
    LOBYTE(v47[0]) = *a4;
    v45 = a2;

    Paragraph.Style.nqmlConfiguration.getter(&v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221880);
    inited = swift_initStackObject();
    v21 = MEMORY[0x277D74118];
    *(inited + 16) = xmmword_24F93DE60;
    v22 = *v21;
    *(inited + 32) = *v21;
    v23 = *(&v49 + 1);
    *(inited + 64) = sub_24E69A5C4(0, &qword_27F221898);
    *(inited + 40) = v23;
    v24 = v22;
    v25 = v23;
    sub_24E608940(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F221890);
    if (v19)
    {
      if (v19 == 1)
      {

        v47[2] = v50;
        v47[3] = v51;
        v47[4] = v52;
        v47[0] = v48;
        v47[1] = v49;
        v26 = objc_allocWithZone(type metadata accessor for NqmlStringGenerator());
        sub_24E8EB83C(&v48, &v46);
        v27 = sub_24E9076BC(v18, v45, v47);
        [*&v27[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_parser] parse];
        v28 = OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator;
        v29 = [*&v27[OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_accumulator] mutableString];
        if (qword_27F210F48 != -1)
        {
          swift_once();
        }

        sub_24F0A8300(qword_27F39DBA8);

        v30 = *&v27[v28];
        v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v32 = v30;
        v33 = [v31 initWithAttributedString_];
        sub_24E951D6C(&v48);

        return v33;
      }

      sub_24E69A5C4(0, &qword_27F223430);
      v37 = sub_24F91F4A8();
      (*(*(v37 - 8) + 56))(v17, 1, 1, v37);
      (*(v42 + 104))(v13, *MEMORY[0x277CC8BB0], v43);
      (*(v44 + 104))(v40, *MEMORY[0x277CC8B98], v41);

      sub_24F91EEB8();
      sub_24F92BFC8();

      v33 = sub_24F92BFE8();
    }

    else
    {
      v36 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v38 = sub_24F92B098();

      type metadata accessor for Key(0);
      sub_24F015FD8(&qword_27F212318, type metadata accessor for Key);
      v39 = sub_24F92AE28();

      v33 = [v36 initWithString:v38 attributes:v39];
    }

    sub_24E951D6C(&v48);
    return v33;
  }

  v34 = objc_allocWithZone(MEMORY[0x277CCA898]);

  return [v34 init];
}

uint64_t sub_24F0151C0(char *a1, uint64_t a2)
{
  v78 = a2;
  v64 = sub_24F91F6B8();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v79 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v74 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - v9;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v67 = &v62 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v70 = &v62 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v62 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v62 - v22;
  sub_24F928398();
  v66 = sub_24F928348();
  v69 = v24;
  v27 = *(v12 + 8);
  v25 = v12 + 8;
  v26 = v27;
  v27(v23, v11);
  sub_24F928398();
  sub_24EA87AA4();
  sub_24F928208();
  v27(v23, v11);
  v65 = v84[0];
  sub_24F928398();
  sub_24F016020();
  sub_24F928208();
  v27(v23, v11);
  v85 = v84[0];
  sub_24F929608();
  sub_24F928398();
  (*(v75 + 16))(v79, v78, v76);
  v77 = v10;
  sub_24F929548();
  v79 = a1;
  sub_24F928398();
  v28 = sub_24F928348();
  if (v29)
  {
    *&v81 = v28;
    *(&v81 + 1) = v29;
  }

  else
  {
    v30 = v62;
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v33 = v32;
    (*(v63 + 8))(v30, v64);
    *&v81 = v31;
    *(&v81 + 1) = v33;
  }

  sub_24F92C7F8();
  v26(v21, v11);
  LOBYTE(v81) = v65;
  LOBYTE(v80[0]) = v85;
  v66 = _s12GameStoreKit9ParagraphC7prepare4text2of4withSo18NSAttributedStringCSSSg_AA10StyledTextC9MediaTypeOAC5StyleOtFZ_0(v66, v69, &v81, v80);

  v34 = v70;
  sub_24F928398();
  v35 = sub_24F928278();
  v26(v34, v11);
  v36 = (v35 == 2) | v35;
  sub_24F928398();
  sub_24F016074();
  sub_24F928208();
  v26(v23, v11);
  LODWORD(v70) = v86;
  v37 = v67;
  sub_24F928398();
  LODWORD(v69) = sub_24F928278();
  v26(v37, v11);
  v38 = v68;
  sub_24F928398();
  v39 = sub_24F928278();
  v26(v38, v11);
  v40 = v74;
  sub_24E60169C(v77, v74, &qword_27F213E68);
  type metadata accessor for Paragraph();
  v41 = swift_allocObject();
  *(v41 + 24) = 0;
  *(v41 + 40) = 0;
  sub_24E60169C(v84, &v81, &qword_27F235830);
  v72 = v26;
  v73 = v11;
  v71 = v25;
  if (*(&v82 + 1))
  {
    v42 = v82;
    *(v41 + 56) = v81;
    *(v41 + 72) = v42;
    *(v41 + 88) = v83;
  }

  else
  {
    v43 = v62;
    sub_24F91F6A8();
    v44 = sub_24F91F668();
    v46 = v45;
    (*(v63 + 8))(v43, v64);
    v80[0] = v44;
    v80[1] = v46;
    sub_24F92C7F8();
    sub_24E601704(&v81, &qword_27F235830);
  }

  sub_24E60169C(v40, v41 + OBJC_IVAR____TtC12GameStoreKit9Paragraph_impressionMetrics, &qword_27F213E68);
  swift_beginAccess();
  v47 = byte_27F236A29;
  v48 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v48);
  v49 = v66;
  v50 = sub_24EFF0E44(v49, 0, v47);

  *(v41 + 16) = v50;
  if (v36)
  {
    v51 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v52 = [v51 length];
    v53 = v39;
    v54 = [v51 mutableString];
    v55 = sub_24F92B098();
    v56 = sub_24F92B098();
    [v54 replaceOccurrencesOfString:v55 withString:v56 options:1024 range:{0, v52}];

    v39 = v53;
    LOBYTE(v52) = byte_27F236A29;
    v57 = objc_allocWithZone(v48);
    v58 = sub_24EFF0E44(v51, 0, v52);

    (*(v75 + 8))(v78, v76);
    v72(v79, v73);
    sub_24E601704(v74, &qword_27F213E68);
    sub_24E601704(v84, &qword_27F235830);
    sub_24E601704(v77, &qword_27F213E68);
  }

  else
  {

    (*(v75 + 8))(v78, v76);
    v72(v79, v73);
    sub_24E601704(v40, &qword_27F213E68);
    sub_24E601704(v84, &qword_27F235830);
    sub_24E601704(v77, &qword_27F213E68);
    v58 = v50;
  }

  *(v41 + 32) = v58;
  v59 = v69;
  v60 = v69 == 2;
  *(v41 + 48) = v70;
  *(v41 + 49) = v85;
  *(v41 + 50) = (v60 | v59) & 1;
  *(v41 + 51) = v39 & 1;
  return v41;
}

unint64_t sub_24F015C5C()
{
  result = qword_27F237060;
  if (!qword_27F237060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237060);
  }

  return result;
}

unint64_t sub_24F015CB4()
{
  result = qword_27F237068;
  if (!qword_27F237068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237068);
  }

  return result;
}

uint64_t type metadata accessor for Paragraph()
{
  result = qword_27F237078;
  if (!qword_27F237078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24F015D9C@<X0>(void *a1@<X8>)
{
  result = Paragraph.text.getter();
  *a1 = result;
  return result;
}

void sub_24F015DC8(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
  v3 = v2;
}

id sub_24F015E10@<X0>(void *a1@<X8>)
{
  result = Paragraph.collapsedText.getter();
  *a1 = result;
  return result;
}

void sub_24F015E3C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

void sub_24F015E8C()
{
  sub_24E61C938();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24F015FD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F016020()
{
  result = qword_27F237088;
  if (!qword_27F237088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237088);
  }

  return result;
}

unint64_t sub_24F016074()
{
  result = qword_27F237090;
  if (!qword_27F237090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237090);
  }

  return result;
}

uint64_t sub_24F016128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2370A8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = *(*(a1 + 16) + OBJC_IVAR____TtC12GameStoreKit11FramedVideo_video);
  if (v9)
  {
    v14 = v5;

    *v8 = sub_24F924C98();
    *(v8 + 1) = 0x4028000000000000;
    v8[16] = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2370B0);
    sub_24F0162CC(v9, a1, &v8[*(v10 + 44)]);

    sub_24E6009C8(v8, a2, &qword_27F2370A8);
    return (*(v14 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v12 = *(v5 + 56);

    return v12(a2, 1, 1, v4, v6);
  }
}

uint64_t sub_24F0162CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a2;
  v121 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v4 - 8);
  v118 = &v105 - v5;
  v122 = sub_24F91F008();
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v106 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v119 = &v105 - v8;
  v115 = sub_24F924B38();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v105 - v14;
  v16 = type metadata accessor for SwiftUIArtworkView(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD0);
  MEMORY[0x28223BE20](v107);
  v21 = &v105 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FD8);
  MEMORY[0x28223BE20](v22);
  v24 = &v105 - v23;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE0);
  v112 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v110 = &v105 - v25;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234FE8);
  MEMORY[0x28223BE20](v109);
  v117 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v108 = &v105 - v28;
  MEMORY[0x28223BE20](v29);
  v123 = &v105 - v30;
  v31 = *(a1 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
  v32 = v17[8];
  v33 = *MEMORY[0x277CE1010];
  v34 = sub_24F926E68();
  (*(*(v34 - 8) + 104))(&v19[v32], v33, v34);
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  *v19 = v31;
  v19[24] = 1;
  v35 = &v19[v17[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v35[16] = 1;
  v19[v17[10]] = 2;
  v19[v17[11]] = 0;

  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v36 = sub_24F922348();
  v37 = *(v36 - 8);
  (*(v37 + 56))(v15, 0, 1, v36);
  sub_24E60169C(v15, v12, &qword_27F214148);
  v38 = (*(v37 + 48))(v12, 1, v36);
  if (v38 == 1)
  {
    sub_24E601704(v15, &qword_27F214148);
    sub_24E601704(v12, &qword_27F214148);
    v39 = 0;
  }

  else
  {
    sub_24F9222E8();
    v39 = v40;
    sub_24E601704(v15, &qword_27F214148);
    (*(v37 + 8))(v12, v36);
  }

  sub_24E9D0D28(v19, v21);
  v41 = &v21[*(v107 + 36)];
  *v41 = v39;
  v41[8] = v38 == 1;
  v41[9] = 1;
  v42 = &v24[*(v22 + 36)];
  v43 = sub_24F924258();
  v44 = *MEMORY[0x277CE0118];
  v45 = v113;
  v46 = *(v113 + 104);
  v47 = v115;
  v46(&v42[*(v43 + 20)], v44, v115);
  __asm { FMOV            V0.2D, #22.0 }

  v107 = _Q0;
  *v42 = _Q0;
  *&v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  sub_24EF7AAD4(v21, v24);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v53 = sub_24F9248C8();
  __swift_project_value_buffer(v53, qword_27F39F078);
  sub_24EF7AB44();
  v54 = v110;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v24, &qword_27F234FD8);
  v55 = v111;
  v46(v111, v44, v47);
  v56 = v54;
  v124[3] = v43;
  v124[4] = sub_24F017064(&qword_27F212868, MEMORY[0x277CDFC08]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v124);
  (*(v45 + 16))(boxed_opaque_existential_1 + *(v43 + 20), v55, v47);
  *boxed_opaque_existential_1 = v107;
  (*(v45 + 8))(v55, v47);
  v58 = v108;
  sub_24E60169C(v124, v108, &qword_27F235000);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235008);
  v60 = v112;
  v61 = v54;
  v62 = v114;
  (*(v112 + 16))(v58 + v59[9], v61, v114);
  v63 = v58 + v59[10];
  *v63 = sub_24F923398() & 1;
  *(v63 + 8) = v64;
  *(v63 + 16) = v65 & 1;
  v66 = v58 + v59[11];
  *v66 = swift_getKeyPath();
  *(v66 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v67 = qword_27F24E488;
  v68 = sub_24F923398();
  v70 = v69;
  v72 = v71;
  v73 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F235010) + 36);
  *v73 = v67;
  *(v73 + 8) = v68 & 1;
  *(v73 + 16) = v70;
  *(v73 + 24) = v72 & 1;
  LOBYTE(v67) = sub_24F923398();
  v75 = v74;
  LOBYTE(v70) = v76;
  sub_24E601704(v124, &qword_27F235000);
  (*(v60 + 8))(v56, v62);
  v77 = v58 + *(v109 + 36);
  *v77 = v67 & 1;
  *(v77 + 8) = v75;
  *(v77 + 16) = v70 & 1;
  sub_24E6009C8(v58, v123, &qword_27F234FE8);
  v78 = v118;
  sub_24E60169C(*(v116 + 16) + OBJC_IVAR____TtC12GameStoreKit11FramedMedia_caption, v118, &qword_27F215340);
  v79 = v120;
  v80 = v122;
  if ((*(v120 + 48))(v78, 1, v122) == 1)
  {
    sub_24E601704(v78, &qword_27F215340);
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
  }

  else
  {
    v85 = v119;
    (*(v79 + 32))(v119, v78, v80);
    (*(v79 + 16))(v106, v85, v80);
    v86 = sub_24F925DF8();
    v88 = v87;
    v90 = v89;
    sub_24F925A18();
    v91 = sub_24F925C98();
    v93 = v92;
    v95 = v94;

    sub_24E600B40(v86, v88, v90 & 1);

    sub_24F926D38();
    v81 = sub_24F925C48();
    v82 = v96;
    v98 = v97;
    v84 = v99;

    sub_24E600B40(v91, v93, v95 & 1);

    (*(v79 + 8))(v119, v122);
    v83 = v98 & 1;
    sub_24E5FD138(v81, v82, v98 & 1);
  }

  v100 = v123;
  v101 = v117;
  sub_24E60169C(v123, v117, &qword_27F234FE8);
  v102 = v121;
  sub_24E60169C(v101, v121, &qword_27F234FE8);
  v103 = (v102 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2370B8) + 48));
  sub_24E65D2B4(v81, v82, v83, v84);
  sub_24E65D2F8(v81, v82, v83, v84);
  *v103 = v81;
  v103[1] = v82;
  v103[2] = v83;
  v103[3] = v84;
  sub_24E601704(v100, &qword_27F234FE8);
  sub_24E65D2F8(v81, v82, v83, v84);
  return sub_24E601704(v101, &qword_27F234FE8);
}

uint64_t sub_24F016F1C()
{
  sub_24E66D7A0();

  return sub_24F9218E8();
}

unint64_t sub_24F016F64()
{
  result = qword_27F237098;
  if (!qword_27F237098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237098);
  }

  return result;
}

uint64_t sub_24F017064(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F0170B8()
{
  result = qword_27F2370C0;
  if (!qword_27F2370C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2370C8);
    sub_24E602068(&qword_27F2370D0, &qword_27F2370A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2370C0);
  }

  return result;
}

uint64_t sub_24F01717C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F928818();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F0172B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F928818();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GSKOnboardingProfileCreationView()
{
  result = qword_27F2370D8;
  if (!qword_27F2370D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F017424()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    result = sub_24E6CAE80();
    if (v2 <= 0x3F)
    {
      result = sub_24F928FD8();
      if (v3 <= 0x3F)
      {
        result = sub_24F928818();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_24F017508@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v2 - 8);
  v97 = &v76 - v3;
  v98 = sub_24F929158();
  v96 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v95 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v5 - 8);
  v94 = &v76 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v76 - v9;
  v10 = sub_24F921338();
  v102 = *(v10 - 8);
  v103 = v10;
  MEMORY[0x28223BE20](v10);
  v91 = (&v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v101 = &v76 - v13;
  v14 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v19 = type metadata accessor for ProfileCreationView(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v92 = &v76 - v23;
  v24 = *(v1 + 1);
  v80 = *v1;
  v25 = *(v1 + 3);
  v79 = *(v1 + 2);
  v26 = *(v1 + 5);
  v78 = *(v1 + 4);
  v27 = *(v1 + 7);
  v77 = *(v1 + 6);
  v28 = type metadata accessor for GSKOnboardingProfileCreationView();
  sub_24E70D960(&v1[v28[8]], v18);
  sub_24E615E00(&v1[v28[9]], v108);
  v29 = &v1[v28[10]];
  v30 = v29[1];
  v109 = *v29;
  v110 = v30;
  v111 = 0;
  v86 = v28;
  v31 = v28[11];
  v93 = v1;
  v100 = *&v1[v31];
  v32 = v18;
  v33 = v19[12];
  *(v21 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v34 = v19[13];
  *(v21 + v34) = swift_getKeyPath();
  v35 = v25;
  v36 = v19;
  swift_storeEnumTagMultiPayload();
  v37 = v21 + v19[14];
  LOBYTE(v107) = 1;
  v87 = v24;

  v82 = v26;

  sub_24F926F28();
  v38 = *(&v104 + 1);
  *v37 = v104;
  *(v37 + 1) = v38;
  v39 = v21 + v19[15];
  LOBYTE(v107) = 0;
  sub_24F926F28();
  v40 = *(&v104 + 1);
  *v39 = v104;
  *(v39 + 1) = v40;
  v41 = v19[17];
  v107 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F237670);
  sub_24F926F28();
  *(v21 + v41) = v104;
  v42 = v101;
  v43 = *v32;
  v44 = v32[1];
  swift_bridgeObjectRetain_n();
  v84 = v43;
  v83 = v44;
  sub_24F920FC8();
  sub_24F921308();
  v45 = v87;
  *v21 = v80;
  v21[1] = v45;
  v21[2] = v79;
  v21[3] = v35;
  v46 = v82;
  v21[4] = v78;
  v21[5] = v46;
  v21[6] = v77;
  v21[7] = v27;
  sub_24E70D960(v32, v21 + v36[9]);
  sub_24F0181F0(v108, v21 + v36[10]);
  v87 = v32;
  v47 = v85;
  sub_24E70D960(v32, v85);
  type metadata accessor for LocalPlayerProvider();
  v48 = swift_allocObject();
  v82 = *(v102 + 16);
  v49 = v91;
  v50 = v103;
  v82(v91, v42, v103);
  v51 = sub_24F018404(v47, v49, 0, v48);
  v21[8] = v51;
  v21[9] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AF8);
  v52 = v42;
  v53 = *(*(sub_24F928188() - 8) + 72);
  v91 = v36;
  v81 = (2 * v53);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_24F9479A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0);
  v105 = v50;
  v106 = sub_24F018E30(&qword_27F2370E8, MEMORY[0x277D54FC0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v104);
  v82(boxed_opaque_existential_1, v52, v50);

  sub_24F928168();
  *&v104 = v51;
  v85 = v51;

  sub_24F928168();
  *&v104 = v84;
  *(&v104 + 1) = v83;
  v56 = v91;
  sub_24F928168();
  *&v104 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F750);
  sub_24EDA7A80();
  v57 = sub_24F928F98();

  *(v21 + *(v56 + 11)) = v57;
  type metadata accessor for ASKBagContract();
  sub_24F928F28();
  if (qword_27F210A50 != -1)
  {
    swift_once();
  }

  v58 = v88;
  sub_24F92A398();
  v59 = v90;
  sub_24F92A408();
  v60 = *(v89 + 8);
  v60(v58, v59);
  v61 = v104;
  if (qword_27F210A58 != -1)
  {
    swift_once();
  }

  sub_24F92A398();
  sub_24F92A408();
  v60(v58, v59);
  v62 = v104;
  type metadata accessor for NicknameModel();
  swift_allocObject();
  v63 = sub_24F54A3C0(v85, v61, v62);

  v64 = (v21 + *(v56 + 16));
  v107 = v63;

  sub_24F926F28();

  (*(v102 + 8))(v101, v103);
  sub_24F018C04(v108);
  sub_24F018C58(v87, type metadata accessor for Player);
  v65 = *(&v104 + 1);
  *v64 = v104;
  v64[1] = v65;
  v66 = v92;
  sub_24F018CB8(v21, v92, type metadata accessor for ProfileCreationView);
  v67 = v86[12];
  v68 = sub_24F928818();
  v69 = *(v68 - 8);
  v70 = v94;
  (*(v69 + 16))(v94, &v93[v67], v68);
  (*(v69 + 56))(v70, 0, 1, v68);
  v71 = v95;
  v72 = v98;
  sub_24F928F28();
  v73 = sub_24F921B48();
  v74 = v97;
  (*(*(v73 - 8) + 56))(v97, 1, 1, v73);
  sub_24F018E30(&qword_27F2370F0, type metadata accessor for ProfileCreationView);
  sub_24F925E58();
  sub_24E601704(v74, &qword_27F2157E8);
  (*(v96 + 8))(v71, v72);
  sub_24E601704(v70, &qword_27F2157F0);
  return sub_24F018C58(v66, type metadata accessor for ProfileCreationView);
}

uint64_t sub_24F01824C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F018E30(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__profileDidChangeToken;
  swift_beginAccess();
  return sub_24E94E17C(v3 + v4, a2);
}

uint64_t sub_24F018314(uint64_t a1)
{
  sub_24E94E17C(a1, v2);
  swift_getKeyPath();
  sub_24F018E30(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD78();

  return sub_24E601704(v2, &qword_27F2129B0);
}

uint64_t sub_24F018404(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v51 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v51);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - v15;
  v17 = sub_24F921338();
  v61[3] = v17;
  v61[4] = sub_24F018E30(&qword_27F2370E8, MEMORY[0x277D54FC0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
  (*(*(v17 - 8) + 32))(boxed_opaque_existential_1, a2, v17);
  *(a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact) = 0;
  v19 = (a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__profileDidChangeToken);
  *v19 = 0u;
  v19[1] = 0u;
  sub_24F91FDB8();
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v20 = sub_24F9220D8();
  __swift_project_value_buffer(v20, qword_27F39E8F8);
  v21 = sub_24F9220B8();
  v22 = sub_24F92BD98();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_24E5DD000, v21, v22, "Constructing LocalPlayerProvider", v23, 2u);
    MEMORY[0x2530542D0](v23, -1, -1);
  }

  sub_24E70D960(a1, a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current);
  sub_24E615E00(v61, a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_gameServices);
  *(a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_arcadeSubscription) = a3;
  v24 = *(a1 + 1);
  v25 = (a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  *v25 = *a1;
  v25[1] = v24;

  swift_bridgeObjectRetain_n();
  sub_24F920FC8();
  (*(v14 + 32))(a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef, v16, v13);
  v50 = type metadata accessor for Player(0);
  v26 = &a1[*(v50 + 28)];
  v27 = *v26;
  v28 = v26[1];
  v29 = (a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
  *v29 = v27;
  v29[1] = v28;
  v30 = *(a1 + 3);
  v48 = *(a1 + 2);
  v31 = type metadata accessor for PlayerAvatar.Overlay(0);
  v32 = *(*(v31 - 8) + 56);
  v32(v11, 1, 1, v31);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v49 = a1;
  v33 = v51;
  v34 = *(v51 + 20);
  v35 = v52;
  v32(&v52[v34], 1, 1, v31);
  v36 = v35 + *(v33 + 24);
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0;

  sub_24E61DA68(v56, v36, qword_27F21B590);
  *v35 = v48;
  v35[1] = v30;
  sub_24E61DA68(v11, v35 + v34, &qword_27F22DF80);
  sub_24E61DA68(&v58, v36, qword_27F21B590);
  sub_24F018CB8(v35, a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerAvatar, type metadata accessor for PlayerAvatar);
  v37 = *(v50 + 24);
  v38 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
  v39 = sub_24F9289E8();
  v40 = v49;
  (*(*(v39 - 8) + 16))(a4 + v38, &v49[v37], v39);
  v41 = sub_24E802CE0(&unk_2861C1070);
  v42 = swift_allocObject();
  swift_weakInit();
  *(&v59 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350);
  v43 = __swift_allocate_boxed_opaque_existential_1(&v58);
  v44 = MEMORY[0x28223BE20](v43);
  *(&v47 - 4) = v41;
  *(&v47 - 3) = &unk_24F9BE548;
  *(&v47 - 2) = v42;
  *(&v47 - 4) = 256;
  (*(v53 + 104))(v54, *MEMORY[0x277D85778], v55, v44);
  sub_24F92B928();

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v47 - 2) = a4;
  *(&v47 - 1) = &v58;
  *&v56[0] = a4;
  sub_24F018E30(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD78();

  sub_24E601704(&v58, &qword_27F2129B0);
  sub_24F91FD68();
  sub_24F018C58(v40, type metadata accessor for Player);
  __swift_destroy_boxed_opaque_existential_1(v61);
  return a4;
}

uint64_t sub_24F018C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F018CB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F018D20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F018D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_24E614970;

  return sub_24F5540D4(a1, a2, a3, v3);
}

uint64_t sub_24F018E30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F018E88()
{
  type metadata accessor for ProfileCreationView(255);
  sub_24F018E30(&qword_27F2370F0, type metadata accessor for ProfileCreationView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t static ArcadeSeeAllGamesRequestDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 == v4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (sub_24F92CE08() & 1) == 0 || ((v2 ^ v4))
  {
    return 0;
  }

LABEL_7:

  return sub_24EBAC8B0(v3, v5);
}

uint64_t sub_24F018FC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 == v4)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (sub_24F92CE08() & 1) == 0 || ((v2 ^ v4))
  {
    return 0;
  }

LABEL_7:

  return sub_24EBAC8B0(v3, v5);
}

GameStoreKit::VideoPlaybackChecks __swiftcall VideoPlaybackChecks.init()()
{
  *v0 = 0;
  *(v0 + 2) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoPlaybackChecks(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoPlaybackChecks(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

__n128 sub_24F0192B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237108);
  MEMORY[0x28223BE20](v54);
  v4 = &v52 - v3;
  v5 = sub_24F91F008();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LanguageAwareTextView();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237110);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237118);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - v16;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237120);
  MEMORY[0x28223BE20](v53);
  v19 = &v52 - v18;
  sub_24EA5B568(v7);
  v52 = *(a1 + 16);
  sub_24F0B8D84(v7, 0x20100uLL >> (8 * *(v52 + 48)), v10);
  v20 = sub_24F926D38();
  sub_24F0199CC(v10, v13);
  *&v13[*(v11 + 36)] = v20;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v21 = sub_24F9248C8();
  __swift_project_value_buffer(v21, qword_27F39F078);
  sub_24F019A30();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24F019B60(v13);
  v22 = *(sub_24F924258() + 20);
  v23 = *MEMORY[0x277CE0118];
  v24 = sub_24F924B38();
  (*(*(v24 - 8) + 104))(&v4[v22], v23, v24);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(sub_24F924248() + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v30 = sub_24F926D08();

  *&v4[*(v54 + 52)] = v30;
  sub_24F019BC8(v4, v19);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237138);
  (*(v15 + 16))(&v19[v31[9]], v17, v14);
  v32 = &v19[v31[10]];
  *v32 = sub_24F923398() & 1;
  *(v32 + 1) = v33;
  v32[16] = v34 & 1;
  v35 = &v19[v31[11]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v36 = qword_27F24E488;
  v37 = sub_24F923398();
  v39 = v38;
  v41 = v40;
  v42 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237140) + 36)];
  *v42 = v36;
  v42[8] = v37 & 1;
  *(v42 + 2) = v39;
  v42[24] = v41 & 1;
  LOBYTE(v36) = sub_24F923398();
  v44 = v43;
  LOBYTE(v39) = v45;
  sub_24F019C40(v4);
  (*(v15 + 8))(v17, v14);
  v46 = &v19[*(v53 + 36)];
  *v46 = v36 & 1;
  *(v46 + 1) = v44;
  v46[16] = v39 & 1;
  if (*(v52 + 48) <= 2u && *(v52 + 48))
  {
    v47 = v55;
    if (*(v52 + 48) == 1)
    {
      sub_24F927618();
    }

    else
    {
      sub_24F927638();
    }
  }

  else
  {
    sub_24F927628();
    v47 = v55;
  }

  sub_24F9242E8();
  sub_24F019CA8(v19, v47);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237148) + 36);
  v49 = v61;
  *(v48 + 64) = v60;
  *(v48 + 80) = v49;
  *(v48 + 96) = v62;
  v50 = v57;
  *v48 = v56;
  *(v48 + 16) = v50;
  result = v59;
  *(v48 + 32) = v58;
  *(v48 + 48) = result;
  return result;
}

uint64_t sub_24F019884()
{
  sub_24E66D5C4();

  return sub_24F9218E8();
}

unint64_t sub_24F0198CC()
{
  result = qword_27F2370F8;
  if (!qword_27F2370F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2370F8);
  }

  return result;
}

uint64_t sub_24F0199CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguageAwareTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F019A30()
{
  result = qword_27F237128;
  if (!qword_27F237128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237110);
    sub_24F019B18(&qword_27F237130, type metadata accessor for LanguageAwareTextView);
    sub_24E602068(&unk_27F2552A0, &qword_27F2171B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237128);
  }

  return result;
}

uint64_t sub_24F019B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F019B60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F019BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F019C40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F019CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F019D1C()
{
  result = qword_27F237150;
  if (!qword_27F237150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237148);
    sub_24F019DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237150);
  }

  return result;
}

unint64_t sub_24F019DA8()
{
  result = qword_27F237158;
  if (!qword_27F237158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237120);
    sub_24F019E34();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237158);
  }

  return result;
}

unint64_t sub_24F019E34()
{
  result = qword_27F237160;
  if (!qword_27F237160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237140);
    sub_24E602068(&qword_27F237168, &qword_27F237138);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237160);
  }

  return result;
}

uint64_t sub_24F019F18()
{
  sub_24F01AA8C();
  sub_24F924868();
  return v1;
}

double sub_24F019F54@<D0>(_OWORD *a1@<X8>)
{
  sub_24F01AA8C();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24F019FA4()
{
  sub_24F01AA8C();

  return sub_24F924878();
}

uint64_t sub_24F01A00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E9D38B0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24F01A070(uint64_t a1, uint64_t a2)
{
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v4 = qword_27F24E488;
  v8 = v4;
  v9 = sub_24F923398() & 1;
  v10 = v5;
  v11 = v6 & 1;
  MEMORY[0x25304C420](&v8, a1, &type metadata for FocusedAlternativeButtonInteractionContainerViewModifier, a2);
}

uint64_t sub_24F01A138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v21 = a5;
  v19 = a2;
  v20 = a4;
  v22 = a1;
  v24 = a6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237170);
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v19 - v10;
  v26 = a3;
  v27 = a4;
  v28 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670);
  sub_24F923348();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237178);
  sub_24E602068(&qword_27F237180, &qword_27F237178);
  sub_24F9269C8();

  KeyPath = swift_getKeyPath();
  v26 = a3;
  v27 = v20;
  v28 = v21;
  sub_24F923328();
  if (v25 == 1)
  {
    v13 = sub_24F01A364();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = v24;
  (*(v9 + 32))(v24, v11, v23);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237188);
  v18 = (v16 + *(result + 36));
  *v18 = KeyPath;
  v18[1] = v13;
  v18[2] = v15;
  return result;
}

uint64_t sub_24F01A364()
{
  swift_getKeyPath();
  v11 = v0;
  sub_24F01AA34();
  sub_24F91FD88();

  v1 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__controller;
  swift_beginAccess();
  v2 = *(v11 + v1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v3 extendedGamepad];
  if (!v4)
  {
    v5 = [v3 microGamepad];
    if (v5)
    {
      v6 = v5;
      goto LABEL_7;
    }

LABEL_10:

    return 0;
  }

  v5 = [v3 extendedGamepad];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v3;
  v3 = v5;
LABEL_7:
  v7 = [v5 buttonX];

  if (v7)
  {
    v8 = [v7 sfSymbolsName];

    if (v8)
    {
      v9 = sub_24F92B0D8();

      return v9;
    }
  }

  return 0;
}

double sub_24F01A4E4@<D0>(_OWORD *a1@<X8>)
{
  sub_24F01AA8C();
  sub_24F924868();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24F01A538()
{
  v1 = v0;
  v2 = type metadata accessor for FocusedAlternativeSelectionButtonModifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(v0 + 40);
  swift_getKeyPath();
  v11 = v5;
  sub_24F01AA34();
  sub_24F91FD88();

  v6 = OBJC_IVAR____TtC12GameStoreKit22GameControllerObserver__xButtonPressed;
  swift_beginAccess();
  v10[7] = *(v5 + v6);
  sub_24F01AFD4(v1, &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_24F01B1A8(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2371B0);
  sub_24E602068(&qword_27F2371B8, &qword_27F2371B0);
  sub_24F926AB8();
}

void sub_24F01A72C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = sub_24F921B58();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v12 = a3 + *(type metadata accessor for FocusedAlternativeSelectionButtonModifier() + 32);
    v13 = *(v12 + 8);
    if (*(v12 + 16) == 1)
    {

      if (!v13)
      {
        return;
      }
    }

    else
    {
      v14 = *v12;

      sub_24F92BDC8();
      v15 = sub_24F9257A8();
      v19 = a3;
      v20 = v7;
      v16 = v15;
      sub_24F921FD8();

      a3 = v19;
      v7 = v20;
      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E74C370(v14, v13, 0);
      (*(v9 + 8))(v11, v8);
      if (!v25)
      {
        return;
      }
    }

    sub_24E7538CC(a3, &v22);
    if (v23)
    {
      sub_24E612C80(&v22, v24);
      sub_24F7695C8(&v22);
      if (v23)
      {
        __swift_project_boxed_opaque_existential_1(&v22, v23);
        sub_24F76973C(v7);
        sub_24F9218A8();
        (*(v21 + 8))(v7, v5);
        __swift_destroy_boxed_opaque_existential_1(v24);
        __swift_destroy_boxed_opaque_existential_1(&v22);
        return;
      }

      __swift_destroy_boxed_opaque_existential_1(v24);
      v17 = &unk_27F212740;
    }

    else
    {
      v17 = qword_27F21B590;
    }

    sub_24E601704(&v22, v17);
  }
}

unint64_t sub_24F01AA34()
{
  result = qword_27F220F48;
  if (!qword_27F220F48)
  {
    type metadata accessor for GameControllerObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220F48);
  }

  return result;
}

unint64_t sub_24F01AA8C()
{
  result = qword_27F237190;
  if (!qword_27F237190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237190);
  }

  return result;
}

unint64_t sub_24F01AAF4()
{
  result = qword_27F237198;
  if (!qword_27F237198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F237178);
    sub_24E602068(&qword_27F237180, &qword_27F237178);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F224738, &qword_27F224730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F237198);
  }

  return result;
}

uint64_t sub_24F01AC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F01AD00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FocusedAlternativeSelectionButtonModifier()
{
  result = qword_27F2371A0;
  if (!qword_27F2371A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F01ADFC()
{
  sub_24F01AF4C(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameControllerObserver();
    if (v1 <= 0x3F)
    {
      sub_24F01AF4C(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24E6D74E4();
        if (v3 <= 0x3F)
        {
          sub_24F01AF4C(319, &qword_27F21B368, &unk_27F23B740, &unk_24F93EC10, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F01AF4C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24F01AFD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusedAlternativeSelectionButtonModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F01B038()
{
  v1 = type metadata accessor for FocusedAlternativeSelectionButtonModifier();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + v2);
  }

  if (*(v3 + 88))
  {
    if (*(v3 + 72))
    {
      __swift_destroy_boxed_opaque_existential_1(v3 + 48);
    }
  }

  else
  {
  }

  v4 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F921B58();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_24E74C370(*(v3 + *(v1 + 32)), *(v3 + *(v1 + 32) + 8), *(v3 + *(v1 + 32) + 16));

  return swift_deallocObject();
}

uint64_t sub_24F01B1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusedAlternativeSelectionButtonModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24F01B20C(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for FocusedAlternativeSelectionButtonModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_24F01A72C(a1, a2, v6);
}

uint64_t sub_24F01B28C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2371B0);
  sub_24E602068(&qword_27F2371B8, &qword_27F2371B0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t BaseShelfPresenter.init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v5 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

uint64_t BaseShelfPresenter.deinit()
{
  v0 = BasePresenter.deinit();

  return v0;
}

uint64_t sub_24F01B470(char a1)
{
  v3 = swift_beginAccess();
  v4 = v1[32];
  v1[32] = a1;
  v5 = (*(*v1 + 568))(v3);
  v7 = v6;
  if (a1)
  {
    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(*(v7 + 24) + 8))(ObjectType);
LABEL_6:
      swift_unknownObjectRelease();
    }
  }

  else if (v5)
  {
    v9 = swift_getObjectType();
    (*(*(v7 + 24) + 16))(v9);
    goto LABEL_6;
  }

  return sub_24F01DFD8(v4);
}

void (*sub_24F01B598(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + 32);
  return sub_24F01B624;
}

void sub_24F01B624(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = v2[32];
  v2[32] = v3;
  v5 = (*(*v2 + 568))();
  v7 = v6;
  if (v3)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24) + 8);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24) + 16);
  }

  (*v9)(ObjectType);
  swift_unknownObjectRelease();
LABEL_7:
  sub_24F01DFD8(v4);

  free(v1);
}

uint64_t sub_24F01B734(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = result;
  if (v2 != (result & 1))
  {
    if ((result & 1) == 0)
    {
      result = swift_beginAccess();
      if (!*(v1 + 16))
      {
        return result;
      }

      sub_24ED6F318();
    }

    result = swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      result = swift_beginAccess();
      v5 = *(v4 + 48);
      v6 = __OFADD__(v5, 1);
      v7 = v5 + 1;
      if (v6)
      {
        __break(1u);
        return result;
      }

      *(v4 + 48) = v7;
      v8 = v7 == 0;
      swift_beginAccess();
      *(v4 + 40) = v8;
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {

        sub_24EA6BFA0();
      }
    }
  }

  return result;
}

uint64_t sub_24F01B85C(unint64_t a1, uint64_t a2)
{
  v69 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_24F91F4A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v58 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v79 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v71 = OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests;
    swift_beginAccess();
    if (i)
    {
      break;
    }

    v8 = MEMORY[0x277D84F98];
    if (!*(MEMORY[0x277D84F98] + 16))
    {
    }

LABEL_32:
    v6 = (v8 + 64);
    v49 = 1 << *(v8 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & *(v8 + 64);
    v12 = ((v49 + 63) >> 6);

    v52 = 0;
    while (v51)
    {
      v53 = v52;
LABEL_40:
      v54 = __clz(__rbit64(v51));
      v51 &= v51 - 1;
      a1 = *(*(v8 + 56) + ((v53 << 9) | (8 * v54)));

      v7 = sub_24E9545A4(v55);

      sub_24F020CB8(v7);
    }

    while (1)
    {
      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v53 >= v12)
      {
      }

      v51 = *&v6[8 * v53];
      ++v52;
      if (v51)
      {
        v52 = v53;
        goto LABEL_40;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v66 = v12;
  v72 = v2;
  v2 = 0;
  v14 = a1 & 0xC000000000000001;
  v74 = a1 & 0xFFFFFFFFFFFFFF8;
  v57 = a1;
  a1 += 32;
  v73 = (v8 + 48);
  v67 = (v8 + 32);
  v61 = (v8 + 8);
  v60 = (v8 + 16);
  v59 = xmmword_24F93DE60;
  v65 = v6;
  v64 = i;
  v63 = v14;
  v62 = a1;
  while (v14)
  {
    v8 = MEMORY[0x253052270](v2, v57);
    v12 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_28;
    }

LABEL_10:
    sub_24E60169C(v8 + OBJC_IVAR____TtC12GameStoreKit5Shelf_url, v6, &qword_27F228530);
    if ((*v73)(v6, 1, v7) == 1)
    {

      sub_24E601704(v6, &qword_27F228530);
    }

    else
    {
      v15 = v66;
      (*v67)(v66, v6, v7);
      if (__OFADD__(v69, v2))
      {
        goto LABEL_46;
      }

      v16 = v7;
      v78 = &v2[v69];
      v17 = sub_24F92CD88();
      v19 = v18;
      v20 = *&v72[v71];
      v70 = v17;
      v77[0] = v17;
      v77[1] = v18;

      sub_24F92C7F8();
      if (*(v20 + 16) && (v21 = sub_24F92C7B8(), v22 = -1 << *(v20 + 32), v23 = v21 & ~v22, ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
      {
        v24 = ~v22;
        while (1)
        {
          sub_24E65864C(*(v20 + 48) + 40 * v23, v77);
          v25 = MEMORY[0x253052150](v77, &v78);
          sub_24E6585F8(v77);
          if (v25)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        sub_24E6585F8(&v78);
        v7 = v16;
        (*v61)(v15, v16);
      }

      else
      {
LABEL_17:

        sub_24E6585F8(&v78);
        v26 = (v8 + OBJC_IVAR____TtC12GameStoreKit5Shelf_batchGroup);
        if (v79[2] && (sub_24E76D644(*v26, v26[1]), (v27 & 1) != 0))
        {
          v29 = *v26;
          v28 = v26[1];

          v31 = sub_24F4D64CC(&v78, v29, v28);
          if (*v30)
          {
            v32 = v30;
            v33 = v58;
            (*v60)(v58, v15, v16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v77[0] = *v32;
            *v32 = 0x8000000000000000;
            v35 = v33;
            v36 = v70;
            sub_24E81FF24(v35, v70, v19, isUniquelyReferenced_nonNull_native);
            *v32 = v77[0];

            (v31)(&v78, 0);
          }

          else
          {
            (v31)(&v78, 0);

            v36 = v70;
          }
        }

        else
        {
          v37 = v26[1];
          v68 = *v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED38);
          v38 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2131B8) - 8);
          v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
          v40 = swift_allocObject();
          *(v40 + 16) = v59;
          v41 = (v40 + v39);
          v42 = v38[14];
          v43 = v70;
          *v41 = v70;
          *(v41 + 1) = v19;
          (*v60)(&v41[v42], v15, v16);

          v44 = sub_24E60E1EC(v40);
          swift_setDeallocating();
          sub_24E601704(v41, &qword_27F2131B8);
          swift_deallocClassInstance();
          v45 = v79;
          v46 = swift_isUniquelyReferenced_nonNull_native();
          v78 = v45;
          v36 = v43;
          sub_24E820134(v44, v68, v37, v46);

          v79 = v78;
        }

        v47 = v72;
        v48 = v71;
        swift_beginAccess();
        v75 = v36;
        v76 = v19;
        sub_24F92C7F8();
        sub_24F01FE80(&v78, v77);
        sub_24F92C7D8();
        sub_24E6585F8(&v78);
        swift_dynamicCast();
        swift_endAccess();

        sub_24F01B734(*(*&v47[v48] + 16) != 0);

        (*v61)(v15, v16);
        v7 = v16;
      }

      v6 = v65;
      i = v64;
      v14 = v63;
      a1 = v62;
    }

    v2 = v12;
    if (v12 == i)
    {
      goto LABEL_29;
    }
  }

  if (v2 >= *(v74 + 16))
  {
    __break(1u);
    goto LABEL_45;
  }

  v8 = *(a1 + 8 * v2);

  v12 = v2 + 1;
  if (!__OFADD__(v2, 1))
  {
    goto LABEL_10;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  v8 = v79;
  v2 = v72;
  if (v79[2])
  {
    goto LABEL_32;
  }
}

void sub_24F01C174(uint64_t a1, uint64_t a2)
{
  sub_24F92C888();
  sub_24F92D1E8();

  MEMORY[0x253050C20](0xD000000000000027, 0x800000024FA68830);
  MEMORY[0x253050C20](a1, a2);
  sub_24F92CA88();
  __break(1u);
}

uint64_t sub_24F01C260@<X0>(_BYTE *a1@<X8>)
{
  v3 = *((*(*v1 + 752))() + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_24F01C2B8()
{
  v1 = *((*(*v0 + 752))() + 24);

  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_24F01C334()
{
  v1 = *((*(*v0 + 752))() + OBJC_IVAR____TtC12GameStoreKit5Shelf_rowsPerColumn);

  return v1;
}

uint64_t sub_24F01C3A0(uint64_t a1, void *a2)
{
  v3 = *((*(*v2 + 752))() + *a2);

  return v3;
}

uint64_t sub_24F01C3FC()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return v3;
}

uint64_t sub_24F01C494()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 32);
  }

  return v3;
}

uint64_t sub_24F01C51C()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 72);
  }

  return v3;
}

uint64_t sub_24F01C5B4()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  return v3;
}

uint64_t sub_24F01C63C()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 128);
  }

  return v3;
}

uint64_t sub_24F01C6C4()
{
  v1 = (*(*v0 + 752))();
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden) & 1) != 0 || (v2 = *(v1 + 40)) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 112);
  }

  return v3;
}

unint64_t sub_24F01C75C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91FA18();
  v4 = *((*(*v1 + 752))(v3) + 24);

  result = sub_24F91FA08();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v4 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_24E615E00(v4 + 40 * result + 32, a1);
}

uint64_t sub_24F01C824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*v2 + 744))();
  if (result <= a1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0x8000;
  }

  else
  {
    v6 = (*(*v2 + 752))(a1);
    v7 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background);
    v8 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 8);
    v9 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 16);
    v10 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 24);
    v11 = *(v6 + OBJC_IVAR____TtC12GameStoreKit5Shelf_background + 32);
    sub_24E951F10(v7, v8, v9, v10, v11);
  }

  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_24F01C928@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91FA18();
  result = (*(*v1 + 744))();
  if (v3 < result)
  {
    v5 = sub_24F91FA18();
    v6 = (*v1 + 752);
    v7 = *v6;
    v8 = *((*v6)(v5) + 24);

    v9 = *(v8 + 16);

    result = sub_24F91FA08();
    if ((result & 0x8000000000000000) == 0 && result < v9)
    {
      v10 = sub_24F91FA18();
      v11 = *(v7(v10) + 24);

      result = sub_24F91FA08();
      if (result < 0)
      {
        __break(1u);
      }

      else if (result < *(v11 + 16))
      {
        sub_24E615E00(v11 + 40 * result + 32, v16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ED00);
        if (swift_dynamicCast())
        {
          sub_24E612C80(v14, v17);
          v12 = v18;
          v13 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          (*(v13 + 8))(v12, v13);
          return __swift_destroy_boxed_opaque_existential_1(v17);
        }

        v15 = 0;
        memset(v14, 0, sizeof(v14));
        result = sub_24E601704(v14, &qword_27F22ED08);
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }
  }

LABEL_9:
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x8000;
  return result;
}

uint64_t sub_24F01CB58@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_24F91FA18();
  result = (*(*v1 + 744))();
  if (v3 < result)
  {
    v5 = sub_24F91FA18();
    v6 = (*v1 + 752);
    v7 = *v6;
    v8 = *((*v6)(v5) + 24);

    v9 = *(v8 + 16);

    result = sub_24F91FA08();
    if ((result & 0x8000000000000000) == 0 && result < v9)
    {
      v10 = sub_24F91FA18();
      v11 = *(v7(v10) + 24);

      result = sub_24F91FA08();
      if (result < 0)
      {
        __break(1u);
      }

      else if (result < *(v11 + 16))
      {
        sub_24E615E00(v11 + 40 * result + 32, v16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232620);
        if (swift_dynamicCast())
        {
          sub_24E612C80(v14, v17);
          v12 = v18;
          v13 = v19;
          __swift_project_boxed_opaque_existential_1(v17, v18);
          (*(v13 + 8))(v12, v13);
          return __swift_destroy_boxed_opaque_existential_1(v17);
        }

        v15 = 0;
        memset(v14, 0, sizeof(v14));
        result = sub_24E601704(v14, &unk_27F23A6B0);
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }
  }

LABEL_9:
  *a1 = 4;
  return result;
}

uint64_t sub_24F01CD80()
{
  v1 = (*(*v0 + 752))();
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerTitle);
  }

  return v2;
}

uint64_t sub_24F01CE20()
{
  v1 = (*(*v0 + 752))();
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  }

  return v2;
}

uint64_t sub_24F01CEAC()
{
  v1 = (*(*v0 + 752))();
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit5Shelf_footerAction);
  if (v2 && (v3 = v1, (*(*v0 + 568))()))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v10[3] = type metadata accessor for Shelf();
    v10[0] = v3;
    v7 = *(v5 + 8);
    v8 = *(v7 + 8);

    v8(v2, v10, ObjectType, v7);

    swift_unknownObjectRelease();
    return sub_24E601704(v10, &qword_27F2129B0);
  }

  else
  {
  }
}

uint64_t sub_24F01D014()
{
  if (*((*(*v0 + 752))() + OBJC_IVAR____TtC12GameStoreKit5Shelf_isHidden))
  {
    v1 = 0;
  }

  else
  {
    v1 = Shelf.seeAllAction.getter();
  }

  return v1;
}

uint64_t sub_24F01D090()
{
  v1 = (*(*v0 + 752))();
  v2 = Shelf.seeAllAction.getter();
  if (v2)
  {
    v3 = v2;
    if ((*(*v0 + 568))())
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v10[3] = type metadata accessor for Shelf();
      v10[0] = v1;
      v7 = *(v5 + 8);
      v8 = *(v7 + 8);

      v8(v3, v10, ObjectType, v7);

      swift_unknownObjectRelease();

      return sub_24E601704(v10, &qword_27F2129B0);
    }
  }
}

unint64_t sub_24F01D1FC()
{
  v1 = sub_24F91FA78();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
  v6 = swift_allocObject();
  v26 = xmmword_24F93A400;
  *(v6 + 16) = xmmword_24F93A400;
  *(v6 + 32) = sub_24F91FA18();
  *(v6 + 40) = 0;
  MEMORY[0x253045350](v6);
  v7 = sub_24F91FA18();
  v8 = *((*(*v0 + 752))(v7) + 24);

  result = sub_24F91FA08();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= *(v8 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24E615E00(v8 + 40 * result + 32, v30);

  v10 = *(v2 + 8);
  v10(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ECE8);
  if (swift_dynamicCast())
  {
    v25[1] = v5;
    sub_24E612C80(&v27, v32);
    v11 = v33;
    v12 = v34;
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = sub_24F91FA08();
    v14 = (*(v12 + 8))(&v27, v13, v11, v12);
    if (v27)
    {
      v30[0] = v27;
      v30[1] = v28;
      v31 = v29;
      if ((*(*v0 + 568))(v14))
      {
        v16 = v15;
        ObjectType = swift_getObjectType();
        (*(*(v16 + 8) + 8))(*&v30[0], v30 + 8, ObjectType);
        swift_unknownObjectRelease();
      }

      sub_24E601704(v30, &qword_27F22CE40);
    }

    else
    {
      sub_24E601704(&v27, &qword_27F22ECF8);
      v18 = v33;
      v19 = v34;
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v20 = sub_24F91FA08();
      if (((*(v19 + 16))(v20, v18, v19) & 1) != 0 && (*(*v0 + 568))())
      {
        v22 = v21;
        v23 = swift_getObjectType();
        v24 = swift_allocObject();
        *(v24 + 16) = v26;
        *(v24 + 32) = sub_24F91FA18();
        *(v24 + 40) = 0;
        MEMORY[0x253045350](v24);
        (*(v22 + 56))(v4, v23, v22);
        swift_unknownObjectRelease();
        v10(v4, v1);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    return sub_24E601704(&v27, &qword_27F22ECF0);
  }
}

unint64_t sub_24F01D63C(uint64_t a1)
{
  v3 = sub_24F91FA18();
  v4 = *((*(*v1 + 752))(v3) + 24);

  result = sub_24F91FA08();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result >= *(v4 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24E615E00(v4 + 40 * result + 32, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v19, v22);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v8 = (*(v7 + 8))(v6, v7);
    if (v8)
    {
      v9 = v8;
      if ((*(*v1 + 568))())
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = v23;
        v14 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (*(v14 + 16))(v21, v13, v14);
        (*(*(v11 + 8) + 8))(v9, v21, ObjectType);

        swift_unknownObjectRelease();
        sub_24E601704(v21, &qword_27F2129B0);
      }

      else
      {
      }

      return __swift_destroy_boxed_opaque_existential_1(v22);
    }

    v15 = __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    v15 = sub_24E601704(v19, &qword_27F22CE30);
  }

  result = (*(*v1 + 568))(v15);
  if (result)
  {
    v17 = v16;
    v18 = swift_getObjectType();
    (*(v17 + 56))(a1, v18, v17);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24F01D910(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {
    v5 = a3 >> 62;
    if (a3 >> 62)
    {
      if (sub_24F92C738() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v6 = objc_allocWithZone(MEMORY[0x277CD3F38]);

      v7 = [v6 init];
      v8 = sub_24F92B098();
      [v7 setWidgetKind_];

      if (v5)
      {
        sub_24E69A5C4(0, &qword_27F2371D0);

        sub_24F92CA98();
      }

      else
      {

        sub_24F92CEE8();
        sub_24E69A5C4(0, &qword_27F2371D0);
      }

      sub_24E69A5C4(0, &qword_27F2371D0);
      v9 = sub_24F92B588();

      [v7 setRelevanceProviders_];

      v10 = [objc_opt_self() defaultStore];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_24F941C80;
      *(v11 + 32) = v7;
      sub_24E69A5C4(0, &qword_27F2371D8);
      v12 = v7;
      v13 = sub_24F92B588();

      v14 = swift_allocObject();
      *(v14 + 16) = a1;
      *(v14 + 24) = a2;
      v17[4] = sub_24F020654;
      v17[5] = v14;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 1107296256;
      v17[2] = sub_24E9FABA0;
      v17[3] = &block_descriptor_103;
      v15 = _Block_copy(v17);

      [v10 setRelevantShortcuts:v13 completionHandler:v15];
      _Block_release(v15);

      return;
    }
  }

  if (qword_27F210568 != -1)
  {
    swift_once();
  }

  v16 = sub_24F92AAE8();
  __swift_project_value_buffer(v16, qword_27F39C398);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

uint64_t sub_24F01DD24()
{
  swift_beginAccess();
  v1 = v0[2];
  if (v1)
  {
    v2 = qword_27F210788;

    if (v2 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_27F230F98;
    v4 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
    swift_beginAccess();
    *v4 = v3;
    *(v4 + 8) = 0;
    v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
    swift_beginAccess();
    *(v5 + 40) = 1;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24EA6BFA0();
    }
  }

  return (*(*v0 + 296))(0);
}

uint64_t BaseShelfPresenter.__allocating_init(objectGraph:impressionsTracker:impressionsCalculator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_pageRefreshPolicy) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_incompleteShelfFetches) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_isFetchingShelves) = 0;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests) = MEMORY[0x277D84FA0];
  v9 = sub_24EC8415C(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_24F01DFD8(char a1)
{
  v2 = a1 & 1;
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(*v1 + 264);
  result = v8(v5);
  if ((result & 1) != v2)
  {
    if ((v8)())
    {
      result = swift_beginAccess();
      v10 = v1[2];
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        result = swift_beginAccess();
        v12 = *(v11 + 48);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          __break(1u);
          return result;
        }

        *(v11 + 48) = v14;
        v15 = v14 == 0;
        swift_beginAccess();
        *(v11 + 40) = v15;
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {

          sub_24EA6BFA0();
        }
      }
    }

    else
    {
      result = swift_beginAccess();
      if (v1[2])
      {

        sub_24F91F638();
        sub_24F91F5E8();
        v17 = v16;
        (*(v4 + 8))(v7, v3);
        PendingPageRender.initialRequestEndTime.setter(v17, 0);

        if (v1[2])
        {

          sub_24ED6F318();
        }
      }
    }
  }

  return result;
}

void sub_24F01E224(uint64_t *a1, void *a2)
{
  v120 = sub_24F91F648();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v123 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  v106 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v122 = &v104 - v9;
  MEMORY[0x28223BE20](v10);
  v105 = &v104 - v11;
  v109 = sub_24F91F968();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v113 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92A078();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  swift_beginAccess();
  v121 = a2;
  if (a2[3])
  {
    *v16 = 0;
    (*(v14 + 104))(v16, *MEMORY[0x277D22288], v13);

    sub_24F92A0C8();

    (*(v14 + 8))(v16, v13);
  }

  sub_24F91F958();
  v110 = v17;
  v18 = *(v17 + 16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v114 = OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests;
  v23 = (v20 + 63) >> 6;
  v107 = "mentation required for ";
  v115 = v18;

  v24 = 0;
  v112 = 0;
  v111 = MEMORY[0x277D84F90];
  v116 = xmmword_24F93A400;
  v25 = v7;
  v124 = v7;
  while (v22)
  {
LABEL_11:
    v27 = __clz(__rbit64(v22)) | (v24 << 6);
    v28 = v115;
    sub_24E65864C(*(v115 + 48) + 40 * v27, &v128);
    v29 = *(*(v28 + 56) + 8 * v27);
    v117 = v128;
    v30 = v130;
    v118 = v129;
    v31 = *(&v129 + 1);

    if (!v31)
    {
LABEL_34:

      v53 = v121;
      swift_beginAccess();
      v54 = v110;
      v55 = v111;
      if (*(v53 + 16))
      {
        swift_beginAccess();

        sub_24EA0A8D8(v56);
        swift_endAccess();

        if (*(v53 + 16))
        {
          swift_beginAccess();

          sub_24EA0A904(v57);
          swift_endAccess();
        }
      }

      v58 = sub_24F91F908();
      *&v118 = v53 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
      if (v58)
      {
        v59 = v120;
      }

      else
      {
        v58 = (*(*v53 + 568))();
        v59 = v120;
        if (v58)
        {
          v61 = v60;
          ObjectType = swift_getObjectType();
          (*(v61 + 48))(v113, ObjectType, v61);
          v58 = swift_unknownObjectRelease();
        }
      }

      *&v117 = (*(*v53 + 592))(v58);
      if (v117)
      {
        v63 = v55[2];
        if (v63)
        {
          v64 = v55 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
          v65 = *(v106 + 72);
          v66 = (v119 + 48);
          v67 = (v119 + 32);
          v68 = MEMORY[0x277D84F90];
          do
          {
            v69 = v122;
            sub_24E60169C(v64, v122, &unk_27F22EC30);
            v70 = v69;
            v71 = v124;
            sub_24E6C4F90(v70, v124);
            if ((*v66)(v71, 1, v59) == 1)
            {
              sub_24E601704(v71, &unk_27F22EC30);
            }

            else
            {
              v72 = v71;
              v73 = *v67;
              (*v67)(v123, v72, v59);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_24E616878(0, *(v68 + 2) + 1, 1, v68);
              }

              v75 = *(v68 + 2);
              v74 = *(v68 + 3);
              if (v75 >= v74 >> 1)
              {
                v68 = sub_24E616878(v74 > 1, v75 + 1, 1, v68);
              }

              *(v68 + 2) = v75 + 1;
              v59 = v120;
              v73(&v68[((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v75], v123, v120);
            }

            v64 += v65;
            --v63;
          }

          while (v63);

          v53 = v121;
          v54 = v110;
        }

        else
        {

          v68 = MEMORY[0x277D84F90];
        }

        v76 = sub_24ED6555C(v68);

        if (v76)
        {
          v77 = *(*v53 + 600);

          v77(v78);
        }
      }

      else
      {
      }

      v79 = *(v54 + 24);
      v82 = *(v79 + 64);
      v81 = v79 + 64;
      v80 = v82;
      v83 = 1 << *(*(v54 + 24) + 32);
      v84 = -1;
      if (v83 < 64)
      {
        v84 = ~(-1 << v83);
      }

      v85 = v84 & v80;
      v86 = (v83 + 63) >> 6;
      v124 = *(v54 + 24);

      v87 = 0;
      while (v85)
      {
LABEL_65:
        v89 = __clz(__rbit64(v85));
        v85 &= v85 - 1;
        v90 = v89 | (v87 << 6);
        v91 = (*(v124 + 6) + 16 * v90);
        v93 = *v91;
        v92 = v91[1];
        v94 = *(*(v124 + 7) + 8 * v90);
        swift_bridgeObjectRetain_n();
        v95 = v94;
        v96 = sub_24E9EEBE0(v93, v92);
        if (v97)
        {
          if (qword_27F210568 != -1)
          {
            swift_once();
          }

          v123 = sub_24F92AAE8();
          v122 = __swift_project_value_buffer(v123, qword_27F39C398);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
          sub_24F928468();
          *(swift_allocObject() + 16) = v116;
          sub_24F9283A8();
          *(&v129 + 1) = MEMORY[0x277D837D0];
          *&v128 = v93;
          *(&v128 + 1) = v92;
          sub_24F928458();
          sub_24E601704(&v128, &qword_27F2129B0);
          sub_24F92A5A8();

          v53 = v121;
        }

        else
        {
          v98 = v96;

          if ((*(*v53 + 568))(v99))
          {
            v101 = v100;
            v102 = swift_getObjectType();
            v103 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            (*(v101 + 40))(v94, v103, v102, v101);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v88 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          break;
        }

        if (v88 >= v86)
        {
          (*(v108 + 8))(v113, v109);

          return;
        }

        v85 = *(v81 + 8 * v88);
        ++v87;
        if (v85)
        {
          v87 = v88;
          goto LABEL_65;
        }
      }

      __break(1u);
      goto LABEL_74;
    }

    v22 &= v22 - 1;
    v128 = v117;
    v129 = v118;
    v130 = v30;
    v32 = v121;
    v33 = v114;
    swift_beginAccess();
    sub_24F7A58DC(&v128, v127);
    sub_24E601704(v127, &qword_27F235830);
    swift_endAccess();
    sub_24F01B734(*(*(v32 + v33) + 16) != 0);
    sub_24F92C7D8();
    if (swift_dynamicCast() & 1) == 0 || (v34 = sub_24E9EEBE0(v125, v126), (v35))
    {
      if (qword_27F210568 == -1)
      {
        goto LABEL_15;
      }

LABEL_32:
      swift_once();
      goto LABEL_15;
    }

    v37 = v25;
    v38 = v121;
    v39 = v34;
    if ((*(*v121 + 760))())
    {
      v40 = *v38;
      if (v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched] != 1)
      {
        (*(v40 + 720))(v39, v29);
        v25 = v37;
        goto LABEL_27;
      }

      v41 = *(v40 + 752);
      *&v118 = v39;
      v41(v39);
      v42 = v112;
      Shelf.mergingWith(_:)(v29);
      v112 = v42;
      if (v42)
      {

        if ((*(*v38 + 568))(v43))
        {
          v45 = v44;
          v46 = swift_getObjectType();
          v47 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          v48 = [v47 initWithInteger_];
          v49 = v112;
          (*(v45 + 40))(v112, v48, v46, v45);

          swift_unknownObjectRelease();

          sub_24E6585F8(&v128);
        }

        else
        {
          sub_24E6585F8(&v128);
        }

        v112 = 0;
        v25 = v124;
      }

      else
      {
        (*(*v38 + 720))();

        v25 = v124;
LABEL_27:
        sub_24F91F8F8();
        sub_24E60169C(&v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_nextPreferredContentRefreshDate], v105, &unk_27F22EC30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_24E61923C(0, v111[2] + 1, 1, v111);
        }

        v51 = v111[2];
        v50 = v111[3];
        if (v51 >= v50 >> 1)
        {
          v111 = sub_24E61923C(v50 > 1, v51 + 1, 1, v111);
        }

        sub_24E6585F8(&v128);
        v52 = v111;
        v111[2] = v51 + 1;
        sub_24E6C4F90(v105, v52 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v51);
      }
    }

    else
    {
      if (qword_27F210568 != -1)
      {
        goto LABEL_32;
      }

LABEL_15:
      v36 = sub_24F92AAE8();
      __swift_project_value_buffer(v36, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = v116;
      sub_24F9283A8();
      v127[3] = MEMORY[0x277D84030];
      v127[0] = swift_allocObject();
      sub_24E65864C(&v128, v127[0] + 16);
      sub_24F928458();
      sub_24E601704(v127, &qword_27F2129B0);
      sub_24F92A5A8();

      sub_24E6585F8(&v128);
      v25 = v124;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_34;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_11;
    }
  }

LABEL_74:
  __break(1u);
}

uint64_t sub_24F01F3D8(void *a1, void *a2, void *a3)
{
  v6 = sub_24F92A078();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = a2[3];
  if (v10)
  {
    *v9 = a1;
    v9[8] = 0;
    (*(v7 + 104))(v9, *MEMORY[0x277D22278], v6);

    v11 = a1;
    sub_24F92A0C8();

    (*(v7 + 8))(v9, v6);
  }

  v31 = a1;
  v12 = a3 + 8;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & a3[8];
  v16 = OBJC_IVAR____TtC12GameStoreKit18BaseShelfPresenter_activeRequests;
  v17 = (v13 + 63) >> 6;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_11:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_24E65864C(a3[6] + 40 * (v20 | (v19 << 6)), v33);
      swift_beginAccess();
      sub_24F7A58DC(v33, v32);
      sub_24E6585F8(v33);
      sub_24E601704(v32, &qword_27F235830);
      swift_endAccess();
      v10 = a2;
      sub_24F01B734(*(*(a2 + v16) + 16) != 0);
      if (!v15)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_22:
      a3 = sub_24E617130(0, a3[2] + 1, 1, a3);
      *(v10 + v18) = a3;
      goto LABEL_15;
    }

    if (v19 >= v17)
    {
      break;
    }

    v15 = v12[v19];
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  v21 = swift_beginAccess();
  v10 = a2[2];
  v12 = v31;
  if (!v10)
  {
    goto LABEL_18;
  }

  v18 = OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_errors;
  swift_beginAccess();
  a3 = *(v10 + v18);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + v18) = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v24 = a3[2];
  v23 = a3[3];
  if (v24 >= v23 >> 1)
  {
    a3 = sub_24E617130((v23 > 1), v24 + 1, 1, a3);
  }

  a3[2] = v24 + 1;
  a3[v24 + 4] = v12;
  *(v10 + v18) = a3;
  swift_endAccess();
  v25 = v12;

LABEL_18:
  result = (*(*a2 + 568))(v21);
  if (result)
  {
    v28 = v27;
    ObjectType = swift_getObjectType();
    (*(v28 + 40))(v12, 0, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24F01F828(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F928418();
  MEMORY[0x28223BE20](v6 - 8);
  if (a1)
  {
    v7 = a1;
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v14 = MEMORY[0x277D837D0];
    v12 = a2;
    v13 = a3;

    sub_24F9283D8();
    sub_24E601704(&v12, &qword_27F2129B0);
    sub_24F9283F8();
    swift_getErrorValue();
    v14 = v11;
    v9 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(*(v11 - 8) + 16))(v9);
    sub_24F9283D8();
    sub_24E601704(&v12, &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A5A8();
  }

  else
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F928408();
    sub_24F9283F8();
    v14 = MEMORY[0x277D837D0];
    v12 = a2;
    v13 = a3;

    sub_24F9283D8();
    sub_24E601704(&v12, &qword_27F2129B0);
    sub_24F9283F8();
    sub_24F928428();
    sub_24F92A588();
  }
}

uint64_t sub_24F01FC4C()
{
}

uint64_t BaseShelfPresenter.__deallocating_deinit()
{
  BasePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F01FE0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*(*v4 + 752))() + *a4);

  return v5;
}

uint64_t sub_24F01FE80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_24F92C7B8();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_24E65864C(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x253052150](v16, a2);
      sub_24E6585F8(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_24E6585F8(a2);
    sub_24E65864C(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E65864C(a2, v16);
    v15 = *v3;
    sub_24F01FFCC(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_24F01FFCC(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v54 = *(i + 48) + 40 * a2;
      v55 = *(v6 + 16);
      *v54 = *v6;
      *(v54 + 16) = v55;
      *(v54 + 32) = *(v6 + 32);
      v56 = *(i + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        *(i + 16) = v58;
        return result;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8);
      v59 = sub_24F92C808();
      i = v59;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v60 = (v59 + 56);
    v61 = v7 + 56;
    v62 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v60 >= v61 + 8 * v62)
    {
      memmove(v60, (v7 + 56), 8 * v62);
    }

    v63 = 0;
    *(i + 16) = *(v7 + 16);
    v64 = 1 << *(v7 + 32);
    v65 = *(v7 + 56);
    v66 = -1;
    if (v64 < 64)
    {
      v66 = ~(-1 << v64);
    }

    v67 = v66 & v65;
    v68 = (v64 + 63) >> 6;
    if ((v66 & v65) != 0)
    {
      do
      {
        v69 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
LABEL_81:
        v72 = 40 * (v69 | (v63 << 6));
        sub_24E65864C(*(v7 + 48) + v72, &v78);
        v73 = *(i + 48) + v72;
        v74 = v78;
        v75 = v79;
        *(v73 + 32) = v80;
        *v73 = v74;
        *(v73 + 16) = v75;
      }

      while (v67);
    }

    v70 = v63;
    while (1)
    {
      v63 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v63 >= v68)
      {
        goto LABEL_83;
      }

      v71 = *(v61 + 8 * v63);
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v67 = (v71 - 1) & v71;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5B8);
  if ((a3 & 1) == 0)
  {
    v30 = sub_24F92C818();
    i = v30;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v77 = v4;
    v31 = 0;
    a2 = v7 + 56;
    v32 = 1 << *(v7 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v7 + 56);
    v4 = (v32 + 63) >> 6;
    v35 = v30 + 56;
    while (1)
    {
      if (v34)
      {
        v40 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v41 = v31;
        do
        {
          v31 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_64;
          }

          if (v31 >= v4)
          {

            v4 = v77;
            goto LABEL_57;
          }

          v42 = *(a2 + 8 * v31);
          ++v41;
        }

        while (!v42);
        v40 = __clz(__rbit64(v42));
        v34 = (v42 - 1) & v42;
      }

      sub_24E65864C(*(v7 + 48) + 40 * (v40 | (v31 << 6)), &v78);
      v43 = sub_24F92C7B8();
      v44 = -1 << *(i + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v35 + 8 * (v45 >> 6))) != 0)
      {
        v36 = __clz(__rbit64((-1 << v45) & ~*(v35 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        do
        {
          if (++v46 == v48 && (v47 & 1) != 0)
          {
            goto LABEL_66;
          }

          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v35 + 8 * v46);
        }

        while (v50 == -1);
        v36 = __clz(__rbit64(~v50)) + (v46 << 6);
      }

      *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v37 = *(i + 48) + 40 * v36;
      v38 = v78;
      v39 = v79;
      *(v37 + 32) = v80;
      *v37 = v38;
      *(v37 + 16) = v39;
      ++*(i + 16);
    }
  }

  v10 = sub_24F92C818();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v76 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v78 = *v21;
      v79 = *(v21 + 16);
      v80 = *(v21 + 32);
      v22 = sub_24F92C7B8();
      v23 = -1 << *(i + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_65;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
        }

        while (v29 == -1);
        v16 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v78;
      *(v17 + 16) = v79;
      *(v17 + 32) = v80;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v51 = 1 << *(v7 + 32);
  if (v51 >= 64)
  {
    bzero((v7 + 56), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v51;
  }

  v4 = v76;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  result = sub_24F92C7B8();
  v52 = -1 << *(i + 32);
  a2 = result & ~v52;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v52;
  while (1)
  {
    sub_24E65864C(*(i + 48) + 40 * a2, &v78);
    v53 = MEMORY[0x253052150](&v78, v6);
    result = sub_24E6585F8(&v78);
    if (v53)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  result = sub_24F92CF78();
  __break(1u);
  return result;
}

uint64_t sub_24F02061C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F020674()
{
  result = qword_27F2371E0;
  if (!qword_27F2371E0)
  {
    type metadata accessor for BaseShelfPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2371E0);
  }

  return result;
}

uint64_t type metadata accessor for BaseShelfPresenter()
{
  result = qword_27F2371E8;
  if (!qword_27F2371E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F020718(uint64_t a1)
{
  result = sub_24F020674();
  *(a1 + 8) = result;
  return result;
}

void sub_24F020CB8(uint64_t a1)
{
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    swift_beginAccess();
    if (*(v1 + 24))
    {
      *v6 = 0;
      (*(v4 + 104))(v6, *MEMORY[0x277D22298], v3);

      sub_24F92A0D8();

      (*(v4 + 8))(v6, v3);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    sub_24F929C28();

    sub_24F928FE8();

    sub_24F929BF8();

    v7 = sub_24F929C18();

    sub_24EB46264(a1, v7, "GameStoreKit/BaseShelfPresenter.swift", 37, 2);
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = a1;
    v9 = sub_24E69A5C4(0, &qword_27F222300);
    swift_retain_n();

    v10 = sub_24F92BEF8();
    v11[3] = v9;
    v11[4] = MEMORY[0x277D225C0];
    v11[0] = v10;
    sub_24F92A958();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }
}

uint64_t sub_24F020F80()
{

  return swift_deallocObject();
}

uint64_t sub_24F020FC8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

uint64_t TopChartsDiffablePageContentPresenter.__allocating_init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v11 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018);
  swift_allocObject();
  *(v10 + v12) = sub_24F92ADA8();
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = a1;
  sub_24F929158();
  sub_24F928FD8();

  sub_24F92A758();

  sub_24E911D90(a2, v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v10 + v11) = a3;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = a4;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = a5;
  return v10;
}

Swift::Void __swiftcall TopChartsDiffablePageContentPresenter.fetchPage()()
{
  v1 = v0;
  v2 = type metadata accessor for TopChartsPageIntent();
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92A088();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_24F91F4A8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  v15 = *(v0 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage);
  if (v15)
  {
    *(v0 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = v15;
    swift_retain_n();

    v30 = v15;
    v31 = 1;

    sub_24F92AD88();

    sub_24F021EA0(v30, v31);
  }

  *(v0 + v14) = 0;

  v16 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage;
  if ((*(v1 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) & 1) == 0)
  {
    sub_24E99091C(v1 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_24E70E058(v9);
      return;
    }

    (*(v11 + 32))(v13, v9, v10);
    *(v1 + v16) = 1;
    v17 = *(v1 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender);
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v19 = *(v18 + 48);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        __break(1u);
        return;
      }

      *(v18 + 48) = v21;
      v22 = v21 == 0;
      swift_beginAccess();
      *(v18 + 40) = v22;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v1 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics))
    {
      *v6 = 1;
      v23 = v28;
      v28[13](v6, *MEMORY[0x277D222A0], v4);
      sub_24F92A0D8();
      (v23[1])(v6, v4);
    }

    type metadata accessor for JSIntentDispatcher();
    sub_24F928FD8();
    sub_24F92A758();
    v28 = v30;
    v24 = v29;
    (*(v11 + 16))(v29, v13, v10);
    sub_24F929C28();

    sub_24F928FE8();
    sub_24F929BF8();

    v25 = sub_24F929C08();

    sub_24EB45B70(v24, v25, "GameStoreKit/TopChartsDiffablePageContentPresenter.swift", 56, 2);
    swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    swift_weakInit();
    v26 = sub_24E74EC40();

    v27 = sub_24F92BEF8();
    v32 = v26;
    v33 = MEMORY[0x277D225C0];
    v30 = v27;
    sub_24F92A958();

    sub_24EDA1EB8(v24);
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1(&v30);
  }
}

uint64_t TopChartsDiffablePageContentPresenter.init(objectGraph:pageUrl:sidePackedPage:pendingPageRender:pageRenderMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v9 = sub_24F929158();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = 0;
  v13 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_sidePackedPage) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  v14 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_onPageFetched;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B018);
  swift_allocObject();
  *(v5 + v14) = sub_24F92ADA8();
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_objectGraph) = a1;
  sub_24F928FD8();

  sub_24F92A758();

  (*(v10 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_metricsPipeline, v12, v9);
  sub_24E911D90(a2, v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);
  *(v5 + v13) = a3;

  v15 = v18;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender) = v17;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics) = v15;
  return v5;
}

uint64_t sub_24F0218C4(void **a1)
{
  v2 = sub_24F92A078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    *(result + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_page) = v6;

    v11 = v6;
    v12 = 0;

    sub_24F92AD88();
    sub_24F021EA0(v11, v12);
    *(v8 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
    if (*(v8 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender))
    {

      sub_24ED6F318();
    }

    if (*(v8 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics))
    {
      v9 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
      swift_beginAccess();
      v10 = sub_24F928818();
      (*(*(v10 - 8) + 16))(v5, &v6[v9], v10);
      (*(v3 + 104))(v5, *MEMORY[0x277D22290], v2);
      sub_24F92A0C8();
      (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t sub_24F021AE4(void *a1)
{
  v2 = sub_24F92A078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v14 = a1;
    v15 = 0x80;
    v6 = a1;
    sub_24F92AD88();

    sub_24F021EA0(v14, v15);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_isFetchingPage) = 0;
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pendingPageRender);

    if (v9)
    {
      sub_24ED6F318();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageRenderMetrics);

    if (v11)
    {
      *v5 = a1;
      (*(v3 + 104))(v5, *MEMORY[0x277D22280], v2);
      v12 = a1;
      sub_24F92A0C8();

      return (*(v3 + 8))(v5, v2);
    }
  }

  return result;
}

uint64_t TopChartsDiffablePageContentPresenter.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_metricsPipeline;
  v2 = sub_24F929158();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit37TopChartsDiffablePageContentPresenter_pageUrl);

  return v0;
}

uint64_t TopChartsDiffablePageContentPresenter.__deallocating_deinit()
{
  TopChartsDiffablePageContentPresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F021E58()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_24F021EA0(void *a1, char a2)
{
  if (a2 < 0)
  {
  }

  else
  {
  }
}

uint64_t type metadata accessor for TopChartsDiffablePageContentPresenter()
{
  result = qword_27F237228;
  if (!qword_27F237228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F021F00()
{
  sub_24F929158();
  if (v0 <= 0x3F)
  {
    sub_24E6D4C08();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24F02202C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 9))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = ((*(a1 + 8) >> 7) | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 8) >> 1) & 0x3F) << 7)))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_24F0220A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_24F022120(uint64_t result, char a2)
{
  v2 = *(result + 8) & 1 | (a2 << 7);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 8) = v2;
  return result;
}

GameStoreKit::BadgeLeadingValue_optional __swiftcall BadgeLeadingValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BadgeLeadingValue.rawValue.getter()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 1954047348;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265666E69;
  }
}

uint64_t sub_24F0221F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 2003134838;
  if (v2 != 1)
  {
    v3 = 1954047348;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7265666E69;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 2003134838;
  if (*a2 != 1)
  {
    v6 = 1954047348;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7265666E69;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

void sub_24F0222E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 2003134838;
  if (v2 != 1)
  {
    v4 = 1954047348;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7265666E69;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_24F02232C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F0223BC()
{
  sub_24F92B218();
}

uint64_t sub_24F022438()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

GameStoreKit::BadgeStyle_optional __swiftcall BadgeStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

uint64_t BadgeStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x697461746F6E6E61;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_24F022568(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x697461746F6E6E61;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E6FLL;
  }

  if (*a2)
  {
    v5 = 0x697461746F6E6E61;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E6FLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F022614@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_24F022674(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x697461746F6E6E61;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24F0226B8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F022740()
{
  sub_24F92B218();
}

uint64_t sub_24F0227B4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

GameStoreKit::BadgeType_optional __swiftcall BadgeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BadgeType.rawValue.getter()
{
  result = 0x676E69746172;
  switch(*v0)
  {
    case 1:
      result = 0x52746E65746E6F63;
      break;
    case 2:
      result = 0x736F507472616863;
      break;
    case 3:
      result = 0x4373726F74696465;
      break;
    case 4:
      result = 0x6B726F77747261;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x69746F4D68676968;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000011;
      break;
    case 0xB:
      result = 0x7061726761726170;
      break;
    case 0xC:
      result = 0x5073646E65697266;
      break;
    case 0xD:
      result = 0x6D6F74737563;
      break;
    case 0xE:
      result = 0x726564726F657270;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_24F022AE8@<X0>(unint64_t *a1@<X8>)
{
  result = BadgeType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::BadgeKey_optional __swiftcall BadgeKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CF18();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t BadgeKey.rawValue.getter()
{
  result = 0x79726F6765746163;
  switch(*v0)
  {
    case 1:
      result = 0x736F507472616863;
      break;
    case 2:
      result = 0x52746E65746E6F63;
      break;
    case 3:
      result = 0x6C6C6F72746E6F63;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x65706F6C65766564;
      break;
    case 7:
      result = 0x4373726F74696465;
      break;
    case 8:
      result = 0x5073646E65697266;
      break;
    case 9:
      result = 0x69746F4D68676968;
      break;
    case 0xA:
      result = 0x65676175676E616CLL;
      break;
    case 0xB:
      result = 0x616C7069746C756DLL;
      break;
    case 0xC:
      result = 0x726564726F657270;
      break;
    case 0xD:
      result = 0x676E69746172;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 1702521203;
      break;
    case 0x11:
      result = 0xD000000000000011;
      break;
    case 0x12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F022E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F022F14@<X0>(unint64_t *a1@<X8>)
{
  result = BadgeKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24F022F54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_24F92D068();
  a3(v4);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F022FDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  sub_24F92B218();
}

uint64_t sub_24F02305C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_24F92D068();
  a4(v5);
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t Badge.caption.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Badge.heading.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Badge.longCaption.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t Badge.accessibilityTitle.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t Badge.accessibilityCaption.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_24F023384(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v5, &qword_27F2129B0);
  v3 = *a2;
  swift_beginAccess();
  sub_24E8E7708(v5, v3 + 152);
  return swift_endAccess();
}

uint64_t sub_24F023448(uint64_t a1)
{
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + 152);
  return swift_endAccess();
}

uint64_t Badge.__allocating_init(id:type:key:heading:caption:longCaption:content:leadingValue:style:accessibilityTitle:accessibilityCaption:clickAction:artwork:trailingArtwork:isMonochrome:impressionMetrics:)(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21)
{
  v65 = a20;
  v63 = a19;
  v64 = a8;
  v61 = a18;
  v62 = a7;
  v59 = a17;
  v60 = a6;
  v57 = a16;
  v58 = a5;
  v55 = a15;
  v56 = a4;
  v54 = a14;
  v52 = a21;
  v53 = a13;
  v50 = a10;
  v51 = a9;
  v24 = sub_24F91F6B8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_allocObject();
  v29 = *a2;
  v30 = *a3;
  v31 = *a11;
  v32 = *a12;
  *(v28 + 152) = 0u;
  *(v28 + 168) = 0u;
  sub_24E60169C(a1, &v68, &qword_27F235830);
  if (*(&v69 + 1))
  {
    v33 = v69;
    *(v28 + 184) = v68;
    *(v28 + 200) = v33;
    *(v28 + 216) = v70;
  }

  else
  {
    sub_24F91F6A8();
    v34 = v31;
    v35 = sub_24F91F668();
    v49 = a1;
    v36 = v30;
    v37 = v32;
    v38 = v29;
    v40 = v39;
    (*(v25 + 8))(v27, v24);
    v66 = v35;
    v67 = v40;
    v31 = v34;
    v29 = v38;
    v32 = v37;
    v30 = v36;
    a1 = v49;
    sub_24F92C7F8();
    sub_24E601704(&v68, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  sub_24E65E0D4(v52, v28 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics);
  *(v28 + 16) = v29;
  *(v28 + 17) = v30;
  v41 = v58;
  *(v28 + 40) = v56;
  *(v28 + 48) = v41;
  v42 = v62;
  *(v28 + 24) = v60;
  *(v28 + 32) = v42;
  v43 = v50;
  *(v28 + 56) = v64;
  *(v28 + 64) = v51;
  *(v28 + 72) = v43;
  *(v28 + 80) = v31;
  *(v28 + 81) = v32;
  v44 = v54;
  *(v28 + 88) = v53;
  *(v28 + 96) = v44;
  v45 = v57;
  *(v28 + 104) = v55;
  *(v28 + 112) = v45;
  *(v28 + 144) = v59;
  v46 = v63;
  *(v28 + 120) = v61;
  *(v28 + 128) = v46;
  *(v28 + 136) = v65 & 1;
  return v28;
}

uint64_t Badge.init(id:type:key:heading:caption:longCaption:content:leadingValue:style:accessibilityTitle:accessibilityCaption:clickAction:artwork:trailingArtwork:isMonochrome:impressionMetrics:)(uint64_t a1, char *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned __int8 a20, uint64_t a21)
{
  v22 = v21;
  v63 = a8;
  v61 = a7;
  v59 = a6;
  v57 = a5;
  v55 = a4;
  v51 = a21;
  v64 = a20;
  v62 = a19;
  v60 = a18;
  v58 = a17;
  v56 = a16;
  v54 = a15;
  v53 = a14;
  v52 = a13;
  v49 = a10;
  v50 = a9;
  v26 = sub_24F91F6B8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a2;
  v31 = *a3;
  v32 = *a11;
  v33 = *a12;
  *(v22 + 152) = 0u;
  *(v22 + 168) = 0u;
  sub_24E60169C(a1, &v67, &qword_27F235830);
  if (*(&v68 + 1))
  {
    v70 = v67;
    v71 = v68;
    v72 = v69;
  }

  else
  {
    sub_24F91F6A8();
    v34 = v32;
    v35 = sub_24F91F668();
    HIDWORD(v48) = v31;
    v36 = v33;
    v37 = v30;
    v39 = v38;
    (*(v27 + 8))(v29, v26);
    v65 = v35;
    v66 = v39;
    v32 = v34;
    v30 = v37;
    v33 = v36;
    LOBYTE(v31) = BYTE4(v48);
    sub_24F92C7F8();
    sub_24E601704(&v67, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v40 = v71;
  *(v22 + 184) = v70;
  *(v22 + 200) = v40;
  *(v22 + 216) = v72;
  sub_24E65E0D4(v51, v22 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics);
  *(v22 + 16) = v30;
  *(v22 + 17) = v31;
  v41 = v57;
  *(v22 + 40) = v55;
  *(v22 + 48) = v41;
  v42 = v61;
  *(v22 + 24) = v59;
  *(v22 + 32) = v42;
  v43 = v49;
  *(v22 + 56) = v63;
  *(v22 + 64) = v50;
  *(v22 + 72) = v43;
  *(v22 + 80) = v32;
  *(v22 + 81) = v33;
  v44 = v53;
  *(v22 + 88) = v52;
  *(v22 + 96) = v44;
  v45 = v56;
  *(v22 + 104) = v54;
  *(v22 + 112) = v45;
  *(v22 + 144) = v58;
  v46 = v62;
  *(v22 + 120) = v60;
  *(v22 + 128) = v46;
  *(v22 + 136) = v64 & 1;
  return v22;
}

unint64_t Badge.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v150 = a2;
  v135 = sub_24F91F6B8();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_24F9285B8();
  v149 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v141 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v143 = &v114 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v138 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v140 = &v114 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v114 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v137 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v136 = &v114 - v18;
  MEMORY[0x28223BE20](v19);
  v139 = &v114 - v20;
  MEMORY[0x28223BE20](v21);
  v146 = &v114 - v22;
  MEMORY[0x28223BE20](v23);
  v147 = &v114 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v114 - v26;
  v28 = sub_24F928E68();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_24F928398();
  sub_24F9281F8();
  v33 = v28;
  v36 = *(v15 + 8);
  v34 = v15 + 8;
  v35 = v36;
  (v36)(v27, v14);
  if ((*(v29 + 48))(v13, 1, v33) == 1)
  {
    sub_24E601704(v13, qword_27F221C40);
    v37 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v38 = 0x746E65746E6F63;
    v39 = v148;
    v38[1] = 0xE700000000000000;
    v38[2] = v39;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    (*(v149 + 8))(v150, v157);
    (v35)(v32, v14);
    return v34;
  }

  v144 = v32;
  v145 = v14;
  v142 = v34;
  v34 = v157;
  (*(v29 + 32))(v31, v13, v33);
  v40 = v33;
  v41 = sub_24F928E48();
  if (!v41)
  {
    v48 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v49 = MEMORY[0x277D84F90];
    *v50 = 0x746E65746E6F63;
    v50[1] = 0xE700000000000000;
    v50[2] = v148;
    v50[3] = v49;
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D22540], v48);
    swift_willThrow();
    (*(v149 + 8))(v150, v34);
    (v35)(v144, v145);
    (*(v29 + 8))(v31, v40);
    return v34;
  }

  v130 = v41;
  v131 = v31;
  v132 = v33;
  v42 = v147;
  v43 = v144;
  sub_24F928398();
  sub_24F025168();
  sub_24F928248();
  v44 = v145;
  (v35)(v42, v145);
  if (v156 == 15)
  {
    v45 = v34;

    v34 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v46 = 1701869940;
    v47 = v148;
    v46[1] = 0xE400000000000000;
    v46[2] = v47;
    (*(*(v34 - 8) + 104))(v46, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    (*(v149 + 8))(v150, v45);
    (v35)(v43, v44);
    (*(v29 + 8))(v131, v132);
    return v34;
  }

  v128 = v29;
  v126 = v156;
  sub_24F928398();
  sub_24F0251BC();
  sub_24F928248();
  (v35)(v42, v44);
  v125 = v156;
  sub_24F928398();
  v124 = sub_24F928348();
  v129 = v51;
  (v35)(v42, v44);
  sub_24F928398();
  v123 = sub_24F928348();
  v53 = v52;
  (v35)(v42, v44);
  sub_24F928398();
  v122 = sub_24F928348();
  v34 = v54;
  (v35)(v42, v44);
  v55 = v146;
  sub_24F928398();
  sub_24F928348();
  v57 = v56;
  (v35)(v55, v44);
  if (!v57)
  {

    v64 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548]);
    v66 = v35;
    swift_allocError();
    v67 = v65;
    strcpy(v65, "leadingValue");
    *(v65 + 13) = 0;
    *(v65 + 14) = -5120;
LABEL_16:
    *(v65 + 16) = v148;
    v70 = MEMORY[0x277D22530];
LABEL_17:
    (*(*(v64 - 8) + 104))(v67, *v70, v64);
    swift_willThrow();
    (*(v149 + 8))(v150, v157);
    v66(v43, v44);
    goto LABEL_19;
  }

  v127 = v53;
  v146 = v34;
  v34 = sub_24F92CB88();

  if (v34 >= 3)
  {

    v64 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548]);
    v66 = v35;
    swift_allocError();
    v67 = v68;
    v69 = MEMORY[0x277D84F90];
    strcpy(v68, "leadingValue");
    *(v68 + 13) = 0;
    *(v68 + 14) = -5120;
    *(v68 + 16) = v148;
    *(v68 + 24) = v69;
    v70 = MEMORY[0x277D22540];
    goto LABEL_17;
  }

  v121 = v34;
  v34 = 0x656C797473;
  v58 = v139;
  sub_24F928398();
  sub_24F928348();
  v60 = v59;
  (v35)(v58, v44);
  if (!v60)
  {

    v64 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548]);
    v66 = v35;
    swift_allocError();
    v67 = v65;
    *v65 = 0x656C797473;
    *(v65 + 8) = 0xE500000000000000;
    goto LABEL_16;
  }

  v61 = sub_24F92CB88();

  if (v61)
  {
    v63 = v144;
    v62 = v145;
    if (v61 != 1)
    {

      v90 = sub_24F92AC38();
      sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548]);
      swift_allocError();
      v91 = MEMORY[0x277D84F90];
      *v92 = 0x656C797473;
      v92[1] = 0xE500000000000000;
      v92[2] = v148;
      v92[3] = v91;
      (*(*(v90 - 8) + 104))(v92, *MEMORY[0x277D22540], v90);
      swift_willThrow();
      (*(v149 + 8))(v150, v157);
      (v35)(v63, v62);
      goto LABEL_19;
    }

    v117 = 1;
  }

  else
  {
    v117 = 0;
    v62 = v145;
  }

  v72 = v149;
  v73 = v147;
  sub_24F928398();
  v116 = sub_24F928348();
  v120 = v74;
  (v35)(v73, v62);
  sub_24F928398();
  v115 = sub_24F928348();
  v119 = v75;
  (v35)(v73, v62);
  sub_24F929608();
  sub_24F928398();
  v76 = *(v72 + 16);
  v77 = v150;
  v78 = v157;
  v76(v143, v150, v157);
  sub_24F929548();
  v79 = v141;
  v76(v141, v77, v78);
  type metadata accessor for Action();
  sub_24F928398();
  v118 = static Action.tryToMakeInstance(byDeserializing:using:)(v73, v79);
  v139 = v35;
  (v35)(v73, v145);
  v80 = v76;
  type metadata accessor for Artwork();
  sub_24F928398();
  v76(v143, v79, v78);
  sub_24F025948(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  if (v126 == 4 && !v156)
  {

    v81 = sub_24F92AC38();
    sub_24F025948(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v82 = 0x6B726F77747261;
    v82[1] = 0xE700000000000000;
    v82[2] = v148;
    (*(*(v81 - 8) + 104))(v82, *MEMORY[0x277D22530], v81);
    swift_willThrow();

    v34 = *(v149 + 8);
    (v34)(v150, v78);
    (v139)(v144, v145);
    (v34)(v141, v78);
    sub_24E601704(v140, &qword_27F213E68);
LABEL_19:
    (*(v128 + 8))(v131, v132);
    return v34;
  }

  v148 = v156;
  sub_24F928398();
  v80(v143, v141, v78);
  sub_24F929548();
  v147 = v156;
  v83 = v136;
  sub_24F928398();
  v84 = sub_24F928278();
  v85 = v145;
  v86 = v139;
  (v139)(v83, v145);
  v87 = v137;
  sub_24F928398();
  v88 = sub_24F928348();
  if (v89)
  {
    *&v153 = v88;
    *(&v153 + 1) = v89;
  }

  else
  {
    v93 = v133;
    sub_24F91F6A8();
    v94 = sub_24F91F668();
    v96 = v95;
    (*(v134 + 8))(v93, v135);
    *&v153 = v94;
    *(&v153 + 1) = v96;
  }

  sub_24F92C7F8();
  v86(v87, v85);
  LODWORD(v143) = (v84 == 2) | v84;
  v97 = v138;
  sub_24E60169C(v140, v138, &qword_27F213E68);
  type metadata accessor for Badge();
  v34 = swift_allocObject();
  *(v34 + 152) = 0u;
  *(v34 + 168) = 0u;
  sub_24E60169C(&v156, &v153, &qword_27F235830);
  v98 = v146;
  v99 = v127;
  if (*(&v154 + 1))
  {
    v100 = v154;
    *(v34 + 184) = v153;
    *(v34 + 200) = v100;
    *(v34 + 216) = v155;
  }

  else
  {
    v101 = v133;
    sub_24F91F6A8();
    v102 = sub_24F91F668();
    v104 = v103;
    (*(v134 + 8))(v101, v135);
    v151 = v102;
    v152 = v104;
    sub_24F92C7F8();
    sub_24E601704(&v153, &qword_27F235830);
  }

  v105 = v145;
  v106 = v128;
  v107 = *(v149 + 8);
  v108 = v157;
  v107(v150, v157);
  (v139)(v144, v105);
  sub_24E601704(&v156, &qword_27F235830);
  v107(v141, v108);
  sub_24E601704(v140, &qword_27F213E68);
  (*(v106 + 8))(v131, v132);
  sub_24E65E0D4(v97, v34 + OBJC_IVAR____TtC12GameStoreKit5Badge_impressionMetrics);
  *(v34 + 16) = v126;
  *(v34 + 17) = v125;
  v109 = v129;
  *(v34 + 40) = v124;
  *(v34 + 48) = v109;
  *(v34 + 24) = v123;
  *(v34 + 32) = v99;
  v110 = v130;
  *(v34 + 64) = v98;
  *(v34 + 72) = v110;
  *(v34 + 56) = v122;
  *(v34 + 80) = v121;
  *(v34 + 81) = v117;
  v111 = v120;
  *(v34 + 88) = v116;
  *(v34 + 96) = v111;
  v112 = v119;
  *(v34 + 104) = v115;
  *(v34 + 112) = v112;
  *(v34 + 144) = v118;
  v113 = v147;
  *(v34 + 120) = v148;
  *(v34 + 128) = v113;
  *(v34 + 136) = v143 & 1;
  return v34;
}