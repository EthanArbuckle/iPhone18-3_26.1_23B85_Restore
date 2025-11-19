uint64_t sub_1A2219278()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x130);
  v3 = v2();
  v4 = (*((*v1 & *v0) + 0x160))();
  v5 = sub_1A2113050();
  sub_1A2121FCC(v4, v5 & 1, v3);

  v6 = v2();
  sub_1A2122014(v6);
  v7 = sub_1A22E6BE8();
  v9 = v8;
  v11 = v10;
  v12 = (v2)(v7);
  sub_1A21275D0();
  v13 = sub_1A229DA54(v12, v9, v11);
  v14 = [v0 traitCollection];
  [v14 displayScale];
  v16 = v15;

  result = (*((*v1 & *v0) + 0xE8))();
  if (!result)
  {
    return result;
  }

  v18 = v13 * v16;
  if (COERCE__INT64(fabs(v13 * v16)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  (*(*result + 360))(v18);
}

uint64_t sub_1A22194A8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - v8;
  v10 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x248))(v7);
  if ((result & 0x100000000) != 0)
  {
    v12 = *(a1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView);
    v13 = (*((*v10 & *a1) + 0xE8))();
    if (v13)
    {
      (*(*v13 + 256))(v13);

      v14 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
      (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
    }

    else
    {
      v15 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
      (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    }

    (*((*v10 & *v12) + 0x108))(v9);
    v16 = *((*v10 & **(a1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView)) + 0xC8);
    sub_1A2124CD0(a2);
    return v16(a2, a3);
  }

  return result;
}

uint64_t sub_1A22196FC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_backgroundView);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  v5 = v4();
  if (v5)
  {
    v6 = (*(*v5 + 280))();
  }

  else
  {
    v6 = 0;
  }

  v7 = (*((*v3 & *v2) + 0x70))(v6);
  v8 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView);
  v9 = (v4)(v7);
  if (v9)
  {
    v10 = (*(*v9 + 280))(v9);
  }

  else
  {
    v10 = 0;
  }

  return (*((*v3 & *v8) + 0x120))(v10);
}

uint64_t sub_1A2219894(__int16 a1)
{
  sub_1A2219A78();
  v3 = sub_1A2218808();
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x248);
  v6 = v5();
  [v3 setEnabled_];

  sub_1A221A64C(a1);
  v7 = (*((*v4 & *v1) + 0xD0))();
  if (v7)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    LOBYTE(v9) = (*(v9 + 24))(v1, ObjectType, v9);
    v7 = swift_unknownObjectRelease();
    if (v9)
    {
      v11 = (v5)(v7);
      (*((*v4 & *v1) + 0x220))(v15, v11 & 0x1010101010101);
      v7 = sub_1A22E6C18();
    }
  }

  v12 = ((v5)(v7) & 0x1000000) == 0;
  v13 = *((*v4 & *v1) + 0x280);

  return v13(v12);
}

uint64_t sub_1A2219A78()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v23 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x248);
  v3 = v23();
  v4 = *((*v2 & *v0) + 0x118);
  v5 = v4();
  v6 = v5;
  v7 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter);
  if (v7)
  {
    v8 = v2;
    v9 = *((*v2 & *v7) + 0xA0);
    v10 = v7;
    v11 = v9();

    if (v3)
    {
LABEL_3:

      v12 = 8;
      goto LABEL_13;
    }
  }

  else
  {
    v8 = v2;
    v11 = 0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  if (v6 == 5)
  {
    if (v11)
    {

      v12 = 10;
      goto LABEL_13;
    }
  }

  else if (v6 == 4)
  {
    if (v11)
    {

      v12 = 9;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v13 = (v4)(v5);
  v12 = nullsub_1(v13, v14);
LABEL_13:
  v15 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_layout;
  swift_beginAccess();
  v16 = *(v1 + v15);
  *(v1 + v15) = v12;
  v17 = sub_1A2217850(v16);
  v18 = (*((*v8 & *v1) + 0xE8))(v17);
  if (v18)
  {
    v19 = v18;
    if ((v23() & 0x100) != 0)
    {
      v21 = (*((*v8 & *v1) + 0x130))();
      v20 = sub_1A229DB50(v21);
    }

    else
    {
      v20 = 0;
    }

    (*(*v19 + 312))(v20 & 1);
  }

  return sub_1A21261E0();
}

double sub_1A2219DEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((~a1 & 0x10100) != 0)
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_1A229A008((a1 & 0x100000000) == 0, (a1 & 0x1000000000000) == 0, a2);
  }

  return result;
}

uint64_t sub_1A2219E24()
{
  v1 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))(v2);
  v6 = v5;
  if (v5)
  {
    (*(*v5 + 256))(v5);

    v6 = *v4;

    sub_1A2126078(v4);
  }

  return v6;
}

uint64_t sub_1A2219F78(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_animationCoordinator);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A221A038()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_sessionViewState);
  swift_beginAccess();
  v2 = 0x1000000000000;
  if (!v1[6])
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!v1[5])
  {
    v3 = 0;
  }

  v4 = 0x100000000;
  if (!v1[4])
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!v1[3])
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!v1[2])
  {
    v6 = 0;
  }

  v7 = 256;
  if (!v1[1])
  {
    v7 = 0;
  }

  return v7 | *v1 | v6 | v5 | v4 | v3 | v2;
}

uint64_t sub_1A221A0F8(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_sessionViewState;
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  *v4 = a1 & 1;
  v4[1] = BYTE1(a1) & 1;
  v4[2] = BYTE2(a1) & 1;
  v4[3] = BYTE3(a1) & 1;
  v4[4] = BYTE4(a1) & 1;
  v4[5] = BYTE5(a1) & 1;
  v4[6] = BYTE6(a1) & 1;
  sub_1A221B544();
  result = sub_1A22E6568();
  if ((result & 1) == 0)
  {
    v13 = 256;
    if (!v6)
    {
      v13 = 0;
    }

    v14 = v13 | v5;
    v15 = 0x10000;
    if (!v7)
    {
      v15 = 0;
    }

    v16 = 0x1000000;
    if (!v8)
    {
      v16 = 0;
    }

    v17 = v14 | v15 | v16;
    v18 = 0x100000000;
    if (!v9)
    {
      v18 = 0;
    }

    v19 = 0x10000000000;
    if (!v10)
    {
      v19 = 0;
    }

    v20 = 0x1000000000000;
    if (!v11)
    {
      v20 = 0;
    }

    return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1E8))(v17 | v18 | v19 | v20);
  }

  return result;
}

void (*sub_1A221A2B4(uint64_t *a1))(uint64_t *a1)
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
  v5 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_sessionViewState;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[6];
  v4[40] = *v6;
  v4 += 40;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  v4[6] = v12;
  return sub_1A221A37C;
}

void sub_1A221A37C(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 24) + *(*a1 + 32));
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 41);
  v5 = *(*a1 + 42);
  v6 = *(*a1 + 43);
  v7 = *(*a1 + 44);
  v8 = *(*a1 + 45);
  v9 = *(*a1 + 46);
  v10 = *v2;
  v11 = v2[1];
  v12 = v2[2];
  v13 = v2[3];
  v14 = v2[4];
  v15 = v2[5];
  v16 = v2[6];
  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v7;
  v2[5] = v8;
  v2[6] = v9;
  *(v1 + 47) = v3;
  *(v1 + 48) = v4;
  *(v1 + 49) = v5;
  *(v1 + 50) = v6;
  *(v1 + 51) = v7;
  *(v1 + 52) = v8;
  *(v1 + 53) = v9;
  *(v1 + 54) = v10;
  *(v1 + 55) = v11;
  *(v1 + 56) = v12;
  *(v1 + 57) = v13;
  *(v1 + 58) = v14;
  *(v1 + 59) = v15;
  *(v1 + 60) = v16;
  sub_1A221B544();
  if ((sub_1A22E6568() & 1) == 0)
  {
    v17 = 256;
    if (!v11)
    {
      v17 = 0;
    }

    v18 = v17 | v10;
    v19 = 0x10000;
    if (!v12)
    {
      v19 = 0;
    }

    v20 = 0x1000000;
    if (!v13)
    {
      v20 = 0;
    }

    v21 = v18 | v19 | v20;
    v22 = 0x100000000;
    if (!v14)
    {
      v22 = 0;
    }

    v23 = 0x10000000000;
    if (!v15)
    {
      v23 = 0;
    }

    v24 = 0x1000000000000;
    if (!v16)
    {
      v24 = 0;
    }

    (*((*MEMORY[0x1E69E7D40] & **(v1 + 24)) + 0x1E8))(v21 | v22 | v23 | v24);
  }

  free(v1);
}

uint64_t sub_1A221A530()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_selectionHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1A2111D40(*v1);
  return v2;
}

uint64_t sub_1A221A58C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_selectionHandler);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1A210F5C0(v6);
}

void sub_1A221A64C(__int16 a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x248);
  v5 = v4();
  v6 = v5;
  v7 = (v5 >> 8) & 1;
  if (a1 == 2 || ((a1 & 0x100) == 0) == ((v5 >> 8) & 1))
  {
    v8 = *((*v3 & *v1) + 0xE8);
    v9 = v8();
    if (v9)
    {
      (*(*v9 + 336))(v7);
    }

    v10 = (*((*v3 & **(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView)) + 0x1B0))(v7);
    v11 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView);
    if ((v6 & 0x100) != 0)
    {
      v12 = (*((*v3 & *v1) + 0x130))(v10);
      v13 = sub_1A229DADC(v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = (*((*v3 & *v11) + 0xB8))(v24);
    *v15 = v13;
    v16 = v14(v24, 0);
    v17 = (v8)(v16);
    if (v17)
    {
      v18 = v17;
      if ((v4() & 0x100) != 0)
      {
        v20 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))();
        v19 = sub_1A229DB50(v20);
      }

      else
      {
        v19 = 0;
      }

      (*(*v18 + 312))(v19 & 1);
    }

    if ((v6 & 0x100) != 0)
    {
      v21 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter);
      if (v21)
      {
        v22 = *((*MEMORY[0x1E69E7D40] & *v21) + 0xD8);
        v23 = v21;
        v22();
      }
    }
  }
}

id sub_1A221A968(char a1)
{
  if (a1)
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  [*(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_backgroundView) setAlpha_];
  [*(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView) setAlpha_];
  v3 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView);

  return [v3 setAlpha_];
}

id sub_1A221A9F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaControlsModuleSessionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1A221ABC0(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x240))();
  return sub_1A221BA4C;
}

void (*sub_1A221AD0C(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x258))();
  return sub_1A221ADB4;
}

void (*sub_1A221AE54(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 48) = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x270))();
  v4[7] = v5;
  if (*v5)
  {
    v6 = v5[1];
  }

  else
  {
    v6 = 0;
  }

  v4[4] = *v5;
  v4[5] = v6;
  return sub_1A221AF10;
}

void sub_1A221AF10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (!v3)
  {
    v4 = 0;
  }

  *v2 = v3;
  v2[1] = v4;
  v1[6](v1);

  free(v1);
}

uint64_t sub_1A221AFE0()
{
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE8))();
  if (result)
  {
    (*(*result + 368))(result);
  }

  return result;
}

uint64_t sub_1A221B084(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD0))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A221B13C(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))();
  if (result)
  {
    v5 = (*(*result + 200))();
    v7 = v6;

    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 40))(a2, ObjectType, v7);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1A221B228(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))();
  if (result)
  {
    v5 = (*(*result + 200))();
    v7 = v6;

    if (v5)
    {
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(a2, ObjectType, v7);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1A221B31C()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_presenter) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter) = 0;
  v1 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_backgroundView;
  type metadata accessor for MediaControlsModuleBackgroundView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView;
  type metadata accessor for MediaControlsModuleNowPlayingView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_routePickerItemsView;
  type metadata accessor for RoutePickerItemsView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_moduleLayout) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_layout) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_visualStylingProvider) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_contentMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_cornerRadius) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_isResizing) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView____lazy_storage___tapGestureRecognizer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_animationCoordinator);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_sessionViewState;
  LOBYTE(v3) = sub_1A211A6BC();
  v6 = sub_1A2113050();
  v7 = sub_1A2113050();
  v8 = sub_1A211A6BC();
  v9 = sub_1A2113050();
  v10 = sub_1A2113050();
  v11 = sub_1A220CDA4(1, v3 & 1, v6 & 1, v7 & 1, v8 & 1, v9 & 1, v10 & 1);
  *v5 = v11 & 1;
  v12 = vdupq_n_s64(v11);
  *v12.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v12, xmmword_1A2308740), vshlq_u64(v12, xmmword_1A2308730))), 0x1000100010001);
  *(v5 + 1) = vuzp1_s8(*v12.i8, *v12.i8).u32[0];
  *(v5 + 5) = BYTE5(v11) & 1;
  *(v5 + 6) = BYTE6(v11) & 1;
  v13 = (v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_selectionHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A221B544()
{
  result = qword_1ED94EE28[0];
  if (!qword_1ED94EE28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED94EE28);
  }

  return result;
}

void sub_1A221B598()
{
  sub_1A2219A78();
  v7 = *(*(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_nowPlayingView) + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter);
  v2 = MEMORY[0x1E69E7D40];
  if (v1)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0);
    v4 = v7;
    v5 = v1;
    v1 = v3();
  }

  else
  {
    v6 = v7;
  }

  (*((*v2 & *v7) + 0xC8))(v1);
}

uint64_t sub_1A221B6A4(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))() & 0xFE) == 6)
  {
    result = (*((*v3 & *v1) + 0xD0))();
    if (result)
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v1, a1, ObjectType, v6);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    result = (*((*v3 & *v1) + 0xE8))();
    if (result)
    {
      (*(*result + 368))(result);
    }
  }

  return result;
}

id sub_1A221B818(void *a1)
{
  result = [a1 playbackIdentifier];
  if (result)
  {
    v3 = result;
    v4 = sub_1A22E65C8();
    v6 = v5;

    v7 = *(v1 + OBJC_IVAR____TtC13MediaControls30MediaControlsModuleSessionView_mediaSuggestionsPresenter);
    if (v7)
    {
      v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xE0);
      v9 = v7;
      v8(v4, v6);
    }
  }

  return result;
}

uint64_t sub_1A221B938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A221B9A0()
{
  result = qword_1ED950238;
  if (!qword_1ED950238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED950238);
  }

  return result;
}

unint64_t sub_1A221B9F4()
{
  result = qword_1ED9503D8[0];
  if (!qword_1ED9503D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED9503D8);
  }

  return result;
}

uint64_t sub_1A221BB10@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A221BB7C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SessionContentViewModel(0) + 24);

  return sub_1A2117CFC(v3, a1);
}

uint64_t sub_1A221BBC0(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SessionContentViewModel(0) + 24);

  return sub_1A221BC04(a1, v3);
}

uint64_t sub_1A221BC04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A221BCE0(char a1)
{
  result = type metadata accessor for SessionContentViewModel(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1A221BD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for SessionContentViewModel(0);
  sub_1A221CB00(a3, a6 + v10[5], type metadata accessor for SessionHeaderView.ViewModel);
  result = sub_1A221C968(a4, a6 + v10[6]);
  *(a6 + v10[7]) = a5;
  return result;
}

uint64_t sub_1A221BDE8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1A221BE18(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1A221BF8C()
{
  v1 = *(v0 + *(type metadata accessor for SessionViewModel(0) + 24));

  return v1;
}

uint64_t sub_1A221BFD4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionViewModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1A221C06C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1A22E71E8() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for SessionViewModel(0);
  if ((sub_1A221C670((a1 + *(v5 + 20)), (a2 + *(v5 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_1A22D48B0(v7, v8, v10, v11);
}

uint64_t sub_1A221C114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for SessionViewModel(0);
  result = sub_1A221CB00(a3, a6 + *(v10 + 20), type metadata accessor for SessionContentViewModel);
  v12 = (a6 + *(v10 + 24));
  *v12 = a4;
  v12[1] = a5;
  return result;
}

uint64_t sub_1A221C190(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1A22E71E8() & 1) == 0 || (sub_1A221BD58((a1 + *(a3 + 20)), (a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *v10;
  v12 = v10[1];

  return sub_1A22D48B0(v8, v9, v11, v12);
}

double sub_1A221C230()
{
  qword_1EB091390 = MEMORY[0x1E69E7CC0];
  *algn_1EB091398 = 0;
  qword_1EB0913A0 = 0xE000000000000000;
  result = 0.0;
  unk_1EB0913A8 = 0u;
  unk_1EB0913B8 = 0u;
  byte_1EB0913C8 = 0;
  return result;
}

uint64_t sub_1A221C260@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t *sub_1A221C278()
{
  if (qword_1EB08A5D0 != -1)
  {
    swift_once();
  }

  return &qword_1EB091390;
}

uint64_t sub_1A221C2C8@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB08A5D0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1A221CB68(&qword_1EB091390, v2);
}

uint64_t sub_1A221C368()
{
  MEMORY[0x1A58DA8D0](v0[1], v0[2]);
  MEMORY[0x1A58DA8D0](3830560, 0xE300000000000000);
  v1 = MEMORY[0x1A58DA990](*v0, MEMORY[0x1E69E6158]);
  MEMORY[0x1A58DA8D0](v1);

  return 14945;
}

uint64_t sub_1A221C3E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_1A221C4C0(v5, v7) & 1;
}

uint64_t sub_1A221C444()
{
  v1 = *v0;
  MEMORY[0x1A58DA8D0](v0[1], v0[2]);
  MEMORY[0x1A58DA8D0](3830560, 0xE300000000000000);
  v2 = MEMORY[0x1A58DA990](v1, MEMORY[0x1E69E6158]);
  MEMORY[0x1A58DA8D0](v2);

  return 14945;
}

uint64_t sub_1A221C4C0(uint64_t a1, uint64_t a2)
{
  if ((sub_1A2111CB0(*a1, *a2) & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1A22E71E8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (!v5)
  {
    if (!v7)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_1A2214638(v8, v7);
    sub_1A221467C(v6, v5);
    sub_1A221467C(v8, v7);
LABEL_15:
    v10 = 0;
    return v10 & 1;
  }

  if (!v7)
  {
    sub_1A2214638(v6, v5);
    goto LABEL_14;
  }

  sub_1A2214638(v6, v5);
  sub_1A2214638(v6, v5);
  sub_1A2214638(v8, v7);
  sub_1A2216B24();
  v9 = sub_1A22E6568();

  sub_1A221467C(v6, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v10 = *(a1 + 56) ^ *(a2 + 56) ^ 1;
  return v10 & 1;
}

uint64_t sub_1A221C670(void *a1, void *a2)
{
  v4 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0891D0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A22E71E8() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for SessionContentViewModel(0);
  if ((sub_1A22C799C(a1 + v14[5], a2 + v14[5]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v15 = v14[6];
  v16 = *(v11 + 48);
  sub_1A2117CFC(a1 + v15, v13);
  sub_1A2117CFC(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1A210D9B0(v13, &qword_1EB088828);
LABEL_14:
      v18 = *(a1 + v14[7]) ^ *(a2 + v14[7]) ^ 1;
      return v18 & 1;
    }

    goto LABEL_10;
  }

  sub_1A2117CFC(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_1A221CE2C(v10);
LABEL_10:
    sub_1A210D9B0(v13, &qword_1EB0891D0);
    goto LABEL_11;
  }

  sub_1A221CB00(&v13[v16], v7, type metadata accessor for NowPlayingVolumeControlsView.ViewModel);
  sub_1A221CE88();
  v20 = sub_1A22E6568();
  sub_1A221CE2C(v7);
  sub_1A221CE2C(v10);
  sub_1A210D9B0(v13, &qword_1EB088828);
  if (v20)
  {
    goto LABEL_14;
  }

LABEL_11:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1A221C968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A221C9F8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A221CA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A221CA98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A221CB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A221CBC8()
{
  type metadata accessor for SessionHeaderView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A221CC64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A221CC64()
{
  if (!qword_1ED950BE0[0])
  {
    type metadata accessor for NowPlayingVolumeControlsView.ViewModel(255);
    v0 = sub_1A22E6D68();
    if (!v1)
    {
      atomic_store(v0, qword_1ED950BE0);
    }
  }
}

uint64_t sub_1A221CCE4()
{
  result = type metadata accessor for SessionContentViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A221CD84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1A221CDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A221CE2C(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingVolumeControlsView.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A221CE88()
{
  result = qword_1EB088830;
  if (!qword_1EB088830)
  {
    type metadata accessor for NowPlayingVolumeControlsView.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088830);
  }

  return result;
}

uint64_t sub_1A221CF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void (*sub_1A221CF88(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088838) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_viewModel;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A2123D38(v1 + v9, v8);
  return sub_1A221D0A8;
}

void sub_1A221D0A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1A2123D38(*(*a1 + 96), v6);
    sub_1A2123D38(v7 + v4, v5);
    swift_beginAccess();
    sub_1A2123DA8(v6, v7 + v4);
    swift_endAccess();
    sub_1A2123E18(v5);
    sub_1A210D9B0(v5, &qword_1EB088838);
  }

  else
  {
    sub_1A2123D38(v7 + v4, v6);
    swift_beginAccess();
    sub_1A2123DA8(v3, v7 + v4);
    swift_endAccess();
    sub_1A2123E18(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088838);
  sub_1A210D9B0(v3, &qword_1EB088838);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

id sub_1A221D1E4()
{
  type metadata accessor for RoutePickerItemView(0);
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = sub_1A2114DFC();

  return v1;
}

id sub_1A221D284()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerItemCell();
  return objc_msgSendSuper2(&v2, sel_isHighlighted);
}

uint64_t sub_1A221D370(char a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RoutePickerItemCell();
  objc_msgSendSuper2(&v7, sel_setHighlighted_, a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView];
  v5 = [v2 isHighlighted];
  return (*((*MEMORY[0x1E69E7D40] & *v4) + 0xD0))(v5);
}

char *sub_1A221D414(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_viewModel;
  v11 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView;
  type metadata accessor for RoutePickerItemView(0);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = sub_1A2114DFC();

  *&v5[v12] = v14;
  *&v5[OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemViewConstraints] = 0;
  v19.receiver = v5;
  v19.super_class = type metadata accessor for RoutePickerItemCell();
  v15 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 addSubview_];

  v17 = sub_1A211A6BC();
  *&v15[OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemViewConstraints] = sub_1A211A6C4(v17 & 1, sub_1A221D5A4);

  return v15;
}

char *sub_1A221D5A4()
{
  v1 = [*(v0 + 16) contentView];
  sub_1A211A728(v7);

  v2 = sub_1A2257B48(v6, v7);
  sub_1A211A9FC(v7);
  sub_1A211A9FC(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A2308E80;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840);
  *(v3 + 64) = &off_1F14441C0;
  *(v3 + 32) = v2;
  v4 = sub_1A211AB54(v3);

  return v4;
}

void sub_1A221D6B8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_viewModel;
  v3 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView;
  type metadata accessor for RoutePickerItemView(0);
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = sub_1A2114DFC();

  *(v1 + v4) = v6;
  *(v1 + OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemViewConstraints) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A221D8A0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RoutePickerItemCell();
  v1 = objc_msgSendSuper2(&v3, sel_prepareForReuse);
  return (*((*MEMORY[0x1E69E7D40] & **&v0[OBJC_IVAR____TtC13MediaControls19RoutePickerItemCell_itemView]) + 0x128))(v1);
}

id sub_1A221D9DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A221DA88()
{
  sub_1A221DB30();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A221DB30()
{
  if (!qword_1ED950A00)
  {
    type metadata accessor for RoutePickerItemView.ViewModel(255);
    v0 = sub_1A22E6D68();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED950A00);
    }
  }
}

uint64_t sub_1A221DBD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088850);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1A221DD38@<D0>(_OWORD *a1@<X8>)
{
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  sub_1A2277A10(v3);
  sub_1A2128B30(v3, (a1 + 12));
  sub_1A2277A10(v4);
  sub_1A2128B30(v4, (a1 + 24));
  sub_1A2277A10(v5);
  *&result = sub_1A2128B30(v5, (a1 + 36)).n128_u64[0];
  return result;
}

__n128 sub_1A221DDB8@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1[9];
  *(a5 + 128) = a1[8];
  *(a5 + 144) = v5;
  v6 = a1[11];
  *(a5 + 160) = a1[10];
  *(a5 + 176) = v6;
  v7 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v7;
  v8 = a1[7];
  *(a5 + 96) = a1[6];
  *(a5 + 112) = v8;
  v9 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v9;
  v10 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v10;
  v11 = a2[9];
  *(a5 + 320) = a2[8];
  *(a5 + 336) = v11;
  v12 = a2[11];
  *(a5 + 352) = a2[10];
  *(a5 + 368) = v12;
  v13 = a2[5];
  *(a5 + 256) = a2[4];
  *(a5 + 272) = v13;
  v14 = a2[7];
  *(a5 + 288) = a2[6];
  *(a5 + 304) = v14;
  v15 = a2[1];
  *(a5 + 192) = *a2;
  *(a5 + 208) = v15;
  v16 = a2[3];
  *(a5 + 224) = a2[2];
  *(a5 + 240) = v16;
  v17 = a3[9];
  *(a5 + 512) = a3[8];
  *(a5 + 528) = v17;
  v18 = a3[11];
  *(a5 + 544) = a3[10];
  *(a5 + 560) = v18;
  v19 = a3[5];
  *(a5 + 448) = a3[4];
  *(a5 + 464) = v19;
  v20 = a3[7];
  *(a5 + 480) = a3[6];
  *(a5 + 496) = v20;
  v21 = a3[1];
  *(a5 + 384) = *a3;
  *(a5 + 400) = v21;
  v22 = a3[3];
  *(a5 + 416) = a3[2];
  *(a5 + 432) = v22;
  v23 = *(a4 + 144);
  *(a5 + 704) = *(a4 + 128);
  *(a5 + 720) = v23;
  v24 = *(a4 + 176);
  *(a5 + 736) = *(a4 + 160);
  *(a5 + 752) = v24;
  v25 = *(a4 + 80);
  *(a5 + 640) = *(a4 + 64);
  *(a5 + 656) = v25;
  v26 = *(a4 + 112);
  *(a5 + 672) = *(a4 + 96);
  *(a5 + 688) = v26;
  v27 = *(a4 + 16);
  *(a5 + 576) = *a4;
  *(a5 + 592) = v27;
  result = *(a4 + 32);
  v29 = *(a4 + 48);
  *(a5 + 608) = result;
  *(a5 + 624) = v29;
  return result;
}

void (*sub_1A221DE8C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x940uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 2352) = v1;
  v5 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_viewModel;
  *(v3 + 2360) = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_viewModel;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v5, v4, &qword_1EB088860);
  return sub_1A221DF38;
}

void sub_1A221DF38(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2360);
  v4 = *(*a1 + 2352);
  if (a2)
  {
    sub_1A2214CF8(*a1, v2 + 768, &qword_1EB088860);
    sub_1A2214CF8(v4 + v3, v2 + 1536, &qword_1EB088860);
    swift_beginAccess();
    sub_1A21158A8(v2 + 768, v4 + v3);
    swift_endAccess();
    sub_1A2115918(v2 + 1536);
    sub_1A210D9B0(v2 + 1536, &qword_1EB088860);
  }

  else
  {
    sub_1A2214CF8(v4 + v3, v2 + 768, &qword_1EB088860);
    swift_beginAccess();
    sub_1A21158A8(v2, v4 + v3);
    swift_endAccess();
    sub_1A2115918(v2 + 768);
  }

  sub_1A210D9B0(v2 + 768, &qword_1EB088860);
  sub_1A210D9B0(v2, &qword_1EB088860);

  free(v2);
}

uint64_t sub_1A221E0D0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A221E13C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

uint64_t sub_1A221E1F8(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

__n128 sub_1A221E218@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[1];
  v3 = v1[4].n128_u64[0];
  a1->n128_u8[0] = v1[2].n128_u8[0];
  a1->n128_u64[1] = v2;
  result = v1[3];
  a1[1] = result;
  a1[2].n128_u64[0] = v3;
  return result;
}

__n128 sub_1A221E23C(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  *(v1 + 64) = *(a1 + 32);
  return result;
}

double sub_1A221E270@<D0>(uint64_t a1@<X8>)
{
  sub_1A22E1980(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

__n128 sub_1A221E2B4@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 104);
  a1->n128_u8[0] = *(v1 + 72);
  a1->n128_u64[1] = v2;
  result = *(v1 + 88);
  a1[1] = result;
  a1[2].n128_u64[0] = v3;
  return result;
}

__n128 sub_1A221E2D8(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 104) = *(a1 + 32);
  return result;
}

void sub_1A221E330(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

__n128 sub_1A221E394()
{
  sub_1A22E1980(v7);
  v0 = v7[0];
  v1 = v8;
  v2 = v9;
  v3 = v10;
  v4 = v11;
  sub_1A22E1980(v12);
  v16 = 1;
  LOBYTE(xmmword_1ED953600) = 0;
  *(&xmmword_1ED953600 + 1) = 0;
  byte_1ED953610 = 1;
  qword_1ED953618 = 0x4046000000000000;
  LOBYTE(xmmword_1ED953620) = v0;
  *(&xmmword_1ED953620 + 1) = v1;
  qword_1ED953630 = v2;
  unk_1ED953638 = v3;
  *&xmmword_1ED953640 = v4;
  BYTE8(xmmword_1ED953640) = v12[0];
  qword_1ED953650 = v13;
  *algn_1ED953658 = v14;
  qword_1ED953668 = v15;
  result = *MEMORY[0x1E69DDCE0];
  v6 = *(MEMORY[0x1E69DDCE0] + 16);
  xmmword_1ED953670 = *MEMORY[0x1E69DDCE0];
  xmmword_1ED953680 = v6;
  qword_1ED953690 = 0x4035000000000000;
  return result;
}

__n128 sub_1A221E454@<Q0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X3>, __n128 *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>)
{
  v12 = a5->n128_u8[0];
  v13 = a5->n128_u64[1];
  v14 = a5[2].n128_u64[0];
  v15 = *a4;
  v16 = *(a4 + 1);
  v17 = *(a4 + 4);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a7;
  *(a6 + 32) = v15;
  *(a6 + 40) = v16;
  *(a6 + 48) = *(a4 + 1);
  *(a6 + 64) = v17;
  *(a6 + 72) = v12;
  *(a6 + 80) = v13;
  result = a5[1];
  *(a6 + 88) = result;
  *(a6 + 104) = v14;
  *(a6 + 112) = a8;
  *(a6 + 120) = a9;
  *(a6 + 128) = a10;
  *(a6 + 136) = a11;
  *(a6 + 144) = a12;
  return result;
}

__int128 *sub_1A221E4C0()
{
  if (qword_1ED9524B0 != -1)
  {
    swift_once();
  }

  return &xmmword_1ED953600;
}

double sub_1A221E514@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED9524B0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = xmmword_1ED953670;
  *(a1 + 96) = unk_1ED953660;
  *(a1 + 112) = v1;
  *(a1 + 128) = xmmword_1ED953680;
  *(a1 + 144) = qword_1ED953690;
  v2 = *&qword_1ED953630;
  *(a1 + 32) = xmmword_1ED953620;
  *(a1 + 48) = v2;
  v3 = *&qword_1ED953650;
  *(a1 + 64) = xmmword_1ED953640;
  *(a1 + 80) = v3;
  result = *&xmmword_1ED953600;
  v5 = *&byte_1ED953610;
  *a1 = xmmword_1ED953600;
  *(a1 + 16) = v5;
  return result;
}

id sub_1A221E5A4(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_style;
  swift_beginAccess();
  v4 = *(a1 + 112);
  *(v3 + 6) = *(a1 + 96);
  *(v3 + 7) = v4;
  *(v3 + 8) = *(a1 + 128);
  *(v3 + 18) = *(a1 + 144);
  v5 = *(a1 + 48);
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 3) = v5;
  v6 = *(a1 + 80);
  *(v3 + 4) = *(a1 + 64);
  *(v3 + 5) = v6;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v7;
  v8 = sub_1A222042C();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x140))(v8);
  return [v1 setNeedsLayout];
}

id (*sub_1A221E680(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A221E6E4;
}

id sub_1A221E6E4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = sub_1A222042C();
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x140))(v6);

    return [v5 setNeedsLayout];
  }

  return result;
}

id sub_1A221E77C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton];
  v3 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_contentScale;
  v4 = swift_beginAccess();
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xD8))(v4, *&v1[v3]);
  v7 = (*((*v5 & **&v1[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton]) + 0xD8))(v6, *&v1[v3]);
  v8 = (*((*v5 & **&v1[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton]) + 0xD8))(v7, *&v1[v3]);
  (*((*v5 & **&v1[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton]) + 0xD8))(v8, *&v1[v3]);
  return [v1 setNeedsLayout];
}

double sub_1A221E8D0()
{
  v1 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_contentScale;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A221E914(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_contentScale;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1A221E77C();
}

id (*sub_1A221E968(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A221E9CC;
}

id sub_1A221E9CC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A221E77C();
  }

  return result;
}

id sub_1A221EA34()
{
  type metadata accessor for TransportButton();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1A221EAC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton)) + 0x120))(a1);
  v5 = *((*v4 & **(v1 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton)) + 0x120);

  v5(v6);
  v7 = *((*v4 & **(v1 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton)) + 0x120);

  v7(v8);
  v9 = *((*v4 & **(v1 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton)) + 0x120);

  v9(v10);
}

void (*sub_1A221ECA0(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_visualStylingProvider;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A221ED28;
}

void sub_1A221ED28(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = MEMORY[0x1E69E7D40];
    v6 = *((*MEMORY[0x1E69E7D40] & **(v4 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton)) + 0x120);

    v6(v7);
    v8 = *((*v5 & **(v4 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton)) + 0x120);

    v8(v9);
    v10 = *((*v5 & **(v4 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton)) + 0x120);

    v10(v11);
    v12 = *((*v5 & **(v4 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton)) + 0x120);

    v12(v13);
  }

  free(v3);
}

char *sub_1A221EED4(double a1, double a2, double a3, double a4)
{
  bzero(&v4[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_viewModel], 0x300uLL);
  *&v4[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_style;
  if (qword_1ED9524B0 != -1)
  {
    swift_once();
  }

  memmove(&v4[v9], &xmmword_1ED953600, 0x98uLL);
  *&v4[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_contentScale] = 0x3FF0000000000000;
  v10 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton;
  type metadata accessor for TransportButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v10] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton;
  *&v4[v12] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton;
  *&v4[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton;
  *&v4[v14] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_visualStylingProvider] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_ongoingInteraction] = 0;
  v42.receiver = v4;
  v42.super_class = type metadata accessor for NowPlayingTransportControlsView();
  v15 = objc_msgSendSuper2(&v42, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton;
  v17 = *&v15[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = MEMORY[0x1E69E7D40];
  v20 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x138);
  v21 = v15;
  v22 = v17;
  v20(sub_1A2220750, v18);

  [*&v15[v16] setExclusiveTouch_];
  [v21 addSubview_];
  v23 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton;
  v24 = *&v21[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v19;
  v27 = *((*v19 & *v24) + 0x138);
  v28 = v24;
  v27(sub_1A2220B64, v25);

  [*&v21[v23] setExclusiveTouch_];
  [v21 addSubview_];
  v29 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton;
  v30 = *&v21[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = *((*v26 & *v30) + 0x138);
  v33 = v30;
  v32(sub_1A2220B64, v31);

  [*&v21[v29] setExclusiveTouch_];
  [v21 addSubview_];
  v34 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton;
  v35 = *&v21[OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton];
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = v26;
  v38 = *((*v26 & *v35) + 0x138);
  v39 = v35;
  v38(sub_1A2220B64, v36);

  [*&v21[v34] setExclusiveTouch_];
  [v21 addSubview_];
  v40 = sub_1A222042C();
  (*((*v37 & *v21) + 0x140))(v40);

  return v21;
}

id sub_1A221F42C()
{
  v79.receiver = v0;
  v79.super_class = type metadata accessor for NowPlayingTransportControlsView();
  objc_msgSendSuper2(&v79, sel_layoutSubviews);
  v1 = [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = MEMORY[0x1E69E7D40];
  v11 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v11(v80, v1);
  v83.origin.x = UIEdgeInsetsInsetRect(v3, v5, v7, v9, *&v80[14], *&v80[15]);
  x = v83.origin.x;
  y = v83.origin.y;
  width = v83.size.width;
  height = v83.size.height;
  v16 = CGRectGetHeight(v83);
  v17 = (v11)(v81);
  v18 = *&v81[18];
  v19 = (v11)(v82, v17);
  recta.origin.y = height;
  if (LOBYTE(v82[0]))
  {
    if (LOBYTE(v82[0]) != 1)
    {
      v84.origin.x = x;
      v84.origin.y = y;
      v84.size.width = width;
      v84.size.height = height;
      MinX = CGRectGetMinX(v84);
      sub_1A210F570(x, y, width, height, MinX - v16 - v18, 0.0, v16, v16);
      v22 = v21;
      recta.origin.x = v18;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton) setFrame_];
      v85.origin.x = v22;
      v85.origin.y = v24;
      v85.size.width = v26;
      v85.size.height = v28;
      v29 = CGRectGetMinX(v85);
      v30 = recta.origin.y;
      sub_1A210F570(x, y, width, recta.origin.y, v29 - v16 - recta.origin.x, 0.0, v16, v16);
      [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton) setFrame_];
      v86.origin.x = x;
      v86.origin.y = y;
      v86.size.width = width;
      v86.size.height = recta.origin.y;
      v31 = CGRectGetMinX(v86);
      sub_1A210F570(x, y, width, recta.origin.y, v31, 0.0, v16, v16);
      [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton) setFrame_];
      v87.origin.x = x;
      v87.origin.y = y;
      v87.size.width = width;
      v87.size.height = recta.origin.y;
      v32 = CGRectGetMaxX(v87) - v16;
LABEL_7:
      sub_1A210F570(x, y, width, v30, v32, 0.0, v16, v16);
      return [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton) setFrame_];
    }
  }

  else
  {
    (*((*v10 & *v0) + 0xA0))(&recta.size.width, v19);
    if (v76)
    {
      sub_1A2214CF8(&recta.size, v77, &qword_1EB088850);
      sub_1A210D9B0(&recta.size, &qword_1EB088860);
      if (*(&v78 + 1))
      {
        sub_1A210D9B0(v77, &qword_1EB088850);
        v88.origin.x = x;
        v88.origin.y = y;
        v88.size.width = width;
        v88.size.height = height;
        v73 = width;
        v33 = (CGRectGetWidth(v88) + v16 * -5.0) * 0.25;
        sub_1A2128200(x, y, width, height, 0.0, 0.0, v16, v16);
        v35 = v34;
        recta.origin.x = v34;
        v37 = v36;
        v70 = v38;
        v72 = v36;
        v39 = v38;
        v41 = v40;
        [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton) setFrame_];
        v89.origin.x = v35;
        v89.origin.y = v37;
        v89.size.width = v39;
        v89.size.height = v41;
        v42 = CGRectGetMinX(v89);
        width = v73;
        v30 = recta.origin.y;
        sub_1A210F570(x, y, v73, recta.origin.y, v42 - v16 - v33, 0.0, v16, v16);
        [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton) setFrame_];
        v90.origin.x = x;
        v90.origin.y = y;
        v90.size.width = v73;
        v90.size.height = recta.origin.y;
        v43 = CGRectGetMinX(v90);
        sub_1A210F570(x, y, v73, recta.origin.y, v43, 0.0, v16, v16);
        [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton) setFrame_];
        v91.origin.x = recta.origin.x;
        v91.size.width = v70;
        v91.origin.y = v72;
        v91.size.height = v41;
        v32 = v33 + CGRectGetMaxX(v91);
        goto LABEL_7;
      }
    }

    else
    {
      sub_1A210D9B0(&recta.size, &qword_1EB088860);
      memset(v77, 0, sizeof(v77));
      v78 = 0u;
    }

    sub_1A210D9B0(v77, &qword_1EB088850);
  }

  sub_1A2128200(x, y, width, height, 0.0, 0.0, v16, v16);
  v45 = v44;
  v47 = v46;
  v48 = v16;
  v49 = v18;
  v51 = v50;
  v74 = width;
  v52 = y;
  v53 = x;
  v55 = v54;
  [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton) setFrame_];
  v69 = v47;
  v71 = v45;
  v92.origin.x = v45;
  v92.origin.y = v47;
  v68 = v51;
  v92.size.width = v51;
  v92.size.height = v55;
  recta.origin.x = v49;
  v56 = CGRectGetMinX(v92) - v48 - v49;
  v57 = v48;
  sub_1A210F570(v53, v52, v74, recta.origin.y, v56, 0.0, v57, v57);
  v58 = v93.origin.y;
  v59 = v93.size.width;
  v60 = v93.size.height;
  v61 = CGRectGetMinX(v93);
  v94.size.height = recta.origin.y;
  v62 = v61;
  v94.origin.x = v53;
  v94.origin.y = v52;
  v94.size.width = v74;
  v63 = CGRectGetMinX(v94);
  if (v63 >= v62)
  {
    if ((*&v63 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v64 = v62;
    }

    else
    {
      v64 = v63;
    }

    if ((~*&v63 & 0x7FF0000000000000) != 0)
    {
      v62 = v63;
    }

    else
    {
      v62 = v64;
    }
  }

  [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton) setFrame_];
  v95.origin.x = v62;
  v95.origin.y = v58;
  v95.size.width = v59;
  v95.size.height = v60;
  v65 = CGRectGetMinX(v95);
  sub_1A210F570(v53, v52, v74, recta.origin.y, v65 - v57 - recta.origin.x, 0.0, v57, v57);
  [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton) setFrame_];
  v96.origin.y = v69;
  v96.origin.x = v71;
  v96.size.height = v55;
  v96.size.width = v68;
  MaxX = CGRectGetMaxX(v96);
  sub_1A210F570(v53, v52, v74, recta.origin.y, recta.origin.x + MaxX, 0.0, v57, v57);
  CGRectGetMinX(v97);
  v98.origin.x = v53;
  v98.origin.y = v52;
  v98.size.width = v74;
  v98.size.height = recta.origin.y;
  CGRectGetMaxX(v98);
  return [*(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton) setFrame_];
}

void sub_1A221FB28()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v3 = v2(&v6);
  if (v7)
  {
    v4 = (v2)(v8, v3);
    (*((*v1 & *v0) + 0xE8))(v4);
  }

  else
  {
    v5 = (v2)(v8, v3);
    (*((*v1 & *v0) + 0xE8))(v5);
    sub_1A22E6BF8();
  }
}

uint64_t sub_1A221FC3C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_ongoingInteraction);
  *(v1 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_ongoingInteraction) = result;
  if (v2)
  {
    v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);

    if (v3(v4))
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(v1, v2, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1A221FD34(uint64_t a1, int a2)
{
  v4 = sub_1A22E5728();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A22E5738();
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0888B8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0888C0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v52 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v49 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    v54 = a2;
    v50 = v11;
    v51 = v7;
    v24 = v4;
    sub_1A2214CF8(a1 + 40, v57, &qword_1EB0888C8);
    v25 = v58;
    if (v58)
    {
      v26 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      (*(v26 + 24))(v25, v26);
      v27 = v5;
      v28 = v24;
      (*(v5 + 56))(v21, 0, 1, v24);
      __swift_destroy_boxed_opaque_existential_0(v57);
    }

    else
    {
      sub_1A210D9B0(v57, &qword_1EB0888C8);
      v27 = v5;
      v28 = v4;
      (*(v5 + 56))(v21, 1, 1, v4);
    }

    sub_1A2214CF8(a1, v57, &qword_1EB0888D0);
    v29 = v58;
    if (v58)
    {
      v30 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      (*(v30 + 32))(v29, v30);
      v32 = v55;
      v31 = v56;
      (*(v56 + 56))(v16, 0, 1, v55);
      __swift_destroy_boxed_opaque_existential_0(v57);
    }

    else
    {
      sub_1A210D9B0(v57, &qword_1EB0888D0);
      v32 = v55;
      v31 = v56;
      (*(v56 + 56))(v16, 1, 1, v55);
    }

    v33 = v21;
    if (v54)
    {
      if (v54 == 1)
      {
        v34 = v52;
        sub_1A2214CF8(v21, v52, &qword_1EB0888C0);
        if ((*(v27 + 48))(v34, 1, v28) == 1)
        {

          sub_1A210D9B0(v16, &qword_1EB0888B8);
          sub_1A210D9B0(v21, &qword_1EB0888C0);
          v35 = v34;
          v36 = &qword_1EB0888C0;
          return sub_1A210D9B0(v35, v36);
        }

        v38 = v51;
        v39 = (*(v27 + 32))(v51, v34, v28);
        if ((*((*MEMORY[0x1E69E7D40] & *v23) + 0xB8))(v39))
        {
          v41 = v40;
          ObjectType = swift_getObjectType();
          v43 = (*(v41 + 16))(v23, v38, ObjectType, v41);
          swift_unknownObjectRelease();
        }

        else
        {
          v43 = 0;
        }

        sub_1A221FC3C(v43);

        (*(v27 + 8))(v38, v28);
      }

      else
      {
        sub_1A221FC3C(0);
      }
    }

    else
    {
      v37 = v53;
      sub_1A2214CF8(v16, v53, &qword_1EB0888B8);
      if ((*(v31 + 48))(v37, 1, v32) == 1)
      {

        sub_1A210D9B0(v16, &qword_1EB0888B8);
        sub_1A210D9B0(v21, &qword_1EB0888C0);
        v35 = v37;
        v36 = &qword_1EB0888B8;
        return sub_1A210D9B0(v35, v36);
      }

      v44 = v50;
      v45 = (*(v31 + 32))(v50, v37, v32);
      if ((*((*MEMORY[0x1E69E7D40] & *v23) + 0xB8))(v45))
      {
        v47 = v46;
        v48 = swift_getObjectType();
        (*(v47 + 8))(v23, v44, v48, v47);
        swift_unknownObjectRelease();
      }

      (*(v56 + 8))(v44, v32);
    }

    sub_1A210D9B0(v16, &qword_1EB0888B8);
    v36 = &qword_1EB0888C0;
    v35 = v33;
    return sub_1A210D9B0(v35, v36);
  }

  return result;
}

uint64_t sub_1A222042C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0);
  v3(v11);
  v33[0] = v12;
  v33[1] = v13;
  v34 = v14;
  v4 = (*((*v2 & *v1) + 0xC0))(v33);
  v5 = *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton);
  (v3)(v15, v4);
  v31[0] = v16;
  v31[1] = v17;
  v32 = v18;
  v6 = (*((*v2 & *v5) + 0xC0))(v31);
  v7 = *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton);
  (v3)(v19, v6);
  v29[0] = v20;
  v29[1] = v21;
  v30 = v22;
  v8 = (*((*v2 & *v7) + 0xC0))(v29);
  v9 = *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton);
  (v3)(v23, v8);
  v27[0] = v24;
  v27[1] = v25;
  v28 = v26;
  return (*((*v2 & *v9) + 0xC0))(v27);
}

id sub_1A222063C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingTransportControlsView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A2220758()
{
  bzero((v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_viewModel), 0x300uLL);
  *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_style;
  if (qword_1ED9524B0 != -1)
  {
    swift_once();
  }

  memmove((v0 + v1), &xmmword_1ED953600, 0x98uLL);
  *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_contentScale) = 0x3FF0000000000000;
  v2 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leadingButton;
  type metadata accessor for TransportButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v2) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v4 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_leftButton;
  *(v0 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v5 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_centerButton;
  *(v0 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_rightButton;
  *(v0 + v6) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_visualStylingProvider) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls31NowPlayingTransportControlsView_ongoingInteraction) = 0;
  sub_1A22E7028();
  __break(1u);
}

unint64_t sub_1A22208DC()
{
  result = qword_1EB0888B0;
  if (!qword_1EB0888B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0888B0);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1A22209B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[152])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A22209FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void type metadata accessor for UIEdgeInsets()
{
  if (!qword_1EB088F40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB088F40);
    }
  }
}

unint64_t sub_1A2220AD4()
{
  result = qword_1ED94FC50;
  if (!qword_1ED94FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94FC50);
  }

  return result;
}

id sub_1A2220BE8()
{
  result = [objc_opt_self() clearColor];
  qword_1ED953518 = 0;
  qword_1ED9534F0 = result;
  *algn_1ED9534F8 = 0;
  qword_1ED953500 = 0;
  qword_1ED953508 = 0;
  dword_1ED953510 = 0;
  return result;
}

uint64_t sub_1A2220C34@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, float a6@<S3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

uint64_t *sub_1A2220C4C()
{
  if (qword_1ED952130 != -1)
  {
    swift_once();
  }

  return &qword_1ED9534F0;
}

id sub_1A2220C9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED952130 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = qword_1ED9534F0;
  v3 = qword_1ED953508;
  v4 = dword_1ED953510;
  v5 = qword_1ED953518;
  *a1 = qword_1ED9534F0;
  *(a1 + 8) = *algn_1ED9534F8;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;

  return v2;
}

id sub_1A2220D34()
{
  v0 = [objc_opt_self() blackColor];

  return v0;
}

BOOL sub_1A2220D74(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1A2221658(v7, v8);
}

id sub_1A2220DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls10ShadowView_style;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;

  return v4;
}

uint64_t sub_1A2220E3C(uint64_t a1)
{
  sub_1A22216F8(a1);

  return sub_1A22217F8(a1);
}

void (*sub_1A2220E74(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 216) = v1;
  v5 = v1 + OBJC_IVAR____TtC13MediaControls10ShadowView_style;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 24);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v10 = *(v5 + 8);
  *(v4 + 96) = *v5;
  v4 += 96;
  *(v4 + 8) = v10;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;
  v11 = v6;
  return sub_1A2220F34;
}

void sub_1A2220F34(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  if (a2)
  {
    *v2 = *(v2 + 96);
    *(v2 + 16) = v3;
    *(v2 + 32) = *(v2 + 128);
    sub_1A2221828(v2, v2 + 144);
    sub_1A22216F8(v2);
    sub_1A22217F8(v2);
  }

  else
  {
    *(v2 + 48) = *(v2 + 96);
    *(v2 + 64) = v3;
    *(v2 + 80) = *(v2 + 128);
    sub_1A22216F8(v2 + 48);
    sub_1A22217F8(v2 + 48);
  }

  free(v2);
}

id sub_1A2220FCC(__int128 *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC13MediaControls10ShadowView_style];
  v5 = a1[2];
  v6 = *a1;
  *(v4 + 1) = a1[1];
  *(v4 + 2) = v5;
  *v4 = v6;
  v7 = *a1;
  v12.receiver = v3;
  v12.super_class = v1;
  v8 = v7;
  v9 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  [v10 setShadowPathIsBounds_];

  [v9 setUserInteractionEnabled_];
  sub_1A22213E8();
  sub_1A22217F8(a1);

  return v9;
}

id sub_1A22210B8(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtC13MediaControls10ShadowView_style];
  v4 = a1[1];
  v5 = a1[2];
  *v3 = *a1;
  *(v3 + 1) = v4;
  *(v3 + 2) = v5;
  v6 = *a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ShadowView();
  v7 = v6;
  v8 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  [v9 setShadowPathIsBounds_];

  [v8 setUserInteractionEnabled_];
  sub_1A22213E8();
  sub_1A22217F8(a1);

  return v8;
}

void sub_1A2221258(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1A22E6598();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for ShadowView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  if ((v5 & 1) == 0)
  {
    if (a2)
    {
      sub_1A22E66B8();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1A22213E8()
{
  v1 = [v0 layer];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2(v9);
  v3 = [v9[0] CGColor];
  sub_1A22217F8(v9);
  [v1 setShadowColor_];

  v4 = [v0 layer];
  v2(v10);
  sub_1A22217F8(v10);
  [v4 setShadowOffset_];

  v5 = [v0 layer];
  v2(v11);
  sub_1A22217F8(v11);
  [v5 setShadowRadius_];

  v6 = [v0 layer];
  v2(v12);
  sub_1A22217F8(v12);
  LODWORD(v7) = v13;
  [v6 setShadowOpacity_];

  v2(v14);
  sub_1A22217F8(v14);
  return [v0 _setContinuousCornerRadius_];
}

id sub_1A2221614()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShadowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A22216F8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13MediaControls10ShadowView_style;
  swift_beginAccess();
  v4 = *v3;
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *a1;
  v11 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v11;
  *(v3 + 32) = *(a1 + 32);
  sub_1A2221998();
  v12 = v10;
  if ((sub_1A22E6C88() & 1) == 0 || *(a1 + 8) != v6 || *(a1 + 16) != v5 || *(a1 + 24) != v7 || *(a1 + 32) != v8 || *(a1 + 40) != v9)
  {
    sub_1A22213E8();
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A2221898(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A22218E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1EB0888E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB0888E8);
    }
  }
}

unint64_t sub_1A2221998()
{
  result = qword_1ED94E948;
  if (!qword_1ED94E948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E948);
  }

  return result;
}

uint64_t sub_1A22219E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0888F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1A2221A60()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_image;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A2221AAC(void *a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_image;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_crossfadeView)) + 0x78))(a1);
}

void (*sub_1A2221B54(uint64_t *a1))(void **a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_image;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2221BDC;
}

void sub_1A2221BDC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4]);
    v6 = *((*MEMORY[0x1E69E7D40] & **(v4 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_crossfadeView)) + 0x78);
    v7 = v5;
    v6(v5);
  }

  free(v3);
}

uint64_t sub_1A2221C88()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_layout;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A2221CCC(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_layout;
  swift_beginAccess();
  v1[v3] = a1;
  sub_1A2222298();
  return [v1 setNeedsLayout];
}

id (*sub_1A2221D30(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2221D94;
}

id sub_1A2221D94(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    sub_1A2222298();

    return [v5 setNeedsLayout];
  }

  return result;
}

id sub_1A2221DF0()
{
  type metadata accessor for CrossfadeImageView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_1A2221E2C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_image] = 0;
  v4[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_layout] = 1;
  v9 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_crossfadeView;
  type metadata accessor for CrossfadeImageView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for MediaControlsModuleBackgroundView();
  v10 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = *&v10[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_crossfadeView];
  v12 = v10;
  [v12 addSubview_];
  sub_1A2222298();

  return v12;
}

void sub_1A2221F34()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_image) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_layout) = 1;
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_crossfadeView;
  type metadata accessor for CrossfadeImageView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1A22E7028();
  __break(1u);
}

id sub_1A2222080()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for MediaControlsModuleBackgroundView();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  v1 = [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v11 = (v10)(v1);
  v12 = sub_1A2122014(v11);
  v14 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v12, v13);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v10();
  sub_1A21275D0();
  v22 = sub_1A229DA54(v21, v18, v20);
  v24 = v23;
  v10();
  sub_1A22E6BF8();
  sub_1A2128200(v14, v16, v22, v24, 0.0, 0.0, v25, v26);
  v27 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_crossfadeView);
  v30 = v14;
  v31 = v16;
  v32 = v18;
  v33 = v20;
  v34 = 0;
  sub_1A22E6BA8();
  return [v27 setFrame_];
}

void sub_1A2222298()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleBackgroundView_crossfadeView);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v3 = v2();
  sub_1A229CBC8(v3, v15);
  v4 = sub_1A22406C8();
  sub_1A224002C(v4, v5);
  v7 = v6;
  v8 = sub_1A211C464(v15);
  v9 = [v1 _setContinuousCornerRadius_];
  [v1 setAlpha_];
  v10 = [v0 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088918);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A2308E80;
  v12 = sub_1A22224EC();
  v13 = sub_1A22C7064();
  *(v11 + 56) = v12;
  *(v11 + 32) = v13;
  v14 = sub_1A22E6738();

  [v10 setFilters_];
}

id sub_1A222246C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaControlsModuleBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A22224EC()
{
  result = qword_1ED94E958;
  if (!qword_1ED94E958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED94E958);
  }

  return result;
}

uint64_t sub_1A2222538()
{
  v1 = OBJC_IVAR____TtC13MediaControls12WaveformView_style;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A222257C(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls12WaveformView_style;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v5 = *(v1 + OBJC_IVAR____TtC13MediaControls12WaveformView_wrappedView);
  v6 = v4();
  [v5 setBarVisualStyle_];
}

void (*sub_1A2222630(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2222694;
}

void sub_1A2222694(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x80);
    v7 = *(v4 + OBJC_IVAR____TtC13MediaControls12WaveformView_wrappedView);
    v6 = v5();
    [v7 setBarVisualStyle_];
  }
}

void sub_1A222275C()
{
  v1 = OBJC_IVAR____TtC13MediaControls12WaveformView_wrappedView;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls12WaveformView_wrappedView);
  v3 = OBJC_IVAR____TtC13MediaControls12WaveformView_visualStylingProvider;
  swift_beginAccess();
  if (*(v0 + v3))
  {
    v4 = v2;

    v5 = sub_1A22DFF4C();
  }

  else
  {
    v6 = v2;
    v5 = 0;
  }

  [v2 setStylingProvider_];

  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v8 = *(v0 + v1);
  v9 = v7();
  [v8 setBarVisualStyle_];
}

uint64_t sub_1A22228B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls12WaveformView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A222275C();
}

void (*sub_1A2222924(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2222988;
}

void sub_1A2222988(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1A222275C();
  }
}

uint64_t sub_1A22229BC(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    (*(*a1 + 208))(0, 0);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(*Strong + 208);
    v5 = swift_unknownObjectRetain();
    v4(v5, &off_1F143CFB8);
  }

  v6 = swift_weakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = sub_1A229E5F8(*(v2 + OBJC_IVAR____TtC13MediaControls12WaveformView_waveformSettings), v12);
    (*(*v7 + 184))(v12[0] | (v13 << 32), v14, v15, v8);
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xC8))();
    (*(*v10 + 160))(v11 & 1);
  }

  return result;
}

uint64_t sub_1A2222BB8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  sub_1A22229BC(Strong);
}

void (*sub_1A2222C34(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls12WaveformView_presenter;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1A2222CCC;
}

void sub_1A2222CCC(void **a1, char a2)
{
  v3 = *a1;
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  if (a2)
  {

    sub_1A22229BC(Strong);
  }

  else
  {
    sub_1A22229BC(Strong);
  }

  free(v3);
}

uint64_t sub_1A2222D88()
{
  v1 = OBJC_IVAR____TtC13MediaControls12WaveformView_isOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2222DCC(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls12WaveformView_isOnScreen;
  v4 = swift_beginAccess();
  *(v1 + v3) = a1;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))(v4);
  if (result)
  {
    (*(*result + 160))(*(v1 + v3));
  }

  return result;
}

void (*sub_1A2222E8C(uint64_t *a1))(uint64_t *a1, char a2)
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
  v4 = OBJC_IVAR____TtC13MediaControls12WaveformView_isOnScreen;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1A2222F14;
}

void sub_1A2222F14(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*((*MEMORY[0x1E69E7D40] & **(v3 + 24)) + 0xB0))(v4);
    if (v5)
    {
      (*(*v5 + 160))(*(*(v3 + 24) + *(v3 + 32)));
    }
  }

  free(v3);
}

id sub_1A2222FCC()
{
  v0 = [objc_opt_self() currentSettings];

  return v0;
}

char *sub_1A222300C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC13MediaControls12WaveformView_style] = 1;
  *&v4[OBJC_IVAR____TtC13MediaControls12WaveformView_visualStylingProvider] = 0;
  swift_weakInit();
  v4[OBJC_IVAR____TtC13MediaControls12WaveformView_isOnScreen] = 0;
  v10 = OBJC_IVAR____TtC13MediaControls12WaveformView_waveformSettings;
  v11 = [objc_opt_self() currentSettings];
  *&v5[v10] = v11;
  v12 = [objc_allocWithZone(MRUWaveformView) initWithFrame:1 context:v11 settings:{0.0, 0.0, 0.0, 0.0}];
  v13 = sub_1A2114DFC();

  *&v5[OBJC_IVAR____TtC13MediaControls12WaveformView_wrappedView] = v13;
  v23.receiver = v5;
  v23.super_class = type metadata accessor for WaveformView();
  v14 = objc_msgSendSuper2(&v23, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC13MediaControls12WaveformView_wrappedView;
  v16 = *&v14[OBJC_IVAR____TtC13MediaControls12WaveformView_wrappedView];
  v17 = v14;
  [v17 addSubview_];
  v18 = sub_1A211A6BC();
  sub_1A211A6C4(v18 & 1, sub_1A2223214);

  v19 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x80);
  v20 = *&v14[v15];
  v21 = v19();
  [v20 setBarVisualStyle_];

  return v17;
}

char *sub_1A2223214()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC13MediaControls12WaveformView_wrappedView];
  sub_1A211A728(v7);

  v3 = sub_1A211A7DC(v7, v1);
  sub_1A211A9FC(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB088E40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A2308E80;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088840);
  *(v4 + 64) = &off_1F14441C0;
  *(v4 + 32) = v3;
  v5 = sub_1A211AB54(v4);

  return v5;
}

id sub_1A2223330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WaveformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A22233D0(char a1, void *a2, char a3, float a4, float a5, float a6)
{
  v13 = *&v6[OBJC_IVAR____TtC13MediaControls12WaveformView_waveformSettings];
  v14 = &selRef_animationDuration;
  if (a1)
  {
    v15 = &selRef_springDamping;
  }

  else
  {
    v14 = &selRef_pausedAnimationDuration;
    v15 = &selRef_pausedSpringDamping;
  }

  [*&v6[OBJC_IVAR____TtC13MediaControls12WaveformView_waveformSettings] *v14];
  v17 = v16;
  [v13 *v15];
  v19 = v18;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 20) = a5;
  *(v21 + 24) = a6;
  *(v21 + 32) = v6;
  *(v21 + 40) = a1;
  *(v21 + 48) = a2;
  v28[4] = sub_1A22236BC;
  v28[5] = v21;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 1107296256;
  v28[2] = sub_1A210E3F0;
  v28[3] = &block_descriptor_0;
  v22 = _Block_copy(v28);
  v23 = v6;
  v24 = a2;

  [v20 animateWithDuration:0 delay:v22 usingSpringWithDamping:0 initialSpringVelocity:v17 options:0.0 animations:v19 completion:0.0];
  _Block_release(v22);
  if (a3)
  {
    v25 = sub_1A22E6AD8();
    if ((v25 & 0x100000000) == 0)
    {
      v26 = *&v25;
      v27 = objc_opt_self();
      [v27 setUpdateDeadline_];
      [v27 flush];
    }
  }
}

void sub_1A22235F4()
{
  *(v0 + OBJC_IVAR____TtC13MediaControls12WaveformView_style) = 1;
  *(v0 + OBJC_IVAR____TtC13MediaControls12WaveformView_visualStylingProvider) = 0;
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtC13MediaControls12WaveformView_isOnScreen) = 0;
  v1 = OBJC_IVAR____TtC13MediaControls12WaveformView_waveformSettings;
  *(v0 + v1) = [objc_opt_self() currentSettings];
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A22236BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = objc_opt_self();
  v8 = [*&v4[OBJC_IVAR____TtC13MediaControls12WaveformView_wrappedView] highFramerateReason];
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1A2223A80;
  *(v10 + 24) = v9;
  v18[4] = sub_1A22154EC;
  v18[5] = v10;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1A2212E7C;
  v18[3] = &block_descriptor_21;
  v11 = _Block_copy(v18);
  v12 = v4;
  v13 = v6;

  LODWORD(v14) = v1;
  LODWORD(v15) = v2;
  LODWORD(v16) = v3;
  [v7 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LODWORD(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HapticStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HapticStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1A22239E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A2223A04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

void type metadata accessor for CAFrameRateRange()
{
  if (!qword_1EB088950)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB088950);
    }
  }
}

uint64_t sub_1A2223AA8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001A2303000 == a2 || (sub_1A22E71E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2303020 == a2)
  {

    return 1;
  }

  else
  {
    v5 = sub_1A22E71E8();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1A2223B90(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t sub_1A2223BCC()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1A2223C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A2303000 == a2 || (sub_1A22E71E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2303020 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A22E71E8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A2223CF4(uint64_t a1)
{
  v2 = sub_1A2228AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2223D30(uint64_t a1)
{
  v2 = sub_1A2228AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1A2223F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___MRIRRouteRecommendationContext_candidateResults] = a1;
  v8 = &v7[OBJC_IVAR___MRIRRouteRecommendationContext_contextIdentifier];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1A2223FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___MRIRRouteRecommendationContext_candidateResults] = a1;
  v4 = &v3[OBJC_IVAR___MRIRRouteRecommendationContext_contextIdentifier];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for RouteRecommendationContext();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1A22240FC(void *a1)
{
  v3 = sub_1A22E55D8();
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088968);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v11 = a1[3];
  v10 = a1[4];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1A2228AF4();
  sub_1A22E7308();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    type metadata accessor for RouteRecommendationContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v5;
    v24 = v3;
    v25 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088978);
    v32 = 0;
    sub_1A2228BC0(&qword_1EB088980, &qword_1EB088988);
    sub_1A22E7138();
    v13 = v28;
    *&v28[OBJC_IVAR___MRIRRouteRecommendationContext_candidateResults] = v30;
    LOBYTE(v30) = 1;
    v14 = sub_1A22E70D8();
    v16 = v25;
    if (!v15)
    {
      v30 = 760500813;
      v31 = 0xE400000000000000;
      v17 = v23;
      sub_1A22E55C8();
      v18 = sub_1A22E55B8();
      v20 = v19;
      (*(v26 + 8))(v17, v24);
      MEMORY[0x1A58DA8D0](v18, v20);
      v16 = v25;
      v13 = v28;

      v14 = v30;
      v15 = v31;
    }

    v21 = &v13[OBJC_IVAR___MRIRRouteRecommendationContext_contextIdentifier];
    *v21 = v14;
    v21[1] = v15;
    v22 = type metadata accessor for RouteRecommendationContext();
    v29.receiver = v13;
    v29.super_class = v22;
    v10 = objc_msgSendSuper2(&v29, sel_init);
    (*(v16 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  return v10;
}

uint64_t sub_1A2224514(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088998);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2228AF4();
  v9 = sub_1A22E7318();
  v10 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x60))(v9);
  v13[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088978);
  sub_1A2228BC0(&qword_1EB0889A0, &qword_1EB0889A8);
  sub_1A22E71B8();

  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*((*v10 & *v3) + 0x78))(v11);
  v13[6] = 1;
  sub_1A22E7188();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A2224838@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A22248D4(unsigned __int8 a1)
{
  v1 = 0x6966697373616C63;
  v2 = 0xD000000000000016;
  if (a1 == 5)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0x48676E6974726F73;
  if (a1 != 3)
  {
    v3 = 0x6F546C6C61437369;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000019;
  if (a1 != 1)
  {
    v4 = 0x74616469646E6163;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A22249CC()
{
  v1 = *v0;
  v2 = 0x6966697373616C63;
  v3 = 0xD000000000000016;
  if (v1 == 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x48676E6974726F73;
  if (v1 != 3)
  {
    v4 = 0x6F546C6C61437369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v1 != 1)
  {
    v5 = 0x74616469646E6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A2224AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2228C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2224AF8(uint64_t a1)
{
  v2 = sub_1A2228EC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2224B34(uint64_t a1)
{
  v2 = sub_1A2228EC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2224BB8()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2224C50(uint64_t a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A2224DDC()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A2224E90(uint64_t a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1A2224F94()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A2225040(uint64_t a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A2225140()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22251D8(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A22252D0()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A2225368(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A2225460()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22254F8(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A22255A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{

  v15 = objc_allocWithZone(v8);
  v16 = &v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classificationDescription];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  *&v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint] = 0;
  *&v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification] = a1;
  *&v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate] = a4;
  swift_beginAccess();
  *&v15[v17] = a5;
  v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction] = a6;
  v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl] = a7;
  v15[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered] = a8;
  v19.receiver = v15;
  v19.super_class = v8;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_1A222569C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8)
{

  v15 = &v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classificationDescription];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  *&v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint] = 0;
  *&v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification] = a1;
  *&v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate] = a4;
  swift_beginAccess();
  *&v8[v16] = a5;
  v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction] = a6;
  v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl] = a7;
  v8[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered] = a8;
  v18.receiver = v8;
  v18.super_class = type metadata accessor for RouteRecommendationCandidateResult();
  return objc_msgSendSuper2(&v18, sel_init);
}

char *sub_1A222585C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0889E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = &v1[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classificationDescription];
  *v8 = 0;
  v8[1] = 0;
  v27 = v8;
  v28 = a1;
  v9 = OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint;
  v29 = v1;
  *&v1[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_sortingHint] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2228EC0();
  sub_1A22E7308();
  if (v2)
  {
    v14 = v29;
    __swift_destroy_boxed_opaque_existential_0(v28);

    type metadata accessor for RouteRecommendationCandidateResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = 0;
    v10 = v9;
    *&v29[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_classification] = sub_1A22E7128();
    v33 = 1;
    v11 = v4;
    v12 = v7;
    v13 = v5;
    v16 = sub_1A22E70D8();
    v18 = v17;
    v19 = v27;
    swift_beginAccess();
    *v19 = v16;
    v19[1] = v18;

    type metadata accessor for RouteRecommendationCandidate();
    v32 = 2;
    sub_1A2229900(&qword_1EB0889F8, type metadata accessor for RouteRecommendationCandidate);
    sub_1A22E7138();
    v20 = v13;
    v21 = v29;
    *&v29[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_candidate] = v31;
    LOBYTE(v31) = 3;
    v22 = sub_1A22E70F8();
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }

    swift_beginAccess();
    v25 = *&v21[v10];
    *&v21[v10] = v24;

    v32 = 4;
    v21[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isCallToAction] = sub_1A22E70E8() & 1;
    v32 = 5;
    v21[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isLockScreenControl] = sub_1A22E70E8() & 1;
    v32 = 6;
    v21[OBJC_IVAR___MRIRRouteRecommendationCandidateResult_isConservativeFiltered] = sub_1A22E70E8() & 1;
    v26 = type metadata accessor for RouteRecommendationCandidateResult();
    v30.receiver = v21;
    v30.super_class = v26;
    v14 = objc_msgSendSuper2(&v30, sel_init);
    (*(v20 + 8))(v12, v11);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  return v14;
}

id sub_1A2225D0C(void *a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(void))
{
  v8 = a1;
  sub_1A2225DE4(a3, a4, a5);

  v9 = sub_1A22E6598();

  return v9;
}

uint64_t sub_1A2225DE4(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(void))
{
  v7 = v3;
  v8 = sub_1A22E6618();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A22E5468();
  swift_allocObject();
  sub_1A22E5458();
  v23 = v3;
  v9 = a1();
  sub_1A2229900(a2, a3);
  v10 = sub_1A22E5448();
  v12 = v11;
  sub_1A22E6608();
  v13 = sub_1A22E65E8();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    sub_1A2228B6C(v10, v12);
  }

  else
  {
    sub_1A2228B6C(v10, v12);
    v16 = 0xEC00000061746164;
    v15 = 0x2064696C61766E69;
  }

  v23 = 60;
  v24 = 0xE100000000000000;
  v22.receiver = v7;
  v22.super_class = v9;
  v17 = objc_msgSendSuper2(&v22, sel_description);
  v18 = sub_1A22E65C8();
  v20 = v19;

  MEMORY[0x1A58DA8D0](v18, v20);

  MEMORY[0x1A58DA8D0](2622, 0xE200000000000000);
  MEMORY[0x1A58DA8D0](v15, v16);

  return v23;
}

uint64_t sub_1A2225FEC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088A00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2228EC0();
  v9 = sub_1A22E7318();
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x88))(v9);
  v27 = 0;
  v11 = sub_1A22E71A8();
  if (!v2)
  {
    (*((*v10 & *v3) + 0xA0))(v11);
    v26 = 1;
    sub_1A22E7168();

    v14 = (*((*v10 & *v3) + 0xB8))(v13);
    v20[1] = v14;
    v25 = 2;
    type metadata accessor for RouteRecommendationCandidate();
    sub_1A2229900(&qword_1EB088A08, type metadata accessor for RouteRecommendationCandidate);
    sub_1A22E71B8();

    v15 = (*((*v10 & *v3) + 0xD0))();
    v16 = v15;
    if (v15)
    {
      [v15 doubleValue];
    }

    v24 = 3;
    v17 = sub_1A22E7178();
    (*((*v10 & *v3) + 0xE8))(v17);
    v23 = 4;
    v18 = sub_1A22E7198();
    (*((*v10 & *v3) + 0x100))(v18);
    v22 = 5;
    v19 = sub_1A22E7198();
    (*((*v10 & *v3) + 0x118))(v19);
    v21 = 6;
    sub_1A22E7198();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A2226504@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 312))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A222659C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001A2303110 == a2 || (sub_1A22E71E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365646F6ELL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_1A22E71E8();

    if (v5)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1A2226670(char a1)
{
  if (a1)
  {
    return 0x7365646F6ELL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1A22266A8()
{
  if (*v0)
  {
    return 0x7365646F6ELL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1A22266E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001A2303110 == a2 || (sub_1A22E71E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7365646F6ELL && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A22E71E8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A22267C8(uint64_t a1)
{
  v2 = sub_1A2228F38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2226804(uint64_t a1)
{
  v2 = sub_1A2228F38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1A222684C()
{
  swift_beginAccess();

  v0 = sub_1A22E6598();

  return v0;
}

uint64_t sub_1A22268D0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1A2226930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1A22E65C8();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1A22269A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

id sub_1A2226AA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, void (*a6)(void))
{
  v9 = swift_beginAccess();
  a4(v9);
  sub_1A2229900(a5, a6);

  v10 = sub_1A22E6918();

  return v10;
}

uint64_t sub_1A2226BAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(void), uint64_t *a7)
{
  a4();
  sub_1A2229900(a5, a6);
  v11 = sub_1A22E6928();
  v12 = *a7;
  swift_beginAccess();
  *(a1 + v12) = v11;
}

uint64_t sub_1A2226C64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_1A2226D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___MRIRRouteRecommendationCandidate_candidateIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___MRIRRouteRecommendationCandidate_nodes] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id sub_1A2226D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___MRIRRouteRecommendationCandidate_candidateIdentifier];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___MRIRRouteRecommendationCandidate_nodes] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for RouteRecommendationCandidate();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1A2226E1C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088A20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2228F38();
  sub_1A22E7308();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for RouteRecommendationCandidate();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v17) = 0;
    v9 = sub_1A22E7108();
    v11 = &v1[OBJC_IVAR___MRIRRouteRecommendationCandidate_candidateIdentifier];
    *v11 = v9;
    v11[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088A30);
    v16 = 1;
    sub_1A2228FB0(&qword_1EB088A38, &qword_1EB088A40);
    sub_1A22E7138();
    *&v1[OBJC_IVAR___MRIRRouteRecommendationCandidate_nodes] = v17;
    v13 = type metadata accessor for RouteRecommendationCandidate();
    v15.receiver = v1;
    v15.super_class = v13;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_1A22270A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088A48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2228F38();
  v9 = sub_1A22E7318();
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x60))(v9);
  v15 = 0;
  sub_1A22E7188();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v14 = (*((*v10 & *v3) + 0x78))(v12);
    v13[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088A30);
    sub_1A2228FB0(&qword_1EB088A50, &qword_1EB088A58);
    sub_1A22E71B8();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1A22273D0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 152))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1A2227470(unsigned __int8 a1)
{
  v1 = 0x746E656449736469;
  if (a1 != 2)
  {
    v1 = 0x6C61636F4C7369;
  }

  v2 = 0xD000000000000018;
  if (a1)
  {
    v2 = 0xD000000000000011;
  }

  if (a1 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1A2227504()
{
  v1 = 0x746E656449736469;
  if (*v0 != 2)
  {
    v1 = 0x6C61636F4C7369;
  }

  v2 = 0xD000000000000018;
  if (*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1A2227598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A222904C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A22275CC(uint64_t a1)
{
  v2 = sub_1A22291C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2227608(uint64_t a1)
{
  v2 = sub_1A22291C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1A2227770(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1A22E6598();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1A2227810(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1A22E65C8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1A2227940()
{
  v1 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A22279D8(char a1)
{
  v3 = OBJC_IVAR___MRIRRouteRecommendationNode_isLocal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t (*sub_1A2227C50(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  a1[1] = v3;
  return sub_1A2227CC8;
}

uint64_t sub_1A2227CC8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *((*MEMORY[0x1E69E7D40] & *a1[2]) + 0x78);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  v4(v3, v2);
}

id sub_1A2227D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = &v13[OBJC_IVAR___MRIRRouteRecommendationNode_avOutputDeviceIdentifier];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v13[OBJC_IVAR___MRIRRouteRecommendationNode_rapportIdentifier];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v13[OBJC_IVAR___MRIRRouteRecommendationNode_idsIdentifier];
  *v16 = 0;
  v16[1] = 0;
  swift_beginAccess();
  *v14 = a1;
  v14[1] = a2;
  swift_beginAccess();
  *v15 = a3;
  v15[1] = a4;
  swift_beginAccess();
  *v16 = a5;
  v16[1] = a6;

  v13[OBJC_IVAR___MRIRRouteRecommendationNode_isLocal] = a7;
  v20.receiver = v13;
  v20.super_class = v7;
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_1A2227E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v14 = &v7[OBJC_IVAR___MRIRRouteRecommendationNode_avOutputDeviceIdentifier];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v7[OBJC_IVAR___MRIRRouteRecommendationNode_rapportIdentifier];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v7[OBJC_IVAR___MRIRRouteRecommendationNode_idsIdentifier];
  *v16 = 0;
  v16[1] = 0;
  swift_beginAccess();
  *v14 = a1;
  v14[1] = a2;
  swift_beginAccess();
  *v15 = a3;
  v15[1] = a4;
  swift_beginAccess();
  *v16 = a5;
  v16[1] = a6;

  v7[OBJC_IVAR___MRIRRouteRecommendationNode_isLocal] = a7;
  v19.receiver = v7;
  v19.super_class = type metadata accessor for RouteRecommendationNode();
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t *sub_1A2227FE0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088A80);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = &v1[OBJC_IVAR___MRIRRouteRecommendationNode_avOutputDeviceIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v1[OBJC_IVAR___MRIRRouteRecommendationNode_rapportIdentifier];
  *v8 = 0;
  v8[1] = 0;
  v30 = a1;
  v31 = v1;
  v9 = &v1[OBJC_IVAR___MRIRRouteRecommendationNode_idsIdentifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A22291C4();
  sub_1A22E7308();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v30);

    type metadata accessor for RouteRecommendationNode();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = 0;
    v11 = v6;
    v12 = sub_1A22E70D8();
    v14 = v13;
    swift_beginAccess();
    *v7 = v12;
    v7[1] = v14;

    v34 = 1;
    v15 = v29;
    v16 = v10;
    v17 = sub_1A22E70D8();
    v19 = v18;
    swift_beginAccess();
    *v8 = v17;
    v8[1] = v19;

    v33 = 2;
    v20 = sub_1A22E70D8();
    v22 = v21;
    swift_beginAccess();
    *v16 = v20;
    v16[1] = v22;

    v36 = 3;
    v23 = sub_1A22E7118();
    v25 = v31;
    *(v31 + OBJC_IVAR___MRIRRouteRecommendationNode_isLocal) = v23 & 1;
    v26 = type metadata accessor for RouteRecommendationNode();
    v32.receiver = v25;
    v32.super_class = v26;
    v10 = objc_msgSendSuper2(&v32, sel_init);
    (*(v28 + 8))(v11, v15);
    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  return v10;
}

uint64_t sub_1A222830C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088A90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A22291C4();
  v9 = sub_1A22E7318();
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x70))(v9);
  v15[15] = 0;
  sub_1A22E7168();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*((*v10 & *v3) + 0x88))(v11);
    v15[14] = 1;
    sub_1A22E7168();

    (*((*v10 & *v3) + 0xA0))(v12);
    v15[13] = 2;
    sub_1A22E7168();

    (*((*v10 & *v3) + 0xB8))(v13);
    v15[12] = 3;
    sub_1A22E7198();
    return (*(v6 + 8))(v8, v5);
  }
}

id sub_1A22285C4()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A2228670(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1A2228710@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A22287A0(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = sub_1A22E6618();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    *&v19 = 0;
    v9 = a1;
    v10 = [v8 dataWithJSONObject:v7 options:0 error:&v19];
    v11 = v19;
    if (v10)
    {
      v12 = sub_1A22E5558();
      v14 = v13;

LABEL_4:
      sub_1A22E5438();
      swift_allocObject();
      sub_1A22E5428();
      type metadata accessor for RouteRecommendationContext();
      sub_1A2229900(&qword_1EB088B08, type metadata accessor for RouteRecommendationContext);
      sub_1A22E5418();
      sub_1A2228B6C(v12, v14);

      return v19;
    }

LABEL_15:
    v17 = v11;
    sub_1A22E54E8();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v19 = 0uLL;
    sub_1A22E65B8();
    if (*(&v19 + 1))
    {
      sub_1A22E6608();
      v12 = sub_1A22E65D8();
      v14 = v15;
      v11 = (*(v3 + 8))(v5, v2);
      if (v14 >> 60 != 15)
      {

        goto LABEL_4;
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v19 = xmmword_1A23096C0;
    sub_1A22E5548();
    v14 = *(&v19 + 1);
    if (*(&v19 + 1) >> 60 != 15)
    {
      v12 = v19;
      goto LABEL_4;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1A2228AF4()
{
  result = qword_1EB088970;
  if (!qword_1EB088970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088970);
  }

  return result;
}

uint64_t sub_1A2228B6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1A2228BC0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB088978);
    sub_1A2229900(a2, type metadata accessor for RouteRecommendationCandidateResult);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A2228C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6966697373616C63 && a2 == 0xEE006E6F69746163;
  if (v4 || (sub_1A22E71E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A23030B0 == a2 || (sub_1A22E71E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xE900000000000065 || (sub_1A22E71E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x48676E6974726F73 && a2 == 0xEB00000000746E69 || (sub_1A22E71E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F546C6C61437369 && a2 == 0xEE006E6F69746341 || (sub_1A22E71E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A2303090 == a2 || (sub_1A22E71E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A2303070 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1A22E71E8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1A2228EC0()
{
  result = qword_1EB0889F0;
  if (!qword_1EB0889F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0889F0);
  }

  return result;
}

unint64_t sub_1A2228F38()
{
  result = qword_1EB088A28;
  if (!qword_1EB088A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088A28);
  }

  return result;
}

uint64_t sub_1A2228FB0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB088A30);
    sub_1A2229900(a2, type metadata accessor for RouteRecommendationNode);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A222904C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001A2303180 == a2;
  if (v4 || (sub_1A22E71E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A2303160 == a2 || (sub_1A22E71E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656449736469 && a2 == 0xED00007265696669 || (sub_1A22E71E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61636F4C7369 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A22E71E8();

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

unint64_t sub_1A22291C4()
{
  result = qword_1EB088A88;
  if (!qword_1EB088A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088A88);
  }

  return result;
}

unint64_t sub_1A222921C()
{
  result = qword_1EB088A98;
  if (!qword_1EB088A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088A98);
  }

  return result;
}

unint64_t sub_1A2229274()
{
  result = qword_1EB088AA0;
  if (!qword_1EB088AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AA0);
  }

  return result;
}

unint64_t sub_1A22292CC()
{
  result = qword_1EB088AA8;
  if (!qword_1EB088AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AA8);
  }

  return result;
}

unint64_t sub_1A2229324()
{
  result = qword_1EB088AB0;
  if (!qword_1EB088AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AB0);
  }

  return result;
}

unint64_t sub_1A222937C()
{
  result = qword_1EB088AB8;
  if (!qword_1EB088AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AB8);
  }

  return result;
}

unint64_t sub_1A22293D4()
{
  result = qword_1EB088AC0;
  if (!qword_1EB088AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AC0);
  }

  return result;
}

unint64_t sub_1A222942C()
{
  result = qword_1EB088AC8;
  if (!qword_1EB088AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AC8);
  }

  return result;
}

unint64_t sub_1A2229484()
{
  result = qword_1EB088AD0;
  if (!qword_1EB088AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AD0);
  }

  return result;
}

unint64_t sub_1A22294DC()
{
  result = qword_1EB088AD8;
  if (!qword_1EB088AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AD8);
  }

  return result;
}

unint64_t sub_1A2229534()
{
  result = qword_1EB088AE0;
  if (!qword_1EB088AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AE0);
  }

  return result;
}

unint64_t sub_1A222958C()
{
  result = qword_1EB088AE8;
  if (!qword_1EB088AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AE8);
  }

  return result;
}

unint64_t sub_1A22295E4()
{
  result = qword_1EB088AF0;
  if (!qword_1EB088AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB088AF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RouteRecommendationCandidateResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RouteRecommendationCandidateResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RouteRecommendationNode.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RouteRecommendationNode.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A2229900(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1A2229A28()
{
  v1 = [v0 containerView];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;

  return v4;
}

void sub_1A2229AB8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for RoutePickerPhonePresentationController();
  objc_msgSendSuper2(&v5, sel_containerViewWillLayoutSubviews);
  v1 = [v0 containerView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 presentedView];
    if (v3)
    {
      v4 = v3;
      [v2 bounds];
      [v4 setFrame_];
    }
  }
}

id sub_1A2229C40(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithPresentedViewController:a1 presentingViewController:a2];

  return v5;
}

id sub_1A2229C98(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RoutePickerPhonePresentationController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithPresentedViewController_presentingViewController_, a1, a2);

  return v5;
}

id sub_1A2229D54()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoutePickerPhonePresentationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2229D88()
{
  v0 = sub_1A22E6248();
  __swift_allocate_value_buffer(v0, qword_1ED951258);
  v1 = __swift_project_value_buffer(v0, qword_1ED951258);
  v2 = sub_1A2104EA0();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_1A2229E14@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_1A2229E28@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1A2117098(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v6[0];
  result = *(v6 + 9);
  *(a2 + 41) = *(v6 + 9);
  return result;
}

void (*sub_1A2229E70(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x328uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 792) = v1;
  v5 = OBJC_IVAR____TtC13MediaControls11PackageView_asset;
  *(v3 + 800) = OBJC_IVAR____TtC13MediaControls11PackageView_asset;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *v4 = *v6;
  v4[1] = v7;
  v8 = v6[2];
  v9 = v6[3];
  v10 = v6[5];
  v4[4] = v6[4];
  v4[5] = v10;
  v4[2] = v8;
  v4[3] = v9;
  v11 = v6[5];
  v13 = v6[2];
  v12 = v6[3];
  v4[22] = v6[4];
  v4[23] = v11;
  v4[20] = v13;
  v4[21] = v12;
  v14 = v6[1];
  v4[18] = *v6;
  v4[19] = v14;
  sub_1A2214CF8(v4, (v4 + 24), &qword_1EB088B18);
  return sub_1A2229F50;
}

void sub_1A2229F50(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*(v2 + 792) + *(v2 + 800));
  v4 = *(*a1 + 304);
  if (a2)
  {
    *(v2 + 576) = *(v2 + 288);
    *(v2 + 592) = v4;
    v5 = *(v2 + 368);
    *(v2 + 640) = *(v2 + 352);
    *(v2 + 656) = v5;
    v6 = *(v2 + 336);
    v8 = *(v2 + 288);
    v7 = *(v2 + 304);
    *(v2 + 608) = *(v2 + 320);
    *(v2 + 624) = v6;
    v9 = v3[1];
    *(v2 + 96) = *v3;
    *(v2 + 112) = v9;
    v10 = v3[2];
    v11 = v3[3];
    v12 = v3[5];
    *(v2 + 160) = v3[4];
    *(v2 + 176) = v12;
    *(v2 + 128) = v10;
    *(v2 + 144) = v11;
    v13 = v3[5];
    v15 = v3[2];
    v14 = v3[3];
    *(v2 + 544) = v3[4];
    *(v2 + 560) = v13;
    *(v2 + 512) = v15;
    *(v2 + 528) = v14;
    v16 = v3[1];
    *(v2 + 480) = *v3;
    *(v2 + 496) = v16;
    *v3 = v8;
    v3[1] = v7;
    v17 = *(v2 + 320);
    v18 = *(v2 + 336);
    v19 = *(v2 + 368);
    v3[4] = *(v2 + 352);
    v3[5] = v19;
    v3[2] = v17;
    v3[3] = v18;
    sub_1A2214CF8(v2 + 576, v2 + 672, &qword_1EB088B18);
    sub_1A2214CF8(v2 + 576, v2 + 672, &qword_1EB088B18);
    sub_1A2214CF8(v2 + 96, v2 + 672, &qword_1EB088B18);
    sub_1A210D9B0(v2 + 480, &qword_1EB088B18);
    sub_1A211697C((v2 + 96));
    sub_1A210D9B0(v2 + 96, &qword_1EB088B18);
    sub_1A210D9B0(v2 + 576, &qword_1EB088B18);
    v20 = *(v2 + 336);
    *(v2 + 416) = *(v2 + 320);
    *(v2 + 432) = v20;
    v21 = *(v2 + 368);
    *(v2 + 448) = *(v2 + 352);
    *(v2 + 464) = v21;
    v22 = *(v2 + 304);
    *(v2 + 384) = *(v2 + 288);
    *(v2 + 400) = v22;
    v23 = v2 + 384;
  }

  else
  {
    *(v2 + 480) = *(v2 + 288);
    *(v2 + 496) = v4;
    v24 = *(v2 + 368);
    *(v2 + 544) = *(v2 + 352);
    *(v2 + 560) = v24;
    v25 = *(v2 + 336);
    v27 = *(v2 + 288);
    v26 = *(v2 + 304);
    *(v2 + 512) = *(v2 + 320);
    *(v2 + 528) = v25;
    v28 = v3[1];
    *(v2 + 192) = *v3;
    *(v2 + 208) = v28;
    v29 = v3[2];
    v30 = v3[3];
    v31 = v3[5];
    *(v2 + 256) = v3[4];
    *(v2 + 272) = v31;
    *(v2 + 224) = v29;
    *(v2 + 240) = v30;
    v32 = v3[5];
    v34 = v3[2];
    v33 = v3[3];
    *(v2 + 448) = v3[4];
    *(v2 + 464) = v32;
    *(v2 + 416) = v34;
    *(v2 + 432) = v33;
    v35 = v3[1];
    *(v2 + 384) = *v3;
    *(v2 + 400) = v35;
    *v3 = v27;
    v3[1] = v26;
    v36 = *(v2 + 320);
    v37 = *(v2 + 336);
    v38 = *(v2 + 368);
    v3[4] = *(v2 + 352);
    v3[5] = v38;
    v3[2] = v36;
    v3[3] = v37;
    sub_1A2214CF8(v2 + 192, v2 + 576, &qword_1EB088B18);
    sub_1A2214CF8(v2 + 480, v2 + 576, &qword_1EB088B18);
    sub_1A210D9B0(v2 + 384, &qword_1EB088B18);
    sub_1A211697C((v2 + 192));
    sub_1A210D9B0(v2 + 192, &qword_1EB088B18);
    v23 = v2 + 480;
  }

  sub_1A210D9B0(v23, &qword_1EB088B18);

  free(v2);
}

id sub_1A222A17C(double a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls11PackageView_scale;
  swift_beginAccess();
  *&v1[v3] = a1;
  [v1 invalidateIntrinsicContentSize];
  return [v1 setNeedsLayout];
}

id (*sub_1A222A1EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A222A250;
}

id sub_1A222A250(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    [v5 invalidateIntrinsicContentSize];

    return [v5 setNeedsLayout];
  }

  return result;
}

void (*sub_1A222A2B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls11PackageView_glyphTintColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1A222A354;
}

void sub_1A222A354(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if ((a2 & 1) == 0)
  {
    v7 = v2[4];
    v6 = v2[5];
    v8 = *(v7 + v6);
    *(v7 + v6) = v3;
    if (v3)
    {
      if (v8)
      {
        sub_1A2115288(0, &qword_1ED94E968);
        v5 = v3;
        v9 = v8;
        v10 = sub_1A22E6C88();

        if (v10)
        {

          goto LABEL_11;
        }
      }

      else
      {
        v5 = v3;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      v5 = 0;
    }

    sub_1A2127B8C();

    v5 = v8;
    goto LABEL_11;
  }

  v4 = v3;
  sub_1A21274F4(v3);
  v5 = v2[3];
LABEL_11:

LABEL_12:

  free(v2);
}

char *sub_1A222A448(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC13MediaControls11PackageView_asset];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *&v4[OBJC_IVAR____TtC13MediaControls11PackageView_scale] = 0x3FF0000000000000;
  *&v4[OBJC_IVAR____TtC13MediaControls11PackageView_glyphTintColor] = 0;
  v10 = OBJC_IVAR____TtC13MediaControls11PackageView_contentView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC13MediaControls11PackageView_autoAdvancingTask] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls11PackageView_stateController] = 0;
  *&v4[OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer] = 0;
  v11 = &v4[OBJC_IVAR____TtC13MediaControls11PackageView_currentState];
  *&v4[OBJC_IVAR____TtC13MediaControls11PackageView_currentState] = xmmword_1A2309D70;
  v12 = type metadata accessor for PackageView();
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 41) = 0u;
  v17.receiver = v4;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC13MediaControls11PackageView_contentView];
  v15 = v13;
  [v15 addSubview_];
  sub_1A2115288(0, &qword_1ED94EA40);
  sub_1A22E6B58();
  sub_1A22E6C48();

  swift_unknownObjectRelease();

  return v15;
}

double sub_1A222A5F0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1A2309D70;
  a1[1] = 0u;
  a1[2] = 0u;
  *(a1 + 41) = 0u;
  return result;
}

void *sub_1A222A710()
{
  result = *(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer);
  if (result)
  {
    v2 = [result size];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))(v2);
    return sub_1A22E6BF8();
  }

  return result;
}

void sub_1A222A79C()
{
  swift_getObjectType();
  v1 = &v0[OBJC_IVAR____TtC13MediaControls11PackageView_currentState];
  v2 = *&v0[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 16];
  v66[0] = *&v0[OBJC_IVAR____TtC13MediaControls11PackageView_currentState];
  v66[1] = v2;
  v67[0] = *&v0[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 32];
  *(v67 + 9) = *&v0[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 41];
  v3 = *&v0[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 16];
  if (*(&v66[0] + 1) == 1)
  {
    v63 = *v1;
    v64 = v3;
    v65[0] = *(v1 + 2);
    v4 = *(v1 + 41);
  }

  else
  {
    v60 = *v1;
    v61 = v3;
    v62[0] = *(v1 + 2);
    v5 = v62[0];
    *(v62 + 9) = *(v1 + 41);
    v42 = v60;
    v43 = v3;
    *v44 = v5;
    *&v44[9] = *(v62 + 9);
    sub_1A21174DC(&v42, &v55);
    sub_1A222ACA0(&v55);
    sub_1A210D9B0(v66, &qword_1EB088B58);
    v63 = v55;
    v64 = v56;
    v65[0] = *v57;
    v4 = *&v57[9];
  }

  *(v65 + 9) = v4;
  if (qword_1ED951250 != -1)
  {
    swift_once();
  }

  v6 = sub_1A22E6248();
  __swift_project_value_buffer(v6, qword_1ED951258);
  v7 = v0;
  sub_1A2214CF8(&v63, &v55, &qword_1EB088B58);
  v8 = sub_1A22E6238();
  v9 = sub_1A22E6A98();

  sub_1A210D9B0(&v63, &qword_1EB088B58);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v50[0] = v11;
    *v10 = 136315650;
    v12 = sub_1A22E7388();
    v14 = sub_1A2103450(v12, v13, v50);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    (*((*MEMORY[0x1E69E7D40] & *v7) + 0x90))(&v42, v15);
    if (*&v44[24])
    {
      *v57 = *v44;
      *&v57[16] = *&v44[16];
      v58 = v45;
      v59 = v46;
      v55 = v42;
      v56 = v43;
      v16 = sub_1A2126A68();
      v18 = v17;
      sub_1A210D9B0(&v42, &qword_1EB088B18);
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_1A2103450(v16, v18, v50);

    *(v10 + 14) = v19;
    *(v10 + 22) = 2080;
    v52 = v63;
    v53 = v64;
    v54[0] = v65[0];
    *(v54 + 9) = *(v65 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B58);
    v20 = sub_1A22E6638();
    v22 = sub_1A2103450(v20, v21, v50);

    *(v10 + 24) = v22;
    _os_log_impl(&dword_1A20FC000, v8, v9, "[%s] Advance for %s to %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v11, -1, -1);
    MEMORY[0x1A58DCD00](v10, -1, -1);
  }

  else
  {

    sub_1A210D9B0(&v63, &qword_1EB088B58);
  }

  v23 = *(v1 + 1);
  v40[0] = *v1;
  v40[1] = v23;
  v41[0] = *(v1 + 2);
  *(v41 + 9) = *(v1 + 41);
  if (*(&v40[0] + 1) != 1)
  {
    v24 = *(v1 + 1);
    v35[0] = *v1;
    v35[1] = v24;
    v36[0] = *(v1 + 2);
    v25 = v36[0];
    *(v36 + 9) = *(v1 + 41);
    v52 = v35[0];
    v53 = v24;
    v54[0] = v25;
    *(v54 + 9) = *(v36 + 9);
    sub_1A21174DC(v35, v50);
    sub_1A222ACA0(&v47);
    v37 = v47;
    v38 = v48;
    v39[0] = v49[0];
    *(v39 + 9) = *(v49 + 9);
    sub_1A210D9B0(v40, &qword_1EB088B58);
    if (*(&v47 + 1) != 1)
    {
      v50[0] = v47;
      v26 = v47;
      v27 = v48;
      v50[1] = v48;
      v51[0] = v49[0];
      *(v51 + 9) = *(v49 + 9);
      v28 = *(v1 + 1);
      v31[0] = *v1;
      v31[1] = v28;
      v32[0] = *(v1 + 2);
      *(v32 + 9) = *(v1 + 41);
      v29 = v49[0];
      *(v1 + 41) = *(v49 + 9);
      *(v1 + 1) = v27;
      *(v1 + 2) = v29;
      *v1 = v26;
      *(v34 + 9) = *(v39 + 9);
      v33[1] = v38;
      v34[0] = v39[0];
      v33[0] = v37;
      sub_1A21174DC(v33, &v30);
      sub_1A210D9B0(v31, &qword_1EB088B58);
      sub_1A212530C(v50, 1);
      sub_1A210D9B0(&v47, &qword_1EB088B58);
    }
  }
}

uint64_t sub_1A222ACA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v28 = *(v1 + 56);
  v4 = *(v1 + 40);
  v27[0] = v3;
  v27[1] = v4;
  if ((v28 & 1) == 0)
  {
    v17 = 0;
    v18 = 0;
    v14 = xmmword_1A2309D70;
    v15 = 0uLL;
    v16 = 0uLL;
    goto LABEL_7;
  }

  v5 = *(v1 + 16);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(*&v27[0] + 16);
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v7 % v8;
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = *&v27[0] + 32 * v9;
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    v24 = *(v1 + 24);
    v25 = *(v1 + 40);
    v26 = *(v1 + 56);
    *&v20 = v11;
    *(&v20 + 1) = v12;
    *v21 = v9;
    *&v21[8] = v24;
    *&v21[24] = v25;
    v22 = v26;
    v23[0] = v11;
    v23[1] = v12;
    v23[2] = v9;
    sub_1A222D560(v27, v19);

    sub_1A21174DC(&v20, v19);
    result = sub_1A2117514(v23);
    v14 = v20;
    v15 = *v21;
    v16 = *&v21[16];
    v17 = *&v21[32];
    v18 = v22;
LABEL_7:
    *a1 = v14;
    *(a1 + 16) = v15;
    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
    *(a1 + 56) = v18;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1A222ADBC()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v34 = &v30 - v3;
  v4 = MEMORY[0x1E69E7D40];
  v33 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  v33(&v42, v2);
  v5 = v45;
  if (v47)
  {
    v36[0] = v42;
    v36[1] = v43;
    v37 = v44;
    v38 = v45;
    *v39 = *v46;
    *&v39[7] = *&v46[7];
    *&v39[15] = v47;
    v40 = v48;
    v41 = v49;
    v6 = *(&v42 + 1);
    sub_1A2116640();
    v7 = sub_1A210D9B0(v36, &qword_1EB088B18);
    if (v5)
    {
      v31 = v6;
      (*((*v4 & *v0) + 0xD8))(v7);
      if (qword_1ED951250 != -1)
      {
        swift_once();
      }

      v8 = sub_1A22E6248();
      __swift_project_value_buffer(v8, qword_1ED951258);
      v9 = v0;
      v10 = sub_1A22E6238();
      v11 = sub_1A22E6A98();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v35 = v13;
        *v12 = 136315394;
        v14 = sub_1A22E7388();
        v16 = sub_1A2103450(v14, v15, &v35);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v33(v50, v17);
        if (*(&v51 + 1))
        {
          *v56 = v50[2];
          *&v56[16] = v51;
          v57 = v52;
          v58 = v53;
          v54 = v50[0];
          v55 = v50[1];
          v18 = sub_1A2126A68();
          v20 = v19;
          sub_1A210D9B0(v50, &qword_1EB088B18);
        }

        else
        {
          v20 = 0xE300000000000000;
          v18 = 7104878;
        }

        v22 = sub_1A2103450(v18, v20, &v35);

        *(v12 + 14) = v22;
        _os_log_impl(&dword_1A20FC000, v10, v11, "[%s] Start advancing task for %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1A58DCD00](v13, -1, -1);
        MEMORY[0x1A58DCD00](v12, -1, -1);
      }

      v23 = sub_1A22E6848();
      v24 = v34;
      (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1A22E6828();

      v26 = sub_1A22E6818();
      v27 = swift_allocObject();
      v28 = MEMORY[0x1E69E85E0];
      v27[2] = v26;
      v27[3] = v28;
      v29 = v31;
      v27[4] = v25;
      v27[5] = v29;

      *(v9 + OBJC_IVAR____TtC13MediaControls11PackageView_autoAdvancingTask) = sub_1A222B5A0(0, 0, v24, &unk_1A2309D98, v27);
    }

    else
    {
      return sub_1A222D5BC();
    }
  }

  else
  {
    v54 = v42;
    v55 = v43;
    *v56 = v44;
    v56[8] = v45;
    *&v56[9] = *v46;
    *&v56[16] = *&v46[7];
    *&v56[24] = 0;
    v57 = v48;
    v58 = v49;
    return sub_1A210D9B0(&v54, &qword_1EB088B18);
  }
}

uint64_t sub_1A222B270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1A22E6828();
  v5[7] = sub_1A22E6818();
  v7 = sub_1A22E6808();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A222B308, v7, v6);
}

uint64_t sub_1A222B308()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1A222B400;
    v3 = v0[6];

    return sub_1A222C23C(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A222B400()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1A222B540, v4, v3);
}

uint64_t sub_1A222B540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A222B5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1A2214CF8(a3, v25 - v10, &qword_1EB088B60);
  v12 = sub_1A22E6848();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1A210D9B0(v11, &qword_1EB088B60);
  }

  else
  {
    sub_1A22E6838();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1A22E6808();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1A22E6648() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1A210D9B0(a3, &qword_1EB088B60);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1A210D9B0(a3, &qword_1EB088B60);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1A222B8A0()
{
  swift_getObjectType();
  if (qword_1ED951250 != -1)
  {
    swift_once();
  }

  v1 = sub_1A22E6248();
  __swift_project_value_buffer(v1, qword_1ED951258);
  v2 = v0;
  v3 = sub_1A22E6238();
  v4 = sub_1A22E6A98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    v7 = sub_1A22E7388();
    v9 = sub_1A2103450(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x90))(v16, v10);
    if (*(&v17 + 1))
    {
      v22 = v16[2];
      v23 = v17;
      v24 = v18;
      v25 = v19;
      v20 = v16[0];
      v21 = v16[1];
      v11 = sub_1A2126A68();
      v13 = v12;
      sub_1A210D9B0(v16, &qword_1EB088B18);
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_1A2103450(v11, v13, &v15);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_1A20FC000, v3, v4, "[%s] End advancing task for %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v6, -1, -1);
    MEMORY[0x1A58DCD00](v5, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC13MediaControls11PackageView_autoAdvancingTask))
  {

    sub_1A22E68B8();
  }
}

void sub_1A222BB18()
{
  v1 = v0;
  swift_getObjectType();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x90))(&v45);
  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v57 = v45;
  v58 = v46;
  if (!*(&v48 + 1))
  {
    goto LABEL_11;
  }

  *v51 = v45;
  *&v51[16] = v46;
  *&v51[32] = v47;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  v2 = sub_1A2278DC0();
  if (!v2)
  {
LABEL_10:
    sub_1A210D9B0(&v45, &qword_1EB088B18);
LABEL_11:
    v27 = *&v0[OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer];
    *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer] = 0;
    [v27 removeFromSuperlayer];
    [v1 invalidateIntrinsicContentSize];

    return;
  }

  v3 = v2;
  v4 = [v2 rootLayer];
  if (!v4)
  {

    goto LABEL_10;
  }

  v5 = v4;
  if (qword_1ED951250 != -1)
  {
    swift_once();
  }

  v6 = sub_1A22E6248();
  __swift_project_value_buffer(v6, qword_1ED951258);
  v44[2] = v59;
  v44[3] = v60;
  v44[4] = v61;
  v44[5] = v62;
  v44[0] = v57;
  v44[1] = v58;
  sub_1A2116FC8(v44, &v39);
  v7 = sub_1A22E6238();
  v8 = sub_1A22E6A98();
  sub_1A210D9B0(&v45, &qword_1EB088B18);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v55[0] = v10;
    *v9 = 136315394;
    v11 = sub_1A22E7388();
    v13 = sub_1A2103450(v11, v12, v55);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v30 = *&v51[32];
    v31 = v52;
    v32 = v53;
    v33 = v54;
    v28 = *v51;
    v29 = *&v51[16];
    v34 = v57;
    v35 = v58;
    v37 = v61;
    v38 = v62;
    *v36 = v59;
    *&v36[16] = v60;
    sub_1A2116FC8(&v34, &v39);
    sub_1A222D854();
    v14 = sub_1A22E71D8();
    v16 = v15;
    *v41 = v30;
    *&v41[16] = v31;
    v42 = v32;
    v43 = v33;
    v39 = v28;
    v40 = v29;
    sub_1A21252B8(&v39);
    v17 = sub_1A2103450(v14, v16, v55);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1A20FC000, v7, v8, "[%s] Updating package to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v10, -1, -1);
    MEMORY[0x1A58DCD00](v9, -1, -1);
  }

  v18 = *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer];
  *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer] = v5;
  v19 = v5;
  [v18 removeFromSuperlayer];
  [v1 invalidateIntrinsicContentSize];

  [v19 setGeometryFlipped_];
  v20 = *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_contentView];
  v21 = [v20 layer];
  [v21 addSublayer_];

  [v19 bounds];
  [v20 setBounds_];
  v22 = [objc_allocWithZone(MEMORY[0x1E69794D0]) initWithLayer_];

  v23 = *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_stateController];
  *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_stateController] = v22;

  v55[0] = *&v51[8];
  v55[1] = *&v51[24];
  v56 = v51[40];
  sub_1A222D560(v55, &v39);
  sub_1A2117098(v55, &v39);
  LOBYTE(v22) = v51[42];
  v24 = &v1[OBJC_IVAR____TtC13MediaControls11PackageView_currentState];
  v25 = *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 16];
  v34 = *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_currentState];
  v35 = v25;
  *v36 = *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 32];
  *&v36[9] = *&v1[OBJC_IVAR____TtC13MediaControls11PackageView_currentState + 41];
  v26 = v40;
  *v24 = v39;
  *(v24 + 1) = v26;
  *(v24 + 2) = *v41;
  *(v24 + 41) = *&v41[9];
  sub_1A21174DC(&v39, &v28);
  sub_1A210D9B0(&v34, &qword_1EB088B58);
  sub_1A212530C(&v39, v22);
  sub_1A2117514(&v39);
  [v1 setNeedsLayout];

  sub_1A210D9B0(&v45, &qword_1EB088B18);
  sub_1A2127B8C();
}

uint64_t sub_1A222C23C(uint64_t a1)
{
  v2[63] = a1;
  v2[64] = v1;
  v2[65] = swift_getObjectType();
  v3 = sub_1A22E6F98();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v4 = sub_1A22E6FA8();
  v2[70] = v4;
  v2[71] = *(v4 - 8);
  v2[72] = swift_task_alloc();
  sub_1A22E6828();
  v2[73] = sub_1A22E6818();
  v6 = sub_1A22E6808();
  v2[74] = v6;
  v2[75] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A222C3A8, v6, v5);
}

uint64_t sub_1A222C3A8()
{
  v40 = v2;
  *(v2 + 608) = OBJC_IVAR____TtC13MediaControls11PackageView_currentState;
  if ((sub_1A22E68C8() & 1) == 0)
  {
    v3 = *(v2 + 512) + *(v2 + 608);
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    v6 = *(v3 + 24);
    *(v2 + 616) = v6;
    v7 = *(v3 + 32);
    *(v2 + 624) = v7;
    v8 = *(v3 + 40);
    *(v2 + 632) = v8;
    v9 = *(v3 + 48);
    *(v2 + 640) = v9;
    if (v5 != 1 && (*(v3 + 56) & 1) != 0)
    {
      v10 = __OFADD__(v4, 1);
      v11 = v4 + 1;
      *(v2 + 648) = v11;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        v12 = *(v6 + 16);
        *(v2 + 656) = v12;
        if (v12)
        {
          v13 = v11 % v12;
          if ((v13 & 0x8000000000000000) == 0)
          {
            v14 = v6 + 32 * v13;
            v15 = *(v14 + 32);
            *(v2 + 664) = v15;
            v16 = *(v14 + 40);
            *(v2 + 672) = v16;
            *(v2 + 16) = v15;
            *(v2 + 24) = v16;
            *(v2 + 32) = v13;
            *&v17 = v6;
            *(&v17 + 1) = v7;
            *&v18 = v8;
            *(&v18 + 1) = v9;
            *(v2 + 56) = v18;
            *(v2 + 40) = v17;
            *(v2 + 72) = 257;
            *(v2 + 80) = v15;
            *(v2 + 88) = v16;
            *(v2 + 96) = v13;
            *(v2 + 120) = v18;
            *(v2 + 104) = v17;
            *(v2 + 136) = 1;
            sub_1A2116640();

            sub_1A21174DC(v2 + 16, v2 + 144);
            sub_1A2117514(v2 + 80);
            v19 = *(v2 + 32);
            if ((v19 & 0x8000000000000000) == 0)
            {
              v20 = *(v2 + 504);
              if (v19 < *(v20 + 16))
              {
                v21 = v20 + 32 * v19;
                v0 = *(v21 + 48);
                v1 = *(v21 + 56);
                if (qword_1ED951250 == -1)
                {
LABEL_10:
                  v22 = sub_1A22E6248();
                  __swift_project_value_buffer(v22, qword_1ED951258);
                  sub_1A21174DC(v2 + 16, v2 + 208);
                  v23 = sub_1A22E6238();
                  v24 = sub_1A22E6A98();
                  sub_1A2117514(v2 + 16);
                  if (os_log_type_enabled(v23, v24))
                  {
                    v25 = swift_slowAlloc();
                    v26 = swift_slowAlloc();
                    v39 = v26;
                    *v25 = 136315650;
                    v27 = sub_1A22E7388();
                    v29 = sub_1A2103450(v27, v28, &v39);

                    *(v25 + 4) = v29;
                    *(v25 + 12) = 2080;
                    sub_1A21174DC(v2 + 16, v2 + 400);
                    v30 = sub_1A21268F4();
                    v32 = v31;
                    sub_1A2117514(v2 + 16);
                    v33 = sub_1A2103450(v30, v32, &v39);

                    *(v25 + 14) = v33;
                    *(v25 + 22) = 2080;
                    v34 = sub_1A22E7328();
                    v36 = sub_1A2103450(v34, v35, &v39);

                    *(v25 + 24) = v36;
                    _os_log_impl(&dword_1A20FC000, v23, v24, "[%s] Preparing to advance to %s in %s", v25, 0x20u);
                    swift_arrayDestroy();
                    MEMORY[0x1A58DCD00](v26, -1, -1);
                    MEMORY[0x1A58DCD00](v25, -1, -1);
                  }

                  sub_1A22E7238();
                  *(v2 + 488) = v0;
                  *(v2 + 496) = v1;
                  *(v2 + 464) = 0;
                  *(v2 + 472) = 0;
                  *(v2 + 480) = 1;

                  return MEMORY[0x1EEE6DFA0](sub_1A222C780, 0, 0);
                }

LABEL_23:
                swift_once();
                goto LABEL_10;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v37 = *(v2 + 8);

  return v37();
}

uint64_t sub_1A222C780()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = sub_1A2117394(&qword_1ED94E920, MEMORY[0x1E69E8820]);
  sub_1A22E7218();
  sub_1A2117394(&qword_1ED94E928, MEMORY[0x1E69E87E8]);
  sub_1A22E6FB8();
  v5 = *(v2 + 8);
  v0[85] = v5;
  v0[86] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[87] = v6;
  *v6 = v0;
  v6[1] = sub_1A222C914;
  v7 = v0[70];
  v8 = v0[69];

  return MEMORY[0x1EEE6DE58](v8, v0 + 58, v7, v4);
}

uint64_t sub_1A222C914()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[85];
    v4 = v2[69];
    v5 = v2[66];

    v3(v4, v5);
    v6 = sub_1A222CF24;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = v2[72];
    v10 = v2[71];
    v11 = v2[70];
    (v2[85])(v2[69], v2[66]);
    (*(v10 + 8))(v9, v11);
    v8 = v2[75];
    v7 = v2[74];
    v6 = sub_1A222CA9C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1A222CA9C()
{
  v51 = v1;
  if (sub_1A22E68C8())
  {

    sub_1A2117514(v1 + 16);
LABEL_18:

    v48 = *(v1 + 8);

    return v48();
  }

  v2 = v1 + 272;
  v3 = *(v1 + 73);
  v4 = *(v1 + 672);
  v5 = *(v1 + 664);
  v6 = *(v1 + 656);
  v7 = *(v1 + 648);
  v8 = (*(v1 + 512) + *(v1 + 608));
  v9 = *(v1 + 616);
  v10 = *(v1 + 632);
  v12 = v8[1];
  v11 = v8[2];
  v13 = *v8;
  *(v1 + 313) = *(v8 + 41);
  *(v1 + 288) = v12;
  *(v1 + 304) = v11;
  *(v1 + 272) = v13;
  *v8 = v5;
  *(v8 + 1) = v4;
  *(v8 + 2) = v7 % v6;
  *(v8 + 24) = v9;
  *(v8 + 40) = v10;
  *(v8 + 56) = v3;
  sub_1A21174DC(v1 + 16, v1 + 336);
  sub_1A210D9B0(v1 + 272, &qword_1EB088B58);
  sub_1A212530C(v1 + 16, 1);
  sub_1A2117514(v1 + 16);
  if ((sub_1A22E68C8() & 1) != 0 || (v14 = *(v1 + 512) + *(v1 + 608), v16 = *(v14 + 8), v15 = *(v14 + 16), v17 = *(v14 + 24), *(v1 + 616) = v17, v18 = *(v14 + 32), *(v1 + 624) = v18, v19 = *(v14 + 40), *(v1 + 632) = v19, v20 = *(v14 + 48), *(v1 + 640) = v20, v16 == 1) || (*(v14 + 56) & 1) == 0)
  {

    goto LABEL_18;
  }

  v21 = __OFADD__(v15, 1);
  v22 = v15 + 1;
  *(v1 + 648) = v22;
  if (v21)
  {
    __break(1u);
    goto LABEL_22;
  }

  v23 = *(v17 + 16);
  *(v1 + 656) = v23;
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = v22 % v23;
  if (v24 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v25 = v17 + 32 * v24;
  v26 = *(v25 + 32);
  *(v1 + 664) = v26;
  v27 = *(v25 + 40);
  *(v1 + 672) = v27;
  *(v1 + 16) = v26;
  *(v1 + 24) = v27;
  *(v1 + 32) = v24;
  *&v28 = v17;
  *(&v28 + 1) = v18;
  *&v29 = v19;
  *(&v29 + 1) = v20;
  *(v1 + 56) = v29;
  *(v1 + 40) = v28;
  *(v1 + 72) = 257;
  *(v1 + 80) = v26;
  *(v1 + 88) = v27;
  *(v1 + 96) = v24;
  *(v1 + 120) = v29;
  *(v1 + 104) = v28;
  *(v1 + 136) = 1;
  sub_1A2116640();

  sub_1A21174DC(v1 + 16, v1 + 144);
  sub_1A2117514(v1 + 80);
  v30 = *(v1 + 32);
  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = *(v1 + 504);
  if (v30 >= *(v31 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31 + 32 * v30;
  v2 = *(v32 + 48);
  v0 = *(v32 + 56);
  if (qword_1ED951250 != -1)
  {
LABEL_26:
    swift_once();
  }

  v33 = sub_1A22E6248();
  __swift_project_value_buffer(v33, qword_1ED951258);
  sub_1A21174DC(v1 + 16, v1 + 208);
  v34 = sub_1A22E6238();
  v35 = sub_1A22E6A98();
  sub_1A2117514(v1 + 16);
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v50 = v37;
    *v36 = 136315650;
    v38 = sub_1A22E7388();
    v40 = sub_1A2103450(v38, v39, &v50);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    sub_1A21174DC(v1 + 16, v1 + 400);
    v41 = sub_1A21268F4();
    v43 = v42;
    sub_1A2117514(v1 + 16);
    v44 = sub_1A2103450(v41, v43, &v50);

    *(v36 + 14) = v44;
    *(v36 + 22) = 2080;
    v45 = sub_1A22E7328();
    v47 = sub_1A2103450(v45, v46, &v50);

    *(v36 + 24) = v47;
    _os_log_impl(&dword_1A20FC000, v34, v35, "[%s] Preparing to advance to %s in %s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1A58DCD00](v37, -1, -1);
    MEMORY[0x1A58DCD00](v36, -1, -1);
  }

  sub_1A22E7238();
  *(v1 + 488) = v2;
  *(v1 + 496) = v0;
  *(v1 + 464) = 0;
  *(v1 + 472) = 0;
  *(v1 + 480) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1A222C780, 0, 0);
}

uint64_t sub_1A222CF24()
{
  (*(v0[71] + 8))(v0[72], v0[70]);
  v1 = v0[75];
  v2 = v0[74];

  return MEMORY[0x1EEE6DFA0](sub_1A222DB80, v2, v1);
}

id sub_1A222CFA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PackageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A222D0DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1A22E71E8();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else if (v3)
  {
LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_12;
  }

  v9 = *(a1 + 40);
  v15[0] = *(a1 + 24);
  v15[1] = v9;
  v16 = *(a1 + 56);
  v10 = *(a2 + 40);
  v13[0] = *(a2 + 24);
  v13[1] = v10;
  v14 = *(a2 + 56);
  v11 = sub_1A2117D6C(v15, v13);
  return v11 & 1;
}

uint64_t sub_1A222D1A4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 5);
  v15[0] = *(a1 + 3);
  v15[1] = v7;
  v16 = *(a1 + 56);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v18 = *(a2 + 56);
  v11 = *(a2 + 5);
  v17[0] = *(a2 + 3);
  v17[1] = v11;
  if (!v5)
  {
    v12 = 0;
    if (v9)
    {
      return v12 & 1;
    }

    goto LABEL_10;
  }

  if (v9)
  {
    if (v4 == v8 && v5 == v9)
    {
      if (v6 != v10)
      {
        goto LABEL_6;
      }

LABEL_11:
      v12 = sub_1A2117D6C(v15, v17);
      return v12 & 1;
    }

    v13 = sub_1A22E71E8();
    v12 = 0;
    if ((v13 & 1) == 0)
    {
      return v12 & 1;
    }

LABEL_10:
    if (v6 != v10)
    {
      return v12 & 1;
    }

    goto LABEL_11;
  }

LABEL_6:
  v12 = 0;
  return v12 & 1;
}

uint64_t sub_1A222D26C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A222D364;

  return v6(a1);
}

uint64_t sub_1A222D364()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1A222D45C()
{
  v1 = (v0 + OBJC_IVAR____TtC13MediaControls11PackageView_asset);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v1[4] = 0u;
  v1[5] = 0u;
  *(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_scale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_glyphTintColor) = 0;
  v2 = OBJC_IVAR____TtC13MediaControls11PackageView_contentView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_autoAdvancingTask) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_stateController) = 0;
  *(v0 + OBJC_IVAR____TtC13MediaControls11PackageView_packageLayer) = 0;
  v3 = (v0 + OBJC_IVAR____TtC13MediaControls11PackageView_currentState);
  *v3 = xmmword_1A2309D70;
  v3[1] = 0u;
  v3[2] = 0u;
  *(v3 + 41) = 0u;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A222D5C8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A222D660;

  return sub_1A222B270(v4, v5, v6, v2, v3);
}

uint64_t sub_1A222D660()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A222D754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
    sub_1A222D5BC();
  }

  return result;
}

uint64_t sub_1A222D7CC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {

    return sub_1A222D5BC();
  }

  return result;
}

unint64_t sub_1A222D854()
{
  result = qword_1ED94FD40;
  if (!qword_1ED94FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED94FD40);
  }

  return result;
}

uint64_t sub_1A222D8A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A222DB84;

  return sub_1A222D26C(a1, v4);
}

uint64_t sub_1A222D960(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A222D660;

  return sub_1A222D26C(a1, v4);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double sub_1A222DA7C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

unint64_t sub_1A222DA9C()
{
  result = qword_1ED94FD50[0];
  if (!qword_1ED94FD50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED94FD50);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1A222DB14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A222DB34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

__n128 sub_1A222DB88()
{
  v0 = *(MEMORY[0x1E69792E8] + 80);
  xmmword_1ED952E58 = *(MEMORY[0x1E69792E8] + 64);
  unk_1ED952E68 = v0;
  v1 = *(MEMORY[0x1E69792E8] + 112);
  xmmword_1ED952E78 = *(MEMORY[0x1E69792E8] + 96);
  unk_1ED952E88 = v1;
  v2 = *(MEMORY[0x1E69792E8] + 16);
  xmmword_1ED952E18 = *MEMORY[0x1E69792E8];
  unk_1ED952E28 = v2;
  result = *(MEMORY[0x1E69792E8] + 32);
  v4 = *(MEMORY[0x1E69792E8] + 48);
  xmmword_1ED952E38 = result;
  unk_1ED952E48 = v4;
  return result;
}

double sub_1A222DBBC@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED951190 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1ED952E68;
  a1[4] = xmmword_1ED952E58;
  a1[5] = v1;
  v2 = unk_1ED952E88;
  a1[6] = xmmword_1ED952E78;
  a1[7] = v2;
  v3 = unk_1ED952E28;
  *a1 = xmmword_1ED952E18;
  a1[1] = v3;
  result = *&xmmword_1ED952E38;
  v5 = unk_1ED952E48;
  a1[2] = xmmword_1ED952E38;
  a1[3] = v5;
  return result;
}

id sub_1A222DC40()
{
  type metadata accessor for MediaSuggesionAssetCache();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B68);
  *(v0 + 16) = sub_1A22CE154();
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  *(v0 + 24) = result;
  qword_1ED9535F8 = v0;
  return result;
}

uint64_t sub_1A222DCB4()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B68);
  *(v0 + 16) = sub_1A22CE154();
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  return v0;
}

uint64_t *sub_1A222DD24()
{
  if (qword_1ED9524A0 != -1)
  {
    swift_once();
  }

  return &qword_1ED9535F8;
}

uint64_t sub_1A222DD74()
{
  if (qword_1ED9524A0 != -1)
  {
    swift_once();
  }
}

id sub_1A222DE08()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695DEE0]);

  return [v0 init];
}

uint64_t sub_1A222DE40(uint64_t a1, uint64_t a2)
{
  v5 = *(**(v2 + 16) + 120);

  v7 = v5(v6);

  v8 = *(v7 + 16) + 1;
  v9 = 32;
  while (--v8)
  {
    v10 = *(v7 + v9);
    v9 += 16;
    if (v10 == a1)
    {
    }
  }

  v12 = *(**(v2 + 16) + 136);

  v13 = v12(v21);
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1A222E6CC(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1A222E6CC((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  v20 = &v16[2 * v19];
  v20[4] = a1;
  v20[5] = a2;
  swift_unknownObjectRetain();
  v13(v21, 0);
}

uint64_t sub_1A222DFFC(uint64_t a1)
{
  v3 = *(**(v1 + 16) + 136);
  swift_unknownObjectRetain();

  v4 = v3(v10);
  v6 = v5;
  v7 = sub_1A222E814(v5, a1);
  result = swift_unknownObjectRelease();
  v9 = *(*v6 + 16);
  if (v9 < v7)
  {
    __break(1u);
  }

  else
  {
    sub_1A222EA54(v7, v9);
    v4(v10, 0);
  }

  return result;
}

id sub_1A222E0E0(void *a1)
{
  v2 = v1;
  result = [a1 identifier];
  if (result)
  {
    v5 = result;
    sub_1A22E65C8();

    v20 = sub_1A22E66F8();
    v21 = v6;
    sub_1A22E6688();
    v7 = sub_1A22E6598();

    v8 = *(v1 + 24);
    v9 = [*(v2 + 24) objectForKey_];
    if (v9)
    {
      v10 = v9;

      return v10;
    }

    v11 = [a1 artwork];
    if (v11 && (v12 = v11, v13 = [v11 imageData], v12, v13))
    {
      v14 = sub_1A22E5558();
      v16 = v15;

      v17 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1A222EB14(v14, v16);
      v18 = sub_1A22E5538();
      v19 = [v17 initWithData_];

      sub_1A2228B6C(v14, v16);
      if (v19)
      {
        [v8 setObject:v19 forKey:v7];
        sub_1A2228B6C(v14, v16);

        return v19;
      }

      sub_1A2228B6C(v14, v16);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id sub_1A222E2E8(void *a1, uint64_t a2)
{
  v3 = v2;
  result = [a1 bundleID];
  if (result)
  {
    v7 = result;
    sub_1A22E65C8();

    v21 = 0;
    v22 = 0xE000000000000000;
    MEMORY[0x1A58DA8D0](0x2D6E6F63692ELL, 0xE600000000000000);
    type metadata accessor for IFAppearance();
    sub_1A22E6FC8();
    v27 = sub_1A22E66F8();
    v28 = v8;
    sub_1A22E6688();

    v9 = sub_1A22E6598();

    v10 = [*(v3 + 24) objectForKey_];
    if (v10)
    {
      v11 = v10;

      return v11;
    }

    else
    {
      v12 = [a1 bundleID];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1A22E65C8();
        v16 = v15;
        v17 = [objc_opt_self() sharedAssetsProvider];
        v18 = swift_allocObject();
        v18[2] = v3;
        v18[3] = v9;
        v18[4] = v14;
        v18[5] = v16;
        v18[6] = a2;
        v25 = sub_1A222EBB8;
        v26 = v18;
        v21 = MEMORY[0x1E69E9820];
        v22 = 1107296256;
        v23 = sub_1A222E56C;
        v24 = &block_descriptor_1;
        v19 = _Block_copy(&v21);

        v20 = v9;

        [v17 applicationIconForBundleIdentifier:v13 appearance:a2 completion:v19];

        _Block_release(v19);
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

void sub_1A222E56C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1A222E5D8()
{

  return v0;
}

uint64_t sub_1A222E600()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1A222E640()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B68);
  *(v0 + 16) = sub_1A22CE154();
  *(v0 + 24) = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  return v0;
}

void *sub_1A222E6CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B80);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A222E814(uint64_t result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v12 = *(v3 + v10);
          v11 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_1A222E800(v3);
          }

          *&v3[2 * v7 + 4] = v12;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          *(v3 + v10) = v11;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1A222E984(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088B78);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1A222EA54(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A222E6CC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A222E984(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A222EB14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void type metadata accessor for IFAppearance()
{
  if (!qword_1EB088B70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB088B70);
    }
  }
}

uint64_t sub_1A222EBB8(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v16 = v1[5];
  v17 = v1[4];
  v15 = v1[6];
  if (a1)
  {
    [*(v4 + 24) setObject:a1 forKey:v3];
  }

  else
  {
    [*(v4 + 24) removeObjectForKey_];
  }

  v5 = *(**(v4 + 16) + 120);

  v7 = v5(v6);

  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = (v7 + 40);
    while (v10 < *(v7 + 16))
    {
      ++v10;
      v12 = *v11;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);
      swift_unknownObjectRetain();
      v14(a1, v17, v16, v15, ObjectType, v12);
      result = swift_unknownObjectRelease();
      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
  }

  return result;
}

uint64_t sub_1A222EDBC(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A222EE28(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2209C9C;
}

id sub_1A222EFE0(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_1A222F064@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void (*sub_1A222F0D0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_viewModel;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_1A2214CF8(v1 + v9, v8, &qword_1EB088820);
  return sub_1A222F200;
}

void sub_1A222F200(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_1A2214CF8(*(*a1 + 96), v6, &qword_1EB088820);
    sub_1A2214CF8(v7 + v4, v5, &qword_1EB088820);
    swift_beginAccess();
    sub_1A212AC04(v6, v7 + v4);
    swift_endAccess();
    sub_1A2117FEC(v5);
    sub_1A210D9B0(v5, &qword_1EB088820);
  }

  else
  {
    sub_1A2214CF8(v7 + v4, v6, &qword_1EB088820);
    swift_beginAccess();
    sub_1A212AC04(v3, v7 + v4);
    swift_endAccess();
    sub_1A2117FEC(v6);
  }

  sub_1A210D9B0(v6, &qword_1EB088820);
  sub_1A210D9B0(v3, &qword_1EB088820);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_1A222F36C()
{
  v1 = v0;
  v2 = *(*(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl) + OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView);
  v3 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xB0);
  v7 = v4;
  v8 = v2;
  v9 = v6(v18);
  v11 = *(v10 + 16);
  *(v10 + 16) = v4;

  v9(v18, 0);
  v12 = *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
  v13 = (*((*v5 & *v1) + 0x160))();
  if (v13 >= 3)
  {
    if (v13 == 8)
    {
      v15 = (*((*v5 & *v1) + 0x118))();
      v16 = v15;
      if (v15)
      {
      }

      v14 = v16 != 0;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 3;
  }

  return (*((*v5 & *v12) + 0xB8))(v14);
}

void *sub_1A222F548()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*sub_1A222F5B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A222F618;
}

uint64_t sub_1A222F680(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_sessionInteractor);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1A222F740()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_moduleLayout;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A222F784(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_moduleLayout;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A222F834()
{
  v1 = v0;
  v2 = sub_1A22316E4();
  v3 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x160))(v2);
  if (v5 >= 3)
  {
    if (v5 == 8)
    {
      v7 = (*((*v4 & *v0) + 0x118))();
      v8 = v7;
      if (v7)
      {
      }

      v6 = v8 != 0;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 3;
  }

  v9 = (*((*v4 & *v3) + 0xB8))(v6);
  (*((*v4 & *v1) + 0x1C0))(v9);

  return sub_1A21194E8();
}

id sub_1A222F99C(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1A222F834();
}

uint64_t (*sub_1A222F9F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A222FA54;
}

uint64_t sub_1A222FA6C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
  swift_beginAccess();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);

  v4(v5);
  v6 = *((*v3 & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView)) + 0xE8);

  v6(v7);
  v8 = *((*v3 & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView)) + 0x118);

  v8(v9);
  v10 = *((*v3 & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView)) + 0x108);

  v10(v11);
  v12 = *((*v3 & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView)) + 0xE0);

  v12(v13);
  v14 = *((*v3 & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton)) + 0xB8);

  v14(v15);
  v16 = *((*v3 & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton)) + 0xB8);

  return v16(v17);
}

uint64_t sub_1A222FCF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_visualStylingProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1A222FA6C();
}

uint64_t (*sub_1A222FD68(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A222FDCC;
}

id sub_1A222FDE4()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_contentMetrics;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v2 = [v2 metricsScaleFactor];
    v4 = v3;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **&v0[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView]) + 0x100))(v2, v4);
  v6 = *&v0[v1];
  v7 = *((*v5 & **&v0[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton]) + 0xD0);
  v8 = v6;
  v7(v6);
  v9 = *&v0[v1];
  v10 = *((*v5 & **&v0[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton]) + 0xD0);
  v11 = v9;
  v12 = v10(v9);
  v13 = (*((*v5 & **&v0[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView]) + 0x100))(v12, v4);
  v14 = (*((*v5 & **&v0[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView]) + 0xF0))(v13, v4);
  (*((*v5 & **&v0[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView]) + 0x110))(v14, v4);
  return [v0 setNeedsLayout];
}

void sub_1A2230048(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;

  a3();
}

uint64_t (*sub_1A22300BC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A2230120;
}

uint64_t sub_1A2230138()
{
  v1 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_onScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A223017C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_onScreen;
  result = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v6 != v3)
  {
    v7 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView)) + 0x118))(v3);
    v8 = (*((*v7 & **(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView)) + 0x110))(*(v1 + v4));
    return (*((*v7 & *v1) + 0x1C0))(v8);
  }

  return result;
}

void (*sub_1A22302C4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_onScreen;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A2230358;
}

void sub_1A2230358(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    v6 = v1[3];
    v7 = v1[4];
    v8 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & **(v6 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView)) + 0x118))();
    v9 = (*((*v8 & **(v6 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView)) + 0x110))(*(v6 + v7));
    (*((*v8 & *v6) + 0x1C0))(v9);
  }

  free(v1);
}

uint64_t sub_1A2230494()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1A8);
  if (v3())
  {
    v4 = (*((*v2 & *v0) + 0x160))();
    v5 = sub_1A229DB18(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = (*((*v2 & *v1) + 0x178))(v5 & 1);
  v7 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
  if ((v3)(v6))
  {
    v8 = (*((*v2 & *v0) + 0x160))();
    v9 = sub_1A229DB50(v8);
  }

  else
  {
    v9 = 0;
  }

  return (*((*v2 & *v7) + 0xF8))(v9 & 1);
}

id sub_1A2230628(char a1)
{
  v3 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_isResizing;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_1A21194E8();
}

uint64_t (*sub_1A223067C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A22306E0;
}

uint64_t sub_1A22306F8(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

char *sub_1A223073C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl;
  type metadata accessor for ArtworkControl();
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView;
  type metadata accessor for SessionHeaderView(0);
  *&v5[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView;
  type metadata accessor for NowPlayingTimeControlsView(0);
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView;
  type metadata accessor for NowPlayingTransportControlsView();
  *&v5[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView;
  type metadata accessor for NowPlayingVolumeControlsView(0);
  *&v5[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton;
  type metadata accessor for MediaControlsModuleRouteButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v5[v15] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton;
  *&v5[v17] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v18 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView;
  type metadata accessor for MediaSuggestionsView();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_backdropView;
  type metadata accessor for BackdropView();
  *&v5[v19] = sub_1A22571F0();
  v20 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_viewModel;
  v21 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkImage] = 0;
  v22 = &v5[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_sessionInteractor];
  *v22 = 0;
  v22[1] = 0;
  v5[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_moduleLayout] = 1;
  v5[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_layout] = 1;
  *&v5[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_visualStylingProvider] = 0;
  *&v5[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_contentMetrics] = 0;
  v5[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_onScreen] = 0;
  v5[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_isResizing] = 0;
  v60.receiver = v5;
  v60.super_class = type metadata accessor for MediaControlsModuleNowPlayingView();
  v23 = objc_msgSendSuper2(&v60, sel_initWithFrame_, a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView;
  v25 = *&v23[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView];
  v26 = v23;
  [v25 addTarget:v26 action:sel_didSelectHeaderViewWithHeaderView_ forControlEvents:64];
  [v26 addSubview_];
  v27 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView;
  v28 = *&v26[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView];
  v29 = MEMORY[0x1E69E7D40];
  v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0xD0);
  v31 = v26;
  v32 = v28;
  v30(v23, &off_1F143D608);

  v33 = *MEMORY[0x1E69DDC58];
  [*&v26[v27] setMaximumContentSizeCategory_];
  [v31 &selRef_allItems];
  v34 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView;
  v35 = *&v31[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView];
  v36 = *((*v29 & *v35) + 0xB0);
  v37 = v31;
  v38 = v35;
  v36(v23, &off_1F143D638);

  [v37 &selRef_allItems];
  v39 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton;
  v40 = *&v37[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton];
  v41 = sub_1A22E6598();
  [v40 setAccessibilityIdentifier_];

  [*&v37[v39] setMaximumContentSizeCategory_];
  v42 = *&v37[v39];
  v43 = *((*v29 & *v42) + 0xA0);
  v44 = v42;
  v43(0);

  [*&v37[v39] addTarget:v37 action:sel_didSelectRouteButtonWithButton_ forControlEvents:64];
  [v37 &selRef_allItems];
  v45 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton;
  v46 = *&v37[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton];
  v47 = sub_1A22E6598();
  [v46 setAccessibilityIdentifier_];

  [*&v37[v45] setMaximumContentSizeCategory_];
  v48 = *&v37[v45];
  v49 = MEMORY[0x1E69E7D40];
  v50 = *((*MEMORY[0x1E69E7D40] & *v48) + 0xA0);
  v51 = v48;
  v50(1);

  [*&v37[v45] addTarget:v37 action:sel_didSelectRouteButtonWithButton_ forControlEvents:64];
  [v37 addSubview_];
  [v37 addSubview_];
  v52 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView;
  v53 = *&v37[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView];
  v54 = *((*v49 & *v53) + 0xC0);
  v55 = v37;
  v56 = v53;
  v54(v23, &off_1F143D618);

  [v55 addSubview_];
  v57 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl;
  v58 = *&v55[OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl];
  [v58 addTarget:v55 action:sel_didSelectArtworkControlWithControl_ forControlEvents:64];

  [v55 addSubview_];
  [v55 addSubview_];
  sub_1A22316E4();
  sub_1A21194E8();

  return v55;
}

double sub_1A2230E10(double a1, double a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v44 - v7;
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x190))(v6);
  if (v10)
  {
    v11 = v10;
    [v10 metricsScaleFactor];
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = *((*v9 & *v2) + 0x160);
  v15 = v14();
  if (v15 == 7)
  {
    v26 = v14();
    sub_1A2122014(v26);
    sub_1A22E6A28();
    v28 = a1 - v27;
    sub_1A22E6A48();
    v30 = a2 - v29;
    v31 = [*(v2 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) sizeThatFits_];
    v33 = v32;
    v34 = (v14)(v31);
    if (v34 > 0xA)
    {
      goto LABEL_24;
    }

    if (((1 << v34) & 0x1C8) != 0)
    {
      v35 = 12.0;
      goto LABEL_26;
    }

    if (((1 << v34) & 0x630) != 0)
    {
      v35 = 22.0;
LABEL_26:
      v40 = v13 * v35;
      goto LABEL_27;
    }

    if (v34 != 2)
    {
LABEL_24:
      v40 = 0.0;
      if (v34)
      {
LABEL_27:
        v41 = v30 - (v33 + v40);
        sub_1A22E6A28();
        return v42 + v41;
      }
    }

    v35 = 10.0;
    goto LABEL_26;
  }

  if (v15 == 6)
  {
    v16 = v14();
    sub_1A2122014(v16);
    v17 = sub_1A22E6A48();
    v19 = a2 - v18;
    v20 = (v14)(v17);
    sub_1A229DA54(v20, a1, a2);
    v22 = v21;
    v23 = [*(v2 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView) sizeThatFits_];
    if (v24 >= v22)
    {
      if ((*&v24 & 0x7FF0000000000000) != 0x7FF0000000000000 || (*&v24 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v25 = v19 - v24;
      }

      else
      {
        v25 = v19 - v22;
      }
    }

    else
    {
      v25 = v19 - v22;
    }

    (*((*v9 & *v2) + 0x100))(v23);
    v37 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
    if ((*(*(v37 - 8) + 48))(v8, 1, v37))
    {
      sub_1A210D9B0(v8, &qword_1EB088820);
    }

    else
    {
      v38 = v8[*(v37 + 44)];
      sub_1A210D9B0(v8, &qword_1EB088820);
      if (v38 == 1)
      {
        v39 = (v14)([*(v2 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView) sizeThatFits_]);
        sub_1A2122014(v39);
      }
    }
  }

  return a1;
}

uint64_t sub_1A2231258(uint64_t a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A22313DC(uint64_t a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2231560(uint64_t a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xE8))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v1, a1, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1A22316E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl);
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x160);
  [v1 setUserInteractionEnabled_];
  v4 = *&v1[OBJC_IVAR____TtC13MediaControls14ArtworkControl_artworkView];
  v5 = v3();
  v6 = sub_1A229CBC8(v5, v27);
  (*((*v2 & *v4) + 0x90))(v27, v6);

  v7 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView);
  v8 = v3();
  v9 = sub_1A229CE4C(v8, v28);
  v10 = (*((*v2 & *v7) + 0xD0))(v28, v9);
  v11 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView);
  v12 = (v3)(v10);
  v13 = sub_1A229D174(v12, v29);
  v14 = (*((*v2 & *v11) + 0xE8))(v29, v13);
  v15 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView);
  v16 = (v3)(v14);
  v17 = sub_1A229D420(v16, v30);
  v18 = (*((*v2 & *v15) + 0xD8))(v30, v17);
  v19 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView);
  v20 = (v3)(v18);
  v21 = sub_1A229D6D8(v20, v31);
  v22 = (*((*v2 & *v19) + 0xC8))(v31, v21);
  v23 = *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView);
  v24 = (v3)(v22);
  v25 = sub_1A229D930(v24, v32);
  (*((*v2 & *v23) + 0x98))(v32, v25);

  return [v0 setNeedsLayout];
}

id sub_1A22319C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaControlsModuleNowPlayingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2231B2C(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 24))(a2, ObjectType, v6);
    swift_unknownObjectRelease();
    return v8;
  }

  return result;
}

uint64_t sub_1A2231BD0(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A2231C88(uint64_t a1, uint64_t a2)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x130))();
  if (result)
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

size_t sub_1A2231D44(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BF0);
  v10 = *(sub_1A22E5D98() - 8);
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
  v15 = *(sub_1A22E5D98() - 8);
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

size_t sub_1A2231F1C(size_t a1, int64_t a2, char a3)
{
  result = sub_1A2231F60(a1, a2, a3, *v3, &qword_1EB088BF8, &unk_1A230A128, MEMORY[0x1E69AE518]);
  *v3 = result;
  return result;
}

size_t sub_1A2231F60(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

void sub_1A223213C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkControl;
  type metadata accessor for ArtworkControl();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_headerView;
  type metadata accessor for SessionHeaderView(0);
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_timeControlsView;
  type metadata accessor for NowPlayingTimeControlsView(0);
  *(v1 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_transportControlsView;
  type metadata accessor for NowPlayingTransportControlsView();
  *(v1 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_volumeControlsView;
  type metadata accessor for NowPlayingVolumeControlsView(0);
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_upperRouteButton;
  type metadata accessor for MediaControlsModuleRouteButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v9 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_lowerRouteButton;
  *(v1 + v9) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v10 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_mediaSuggestionsView;
  type metadata accessor for MediaSuggestionsView();
  *(v1 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_backdropView;
  type metadata accessor for BackdropView();
  *(v1 + v11) = sub_1A22571F0();
  v12 = OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_viewModel;
  v13 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_artworkImage) = 0;
  v14 = (v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_sessionInteractor);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_moduleLayout) = 1;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_layout) = 1;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_visualStylingProvider) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_contentMetrics) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_onScreen) = 0;
  *(v1 + OBJC_IVAR____TtC13MediaControls33MediaControlsModuleNowPlayingView_isResizing) = 0;
  sub_1A22E7028();
  __break(1u);
}

uint64_t sub_1A22323AC()
{
  v91 = sub_1A22E5738();
  v87 = *(v91 - 8);
  v1 = MEMORY[0x1EEE9AC00](v91);
  v77 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v78 = &v77 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088BE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v86 = &v77 - v5;
  v6 = sub_1A22E5D98();
  v81 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v77 - v10;
  v12 = type metadata accessor for RoutePickerItemView.ViewModel(0);
  v88 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB088820);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v77 - v23;
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))(v22);
  v25 = type metadata accessor for MediaControlsModuleSessionPresenter.ViewModel(0);
  if ((*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    return sub_1A210D9B0(v24, &qword_1EB088820);
  }

  v79 = v15;
  v80 = v18;
  v85 = v12;
  v83 = v11;
  v89 = v6;
  v90 = v9;
  v27 = *&v24[*(v25 + 40)];
  if (!v27)
  {
    return sub_1A210D9B0(v24, &qword_1EB088820);
  }

  v84 = v0;

  sub_1A210D9B0(v24, &qword_1EB088820);
  sub_1A22D46C4();
  v28 = v27;

  v29 = MEMORY[0x1E69E7CC0];
  v82 = *(v27 + 16);
  if (v82)
  {
    v30 = 0;
    v31 = v86;
    v32 = v88;
    v33 = v79;
    while (v30 < *(v28 + 16))
    {
      v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v36 = v32[9];
      sub_1A2232EDC(v28 + v35 + v36 * v30, v20, type metadata accessor for RoutePickerItemView.ViewModel);
      if (sub_1A226C080())
      {
        sub_1A2129A30(v20, v33, type metadata accessor for RoutePickerItemView.ViewModel);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A2129B8C(0, *(v29 + 16) + 1, 1);
          v29 = v92;
        }

        v39 = *(v29 + 16);
        v38 = *(v29 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1A2129B8C(v38 > 1, v39 + 1, 1);
          v29 = v92;
        }

        *(v29 + 16) = v39 + 1;
        result = sub_1A2129A30(v33, v29 + v35 + v39 * v36, type metadata accessor for RoutePickerItemView.ViewModel);
        v31 = v86;
      }

      else
      {
        result = sub_1A2232F64(v20, type metadata accessor for RoutePickerItemView.ViewModel);
      }

      ++v30;
      v32 = v88;
      v34 = v85;
      if (v82 == v30)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = v85;
    v31 = v86;
    v32 = v88;
LABEL_16:

    v40 = *(v29 + 16);
    if (v40)
    {
      v41 = *(v34 + 44);
      v42 = v29 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
      v85 = v32[9];
      v43 = v80;
      v44 = (v81 + 48);
      v82 = (v81 + 32);
      v88 = MEMORY[0x1E69E7CC0];
      v79 = v41;
      v45 = v89;
      do
      {
        sub_1A2232EDC(v42, v43, type metadata accessor for RoutePickerItemView.ViewModel);
        sub_1A2214CF8(&v41[v43], v31, &qword_1EB088BE8);
        sub_1A2232F64(v43, type metadata accessor for RoutePickerItemView.ViewModel);
        if ((*v44)(v31, 1, v45) == 1)
        {
          sub_1A210D9B0(v31, &qword_1EB088BE8);
        }

        else
        {
          v46 = *v82;
          (*v82)(v83, v31, v45);
          v47 = v88;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_1A2231D44(0, v47[2] + 1, 1, v47);
          }

          v49 = v47[2];
          v48 = v47[3];
          v88 = v47;
          if (v49 >= v48 >> 1)
          {
            v88 = sub_1A2231D44(v48 > 1, v49 + 1, 1, v88);
          }

          v50 = v88;
          v88[2] = v49 + 1;
          v46(&v50[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v49]);
          v31 = v86;
          v41 = v79;
          v43 = v80;
        }

        v42 += v85;
        --v40;
      }

      while (v40);

      v51 = v88;
    }

    else
    {

      v51 = MEMORY[0x1E69E7CC0];
    }

    v52 = v51[2];
    if (v52)
    {
      v92 = MEMORY[0x1E69E7CC0];
      sub_1A2231F1C(0, v52, 0);
      v53 = v92;
      v54 = v81 + 16;
      v55 = *(v81 + 16);
      v56 = *(v81 + 80);
      v88 = v51;
      v57 = v51 + ((v56 + 32) & ~v56);
      v85 = *(v81 + 72);
      v86 = v55;
      v58 = (v81 + 8);
      v59 = v77;
      v60 = v90;
      do
      {
        v61 = v89;
        v62 = v54;
        (v86)(v60, v57, v89);
        sub_1A22E5D88();
        v60 = v90;
        (*v58)(v90, v61);
        v92 = v53;
        v64 = *(v53 + 16);
        v63 = *(v53 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1A2231F1C(v63 > 1, v64 + 1, 1);
          v60 = v90;
          v53 = v92;
        }

        *(v53 + 16) = v64 + 1;
        (*(v87 + 32))(v53 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v64, v59, v91);
        v57 += v85;
        --v52;
        v54 = v62;
      }

      while (v52);
    }

    else
    {

      v53 = MEMORY[0x1E69E7CC0];
    }

    v65 = *(v53 + 16);
    v66 = v78;
    if (v65)
    {
      v67 = *((*MEMORY[0x1E69E7D40] & *v84) + 0x130);
      v89 = (*MEMORY[0x1E69E7D40] & *v84) + 304;
      v90 = v67;
      v68 = *(v87 + 16);
      v69 = v53 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v70 = *(v87 + 72);
      v71 = (v87 + 8);
      for (i = v68(v78, v69, v91); ; i = v68(v66, v69, v73))
      {
        if (v90(i))
        {
          v75 = v74;
          ObjectType = swift_getObjectType();
          (*(v75 + 16))(v66, ObjectType, v75);
          swift_unknownObjectRelease();
        }

        v73 = v91;
        (*v71)(v66, v91);
        v69 += v70;
        if (!--v65)
        {
          break;
        }
      }
    }
  }

  return result;
}