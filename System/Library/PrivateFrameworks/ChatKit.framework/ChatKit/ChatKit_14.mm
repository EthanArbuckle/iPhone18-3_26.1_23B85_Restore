void sub_1908E7214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = sub_190D56F10();
  if (!a2)
  {

    goto LABEL_9;
  }

  if (v10 == a1 && v11 == a2)
  {

    goto LABEL_17;
  }

  v13 = sub_190D58760();

  if ((v13 & 1) == 0)
  {
LABEL_9:
    v14 = sub_190D56F10();
    if (a4)
    {
      if (v14 == a3 && v15 == a4)
      {

LABEL_29:
        v22 = (a5 & 1) == 0;
        v23 = 5;
        v24 = 9;
        goto LABEL_32;
      }

      v17 = sub_190D58760();

      if (v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
    }

    v22 = (a5 & 1) == 0;
    v23 = 6;
    v24 = 10;
    goto LABEL_32;
  }

LABEL_17:
  v18 = sub_190D56F10();
  if (!a4)
  {

    goto LABEL_27;
  }

  if (v18 != a3 || v19 != a4)
  {
    v21 = sub_190D58760();

    if (v21)
    {
      goto LABEL_31;
    }

LABEL_27:
    v22 = (a5 & 1) == 0;
    v23 = 4;
    v24 = 8;
    goto LABEL_32;
  }

LABEL_31:
  v22 = (a5 & 1) == 0;
  v23 = 3;
  v24 = 7;
LABEL_32:
  if (v22)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = [objc_opt_self() sharedInstance];
  if (v26)
  {
    v27 = v26;
    v28 = *MEMORY[0x1E69A7390];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    v30 = v28;
    sub_190D58230();
    *(inited + 96) = MEMORY[0x1E69E6810];
    *(inited + 72) = v25;
    sub_190821644(inited);
    swift_setDeallocating();
    sub_19022EEA4(inited + 32, &qword_1EAD53A00);
    v31 = sub_190D56D60();

    [v27 trackEvent:v30 withDictionary:v31];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1908E74E0()
{
  swift_getKeyPath();
  sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  return swift_unknownObjectWeakLoadStrong();
}

double sub_1908E7648(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  return *(v2 + *a2);
}

double sub_1908E76FC@<D0>(uint64_t *a1@<X0>, void *a2@<X4>, double *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  result = *(v5 + *a2);
  *a3 = result;
  return result;
}

void *sub_1908E7800(void *result, double a2)
{
  if (*(v2 + *result) == a2)
  {
    *(v2 + *result) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E7A74()
{
  swift_getKeyPath();
  sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  return *(v0 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay);
}

uint64_t sub_1908E7B2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  v5 = *(v3 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8);
  v6 = *(v3 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 10);
  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay);
  *(a2 + 10) = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1908E7C2C(uint64_t result, int a2)
{
  v3 = v2 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay;
  v4 = a2 & 0xFF00;
  if ((*(v2 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8) & 0xFF00) == 0x300)
  {
    if (v4 == 768)
    {
LABEL_3:
      *v3 = result;
      *(v3 + 8) = a2;
      *(v3 + 10) = (a2 & 0xFFFFFFu) >> 16;
      return result;
    }
  }

  else if (v4 != 768)
  {
    v6 = (*(v2 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8) | (*(v2 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 10) << 16)) >> 16;
    if (*(v2 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8))
    {
      if ((a2 & 1) != 0 && BYTE1(a2) == HIBYTE(*(v2 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8)) && BYTE2(a2) == v6)
      {
        goto LABEL_3;
      }
    }

    else if ((a2 & 1) == 0)
    {
      v8 = *v3 == result && BYTE1(a2) == HIBYTE(*(v2 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8));
      if (v8 && BYTE2(a2) == v6)
      {
        goto LABEL_3;
      }
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C10();
}

uint64_t sub_1908E7DD0(uint64_t result, uint64_t a2, int a3)
{
  v3 = result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay;
  *v3 = a2;
  *(v3 + 10) = BYTE2(a3);
  *(v3 + 8) = a3;
  return result;
}

id sub_1908E7DF0(__int128 *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay];
  *v3 = 0;
  v3[10] = 0;
  *(v3 + 4) = 768;
  sub_190D51C50();
  v4 = &v1[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues];
  v5 = a1[3];
  v6 = a1[4];
  *(v4 + 2) = a1[2];
  *(v4 + 3) = v5;
  v8 = *a1;
  v7 = a1[1];
  *(v4 + 4) = v6;
  *v4 = v8;
  *(v4 + 1) = v7;
  *&v8 = *(a1 + 1);
  *&v1[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleX] = *a1;
  *&v1[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleY] = v8;
  *&v8 = *(a1 + 3);
  *&v1[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationVerticalOffset] = *(a1 + 2);
  *&v1[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationOpacity] = v8;
  *&v1[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationBlur] = *(a1 + 4);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TapbackAttributionAnimationController();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1908E7EF0()
{
  if (qword_1EAD51D58 != -1)
  {
    swift_once();
  }

  v0 = sub_190D56550();
  MEMORY[0x1EEE9AC00](v0);
  sub_190D53E40();

  if (qword_1EAD51D60 != -1)
  {
    swift_once();
  }

  MEMORY[0x1EEE9AC00](qword_1EAD9E1C8);
  sub_190D53E40();
  if (qword_1EAD51D68 != -1)
  {
    swift_once();
  }

  MEMORY[0x1EEE9AC00](qword_1EAD9E1D0);
  sub_190D53E40();
  if (qword_1EAD51D50 != -1)
  {
    swift_once();
  }

  v1 = sub_190D56550();
  MEMORY[0x1EEE9AC00](v1);
  sub_190D53E40();

  if (qword_1EAD51D70 != -1)
  {
    swift_once();
  }

  v2 = sub_190D56550();
  MEMORY[0x1EEE9AC00](v2);
  sub_190D53E40();
}

uint64_t sub_1908E81FC(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 40);
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleX) == v1)
  {
    *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleX) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E8334(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 48);
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleY) == v1)
  {
    *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleY) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E846C(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 56);
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationVerticalOffset) == v1)
  {
    *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationVerticalOffset) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E85A4(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 64);
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationOpacity) == v1)
  {
    *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationOpacity) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E86DC(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 72);
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationBlur) == v1)
  {
    *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationBlur) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E8814()
{
  if (qword_1EAD51D80 != -1)
  {
    swift_once();
  }

  MEMORY[0x1EEE9AC00](qword_1EAD9E1E8);
  sub_190D53E40();
  if (qword_1EAD51D88 != -1)
  {
    swift_once();
  }

  v0 = sub_190D56550();
  MEMORY[0x1EEE9AC00](v0);
  sub_190D53E40();

  if (qword_1EAD51D90 != -1)
  {
    swift_once();
  }

  v1 = sub_190D56550();
  MEMORY[0x1EEE9AC00](v1);
  sub_190D53E40();

  if (qword_1EAD51D78 != -1)
  {
    swift_once();
  }

  v2 = sub_190D56550();
  MEMORY[0x1EEE9AC00](v2);
  sub_190D53E40();

  if (qword_1EAD51D98 != -1)
  {
    swift_once();
  }

  v3 = sub_190D56550();
  MEMORY[0x1EEE9AC00](v3);
  sub_190D53E40();
}

void *sub_1908E8B2C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 8);
  swift_getKeyPath();
  sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result estimatedAttributionViewDismissalSizeForAnimationController_];
    v5 = v4;
    v7 = v6;
    result = swift_unknownObjectRelease();
    v2 = v2 * v7 / v5;
  }

  if (*(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleX) == v2)
  {
    *(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleX) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E8CE8(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 8);
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleY) == v1)
  {
    *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleY) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E8E20(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 16);
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationVerticalOffset) == v1)
  {
    *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationVerticalOffset) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E8F58(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 24);
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationOpacity) == v1)
  {
    *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationOpacity) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E9090(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController_presentationValues + 32);
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationBlur) == v1)
  {
    *(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationBlur) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908E91C8()
{
  v1 = sub_190D56770();
  v23 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D567A0();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D567F0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  if (qword_1EAD51D48 != -1)
  {
    swift_once();
  }

  MEMORY[0x1EEE9AC00](qword_1EAD9E1B0);
  *(&v19 - 2) = v0;
  sub_190D53E40();
  sub_1908E9B68();
  v14 = sub_190D57870();
  sub_190D567B0();
  sub_190D56820();
  v20 = *(v8 + 8);
  v20(v11, v7);
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  aBlock[4] = sub_1908E9BB4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_30;
  v16 = _Block_copy(aBlock);
  v17 = v0;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1908E9BE4(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF30E0](v13, v6, v3, v16);
  _Block_release(v16);

  (*(v23 + 8))(v3, v1);
  (*(v21 + 8))(v6, v22);
  return (v20)(v13, v7);
}

uint64_t sub_1908E95F8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  if ((*(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8) & 0xFF00) == 0x300)
  {
    v2 = *(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8) | (*(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 10) << 16);
  }

  else
  {
    v2 = *(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8) & 1 | (HIBYTE(*(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8)) << 8) | (HIBYTE(*(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8)) << 16);
  }

  return sub_1908E7C2C(*(a1 + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay), v2);
}

uint64_t sub_1908E96DC(uint64_t result)
{
  v1 = result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay;
  if (*(result + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 9) << 8 == 768)
  {
    *v1 = 0;
    *(v1 + 10) = 0;
    *(v1 + 8) = 768;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908E9BE4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
    sub_190D51C10();
  }

  return result;
}

id sub_1908E9840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackAttributionAnimationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TapbackAttributionAnimationController()
{
  result = qword_1EAD56690;
  if (!qword_1EAD56690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1908E9948()
{
  result = sub_190D51C60();
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

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TapbackAttributionAnimationController.EnlargedTapbackOverlay(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 11))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TapbackAttributionAnimationController.EnlargedTapbackOverlay(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

BOOL sub_1908E9B04(uint64_t a1, int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    result = 0;
    if ((a4 & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

  result = 0;
  if ((a4 & 1) == 0 && a1 == a3)
  {
LABEL_6:
    if (BYTE1(a4) == BYTE1(a2))
    {
      return ((a4 ^ a2) & 0xFF0000) == 0;
    }
  }

  return result;
}

unint64_t sub_1908E9B68()
{
  result = qword_1EAD46670;
  if (!qword_1EAD46670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD46670);
  }

  return result;
}

void sub_1908E9BBC()
{
  v1 = *(v0 + 34);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay;
  *v3 = *(v0 + 24);
  *(v3 + 8) = v2;
  *(v3 + 10) = v1;
}

uint64_t sub_1908E9BE4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1908E9C2C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationBlur) = result;
  return result;
}

double sub_1908E9C44()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationOpacity) = result;
  return result;
}

double sub_1908E9C5C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationVerticalOffset) = result;
  return result;
}

double sub_1908E9C74()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleY) = result;
  return result;
}

double sub_1908E9C8C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleX) = result;
  return result;
}

id sub_1908E9E4C()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    sub_190D51210();

    sub_190D56EE0();

    v2 = [objc_opt_self() sharedApplication];
    [v2 userInterfaceLayoutDirection];

    v3 = sub_190D570F0();
    sub_190D57010();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1908E9FA4()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    sub_190D51210();

    sub_190D56EE0();

    v2 = [objc_opt_self() sharedApplication];
    [v2 userInterfaceLayoutDirection];

    v3 = sub_190D570F0();
    sub_190D57010();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908EA100(uint64_t a1, uint64_t a2)
{
  sub_190D52690();
  MEMORY[0x193AF28B0](95, 0xE100000000000000);
  v2 = sub_190D518C0();
  v4 = v3;
  sub_190D52690();
  MEMORY[0x193AF28B0](v2, v4);

  sub_1908EA394();
  v5 = sub_190D57D40();
  if (!v5)
  {
    v5 = [objc_opt_self() mainBundle];
  }

  v6 = v5;
  v7 = sub_190D51210();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
  }

  else
  {
    v10 = sub_190D58760();

    if ((v10 & 1) == 0)
    {
      return v7;
    }
  }

  v11 = sub_190D57D40();
  if (!v11)
  {
    v11 = [objc_opt_self() mainBundle];
  }

  v12 = v11;
  sub_190D51210();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_190DD1D90;
  v14 = sub_190D51900();
  v16 = v15;
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_19081EA10();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = sub_190D56EE0();

  return v17;
}

unint64_t sub_1908EA394()
{
  result = qword_1EAD566A8;
  if (!qword_1EAD566A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD566A8);
  }

  return result;
}

uint64_t sub_1908EA3E0(uint64_t a1)
{
  v2 = qword_1EAD629B0;
  if (*(v1 + qword_1EAD629B0) == (a1 & 1))
  {
    *(v1 + qword_1EAD629B0) = a1 & 1;
    MEMORY[0x1EEE9AC00](a1);
    _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_1908EE130(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C20();

    if ((*(v1 + v2) & 1) == 0)
    {
      return sub_1908EADC0(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_1908EE130(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908EA658(uint64_t a1)
{
  v2 = qword_1EAD629B0;
  if (*(v1 + qword_1EAD629B0) == (a1 & 1))
  {
    *(v1 + qword_1EAD629B0) = a1 & 1;
    MEMORY[0x1EEE9AC00](a1);
    _s4LinkVMa(0);
    sub_1908EE130(&qword_1EAD555A8, _s4LinkVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C20();

    if ((*(v1 + v2) & 1) == 0)
    {
      return sub_1908EAF94(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    _s4LinkVMa(0);
    sub_1908EE130(&qword_1EAD555A8, _s4LinkVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908EA8D0(uint64_t a1)
{
  v2 = qword_1EAD629B0;
  if (*(v1 + qword_1EAD629B0) == (a1 & 1))
  {
    *(v1 + qword_1EAD629B0) = a1 & 1;
    MEMORY[0x1EEE9AC00](a1);
    _s10WalletPassVMa(0);
    sub_1908EE130(&qword_1EAD555A0, _s10WalletPassVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C20();

    if ((*(v1 + v2) & 1) == 0)
    {
      return sub_1908EB168(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    _s10WalletPassVMa(0);
    sub_1908EE130(&qword_1EAD555A0, _s10WalletPassVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908EAB48(uint64_t a1)
{
  v2 = qword_1EAD629B0;
  if (*(v1 + qword_1EAD629B0) == (a1 & 1))
  {
    *(v1 + qword_1EAD629B0) = a1 & 1;
    MEMORY[0x1EEE9AC00](a1);
    _s8LocationVMa(0);
    sub_1908EE130(&qword_1EAD55598, _s8LocationVMa);
    swift_getKeyPath();
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C20();

    if ((*(v1 + v2) & 1) == 0)
    {
      return sub_1908EB33C(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    _s8LocationVMa(0);
    sub_1908EE130(&qword_1EAD55598, _s8LocationVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908EADC0(uint64_t a1)
{
  v3 = qword_1EAD629B8;
  v4 = sub_190D52690();
  v5 = sub_1909A7A08(v4, a1);

  if (v5)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1908ED9B4(v7);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_1908EE130(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C10();
  }
}

uint64_t sub_1908EAF94(uint64_t a1)
{
  v3 = qword_1EAD629B8;
  v4 = sub_190D52690();
  v5 = sub_1909A7A48(v4, a1);

  if (v5)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1908EDAFC(v7);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    _s4LinkVMa(0);
    sub_1908EE130(&qword_1EAD555A8, _s4LinkVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C10();
  }
}

uint64_t sub_1908EB168(uint64_t a1)
{
  v3 = qword_1EAD629B8;
  v4 = sub_190D52690();
  v5 = sub_1909A7E1C(v4, a1);

  if (v5)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1908EDC44(v7);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    _s10WalletPassVMa(0);
    sub_1908EE130(&qword_1EAD555A0, _s10WalletPassVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
    sub_190D51C10();
  }
}

uint64_t sub_1908EB33C(uint64_t a1)
{
  v3 = qword_1EAD629B8;
  v4 = sub_190D52690();
  v5 = sub_1909A7E5C(v4, a1);

  if (v5)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
    sub_1908EDD8C(v7);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    _s8LocationVMa(0);
    sub_1908EE130(&qword_1EAD55598, _s8LocationVMa);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
    sub_190D51C10();
  }
}

id sub_1908EB510(char a1)
{
  result = CKFrameworkBundle();
  v3 = result;
  if (!a1)
  {
    if (result)
    {
      goto LABEL_8;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    if (result)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (result)
  {
LABEL_8:
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_190D56F10();
    return v7;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1908EB664@<X0>(uint64_t *a1@<X8>)
{
  sub_1908ED498();
  result = sub_190D529A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1908EB6A4()
{
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1908EB748@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1908EB7F4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
    sub_190D51C10();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  _s14descr1F03EACB9V9ViewModelCMa(0);
  v3 = v2;
  v4 = sub_190D57D90();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1908EB98C()
{
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1908EBA40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1908EBAFC(unsigned __int8 a1)
{
  result = swift_beginAccess();
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
    sub_190D51C10();
  }

  return result;
}

void (*sub_1908EBC18(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7ChatKit21DetailsAttachmentsTab___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  *v4 = v1;
  swift_getKeyPath();
  sub_190D51C40();

  v4[7] = sub_1908D689C();
  return sub_1908EBD50;
}

void sub_1908EBD50(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_190D51C30();

  free(v1);
}

uint64_t sub_1908EBDE4()
{
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  return *(v0 + 32);
}

uint64_t sub_1908EBE84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1908EBF2C(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908EC030()
{
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  MEMORY[0x1EEE9AC00](Strong);
  _s14descr1F03EACB9V10AttachmentVMa(0);
  sub_1908EE130(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
  sub_190D51C20();

  v2 = v1[qword_1EAD629B0];

  return v2;
}

void sub_1908EC1D0(uint64_t a1)
{
  sub_19083B854(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560C8);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    if (*(v1 + 24) != v5)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
      sub_190D51C10();
    }

    swift_getKeyPath();
    sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
    sub_190D51C20();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_190843EFC(v5);
    }
  }
}

id sub_1908EC3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = 1;
    goto LABEL_8;
  }

  v5 = Strong;
  v31 = a3;
  MEMORY[0x1EEE9AC00](Strong);
  _s14descr1F03EACB9V10AttachmentVMa(0);
  sub_1908EE130(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
  sub_190D51C20();

  v6 = sub_190D56ED0();
  v30 = objc_opt_self();
  [v30 systemImageNamed_];

  result = CKFrameworkBundle();
  if (result)
  {
    v8 = result;
    sub_1908D84D0();
    v9 = sub_190D56ED0();
    v10 = sub_190D56ED0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:{v10, "AB_FILTER_SCREENSHOTS"}];

    sub_190D56F10();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a1;
    v13[4] = a2;
    sub_19029063C(a1);
    v14 = sub_190D57DC0();

    swift_getKeyPath();
    sub_190D51C20();

    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {

      v28 = 1;
      a3 = v31;
      goto LABEL_8;
    }

    v16 = v15;
    MEMORY[0x1EEE9AC00](v15);
    swift_getKeyPath();
    sub_190D51C20();

    v17 = sub_190D56ED0();
    v18 = [v30 systemImageNamed_];

    result = CKFrameworkBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_190D56ED0();
      v21 = sub_190D56ED0();
      v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

      sub_190D56F10();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a1;
      v24[4] = a2;
      sub_19029063C(a1);
      v25 = sub_190D57DC0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_190DD55F0;
      *(v26 + 32) = v14;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_190DD55F0;
      *(v27 + 32) = v25;
      a3 = v31;
      sub_190D52C00();
      v28 = 0;
LABEL_8:
      v29 = sub_190D52C10();
      return (*(*(v29 - 8) + 56))(a3, v28, 1, v29);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1908ECA18()
{
  MEMORY[0x193AF7B30](v0 + 16);
  v1 = OBJC_IVAR____TtC7ChatKit21DetailsAttachmentsTab___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsAttachmentsTab()
{
  result = qword_1EAD45A98;
  if (!qword_1EAD45A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1908ECB10()
{
  result = sub_190D51C60();
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

unint64_t sub_1908ECC1C()
{
  result = qword_1EAD45AC0;
  if (!qword_1EAD45AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45AC0);
  }

  return result;
}

unint64_t sub_1908ECC74()
{
  result = qword_1EAD45AD0;
  if (!qword_1EAD45AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45AD0);
  }

  return result;
}

unint64_t sub_1908ECCCC()
{
  result = qword_1EAD45AB8;
  if (!qword_1EAD45AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45AB8);
  }

  return result;
}

unint64_t sub_1908ECD24()
{
  result = qword_1EAD45AC8;
  if (!qword_1EAD45AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45AC8);
  }

  return result;
}

id sub_1908ECD78()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    v5 = sub_190D56F10();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908ECE4C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  result = swift_beginAccess();
  *a1 = *(v1 + 24);
  return result;
}

void (*sub_1908ECF10(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1908EBC18(v2);
  return sub_190854AE0;
}

void sub_1908ECF80()
{
  type metadata accessor for DetailsAttachmentsTab();

  JUMPOUT(0x193AEE5C0);
}

void sub_1908ECFC0(char a1)
{
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1908EA3E0(a1 & 1);
  }
}

void (*sub_1908ED07C(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC7ChatKit21DetailsAttachmentsTab___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    _s14descr1F03EACB9V10AttachmentVMa(0);
    sub_1908EE130(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
    swift_getKeyPath();
    *v4 = v6;
    sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
    sub_190D51C20();

    v7 = v6[qword_1EAD629B0];
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return sub_1908ED274;
}

void sub_1908ED274(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  *v1 = v1[1];
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1908EA3E0(v2);
  }

  free(v1);
}

BOOL sub_1908ED30C()
{
  swift_getKeyPath();
  sub_1908EE130(&qword_1EAD45AA8, type metadata accessor for DetailsAttachmentsTab);
  sub_190D51C20();

  swift_beginAccess();
  return *(v0 + 24) != 0;
}

uint64_t sub_1908ED3D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DetailsAttachmentsTab();
  sub_1908EE130(&qword_1EAD45AB0, type metadata accessor for DetailsAttachmentsTab);
  result = sub_190D52DD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1908ED498()
{
  result = qword_1EAD45AD8;
  if (!qword_1EAD45AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45AD8);
  }

  return result;
}

uint64_t sub_1908ED4EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190CD0AF8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1908ED544(uint64_t a1, char a2)
{
  v3 = qword_1EAD629B0;
  *(a1 + qword_1EAD629B0) = a2;
  _s14descr1F03EACB9V10AttachmentVMa(0);
  sub_1908EE130(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
  sub_190D51C20();

  if ((*(a1 + v3) & 1) == 0)
  {
    return sub_1908EADC0(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1908ED678(uint64_t a1, char a2)
{
  v3 = qword_1EAD629B0;
  *(a1 + qword_1EAD629B0) = a2;
  _s4LinkVMa(0);
  sub_1908EE130(&qword_1EAD555A8, _s4LinkVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
  sub_190D51C20();

  if ((*(a1 + v3) & 1) == 0)
  {
    return sub_1908EAF94(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1908ED78C(uint64_t a1, char a2)
{
  v3 = qword_1EAD629B0;
  *(a1 + qword_1EAD629B0) = a2;
  _s10WalletPassVMa(0);
  sub_1908EE130(&qword_1EAD555A0, _s10WalletPassVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  if ((*(a1 + v3) & 1) == 0)
  {
    return sub_1908EB168(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1908ED8A0(uint64_t a1, char a2)
{
  v3 = qword_1EAD629B0;
  *(a1 + qword_1EAD629B0) = a2;
  _s8LocationVMa(0);
  sub_1908EE130(&qword_1EAD55598, _s8LocationVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  if ((*(a1 + v3) & 1) == 0)
  {
    return sub_1908EB33C(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void sub_1908ED9B4(uint64_t a1)
{
  _s14descr1F03EACB9V10AttachmentVMa(0);
  sub_1908EE130(&unk_1EAD555B0, _s14descr1F03EACB9V10AttachmentVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD543B0, &qword_1EAD543B8);
  sub_190D51C20();

  if ((*(*(v1 + qword_1EAD629B8) + 16) == 0) == (*(a1 + 16) != 0) && *(v1 + qword_1EAD629A0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_190D527F0();
    }
  }
}

void sub_1908EDAFC(uint64_t a1)
{
  _s4LinkVMa(0);
  sub_1908EE130(&qword_1EAD555A8, _s4LinkVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
  sub_190D51C20();

  if ((*(*(v1 + qword_1EAD629B8) + 16) == 0) == (*(a1 + 16) != 0) && *(v1 + qword_1EAD629A0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_190D527F0();
    }
  }
}

void sub_1908EDC44(uint64_t a1)
{
  _s10WalletPassVMa(0);
  sub_1908EE130(&qword_1EAD555A0, _s10WalletPassVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566D0, &qword_1EAD566D8);
  sub_190D51C20();

  if ((*(*(v1 + qword_1EAD629B8) + 16) == 0) == (*(a1 + 16) != 0) && *(v1 + qword_1EAD629A0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_190D527F0();
    }
  }
}

void sub_1908EDD8C(uint64_t a1)
{
  _s8LocationVMa(0);
  sub_1908EE130(&qword_1EAD55598, _s8LocationVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566E0, &qword_1EAD566E8);
  sub_190D51C20();

  if ((*(*(v1 + qword_1EAD629B8) + 16) == 0) == (*(a1 + 16) != 0) && *(v1 + qword_1EAD629A0))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_190D527F0();
    }
  }
}

uint64_t sub_1908EDED4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_190CD2674();

  return sub_190D52690();
}

id sub_1908EDF68()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    v5 = sub_190D56F10();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908EE084(void (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v3 + qword_1EAD629B8);
  *(v3 + qword_1EAD629B8) = *(v1 + 24);
  sub_190D52690();
  a1(v4);
}

uint64_t sub_1908EE130(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1908EE27C()
{
  v1 = OBJC_IVAR___CKMaterialCloseButton____lazy_storage___materialBackgroundView;
  v2 = *&v0[OBJC_IVAR___CKMaterialCloseButton____lazy_storage___materialBackgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___CKMaterialCloseButton____lazy_storage___materialBackgroundView];
  }

  else
  {
    v4 = v0;
    type metadata accessor for CKUnborderedBackdropMaterialView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = [v0 materialColor];
    v7 = *&v5[OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_color];
    *&v5[OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_color] = v6;
    sub_1902188FC(0, &qword_1EAD46520);
    v8 = v6;
    if ((sub_190D57D90() & 1) == 0)
    {
      sub_1908F0448();
    }

    v9 = *&v4[v1];
    *&v4[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void *CKMaterialCloseButton.symbolImage.getter()
{
  v1 = OBJC_IVAR___CKMaterialCloseButton_symbolImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CKMaterialCloseButton.symbolImage.setter(void *a1)
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_symbolImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1908EE56C(v4);
}

void sub_1908EE56C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKMaterialCloseButton_symbolImage;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5)
  {
    if (a1)
    {
      sub_1902188FC(0, &qword_1EAD44EB0);
      v6 = v5;
      v7 = a1;
      v8 = sub_190D57D90();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = [v2 buttonImageView];
  v10 = *&v2[v4];
  if (v10)
  {
    v11 = [v10 imageWithRenderingMode_];
  }

  else
  {
    v11 = 0;
  }

  [v9 setImage_];

  v12 = [v2 buttonImageView];
  v13 = [v2 symbolColor];
  [v12 setTintColor_];

  [v2 setNeedsLayout];
}

id CKMaterialCloseButton.symbolColor.getter()
{
  v1 = OBJC_IVAR___CKMaterialCloseButton_symbolColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CKMaterialCloseButton.symbolColor.setter(void *a1)
{
  sub_1908EFE7C(a1);
}

double CKMaterialCloseButton.cornerRadius.getter()
{
  v1 = OBJC_IVAR___CKMaterialCloseButton_cornerRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

id CKMaterialCloseButton.cornerRadius.setter(double a1)
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_cornerRadius;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  *&v1[v3] = a1;
  if (v5 != a1)
  {
    v6 = [v1 vibrancyBorderView];
    v7 = [v6 layer];

    [v7 setCornerRadius_];
    v8 = [v1 traitCollection];
    [v8 displayScale];
    v10 = v9;

    result = [objc_opt_self() sharedBehaviors];
    if (result)
    {
      v11 = result;
      [result balloonOutlineWidthForScreenScale_];
      v13 = v12;

      v14 = [v1 materialBackgroundView];
      v15 = [v14 layer];

      [v15 setCornerRadius_];
      return [v1 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id CKMaterialCloseButton.materialColor.getter()
{
  v1 = OBJC_IVAR___CKMaterialCloseButton_materialColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CKMaterialCloseButton.materialColor.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKMaterialCloseButton_materialColor;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  sub_1902188FC(0, &qword_1EAD46500);
  v6 = a1;
  if ((sub_190D57D90() & 1) == 0)
  {
    v7 = [v2 materialBackgroundView];
    v8 = *&v2[v4];
    v9 = *&v7[OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_color];
    *&v7[OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_color] = v8;
    sub_1902188FC(0, &qword_1EAD46520);
    v10 = v8;
    if ((sub_190D57D90() & 1) == 0)
    {
      sub_1908F0448();
    }
  }
}

double CKMaterialCloseButton.padding.getter()
{
  v1 = OBJC_IVAR___CKMaterialCloseButton_padding;
  swift_beginAccess();
  return *(v0 + v1);
}

id CKMaterialCloseButton.padding.setter(double a1)
{
  v3 = OBJC_IVAR___CKMaterialCloseButton_padding;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  *&v1[v3] = a1;
  if (v5 != a1)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

id CKMaterialCloseButton.__configuration.getter()
{
  v2.super_class = CKMaterialCloseButton;
  v0 = objc_msgSendSuper2(&v2, sel_configuration);

  return v0;
}

void CKMaterialCloseButton.__configuration.setter(void *a1)
{
  v2.super_class = CKMaterialCloseButton;
  objc_msgSendSuper2(&v2, sel_setConfiguration_, a1);
  sub_1908EEF64();
}

id sub_1908EEF64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  sub_190D57FD0();
  v4 = sub_190D57FB0();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  sub_1908F00B4(v3);
  v6 = [v0 vibrancyBorderView];
  v7 = v6;
  if (v5 == 1)
  {
    [v0 addSubview_];

    v8 = [v0 materialBackgroundView];
    [v0 addSubview_];

    v9 = [v0 buttonImageView];
    [v0 addSubview_];
  }

  else
  {
    [v6 removeFromSuperview];

    v10 = [v0 materialBackgroundView];
    [v10 removeFromSuperview];

    v9 = [v0 buttonImageView];
    [v9 removeFromSuperview];
  }

  return [v0 setNeedsLayout];
}

void __swiftcall CKMaterialCloseButton.init(frame:)(CKMaterialCloseButton *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

void CKMaterialCloseButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CKMaterialCloseButton____lazy_storage___materialBackgroundView] = 0;
  v9 = OBJC_IVAR___CKMaterialCloseButton_vibrancyBorderView;
  type metadata accessor for VibrancyBackgroundLayerView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR___CKMaterialCloseButton_buttonImageView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *&v4[OBJC_IVAR___CKMaterialCloseButton_symbolImage] = 0;
  v11 = OBJC_IVAR___CKMaterialCloseButton_symbolColor;
  *&v4[v11] = [objc_opt_self() whiteColor];
  *&v4[OBJC_IVAR___CKMaterialCloseButton_cornerRadius] = 0;
  v12 = [objc_opt_self() sharedBehaviors];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 materialButtonBackgroundMaterialColor];

    if (v14)
    {
      *&v4[OBJC_IVAR___CKMaterialCloseButton_materialColor] = v14;
      *&v4[OBJC_IVAR___CKMaterialCloseButton_padding] = 0;
      v21.receiver = v4;
      v21.super_class = CKMaterialCloseButton;
      v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
      v16 = OBJC_IVAR___CKMaterialCloseButton_vibrancyBorderView;
      v17 = *&v15[OBJC_IVAR___CKMaterialCloseButton_vibrancyBorderView];
      v18 = v15;
      [v17 setUserInteractionEnabled_];
      v19 = [v18 materialBackgroundView];
      [v19 setUserInteractionEnabled_];

      [v18 addSubview_];
      v20 = [v18 materialBackgroundView];
      [v18 addSubview_];

      [v18 addSubview_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall CKMaterialCloseButton.layoutSubviews()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v31 - v2;
  v31.receiver = v0;
  v31.super_class = CKMaterialCloseButton;
  objc_msgSendSuper2(&v31, sel_layoutSubviews);
  sub_190D57FD0();
  v4 = sub_190D57FB0();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  sub_1908F00B4(v3);
  if (v5 == 1)
  {
    v6 = [v0 traitCollection];
    [v6 displayScale];
    v8 = v7;

    v9 = [objc_opt_self() sharedBehaviors];
    if (v9)
    {
      v10 = v9;
      [v9 balloonOutlineWidthForScreenScale_];
      v12 = v11;

      v13 = [v0 buttonImageView];
      [v0 bounds];
      [v13 sizeThatFits_];
      v17 = v16;
      v19 = v18;

      [v0 padding];
      v21 = v17 + v20 + v20;
      [v0 padding];
      v23 = v19 + v22 + v22;
      v24 = [v0 materialBackgroundView];
      [v24 setFrame_];

      v32.origin.x = v12;
      v32.origin.y = v12;
      v32.size.width = v21;
      v32.size.height = v23;
      v25 = v12 + v12 + CGRectGetWidth(v32);
      v33.origin.x = v12;
      v33.origin.y = v12;
      v33.size.width = v21;
      v33.size.height = v23;
      v26 = v12 + v12 + CGRectGetHeight(v33);
      v27 = [v0 vibrancyBorderView];
      [v27 setFrame_];

      v34.origin.x = 0.0;
      v34.origin.y = 0.0;
      v34.size.width = v25;
      v34.size.height = v26;
      v28 = (CGRectGetWidth(v34) - v17) * 0.5;
      v35.origin.x = 0.0;
      v35.origin.y = 0.0;
      v35.size.width = v25;
      v35.size.height = v26;
      v29 = (CGRectGetHeight(v35) - v19) * 0.5;
      v30 = [v0 buttonImageView];
      [v30 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

CGSize __swiftcall CKMaterialCloseButton.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  sub_190D57FD0();
  v7 = sub_190D57FB0();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_1908F00B4(v6);
  if (v8 == 1)
  {
    v9 = [v1 traitCollection];
    [v9 displayScale];
    v11 = v10;

    v12 = [objc_opt_self() sharedBehaviors];
    if (v12)
    {
      v15 = v12;
      [v12 balloonOutlineWidthForScreenScale_];
      v17 = v16;

      v18 = [v1 buttonImageView];
      [v18 sizeThatFits_];
      v20 = v19;
      v22 = v21;

      [v1 padding];
      v24 = v20 + v23 + v23;
      v25 = v17 + v17;
      v26 = v17 + v17 + v24;
      [v1 padding];
      v28 = v27;
      v13 = v26;
      v14 = v25 + v22 + v28 + v28;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v30.receiver = v1;
    v30.super_class = CKMaterialCloseButton;
    objc_msgSendSuper2(&v30, sel_sizeThatFits_, width, height);
  }

  result.height = v14;
  result.width = v13;
  return result;
}

id CKMaterialCloseButton.isEnabled.setter(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v11.receiver = v1;
  v11.super_class = CKMaterialCloseButton;
  objc_msgSendSuper2(&v11, sel_setEnabled_, a1 & 1);
  sub_190D57FD0();
  v6 = sub_190D57FB0();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
  result = sub_1908F00B4(v5);
  if (v7 == 1)
  {
    v9 = [v1 isEnabled];
    v10 = 0.5;
    if (v9)
    {
      v10 = 1.0;
    }

    return [v1 setAlpha_];
  }

  return result;
}

id _sSo21CKMaterialCloseButtonC7ChatKitE5closeAByFZ_0()
{
  v0 = [objc_allocWithZone(CKMaterialCloseButton) init];
  v1 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:10.0];
  v2 = sub_190D56ED0();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  v4 = v0;
  result = CKFrameworkBundle();
  if (result)
  {
    v6 = result;
    v7 = sub_190D56ED0();
    v8 = sub_190D56ED0();
    v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

    if (!v9)
    {
      sub_190D56F10();
      v9 = sub_190D56ED0();
    }

    [v4 setAccessibilityLabel_];

    [v4 setSymbolImage_];
    [v4 setPadding_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1908EFE7C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKMaterialCloseButton_symbolColor;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  sub_1902188FC(0, &qword_1EAD46500);
  v6 = a1;
  if ((sub_190D57D90() & 1) == 0)
  {
    v7 = [v2 buttonImageView];
    [v7 setTintColor_];

    [v2 setNeedsLayout];
  }
}

void _sSo21CKMaterialCloseButtonC7ChatKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___CKMaterialCloseButton____lazy_storage___materialBackgroundView) = 0;
  v1 = OBJC_IVAR___CKMaterialCloseButton_vibrancyBorderView;
  type metadata accessor for VibrancyBackgroundLayerView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR___CKMaterialCloseButton_buttonImageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  *(v0 + OBJC_IVAR___CKMaterialCloseButton_symbolImage) = 0;
  v3 = OBJC_IVAR___CKMaterialCloseButton_symbolColor;
  *(v0 + v3) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR___CKMaterialCloseButton_cornerRadius) = 0;
  v4 = [objc_opt_self() sharedBehaviors];
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  v6 = [v4 materialButtonBackgroundMaterialColor];

  if (!v6)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR___CKMaterialCloseButton_materialColor) = v6;
  *(v0 + OBJC_IVAR___CKMaterialCloseButton_padding) = 0;
  sub_190D58510();
  __break(1u);
}

uint64_t sub_1908F00B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1908F0230(char a1, double a2, double a3, double a4, double a5)
{
  swift_getObjectType();
  v11 = OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_enableBlur;
  v5[OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_enableBlur] = 0;
  v12 = OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_color;
  *&v5[v12] = [objc_opt_self() grayColor];
  v5[v11] = a1;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for CKUnborderedBackdropMaterialView();
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a2, a3, a4, a5);
  [v13 setOverrideUserInterfaceStyle_];
  sub_1908F0448();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD1DA0;
  v15 = sub_190D53270();
  v16 = MEMORY[0x1E69DC0F8];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = sub_190831CD4();
  *(v14 + 48) = &type metadata for CKTranscriptBackgroundLuminosityTrait;
  *(v14 + 56) = v17;
  sub_190D57CE0();

  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_1908F0448()
{
  v1 = v0;
  v2 = sub_190D56B90();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_190D56BB0();
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_color;
  v9 = *&v0[OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_color];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 grayColor];
  sub_1902188FC(0, &qword_1EAD46520);
  v13 = sub_190D57D90();

  if (v13)
  {

    sub_190D56B10();
  }

  else
  {
    v14 = v11;
    v15 = [v10 blueColor];
    v16 = sub_190D57D90();

    if (v16)
    {

      sub_190D56B00();
    }

    else
    {
      v17 = [v10 greenColor];
      v18 = sub_190D57D90();

      if (v18)
      {
        sub_190D56B30();
      }

      else
      {
        v19 = [*&v1[v8] CGColor];
        sub_190D56B20();
      }
    }
  }

  v20 = [v1 traitCollection];
  [v20 transcriptBackgroundLuminosity];
  sub_190D56BA0();
  v21 = sub_190D56B80();
  v36 = v21;
  if (v1[OBJC_IVAR____TtC7ChatKit32CKUnborderedBackdropMaterialView_enableBlur] == 1)
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    if (v21 >> 62)
    {
      result = sub_190D581C0();
      if (result < 0)
      {
        __break(1u);
        return result;
      }
    }

    sub_190A0F150(0, 0, v22);

    v21 = v36;
  }

  v23 = [v1 layer];
  sub_1908A1E3C(v21);

  v24 = sub_190D57160();

  [v23 setFilters_];

  v25 = [v1 layer];
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    sub_190D56B40();
    [v27 setScale_];
    v28 = v25;
  }

  else
  {
    v28 = v20;
    v20 = v25;
  }

  v30 = v34;
  v29 = v35;
  v31 = v33;

  (*(v30 + 8))(v4, v29);
  return (*(v5 + 8))(v7, v31);
}

uint64_t sub_1908F088C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for CKUnborderedBackdropMaterialView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id sub_1908F09B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKUnborderedBackdropMaterialView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TranscriptNavigationBarChange.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name);
  sub_190D52690();
  return v1;
}

id TranscriptNavigationBarChange.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptNavigationBarChange.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptNavigationBarChange();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static TranscriptNavigationBarChange.barButtonsChange.getter()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x8000000190E64620;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F0D48;
  v3[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1908F0D48(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_navigationBarModeProvider))();
  v5 = sub_190AD058C(a2, v4);
  v6 = sub_190AD06F4(a2, v4);
  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_leadingItems) = v5;

  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_trailingItems) = v6;

  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_showsBackButton) = ((v4 + 1) > 9) | (0x82u >> (v4 + 1)) & 1;
  return result;
}

id static TranscriptNavigationBarChange.conversationChange.getter()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000014;
  *(v2 + 1) = 0x8000000190E64640;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F0F38;
  v3[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1908F0F38(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_conversationProvider))();
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversation);
  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversation) = v3;
}

id static TranscriptNavigationBarChange.titleDisplayModeChange.getter()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x8000000190E64660;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F10C0;
  v3[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1908F10C0(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_displayModeProvider))();
  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_displayMode) = result;
  return result;
}

id static TranscriptNavigationBarChange.titleViewInteractabilityChange.getter()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD00000000000001ELL;
  *(v2 + 1) = 0x8000000190E64680;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F1234;
  v3[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1908F1234(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_navigationBarFlagsProvider))();
  v4 = v3[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isTitleViewInteractable];

  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_isTitleViewInteractable) = v4;
}

id static TranscriptNavigationBarChange.conversationTitleChange.getter()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000017;
  *(v2 + 1) = 0x8000000190E646A0;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F13BC;
  v3[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1908F13BC(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_conversationTitleProvider))();
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle);
  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle) = v3;
}

id static TranscriptNavigationBarChange.unreadBadgeCountChange.getter()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000016;
  *(v2 + 1) = 0x8000000190E646C0;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F1544;
  v3[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1908F1544(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_unreadCountProvider))();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_unreadCount) = v5;
  return result;
}

id static TranscriptNavigationBarChange.locationChange(locationText:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = type metadata accessor for TranscriptNavigationBarChange();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  strcpy(&v6[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name], "LocationChange");
  v7[15] = -18;
  v8 = &v6[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v8 = sub_1908F16B4;
  *(v8 + 1) = v4;
  v10.receiver = v6;
  v10.super_class = v5;
  sub_190D52690();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1908F1664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText);
  *v4 = a3;
  v4[1] = a4;
  sub_190D52690();
}

id static TranscriptNavigationBarChange.sendProgressChange(_:color:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  v5 = type metadata accessor for TranscriptNavigationBarChange();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v7 = 0xD000000000000012;
  *(v7 + 1) = 0x8000000190E646E0;
  v8 = &v6[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v8 = sub_1908F186C;
  v8[1] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  v9 = a1;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_1908F186C(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgress) = *(v1 + 16);
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgressColor);
  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_sendProgressColor) = v2;
  v3 = v2;
}

id static TranscriptNavigationBarChange.nicknameOracleChange.getter()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD000000000000014;
  *(v2 + 1) = 0x8000000190E64700;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F1AD4;
  v3[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

void *sub_1908F1AD4(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_nicknameOracleProvider))();
  v4 = (a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle);
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle);
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_nicknameOracle + 8);
  *v4 = v3;
  v4[1] = v7;
  v4[2] = v8;

  return sub_1908F1D9C(v5, v6);
}

id static TranscriptNavigationBarChange.showGroupNameAndPhotoChange.getter()
{
  v0 = type metadata accessor for TranscriptNavigationBarChange();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v2 = 0xD00000000000001BLL;
  *(v2 + 1) = 0x8000000190E64720;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v3 = sub_1908F1C74;
  v3[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1908F1C74(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_conversationProvider))();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 shouldDisplayGroupIdentity];
  }

  else
  {
    v6 = 0;
  }

  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_showGroupNameAndPhoto) = v6;
  v7 = (*(a2 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_conversationTitleProvider))();
  v8 = *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle);
  *(a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_conversationTitle) = v7;
}

uint64_t sub_1908F1D48(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = (a1 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_locationText);
  *v3 = *(v1 + 16);
  v3[1] = v2;
  sub_190D52690();
}

void *sub_1908F1D9C(void *result, uint64_t a2)
{
  if (result)
  {

    return sub_19022123C(a2);
  }

  return result;
}

uint64_t sub_1908F1DEC(uint64_t a1)
{
  switch(a1)
  {
    case 3:
      v3 = CKFrameworkBundle();
      if (v3)
      {
        v2 = v3;
        goto LABEL_10;
      }

      goto LABEL_12;
    case 2:
      v1 = CKFrameworkBundle();
      if (v1)
      {
        v2 = v1;
LABEL_10:
        v5 = sub_190D56ED0();
        v6 = sub_190D56ED0();
        v7 = [v2 localizedStringForKey:v5 value:0 table:v6];

        v8 = sub_190D56F10();
        return v8;
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      break;
    case 1:
      v4 = CKFrameworkBundle();
      if (v4)
      {
        v2 = v4;
        goto LABEL_10;
      }

      goto LABEL_13;
  }

  result = sub_190D58790();
  __break(1u);
  return result;
}

uint64_t CKCloudOnboardingTipVariation.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1908F1F7C()
{
  result = qword_1EAD56758;
  if (!qword_1EAD56758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56758);
  }

  return result;
}

uint64_t *sub_1908F1FD0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1908F2000()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56760);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_190DDD0E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56768);
  v2 = swift_allocObject();
  v3 = *(v0 + 8);
  v4 = vcvtq_f64_f32(*v0);
  *(v2 + 16) = xmmword_190DDD0F0;
  *(v2 + 32) = v4;
  *(v2 + 48) = vcvtq_f64_f32(v3);
  *(v2 + 64) = *(v0 + 16);
  *(v1 + 32) = v2;
  v5 = swift_allocObject();
  v6 = vcvtq_f64_f32(*(v0 + 20));
  *(v5 + 16) = xmmword_190DDD0F0;
  *(v5 + 32) = v6;
  *(v5 + 48) = vcvtq_f64_f32(*(v0 + 28));
  *(v5 + 64) = *(v0 + 36);
  *(v1 + 40) = v5;
  v7 = swift_allocObject();
  v8 = *(v0 + 48);
  v9 = vcvtq_f64_f32(*(v0 + 40));
  *(v7 + 16) = xmmword_190DDD0F0;
  *(v7 + 32) = v9;
  *(v7 + 48) = vcvtq_f64_f32(v8);
  *(v7 + 64) = *(v0 + 56);
  *(v1 + 48) = v7;
  v10 = swift_allocObject();
  v11 = vcvtq_f64_f32(*(v0 + 60));
  *(v10 + 16) = xmmword_190DDD0F0;
  *(v10 + 32) = v11;
  *(v10 + 48) = vcvtq_f64_f32(*(v0 + 68));
  *(v10 + 64) = *(v0 + 76);
  *(v1 + 56) = v10;
  return v1;
}

void *sub_1908F2164@<X0>(void *result@<X0>, float *a2@<X8>)
{
  v2 = result[2];
  if (!v2)
  {
    __break(1u);
    goto LABEL_27;
  }

  v4 = result[4];
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 < 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v5 == 3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v5 < 5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v2 == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v6 = result[5];
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 == 1)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v7 < 3)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v7 == 3)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v7 < 5)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v2 < 3)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v8 = result[6];
  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v9 == 1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v9 < 3)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v9 == 3)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v9 < 5)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v2 == 3)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v10 = result[7];
  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v11 == 1)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v11 < 3)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v11 == 3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v63 = *(v4 + 32);
  v61 = *(v4 + 48);
  v62 = *(v4 + 40);
  v59 = *(v4 + 64);
  v60 = *(v4 + 56);
  v57 = *(v6 + 40);
  v58 = *(v6 + 32);
  v53 = *(v6 + 56);
  v55 = *(v6 + 48);
  v12 = *(v8 + 40);
  v49 = *(v8 + 32);
  v51 = *(v6 + 64);
  v13 = *(v8 + 48);
  v14 = *(v8 + 56);
  v15 = *(v8 + 64);
  v17 = *(v10 + 32);
  v16 = *(v10 + 40);
  v18 = *(v10 + 48);
  v19 = *(v10 + 56);
  sub_190D52690();

  if (*(v10 + 16) >= 5uLL)
  {
    v20 = v19;
    v21 = v18;
    v47 = v21;
    v48 = v20;
    v22 = v16;
    v23 = v17;
    v45 = v23;
    v46 = v22;
    v24 = v15;
    v25 = v14;
    v43 = v25;
    v44 = v24;
    v26 = v13;
    v27 = v12;
    v41 = v27;
    v42 = v26;
    v28 = v49;
    v50 = v28;
    v29 = v51;
    v52 = v29;
    v30 = v53;
    v54 = v30;
    v31 = v55;
    v56 = v31;
    v32 = v57;
    v33 = v58;
    v34 = v59;
    v35 = v60;
    v36 = v61;
    v37 = v62;
    v38 = *(v10 + 64);
    v39 = v63;

    v40 = v38;
    *a2 = v39;
    a2[1] = v37;
    a2[2] = v36;
    a2[3] = v35;
    a2[4] = v34;
    a2[5] = v33;
    a2[6] = v32;
    a2[7] = v56;
    a2[8] = v54;
    a2[9] = v52;
    a2[10] = v50;
    a2[11] = v41;
    a2[12] = v42;
    a2[13] = v43;
    a2[14] = v44;
    a2[15] = v45;
    a2[16] = v46;
    a2[17] = v47;
    a2[18] = v48;
    a2[19] = v40;
    return result;
  }

LABEL_49:
  __break(1u);
  return result;
}

void sub_1908F2414()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ModernDetailsController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 5)
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() clearColor];
      [v4 setBackgroundColor_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1908F2500(void *a1)
{
  v1 = a1;
  sub_1908F2414();
}

uint64_t sub_1908F2604()
{
  v1 = v0 + qword_1EAD9DAA8;

  return sub_1908F2CA0(v1);
}

uint64_t sub_1908F2670(uint64_t a1)
{
  v2 = a1 + qword_1EAD9DAA8;

  return sub_1908F2CA0(v2);
}

uint64_t static ModernDetailsControllerFactory.detailsController(conversation:delegate:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ModernDetailsController());
  v3 = a1;
  swift_unknownObjectRetain();
  v4 = sub_1908F2900(v3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t type metadata accessor for ModernDetailsController()
{
  result = qword_1EAD56780;
  if (!qword_1EAD56780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ModernDetailsControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ModernDetailsControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModernDetailsControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1908F28C8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1908F2900(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DetailsView(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_1EAD56770) = a1;
  v8 = objc_allocWithZone(type metadata accessor for DetailsViewConfiguration());
  v9 = a1;
  swift_unknownObjectRetain();
  v10 = sub_190CEBC38(v9);
  v11 = qword_1EAD56778;
  *(v2 + qword_1EAD56778) = v10;
  v12 = objc_allocWithZone(CKDetailsContactsManager);
  v13 = v10;
  sub_190CEC110([v12 initWithConversation:v9 delegate:v13]);
  v14 = *(v2 + v11);
  sub_1908F2CFC(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v15 = v14;
  sub_190D56340();
  type metadata accessor for DetailsViewModel(0);
  v16 = swift_allocObject();
  v17 = v15;
  sub_190D51C50();
  sub_190D51C50();
  *(v16 + 16) = v17;
  sub_1908F2CFC(&qword_1EAD56300, type metadata accessor for DetailsViewModel);
  sub_190D56340();
  v18 = &v7[*(v5 + 32)];
  v25[0] = 0;
  sub_190D55FC0();
  v19 = *(&v26 + 1);
  *v18 = v26;
  *(v18 + 1) = v19;
  v20 = &v7[*(v5 + 36)];
  v25[0] = nullsub_10;
  v25[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F80);
  sub_190D55FC0();

  v21 = v27;
  *v20 = v26;
  *(v20 + 2) = v21;
  v22 = qword_1EAD9DAA8;
  sub_1908F2D44(v7, v2 + qword_1EAD9DAA8);
  sub_1908F2DA8(v2 + v22, v7);
  v23 = sub_190D54B60();

  return v23;
}

uint64_t sub_1908F2BF0()
{
  result = type metadata accessor for DetailsView(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1908F2CA0(uint64_t a1)
{
  v2 = type metadata accessor for DetailsView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1908F2CFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1908F2D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1908F2DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1908F2E0C(char a1)
{
  result = CKFrameworkBundle();
  v3 = result;
  if (!a1)
  {
    if (result)
    {
      goto LABEL_8;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    if (result)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (result)
  {
LABEL_8:
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_190D56F10();
    return v7;
  }

LABEL_11:
  __break(1u);
  return result;
}

id sub_1908F2F20(char a1)
{
  result = CKFrameworkBundle();
  v3 = result;
  if (!a1)
  {
    if (result)
    {
      goto LABEL_8;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    if (result)
    {
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (result)
  {
LABEL_8:
    v4 = sub_190D56ED0();
    v5 = sub_190D56ED0();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    v7 = sub_190D56F10();
    return v7;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1908F3034@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_19022FD14(v2, &v14 - v9, &qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t *sub_1908F3234@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1908F325C(uint64_t a1)
{
  v7[2] = *(v1 + *(type metadata accessor for PriorityMessageTypeSelectionList() + 20) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD568C0);
  sub_190D55FD0();
  swift_getKeyPath();
  v7[1] = v6;
  sub_1908F5AA0(&qword_1EAD568C8, type metadata accessor for PriorityRequestsViewModel);
  sub_190D51C20();

  swift_beginAccess();
  v3 = *(v6 + 16);
  sub_190D52690();

  v4 = sub_190CACFC0(a1, v3);

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  swift_getKeyPath();
  sub_190D51C40();

  swift_beginAccess();
  if (v4)
  {
    sub_1908AE138(a1);
  }

  else
  {
    sub_1908AA510(v7, a1);
  }

  swift_endAccess();
  swift_getKeyPath();
  sub_190D51C30();
}

uint64_t PriorityMessageTypeSelectionList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_190D54970();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D54DE0();
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56790);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56798);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD567A0);
  v18 = *(v17 - 8);
  v39 = v17;
  v40 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v38 - v19;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD567A8);
  MEMORY[0x1EEE9AC00](v43);
  v22 = &v38 - v21;
  v48 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD567B0);
  sub_1908F3C94();
  sub_190D554D0();
  v23 = sub_190233640(&qword_1EAD56808, &qword_1EAD56790);
  sub_190D55AB0();
  (*(v10 + 8))(v12, v9);
  sub_190D54DD0();
  v49 = v9;
  v50 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = MEMORY[0x1E697C750];
  v26 = v41;
  sub_190D55C90();
  (*(v42 + 8))(v8, v26);
  (*(v14 + 8))(v16, v13);
  sub_190D552C0();
  v49 = v13;
  v50 = v26;
  v51 = OpaqueTypeConformance2;
  v52 = v25;
  swift_getOpaqueTypeConformance2();
  v27 = v39;
  sub_190D55780();
  (*(v40 + 8))(v20, v27);
  v28 = v44;
  sub_190D54960();
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56810) + 36);
  v30 = v45;
  v31 = v46;
  (*(v45 + 16))(&v22[v29], v28, v46);
  v32 = v30;
  v33 = *(v30 + 56);
  v33(&v22[v29], 0, 1, v31);
  KeyPath = swift_getKeyPath();
  v35 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56818) + 36)];
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59400) + 28);
  (*(v32 + 32))(v35 + v36, v28, v31);
  v33(v35 + v36, 0, 1, v31);
  *v35 = KeyPath;
  *&v22[*(v43 + 36)] = 256;
  sub_1908F5200();
  sub_190D55A60();
  return sub_1902676D4(v22);
}

uint64_t sub_1908F3AE4(uint64_t a1)
{
  v2 = type metadata accessor for PriorityMessageTypeSelectionList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[1] = &unk_1F0402260;
  sub_1908F587C(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1908F58E0(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD567C8);
  sub_190233640(&qword_1EAD568A8, &qword_1EAD56880);
  sub_1908F3D18();
  sub_1908F59C4();
  return sub_190D56290();
}

unint64_t sub_1908F3C94()
{
  result = qword_1EAD567B8;
  if (!qword_1EAD567B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD567B0);
    sub_1908F3D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD567B8);
  }

  return result;
}

unint64_t sub_1908F3D18()
{
  result = qword_1EAD567C0;
  if (!qword_1EAD567C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD567C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD567D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD567D8);
    sub_1908F3E54();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1908F5AA0(&qword_1EAD56800, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD567C0);
  }

  return result;
}

unint64_t sub_1908F3E54()
{
  result = qword_1EAD567E0;
  if (!qword_1EAD567E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD567D8);
    sub_1908F3F0C();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD567E0);
  }

  return result;
}

unint64_t sub_1908F3F0C()
{
  result = qword_1EAD567E8;
  if (!qword_1EAD567E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD567F0);
    sub_1908F3F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD567E8);
  }

  return result;
}

unint64_t sub_1908F3F9C()
{
  result = qword_1EAD567F8;
  if (!qword_1EAD567F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD567F8);
  }

  return result;
}

uint64_t sub_1908F3FF0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v65 = sub_190D54A60();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D55020();
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PriorityMessageTypeSelectionList();
  v58 = *(v8 - 8);
  v57 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D53A60();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD567F0);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD567D8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD567D0);
  v23 = *(v22 - 8);
  v52 = v22;
  v53 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v46 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD568B8);
  v27 = *(v26 - 8);
  v55 = v26;
  v56 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v49 = &v46 - v28;
  v48 = *a1;
  v66 = v48;
  v47 = a2;
  v67 = a2;
  sub_1908F3F9C();
  sub_190D562E0();
  sub_1908F3034(v16);
  (*(v11 + 104))(v14, *MEMORY[0x1E697DBB8], v10);
  LOBYTE(a1) = sub_190D53A50();
  v29 = *(v11 + 8);
  v29(v14, v10);
  v29(v16, v10);
  v30 = objc_opt_self();
  v31 = &selRef_systemGroupedBackgroundColor;
  if ((a1 & 1) == 0)
  {
    v31 = &selRef_tertiarySystemBackgroundColor;
  }

  v32 = [v30 *v31];
  v68 = sub_190D55CE0();
  v33 = sub_190D561E0();
  (*(v50 + 32))(v21, v18, v51);
  *&v21[*(v19 + 36)] = v33;
  v34 = v54;
  sub_1908F587C(v47, v54);
  v35 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v36 = v35 + v57;
  v37 = swift_allocObject();
  sub_1908F58E0(v34, v37 + v35);
  *(v37 + v36) = v48;
  v38 = sub_1908F3E54();
  sub_190D557E0();

  sub_19022EEA4(v21, &qword_1EAD567D8);
  v39 = v59;
  sub_190D55010();
  v68 = v19;
  v69 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v49;
  v42 = v52;
  sub_190D55A40();
  (*(v60 + 8))(v39, v61);
  (*(v53 + 8))(v25, v42);
  v43 = v62;
  sub_190D54A40();
  v68 = v42;
  v69 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v44 = v55;
  sub_190D55A80();
  (*(v63 + 8))(v43, v65);
  return (*(v56 + 8))(v41, v44);
}

uint64_t sub_1908F4728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v14 = 0xE600000000000000;
      v4 = 0x6E6F73726570;
    }

    else
    {
      v14 = 0xE300000000000000;
      v4 = 6775156;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    v4 = 0x6B636F6C63;
  }

  v5 = sub_1908F2E0C(a1);
  v7 = v6;
  v8 = sub_1908F2F20(a1);
  v10 = v9;
  type metadata accessor for PriorityMessageTypeSelectionList();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD568C0);
  sub_190D55FD0();
  swift_getKeyPath();
  sub_1908F5AA0(&qword_1EAD568C8, type metadata accessor for PriorityRequestsViewModel);
  sub_190D51C20();

  swift_beginAccess();
  v11 = *(v15 + 16);
  sub_190D52690();

  v12 = sub_190CACFC0(a1, v11);

  *a2 = v4;
  *(a2 + 8) = v14;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = v12 & 1;
  return result;
}

void *PriorityMessagesListRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v11[2] = *(v1 + 32);
  v12 = *(v1 + 48);
  v4 = sub_190D548D0();
  v10 = 1;
  sub_1908F49E0(v11, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_19022FD14(__dst, v7, &qword_1EAD56848);
  sub_19022EEA4(v14, &qword_1EAD56848);
  memcpy(&v9[7], __dst, 0x178uLL);
  v5 = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), v9, 0x17FuLL);
}

uint64_t sub_1908F49E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_190D52690();
  v15 = sub_190D55ED0();
  v14 = sub_190D55380();
  KeyPath = swift_getKeyPath();
  v13 = sub_190D55D50();
  v16 = sub_190D54AC0();
  v20 = 1;
  sub_1908F4C38(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, 0x120uLL);
  sub_19022FD14(__dst, v17, &qword_1EAD56890);
  sub_19022EEA4(v22, &qword_1EAD56890);
  memcpy(&v19[7], __dst, 0x120uLL);
  v5 = v20;
  v6 = *(a1 + 48);
  v12 = sub_190D55EA0();
  v7 = sub_190D55400();
  v8 = swift_getKeyPath();
  if (v6)
  {
    v9 = sub_190D55D50();
  }

  else
  {
    v9 = sub_190D55D60();
  }

  v10 = v9;
  v17[0] = v16;
  v17[1] = 0;
  LOBYTE(v17[2]) = v5;
  memcpy(&v17[2] + 1, v19, 0x127uLL);
  *a2 = v15;
  a2[1] = KeyPath;
  a2[2] = v14;
  a2[3] = v13;
  memcpy(a2 + 4, v17, 0x138uLL);
  a2[43] = v12;
  a2[44] = v8;
  a2[45] = v7;
  a2[46] = v10;
  sub_190D50920();
  sub_190D50920();
  sub_190D50920();
  sub_190D50920();
  sub_19022FD14(v17, __src, &qword_1EAD56898);
  *__src = v16;
  *&__src[8] = 0;
  __src[16] = v5;
  memcpy(&__src[17], v19, 0x127uLL);
  sub_19022EEA4(__src, &qword_1EAD56898);
}

uint64_t sub_1908F4C38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 24);
  v72 = *(a1 + 16);
  v73 = v3;
  sub_19081E484();
  sub_190D52690();
  v4 = sub_190D555F0();
  v6 = v5;
  v8 = v7;
  v9 = sub_190D555A0();
  v31 = v10;
  v32 = v9;
  LOBYTE(v3) = v11;
  v33 = v12;
  sub_19081E474(v4, v6, v8 & 1);

  sub_190D56510();
  sub_190D54430();
  v30 = v3 & 1;
  v94 = v3 & 1;
  v13 = *(v2 + 40);
  v72 = *(v2 + 32);
  v73 = v13;
  sub_190D52690();
  v14 = sub_190D555F0();
  v16 = v15;
  LOBYTE(v2) = v17;
  LODWORD(v72) = sub_190D54EB0();
  v18 = sub_190D55580();
  v20 = v19;
  v22 = v21;
  sub_19081E474(v14, v16, v2 & 1);

  sub_190D55480();
  v23 = sub_190D555B0();
  v25 = v24;
  LOBYTE(v16) = v26;
  v29 = v27;

  sub_19081E474(v18, v20, v22 & 1);

  sub_190D56510();
  sub_190D54430();
  *&v43 = v32;
  *(&v43 + 1) = v31;
  LOBYTE(v44) = v30;
  *(&v44 + 1) = *v93;
  DWORD1(v44) = *&v93[3];
  *(&v44 + 1) = v33;
  v49 = v90;
  v50 = v91;
  v51 = v92;
  v45 = v86;
  v46 = v87;
  v47 = v88;
  v48 = v89;
  __src[6] = v90;
  __src[7] = v91;
  __src[2] = v86;
  __src[3] = v87;
  __src[4] = v88;
  __src[5] = v89;
  __src[0] = v43;
  __src[1] = v44;
  *&v52 = v23;
  *(&v52 + 1) = v25;
  LOBYTE(v53) = v16 & 1;
  *(&v53 + 1) = *v84;
  DWORD1(v53) = *&v84[3];
  *(&v53 + 1) = v29;
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  __src[12] = v37;
  __src[13] = v38;
  __src[10] = v53;
  __src[11] = v36;
  __src[14] = v39;
  __src[15] = v40;
  __src[16] = v41;
  __src[17] = v42;
  v85 = v16 & 1;
  __src[8] = v92;
  __src[9] = v52;
  memcpy(a2, __src, 0x120uLL);
  v61[0] = v23;
  v61[1] = v25;
  v62 = v16 & 1;
  *v63 = *v84;
  *&v63[3] = *&v84[3];
  v64 = v29;
  v69 = v40;
  v70 = v41;
  v71 = v42;
  v65 = v36;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  sub_19022FD14(&v43, &v72, &qword_1EAD59AB0);
  sub_19022FD14(&v52, &v72, &qword_1EAD59AB0);
  sub_19022EEA4(v61, &qword_1EAD59AB0);
  v72 = v32;
  v73 = v31;
  v74 = v30;
  *v75 = *v93;
  *&v75[3] = *&v93[3];
  v76 = v33;
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  return sub_19022EEA4(&v72, &qword_1EAD59AB0);
}

void *sub_1908F5040@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v11[2] = *(v1 + 32);
  v12 = *(v1 + 48);
  v4 = sub_190D548D0();
  v10 = 1;
  sub_1908F49E0(v11, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_19022FD14(__dst, v7, &qword_1EAD56848);
  sub_19022EEA4(v14, &qword_1EAD56848);
  memcpy(&v9[7], __dst, 0x178uLL);
  v5 = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), v9, 0x17FuLL);
}

uint64_t sub_1908F5158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD568A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_19022FD14(a1, &v6 - v3, &qword_1EAD568A0);
  return MEMORY[0x193AEFF30](v4);
}

unint64_t sub_1908F5200()
{
  result = qword_1EAD56820;
  if (!qword_1EAD56820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD567A8);
    sub_1908F528C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56820);
  }

  return result;
}

unint64_t sub_1908F528C()
{
  result = qword_1EAD56828;
  if (!qword_1EAD56828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56818);
    sub_1908F5344();
    sub_190233640(&qword_1EAD56840, &qword_1EAD59400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56828);
  }

  return result;
}

unint64_t sub_1908F5344()
{
  result = qword_1EAD56830;
  if (!qword_1EAD56830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56810);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD567A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56798);
    sub_190D54DE0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56790);
    sub_190233640(&qword_1EAD56808, &qword_1EAD56790);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD56838, &unk_1EAD59680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56830);
  }

  return result;
}

uint64_t type metadata accessor for PriorityMessageTypeSelectionList()
{
  result = qword_1EAD56850;
  if (!qword_1EAD56850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1908F55B8()
{
  sub_1908F569C(319, &qword_1EAD55988, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1908F569C(319, &qword_1EAD56860, type metadata accessor for PriorityRequestsViewModel, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1908F569C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1908F571C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1908F5764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1908F5828()
{
  result = qword_1EAD56888;
  if (!qword_1EAD56888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56888);
  }

  return result;
}

uint64_t sub_1908F587C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriorityMessageTypeSelectionList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1908F58E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriorityMessageTypeSelectionList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1908F5944@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PriorityMessageTypeSelectionList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1908F3FF0(a1, v6, a2);
}

unint64_t sub_1908F59C4()
{
  result = qword_1EAD568B0;
  if (!qword_1EAD568B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD568B0);
  }

  return result;
}

uint64_t sub_1908F5AA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1908F5AEC()
{
  sub_190D58870();
  MEMORY[0x193AF4110](0);
  return sub_190D588C0();
}

uint64_t sub_1908F5B30()
{
  sub_190D58870();
  MEMORY[0x193AF4110](0);
  return sub_190D588C0();
}

id sub_1908F5B70()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    v5 = sub_190D56F10();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908F5C4C@<X0>(uint64_t *a1@<X8>)
{
  sub_1908F7ABC();
  result = sub_190D529A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1908F5CA8()
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();
}

uint64_t sub_1908F5D40()
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();
}

void (*sub_1908F5DDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC7ChatKit15DetailsLinksTab___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  *v4 = v1;
  swift_getKeyPath();
  sub_190D51C40();

  v4[7] = sub_1908F5C8C();
  return sub_1908F5F10;
}

void sub_1908F5F10(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_190D51C30();

  free(v1);
}

uint64_t sub_1908F5FA4()
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  v1 = *(v0 + 16);
  sub_190D52690();
  return v1;
}

uint64_t sub_1908F6054@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_1908F6100(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_190D58760() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
    sub_190D51C10();
  }
}

uint64_t sub_1908F6260()
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  v1 = *(v0 + 32);
  sub_190D52690();
  return v1;
}

uint64_t sub_1908F6310@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_190D52690();
}

uint64_t sub_1908F63BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 32) == a1 && v5 == a2;
      if (v6 || (sub_190D58760() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
    sub_190D51C10();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1908F652C()
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  return *(v0 + 48);
}

uint64_t sub_1908F65CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_1908F6674(uint64_t result)
{
  if (*(v1 + 48) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
    sub_190D51C10();
  }

  return result;
}

uint64_t sub_1908F6778()
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1908F681C@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1908F68C8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
    sub_190D51C10();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  _s9ViewModelCMa_3(0);
  v3 = v2;
  v4 = sub_190D57D90();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_1908F6A60()
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  MEMORY[0x1EEE9AC00](Strong);
  _s4LinkVMa(0);
  sub_1908F7B10(&qword_1EAD555A8, _s4LinkVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
  sub_190D51C20();

  v2 = v1[qword_1EAD629B0];

  return v2;
}

id sub_1908F6C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = 1;
    goto LABEL_8;
  }

  v5 = Strong;
  v31 = a3;
  MEMORY[0x1EEE9AC00](Strong);
  _s4LinkVMa(0);
  sub_1908F7B10(&qword_1EAD555A8, _s4LinkVMa);
  swift_getKeyPath();
  sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
  sub_190D51C20();

  v6 = sub_190D56ED0();
  v30 = objc_opt_self();
  [v30 systemImageNamed_];

  result = CKFrameworkBundle();
  if (result)
  {
    v8 = result;
    sub_1908D84D0();
    v9 = sub_190D56ED0();
    v10 = sub_190D56ED0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:{v10, "AB_FILTER_SCREENSHOTS"}];

    sub_190D56F10();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a1;
    v13[4] = a2;
    sub_19029063C(a1);
    v14 = sub_190D57DC0();

    swift_getKeyPath();
    sub_190D51C20();

    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {

      v28 = 1;
      a3 = v31;
      goto LABEL_8;
    }

    v16 = v15;
    MEMORY[0x1EEE9AC00](v15);
    swift_getKeyPath();
    sub_190D51C20();

    v17 = sub_190D56ED0();
    v18 = [v30 systemImageNamed_];

    result = CKFrameworkBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_190D56ED0();
      v21 = sub_190D56ED0();
      v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

      sub_190D56F10();
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = a1;
      v24[4] = a2;
      sub_19029063C(a1);
      v25 = sub_190D57DC0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_190DD55F0;
      *(v26 + 32) = v14;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_190DD55F0;
      *(v27 + 32) = v25;
      a3 = v31;
      sub_190D52C00();
      v28 = 0;
LABEL_8:
      v29 = sub_190D52C10();
      return (*(*(v29 - 8) + 56))(a3, v28, 1, v29);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1908F7260()
{

  MEMORY[0x193AF7B30](v0 + 56);
  v1 = OBJC_IVAR____TtC7ChatKit15DetailsLinksTab___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DetailsLinksTab()
{
  result = qword_1EAD45F10;
  if (!qword_1EAD45F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1908F7368()
{
  result = sub_190D51C60();
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

unint64_t sub_1908F748C()
{
  result = qword_1EAD45F38;
  if (!qword_1EAD45F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45F38);
  }

  return result;
}

unint64_t sub_1908F74E4()
{
  result = qword_1EAD45F48;
  if (!qword_1EAD45F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45F48);
  }

  return result;
}

unint64_t sub_1908F753C()
{
  result = qword_1EAD45F30;
  if (!qword_1EAD45F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45F30);
  }

  return result;
}

unint64_t sub_1908F7594()
{
  result = qword_1EAD45F40;
  if (!qword_1EAD45F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45F40);
  }

  return result;
}

void (*sub_1908F75EC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1908F5DDC(v2);
  return sub_190854AE0;
}

void sub_1908F765C()
{
  type metadata accessor for DetailsLinksTab();

  JUMPOUT(0x193AEE5C0);
}

void sub_1908F769C(char a1)
{
  swift_getKeyPath();
  sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1908EA658(a1 & 1);
  }
}

void (*sub_1908F7758(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 8) = v1;
  swift_getKeyPath();
  *(v4 + 16) = OBJC_IVAR____TtC7ChatKit15DetailsLinksTab___observationRegistrar;
  *v4 = v1;
  *(v4 + 24) = sub_1908F7B10(&qword_1EAD45F20, type metadata accessor for DetailsLinksTab);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    _s4LinkVMa(0);
    sub_1908F7B10(&qword_1EAD555A8, _s4LinkVMa);
    swift_getKeyPath();
    *v4 = v6;
    sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
    sub_190D51C20();

    v7 = v6[qword_1EAD629B0];
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 32) = v7;
  return sub_1908F7950;
}

void sub_1908F7950(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  swift_getKeyPath();
  *v1 = v1[1];
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1908EA658(v2);
  }

  free(v1);
}

uint64_t sub_1908F79F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DetailsLinksTab();
  sub_1908F7B10(&qword_1EAD45F28, type metadata accessor for DetailsLinksTab);
  result = sub_190D52DD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1908F7ABC()
{
  result = qword_1EAD45F50;
  if (!qword_1EAD45F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45F50);
  }

  return result;
}

uint64_t sub_1908F7B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1908F7B9C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
  sub_190D52690();
}

void *sub_1908F7BDC(void *a1)
{
  result = CKFrameworkBundle();
  if (result)
  {
    v4 = result;
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_190D56F10();
    v10 = v9;

    v1[2] = v8;
    v1[3] = v10;
    result = CKFrameworkBundle();
    if (result)
    {
      v11 = result;
      v12 = sub_190D56ED0();
      v13 = sub_190D56ED0();
      v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

      v15 = sub_190D56F10();
      v17 = v16;

      v1[4] = v15;
      v1[5] = v17;
      v1[6] = 3;
      swift_unknownObjectWeakInit();
      sub_190D51C50();
      v18 = a1;
      sub_1908F68C8(a1);
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1908F7D88(void *a1)
{
  v2 = v1;
  result = [v1 isGroupConversation];
  if (!result)
  {
    return result;
  }

  v5 = [a1 thumbnailImageData];
  if (v5)
  {
    v6 = v5;
    v7 = sub_190D51670();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_190DD55F0;
  *(v10 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v11 = sub_190D57160();

  v12 = [v2 conversationVisualIdentityWithKeys:v11 requestedNumberOfContactsToFetch:{objc_msgSend(v2, sel_recipientCount)}];

  v13 = [v12 groupPhoto];
  if (v13)
  {
    v14 = sub_190D51670();
    v16 = v15;

    if (v9 >> 60 == 15)
    {
      if (v16 >> 60 != 15)
      {
        goto LABEL_16;
      }

LABEL_11:
      sub_19087C5A8(v7, v9);
      sub_19029064C(v7, v9);
      goto LABEL_24;
    }

    if (v16 >> 60 != 15)
    {
      sub_19087C5A8(v7, v9);
      sub_19087C5A8(v14, v16);
      v17 = sub_190C4CFE8(v7, v9, v14, v16);
      sub_19029064C(v14, v16);
      sub_19029064C(v14, v16);
      sub_19029064C(v7, v9);
      if (v17)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_11;
    }

    v14 = 0;
    v16 = 0xF000000000000000;
  }

LABEL_16:
  sub_19087C5A8(v7, v9);
  sub_19029064C(v7, v9);
  sub_19029064C(v14, v16);
LABEL_17:
  if (qword_1EAD51D00 != -1)
  {
    swift_once();
  }

  v18 = sub_190D53040();
  __swift_project_value_buffer(v18, qword_1EAD9E130);
  v19 = sub_190D53020();
  v20 = sub_190D57680();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_19020E000, v19, v20, "Updating group photo.", v21, 2u);
    MEMORY[0x193AF7A40](v21, -1, -1);
  }

  sub_1908F82B0(v7, v9);
  v22 = [objc_opt_self() defaultCenter];
  if (qword_1EAD520D0 != -1)
  {
    swift_once();
  }

  v23 = qword_1EAD9E708;
  v24 = [v2 chat];
  [v22 postNotificationName:v23 object:v24];

LABEL_24:
  v25 = [a1 name];
  v26 = sub_190D56F10();
  v28 = v27;

  v29 = [v2 displayName];
  if (!v29)
  {

    goto LABEL_30;
  }

  v30 = v29;
  v31 = sub_190D56F10();
  v33 = v32;

  if (v26 != v31 || v28 != v33)
  {
    v34 = sub_190D58760();

    if (v34)
    {
      goto LABEL_33;
    }

LABEL_30:
    [v2 resetCaches];
    v35 = [a1 name];
    if (!v35)
    {
      sub_190D56F10();
      v35 = sub_190D56ED0();
    }

    [v2 setDisplayName_];

    [v2 setNeedsUpdatedGroupNameForVisualIdentity];
    goto LABEL_33;
  }

LABEL_33:
  [v2 setGroupIdentityUpdateHandleID_];

  return sub_19029064C(v7, v9);
}

void sub_1908F82B0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_190D515F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = &v59 - v18;
  if (a2 >> 60 != 15)
  {
    v63 = v9;
    v64 = v3;
    v22 = objc_opt_self();
    sub_19083B680(a1, a2);
    v23 = [v22 defaultManager];
    v24 = [v23 im:*MEMORY[0x1E69A7018] randomTemporaryFileURLWithFileName:?];

    if (v24)
    {
      sub_190D515B0();

      (*(v7 + 56))(v15, 0, 1, v6);
    }

    else
    {
      (*(v7 + 56))(v15, 1, 1, v6);
    }

    sub_190844E18(v15, v19);
    if ((*(v7 + 48))(v19, 1, v6) == 1)
    {
      sub_19084CF50(v19);
      v25 = 0;
    }

    else
    {
      sub_190D515D0();
      v25 = v26;
      (*(v7 + 8))(v19, v6);
    }

    if (qword_1EAD51D00 != -1)
    {
      swift_once();
    }

    v27 = sub_190D53040();
    __swift_project_value_buffer(v27, qword_1EAD9E130);
    v28 = sub_190D53020();
    v29 = sub_190D57680();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v62 = v12;
      v31 = a2;
      v32 = a1;
      v33 = v30;
      *v30 = 0;
      _os_log_impl(&dword_19020E000, v28, v29, "Writing the group photo to disk.", v30, 2u);
      v34 = v33;
      a1 = v32;
      a2 = v31;
      v12 = v62;
      MEMORY[0x193AF7A40](v34, -1, -1);
    }

    if (!v25)
    {
      goto LABEL_44;
    }

    sub_190D51550();
    sub_190D51690();
    v60 = *(v7 + 8);
    v61 = a1;
    v60(v12, v6);
    v35 = v63;
    sub_190D51550();
    v36 = objc_opt_self();
    v37 = [v36 sharedInstance];
    if (v37)
    {
      v38 = v37;
      v39 = sub_190D51570();
      v35 = [v38 createNewOutgoingGroupPhotoTransferWithLocalFileURL_];

      if (v35)
      {
        v59 = sub_190D56F10();
        v62 = v40;
      }

      else
      {
        v59 = 0;
        v62 = 0;
      }

      v41 = [v36 sharedInstance];
      if (v41)
      {
        v42 = v41;
        v43 = [v41 transferForGUID_];

        if (!v43)
        {

          sub_190D52690();
          v47 = sub_190D53020();
          v48 = sub_190D57680();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v65 = v50;
            *v49 = 136315138;
            if (v62)
            {
              v51 = v59;
            }

            else
            {
              v51 = 7104878;
            }

            if (v62)
            {
              v52 = v62;
            }

            else
            {
              v52 = 0xE300000000000000;
            }

            v53 = sub_19021D9F8(v51, v52, &v65);

            *(v49 + 4) = v53;
            _os_log_impl(&dword_19020E000, v47, v48, "IMFileTransfer was nil for transferGUID: %s", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            MEMORY[0x193AF7A40](v50, -1, -1);
            MEMORY[0x193AF7A40](v49, -1, -1);
          }

          else
          {
          }

          sub_19029064C(v61, a2);

          v60(v63, v6);
          return;
        }

        v44 = [v36 sharedInstance];
        if (v44)
        {
          v45 = v44;

          a1 = v61;
          if (v62)
          {
            v46 = sub_190D56ED0();
          }

          else
          {
            v46 = 0;
          }

          v55 = v63;
          v54 = v64;
          [v45 registerTransferWithDaemon_];

          v56 = [v54 chat];
          if (v56)
          {
            v57 = v56;
            if (v62)
            {
              v58 = sub_190D56ED0();
            }

            else
            {
              v58 = 0;
            }

            [v57 sendGroupPhotoUpdate_];

            v60(v55, v6);
          }

          else
          {
            v60(v55, v6);
          }

LABEL_44:
          [v64 setNeedsUpdatedGroupPhotoForVisualIdentity];
          sub_19029064C(a1, a2);
          return;
        }

LABEL_47:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  v20 = [v3 chat];
  if (v20)
  {
    v21 = v20;
    [v20 sendGroupPhotoUpdate_];
  }

  [v3 setNeedsUpdatedGroupPhotoForVisualIdentity];
}

id sub_1908F8B40()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD452D8 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1908F8B84()
{
  if (qword_1EAD452D0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD452D8;
  v1 = [v0 theme];

  if (v1)
  {
    qword_1EAD45310 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1908F8C0C(uint64_t result, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_title];
  v3 = *&v2[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_title + 8];
  if (v4 != result || v3 != a2)
  {
    result = sub_190D58760();
    if ((result & 1) == 0)
    {
      v6 = *&v2[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView];
      v7 = &v6[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_title];
      v8 = *&v6[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_title];
      v9 = *&v6[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_title + 8];
      *v7 = v4;
      *(v7 + 1) = v3;
      v10 = v6;
      sub_190D52690();
      sub_1908FA0F4(v8, v9);

      [v2 setNeedsLayout];

      return [v2 invalidateIntrinsicContentSize];
    }
  }

  return result;
}

id sub_1908F8D00(id result)
{
  v2 = *&v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_style];
  *&v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_style] = result;
  if (v2 != result)
  {
    v3 = v1;
    v4 = *&v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView];
    v5 = *&v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_style];
    *&v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_style] = result;
    if (v5 != result)
    {
      v6 = *&v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel];
      v7 = v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_labelType];
      v8 = result;
      v9 = v4;
      v10 = v6;
      v11 = sub_1908FAF64(v7, v8);
      [v10 setTextColor_];

      sub_1908FA7FC();
      [v9 setNeedsLayout];
    }

    [v3 setNeedsLayout];

    return [v3 invalidateIntrinsicContentSize];
  }

  return result;
}

id sub_1908F8E1C(id result)
{
  v2 = v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_chevronHidden];
  v3 = result & 1;
  v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_chevronHidden] = result;
  if (v2 != v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView];
    v5 = v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronHidden];
    v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronHidden] = v3;
    if (v5 != v3)
    {
      v6 = *&v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView];
      v7 = result;
      v8 = v4;
      [v6 setHidden_];
      [v8 setNeedsLayout];
      [v8 invalidateIntrinsicContentSize];
    }

    [v1 setNeedsLayout];

    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

id sub_1908F8F10(id result)
{
  v2 = v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_useOpaqueChevron];
  v3 = result & 1;
  v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_useOpaqueChevron] = result;
  if (v2 != v3)
  {
    v4 = v1;
    v5 = *&v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView];
    v6 = v5[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_useOpaqueChevron];
    v5[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_useOpaqueChevron] = v3;
    if (v6 != v3)
    {
      v7 = v5;
      sub_1908FA7FC();
      [v7 setNeedsLayout];
    }

    [v4 setNeedsLayout];

    return [v4 invalidateIntrinsicContentSize];
  }

  return result;
}

id sub_1908F8FD0(id result)
{
  v2 = *&v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_accessoryImageType];
  *&v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_accessoryImageType] = result;
  if (v2 != result)
  {
    v3 = *&v1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView];
    v4 = *&v3[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_accessoryImageType];
    *&v3[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_accessoryImageType] = result;
    if (v4 != result)
    {
      v5 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel;
      v6 = *&v3[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel];
      v7 = result;
      v8 = v3;
      [v6 setTitleIconImageType_];
      [*&v3[v5] sizeToFit];
      [v8 setNeedsLayout];
      [v8 invalidateIntrinsicContentSize];
    }

    [v1 setNeedsLayout];

    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

char *sub_1908F90DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v30 = a3;
  v13 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_labelType;
  v6[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_labelType] = 0;
  *&v6[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_style] = 0;
  v6[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleHidden] = 0;
  v6[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_chevronHidden] = 0;
  v6[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_useOpaqueChevron] = 0;
  v14 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView;
  v15 = type metadata accessor for NavbarConversationTitle();
  v16 = objc_allocWithZone(v15);
  *&v6[v14] = sub_1908FA420(0, 0xE000000000000000, 0, 0);
  *&v6[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_accessoryImageType] = 0;
  v17 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel;
  *&v7[v17] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *&v7[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_activeConstraints] = MEMORY[0x1E69E7CC0];
  v18 = &v7[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_title];
  *v18 = a1;
  v18[1] = a2;
  v19 = &v7[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitle];
  *v19 = a3;
  v19[1] = a4;
  v7[v13] = a5;
  v32.receiver = v7;
  v32.super_class = type metadata accessor for NavBarConversationIdentityLabel();
  sub_190D52690();
  sub_190D52690();
  v20 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  objc_allocWithZone(v15);
  v21 = v20;
  v22 = sub_1908FA420(a1, a2, a5, a6);
  v23 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView;
  v24 = *&v21[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView];
  *&v21[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView] = v22;

  *&v21[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_accessoryImageType] = a6;
  sub_1902188FC(0, &qword_1EAD44EA0);
  v25 = sub_1908F9374(v30, a4, [v21 traitCollection]);
  v26 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel;
  v27 = *&v21[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel];
  *&v21[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel] = v25;

  [v21 addSubview_];
  [v21 addSubview_];
  v28 = [v21 layer];

  [v28 setAllowsGroupBlending_];
  [v21 setNeedsLayout];

  return v21;
}

id sub_1908F9374(int a1, int a2, id a3)
{
  v4 = [a3 preferredContentSizeCategory];
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 tertiaryLabelColor];
  [v7 setTextColor_];

  v9 = v7;
  [v9 setTextAlignment_];
  [v9 setClipsToBounds_];

  [v9 setAdjustsFontForContentSizeCategory_];
  if (qword_1EAD452D0 != -1)
  {
    swift_once();
  }

  v10 = [qword_1EAD452D8 navBarSubtitleAttributedStringAttributesForContentSizeCategory_];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for Key(0);
    sub_19082B370();
    v12 = sub_190D56D90();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_190D56ED0();

  if (v12)
  {
    type metadata accessor for Key(0);
    sub_19082B370();
    v14 = sub_190D56D60();
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString:v13 attributes:v14];

  [v9 setAttributedText_];
  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 sizeToFit];

  return v9;
}

id sub_1908F9740()
{
  v1 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView;
  [*&v0[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView] intrinsicContentSize];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  Width = CGRectGetWidth(v26);
  if (Width < v3)
  {
    v3 = Width;
  }

  [v0 bounds];
  v7 = 0.0;
  if (v3 < CGRectGetWidth(v27))
  {
    [v0 bounds];
    v8 = CGRectGetWidth(v28) * 0.5 - v3 * 0.5;
    v9 = [v0 traitCollection];
    [v9 displayScale];
    v11 = v10;

    v7 = CGFloatPxRoundForScale(v8, v11);
  }

  if (v0[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleHidden] == 1)
  {
    v12 = 0.0;
    v13 = 0.0;
    MaxY = 0.0;
    v15 = 0.0;
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel] intrinsicContentSize];
    v12 = v16;
    v13 = v17;
    [v0 bounds];
    v18 = CGRectGetWidth(v29);
    if (v18 < v12)
    {
      v12 = v18;
    }

    [v0 bounds];
    v15 = 0.0;
    if (v12 < CGRectGetWidth(v30))
    {
      [v0 bounds];
      v19 = CGRectGetWidth(v31) * 0.5 - v12 * 0.5;
      v20 = [v0 traitCollection];
      [v20 displayScale];
      v22 = v21;

      v15 = CGFloatPxRoundForScale(v19, v22);
    }

    v32.origin.y = 0.0;
    v32.origin.x = v7;
    v32.size.width = v3;
    v32.size.height = v5;
    MaxY = CGRectGetMaxY(v32);
  }

  [*&v0[v1] setFrame_];
  v23 = *&v0[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel];

  return [v23 setFrame_];
}

double sub_1908F9A14()
{
  [*(v0 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView) intrinsicContentSize];
  v2 = v1;
  v3 = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleHidden) & 1) == 0)
  {
    [*(v0 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel) intrinsicContentSize];
  }

  return fmax(v2, v3);
}

void sub_1908F9A8C()
{
  v1 = [v0 traitCollection];
  v10 = [v1 preferredContentSizeCategory];

  if (qword_1EAD452D0 != -1)
  {
    swift_once();
  }

  v2 = [qword_1EAD452D8 navBarSubtitleAttributedStringAttributesForContentSizeCategory_];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for Key(0);
    sub_19082B370();
    v4 = sub_190D56D90();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel;
  v6 = *&v0[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel];
  sub_190D52690();
  v7 = sub_190D56ED0();

  if (v4)
  {
    type metadata accessor for Key(0);
    sub_19082B370();
    v8 = sub_190D56D60();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v8];

  [v6 setAttributedText_];
  [*&v0[v5] setNeedsLayout];
  [*&v0[v5] layoutIfNeeded];
  [*&v0[v5] sizeToFit];
}

void sub_1908F9CA0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView;
  v6 = (*&v3[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView] + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_title);
  v7 = *v6 == a1 && v6[1] == a2;
  if (!v7 && (sub_190D58760() & 1) == 0)
  {
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = a1;
    v10[4] = a2;
    if (a3)
    {
      v11 = objc_opt_self();
      v12 = *&v3[v5];
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1908FB5DC;
      *(v13 + 24) = v10;
      v21[4] = sub_19089582C;
      v21[5] = v13;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_190840E6C;
      v21[3] = &block_descriptor_31;
      v14 = _Block_copy(v21);
      sub_190D52690();
      v15 = v3;
      v16 = v12;
      sub_190D50920();

      [v11 transitionWithView:v16 duration:0 options:v14 animations:0 completion:0.35];

      _Block_release(v14);
    }

    else
    {
      v17 = &v3[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_title];
      v18 = *&v3[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_title];
      v19 = *&v3[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_title + 8];
      *v17 = a1;
      *(v17 + 1) = a2;
      swift_bridgeObjectRetain_n();
      v20 = v3;
      sub_1908F8C0C(v18, v19);

      [v20 layoutIfNeeded];
    }
  }
}

id sub_1908F9EC4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = &a1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_title];
  v5 = *&a1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_title];
  v6 = *&a1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_title + 8];
  *v4 = a2;
  *(v4 + 1) = a3;
  sub_190D52690();
  sub_1908F8C0C(v5, v6);

  return [a1 layoutIfNeeded];
}

id sub_1908F9F38(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = &a1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitle];
  v6 = *&a1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitle];
  v7 = *&a1[OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitle + 8];
  *v5 = a2;
  *(v5 + 1) = a3;
  if (v6 == a2 && v7 == a3)
  {
    sub_190D52690();
  }

  else
  {
    v9 = sub_190D58760();
    sub_190D52690();

    if ((v9 & 1) == 0)
    {
      sub_1908F9A8C();
      [a1 setNeedsLayout];
      [a1 invalidateIntrinsicContentSize];
    }
  }

  return [a1 layoutIfNeeded];
}

uint64_t sub_1908FA0F4(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_title];
  result = *&v2[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_title];
  if (result == a1 && *&v2[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_title + 8] == a2)
  {
    return result;
  }

  result = sub_190D58760();
  if (result)
  {
    return result;
  }

  v7 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel;
  v8 = [*&v2[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel] text];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = sub_190D56F10();
  v12 = v11;

  if (!v12)
  {
    goto LABEL_14;
  }

  if (v10 != *v4 || v12 != *(v4 + 1))
  {
    v14 = sub_190D58760();

    if (v14)
    {
      return result;
    }

LABEL_14:
    v15 = *&v2[v7];
    sub_190D52690();
    v16 = sub_190D56ED0();

    [v15 setText_];

    [*&v2[v7] sizeToFit];
    [*&v2[v7] setNeedsLayout];

    return [v2 setNeedsLayout];
  }
}

id sub_1908FA27C(id result)
{
  v2 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_labelType;
  v3 = v1[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_labelType];
  if (v3 == result)
  {
    return result;
  }

  v4 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel;
  v5 = *&v1[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_style];
  v6 = *&v1[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel];
  v7 = sub_1908FAF64(v3, v5);
  [v6 setTextColor_];

  LODWORD(v6) = v1[v2];
  v8 = qword_1EAD452D0;
  v9 = *&v1[v4];
  if (v6 != 1)
  {
    goto LABEL_7;
  }

  if (v8 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD452D8 avatarNameEmergencyFont];
  if (!result)
  {
    __break(1u);
LABEL_7:
    if (v8 != -1)
    {
      swift_once();
    }

    result = [qword_1EAD452D8 avatarStackTitleFont];
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  v10 = result;
  [v9 setFont_];

  [v1 setNeedsLayout];

  return [v1 invalidateIntrinsicContentSize];
}

char *sub_1908FA420(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleChevronHorizontalPadding] = 0x3FF8000000000000;
  v9 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_labelType;
  v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_labelType] = 0;
  v10 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_accessoryImageType;
  *&v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_accessoryImageType] = 0;
  v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronHidden] = 0;
  v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_useOpaqueChevron] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_style] = 0;
  if (qword_1EAD452D0 != -1)
  {
    swift_once();
  }

  v11 = qword_1EAD452D8;
  result = [qword_1EAD452D8 navBarHeaderChevronImage];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v13 = result;
  v14 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  [v14 setContentMode_];
  [v14 sizeToFit];

  *&v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView] = v14;
  v15 = [objc_allocWithZone(CKLabel) initWithFrame_];
  if (a3 != 1)
  {
LABEL_7:
    result = [v11 avatarStackTitleFont];
    if (result)
    {
      goto LABEL_8;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [v11 avatarNameEmergencyFont];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  v16 = result;
  [v15 setFont_];

  v17 = qword_1EAD45308;
  if (a3 == 1)
  {
    if (qword_1EAD45308 != -1)
    {
      swift_once();
    }

    result = [qword_1EAD45310 conversationListEmergencyColor];
    if (result)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v17 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD45310 primaryLabelColor];
  if (result)
  {
LABEL_16:
    v18 = result;
    [v15 setTextColor_];

    [v15 setTextAlignment_];
    [v15 setClipsToBounds_];
    v19 = sub_190D56ED0();
    [v15 setText_];

    [v15 setTitleIconImageType_];
    [v15 sizeToFit];
    *&v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel] = v15;
    v20 = &v4[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_title];
    *v20 = a1;
    v20[1] = a2;
    v4[v9] = a3;
    *&v4[v10] = a4;
    v25.receiver = v4;
    v25.super_class = type metadata accessor for NavbarConversationTitle();
    v21 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v22 = *&v21[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel];
    v23 = v21;
    [v23 addSubview_];
    v24 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView;
    [v23 addSubview_];
    [*&v23[v24] setHidden_];
    [v23 setNeedsLayout];

    return v23;
  }

LABEL_19:
  __break(1u);
  return result;
}

id sub_1908FA7FC()
{
  v1 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView;
  [*&v0[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView] removeFromSuperview];
  v2 = sub_1908FB0E8(v0[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_useOpaqueChevron], *&v0[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_style]);
  v3 = *&v0[v1];
  *&v0[v1] = v2;
  v4 = v2;

  [v4 setHidden_];
  [v0 addSubview_];
  [v0 setNeedsLayout];

  return [v0 invalidateIntrinsicContentSize];
}

id sub_1908FA8C8(uint64_t (*a1)(void))
{
  v2 = a1();
  v8.receiver = v1;
  v8.super_class = v2;
  objc_msgSendSuper2(&v8, sel_didMoveToWindow);
  result = [v1 window];
  if (result)
  {

    sub_19095C080();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    *(inited + 32) = sub_190D53450();
    v5 = sub_1908A223C(inited);
    swift_setDeallocating();
    v7[3] = v2;
    v7[0] = v1;
    v6 = v1;
    MEMORY[0x193AF3560](v5, v7, sel_preferredContentSizeCategoryDidChangeWithView_previousTraitCollection_);
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return result;
}

id sub_1908FAA40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel;
  [*&v0[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel] intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  [v0 bounds];
  Width = CGRectGetWidth(v33);
  if (Width < v4)
  {
    v4 = Width;
  }

  v8 = 0.0;
  v9 = 0.0;
  if ([v0 _shouldReverseLayoutDirection])
  {
    [v0 bounds];
    v9 = CGRectGetWidth(v34) - v4;
  }

  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  if ((v0[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronHidden] & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView;
    [*&v0[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView] sizeToFit];
    [*&v0[v13] bounds];
    v8 = v14;
    v10 = v15;
    v16 = [v0 _shouldReverseLayoutDirection];
    v17 = 0;
    v18 = v9;
    v19 = v4;
    v20 = v6;
    if (v16)
    {
      v12 = CGRectGetMinX(*&v18) + -1.5 - v8;
    }

    else
    {
      v12 = CGRectGetMaxX(*&v18) + 1.5;
    }

    v21 = [*&v0[v13] image];
    if (v21)
    {
      v22 = v21;
      v23 = COERCE_DOUBLE(sub_190D57D30());
      v25 = v24;

      if (v25)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v23;
      }
    }

    else
    {
      v26 = 0.0;
    }

    result = [*&v1[v2] font];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v28 = result;
    [result ascender];
    v30 = v29;

    v11 = v26 + v30 + 0.0 - v10;
  }

  [*&v1[v2] setFrame_];
  v31 = *&v1[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView];

  return [v31 setFrame_];
}

double sub_1908FACEC()
{
  v1 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView;
  [*(v0 + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView) sizeToFit];
  v2 = 0.0;
  if ((*(v0 + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronHidden) & 1) == 0)
  {
    [*(v0 + v1) bounds];
    v2 = v3;
  }

  [*(v0 + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel) intrinsicContentSize];
  return v2 + v4 + 1.5;
}

id sub_1908FAE40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1908FAF10()
{
  result = qword_1EAD56980;
  if (!qword_1EAD56980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD56980);
  }

  return result;
}

id sub_1908FAF64(char a1, uint64_t a2)
{
  if (a1 == 1)
  {
    if (qword_1EAD45308 == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  if ((a2 - 2) < 2)
  {
    goto LABEL_12;
  }

  if (a2 == 5)
  {
    v3 = &selRef_blackColor;
    goto LABEL_14;
  }

  if (a2 == 1)
  {
    if (qword_1EAD45308 != -1)
    {
      swift_once();
    }

    result = [qword_1EAD45310 entryFieldDarkEffectButtonColor];
    if (!result)
    {
      __break(1u);
LABEL_12:
      v3 = &selRef_whiteColor;
LABEL_14:
      v4 = [objc_opt_self() *v3];

      return v4;
    }
  }

  else
  {
    if (qword_1EAD45308 != -1)
    {
      swift_once();
    }

    result = [qword_1EAD45310 primaryLabelColor];
    if (!result)
    {
      __break(1u);
LABEL_21:
      swift_once();
LABEL_3:
      result = [qword_1EAD45310 conversationListEmergencyColor];
      if (!result)
      {
        __break(1u);
      }
    }
  }

  return result;
}

id sub_1908FB0E8(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1EAD452D0 != -1)
    {
      swift_once();
    }

    result = [qword_1EAD452D8 navBarHeaderOpaqueChevronImage];
    if (result)
    {
      v4 = result;
      v5 = a2 & 0xFFFFFFFFFFFFFFFELL;
      v6 = objc_opt_self();
      v7 = v4;
      if (v5 == 2)
      {
        v8 = [v6 whiteColor];
      }

      else
      {
        v8 = [v6 blackColor];
      }

      v9 = v8;
      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (qword_1EAD452D0 != -1)
  {
    swift_once();
  }

  result = [qword_1EAD452D8 navBarHeaderChevronImage];
  if (!result)
  {
    goto LABEL_17;
  }

  v7 = result;
  v9 = 0;
LABEL_13:
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  if (v9)
  {
    [v10 setTintColor_];
  }

  [v10 setContentMode_];
  [v10 sizeToFit];

  return v10;
}

void sub_1908FB28C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_labelType) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_style) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleHidden) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_chevronHidden) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_useOpaqueChevron) = 0;
  v2 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_titleView;
  v3 = objc_allocWithZone(type metadata accessor for NavbarConversationTitle());
  *(v0 + v2) = sub_1908FA420(0, 0xE000000000000000, 0, 0);
  *(v0 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_accessoryImageType) = 0;
  v4 = OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_subtitleLabel;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  *(v1 + OBJC_IVAR____TtC7ChatKit31NavBarConversationIdentityLabel_activeConstraints) = MEMORY[0x1E69E7CC0];
  sub_190D58510();
  __break(1u);
}

void sub_1908FB3A0()
{
  *(v0 + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleChevronHorizontalPadding) = 0x3FF8000000000000;
  *(v0 + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_labelType) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_accessoryImageType) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronHidden) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_useOpaqueChevron) = 0;
  *(v0 + OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_style) = 0;
  sub_190D58510();
  __break(1u);
}

uint64_t sub_1908FB448()
{
  v1 = v0;
  sub_1902188FC(0, &qword_1EAD46500);
  result = sub_190D57D90();
  if (result)
  {
    v3 = OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView;
    v4 = qword_1EAD452D0;
    v5 = *&v0[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_chevronImageView];
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = qword_1EAD452D8;
    v7 = [qword_1EAD452D8 navBarHeaderChevronImage];
    [v5 setImage_];

    [*&v1[v3] sizeToFit];
    v8 = *&v1[OBJC_IVAR____TtC7ChatKit23NavbarConversationTitle_titleLabel];
    v9 = [v6 avatarStackTitleFont];
    [v8 setFont_];

    [v1 setNeedsLayout];
    [v1 invalidateIntrinsicContentSize];

    return [v1 layoutIfNeeded];
  }

  return result;
}

uint64_t sub_1908FB5F8(uint64_t *a1, int a2)
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

uint64_t sub_1908FB640(uint64_t result, int a2, int a3)
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

uint64_t sub_1908FB6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD559B8);
  MEMORY[0x1EEE9AC00](v48);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56988);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v48 - v10);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56990);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v48 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56998);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v48 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD569A0);
  MEMORY[0x1EEE9AC00](v50);
  v16 = &v48 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD569A8);
  MEMORY[0x1EEE9AC00](v55);
  v18 = &v48 - v17;
  sub_190D50920();
  sub_190D50920();
  sub_190BAE128(a1, a2, a3, v11);
  LOBYTE(a1) = sub_190D55300();
  sub_190D539C0();
  v19 = v11 + *(v9 + 36);
  *v19 = a1;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  result = CKFrameworkBundle();
  if (result)
  {
    v25 = result;
    v26 = sub_190D56ED0();
    v27 = sub_190D56ED0();
    v28 = [v25 localizedStringForKey:v26 value:0 table:{v27, v48, v49}];

    v29 = sub_190D56F10();
    v31 = v30;

    *&v57 = v29;
    *(&v57 + 1) = v31;
    sub_1908FBD08();
    sub_19081E484();
    sub_190D55970();

    sub_19022EEA4(v11, &qword_1EAD56988);
    v56 = 0x3FF0000000000000;
    sub_190D55FC0();
    sub_1908FBDC4();
    sub_1908FBE80();
    v32 = v51;
    sub_190D55730();

    sub_19022EEA4(v13, &qword_1EAD56990);
    LOBYTE(v28) = sub_190D55310();
    sub_190D539C0();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    (*(v53 + 32))(v16, v32, v54);
    v41 = &v16[*(v50 + 36)];
    *v41 = v28;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    sub_190D56520();
    sub_190D54430();
    sub_190267DBC(v16, v18);
    v42 = &v18[*(v55 + 36)];
    v43 = v62;
    *(v42 + 4) = v61;
    *(v42 + 5) = v43;
    *(v42 + 6) = v63;
    v44 = v58;
    *v42 = v57;
    *(v42 + 1) = v44;
    v45 = v60;
    *(v42 + 2) = v59;
    *(v42 + 3) = v45;
    v46 = *MEMORY[0x1E697E6C0];
    v47 = sub_190D540E0();
    (*(*(v47 - 8) + 104))(v8, v46, v47);
    sub_1908FC518(&unk_1EAD452A8, MEMORY[0x1E697E730]);
    result = sub_190D56E30();
    if (result)
    {
      sub_1908FBED4();
      sub_1908FC044();
      sub_190D55870();
      sub_19022EEA4(v8, &qword_1EAD559B8);
      return sub_190267E2C(v18);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1908FBD08()
{
  result = qword_1EAD569B0;
  if (!qword_1EAD569B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56988);
    sub_1908FC518(&qword_1EAD569B8, _s15AnimatedChevronVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD569B0);
  }

  return result;
}

unint64_t sub_1908FBDC4()
{
  result = qword_1EAD569C0;
  if (!qword_1EAD569C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56990);
    sub_1908FBD08();
    sub_1908FC518(&qword_1EAD56800, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD569C0);
  }

  return result;
}

unint64_t sub_1908FBE80()
{
  result = qword_1EAD569C8;
  if (!qword_1EAD569C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD569C8);
  }

  return result;
}

unint64_t sub_1908FBED4()
{
  result = qword_1EAD569D0;
  if (!qword_1EAD569D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD569A8);
    sub_1908FBF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD569D0);
  }

  return result;
}

unint64_t sub_1908FBF60()
{
  result = qword_1EAD569D8;
  if (!qword_1EAD569D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD569A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD56990);
    sub_1908FBDC4();
    sub_1908FBE80();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD569D8);
  }

  return result;
}

unint64_t sub_1908FC044()
{
  result = qword_1EAD44E28;
  if (!qword_1EAD44E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD559B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD44E28);
  }

  return result;
}

uint64_t sub_1908FC0A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1908FC104(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1908FC164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1908FC1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1908FC218(double a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD569E0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - v6;
  sub_190D54F60();
  v15 = a1;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD569E8);
  sub_190D55FD0();
  v8 = v14[1];
  sub_190D56690();
  v9 = &v7[*(v5 + 36)];
  *v9 = v8;
  *(v9 + 1) = v8;
  *(v9 + 2) = v10;
  *(v9 + 3) = v11;
  LOBYTE(v15) = sub_190D54F70() & 1;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  sub_1908FC45C();
  sub_190D50920();
  sub_190D55C20();

  return sub_19022EEA4(v7, &qword_1EAD569E0);
}

uint64_t sub_1908FC3B0()
{
  MEMORY[0x193AF1E10](0.5, 1.0, 0.0);
  sub_190D53E40();
}

unint64_t sub_1908FC45C()
{
  result = qword_1EAD569F0;
  if (!qword_1EAD569F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD569E0);
    sub_1908FC518(&qword_1EAD45210, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD569F0);
  }

  return result;
}

uint64_t sub_1908FC518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1908FC628(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___CKEntryViewPlusButton_plusButtonDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1908FC694(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKEntryViewPlusButton_plusButtonDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1908424BC;
}

id EntryViewPlusButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void EntryViewPlusButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___CKEntryViewPlusButton_plusButtonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR___CKEntryViewPlusButton_sendMenuButtonEnabled] = 1;
  *&v4[OBJC_IVAR___CKEntryViewPlusButton_backgroundBlurRadiusLightMode] = 0;
  *&v4[OBJC_IVAR___CKEntryViewPlusButton_backgroundBlurRadiusDarkMode] = 0;
  *&v4[OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForLightMode] = 0;
  *&v4[OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForDarkMode] = 0;
  type metadata accessor for PlusButtonBlurContainerView();
  *&v4[OBJC_IVAR___CKEntryViewPlusButton_blurContainerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = [objc_allocWithZone(type metadata accessor for PlusButtonClippingView()) init];
  v10 = OBJC_IVAR___CKEntryViewPlusButton_clippingView;
  *&v4[OBJC_IVAR___CKEntryViewPlusButton_clippingView] = v9;
  v11 = objc_opt_self();
  v12 = [v11 sharedBehaviors];
  if (!v12)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v12 entryViewUsesTransparentBackground];

  if (v14)
  {
    v15 = [objc_allocWithZone(type metadata accessor for PlusButtonBlurBackgroundView()) init];
    *&v4[OBJC_IVAR___CKEntryViewPlusButton_backgroundView] = v15;
    v16 = [v15 contentView];
    *&v4[OBJC_IVAR___CKEntryViewPlusButton_backgroundViewContentView] = v16;
  }

  else
  {
    v17 = [objc_allocWithZone(type metadata accessor for PlusButtonBlendedBackgroundView()) init];
    *&v4[OBJC_IVAR___CKEntryViewPlusButton_backgroundView] = v17;
    *&v4[OBJC_IVAR___CKEntryViewPlusButton_backgroundViewContentView] = v17;
    v18 = *&v4[v10];
    v19 = v17;
    v20 = [v18 layer];
    [v20 0x1FB97BEEDLL];
  }

  type metadata accessor for PlusButtonButtonView();
  *&v4[OBJC_IVAR___CKEntryViewPlusButton_buttonView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = [v11 sharedBehaviors];
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21;
  v23 = [v21 newEntryViewPlusButtonIconImageView];

  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *&v4[OBJC_IVAR___CKEntryViewPlusButton_iconImageView] = v23;
  v42.receiver = v4;
  v42.super_class = type metadata accessor for EntryViewPlusButton();
  v24 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = OBJC_IVAR___CKEntryViewPlusButton_blurContainerView;
  v26 = *&v24[OBJC_IVAR___CKEntryViewPlusButton_blurContainerView];
  v27 = v24;
  [v27 addSubview_];
  v28 = *&v24[v25];
  v29 = OBJC_IVAR___CKEntryViewPlusButton_clippingView;
  [v28 addSubview_];
  v30 = OBJC_IVAR___CKEntryViewPlusButton_backgroundView;
  [*&v27[v29] addSubview_];
  v31 = OBJC_IVAR___CKEntryViewPlusButton_buttonView;
  [*&v27[OBJC_IVAR___CKEntryViewPlusButton_backgroundViewContentView] addSubview_];
  [*&v27[v31] addSubview_];
  [*&v27[v30] setIsAccessibilityElement_];
  v32 = *&v27[v30];
  v33 = sub_190D56ED0();
  [v32 setAccessibilityIdentifier_];

  v34 = *&v27[v30];
  v35 = CKFrameworkBundle();
  if (!v35)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = sub_190D56ED0();
  v38 = sub_190D56ED0();
  v39 = [v36 localizedStringForKey:v37 value:0 table:v38];

  if (!v39)
  {
    sub_190D56F10();
    v39 = sub_190D56ED0();
  }

  [v34 setAccessibilityLabel_];

  sub_1908FE09C();
  v40 = [objc_allocWithZone(MEMORY[0x1E69DCDB0]) initWithDelegate_];
  [v27 addInteraction_];
  v41 = [*&v27[v31] layer];
  [v41 setAllowsGroupBlending_];
}

uint64_t sub_1908FCE44()
{
  v1 = OBJC_IVAR___CKEntryViewPlusButton_sendMenuButtonEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1908FCEDC(char a1)
{
  v3 = OBJC_IVAR___CKEntryViewPlusButton_sendMenuButtonEnabled;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = a1 & 1;
  v5 = 0.4;
  if (v4)
  {
    v5 = 1.0;
  }

  [v1 setAlpha_];
  return [*&v1[OBJC_IVAR___CKEntryViewPlusButton_buttonView] setEnabled_];
}

void (*sub_1908FCF6C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKEntryViewPlusButton_sendMenuButtonEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1908FCFF4;
}

void sub_1908FCFF4(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 24);
    v5 = *(v4 + *(v3 + 32));
    v6 = 0.4;
    if (*(v4 + *(v3 + 32)))
    {
      v6 = 1.0;
    }

    [*(v3 + 24) setAlpha_];
    [*(v4 + OBJC_IVAR___CKEntryViewPlusButton_buttonView) setEnabled_];
  }

  free(v3);
}

_BYTE *sub_1908FD0F4(char a1)
{
  result = *(v1 + OBJC_IVAR___CKEntryViewPlusButton_clippingView);
  v4 = result[OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius];
  result[OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius] = a1;
  if (v4 & 1) == 0 && (a1)
  {
    return [result setNeedsLayout];
  }

  return result;
}

_BYTE *(*sub_1908FD12C(uint64_t a1))(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CKEntryViewPlusButton_clippingView);
  v3 = OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387322PlusButtonClippingView_automaticallyAdjustsCornerRadius;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v2 + v3);
  return sub_1908FD16C;
}

_BYTE *sub_1908FD16C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = result[v3];
  result[v3] = v5;
  if ((v6 & 1) == 0)
  {
    if (v5)
    {
      return [result setNeedsLayout];
    }
  }

  return result;
}

id (*sub_1908FD1F8(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CKEntryViewPlusButton_clippingView);
  a1[1] = v3;
  [v3 _continuousCornerRadius];
  *a1 = v4;
  return sub_1908FD254;
}

id sub_1908FD2B0()
{
  v1 = [*(v0 + OBJC_IVAR___CKEntryViewPlusButton_buttonView) backgroundColor];

  return v1;
}

void sub_1908FD308(void *a1)
{
  [*(v1 + OBJC_IVAR___CKEntryViewPlusButton_buttonView) setBackgroundColor_];
}

void (*sub_1908FD358(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR___CKEntryViewPlusButton_buttonView);
  a1[1] = v3;
  *a1 = [v3 backgroundColor];
  return sub_1908FD3BC;
}

void sub_1908FD3BC(id *a1)
{
  v1 = *a1;
  [a1[1] setBackgroundColor_];
}

void sub_1908FD494(double a1)
{
  v2 = *(v1 + OBJC_IVAR___CKEntryViewPlusButton_blurContainerView);
  v3 = OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView_rasterizationPercent;
  *&v2[OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView_rasterizationPercent] = a1;
  v4 = [v2 traitCollection];
  [v4 displayScale];
  v6 = v5;

  v7 = [v2 layer];
  [v7 setRasterizationScale_];

  v8 = [v2 layer];
  [v8 setShouldRasterize_];
}

void (*sub_1908FD58C(void *a1))(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___CKEntryViewPlusButton_blurContainerView);
  v3 = OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView_rasterizationPercent;
  a1[1] = v2;
  a1[2] = v3;
  *a1 = *(v2 + v3);
  return sub_1908FD5CC;
}

void sub_1908FD5CC(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  *&v1[v2] = *a1;
  v3 = [v1 traitCollection];
  [v3 displayScale];
  v5 = v4;

  v6 = [v1 layer];
  [v6 setRasterizationScale_];

  v7 = [v1 layer];
  [v7 setShouldRasterize_];
}

double sub_1908FD700()
{
  v1 = OBJC_IVAR___CKEntryViewPlusButton_backgroundBlurRadiusLightMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1908FD75C(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190900048;
}

double sub_1908FD808()
{
  v1 = OBJC_IVAR___CKEntryViewPlusButton_backgroundBlurRadiusDarkMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1908FD858(char *a1, double a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *&a1[v6] = a2;
  v7 = a1;
  sub_1908FD990();
}

void sub_1908FD8C4(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = a2;
  sub_1908FD990();
}

uint64_t (*sub_1908FD914(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1908FD978;
}

void sub_1908FD990()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];
  if (v2 == 2 || v2 == 1)
  {
    swift_beginAccess();
  }

  v3 = [*&v0[OBJC_IVAR___CKEntryViewPlusButton_blurContainerView] layer];
  v4 = sub_190D51C70();
  v5 = sub_190D56ED0();
  [v3 setValue:v4 forKeyPath:v5];
}

void *sub_1908FDAF4()
{
  v1 = OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForLightMode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*sub_1908FDB58(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_19090004C;
}

void *sub_1908FDC08()
{
  v1 = OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForDarkMode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1908FDC60(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *&a1[v6];
  *&a1[v6] = a3;
  v8 = a3;
  v9 = a1;

  sub_1908FDE68();
}

void sub_1908FDCE4(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  sub_1908FDE68();
}

void sub_1908FDD48(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;

  sub_1908FDE68();
}

uint64_t (*sub_1908FDDA8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1908FDE0C;
}

uint64_t sub_1908FDE24(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void sub_1908FDE68()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];
  if (v2 == 2)
  {
    v3 = OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForDarkMode;
  }

  else
  {
    if (v2 != 1)
    {
      v5 = 0;
      goto LABEL_7;
    }

    v3 = OBJC_IVAR___CKEntryViewPlusButton_backgroundCompositingFilterForLightMode;
  }

  v4 = &v0[v3];
  swift_beginAccess();
  v5 = *v4;
LABEL_7:
  v6 = [*&v0[OBJC_IVAR___CKEntryViewPlusButton_blurContainerView] layer];
  [v6 setCompositingFilter_];
}

id (*sub_1908FDFB4(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CKEntryViewPlusButton_iconImageView);
  a1[1] = v3;
  [v3 alpha];
  *a1 = v4;
  return sub_1908FE010;
}

void sub_1908FE09C()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];
  if (v2 == 1)
  {
    v3 = MEMORY[0x1E6979CE8];
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    v3 = MEMORY[0x1E6979CF8];
LABEL_5:
    v5 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v4 = [*&v0[OBJC_IVAR___CKEntryViewPlusButton_iconImageView] layer];
  [v4 setCompositingFilter_];
}

id sub_1908FE1E4()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for EntryViewPlusButton();
  objc_msgSendSuper2(&v15, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR___CKEntryViewPlusButton_blurContainerView];
  [v9 setFrame_];
  v10 = *&v0[OBJC_IVAR___CKEntryViewPlusButton_clippingView];
  [v9 convertRect:v0 fromCoordinateSpace:{v2, v4, v6, v8}];
  [v10 setFrame_];
  v11 = *&v0[OBJC_IVAR___CKEntryViewPlusButton_backgroundView];
  [v10 convertRect:v0 fromCoordinateSpace:{v2, v4, v6, v8}];
  [v11 setFrame_];
  v12 = *&v0[OBJC_IVAR___CKEntryViewPlusButton_buttonView];
  [*&v0[OBJC_IVAR___CKEntryViewPlusButton_backgroundViewContentView] convertRect:v0 fromCoordinateSpace:{v2, v4, v6, v8}];
  [v12 setFrame_];
  v13 = *&v0[OBJC_IVAR___CKEntryViewPlusButton_iconImageView];
  [v12 convertRect:v0 fromCoordinateSpace:{v2, v4, v6, v8}];
  return [v13 setFrame_];
}

UIPointerRegion_optional __swiftcall EntryViewPlusButton.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v4 = defaultRegion.super.isa;
  isa = defaultRegion.super.isa;
  result.value.super.isa = isa;
  result.is_nil = v5;
  return result;
}

char *sub_1908FE540(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView_rasterizationPercent] = 0x3FF0000000000000;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for PlusButtonBlurContainerView();
  v9 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1908FE79C();
  v10 = [v9 traitCollection];
  [v10 displayScale];
  v12 = v11;

  v13 = [v9 layer];
  v14 = OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView_rasterizationPercent;
  [v13 setRasterizationScale_];

  v15 = [v9 layer];
  [v15 setShouldRasterize_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_190DD1D90;
  v17 = sub_190D53180();
  v18 = MEMORY[0x1E69DC050];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  MEMORY[0x193AF3550](v16, sel_updateRasterizationScale);

  swift_unknownObjectRelease();

  return v9;
}

void sub_1908FE79C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v3 = sub_190D574E0();
  [v2 setValue:v3 forKey:*MEMORY[0x1E6979BA8]];

  v4 = [v1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_190DD1D90;
  *(v5 + 56) = sub_1902188FC(0, &qword_1ED7769D0);
  *(v5 + 32) = v2;
  v6 = v2;
  v7 = sub_190D57160();

  [v4 setFilters_];
}

uint64_t sub_1908FE8EC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0 || a1 == 0xD000000000000012 && 0x8000000190E653F0 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for PlusButtonBlurContainerView();
  v7 = objc_msgSendSuper2(&v8, sel__shouldAnimatePropertyWithKey_, v6);

  return v7;
}

void sub_1908FEA54()
{
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  v4 = [v0 layer];
  v5 = OBJC_IVAR____TtC7ChatKitP33_3A4F9EFB16D832C5123E30AA2C9D387327PlusButtonBlurContainerView_rasterizationPercent;
  [v4 setRasterizationScale_];

  v6 = [v0 layer];
  [v6 setShouldRasterize_];
}

id sub_1908FED9C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for PlusButtonBlurBackgroundView();
  v1 = objc_msgSendSuper2(&v7, sel_initWithEffect_, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_190DD55F0;
  v3 = objc_opt_self();
  v4 = v1;
  result = [v3 effectWithBlurRadius_];
  if (result)
  {
    *(v2 + 32) = result;
    sub_1902188FC(0, &unk_1EAD466A0);
    v6 = sub_190D57160();

    [v4 setBackgroundEffects_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1908FEED0(void *a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PlusButtonBlurBackgroundView();
  v3 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  if (!v3)
  {
    goto LABEL_4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_190DD55F0;
  v5 = objc_opt_self();
  v6 = v3;
  result = [v5 effectWithBlurRadius_];
  if (result)
  {
    *(v4 + 32) = result;
    sub_1902188FC(0, &unk_1EAD466A0);
    v8 = sub_190D57160();

    [v6 setBackgroundEffects_];

    a1 = v8;
LABEL_4:

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1908FF1CC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];
  if (v2 == 1)
  {
    v3 = MEMORY[0x1E6979CE8];
    goto LABEL_5;
  }

  if (v2 == 2)
  {
    v3 = MEMORY[0x1E6979CF8];
LABEL_5:
    v5 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v4 = [v0 layer];
  [v4 setCompositingFilter_];
}

id sub_1908FF420(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s7ChatKit19EntryViewPlusButtonC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0kH0C_So0K6RegionCtF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56A78);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_190D530A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D53120();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v26 - v14);
  v16 = [objc_allocWithZone(MEMORY[0x1E69DD070]) initWithView_];
  *v15 = v16;
  (*(v10 + 104))(v15, *MEMORY[0x1E69DBF70], v9);
  v17 = v16;
  [v1 bounds];
  v19 = v18 * 0.5;
  [v1 frame];
  *v8 = v20;
  *(v8 + 1) = v21;
  *(v8 + 2) = v22;
  *(v8 + 3) = v23;
  *(v8 + 4) = v19;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBED0], v5);
  sub_1902188FC(0, &unk_1EAD56A80);
  (*(v10 + 16))(v13, v15, v9);
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v24 = sub_190D576F0();

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v15, v9);
  return v24;
}

double keypath_get_17Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_set_18Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  sub_1908FD990();
}

id keypath_get_21Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t sub_190900050()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v5 = [v3 associatedMessageType];
    if (v5 > 2002)
    {
      switch(v5)
      {
        case 2003:

          return 24936;
        case 2004:

          return 0x74616D616C637865;
        case 2005:

          return 0x6E6F697473657571;
      }
    }

    else
    {
      switch(v5)
      {
        case 2000:

          return 0x7472616568;
        case 2001:

          return 0x705573626D756874;
        case 2002:

          return 0x6F4473626D756874;
      }
    }
  }

  else
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v1;
      v10 = [v8 associatedMessageEmoji];
      v11 = sub_190D56F10();

      return v11;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      v14 = v1;
      v15 = [v13 stickerIdentifier];
      v16 = sub_190D56F10();
      v18 = v17;

      MEMORY[0x193AF28B0](v16, v18);

      return 0x3A72656B63697453;
    }

    sub_190D582B0();

    swift_getObjectType();
    v19 = sub_190D58980();
    MEMORY[0x193AF28B0](v19);
  }

  result = sub_190D58510();
  __break(1u);
  return result;
}

void sub_190900360(void *a1, void *a2, double a3)
{
  v6 = [a1 CGContext];
  CGContextTranslateCTM(v6, -a3, -a3);

  v7 = [a2 layer];
  v8 = [a1 CGContext];
  [v7 renderInContext_];
}

char *_s7ChatKit16TapbackViewUtilsC4view3for10isSelectedSo09CKTapbackD8Protocol_So6UIViewCXcSo9IMTapbackCSg_SbtFZ_0(void *a1, char a2)
{
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_190900868();
      v4 = a1;
      if (sub_190D57D90())
      {
        type metadata accessor for TapbackClassicView();
        v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        goto LABEL_17;
      }
    }

    else
    {
      v12 = a1;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() && (sub_190900868(), (sub_190D57D90() & 1) != 0))
    {
      v5 = [objc_allocWithZone(type metadata accessor for TapbackEmojiView()) init];
    }

    else
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass() || (sub_190900868(), (sub_190D57D90() & 1) == 0))
      {
        v13 = [objc_allocWithZone(type metadata accessor for TapbackStickerView()) init];
        v14 = *&v13[OBJC_IVAR___CKTapbackStickerView_animatedImage];
        *&v13[OBJC_IVAR___CKTapbackStickerView_animatedImage] = 0;

        sub_190B54AA0();
        sub_190B54C08();
        v13[OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage] = 1;
        sub_190B55D58();
        v13[OBJC_IVAR___CKTapbackStickerView_expectsAnimatedImage] = 0;
        v15 = qword_1EAD51C98;
        v10 = v13;
        if (v15 != -1)
        {
          swift_once();
        }

        v16 = sub_190D53040();
        __swift_project_value_buffer(v16, qword_1EAD9E010);
        v17 = a1;
        v18 = sub_190D53020();
        v19 = sub_190D576A0();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v26 = v21;
          *v20 = 136315138;
          swift_getObjectType();
          v22 = sub_190D58980();
          v24 = sub_19021D9F8(v22, v23, &v26);

          *(v20 + 4) = v24;
          _os_log_impl(&dword_19020E000, v18, v19, "Attempted to generate a tapback view representation for a tapback type that is not supported %s. Using fallback placeholder.", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v21);
          MEMORY[0x193AF7A40](v21, -1, -1);
          MEMORY[0x193AF7A40](v20, -1, -1);
        }

        goto LABEL_23;
      }

      v5 = [objc_allocWithZone(type metadata accessor for TapbackStickerView()) init];
    }

LABEL_17:
    v10 = v5;
LABEL_23:
    [v10 configureForTapback:a1 isSelected:a2 & 1];

    return v10;
  }

  if (qword_1EAD51C98 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9E010);
  v7 = sub_190D53020();
  v8 = sub_190D576A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_19020E000, v7, v8, "Attempted to generate a tapback view representation for a nil tapback instance", v9, 2u);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  v10 = [objc_allocWithZone(type metadata accessor for TapbackStickerView()) init];
  v11 = *&v10[OBJC_IVAR___CKTapbackStickerView_animatedImage];
  *&v10[OBJC_IVAR___CKTapbackStickerView_animatedImage] = 0;

  sub_190B54AA0();
  sub_190B54C08();
  v10[OBJC_IVAR___CKTapbackStickerView_isPlaceholderImage] = 1;
  sub_190B55D58();
  v10[OBJC_IVAR___CKTapbackStickerView_expectsAnimatedImage] = 0;
  return v10;
}

unint64_t sub_190900868()
{
  result = qword_1EAD55560;
  if (!qword_1EAD55560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD55560);
  }

  return result;
}

uint64_t sub_1909008FC()
{
  v1 = OBJC_IVAR___CKGlassSendButton_ckTintColor;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1909009A4(char a1)
{
  v3 = OBJC_IVAR___CKGlassSendButton_ckTintColor;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsUpdateConfiguration];
}

id (*sub_190900A04(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190900A68;
}

id sub_190900A68(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsUpdateConfiguration];
  }

  return result;
}

void sub_190900ABC()
{
  v0 = sub_190D57E10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57F90();
  v4 = [objc_opt_self() defaultFontForTextStyle_];
  if (v4)
  {
    v5 = v4;
    [v4 pointSize];
    v7 = v6;

    v8 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:v7];
    v9 = sub_190D56ED0();
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    v11 = v10;
    sub_190D57F60();
    (*(v1 + 104))(v3, *MEMORY[0x1E69DC508], v0);
    sub_190D57E20();
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    sub_190D57F00();
    v14 = [v12 blueColor];
    sub_190D57EF0();
  }

  else
  {
    __break(1u);
  }
}

id GlassSendButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GlassSendButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = aBlock - v10;
  v4[OBJC_IVAR___CKGlassSendButton_ckTintColor] = 1;
  v12 = type metadata accessor for GlassSendButton();
  v19.receiver = v4;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  sub_190900ABC();
  v14 = sub_190D57FB0();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  sub_190D57FE0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_19090144C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_32;
  v16 = _Block_copy(aBlock);

  [v13 setConfigurationUpdateHandler_];
  _Block_release(v16);

  return v13;
}

void sub_190900F40(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v38 - v6;
  v8 = sub_190D57FB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  sub_190D57FD0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_1908F00B4(v7);
    return;
  }

  v38 = v5;
  (*(v9 + 32))(v11, v7, v8);
  v14 = objc_opt_self();
  v15 = [v14 sharedBehaviors];
  if (!v15)
  {
    __break(1u);
    goto LABEL_28;
  }

  v16 = v15;
  v17 = [v15 theme];

  if (!v17)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v18 = OBJC_IVAR___CKGlassSendButton_ckTintColor;
  swift_beginAccess();
  v19 = [v17 sendButtonColorForColorType_];

  v39 = v19;
  if (!v19)
  {
    v39 = [objc_opt_self() blueColor];
  }

  v20 = [v14 sharedBehaviors];
  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = v20;
  v22 = [v20 theme];

  if (!v22)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v23 = [v22 sendButtonArrowColorForColorType_];

  if (!v23)
  {
    v23 = [objc_opt_self() whiteColor];
  }

  v24 = [a1 traitCollection];
  v25 = [v24 userInterfaceStyle];

  v26 = [a1 isHighlighted];
  v27 = v39;
  if (v26)
  {
    if (v25 == 2)
    {
      v28 = [v39 colorWithAlphaComponent_];
    }

    else
    {
      v28 = [v39 colorWithAlphaComponent_];
    }

    v29 = v28;
  }

  else
  {
    v29 = v39;
  }

  v30 = v29;
  if ([a1 isEnabled])
  {
    v31 = v30;
  }

  else
  {
    v32 = [objc_opt_self() systemGrayColor];
    [v32 colorWithAlphaComponent_];
  }

  sub_190D57EF0();
  if ([a1 isHighlighted] && (v33 = objc_msgSend(a1, sel_traitCollection), v34 = objc_msgSend(v33, sel_userInterfaceStyle), v33, v34 == 2))
  {
    v35 = [v23 colorWithAlphaComponent_];
  }

  else
  {
    v36 = v23;
  }

  sub_190D57F00();
  v37 = v38;
  (*(v9 + 16))(v38, v11, v8);
  (*(v9 + 56))(v37, 0, 1, v8);
  sub_190D57FE0();

  (*(v9 + 8))(v11, v8);
}

id GlassSendButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassSendButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1909016F8()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ClarityUIChatController();
  objc_msgSendSuper2(&v10, sel_viewDidLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;

    v7 = &v0[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_lastLaidOutSize];
    if ((v0[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_lastLaidOutSize + 16] & 1) != 0 || (v11.width = v4, v11.height = v6, !CGSizeEqualToSize(v11, *v7)))
    {
      v8 = [v0 collectionView];
      if (v8)
      {
        v9 = v8;
        [v8 __ck_scrollToBottom_];
      }

      *v7 = v4;
      v7[1] = v6;
      *(v7 + 16) = 0;
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_19090182C(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ClarityUIChatController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v1 conversation];
  [v3 addConversation_];

  v5 = [v1 conversation];
  [v3 loadHistoryForConversation:v5 keepAllCurrentlyLoadedMessages:0];

  v6 = [v1 conversation];
  [v6 resortMessagesIfNecessary];
}

void sub_190901A40()
{
  v1 = v0;
  v2 = [v0 composition];
  if (v2)
  {
    v3 = v2;
    if (qword_1EAD51CB8 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9E058);
    v5 = sub_190D53020();
    v6 = sub_190D576C0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19020E000, v5, v6, "Sending message...", v7, 2u);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }

    aBlock[4] = sub_190901CA8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190896518;
    aBlock[3] = &block_descriptor_33;
    v8 = _Block_copy(aBlock);
    [v1 selectAccountAndSendComposition:v3 completion:v8];
    _Block_release(v8);
  }

  else
  {
    if (qword_1EAD51CB8 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9E058);
    oslog = sub_190D53020();
    v10 = sub_190D576A0();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_19020E000, oslog, v10, "Attempted to send message, but no message was present.", v11, 2u);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }
  }
}

void sub_190901CA8()
{
  if (qword_1EAD51CB8 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9E058);
  oslog = sub_190D53020();
  v1 = sub_190D576C0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_19020E000, oslog, v1, "Message sent.", v2, 2u);
    MEMORY[0x193AF7A40](v2, -1, -1);
  }
}

void sub_190902038(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v46 - v8;
  if (v7)
  {
    v10 = [v7 text];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 string];

      v13 = sub_190D56F10();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v2 composition];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 text];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 string];

      v21 = sub_190D56F10();
      v23 = v22;
    }

    else
    {

      v21 = 0;
      v23 = 0xE000000000000000;
    }
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = [v2 composition];
  if (!v24)
  {
LABEL_19:
    v47 = v24;
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_30:
    if (!v23)
    {
      if (!v24)
      {
        return;
      }

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v25 = v24;
  v26 = [v24 mediaObjects];

  if (!v26)
  {
    goto LABEL_52;
  }

  sub_1902188FC(0, &qword_1EAD466C0);
  v27 = sub_190D57180();

  if (v27 >> 62)
  {
    if (sub_190D581C0())
    {
      goto LABEL_15;
    }
  }

  else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_15:
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x193AF3B90](0, v27);
      goto LABEL_18;
    }

    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(v27 + 32);
LABEL_18:
      v47 = v28;

      v24 = v47;
      goto LABEL_19;
    }

    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  v24 = 0;
  v47 = 0;
  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_20:
  if (!v23)
  {
LABEL_31:

    goto LABEL_32;
  }

  if (v13 == v21 && v15 == v23)
  {

    if (!v47)
    {
      return;
    }
  }

  else
  {
    v29 = sub_190D58760();

    if ((v29 & 1) != 0 && !v47)
    {
      return;
    }
  }

LABEL_32:
  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = [v2 composition];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 &selRef_toggleButton];
      if (v32)
      {
        v33 = v32;
        v34 = [v32 string];

        v35 = sub_190D56F10();
        v37 = v36;

        v39 = v46;
        v38 = v47;
        if (!v47)
        {
LABEL_36:
          v40 = sub_190D515F0();
          (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
          v47 = 0;
LABEL_48:
          sub_190B88A78(v35, v37, v9);

          swift_unknownObjectRelease();

          sub_19022EEA4(v9, &unk_1EAD55F20);
          return;
        }

LABEL_44:
        v42 = [v38 fileURL];
        if (v42)
        {
          v43 = v42;
          sub_190D515B0();

          v44 = sub_190D515F0();
          (*(*(v44 - 8) + 56))(v39, 0, 1, v44);
        }

        else
        {
          v45 = sub_190D515F0();
          (*(*(v45 - 8) + 56))(v39, 1, 1, v45);
        }

        sub_190844E18(v39, v9);
        goto LABEL_48;
      }
    }

    v35 = 0;
    v37 = 0xE000000000000000;
    v39 = v46;
    v38 = v47;
    if (!v47)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v41 = v47;
}

void sub_190902600(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56AC8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = type metadata accessor for ChatControllerWrapper(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ClarityUIChatController();
  v27.receiver = v4;
  v27.super_class = v17;
  objc_msgSendSuper2(&v27, sel_transcriptCollectionViewController_didScroll_, a1, a2, a3);
  v18 = [v4 scrollView];
  if (v18)
  {
    v19 = v18;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = [v4 view];
      if (v22)
      {
        v23 = v22;
        if (*(v21 + OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_shouldSuppressBindingUpdates) == 1)
        {

          swift_unknownObjectRelease();
        }

        else
        {
          sub_1909034D8(v21 + OBJC_IVAR____TtCV7ChatKitP33_093978188F67B65A90613E40AA80756421ChatControllerWrapper11Coordinator_configuration, v16);
          v24 = v19;
          v25 = v23;
          sub_190D551F0();
          v26 = sub_190D55200();
          (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
          sub_19090353C(v13, v11);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56AD0);
          sub_190D56200();

          swift_unknownObjectRelease();
          sub_19022EEA4(v13, &qword_1EAD56AC8);
          sub_1909035AC(v16);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

id sub_190902F5C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_clarityUIDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_synthesizer;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x1E6958508]) init];
  v7 = &v3[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_lastLaidOutSize];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  *&v3[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_sendCompositionPublisher] = 0;
  *&v3[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_navigationBarTopInset] = 0;
  *&v3[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_sendCompositionPublisherSubscriber] = 0;
  if (a2)
  {
    v8 = sub_190D56ED0();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for ClarityUIChatController();
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v8, a3);

  return v9;
}

id sub_1909030C8(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_clarityUIDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_synthesizer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E6958508]) init];
  v4 = &v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_lastLaidOutSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_sendCompositionPublisher] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_navigationBarTopInset] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_sendCompositionPublisherSubscriber] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ClarityUIChatController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1909031E8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1909032D4(void *a1)
{
  sub_1902188FC(0, &qword_1EAD60BE0);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 tapToSpeakEnabled];

  if (v4)
  {
    v5 = [a1 transcriptText];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 string];

      if (!v7)
      {
        sub_190D56F10();
        v7 = sub_190D56ED0();
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E6958518]) initWithString_];

      [*(v1 + OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_synthesizer) speakUtterance_];
    }
  }
}

id sub_190903414(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_clarityUIDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_synthesizer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E6958508]) init];
  v4 = &v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_lastLaidOutSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_sendCompositionPublisher] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_navigationBarTopInset] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit23ClarityUIChatController_sendCompositionPublisherSubscriber] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ClarityUIChatController();
  return objc_msgSendSuper2(&v6, sel_initWithConversation_, a1);
}

uint64_t sub_1909034D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChatControllerWrapper(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19090353C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56AC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909035AC(uint64_t a1)
{
  v2 = type metadata accessor for ChatControllerWrapper(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_190903650()
{
  sub_19090A6A8(319, &qword_1EAD56AF0, type metadata accessor for TapbackAttributionViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_19090A6A8(319, &qword_1EAD56AF8, type metadata accessor for TapbackAttributionAnimationController, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_19090A6A8(319, &qword_1EAD55988, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_19090A6A8(319, &qword_1EAD52C10, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_190903818@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TapbackAttributionView(0);
  sub_19022FD14(v1 + *(v10 + 24), v9, &qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190903A20@<X0>(uint64_t a1@<X8>)
{
  v29[0] = xmmword_190DDDD10;
  v29[1] = xmmword_190DDDD20;
  v29[2] = xmmword_190DDDD30;
  v29[3] = xmmword_190DDDD40;
  v30 = xmmword_190DDDD50;
  *a1 = sub_190D548D0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B20);
  sub_190904254(v1, v29, a1 + *(v3 + 44));
  v4 = *(&v30 + 1);
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B28) + 36));
  v6 = type metadata accessor for AttributionViewBackgroundModifier();
  sub_190903818(v5 + *(v6 + 20));
  v7 = sub_1909046F0();
  *v5 = v4;
  *(v5 + *(v6 + 24)) = v7 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B30);
  sub_190D55FD0();
  swift_getKeyPath();
  sub_19090BBC4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  v8 = *&v28[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleX];

  sub_190D56690();
  v10 = v9;
  v12 = v11;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B38) + 36));
  *v13 = v8;
  v13[1] = 0x3FF0000000000000;
  v13[2] = v10;
  v13[3] = v12;
  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v14 = *&v28[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationScaleY];

  sub_190D56690();
  v16 = v15;
  v18 = v17;
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B40) + 36));
  *v19 = 0x3FF0000000000000;
  v19[1] = v14;
  v19[2] = v16;
  v19[3] = v18;
  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v20 = *&v28[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationVerticalOffset];

  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B48) + 36));
  *v21 = 0;
  v21[1] = v20;
  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v22 = *&v28[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationOpacity];

  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B50) + 36)) = v22;
  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v23 = *&v28[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__currentPresentationBlur];

  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B58) + 36);
  *v24 = v23;
  *(v24 + 8) = 0;
  v25 = sub_190D54240();
  LOBYTE(v6) = sub_190D552B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B60);
  v27 = a1 + *(result + 36);
  *v27 = v25;
  *(v27 + 8) = v6;
  return result;
}

uint64_t sub_190903E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[0] = a3;
  v5 = sub_190D53D60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TapbackAttributionView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v18[3] = sub_190D55DA0();
  sub_190D53D30();
  v18[1] = v12;
  v18[2] = v13;
  sub_19090AEE4(a2, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TapbackAttributionView);
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_19090AF4C(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14, type metadata accessor for TapbackAttributionView);
  (*(v6 + 32))(v16 + v15, v8, v5);
  type metadata accessor for CGSize(0);
  sub_19090BBC4(&qword_1EAD56B08, type metadata accessor for CGSize);
  sub_190D55C20();
}

void sub_1909040E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B10);
  sub_190D55FD0();
  sub_190D53D30();
  v2 = &v5[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize];
  if (*&v5[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize] == v0 && *&v5[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__measuredContentSize + 8] == v1)
  {
    *v2 = v0;
    v2[1] = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
    sub_190D51C10();
  }
}

uint64_t sub_190904254@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TapbackAttributionView(0);
  v23 = *(v6 - 8);
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = a1[1];
  v26 = *a1;
  v27 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B10);
  sub_190D55FF0();
  v9 = v24;
  v22 = v25;
  v10 = a1[3];
  v26 = a1[2];
  v27 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B30);
  sub_190D55FF0();
  v11 = v24;
  v21 = v25;
  KeyPath = swift_getKeyPath();
  v13 = type metadata accessor for FullAttributionListView(0);
  *(a3 + *(v13 + 28)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  *(a3 + *(v13 + 32)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  swift_storeEnumTagMultiPayload();
  *a3 = v9;
  *(a3 + 8) = v22;
  v14 = *a2;
  *(a3 + 40) = a2[1];
  v15 = a2[3];
  *(a3 + 56) = a2[2];
  *(a3 + 72) = v15;
  *(a3 + 88) = a2[4];
  *(a3 + 24) = v14;
  *(a3 + 104) = v11;
  *(a3 + 112) = v21;
  v16 = swift_getKeyPath();
  sub_19090AEE4(a1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TapbackAttributionView);
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  sub_19090AF4C(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TapbackAttributionView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B68);
  v20 = (a3 + *(result + 36));
  *v20 = v16;
  v20[1] = sub_19090A484;
  v20[2] = v18;
  return result;
}

double sub_1909044DC@<D0>(_OWORD *a1@<X8>)
{
  sub_190864E34();
  sub_190D54830();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_19090452C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_19084CEEC;
    *(v4 + 24) = v3;
  }

  sub_19029063C(v1);
  sub_190864E34();
  return sub_190D54840();
}

void sub_1909045F0(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B10);
  sub_190D55FD0();
  swift_getKeyPath();
  sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tapbackAttributionViewModel:v3 didTapToSaveSticker:v1];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1909046F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B30);
  sub_190D55FD0();
  swift_getKeyPath();
  sub_19090BBC4(&qword_1EAD566A0, type metadata accessor for TapbackAttributionAnimationController);
  sub_190D51C20();

  v0 = v8[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 9] << 8;

  if (v0 == 768)
  {
    return 0;
  }

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v2 = *&v8[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8];

  sub_190D55FD0();
  swift_getKeyPath();
  sub_190D51C20();

  v3 = v8[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 10];
  v4 = *&v8[OBJC_IVAR____TtC7ChatKit37TapbackAttributionAnimationController__enlargedTapbackOverlay + 8];

  if ((v4 & 0xFF00) == 0x300)
  {
    v5 = 3;
  }

  else
  {
    v5 = v3;
  }

  if ((v2 & 0xFF00) == 0x300 || HIBYTE(v2) == 3)
  {
    v6 = v5 == 3;
  }

  else
  {
    v6 = v5 != 3 && v5 == HIBYTE(v2);
  }

  v7 = v6;
  return v7 ^ 1u;
}

uint64_t sub_190904910@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FullAttributionListView(0);
  sub_19022FD14(v1 + *(v10 + 28), v9, &qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190904B18@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FullAttributionListView(0);
  sub_19022FD14(v1 + *(v10 + 32), v9, &qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D540E0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190904D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_190903A20(a2);
  v6 = sub_190D56500();
  v8 = v7;
  sub_19090AEE4(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TapbackAttributionView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_19090AF4C(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TapbackAttributionView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56B00);
  v12 = (a2 + *(result + 36));
  *v12 = sub_190904E70;
  v12[1] = v10;
  v12[2] = v6;
  v12[3] = v8;
  return result;
}

void sub_190904E9C()
{
  type metadata accessor for TapbackAttributionView(0);
  sub_190D53D60();

  sub_1909040E8();
}

int *sub_190904F80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_190D54FF0();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FullAttributionListView(0);
  v68 = *(v5 - 8);
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v66 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C20);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C28);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v64 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C30);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C38);
  v74 = *(v17 - 8);
  v75 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v64 - v18;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C40);
  MEMORY[0x1EEE9AC00](v72);
  v79 = &v64 - v19;
  sub_190D55270();
  v80 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C48);
  sub_19090ACD0();
  sub_190D53A20();
  v20 = sub_190233640(&qword_1EAD56C88, &qword_1EAD56C18);
  sub_190D559F0();
  (*(v8 + 8))(v10, v7);
  v21 = v66;
  sub_19090AEE4(v2, v66, type metadata accessor for FullAttributionListView);
  v22 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v23 = swift_allocObject();
  sub_19090AF4C(v21, v23 + v22, type metadata accessor for FullAttributionListView);
  *&v107[0] = v7;
  *(&v107[0] + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v24 = v67;
  sub_190D55A20();

  (*(v69 + 8))(v12, v24);
  *&v107[0] = *v2;
  *(v107 + 8) = *(v2 + 8);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  MEMORY[0x193AF1A80](&v97, v25);
  v26 = v97;
  v27 = *(v2 + 40);
  v28 = *(v2 + 72);
  v118 = *(v2 + 56);
  v119 = v28;
  v120 = *(v2 + 88);
  v117[0] = *(v2 + 24);
  v117[1] = v27;
  sub_190B7D36C(v117);

  sub_190D56500();
  sub_190D54430();
  v29 = v70;
  sub_19081E40C(v15, v70, &qword_1EAD56C28);
  v30 = (v29 + *(v71 + 36));
  v31 = v115;
  v30[4] = v114;
  v30[5] = v31;
  v30[6] = v116;
  v32 = v111;
  *v30 = v110;
  v30[1] = v32;
  v33 = v113;
  v30[2] = v112;
  v30[3] = v33;
  v34 = v76;
  sub_190D54FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C98);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_190DD1DA0;
  LOBYTE(v12) = sub_190D55290();
  *(v35 + 32) = v12;
  v36 = sub_190D55270();
  *(v35 + 33) = v36;
  sub_190D55280();
  sub_190D55280();
  if (sub_190D55280() != v12)
  {
    sub_190D55280();
  }

  sub_190D55280();
  v37 = sub_190D55280();
  v38 = v79;
  if (v37 != v36)
  {
    sub_190D55280();
  }

  sub_19090B03C();
  v39 = v73;
  sub_190D55920();
  (*(v77 + 8))(v34, v78);
  sub_19022EEA4(v29, &qword_1EAD56C30);
  v40 = sub_190D564B0();
  v42 = v41;
  sub_190908990(v2, &v88);
  v103 = v94;
  v104 = v95;
  v105 = v96;
  v99 = v90;
  v100 = v91;
  v101 = v92;
  v102 = v93;
  v97 = v88;
  v98 = v89;
  *&v106 = v40;
  *(&v106 + 1) = v42;
  (*(v74 + 32))(v38, v39, v75);
  v43 = &v38[*(v72 + 36)];
  v44 = v104;
  *(v43 + 6) = v103;
  *(v43 + 7) = v44;
  v45 = v106;
  *(v43 + 8) = v105;
  *(v43 + 9) = v45;
  v46 = v100;
  *(v43 + 2) = v99;
  *(v43 + 3) = v46;
  v47 = v102;
  *(v43 + 4) = v101;
  *(v43 + 5) = v47;
  v48 = v98;
  *v43 = v97;
  *(v43 + 1) = v48;
  v107[6] = v94;
  v107[7] = v95;
  v107[8] = v96;
  v107[2] = v90;
  v107[3] = v91;
  v107[4] = v92;
  v107[5] = v93;
  v107[0] = v88;
  v107[1] = v89;
  v108 = v40;
  v109 = v42;
  sub_19022FD14(&v97, &v82, &qword_1EAD56CB8);
  sub_19022EEA4(v107, &qword_1EAD56CB8);
  v49 = sub_190D56500();
  v51 = v50;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v53 = result;
    v54 = v118;
    [result attributionViewHeight];

    sub_190D56500();
    sub_190D53C60();
    v55 = v82;
    v56 = v83;
    v57 = v84;
    v58 = v85;
    v59 = v86;
    v60 = v87;
    LOBYTE(v88) = v83;
    v81 = v85;
    v61 = v38;
    v62 = v65;
    sub_19081E40C(v61, v65, &qword_1EAD56C40);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CC0);
    v63 = v62 + result[9];
    *v63 = v49;
    *(v63 + 8) = v51;
    *(v63 + 16) = v54;
    *(v63 + 24) = v55;
    *(v63 + 32) = v56;
    *(v63 + 40) = v57;
    *(v63 + 48) = v58;
    *(v63 + 56) = v59;
    *(v63 + 64) = v60;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190905930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v87 = sub_190D540E0();
  v85 = *(v87 - 8);
  v3 = MEMORY[0x1EEE9AC00](v87);
  v77 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v86 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v76 - v9;
  v10 = type metadata accessor for FullAttributionListView(0);
  v81 = *(v10 - 8);
  v11 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C78);
  MEMORY[0x1EEE9AC00](v82);
  v13 = (&v76 - v12);
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *a1;
  v94 = *a1;
  v95 = v14;
  v90 = v15;
  v91 = v14;
  v96 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C90);
  MEMORY[0x193AF1A80](v93);
  v18 = v93[0];
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  swift_getKeyPath();
  v94 = v18;
  v21 = sub_19090BBC4(&qword_1EAD56B18, type metadata accessor for TapbackAttributionViewModel);
  sub_190D51C20();

  if (v18[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth + 8])
  {
  }

  else
  {
    v22 = *&v18[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__maxViewWidth];
    v23 = sub_190B7FFC8();

    v24 = round((v22 - v23) / v20);
    if ((v22 - v23 - v20 * (v24 + -0.5)) / v24 >= 0.0)
    {
      v19 = (v22 - v23 - v20 * (v24 + -0.5)) / v24;
    }

    else
    {
      v19 = 0.0;
    }
  }

  *v13 = sub_190D548D0();
  v13[1] = v19;
  *(v13 + 16) = 0;
  v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CD0) + 44);
  v94 = v16;
  v95 = v91;
  v96 = v90;
  v88 = v17;
  MEMORY[0x193AF1A80](v93, v17);
  v25 = v93[0];
  swift_getKeyPath();
  v94 = v25;
  v79 = v21;
  sub_190D51C20();

  v26 = *&v25[OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__tapbackItems];
  sub_190D52690();

  v94 = v26;
  sub_19090AEE4(a1, &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullAttributionListView);
  v27 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v28 = swift_allocObject();
  sub_19090AF4C(&v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for FullAttributionListView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56CE0);
  sub_190233640(&qword_1EAD56CE8, &qword_1EAD56CD8);
  sub_19090B6B8();
  sub_19090BBC4(&qword_1EAD56D80, type metadata accessor for AttributedTapbackItem);
  sub_190D56290();
  sub_190233640(&qword_1EAD56C80, &qword_1EAD56C78);
  v29 = v89;
  sub_190D55A00();
  sub_19022EEA4(v13, &qword_1EAD56C78);
  v30 = sub_190D552A0();
  v78 = v16;
  v32 = v90;
  v31 = v91;
  v94 = v16;
  v95 = v91;
  v96 = v90;
  v33 = v88;
  MEMORY[0x193AF1A80](v93, v88);
  v34 = v93[0];
  sub_190B7FFC8();

  sub_190D539C0();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C70) + 36);
  *v43 = v30;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  LODWORD(v82) = sub_190D552C0();
  v94 = v16;
  v95 = v31;
  v96 = v32;
  MEMORY[0x193AF1A80](v93, v33);
  v44 = v93[0];
  swift_getKeyPath();
  v94 = v44;
  sub_190D51C20();

  v45 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  v46 = v83;
  sub_19022FD14(&v44[v45], v83, &unk_1EAD5E5C0);
  v47 = type metadata accessor for AttributedTapbackItem();
  v48 = *(*(v47 - 8) + 48);
  v48(v46, 1, v47);
  sub_19022EEA4(v46, &unk_1EAD5E5C0);

  sub_190D539C0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C60) + 36);
  *v57 = v82;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  LODWORD(v83) = sub_190D552D0();
  v93[0] = v78;
  v93[1] = v91;
  v93[2] = v90;
  MEMORY[0x193AF1A80](&v92, v88);
  v58 = v92;
  v59 = v86;
  sub_190904B18(v86);
  swift_getKeyPath();
  v93[0] = v58;
  sub_190D51C20();

  v60 = OBJC_IVAR____TtC7ChatKit27TapbackAttributionViewModel__selectedItem;
  swift_beginAccess();
  v61 = v84;
  sub_19022FD14(v58 + v60, v84, &unk_1EAD5E5C0);
  LODWORD(v60) = (v48)(v61, 1, v47);
  sub_19022EEA4(v61, &unk_1EAD5E5C0);
  if (v60 == 1)
  {

    (*(v85 + 8))(v59, v87);
  }

  else
  {
    v62 = v85;
    v63 = v77;
    v64 = v87;
    (*(v85 + 104))(v77, *MEMORY[0x1E697E6E8], v87);
    sub_19090BBC4(&qword_1EAD55758, MEMORY[0x1E697E730]);
    sub_190D56E00();
    v65 = *(v62 + 8);
    v65(v63, v64);

    v65(v59, v64);
  }

  sub_190D539C0();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56C48);
  v75 = v89 + *(result + 36);
  *v75 = v83;
  *(v75 + 8) = v67;
  *(v75 + 16) = v69;
  *(v75 + 24) = v71;
  *(v75 + 32) = v73;
  *(v75 + 40) = 0;
  return result;
}