void sub_190C18D04(unsigned __int8 a1, unsigned __int8 a2)
{
  v6 = [objc_opt_self() sharedBehaviors];
  if (!v6)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v7 = v6;
  v38 = [v6 theme];

  if (!v38)
  {
    return;
  }

  v8 = a1;
  v9 = [v38 balloonColorsForColorType_];
  if (!v9)
  {
    goto LABEL_60;
  }

  v10 = v9;
  sub_1902188FC(0, &qword_1EAD46520);
  v11 = sub_190D57180();

  if (v11 >> 62)
  {
    v12 = sub_190D581C0();
    if (v12)
    {
LABEL_6:
      v13 = __OFSUB__(v12, 1);
      v14 = v12 - 1;
      if (v13)
      {
        __break(1u);
      }

      else if ((v11 & 0xC000000000000001) == 0)
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *(v11 + 8 * v14 + 32);
          goto LABEL_11;
        }

        __break(1u);
        goto LABEL_50;
      }

      v15 = MEMORY[0x193AF3B90](v14, v11);
LABEL_11:
      v10 = v15;

      v16 = [v38 balloonColorsForColorType_];
      if (!v16)
      {
LABEL_61:
        __break(1u);
        return;
      }

      v17 = v16;
      v3 = sub_190D57180();

      if (!(v3 >> 62))
      {
        v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_14;
        }

LABEL_51:

        goto LABEL_52;
      }

LABEL_50:
      v18 = sub_190D581C0();
      if (v18)
      {
LABEL_14:
        v13 = __OFSUB__(v18, 1);
        v19 = v18 - 1;
        if (v13)
        {
          __break(1u);
        }

        else if ((v3 & 0xC000000000000001) == 0)
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v19 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v20 = *(v3 + 8 * v19 + 32);
            goto LABEL_19;
          }

          __break(1u);
          goto LABEL_59;
        }

        v20 = MEMORY[0x193AF3B90](v19, v3);
LABEL_19:
        v21 = v20;

        [v2 setHidden_];
        v22 = OBJC_IVAR___CKTapbackPlatterView_isSent;
        if (v2[OBJC_IVAR___CKTapbackPlatterView_isSent])
        {
          v23 = v10;
        }

        else
        {
          v23 = v21;
        }

        [v2 setBackgroundColor_];
        if (v2[OBJC_IVAR___CKTapbackPlatterView_wantsMaterialBackground] == 1)
        {
          if (v2[v22])
          {
            v24 = a1;
          }

          else
          {
            v24 = a2;
          }

          v25 = OBJC_IVAR___CKTapbackPlatterView_materialColorType;
          swift_beginAccess();
          v2[v25] = v24;
          v26 = *&v2[OBJC_IVAR___CKTapbackPlatterView_materialView];
          v27 = *(v26 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType);
          *(v26 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType) = v24;
          if (v27 != v24)
          {
            sub_190C3B124();
          }

          sub_190C17580();

          return;
        }

        if ((v2[v22] & 1) != 0 || v2[OBJC_IVAR___CKTapbackPlatterView_showTail] == 1 && ([v21 alphaComponent], v31 < 1.0))
        {
          v28 = [v2 backgroundColor];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 colorWithAlphaComponent_];
          }

          else
          {
            v30 = 0;
          }

          [v2 setBackgroundColor_];

          sub_190C17580();
          v32 = v2[v22];
          v33 = *&v2[OBJC_IVAR___CKTapbackPlatterView_gradientView];
          if (v32 != 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_190DD5CE0;
            *(v35 + 32) = v21;
            *(v35 + 40) = v21;
            v36 = v21;
            v37 = sub_190D57160();

            [v33 setColors_];

            goto LABEL_41;
          }

          v34 = [v39 balloonColorsForColorType_];
          [v33 setColors_];
        }

        else
        {
          sub_190C17680();
        }

LABEL_41:

        return;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_6;
    }
  }

LABEL_52:
}

void sub_190C191D4(void *a1)
{
  v2 = v1;
  v4 = [a1 tapback];
  if (!v4)
  {
    if (qword_1EAD52000 != -1)
    {
      swift_once();
    }

    v14 = sub_190D53040();
    __swift_project_value_buffer(v14, qword_1EAD9E5C0);
    v35 = sub_190D53020();
    v15 = sub_190D576A0();
    if (os_log_type_enabled(v35, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_19020E000, v35, v15, "Could not create IMTapback from acknowledgment chat item, displaying empty tapback", v16, 2u);
      MEMORY[0x193AF7A40](v16, -1, -1);
    }

    goto LABEL_13;
  }

  v5 = v4;
  v6 = OBJC_IVAR___CKTapbackPlatterView_tapback;
  v7 = *&v1[OBJC_IVAR___CKTapbackPlatterView_tapback];
  if (v7)
  {
    sub_1902188FC(0, &qword_1EAD55560);
    v35 = v5;
    v8 = v7;
    v9 = sub_190D57D90();

    if (v9)
    {

      if (qword_1EAD52000 != -1)
      {
        swift_once();
      }

      v10 = sub_190D53040();
      __swift_project_value_buffer(v10, qword_1EAD9E5C0);
      v11 = sub_190D53020();
      v12 = sub_190D576A0();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_19020E000, v11, v12, "Attempting to configure the tapback platter with the same tapback.", v13, 2u);
        MEMORY[0x193AF7A40](v13, -1, -1);
      }

LABEL_13:

      return;
    }

    v18 = *&v2[v6];
  }

  else
  {
    v17 = v4;
    v18 = 0;
  }

  *&v2[v6] = v5;
  v19 = v5;

  v20 = _s7ChatKit16TapbackViewUtilsC4view3for10isSelectedSo09CKTapbackD8Protocol_So6UIViewCXcSo9IMTapbackCSg_SbtFZ_0(v5, [a1 isFromMe]);
  type metadata accessor for TapbackClassicView();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = v20;
    sub_190C195A4();
    v25 = v24;
    v26 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
    swift_beginAccess();
    *(v22 + v26) = v25;
    v27 = OBJC_IVAR___CKTapbackClassicView_isSelected;
    swift_beginAccess();
    sub_190C89C20(*(v22 + v27));
  }

  [v20 setDelegate_];
  v28 = OBJC_IVAR___CKTapbackPlatterView_tapbackView;
  v29 = *&v2[OBJC_IVAR___CKTapbackPlatterView_tapbackView];
  v30 = v20;
  [v29 removeFromSuperview];
  v31 = *&v2[v28];
  *&v2[v28] = v20;
  v32 = v30;

  v33 = *&v2[OBJC_IVAR___CKTapbackPlatterView_contentView];
  [v33 setClipsToBounds_];
  v34 = v32;
  [v33 addSubview_];
  [v2 setNeedsLayout];
}

void sub_190C195A4()
{
  v1 = [v0 serviceName];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() serviceWithName_];

    if (v3)
    {
      [v3 __ck_displayColor];

      return;
    }

    if (qword_1EAD52000 != -1)
    {
      swift_once();
    }

    v16 = sub_190D53040();
    __swift_project_value_buffer(v16, qword_1EAD9E5C0);
    v5 = v0;
    v6 = sub_190D53020();
    v7 = sub_190D576A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      v17 = [v5 guid];

      if (v17)
      {
        v18 = sub_190D56F10();
        v20 = v19;

        v21 = sub_19021D9F8(v18, v20, &v22);

        *(v8 + 4) = v21;
        v15 = "service not found on tapbackItem with guid: %s. Defaulting to blue";
        goto LABEL_14;
      }

      goto LABEL_18;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (qword_1EAD52000 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E5C0);
  v5 = v0;
  v6 = sub_190D53020();
  v7 = sub_190D576A0();
  if (!os_log_type_enabled(v6, v7))
  {
    goto LABEL_15;
  }

  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v22 = v9;
  *v8 = 136315138;
  v10 = [v5 guid];

  if (v10)
  {
    v11 = sub_190D56F10();
    v13 = v12;

    v14 = sub_19021D9F8(v11, v13, &v22);

    *(v8 + 4) = v14;
    v15 = "serviceName not found on tapbackItem with guid: %s. Defaulting to blue";
LABEL_14:
    _os_log_impl(&dword_19020E000, v6, v7, v15, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
LABEL_16:

    return;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_190C198E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_190C19AD8(char a1)
{
  v2 = *(v1 + OBJC_IVAR___CKTapbackPlatterView_tapback);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  v5 = _s7ChatKit16TapbackViewUtilsC4view3for10isSelectedSo09CKTapbackD8Protocol_So6UIViewCXcSo9IMTapbackCSg_SbtFZ_0(v2, a1 & 1);
  type metadata accessor for TapbackClassicView();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    if (*(v1 + OBJC_IVAR___CKTapbackPlatterView_tapbackView))
    {
      v7 = v6;
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
        v10 = v8;
        swift_beginAccess();
        LOBYTE(v9) = *(v10 + v9);
        v11 = OBJC_IVAR___CKTapbackClassicView_serviceColor;
        swift_beginAccess();
        *(v7 + v11) = v9;
        v12 = OBJC_IVAR___CKTapbackClassicView_isSelected;
        swift_beginAccess();
        LOBYTE(v12) = *(v7 + v12);
        v13 = v5;
        sub_190C89C20(v12);
      }
    }
  }

  return v5;
}

void sub_190C19C04()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___CKTapbackPlatterView_materialView];
  v3 = [v2 maskView];
  v4 = *&v0[OBJC_IVAR___CKTapbackPlatterView_parentView];
  if (!v3 || (v5 = v3, sub_1902188FC(0, &qword_1EAD46530), v6 = v4, v7 = sub_190D57D90(), v5, v6, (v7 & 1) == 0))
  {
    [v4 removeFromSuperview];
    [v2 setMaskView_];
    v8 = *&v1[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke];
    [v1 insertSubview:v2 aboveSubview:v8];
    v9 = *&v1[OBJC_IVAR___CKTapbackPlatterView_backgroundBackdrop];
    [v1 insertSubview:v9 aboveSubview:v8];
    v10 = *&v1[OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy];

    [v1 insertSubview:v10 aboveSubview:v9];
  }
}

void sub_190C19D50()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___CKTapbackPlatterView_gradientView];
  v3 = [v2 maskView];
  v4 = *&v0[OBJC_IVAR___CKTapbackPlatterView_parentView];
  if (!v3 || (v5 = v3, sub_1902188FC(0, &qword_1EAD46530), v6 = v4, v7 = sub_190D57D90(), v5, v6, (v7 & 1) == 0))
  {
    [v4 removeFromSuperview];
    [v2 setMaskView_];
    v8 = *&v1[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke];

    [v1 insertSubview:v2 aboveSubview:v8];
  }
}

uint64_t sub_190C19E5C(char a1)
{
  v10 = sub_190D564A0();
  v11 = MEMORY[0x1E6981AD0];
  __swift_allocate_boxed_opaque_existential_1(v9);
  if (a1)
  {
    if (a1 == 1)
    {
      sub_190D56460();
    }

    else
    {
      sub_190D56470();
    }
  }

  else
  {
    sub_190D56480();
  }

  v2 = __swift_project_boxed_opaque_existential_1(v9, v10);
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v6 = sub_190D53C70();
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_190C19FB4@<X0>(uint64_t a1@<X8>)
{
  result = sub_190C19E5C(*v1);
  *a1 = result;
  *(a1 + 8) = 256;
  return result;
}

void sub_190C1A2F4()
{
  v1 = OBJC_IVAR___CKTapbackPlatterView_parentView;
  type metadata accessor for TapbackPlatterParentView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR___CKTapbackPlatterView_gradientView;
  *(v0 + v2) = [objc_allocWithZone(CKGradientView) init];
  v3 = OBJC_IVAR___CKTapbackPlatterView_materialView;
  type metadata accessor for TapbackMaterialView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke;
  type metadata accessor for TapbackPlatterPunchOutView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR___CKTapbackPlatterView_backgroundBackdrop;
  type metadata accessor for TapbackBackdropCircleView();
  v7 = swift_getObjCClassFromMetadata();
  *(v0 + v6) = [objc_allocWithZone(v7) init];
  v8 = OBJC_IVAR___CKTapbackPlatterView_backgroundVibrancy;
  type metadata accessor for TapbackVibrancyCircleView();
  v9 = swift_getObjCClassFromMetadata();
  *(v0 + v8) = [objc_allocWithZone(v9) init];
  v10 = OBJC_IVAR___CKTapbackPlatterView_contentBackground;
  type metadata accessor for TapbackPlatterBackgroundView();
  *(v0 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR___CKTapbackPlatterView_tapbackView) = 0;
  v11 = OBJC_IVAR___CKTapbackPlatterView_contentView;
  type metadata accessor for TapbackPlatterContentView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR___CKTapbackPlatterView_mediumTailSolidStroke;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR___CKTapbackPlatterView_mediumTailBackdrop;
  *(v0 + v13) = [objc_allocWithZone(v7) init];
  v14 = OBJC_IVAR___CKTapbackPlatterView_mediumTailVibrancy;
  *(v0 + v14) = [objc_allocWithZone(v9) init];
  v15 = OBJC_IVAR___CKTapbackPlatterView_mediumTail;
  type metadata accessor for TapbackPlatterMediumTail();
  *(v0 + v15) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR___CKTapbackPlatterView_smallTailSolidStroke;
  *(v0 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = OBJC_IVAR___CKTapbackPlatterView_smallTailBackdrop;
  *(v0 + v17) = [objc_allocWithZone(v7) init];
  v18 = OBJC_IVAR___CKTapbackPlatterView_smallTailVibrancy;
  *(v0 + v18) = [objc_allocWithZone(v9) init];
  v19 = OBJC_IVAR___CKTapbackPlatterView_smallTail;
  type metadata accessor for TapbackPlatterSmallTail();
  *(v0 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR___CKTapbackPlatterView_tapback) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView____lazy_storage___backgroundStrokeViews) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView____lazy_storage___mediumStrokeViews) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView____lazy_storage___smallStrokeViews) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView____lazy_storage___backgroundViews) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView____lazy_storage___mediumTailViews) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView____lazy_storage___smallTailViews) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView_wantsMaterialBackground) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView_wantsBorderDestOut) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView_isSent) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView_showTail) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView_useRightTailDirection) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView_materialColorType) = -1;
  *(v0 + OBJC_IVAR___CKTapbackPlatterView_backgroundLuminance) = 0;
  sub_190D58510();
  __break(1u);
}

unint64_t sub_190C1A62C()
{
  result = qword_1EAD60608;
  if (!qword_1EAD60608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD60610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60608);
  }

  return result;
}

void sub_190C1A690()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_190C1AF34;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190896518;
    aBlock[3] = &block_descriptor_109;
    v4 = _Block_copy(aBlock);

    [v2 fetchIsCurrentlyDownloadingPurgedAttachments_];
    _Block_release(v4);
  }

  else
  {
    if (qword_1EAD51A60 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9DC08);
    oslog = sub_190D53020();
    v6 = sub_190D576C0();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19020E000, oslog, v6, "Cannot find chat on conversation", v7, 2u);
      MEMORY[0x193AF7A40](v7, -1, -1);
    }
  }
}

id sub_190C1A870()
{
  swift_getKeyPath();
  sub_190C1B1F8(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  result = [*(v0 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation) chat];
  if (result)
  {
    v2 = result;
    v3 = [result countOfAttachmentsNotCachedLocally];

    if (v3)
    {
      v4 = [v3 integerValue];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_190C1A97C(uint64_t a1)
{
  sub_190C1A690();
  if (*(a1 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190C1B1F8(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
    sub_190D51C10();
  }
}

void sub_190C1AAEC(char a1)
{
  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v3 = Strong, v4 = sub_190C1A870(), v3, v4 >= 1))
    {
      swift_beginAccess();
      v1 = swift_unknownObjectWeakLoadStrong();
      if (!v1)
      {
        return;
      }

      if (v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState] != 1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      swift_beginAccess();
      v1 = swift_unknownObjectWeakLoadStrong();
      if (!v1)
      {
        return;
      }

      v5 = v1;
      if (v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_190C1B1F8(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
        sub_190D51C10();

        return;
      }
    }

LABEL_9:

    return;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (!v1)
  {
    return;
  }

  if (v1[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState] == 2)
  {
    goto LABEL_9;
  }

LABEL_14:
  v7 = v1;
  v8 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v8);
  sub_190C1B1F8(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C10();
}

uint64_t sub_190C1AE5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190C1B1F8(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  *a2 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__assetDownloadState);
  return result;
}

uint64_t sub_190C1AF3C()
{
  v1 = sub_190D56770();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D567A0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1908E9B68();
  v9 = sub_190D57870();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_190C1B1F0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_11_0;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190C1B1F8(&qword_1EAD46770, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_190C1B1F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190C1B260(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190C1B280(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_190C1B2E0(uint64_t a1)
{
  v3 = sub_190D54C70();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60620);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *v1;
  v11 = sub_190D552B0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60628);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60630) + 36)];
  *v13 = v11;
  v14 = *(v1 + 1);
  *(v13 + 24) = *(v1 + 3);
  *(v13 + 8) = v14;
  v13[40] = 0;
  v15 = &v9[*(v7 + 36)];
  v16 = *(sub_190D543E0() + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_190D54A20();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  *v15 = v10;
  *(v15 + 1) = v10;
  v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60638) + 36)] = 0;
  sub_190D544E0();
  sub_190C1B558();
  sub_190C1B6C8();
  sub_190D55770();
  (*(v4 + 8))(v6, v3);
  return sub_190C1B720(v9);
}

unint64_t sub_190C1B558()
{
  result = qword_1EAD60640;
  if (!qword_1EAD60640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60620);
    sub_190C1B610();
    sub_190233640(&qword_1EAD60658, &qword_1EAD60638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60640);
  }

  return result;
}

unint64_t sub_190C1B610()
{
  result = qword_1EAD60648;
  if (!qword_1EAD60648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60630);
    sub_190233640(&qword_1EAD60650, &qword_1EAD60628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60648);
  }

  return result;
}

unint64_t sub_190C1B6C8()
{
  result = qword_1EAD60660;
  if (!qword_1EAD60660)
  {
    sub_190D54C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60660);
  }

  return result;
}

uint64_t sub_190C1B720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CKConversationList.defaultPrimaryFilterModeConversations()()
{
  v1 = v0;
  v2 = sub_190D57AA0();
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9D8E0);
  v4 = sub_190D53020();
  v5 = sub_190D576C0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    v8 = sub_190D57B00();
    v10 = sub_19021D9F8(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_19020E000, v4, v5, "fetching conversations for default primary filterMode: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x193AF7A40](v7, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  v11 = [v1 conversationsContainingFilterMode_];
  sub_1902188FC(0, &qword_1EAD466B0);
  v12 = sub_190D57180();

  return v12;
}

uint64_t CKConversationList.conversations(containingFilterMode:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = a1;
  v3 = sub_19021E69C(inited);
  swift_setDeallocating();
  v4 = sub_19021B384(v3, 0);

  return v4;
}

uint64_t CKConversationList.conversations(containingFilterMode:includingGUIDs:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = a1;
  v3 = sub_19021E69C(inited);
  swift_setDeallocating();
  v4 = sub_19021B384(v3, 0);

  return v4;
}

uint64_t sub_190C1BB94(void **a1, void **a2)
{
  v4 = sub_190D51840();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  v11 = *a1;
  v12 = *a2;
  result = [v11 chat];
  if (result)
  {
    v14 = result;
    v15 = [v12 chat];
    if (v15)
    {
      v16 = v15;
      v17 = [v14 latestRecoverableMessageDeletionDate];
      sub_190D517E0();

      v18 = [v16 latestRecoverableMessageDeletionDate];
      sub_190D517E0();

      v19 = sub_190D51800();
      v20 = *(v5 + 8);
      v20(v8, v4);
      v20(v10, v4);
      return v19 == -1;
    }

    else
    {

      return 1;
    }
  }

  return result;
}

unint64_t sub_190C1BD5C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1908789E4(a2 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_190B6799C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_190B6231C(v14, a3 & 1);
    v9 = sub_1908789E4(a2 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    return sub_190BA9510(v9, a2 & 1, a1, v19);
  }
}

_OWORD *sub_190C1BE80(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19022DCEC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_190B67DE8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_190B62AD0(v16, a4 & 1);
    v11 = sub_19022DCEC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_190824530(a1, v22);
  }

  else
  {
    sub_190BA9558(v11, a2, a3, a1, v21);

    return sub_190D52690();
  }
}

_OWORD *sub_190C1BFD0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_190875C84(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_190B67FA0();
      goto LABEL_7;
    }

    sub_190B62D9C(v13, a3 & 1);
    v19 = sub_190875C84(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_19087862C(a2, v21);
      return sub_190BA95C4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_190D587C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_190824530(a1, v17);
}

uint64_t sub_190C1C11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_19022DCEC(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_190B68144();
      v13 = v21;
      goto LABEL_8;
    }

    sub_190B63054(v18, a5 & 1);
    v13 = sub_19022DCEC(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_190BA9640(v13, a3, a4, a1, a2, v23);

    return sub_190D52690();
  }
}

uint64_t sub_190C1C2AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_19022DCEC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_190B682D0();
      goto LABEL_7;
    }

    sub_190B63328(v15, a4 & 1);
    v22 = sub_19022DCEC(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_190D587C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for ConversationEntity() - 8) + 72) * v12;

    return sub_190C2023C(a1, v20);
  }

LABEL_13:
  sub_190BA9690(v12, a2, a3, a1, v18);

  return sub_190D52690();
}

void sub_190C1C410(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_190875D94(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_190B68500();
      v9 = v17;
      goto LABEL_8;
    }

    sub_190B63664(v14, a3 & 1);
    v9 = sub_190875D94(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      sub_190D587C0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;
  }

  else
  {
    sub_190BA9728(v9, a2, a1, v19);
    sub_19081BE58(a2, v22);
  }
}

uint64_t sub_190C1C57C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_190875CC8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_190B68694();
      v9 = v17;
      goto LABEL_8;
    }

    sub_190B639E4(v14, a3 & 1);
    v9 = sub_190875CC8(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return sub_190BADB0C(v9, a2, a1, v19);
  }
}

uint64_t sub_190C1C6A0(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1908789E4(a1 & 1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_190B687F0();
      result = v17;
      goto LABEL_8;
    }

    sub_190B63C54(v14, a2 & 1);
    result = sub_1908789E4(a1 & 1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return sub_190BA9780(result, a1 & 1, v19, a3);
  }

  return result;
}

uint64_t sub_190C1C7B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_19022DCEC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_190B6893C();
      result = v19;
      goto LABEL_8;
    }

    sub_190B63ED8(v16, a4 & 1);
    result = sub_19022DCEC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_190282D98(result, a2, a3, a1, v21);

    return sub_190D52690();
  }

  return result;
}

_OWORD *sub_190C1C8E8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1908789E0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_190B68AA8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_190B64184(v13, a3 & 1);
    v8 = sub_1908789E0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_190824530(a1, v19);
  }

  else
  {
    sub_190BA97C8(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_190C1CA28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_190D52E90();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_190875BAC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_190B68C28();
    goto LABEL_7;
  }

  sub_190B64454(result, a3 & 1);
  result = sub_190875BAC(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_190D587C0();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_190BA9830(v14, v11, a1, v20);
}

uint64_t sub_190C1CBC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19022DCEC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_190B69198();
      v11 = v19;
      goto LABEL_8;
    }

    sub_190B65030(v16, a4 & 1);
    v11 = sub_19022DCEC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_190282D98(v11, a2, a3, a1, v21);

    return sub_190D52690();
  }
}

uint64_t sub_190C1CD4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_19022DCEC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_190B6931C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_190B652EC(v16, a4 & 1);
    v11 = sub_19022DCEC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    sub_190BADB10(v11, a2, a3, a1, v21);

    return sub_190D52690();
  }
}

uint64_t sub_190C1CE94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_190D515F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_190876008(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_190B69870();
      goto LABEL_7;
    }

    sub_190B65BE0(v17, a3 & 1);
    v23 = sub_190876008(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_190BA9930(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_190D587C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 168 * v14;

  return sub_190C201E0(a1, v21);
}

void sub_190C1D124(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_19022DCEC(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_19022DCEC(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_190D587C0();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v17);
    *(v28 + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);

    sub_190D52690();
  }
}

id sub_190C1D28C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_190876340(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_190B69E84();
      v13 = v21;
      goto LABEL_8;
    }

    sub_190B66698(v18, a5 & 1);
    v13 = sub_190876340(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  else
  {
    sub_190BA9A1C(v13, a2, a3, a4, a1, v23);

    return sub_190824730(a2, a3, a4);
  }
}

id sub_190C1D3EC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1908764E0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_190B6A3FC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_190B67094(v13, a3 & 1);
    v8 = sub_1908764E0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      sub_1902188FC(0, &qword_1EAD5BC80);
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_190BA9A6C(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_190C1D534(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_190875C84(a1);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  result = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
  }

  else
  {
    v16 = v11;
    v17 = v10[3];
    if (v17 >= result && (a2 & 1) != 0)
    {
LABEL_7:
      v18 = *v5;
      if (v16)
      {
LABEL_8:
        v19 = (v18[7] + 16 * v12);
        *v19 = a3;
        v19[1] = a4;
        return result;
      }

      goto LABEL_11;
    }

    if (v17 >= result && (a2 & 1) == 0)
    {
      result = sub_190B6A6BC();
      goto LABEL_7;
    }

    sub_190B6756C(result, a2 & 1);
    result = sub_190875C84(a1);
    if ((v16 & 1) == (v20 & 1))
    {
      v12 = result;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

LABEL_11:
      sub_19087862C(a1, v21);
      return sub_190BA9AB0(v12, v21, v18, a3, a4);
    }
  }

  result = sub_190D587C0();
  __break(1u);
  return result;
}

uint64_t sub_190C1D690(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_19022DCEC(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_19022DCEC(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_190D587C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);

    return sub_190D52690();
  }
}

uint64_t sub_190C1D7FC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1909E52A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_190C1D878(v6);
  return sub_190D58370();
}

void sub_190C1D878(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_190D58710();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1902188FC(0, &qword_1EAD466B0);
        v6 = sub_190D571D0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_190C1DC38(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_190C1D98C(0, v2, 1, a1);
  }
}

void sub_190C1D98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = sub_190D51840();
  v8 = MEMORY[0x1EEE9AC00](v40);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v32 - v11;
  v33 = a2;
  if (a3 != a2)
  {
    v41 = *a4;
    v37 = (v10 + 8);
    v12 = v41 + 8 * a3 - 8;
    v13 = a1 - a3;
LABEL_6:
    v35 = v12;
    v36 = a3;
    v14 = *(v41 + 8 * a3);
    v34 = v13;
    v15 = v13;
    while (1)
    {
      v16 = *v12;
      v17 = v14;
      v18 = v16;
      v19 = [v17 chat];
      if (!v19)
      {

LABEL_5:
        a3 = v36 + 1;
        v12 = v35 + 8;
        v13 = v34 - 1;
        if (v36 + 1 == v33)
        {
          return;
        }

        goto LABEL_6;
      }

      v20 = v19;
      v21 = [v18 chat];
      if (v21)
      {
        v22 = v21;
        v23 = [v20 latestRecoverableMessageDeletionDate];
        v43 = v15;
        v24 = v39;
        sub_190D517E0();

        v25 = [v22 latestRecoverableMessageDeletionDate];
        v26 = v38;
        sub_190D517E0();

        v42 = sub_190D51800();
        v27 = *v37;
        v28 = v40;
        (*v37)(v26, v40);
        v29 = v24;
        v15 = v43;
        v27(v29, v28);

        if (v42 != -1)
        {
          goto LABEL_5;
        }

        if (!v41)
        {
          goto LABEL_16;
        }
      }

      else
      {

        if (!v41)
        {
LABEL_16:
          __break(1u);
          return;
        }
      }

      v30 = *v12;
      v14 = *(v12 + 8);
      *v12 = v14;
      *(v12 + 8) = v30;
      v12 -= 8;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_190C1DC38(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v130 = sub_190D51840();
  v10 = MEMORY[0x1EEE9AC00](v130);
  v129 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v117 - v13;
  v126 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_136:
      v16 = sub_1909E383C(v16);
    }

    v135 = v16;
    v113 = *(v16 + 2);
    if (v113 >= 2)
    {
      while (*v126)
      {
        v114 = *&v16[16 * v113];
        v115 = *&v16[16 * v113 + 24];
        sub_190C1E568((*v126 + 8 * v114), (*v126 + 8 * *&v16[16 * v113 + 16]), (*v126 + 8 * v115), v5);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v115 < v114)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1909E383C(v16);
        }

        if (v113 - 2 >= *(v16 + 2))
        {
          goto LABEL_130;
        }

        v116 = &v16[16 * v113];
        *v116 = v114;
        *(v116 + 1) = v115;
        v135 = v16;
        sub_1909E37B0(v113 - 1);
        v16 = v135;
        v113 = *(v135 + 2);
        if (v113 <= 1)
        {
          goto LABEL_113;
        }
      }

      goto LABEL_140;
    }

LABEL_113:

    return;
  }

  v121 = a4;
  v15 = 0;
  v127 = (v12 + 8);
  v16 = MEMORY[0x1E69E7CC0];
  v118 = a1;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v124 = v14;
      v5 = *v126;
      v18 = *(*v126 + 8 * v15);
      v133 = *(*v126 + 8 * v17);
      v19 = v133;
      v134 = v18;
      v20 = v18;
      v21 = v19;
      LODWORD(v132) = sub_190C1BB94(&v134, &v133);
      if (v6)
      {

        return;
      }

      v15 = v17 + 2;
      v22 = v124;
      if (v17 + 2 < v124)
      {
        v119 = v17;
        v120 = v16;
        v23 = (v5 + 8 * v17 + 16);
        v24 = &selRef_capStyle;
        while (1)
        {
          v25 = *(v23 - 1);
          v5 = *v23;
          v26 = v25;
          v27 = [v5 v24[93]];
          if (v27)
          {
            v28 = v27;
            v29 = [v26 v24[93]];
            if (v29)
            {
              v30 = v29;
              v31 = [v28 latestRecoverableMessageDeletionDate];
              v125 = v15;
              v32 = v128;
              sub_190D517E0();

              v33 = [v30 latestRecoverableMessageDeletionDate];
              v34 = v129;
              sub_190D517E0();

              v131 = sub_190D51800();
              v35 = *v127;
              v36 = v34;
              v24 = &selRef_capStyle;
              v37 = v130;
              (*v127)(v36, v130);
              v38 = v32;
              v15 = v125;
              v35(v38, v37);
              v22 = v124;

              if (((v132 ^ (v131 != -1)) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            else
            {

              if ((v132 & 1) == 0)
              {
                v17 = v119;
                v16 = v120;
                a1 = v118;
                goto LABEL_27;
              }
            }
          }

          else
          {

            if (v132)
            {
              v17 = v119;
              v16 = v120;
              a1 = v118;
              if (v15 < v119)
              {
                goto LABEL_133;
              }

              goto LABEL_20;
            }
          }

          ++v15;
          ++v23;
          if (v22 == v15)
          {
            v15 = v22;
LABEL_17:
            v17 = v119;
            v16 = v120;
            a1 = v118;
            break;
          }
        }
      }

      if (v132)
      {
        if (v15 < v17)
        {
          goto LABEL_133;
        }

LABEL_20:
        if (v17 < v15)
        {
          v39 = 8 * v15 - 8;
          v40 = 8 * v17;
          v41 = v15;
          v42 = v17;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v126;
              if (!*v126)
              {
                goto LABEL_139;
              }

              v43 = *(v44 + v40);
              *(v44 + v40) = *(v44 + v39);
              *(v44 + v39) = v43;
            }

            ++v42;
            v39 -= 8;
            v40 += 8;
          }

          while (v42 < v41);
        }
      }
    }

LABEL_27:
    v45 = v126[1];
    if (v15 < v45)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_132;
      }

      if (v15 - v17 < v121)
      {
        v46 = v17 + v121;
        if (__OFADD__(v17, v121))
        {
          goto LABEL_134;
        }

        if (v46 >= v45)
        {
          v46 = v126[1];
        }

        if (v46 < v17)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v15 != v46)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v15 < v17)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_190835714(0, *(v16 + 2) + 1, 1, v16);
    }

    v68 = *(v16 + 2);
    v67 = *(v16 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      v16 = sub_190835714((v67 > 1), v68 + 1, 1, v16);
    }

    *(v16 + 2) = v69;
    v70 = &v16[16 * v68];
    *(v70 + 4) = v17;
    *(v70 + 5) = v15;
    v71 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v68)
    {
      while (1)
      {
        v72 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v73 = *(v16 + 4);
          v74 = *(v16 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_70:
          if (v76)
          {
            goto LABEL_120;
          }

          v89 = &v16[16 * v69];
          v91 = *v89;
          v90 = *(v89 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_123;
          }

          v95 = &v16[16 * v72 + 32];
          v97 = *v95;
          v96 = *(v95 + 1);
          v83 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v83)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v93, v98))
          {
            goto LABEL_127;
          }

          if (v93 + v98 >= v75)
          {
            if (v75 < v98)
            {
              v72 = v69 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v99 = &v16[16 * v69];
        v101 = *v99;
        v100 = *(v99 + 1);
        v83 = __OFSUB__(v100, v101);
        v93 = v100 - v101;
        v94 = v83;
LABEL_84:
        if (v94)
        {
          goto LABEL_122;
        }

        v102 = &v16[16 * v72];
        v104 = *(v102 + 4);
        v103 = *(v102 + 5);
        v83 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v83)
        {
          goto LABEL_125;
        }

        if (v105 < v93)
        {
          goto LABEL_3;
        }

LABEL_91:
        v110 = v72 - 1;
        if (v72 - 1 >= v69)
        {
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
          goto LABEL_135;
        }

        if (!*v126)
        {
          goto LABEL_138;
        }

        v111 = *&v16[16 * v110 + 32];
        v5 = *&v16[16 * v72 + 40];
        sub_190C1E568((*v126 + 8 * v111), (*v126 + 8 * *&v16[16 * v72 + 32]), (*v126 + 8 * v5), v71);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v5 < v111)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1909E383C(v16);
        }

        if (v110 >= *(v16 + 2))
        {
          goto LABEL_117;
        }

        v112 = &v16[16 * v110];
        *(v112 + 4) = v111;
        *(v112 + 5) = v5;
        v135 = v16;
        sub_1909E37B0(v72);
        v16 = v135;
        v69 = *(v135 + 2);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v77 = &v16[16 * v69 + 32];
      v78 = *(v77 - 64);
      v79 = *(v77 - 56);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_118;
      }

      v82 = *(v77 - 48);
      v81 = *(v77 - 40);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_119;
      }

      v84 = &v16[16 * v69];
      v86 = *v84;
      v85 = *(v84 + 1);
      v83 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v83)
      {
        goto LABEL_121;
      }

      v83 = __OFADD__(v75, v87);
      v88 = v75 + v87;
      if (v83)
      {
        goto LABEL_124;
      }

      if (v88 >= v80)
      {
        v106 = &v16[16 * v72 + 32];
        v108 = *v106;
        v107 = *(v106 + 1);
        v83 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v83)
        {
          goto LABEL_128;
        }

        if (v75 < v109)
        {
          v72 = v69 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v14 = v126[1];
    if (v15 >= v14)
    {
      goto LABEL_103;
    }
  }

  v119 = v17;
  v120 = v16;
  v117 = v6;
  v131 = *v126;
  v47 = v131 + 8 * v15 - 8;
  v48 = v17 - v15;
  v49 = &selRef_capStyle;
  v122 = v46;
LABEL_38:
  v124 = v47;
  v125 = v15;
  v50 = v48;
  v51 = *(v131 + 8 * v15);
  v123 = v50;
  v52 = v50;
  while (1)
  {
    v53 = *v47;
    v5 = v51;
    v54 = v53;
    v55 = [v5 v49[93]];
    if (!v55)
    {

LABEL_37:
      v15 = v125 + 1;
      v47 = v124 + 8;
      v48 = v123 - 1;
      if (v125 + 1 != v122)
      {
        goto LABEL_38;
      }

      v15 = v122;
      v6 = v117;
      a1 = v118;
      v17 = v119;
      v16 = v120;
      goto LABEL_50;
    }

    v56 = v55;
    v57 = [v54 v49[93]];
    if (v57)
    {
      v58 = v57;
      v59 = [v56 latestRecoverableMessageDeletionDate];
      v60 = v128;
      sub_190D517E0();

      v61 = [v58 latestRecoverableMessageDeletionDate];
      v62 = v129;
      sub_190D517E0();

      v132 = sub_190D51800();
      v63 = *v127;
      v64 = v130;
      (*v127)(v62, v130);
      v63(v60, v64);

      if (v132 == -1)
      {
        if (!v131)
        {
          break;
        }

        goto LABEL_45;
      }

      v49 = &selRef_capStyle;
      goto LABEL_37;
    }

    if (!v131)
    {
      break;
    }

LABEL_45:
    v65 = *v47;
    v51 = *(v47 + 8);
    *v47 = v51;
    *(v47 + 8) = v65;
    v47 -= 8;
    v66 = __CFADD__(v52++, 1);
    v49 = &selRef_capStyle;
    if (v66)
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_190C1E568(void **a1, void **a2, void **a3, void **a4)
{
  v69 = sub_190D51840();
  v8 = *(v69 - 8);
  v9 = MEMORY[0x1EEE9AC00](v69);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v64 - v11;
  v12 = a2 - a1;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 < v15 >> 3)
  {
    v17 = a1;
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v18 = &a4[v14];
    if (v12 < 8 || (v19 = a2, a2 >= a3))
    {
LABEL_47:
      v38 = v17;
      goto LABEL_49;
    }

    v66 = (v8 + 8);
    v72 = a3;
    v70 = v18;
    while (1)
    {
      v20 = *a4;
      v21 = *v19;
      v22 = v20;
      v23 = [v21 chat];
      if (!v23)
      {
        break;
      }

      v24 = v23;
      v73 = a4;
      v25 = [v22 chat];
      if (v25)
      {
        v26 = v25;
        v27 = [v24 latestRecoverableMessageDeletionDate];
        v28 = v67;
        sub_190D517E0();

        v29 = [v26 latestRecoverableMessageDeletionDate];
        v30 = v68;
        sub_190D517E0();

        v71 = sub_190D51800();
        v31 = v17;
        v32 = *v66;
        v33 = v30;
        v34 = v69;
        v18 = v70;
        (*v66)(v33, v69);
        v35 = v28;
        a3 = v72;
        v32(v35, v34);
        v17 = v31;

        a4 = v73;
        if (v71 != -1)
        {
          goto LABEL_17;
        }
      }

      else
      {

        a4 = v73;
      }

      v36 = v19;
      v37 = v17 == v19++;
      if (!v37)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v17;
      if (a4 >= v18 || v19 >= a3)
      {
        goto LABEL_47;
      }
    }

LABEL_17:
    v36 = a4;
    v37 = v17 == a4++;
    if (v37)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v17 = *v36;
    goto LABEL_19;
  }

  v65 = a1;
  if (a4 != a2 || &a2[v16] <= a4)
  {
    memmove(a4, a2, 8 * v16);
  }

  v18 = &a4[v16];
  if (a3 - a2 < 8)
  {
    goto LABEL_46;
  }

  v38 = a2;
  if (a2 > v65)
  {
    v66 = (v8 + 8);
    v39 = &selRef_capStyle;
    v73 = a4;
    while (1)
    {
      v64 = v38;
      a2 = v38 - 1;
      --a3;
      v40 = v18;
      while (1)
      {
        v41 = *--v40;
        v42 = *a2;
        v43 = v41;
        v44 = v42;
        v45 = v43;
        v46 = v44;
        v47 = [v45 v39[93]];
        if (!v47)
        {

          goto LABEL_39;
        }

        v48 = v47;
        v49 = [v46 v39[93]];
        if (!v49)
        {
          break;
        }

        v50 = v49;
        v51 = [v48 latestRecoverableMessageDeletionDate];
        v71 = v45;
        v72 = a3;
        v52 = v51;
        v53 = v67;
        sub_190D517E0();

        v54 = [v50 latestRecoverableMessageDeletionDate];
        v70 = v46;
        v55 = a2;
        v56 = v18;
        v57 = v68;
        sub_190D517E0();

        v58 = sub_190D51800();
        v59 = *v66;
        v60 = v57;
        v18 = v56;
        a2 = v55;
        v61 = v69;
        (*v66)(v60, v69);
        v62 = v53;
        a3 = v72;
        v59(v62, v61);

        a4 = v73;
        if (v58 == -1)
        {
          goto LABEL_42;
        }

LABEL_39:
        if (a3 + 1 != v18)
        {
          *a3 = *v40;
        }

        --a3;
        v18 = v40;
        v39 = &selRef_capStyle;
        if (v40 <= a4)
        {
          v18 = v40;
          v38 = v64;
          goto LABEL_49;
        }
      }

      a4 = v73;
LABEL_42:
      if (a3 + 1 != v64)
      {
        *a3 = *a2;
      }

      v39 = &selRef_capStyle;
      if (v18 > a4)
      {
        v38 = a2;
        if (a2 > v65)
        {
          continue;
        }
      }

LABEL_46:
      v38 = a2;
      break;
    }
  }

LABEL_49:
  if (v38 != a4 || v38 >= (a4 + ((v18 - a4 + (v18 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v38, a4, 8 * (v18 - a4));
  }

  return 1;
}

uint64_t sub_190C1EB28(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_190D581C0();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_190C1EBCC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&unk_1EAD606D0, &qword_1EAD606C8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD606C8);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_1902188FC(0, &qword_1EAD44E40);
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

uint64_t sub_190C1ED6C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&unk_1EAD606E8, &qword_1EAD606E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD606E0);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_1902188FC(0, &qword_1EAD55560);
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

uint64_t sub_190C1EF0C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&qword_1EAD60788, &qword_1EAD60780);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60780);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_1902188FC(0, &unk_1EAD45090);
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

uint64_t sub_190C1F0AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&qword_1EAD60698, &qword_1EAD60690);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60690);
            v9 = sub_19082FD04(v13, i, a3);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
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

uint64_t sub_190C1F248(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&unk_1EAD60770, &qword_1EAD60768);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60768);
            v9 = sub_19082FD8C(v13, i, a3);
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
        type metadata accessor for TapbackPlatterView();
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

uint64_t sub_190C1F3D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&unk_1EAD606B8, &qword_1EAD606B0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD606B0);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_1902188FC(0, &qword_1EAD46530);
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

uint64_t sub_190C1F578(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&qword_1EAD60760, &qword_1EAD60758);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60758);
            v9 = sub_19082FC84(v13, i, a3);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60750);
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

uint64_t sub_190C1F714(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&qword_1EAD60748, &qword_1EAD60740);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60740);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_1902188FC(0, &qword_1EAD466C8);
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

uint64_t sub_190C1F8B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&qword_1EAD60738, &qword_1EAD60730);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60730);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_1902188FC(0, &qword_1EAD45040);
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

uint64_t sub_190C1FA54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&unk_1EAD60720, &qword_1EAD60718);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60718);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_190D56980();
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

uint64_t sub_190C1FBE4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&unk_1EAD60680, &qword_1EAD5EF20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EF20);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_1902188FC(0, &unk_1EAD60670);
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

uint64_t sub_190C1FD84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&qword_1EAD60710, &unk_1EAD606A0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD606A0);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_1902188FC(0, &qword_1EAD466B0);
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

uint64_t sub_190C1FF24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_190D581C0();
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
      result = sub_190D581C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_190C202A0(&qword_1EAD60700, &qword_1EAD606F8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD606F8);
            v9 = sub_19082FBA0(v13, i, a3);
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
        sub_1902188FC(0, &qword_1EAD466C0);
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

void sub_190C200C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 sharedRegistry];
    v4 = [v3 currentMessageFilterMode];

    v5 = sub_190D57B10();
    if ((v4 & 0x8000000000000000) != 0 || v4 != v5)
    {
      v6 = [v2 sharedRegistry];
      v7 = sub_190D57B10();
      if (v7 < 0)
      {
        __break(1u);
      }

      else
      {
        [v6 setCurrentMessageFilterMode_];

        v8 = [v2 sharedRegistry];
        [v8 clearHistoryAndReloadLastMessageForMergedFilteredChats];
      }
    }
  }
}

uint64_t sub_190C2023C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationEntity();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C202A0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_190C2042C()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v2 = result;
    v3 = [result theme];

    if (v3)
    {
      v4 = [v0 traitCollection];
      v5 = [v4 userInterfaceStyle];

      if (v5 == 2)
      {
        goto LABEL_6;
      }

      if (v5 == 1)
      {
LABEL_8:
        result = [v3 lightBalloonOutlineVibrancyFilter];
        if (result)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }

      if (!v5)
      {
LABEL_6:
        result = [v3 darkBalloonOutlineVibrancyFilter];
        if (result)
        {
LABEL_9:
          v6 = result;

          return v6;
        }

        __break(1u);
        goto LABEL_8;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

id sub_190C205CC(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v26.receiver = v5;
  v26.super_class = type metadata accessor for VibrancyBackgroundLayerView();
  v12 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a2, a3, a4, a5);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 blackColor];
  [v14 setBackgroundColor_];

  if (a1)
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    sub_190A86CA4(v16);
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A87064(v17);

  v18 = sub_190C2042C();
  if (v18)
  {
    v19 = v18;
    sub_190A86CA4(v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_190DD1D90;
  v21 = sub_190D53270();
  v22 = MEMORY[0x1E69DC0F8];
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = ObjectType;
  sub_190D57CE0();

  swift_unknownObjectRelease();

  return v14;
}

void sub_190C207F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
    sub_190A87064(v2);

    v3 = sub_190C2042C();
    if (v3)
    {
      v4 = v3;
      sub_190A86CA4(v3);
    }
  }
}

uint64_t sub_190C208E8(uint64_t a1, uint64_t a2)
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
  v6.super_class = type metadata accessor for VibrancyBackgroundLayerView();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id sub_190C20A50(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DowntimeConversationEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_190D523B0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_1EAD607B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54788);
  swift_allocObject();
  *(v6 + v7) = sub_190D52450();
  (*(v3 + 16))(v5, a1, v2);
  v8 = sub_190D52410();
  (*(v3 + 8))(a1, v2);
  return v8;
}

uint64_t DowntimeConversationEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_190D523B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_1EAD607B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54788);
  swift_allocObject();
  *(v1 + v7) = sub_190D52450();
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_190D52410();
  (*(v4 + 8))(a1, v3);
  return v8;
}

uint64_t DowntimeConversationEntityRepresentation.deinit()
{
  v0 = sub_190D52400();

  return v0;
}

uint64_t DowntimeConversationEntityRepresentation.__deallocating_deinit()
{
  sub_190D52400();

  return swift_deallocClassInstance();
}

uint64_t sub_190C20EE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEC120](a1, a2, WitnessTable);
}

uint64_t sub_190C20F44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEBE30](a1, WitnessTable);
}

uint64_t sub_190C20F98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDEC110](a1, a2, WitnessTable);
}

uint64_t type metadata accessor for DowntimeConversationEntityRepresentation()
{
  result = qword_1EAD60800;
  if (!qword_1EAD60800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190C21220(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DowntimeConversationEntityRepresentation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ShowInContactsButton()
{
  result = qword_1EAD60810;
  if (!qword_1EAD60810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190C2137C()
{
  _s14descr1F03EB3E1C9ViewModelCMa();
  if (v0 <= 0x3F)
  {
    sub_190A41518();
    if (v1 <= 0x3F)
    {
      sub_190D526C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_190C21434@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60820);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v34 - v3;
  v4 = type metadata accessor for ShowInContactsButton();
  v5 = v4 - 8;
  v36 = *(v4 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60828);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v34 - v7;
  v41 = sub_190D52930();
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_190D526C0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2;
  (*(v14 + 16))(v17, v2 + *(v5 + 32), v13, v15);
  if ((*(v14 + 88))(v17, v13) == *MEMORY[0x1E6995738])
  {
    (*(v14 + 96))(v17, v13);
    v19 = v38;
    v20 = *(v38 + 32);
    v21 = v12;
    v35 = v12;
    v22 = v17;
    v23 = v41;
    v20(v12, v22, v41);
    v24 = v37;
    sub_190C21B68(v18, v37);
    (*(v19 + 16))(v9, v21, v23);
    v25 = (*(v36 + 80) + 16) & ~*(v36 + 80);
    v26 = (v6 + *(v19 + 80) + v25) & ~*(v19 + 80);
    v27 = swift_allocObject();
    sub_190C21BCC(v24, v27 + v25);
    v28 = v41;
    v29 = (v20)(v27 + v26, v9, v41);
    MEMORY[0x1EEE9AC00](v29);
    *(&v34 - 2) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60838);
    v46 = MEMORY[0x1E6981148];
    v47 = MEMORY[0x1E6981138];
    swift_getOpaqueTypeConformance2();
    v30 = v39;
    sub_190D56030();
    v31 = v40;
    v32 = v42;
    (*(v40 + 16))(v44, v30, v42);
    swift_storeEnumTagMultiPayload();
    sub_190C21B04();
    sub_190D54C50();
    (*(v31 + 8))(v30, v32);
    return (*(v19 + 8))(v35, v28);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_190C21B04();
    sub_190D54C50();
    return (*(v14 + 8))(v17, v13);
  }
}

id sub_190C219C0()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    sub_19081E484();
    v5 = sub_190D555F0();
    v7 = v6;
    v9 = v8 & 1;
    sub_190D55670();
    sub_19081E474(v5, v7, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_190C21B04()
{
  result = qword_1EAD60830;
  if (!qword_1EAD60830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60830);
  }

  return result;
}

uint64_t sub_190C21B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowInContactsButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C21BCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowInContactsButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_190C21C30()
{
  type metadata accessor for ShowInContactsButton();
  sub_190D52930();

  sub_190B6FA7C();
}

unint64_t sub_190C21D1C()
{
  result = qword_1EAD60840;
  if (!qword_1EAD60840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60848);
    sub_190C21B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60840);
  }

  return result;
}

uint64_t EmojiPreferences.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_190C21DD0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t EmojiPreferences.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

char *sub_190C21E14(uint64_t a1)
{
  v3 = sub_190C22970();
  v4 = [v3 respondsToSelector_];

  if (v4)
  {
    v5 = [*(v1 + 16) recentEmojisByFillingWithPrepopulatedEmojisUpTo_];
    sub_1902188FC(0, &unk_1EAD60850);
    v6 = sub_190D57180();

    if (v6 >> 62)
    {
LABEL_23:
      v7 = sub_190D581C0();
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v9 = MEMORY[0x1E69E7CC0];
        do
        {
          v10 = v8;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x193AF3B90](v10, v6);
            }

            else
            {
              if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v11 = *(v6 + 8 * v10 + 32);
            }

            v12 = v11;
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v13 = [v11 string];
            if (v13)
            {
              break;
            }

            ++v10;
            if (v8 == v7)
            {
              goto LABEL_25;
            }
          }

          v14 = v13;
          v15 = sub_190D56F10();
          v21 = v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1908354D4(0, *(v9 + 2) + 1, 1, v9);
          }

          v18 = *(v9 + 2);
          v17 = *(v9 + 3);
          if (v18 >= v17 >> 1)
          {
            v9 = sub_1908354D4((v17 > 1), v18 + 1, 1, v9);
          }

          *(v9 + 2) = v18 + 1;
          v19 = &v9[16 * v18];
          *(v19 + 4) = v15;
          *(v19 + 5) = v21;
        }

        while (v8 != v7);
        goto LABEL_25;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v9 = MEMORY[0x1E69E7CC0];
LABEL_25:

    return v9;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_190C22028(unint64_t a1, char a2)
{
  v4 = sub_190C22970();
  v5 = [v4 allRecents];

  sub_1902188FC(0, &unk_1EAD60850);
  v6 = sub_190D57180();

  v7 = v6 >> 62;
  if (a2)
  {
    a1 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v7)
    {
LABEL_42:
      v8 = sub_190D581C0();
      if (v8)
      {
LABEL_4:
        v9 = 0;
        v10 = MEMORY[0x1E69E7CC0];
        do
        {
          v11 = v9;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v12 = MEMORY[0x193AF3B90](v11, v6);
            }

            else
            {
              if (v11 >= *(a1 + 16))
              {
                goto LABEL_40;
              }

              v12 = *(v6 + 8 * v11 + 32);
            }

            v13 = v12;
            v9 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              __break(1u);
              goto LABEL_39;
            }

            v14 = [v12 string];
            if (v14)
            {
              break;
            }

            ++v11;
            if (v9 == v8)
            {
              goto LABEL_44;
            }
          }

          v15 = v14;
          v16 = sub_190D56F10();
          v42 = v17;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1908354D4(0, *(v10 + 16) + 1, 1, v10);
          }

          v19 = *(v10 + 16);
          v18 = *(v10 + 24);
          if (v19 >= v18 >> 1)
          {
            v10 = sub_1908354D4((v18 > 1), v19 + 1, 1, v10);
          }

          *(v10 + 16) = v19 + 1;
          v20 = v10 + 16 * v19;
          *(v20 + 32) = v16;
          *(v20 + 40) = v42;
        }

        while (v9 != v8);
        goto LABEL_44;
      }
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_44:

    return v10;
  }

  if (!v7)
  {
    v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_22;
    }

LABEL_46:
    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_47;
  }

  v21 = sub_190D581C0();
  if (!v21)
  {
    goto LABEL_46;
  }

LABEL_22:
  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  do
  {
    v24 = v22;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x193AF3B90](v24, v6);
      }

      else
      {
        if (v24 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v25 = *(v6 + 8 * v24 + 32);
      }

      v26 = v25;
      v22 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v27 = [v25 string];
      if (v27)
      {
        break;
      }

      ++v24;
      if (v22 == v21)
      {
        goto LABEL_47;
      }
    }

    v43 = a1;
    v28 = v27;
    v29 = sub_190D56F10();
    v41 = v30;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1908354D4(0, *(v23 + 2) + 1, 1, v23);
    }

    v32 = *(v23 + 2);
    v31 = *(v23 + 3);
    if (v32 >= v31 >> 1)
    {
      v23 = sub_1908354D4((v31 > 1), v32 + 1, 1, v23);
    }

    *(v23 + 2) = v32 + 1;
    v33 = &v23[16 * v32];
    a1 = v43;
    *(v33 + 4) = v29;
    *(v33 + 5) = v41;
  }

  while (v22 != v21);
LABEL_47:

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v34 = *(v23 + 2);
    if (v34 >= a1)
    {
      v34 = a1;
    }

    v35 = 2 * v34;
    if (a1)
    {
      v6 = v35 + 1;
    }

    else
    {
      v6 = 1;
    }

    sub_190D58780();
    swift_unknownObjectRetain_n();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
      swift_unknownObjectRelease();
      v36 = MEMORY[0x1E69E7CC0];
    }

    v37 = *(v36 + 16);

    if (v37 == v6 >> 1)
    {
      v10 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v10)
      {
        swift_unknownObjectRelease();
        return MEMORY[0x1E69E7CC0];
      }

      return v10;
    }
  }

  swift_unknownObjectRelease();
  sub_190C22C30(v23, (v23 + 32), 0, v6);
  v40 = v39;
  swift_unknownObjectRelease();
  return v40;
}

char *sub_190C22428()
{
  v0 = sub_190C22970();
  v1 = [v0 recentEmojis];

  sub_1902188FC(0, &unk_1EAD60850);
  v2 = sub_190D57180();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_190D581C0();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 string];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = v9;
    v11 = sub_190D56F10();
    v17 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1908354D4(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_1908354D4((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v17;
  }

  while (v4 != v3);
LABEL_23:

  return v5;
}

id sub_190C2260C(void *a1)
{
  v2 = [a1 associatedMessageEmoji];
  if (!v2)
  {
    sub_190D56F10();
    v2 = sub_190D56ED0();
  }

  v3 = [objc_opt_self() emojiTokenWithString:v2 localeData:0];

  if (!v3)
  {
    goto LABEL_14;
  }

  if (![v3 supportsSkinToneVariants])
  {
    goto LABEL_9;
  }

  v4 = sub_190C22970();
  v5 = [v4 hasLastUsedVariantForEmoji_];

  if (v5)
  {
    v6 = [*(v1 + 16) lastUsedVariantEmojiForEmoji_];
    if ([v6 presentationStyle] == 2)
    {
      v7 = v3;

      v6 = v7;
    }

    goto LABEL_10;
  }

  v6 = [v3 copyWithSkinToneVariant_];
  if (!v6)
  {
LABEL_9:
    v6 = v3;
  }

LABEL_10:
  sub_1902188FC(0, &qword_1EAD46500);
  if ((sub_190D57D90() & 1) != 0 || (v8 = [v6 string]) == 0)
  {
    v12 = a1;

    return v12;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(MEMORY[0x1E69A8060]) initWithEmoji:v8 isRemoved:0];

  if (v10)
  {
    return v10;
  }

LABEL_14:

  return a1;
}

id sub_190C22810(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  result = a1;
  v4 = result;
  if (v2)
  {
    v5 = sub_190C2260C(v2);

    return v5;
  }

  return result;
}

id sub_190C2287C(void *a1)
{
  if ([a1 supportsSkinToneVariants])
  {
    v2 = sub_190C22970();
    v3 = [v2 hasLastUsedVariantForEmoji_];

    if (v3)
    {
      v4 = [*(v1 + 16) lastUsedVariantEmojiForEmoji_];
      if ([v4 presentationStyle] != 2)
      {
        return v4;
      }

      v5 = a1;

      return v5;
    }

    result = [a1 copyWithSkinToneVariant_];
    if (result)
    {
      return result;
    }
  }

  return a1;
}

id sub_190C22970()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E699BAE0]) init];
    [v3 readEmojiDefaults];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t EmojiPreferences.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_190C22A44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1902188FC(0, &qword_1EAD44E80);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_190C22B4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        _s10SuggestionCMa(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_190C22C30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_190C22E48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_1902188FC(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_190C22F44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F88);
      v7 = *(sub_190D52260() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_190D52260();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_190C230E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F80);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_190C231BC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_190D581C0();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_190A946E0(v2, 0);
    sub_190D52690();
    v1 = sub_190C83A70(&v5, (v3 + 32), v2, v1);
    sub_190219C78();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

id sub_190C23270()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD55F0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v2 = *&v14[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  v3 = [v2 recipient];
  if (!v3)
  {

LABEL_5:
    v6 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
    goto LABEL_6;
  }

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
  v5 = sub_190D57160();

  v6 = [v4 cnContactWithKeys:v5 shouldFetchSuggestedContact:1];

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  v7 = [v1 viewControllerForNewContact_];
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 getContactStore];

  [v7 setContactStore_];
  [v7 setActions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD608A8);
  sub_190D55210();
  [v7 setDelegate_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  sub_190D55210();

  v11 = *&v14[OBJC_IVAR____TtCV7ChatKit37NewContactViewControllerRepresentable22ContactViewCoordinator_navigationController];
  *&v14[OBJC_IVAR____TtCV7ChatKit37NewContactViewControllerRepresentable22ContactViewCoordinator_navigationController] = v10;
  v12 = v10;

  return v12;
}

id sub_190C23524()
{
  v1 = type metadata accessor for NewContactViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190C23B04(v0, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v4 = v12;
  v5 = type metadata accessor for NewContactViewControllerRepresentable.ContactViewCoordinator(0);
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV7ChatKit37NewContactViewControllerRepresentable22ContactViewCoordinator_navigationController] = 0;
  sub_190C23B04(v3, &v6[OBJC_IVAR____TtCV7ChatKit37NewContactViewControllerRepresentable22ContactViewCoordinator_parent]);
  swift_beginAccess();
  type metadata accessor for DetailsViewConfiguration();
  sub_190C23B68(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v7 = v4;
  sub_190D56340();
  swift_endAccess();
  v11.receiver = v6;
  v11.super_class = v5;
  v8 = objc_msgSendSuper2(&v11, sel_init);

  sub_190C23BB0(v3);
  return v8;
}

id sub_190C23734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NewContactViewControllerRepresentable.ContactViewCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190C2382C()
{
  sub_1908CB130();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_190C23914@<X0>(void *a1@<X8>)
{
  result = sub_190C23524();
  *a1 = result;
  return result;
}

uint64_t sub_190C2393C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190C23B68(&qword_1EAD608B8, type metadata accessor for NewContactViewControllerRepresentable);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190C239D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190C23B68(&qword_1EAD608B8, type metadata accessor for NewContactViewControllerRepresentable);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190C23A64()
{
  sub_190C23B68(&qword_1EAD608B8, type metadata accessor for NewContactViewControllerRepresentable);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_190C23B04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewContactViewControllerRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C23B68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190C23BB0(uint64_t a1)
{
  v2 = type metadata accessor for NewContactViewControllerRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_190C23C0C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_avatarViewButton;
  *&v4[v9] = [objc_allocWithZone(CKAvatarButton) init];
  v10 = OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView;
  type metadata accessor for TranscriptNavigationBarOrnamentView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_conversationTitlePocketInteraction] = 0;
  v4[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_shouldShowAvatarView] = 1;
  v4[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_prefersOrnamentView] = 1;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TranscriptNavigationBarPrincipalView();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_190C23E60();

  return v11;
}

id sub_190C23D44(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_avatarViewButton;
  *&v1[v3] = [objc_allocWithZone(CKAvatarButton) init];
  v4 = OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView;
  type metadata accessor for TranscriptNavigationBarOrnamentView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_conversationTitlePocketInteraction] = 0;
  v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_shouldShowAvatarView] = 1;
  v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_prefersOrnamentView] = 1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TranscriptNavigationBarPrincipalView();
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_190C23E60();
  }

  return v6;
}

void sub_190C23E60()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView];
  v3 = sub_190D56ED0();
  [v2 setAccessibilityIdentifier_];

  v4 = v2[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter];
  v2[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter] = 1;
  if (v4 != 1)
  {
    [v2 ck_applyGlassBackground];
  }

  [v1 addSubview_];
  sub_1908D84D0();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v5;
  v6 = sub_190D57DC0();
  v7 = *&v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_avatarViewButton];
  [v7 addAction:v6 forControlEvents:{64, 0, 0, 0, sub_190C24BAC, v12}];
  v8 = sub_190D56ED0();
  [v7 setAccessibilityIdentifier_];

  sub_1909F21B4(v7);
  [v1 addSubview_];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_190C24BB4;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_110;
  v10 = _Block_copy(aBlock);

  [v7 setConfigurationUpdateHandler_];
  _Block_release(v10);
  v11 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v1 action:sel_handleTap];
  [v1 addGestureRecognizer_];
}

void sub_190C24104()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong handleTap];
  }
}

void sub_190C24160(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v8[4] = sub_190C24BBC;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_190840E6C;
  v8[3] = &block_descriptor_26_0;
  v6 = _Block_copy(v8);
  v7 = a1;
  sub_190D50920();

  [v4 animateWithDuration:v6 animations:0.3];
  _Block_release(v6);
}

void sub_190C24268(void *a1)
{
  v2 = [a1 isHighlighted];
  v3 = 0.3;
  if (!v2)
  {
    v3 = 1.0;
  }

  [a1 setAlpha_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);

    v7 = [a1 isHighlighted];
    v8 = 0.3;
    if (!v7)
    {
      v8 = 1.0;
    }

    [v6 setAlpha_];
  }
}

id sub_190C2434C()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for TranscriptNavigationBarPrincipalView();
  objc_msgSendSuper2(&v25, sel_layoutSubviews);
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = [v5 verticalSizeClass];

  v7 = [v0 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v6 == 1)
  {
    v9 = 44.0;
  }

  else
  {
    v9 = 60.0;
  }

  if (v6 == 1)
  {
    v10 = 34.0;
  }

  else
  {
    v10 = 50.0;
  }

  v11 = 0.0;
  if (v8 == 6)
  {
    v12 = (v4 - v9) * 0.5;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = *&v0[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_avatarViewButton];
  [v13 setFrame_];
  v14 = [v13 layer];
  v15 = [objc_opt_self() bezierPathWithOvalInRect_];
  v16 = [v15 CGPath];

  [v14 setShadowPath_];
  v17 = v0[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_shouldShowAvatarView];
  [v13 setHidden_];
  if (v0[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_prefersOrnamentView] == 1)
  {
    v18 = [v0 traitCollection];
    v19 = [v18 verticalSizeClass];

    v20 = v19 != 2;
  }

  else
  {
    v20 = 1;
  }

  v21 = *&v0[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView];
  [v21 setHidden_];
  if (v17)
  {
    v26.origin.x = (v2 - v9) * 0.5;
    v26.origin.y = v12;
    v26.size.width = v9;
    v26.size.height = v9;
    v11 = CGRectGetMaxY(v26) + -5.0;
  }

  [v21 sizeThatFits_];
  return [v21 setFrame_];
}

void sub_190C2465C(double a1, double a2)
{
  if (v2[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_shouldShowAvatarView] == 1)
  {
    v5 = [v2 traitCollection];
    [v5 verticalSizeClass];

    if (v2[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_prefersOrnamentView] == 1)
    {
      v6 = [v2 traitCollection];
      v7 = [v6 verticalSizeClass];

      if (v7 == 2)
      {
        [*&v2[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView] sizeThatFits_];
      }
    }
  }

  else if (v2[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_prefersOrnamentView] == 1)
  {
    v8 = [v2 traitCollection];
    v9 = [v8 verticalSizeClass];

    if (v9 == 2)
    {
      [*&v2[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView] sizeThatFits_];
    }
  }
}

id sub_190C24864(char a1)
{
  v3 = a1 & 1;
  v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_shouldShowAvatarView] = a1;
  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView];
  v5 = v4[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter];
  v4[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter] = a1;
  if (v5 != v3)
  {
    v6 = &selRef_ck_applyGlassBackground;
    if ((a1 & 1) == 0)
    {
      v6 = &selRef_ck_removeGlassBackground;
    }

    [v4 *v6];
  }

  result = *&v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_conversationTitlePocketInteraction];
  if (result)
  {

    return [result _setStyle_];
  }

  return result;
}

id sub_190C24930()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptNavigationBarPrincipalView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190C249F4(uint64_t a1)
{
  v3 = CKIsRunningInMacCatalyst();
  v4 = *(v1 + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
  v5 = v4[OBJC_IVAR____TtC7ChatKit35TranscriptNavigationBarOrnamentView_showsPlatter];
  if (!v3)
  {
    if (v5)
    {
      return;
    }

    v5 = 0;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD6C8]) initWithScrollView:a1 edge:1 style:v5];
  [v4 addInteraction_];
  v7 = *(v1 + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_conversationTitlePocketInteraction);
  *(v1 + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_conversationTitlePocketInteraction) = v6;
}

uint64_t sub_190C24AB4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result + OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_190C24BC4(unint64_t result)
{
  if (result <= 3)
  {
    v2 = 0x1000001u >> (8 * result);
    sub_190C24864((result & 1) == 0);
    v1[OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_prefersOrnamentView] = v2;

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_190C24C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1902188FC(0, &qword_1EAD44E70);
    v7 = sub_190D57180();
  }

  if (a4)
  {
    a4 = sub_190D57180();
  }

  sub_190D50920();
  v10 = a5;
  v9(a2, v7, a4, v10);
}

id sub_190C24D14()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD608F0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190C24D58()
{
  if (qword_1EAD51F38 != -1)
  {
    swift_once();
  }

  v0 = qword_1EAD608F0;
  v1 = [v0 theme];

  if (v1)
  {
    qword_1EAD608F8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_190C24DE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v0 = *&v28[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  sub_190D56320();
  v1 = *&v28[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  v2 = [objc_allocWithZone(CKGroupRecipientSelectionController) initWithConversation_];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60940);
  sub_190D55210();
  v3 = *&v28[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController];
  *&v28[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController] = v2;
  v4 = v2;

  if (![v0 hasDisplayName])
  {
    v8 = CKFrameworkBundle();
    if (v8)
    {
      v9 = v8;
      v10 = sub_190D56ED0();
      v11 = sub_190D56ED0();
      v5 = [v9 localizedStringForKey:v10 value:0 table:v11];

      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    return;
  }

  v5 = [v0 displayName];
  if (v5)
  {
LABEL_7:
    sub_190D56F10();

    v12 = v4;
    v7 = sub_190D56ED0();

    goto LABEL_8;
  }

  v6 = v4;
  v7 = 0;
LABEL_8:
  [v4 setTitle_];

  v13 = objc_allocWithZone(CKNavigationController);
  v14 = v4;
  v15 = [v13 initWithRootViewController_];
  v16 = [v15 navigationBar];
  if (qword_1EAD51F40 != -1)
  {
    swift_once();
  }

  [v16 setBarStyle_];

  v17 = [v15 navigationBar];
  [v17 setTranslucent_];

  v18 = qword_1EAD51F38;
  v19 = v15;
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setModalPresentationStyle_];
  sub_190D55210();
  v20 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:v28 action:sel_handleCancelAction];

  sub_190D55210();
  v21 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:v28 action:sel_handleDoneAction];

  v22 = [v14 navigationItem];
  v23 = v20;
  [v22 setLeftBarButtonItem_];

  v24 = [v14 navigationItem];
  v25 = v21;
  [v24 setRightBarButtonItem_];

  [v14 setCancelButton_];
  [v14 setDoneButton_];

  v26 = v14;
  sub_190D55210();
  [v26 setDelegate_];

  sub_190D55210();
  v27 = *&v28[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_navigationController];
  *&v28[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_navigationController] = v19;
}

void sub_190C25300(void *a1)
{
  sub_1902188FC(0, &qword_1EAD60930);
  if ([a1 isKindOfClass_])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60940);
    sub_190D55210();
    objc_opt_self();
    v2 = [swift_dynamicCastObjCClassUnconditional() topViewController];
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (!v2)
      {

        v2 = 0;
      }
    }

    v4 = *&v7[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController];
    *&v7[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController] = v2;
  }

  else
  {
    sub_1902188FC(0, &qword_1EAD60938);
    if (![a1 isKindOfClass_])
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60940);
    sub_190D55210();
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = a1;
    }

    v4 = *&v7[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController];
    *&v7[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController] = v5;
  }
}

id sub_190C25490(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController] = 0;
  *&v2[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_navigationController] = 0;
  v4 = OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_conversation;
  *&v2[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_conversation] = 0;
  sub_190C25EFC(a1, &v2[OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_parent]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  v5 = *&v10[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  v6 = *&v2[v4];
  *&v2[v4] = v5;

  v9.receiver = v2;
  v9.super_class = _s36AddRecipientsControllerRepresentableV11CoordinatorCMa(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_190C25F60(a1);
  return v7;
}

void sub_190C25574()
{
  v1 = *(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_navigationController);
    v3 = v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_parent;
    v4 = (v3 + *(_s36AddRecipientsControllerRepresentableVMa(0) + 20));
    v5 = *v4;
    if (*v4)
    {
      v6 = v4[1];
      v11[4] = *v4;
      v11[5] = v6;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_190C24C40;
      v11[3] = &block_descriptor_34_2;
      v7 = _Block_copy(v11);
      v8 = v1;
      v9 = v2;
      sub_19029063C(v5);
    }

    else
    {
      v8 = v1;
      v10 = v2;
      v7 = 0;
    }

    [v8 handleCancelAction:v2 completion:v7];
    _Block_release(v7);
  }
}

void sub_190C256F0()
{
  v1 = *(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_navigationController);
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController);
    if (!v2)
    {
      return;
    }

    v3 = v2;
    goto LABEL_6;
  }

  v2 = *(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_navigationController);
LABEL_6:
    v4 = *(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_conversation);
    v5 = v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_parent;
    v6 = (v5 + *(_s36AddRecipientsControllerRepresentableVMa(0) + 20));
    v7 = *v6;
    if (*v6)
    {
      v8 = v6[1];
      v15[4] = *v6;
      v15[5] = v8;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1107296256;
      v15[2] = sub_190C24C40;
      v15[3] = &block_descriptor_111;
      v9 = _Block_copy(v15);
      v10 = v4;
      v11 = v1;
      v12 = v2;
      sub_19029063C(v7);
    }

    else
    {
      v10 = v4;
      v14 = v1;
      v12 = v2;
      v9 = 0;
    }

    [v12 handleDoneActionForConversation:v10 viewController:v3 completion:v9];

    _Block_release(v9);
    return;
  }

  v13 = v1;
}

id sub_190C25A54()
{
  v2.receiver = v0;
  v2.super_class = _s36AddRecipientsControllerRepresentableV11CoordinatorCMa(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190C25B20()
{
  result = _s36AddRecipientsControllerRepresentableVMa(319);
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

void sub_190C25C04()
{
  sub_1908CB130();
  if (v0 <= 0x3F)
  {
    sub_19081C950();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_190C25CA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190C25EFC(v2, v5);
  v6 = objc_allocWithZone(_s36AddRecipientsControllerRepresentableV11CoordinatorCMa(0));
  result = sub_190C25490(v5);
  *a2 = result;
  return result;
}

uint64_t sub_190C25D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190C25FBC(&qword_1EAD60948, _s36AddRecipientsControllerRepresentableVMa);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190C25DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190C25FBC(&qword_1EAD60948, _s36AddRecipientsControllerRepresentableVMa);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190C25E5C()
{
  sub_190C25FBC(&qword_1EAD60948, _s36AddRecipientsControllerRepresentableVMa);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_190C25EFC(uint64_t a1, uint64_t a2)
{
  v4 = _s36AddRecipientsControllerRepresentableVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190C25F60(uint64_t a1)
{
  v2 = _s36AddRecipientsControllerRepresentableVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190C25FBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_190C26004()
{
  v1 = *(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_addRecipientsController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_navigationController);
    v3 = v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_parent;
    v4 = (v3 + *(_s36AddRecipientsControllerRepresentableVMa(0) + 20));
    v5 = *v4;
    if (*v4)
    {
      v6 = v4[1];
      v11[4] = *v4;
      v11[5] = v6;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 1107296256;
      v11[2] = sub_190C24C40;
      v11[3] = &block_descriptor_37_3;
      v7 = _Block_copy(v11);
      v8 = v1;
      v9 = v2;
      sub_19029063C(v5);
    }

    else
    {
      v8 = v1;
      v10 = v2;
      v7 = 0;
    }

    [v8 handleCancelAction:v2 completion:v7];
    _Block_release(v7);
  }
}

uint64_t sub_190C26138()
{
  v1 = _s36AddRecipientsControllerRepresentableVMa(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190C25EFC(v0 + OBJC_IVAR____TtCVV7ChatKit33DetailsViewParticipantListSection36AddRecipientsControllerRepresentable11Coordinator_parent, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  sub_190D56320();
  sub_190C25F60(v3);
  v4 = v8;
  swift_getKeyPath();
  v8 = v4;
  sub_190C25FBC(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  sub_190D51C20();

  v5 = v4[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isGroupConversation];

  return v5;
}

uint64_t sub_190C26288(double a1)
{
  result = *v1;
  if (__OFSUB__(*v1, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v1 + 2);
  if ((v1[4] & 1) == 0)
  {
    v4 = *(v1 + 3);
    if ((a1 - v3 * (*v1 - 1)) / result < v4)
    {
      v5 = v3 + v4;
      if (v5 > 0.0)
      {
        v6 = (a1 - v3) / v5;
        if (COERCE__INT64(fabs(v6)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v6 > -9.22337204e18)
          {
            if (v6 < 9.22337204e18)
            {
              if (v6 <= 1)
              {
                return 1;
              }

              else
              {
                return v6;
              }
            }

LABEL_15:
            __break(1u);
            return result;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }
  }

  return result;
}

void sub_190C26348(void (**a1)(char *, char *, uint64_t), char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a5;
  v88 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBD0);
  v87 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v70 - v8;
  v89 = sub_190D53DD0();
  v80 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBD8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v17 = sub_190D53ED0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBE0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBE8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  if (a2)
  {
    return;
  }

  v71 = v5;
  v27 = sub_190C26288(*&v88);
  v29 = v28;
  v84 = v27;
  v30 = sub_190823FBC(MEMORY[0x1E69E7CC0]);
  (*(v18 + 16))(v23, v72, v17);
  (*(v18 + 32))(v20, v23, v17);
  v31 = v30;
  sub_1908553A8(&qword_1EAD54820);
  sub_190D57130();
  v73 = *(v24 + 36);
  *&v26[v73] = 0;
  v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54810) + 36);
  v32 = sub_1908553A8(&qword_1EAD54818);
  v83 = 0;
  v74 = (v80 + 16);
  v88 = (v80 + 32);
  v33 = v86;
  v81 = (v87 + 6);
  v82 = (v87 + 7);
  v79 = v29;
  v78 = (v80 + 8);
  v34 = v77;
  v35 = v76;
  v80 = v32;
  while (2)
  {
    v87 = v31;
    while (1)
    {
      sub_190D57530();
      if (*&v26[v85] == v91)
      {
        v36 = 1;
      }

      else
      {
        v37 = sub_190D57560();
        v38 = v75;
        v39 = v89;
        (*v74)(v75);
        v37(&v91, 0);
        sub_190D57540();
        v40 = v7;
        v41 = *(v7 + 48);
        v42 = v83;
        *v33 = v83;
        (*v88)(&v33[v41], v38, v39);
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_48;
        }

        v83 = v44;
        *&v26[v73] = v44;
        v35 = v76;
        sub_19081E40C(v33, v76, &qword_1EAD5EBD0);
        v36 = 0;
        v34 = v77;
        v7 = v40;
        v31 = v87;
      }

      (*v82)(v35, v36, 1, v7);
      sub_19081E40C(v35, v16, &qword_1EAD5EBD8);
      if ((*v81)(v16, 1, v7) == 1)
      {
        sub_190BA22D0(v26);
        sub_190D574F0();
        sub_190D57530();
        v62 = ceil(sub_190D57520() / v84);
        if ((*&v62 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        if (v62 <= -9.22337204e18)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v62 >= 9.22337204e18)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        v63 = v62;
        if (__OFSUB__(v62, 1))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        if ((v63 & 0x8000000000000000) != 0)
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v64 = *(v71 + 8) * (v62 - 1);
        if (!v63)
        {
LABEL_44:

          return;
        }

        v65 = 0;
        v66 = v31[2];
        while (1)
        {
          v67 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            break;
          }

          if (v66 && (v68 = sub_190875CC8(v65), (v69 & 1) != 0))
          {
            v64 = v64 + *(v87[7] + 8 * v68);
            if (v67 == v63)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v64 = v64 + 0.0;
            if (v67 == v63)
            {
              goto LABEL_44;
            }
          }

          ++v65;
          if (v67 >= v63)
          {
            __break(1u);
            goto LABEL_44;
          }
        }

LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v45 = *v16;
      (*v88)(v34, &v16[*(v7 + 48)], v89);
      if (!v84)
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v45 == 0x8000000000000000 && v84 == -1)
      {
        goto LABEL_49;
      }

      LOBYTE(v91) = 0;
      v90 = 1;
      v46 = v45 / v84;
      sub_190D53DB0();
      v48 = v47;
      if (v31[2])
      {
        v49 = sub_190875CC8(v46);
        if (v50)
        {
          break;
        }
      }

      if (v48 > 0.0)
      {
        goto LABEL_17;
      }

LABEL_5:
      (*v78)(v34, v89);
      v33 = v86;
    }

    if (*(v31[7] + 8 * v49) >= v48)
    {
      goto LABEL_5;
    }

LABEL_17:
    LODWORD(v87) = swift_isUniquelyReferenced_nonNull_native();
    v91 = v31;
    v52 = sub_190875CC8(v46);
    v53 = v31[2];
    v54 = (v51 & 1) == 0;
    v55 = v53 + v54;
    if (__OFADD__(v53, v54))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v56 = v51;
    if (v31[3] >= v55)
    {
      if (v87)
      {
        v31 = v91;
        if ((v51 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        v59 = v52;
        sub_190B6A2B0();
        v52 = v59;
        v31 = v91;
        if ((v56 & 1) == 0)
        {
          break;
        }
      }

      goto LABEL_24;
    }

    sub_190B66E30(v55, v87);
    v57 = sub_190875CC8(v46);
    if ((v56 & 1) != (v58 & 1))
    {
      goto LABEL_57;
    }

    v52 = v57;
    v31 = v91;
    if (v56)
    {
LABEL_24:
      *(v31[7] + 8 * v52) = v48;
      (*v78)(v34, v89);
LABEL_28:
      v33 = v86;
      continue;
    }

    break;
  }

  v31[(v52 >> 6) + 8] |= 1 << v52;
  *(v31[6] + 8 * v52) = v46;
  *(v31[7] + 8 * v52) = v48;
  (*v78)(v34, v89);
  v60 = v31[2];
  v43 = __OFADD__(v60, 1);
  v61 = v60 + 1;
  if (!v43)
  {
    v31[2] = v61;
    goto LABEL_28;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  sub_190D587C0();
  __break(1u);
}

void (*sub_190C26D40(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_190D53950();
  return sub_190854AE0;
}

unint64_t sub_190C26DCC()
{
  result = qword_1EAD60950;
  if (!qword_1EAD60950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60950);
  }

  return result;
}

uint64_t sub_190C26E20(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBD0);
  v105 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v12 = v82 - v11;
  v13 = sub_190D53DD0();
  v91 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = v82 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBD8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v97 = v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v95 = v82 - v21;
  v22 = sub_190D53ED0();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBE0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v100 = v82 - v27;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5EBE8);
  MEMORY[0x1EEE9AC00](v104);
  v98 = v82 - v28;
  v112.origin.x = a2;
  v112.origin.y = a3;
  v112.size.width = a4;
  v112.size.height = a5;
  Width = CGRectGetWidth(v112);
  v101 = v5;
  v30 = sub_190C26288(Width);
  v99 = v31;
  v32 = v30;
  v33 = sub_1908553A8(&qword_1EAD54818);
  sub_190D574F0();
  sub_190D57530();
  v103 = v33;
  v34 = ceil(sub_190D57520() / v32);
  if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
  }

  else if (v34 < 9.22337204e18)
  {
    v106 = v22;
    v35 = v34;
    v109 = sub_190823FBC(MEMORY[0x1E69E7CC0]);
    v36 = v100;
    (*(v23 + 16))(v100, a1, v106);
    (*(v23 + 32))(v25, v36, v106);
    sub_1908553A8(&qword_1EAD54820);
    v37 = v98;
    sub_190D57130();
    v83 = *(v104 + 36);
    *(v37 + v83) = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54810);
    v94 = 0;
    v96 = *(v38 + 36);
    v84 = (*&v91 + 16);
    v100 = (*&v91 + 32);
    v93 = (v105 + 56);
    v92 = (v105 + 48);
    v104 = v99;
    v88 = v35 - 1;
    v39 = __OFSUB__(v35, 1);
    v90 = v39;
    v87 = v32 - 1;
    v40 = __OFSUB__(v32, 1);
    v89 = v40;
    v86 = (*&v91 + 8);
    v91 = 0.0;
    v41 = v97;
    v105 = v32;
    v107 = v15;
    v102 = v13;
    v82[1] = a1;
    while (1)
    {
      sub_190D57530();
      if (*(v37 + v96) == v110)
      {
        v42 = 1;
        v43 = v102;
      }

      else
      {
        v44 = v37;
        v45 = sub_190D57560();
        v46 = v85;
        v47 = v108;
        v48 = v102;
        (*v84)(v85);
        v45(&v110, 0);
        sub_190D57540();
        v49 = *(v47 + 48);
        v50 = v94;
        *v12 = v94;
        (*v100)(&v12[v49], v46, v48);
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_55;
        }

        v94 = v52;
        *(v44 + v83) = v52;
        sub_19081E40C(v12, v41, &qword_1EAD5EBD0);
        v42 = 0;
        v37 = v44;
        v43 = v102;
        v32 = v105;
      }

      v53 = v108;
      (*v93)(v41, v42, 1, v108);
      v54 = v95;
      sub_19081E40C(v41, v95, &qword_1EAD5EBD8);
      if ((*v92)(v54, 1, v53) == 1)
      {
        sub_190BA22D0(v37);
      }

      v55 = *v54;
      (*v100)(v107, &v54[*(v108 + 48)], v43);
      LOBYTE(v110) = 0;
      v111 = 1;
      sub_190D53DB0();
      if (!v32)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v57 = v56;
      if (v55 == 0x8000000000000000 && v32 == -1)
      {
        goto LABEL_56;
      }

      if (v90)
      {
        goto LABEL_53;
      }

      if (v89)
      {
        goto LABEL_54;
      }

      sub_190D574F0();
      sub_190D57530();
      v58 = sub_190D57520();
      if (v58 == 0x8000000000000000 && v32 == -1)
      {
        goto LABEL_57;
      }

      v59 = v55 / v32;
      if (v55 / v32 == v88 && v58 % v32 >= 1)
      {
        v113.origin.x = a2;
        v113.origin.y = a3;
        v113.size.width = a4;
        v113.size.height = a5;
        CGRectGetWidth(v113);
        sub_190D54AD0();
        if ((sub_190D54AB0() & 1) == 0)
        {
          sub_190D54AE0();
          sub_190D54AB0();
        }
      }

      v32 = v105;
      v114.origin.x = a2;
      v114.origin.y = a3;
      v114.size.width = a4;
      v114.size.height = a5;
      v60 = v55 - v59 * v105;
      CGRectGetMinX(v114);
      v115.origin.x = a2;
      v115.origin.y = a3;
      v115.size.width = a4;
      v115.size.height = a5;
      CGRectGetMinY(v115);
      sub_190D56660();
      LOBYTE(v110) = 0;
      v111 = 0;
      v61 = v107;
      sub_190D53DC0();
      v62 = v109;
      if (v109[2] && (v63 = sub_190875CC8(v59), v62 = v109, (v64 & 1) != 0))
      {
        if (*(v109[7] + 8 * v63) >= v57)
        {
          goto LABEL_30;
        }
      }

      else if (v57 <= 0.0)
      {
LABEL_30:
        v37 = v98;
        goto LABEL_44;
      }

      v65 = v43;
      v66 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v62;
      v69 = sub_190875CC8(v59);
      v70 = v109[2];
      v71 = (v68 & 1) == 0;
      v72 = v70 + v71;
      if (__OFADD__(v70, v71))
      {
        goto LABEL_58;
      }

      v73 = v68;
      if (v109[3] >= v72)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v62 = v110;
          if ((v68 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          sub_190B6A2B0();
          v62 = v110;
          if ((v73 & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        sub_190B66E30(v72, isUniquelyReferenced_nonNull_native);
        v74 = sub_190875CC8(v59);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_63;
        }

        v69 = v74;
        v62 = v110;
        if ((v73 & 1) == 0)
        {
LABEL_41:
          v62[(v69 >> 6) + 8] |= 1 << v69;
          *(v62[6] + 8 * v69) = v59;
          *(v62[7] + 8 * v69) = v57;
          v76 = v62[2];
          v51 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v51)
          {
            goto LABEL_59;
          }

          v62[2] = v77;
          goto LABEL_43;
        }
      }

      *(v62[7] + 8 * v69) = v57;
LABEL_43:
      v12 = v66;
      v43 = v65;
      v61 = v107;
      v37 = v98;
      v32 = v105;
LABEL_44:
      v109 = v62;
      if (v60 == v87)
      {
        v78 = 0.0;
        if (v62[2])
        {
          v79 = sub_190875CC8(v59);
          if (v80)
          {
            v78 = *(v109[7] + 8 * v79);
          }
        }

        (*v86)(v61, v43);
        v91 = v78 + *(v101 + 8);
      }

      else
      {
        (*v86)(v61, v43);
      }

      v41 = v97;
    }
  }

  __break(1u);
LABEL_63:
  result = sub_190D587C0();
  __break(1u);
  return result;
}

unint64_t sub_190C279CC()
{
  result = qword_1EAD60958;
  if (!qword_1EAD60958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60958);
  }

  return result;
}

unint64_t sub_190C27A24()
{
  result = qword_1EAD60960;
  if (!qword_1EAD60960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60960);
  }

  return result;
}

unint64_t sub_190C27AFC()
{
  result = qword_1EAD60968;
  if (!qword_1EAD60968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60968);
  }

  return result;
}

uint64_t sub_190C27B50()
{
  v0 = sub_190D51460();
  __swift_allocate_value_buffer(v0, qword_1EAD9E4F8);
  __swift_project_value_buffer(v0, qword_1EAD9E4F8);
  return sub_190D51430();
}

uint64_t sub_190C27BB4(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_190D52190();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  sub_190D572A0();
  v1[8] = sub_190D57290();
  v4 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C27CB4, v4, v3);
}

uint64_t sub_190C27CB4()
{

  v1 = [objc_opt_self() sharedRegistry];
  v2 = [v1 cachedChats];

  sub_190C281C4();
  v3 = sub_190D57180();

  if (v3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v29 = v0[5];
    v8 = (v29 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v31 = v3;
    v32 = v0;
    v30 = i;
    v27 = v3 & 0xFFFFFFFFFFFFFF8;
    v28 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v10 = MEMORY[0x193AF3B90](v5, v3);
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_19;
        }

        v10 = *(v3 + 8 * v5 + 32);
      }

      v11 = v10;
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (([v10 allowedByScreenTime] & 1) != 0 || (v13 = objc_msgSend(v11, sel_chatIdentifier)) == 0)
      {
      }

      else
      {
        v33 = v9;
        v15 = v0[6];
        v14 = v0[7];
        v16 = v0[4];
        v17 = v8;
        v18 = v13;
        sub_190D56F10();

        v8 = v17;
        sub_190D52180();

        v19 = *v17;
        v20 = v15;
        v9 = v33;
        (*v17)(v14, v20, v16);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_190836FD4(0, v33[2] + 1, 1, v33);
        }

        v22 = v9[2];
        v21 = v9[3];
        v0 = v32;
        v7 = v27;
        v6 = v28;
        if (v22 >= v21 >> 1)
        {
          v9 = sub_190836FD4(v21 > 1, v22 + 1, 1, v9);
        }

        v23 = v32[7];
        v24 = v32[4];
        v9[2] = v22 + 1;
        v19(v9 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v22, v23, v24);
        i = v30;
        v3 = v31;
      }

      ++v5;
      if (v12 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_22:

  v0[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60980);
  sub_190C28210();
  sub_190D506A0();

  v25 = v0[1];

  return v25();
}

uint64_t sub_190C27FD4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51F48 != -1)
  {
    swift_once();
  }

  v2 = sub_190D51460();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9E4F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190C2807C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA4;

  return sub_190C27BB4(a1);
}

uint64_t sub_190C28114(uint64_t a1)
{
  v2 = sub_190C27AFC();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190C28160()
{
  result = qword_1EAD60970;
  if (!qword_1EAD60970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60970);
  }

  return result;
}

unint64_t sub_190C281C4()
{
  result = qword_1EAD44EE0;
  if (!qword_1EAD44EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD44EE0);
  }

  return result;
}

unint64_t sub_190C28210()
{
  result = qword_1EAD60988;
  if (!qword_1EAD60988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD60980);
    sub_190C28294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60988);
  }

  return result;
}

unint64_t sub_190C28294()
{
  result = qword_1EAD60990;
  if (!qword_1EAD60990)
  {
    sub_190D52190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD60990);
  }

  return result;
}

uint64_t sub_190C282EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_190D58400();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_190D58420();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C28418, 0, 0);
}

uint64_t sub_190C28418()
{
  sub_190D572A0();
  *(v0 + 120) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C284AC, v2, v1);
}

uint64_t sub_190C284AC()
{
  v1 = *(v0 + 40);

  *(v0 + 128) = [v1 deviceIndependentID];

  return MEMORY[0x1EEE6DFA0](sub_190C28534, 0, 0);
}

uint64_t sub_190C28534()
{
  v16 = v0;
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[5];
    v3 = sub_190D56F10();
    v5 = v4;

    v0[17] = v3;
    v0[18] = v5;
    sub_190D58410();
    sub_190D50920();
    sub_190D52690();
    v6 = v2;

    return MEMORY[0x1EEE6DFA0](sub_190C28768, 0, 0);
  }

  else
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v7 = sub_190D53040();
    __swift_project_value_buffer(v7, qword_1EAD9D730);
    v8 = sub_190D53020();
    v9 = sub_190D576A0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_19021D9F8(0xD000000000000032, 0x8000000190E7B450, &v15);
      _os_log_impl(&dword_19020E000, v8, v9, "%s no conversationId", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x193AF7A40](v11, -1, -1);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }

    v12 = v0[1];
    v13 = MEMORY[0x1E69E7CC0];

    return v12(v13);
  }
}

uint64_t sub_190C28768()
{
  v0[19] = sub_190C2B488(&qword_1EAD5B0F8, MEMORY[0x1E69E8820]);
  sub_190D587D0();
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_190C28858;
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];

  return sub_190C29D70(v4, v3, v2);
}

uint64_t sub_190C28858(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    (*(v3[9] + 8))(v3[11], v3[8]);
    v4 = sub_190C28F68;
  }

  else
  {
    v4 = sub_190C28984;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_190C28984()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  sub_190D587D0();
  sub_190C2B488(&qword_1EAD5B100, MEMORY[0x1E69E87E8]);
  sub_190D58440();
  v6 = *(v3 + 8);
  v6(v2, v4);
  v6(v1, v4);

  *(v0 + 184) = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_190C28AB0, 0, 0);
}

uint64_t sub_190C28AB0()
{
  v45 = v2;
  v5 = v2[21];
  v6 = MEMORY[0x1E69E7CC0];
  v44 = MEMORY[0x1E69E7CC0];
  v42 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v4 = 0;
    v8 = (v5 + 40);
    while (v4 < *(v42 + 16))
    {
      v9 = v2[17];
      v1 = v2[18];
      v10 = *v8;
      v43 = *(v8 - 1);
      _s10SuggestionCMa(0);
      v6 = swift_allocObject();
      sub_190D52690();
      sub_190D52690();
      sub_190D50450();
      v11 = (v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt);
      *v11 = 0;
      v11[1] = 0;
      v3 = &OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state;
      *(v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state) = 0;
      *(v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image) = xmmword_190DD9310;
      v12 = (v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_promptGenerationDuration);
      *v12 = sub_190D58930();
      v12[1] = v13;
      v14 = (v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_imageGenerationDuration);
      *v14 = sub_190D58930();
      v14[1] = v15;
      v16 = (v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_conversationId);
      *v16 = v9;
      v16[1] = v1;
      *(v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_index) = v4;
      v17 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state;
      if (!*(v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state))
      {
        v3 = v2[23];
        v41 = v2[24];
        v18 = (v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt);
        v1 = *(v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt + 8);
        *v18 = v43;
        v18[1] = v10;
        sub_190D52690();

        *(v6 + v17) = 1;
        v19 = (v6 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_promptGenerationDuration);
        *v19 = v3;
        v19[1] = v41;
      }

      MEMORY[0x193AF29E0](v20);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_190D571A0();
      }

      ++v4;
      v0 = &v44;
      sub_190D571E0();
      v8 += 2;
      if (v7 == v4)
      {
        v6 = v44;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

LABEL_10:
  v0 = v2[6];

  if (v0 < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    if (v6 < 0)
    {
      v1 = v6;
    }

    else
    {
      v1 = v0;
    }

    v3 = sub_190D581C0();
    result = sub_190D581C0();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v39 = v2[6];
    if (v3 >= v39)
    {
      v40 = v2[6];
    }

    else
    {
      v40 = v3;
    }

    if (v3 < 0)
    {
      v40 = v2[6];
    }

    if (v39)
    {
      v24 = v40;
    }

    else
    {
      v24 = 0;
    }

    if (sub_190D581C0() < v24)
    {
      goto LABEL_55;
    }

    goto LABEL_19;
  }

  v0 = v6 & 0xFFFFFFFFFFFFFF8;
  v4 = v6 >> 62;
  if (v6 >> 62)
  {
    goto LABEL_42;
  }

  v21 = v2[6];
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22 >= v21)
  {
    v23 = v2[6];
  }

  else
  {
    v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v22 < v24)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_19:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_190D52690();
    if (v24)
    {
      _s10SuggestionCMa(0);
      v25 = 0;
      do
      {
        v26 = v25 + 1;
        sub_190D582F0();
        v25 = v26;
      }

      while (v24 != v26);
    }
  }

  else
  {
    sub_190D52690();
  }

  if (v4)
  {
    v0 = sub_190D58550();
    v3 = v27;
    v1 = v28;
    v24 = v29;

    if (v24)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v1 = 0;
    v3 = (v0 + 32);
    v24 = (2 * v24) | 1;
    if (v24)
    {
LABEL_30:
      sub_190D58780();
      swift_unknownObjectRetain_n();
      v35 = swift_dynamicCastClass();
      if (!v35)
      {
        swift_unknownObjectRelease();
        v35 = MEMORY[0x1E69E7CC0];
      }

      v36 = *(v35 + 16);

      if (!__OFSUB__(v24 >> 1, v1))
      {
        if (v36 == (v24 >> 1) - v1)
        {
          v34 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v34)
          {
            swift_unknownObjectRelease();
            v34 = MEMORY[0x1E69E7CC0];
          }

          (*(v2[13] + 8))(v2[14], v2[12]);
          swift_unknownObjectRelease();
          goto LABEL_37;
        }

        goto LABEL_57;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      swift_unknownObjectRelease_n();
    }
  }

  v31 = v2[13];
  v30 = v2[14];
  v32 = v2[12];
  sub_190C22B4C(v0, v3, v1, v24);
  v34 = v33;
  swift_unknownObjectRelease();
  (*(v31 + 8))(v30, v32);
LABEL_37:

  v37 = v2[1];

  return v37(v34);
}

uint64_t sub_190C28F68()
{

  return MEMORY[0x1EEE6DFA0](sub_190C28FF8, 0, 0);
}

uint64_t sub_190C28FF8()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_190C29094(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_190D51EE0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_190D58400();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_190D58420();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C29218, 0, 0);
}

uint64_t sub_190C29218()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state;
  v0[16] = OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_state;
  if (*(v1 + v2) == 1)
  {
    v3 = (v1 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_prompt);
    v4 = v3[1];
    v0[17] = v4;
    if (v4)
    {
      v0[18] = *v3;
      sub_190D52690();
      sub_190D58410();
      sub_190D52690();
      sub_190D50920();

      return MEMORY[0x1EEE6DFA0](sub_190C29390, 0, 0);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  sub_1908D5A00();
  swift_allocError();
  *v6 = v5;
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_190C29390()
{
  *(v0 + 152) = sub_190C2B488(&qword_1EAD5B0F8, MEMORY[0x1E69E8820]);
  sub_190D587D0();

  return MEMORY[0x1EEE6DFA0](sub_190C29448, 0, 0);
}

uint64_t sub_190C29448()
{
  v1 = v0[17];
  sub_190D51ED0();
  v2 = swift_task_alloc();
  v0[20] = v2;
  *v2 = v0;
  v2[1] = sub_190C294F8;
  v3 = v0[18];
  v4 = v0[8];

  return sub_190C2AA5C(v3, v1, v4, 1);
}

uint64_t sub_190C294F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[21] = a1;
  v4[22] = v1;

  (*(v3[7] + 8))(v3[8], v3[6]);
  if (v1)
  {
    v5 = sub_190C29BDC;
  }

  else
  {
    v5 = sub_190C29668;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_190C29668()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);
  sub_190D587D0();
  sub_190C2B488(&qword_1EAD5B100, MEMORY[0x1E69E87E8]);
  sub_190D58440();
  v5 = *(v3 + 8);
  v5(v2, v4);
  v5(v1, v4);
  swift_bridgeObjectRelease_n();

  *(v0 + 184) = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_190C29798, 0, 0);
}

uint64_t sub_190C29798()
{
  v42 = v0;
  v1 = v0[21];
  if (v1 >> 62)
  {
    result = sub_190D581C0();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    v36 = v0[14];
    v35 = v0[15];
    v37 = v0[13];
    sub_1908D5A00();
    swift_allocError();
    *v38 = 2;
    swift_willThrow();
    (*(v36 + 8))(v35, v37);

    v39 = v0[1];

    return v39();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x193AF3B90](0, v0[21]);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[21] + 32);
  }

  v4 = v3;
  if (*(v0[4] + v0[16]) == 1)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
    v6 = v4;
    v7 = [v5 initWithCGImage_];
    v8 = UIImagePNGRepresentation(v7);
    if (v8)
    {
      v9 = v8;
      v10 = sub_190D51670();
      v12 = v11;
    }

    else
    {

      v10 = 0;
      v12 = 0xC000000000000000;
    }

    v13 = v0[23];
    v14 = v0[24];
    v15 = v0[16];
    v16 = v0[4];
    v17 = (v16 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
    v18 = *(v16 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image);
    v19 = *(v16 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_image + 8);
    *v17 = v10;
    v17[1] = v12;
    sub_19029064C(v18, v19);
    *(v16 + v15) = 2;
    v20 = (v16 + OBJC_IVAR____TtCC7ChatKit34ImagePlaygroundSuggestionGenerator10Suggestion_imageGenerationDuration);
    *v20 = v13;
    v20[1] = v14;
  }

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v21 = sub_190D53040();
  __swift_project_value_buffer(v21, qword_1EAD9D730);
  sub_190D50920();
  v22 = sub_190D53020();
  v23 = sub_190D576C0();

  v24 = os_log_type_enabled(v22, v23);
  v25 = v0[14];
  v26 = v0[15];
  v27 = v0[13];
  if (v24)
  {
    v40 = v4;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41[0] = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_19021D9F8(0xD000000000000027, 0x8000000190E7B420, v41);
    *(v28 + 12) = 2080;
    v30 = sub_190C4B378();
    v32 = sub_19021D9F8(v30, v31, v41);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_19020E000, v22, v23, "%s generated suggestion %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v29, -1, -1);
    MEMORY[0x193AF7A40](v28, -1, -1);
  }

  else
  {
  }

  (*(v25 + 8))(v26, v27);
  sub_190D50920();

  v33 = v0[1];
  v34 = v0[4];

  return v33(v34);
}

uint64_t sub_190C29BDC()
{
  (*(v0[10] + 8))(v0[12], v0[9]);

  return MEMORY[0x1EEE6DFA0](sub_190C29C54, 0, 0);
}

uint64_t sub_190C29C54()
{

  swift_bridgeObjectRelease_n();

  return MEMORY[0x1EEE6DFA0](sub_190C29CCC, 0, 0);
}

uint64_t sub_190C29CCC()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_190C29D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_190D52350();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_190D522F0();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_190D522A0();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_190D52310();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD609B0);
  v4[18] = swift_task_alloc();
  v9 = sub_190D52360();
  v4[19] = v9;
  v4[20] = *(v9 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C29FDC, 0, 0);
}

uint64_t sub_190C29FDC()
{
  *(v0 + 176) = type metadata accessor for ImagePlaygroundSuggestionCorpusGenerator();
  sub_190D572A0();
  *(v0 + 184) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190C2A07C, v2, v1);
}

uint64_t sub_190C2A07C()
{
  v1 = v0[18];
  v3 = v0[2];
  v2 = v0[3];

  sub_190BDB310(v3, v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_190C2A104, 0, 0);
}

uint64_t sub_190C2A104()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_190C2B4D0(v3);

    v4 = v0[1];
    v5 = MEMORY[0x1E69E7CC0];

    return v4(v5);
  }

  else
  {
    v8 = v0[16];
    v7 = v0[17];
    v9 = v0[15];
    (*(v2 + 32))(v0[21], v3, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD609B8);
    v10 = sub_190D52340();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_190DD1D90;
    (*(v11 + 104))(v13 + v12, *MEMORY[0x1E69DA020], v10);
    sub_1908AF818(v13);
    swift_setDeallocating();
    (*(v11 + 8))(v13 + v12, v10);
    swift_deallocClassInstance();
    sub_190D52300();
    (*(v8 + 104))(v7, *MEMORY[0x1E69DA000], v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD609C0);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_190DD1D90;
    (*(v8 + 16))(v15 + v14, v7, v9);
    v16 = sub_1908AFB38(v15);
    v0[24] = v16;
    swift_setDeallocating();
    v17 = *(v8 + 8);
    v0[25] = v17;
    v0[26] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v15 + v14, v9);
    swift_deallocClassInstance();
    sub_190D522E0();
    v22 = (*MEMORY[0x1E69D9ED8] + MEMORY[0x1E69D9ED8]);
    v18 = swift_task_alloc();
    v0[27] = v18;
    *v18 = v0;
    v18[1] = sub_190C2A4C8;
    v19 = v0[21];
    v20 = v0[14];
    v21 = v0[11];

    return v22(v20, v19, v16, v21);
  }
}

uint64_t sub_190C2A4C8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 224) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_190C2A97C;
  }

  else
  {
    v5 = sub_190C2A65C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_190C2A65C()
{
  v1 = sub_190D52290();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[7];
    v4 = *(v3 + 16);
    v3 += 16;
    v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v36 = *(v3 + 56);
    v37 = v4;
    v6 = (v3 - 8);
    v7 = MEMORY[0x1E69E7CC0];
    v4(v0[8], v5, v0[6]);
    while (1)
    {
      sub_190D52330();
      v8 = v0[8];
      v9 = v0[6];
      if (v10)
      {

        v11 = sub_190D52320();
        v13 = v12;
        (*v6)(v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_190836FFC(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_190836FFC((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        v16 = &v7[16 * v15];
        *(v16 + 4) = v11;
        *(v16 + 5) = v13;
      }

      else
      {
        (*v6)(v0[8], v0[6]);
      }

      v5 += v36;
      if (!--v2)
      {
        break;
      }

      v37(v0[8], v5, v0[6]);
    }
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_190C2326C(v0[4], v7);
  if ((v19 & 1) == 0)
  {
    goto LABEL_15;
  }

  v23 = v19;
  v24 = v18;
  v25 = v17;
  sub_190D58780();
  swift_unknownObjectRetain_n();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    swift_unknownObjectRelease();
    v26 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v26 + 16);

  if (__OFSUB__(v23 >> 1, v24))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v27 != (v23 >> 1) - v24)
  {
LABEL_27:
    swift_unknownObjectRelease();
    v19 = v23;
    v18 = v24;
    v17 = v25;
LABEL_15:
    sub_190C230E4(v20, v17, v18, v19);
    v22 = v21;
    goto LABEL_22;
  }

  v22 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v22)
  {
    goto LABEL_23;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_22:
  swift_unknownObjectRelease();
LABEL_23:
  v28 = v0[25];
  v30 = v0[20];
  v29 = v0[21];
  v31 = v0[19];
  v32 = v0[17];
  v33 = v0[15];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v28(v32, v33);
  (*(v30 + 8))(v29, v31);

  v34 = v0[1];

  return v34(v22);
}

uint64_t sub_190C2A97C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  (*(v0 + 200))(*(v0 + 136), *(v0 + 120));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_190C2AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_190D51DC0();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60998);
  v5[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD609A0);
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();
  v8 = sub_190D51EC0();
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD609A8);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v10 = sub_190D51F00();
  v5[23] = v10;
  v5[24] = *(v10 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C2ACF0, 0, 0);
}

uint64_t sub_190C2ACF0()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  v4 = v0[18];
  v13 = v0[22];
  v14 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v15 = v0[21];
  v12 = v0[23];
  sub_190D51EF0();
  v0[2] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD560A0);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_190DD1D90;
  (*(v2 + 16))(v8 + v7, v1, v12);
  (*(v5 + 104))(v4, *MEMORY[0x1E696E2A8], v6);
  sub_190D51DD0();

  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v15, v13, v14);
  v0[26] = swift_getOpaqueTypeConformance2();
  sub_190D57380();
  v0[27] = MEMORY[0x1E69E7CC0];
  swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v0[28] = v9;
  *v9 = v0;
  v9[1] = sub_190C2AF44;
  v10 = v0[12];

  return MEMORY[0x1EEE6D8D0](v10, 0, 0);
}

uint64_t sub_190C2AF44()
{

  if (v0)
  {

    v1 = sub_190C2B304;
  }

  else
  {
    v1 = sub_190C2B05C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_190C2B05C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[24];
    v4 = v0[25];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[20];
    v9 = v0[19];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v8 + 8))(v7, v9);
    (*(v5 + 8))(v4, v6);

    v10 = v0[1];
    v11 = v0[27];

    return v10(v11);
  }

  else
  {
    (*(v3 + 32))(v0[11], v1, v2);
    sub_190D51DB0();
    MEMORY[0x193AF29E0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];
    sub_190D571E0();
    (*(v14 + 8))(v13, v15);
    v0[27] = v0[2];
    swift_getAssociatedConformanceWitness();
    v16 = swift_task_alloc();
    v0[28] = v16;
    *v16 = v0;
    v16[1] = sub_190C2AF44;
    v17 = v0[12];

    return MEMORY[0x1EEE6D8D0](v17, 0, 0);
  }
}

uint64_t sub_190C2B304()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[19];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v5 + 8))(v4, v6);
  (*(v1 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_190C2B41C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_190C2B488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190C2B4D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD609B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190C2B54C()
{
  result = qword_1EAD609C8;
  if (!qword_1EAD609C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD609C8);
  }

  return result;
}

void (*sub_190C2B5A0(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_190C31D1C(v8, a2, a3, a4);
  return sub_19090C0F8;
}

void (*sub_190C2B630(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x1E69E7D08];
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
  v5 = sub_190D515F0();
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
  v4[7] = sub_190C31E38(v4, v9);
  return sub_190C2B748;
}

void sub_190C2B748(void *a1)
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

uint64_t sub_190C2B7C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DDD0E0;
  v1 = *MEMORY[0x1E695DBA8];
  *(inited + 32) = *MEMORY[0x1E695DBA8];
  v2 = *MEMORY[0x1E695DC58];
  v3 = *MEMORY[0x1E695DAA0];
  *(inited + 40) = *MEMORY[0x1E695DC58];
  *(inited + 48) = v3;
  v4 = *MEMORY[0x1E695DB78];
  *(inited + 56) = *MEMORY[0x1E695DB78];
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v9 = sub_1908AFE58(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  result = swift_arrayDestroy();
  off_1EAD609D0 = v9;
  return result;
}

uint64_t sub_190C2B8A4()
{
  v0 = sub_190D515F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EAD609D8);
  __swift_project_value_buffer(v0, qword_1EAD609D8);
  v5 = NSTemporaryDirectory();
  sub_190D56F10();

  sub_190D51550();

  sub_190D51590();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190C2B9E4()
{
  v0 = sub_190D515F0();
  __swift_allocate_value_buffer(v0, qword_1EAD609F0);
  __swift_project_value_buffer(v0, qword_1EAD609F0);
  sub_190D56F10();
  sub_190D51540();
}

uint64_t sub_190C2BA60()
{
  v0 = sub_190D515F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EAD60A08);
  __swift_project_value_buffer(v0, qword_1EAD60A08);
  v5 = IMStickerCacheDirectoryURL();
  sub_190D515B0();

  sub_190D515C0();
  (*(v1 + 8))(v3, v0);
  sub_190D51540();
}

uint64_t sub_190C2BBC8(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v5, a2);
  v11 = a3();
  sub_190D515B0();

  return (*(v6 + 32))(v10, v8, v5);
}

uint64_t sub_190C2BCCC()
{
  if (qword_1EAD51F60 != -1)
  {
    swift_once();
  }

  v1 = sub_190D515F0();
  v2 = __swift_project_value_buffer(v1, qword_1EAD609F0);
  v3 = OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (!*(v4 + 16))
  {
    return 0;
  }

  sub_190D52690();
  v5 = sub_190876008(v2);
  if ((v6 & 1) == 0)
  {
LABEL_8:

    return 0;
  }

  v7 = *(v4 + 56) + 168 * v5;
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);

  result = v8 + v9;
  if (__OFADD__(v8, v9))
  {
    __break(1u);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_190C2BDAC()
{
  if (qword_1EAD51F60 != -1)
  {
    swift_once();
  }

  v1 = sub_190D515F0();
  v2 = __swift_project_value_buffer(v1, qword_1EAD609F0);
  v3 = OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (*(v4 + 16))
  {
    sub_190D52690();
    v5 = sub_190876008(v2);
    if (v6)
    {
      v7 = (*(v4 + 56) + 168 * v5);
      v9 = v7[1];
      v8 = v7[2];
      v20 = *v7;
      v21 = v9;
      v22 = v8;
      v10 = v7[3];
      v11 = v7[4];
      v12 = v7[6];
      v25 = v7[5];
      v26 = v12;
      v23 = v10;
      v24 = v11;
      v13 = v7[7];
      v14 = v7[8];
      v15 = v7[9];
      v30 = *(v7 + 20);
      v28 = v14;
      v29 = v15;
      v27 = v13;
      memmove(&__dst, v7, 0xA8uLL);
      sub_190B6A9C4(&v20, v18);

      nullsub_10(&__dst);
      goto LABEL_8;
    }
  }

  sub_190C35D18(&__dst);
LABEL_8:
  v28 = v39;
  v29 = v40;
  v30 = v41;
  v24 = v35;
  v25 = v36;
  v26 = v37;
  v27 = v38;
  v20 = __dst;
  v21 = v32;
  v22 = v33;
  v23 = v34;
  if (sub_190C35D00(&v20) == 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = v33;
  }

  v18[8] = v39;
  v18[9] = v40;
  v19 = v41;
  v18[4] = v35;
  v18[5] = v36;
  v18[6] = v37;
  v18[7] = v38;
  v18[0] = __dst;
  v18[1] = v32;
  v18[2] = v33;
  v18[3] = v34;
  sub_19022EEA4(v18, &qword_1EAD60B10);
  return v16;
}

uint64_t sub_190C2BF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v80 = sub_190D515F0();
  v3 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69 - v9;
  v11 = MEMORY[0x1E69E7CC0];
  v92 = sub_190822234(MEMORY[0x1E69E7CC0]);
  v91 = sub_190822BC4(v11);
  v12 = sub_190822BC4(v11);
  v13 = *(a1 + 64);
  v71 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v70 = (v14 + 63) >> 6;
  v72 = v3 + 32;
  v73 = v3 + 16;
  v77 = v3;
  v78 = a1;
  v79 = (v3 + 8);
  result = sub_190D52690();
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0uLL;
  v22 = 0uLL;
  v23 = 0uLL;
  v24 = 0uLL;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v74 = v10;
  v75 = v7;
  while (1)
  {
    v93 = v12;
    v90 = v20;
    v89 = v21;
    v88 = v19;
    v86 = v23;
    v87 = v26;
    v84 = v28;
    v85 = v27;
    v82 = v25;
    v83 = v24;
    v81 = v22;
    if (!v16)
    {
      break;
    }

    v29 = v18;
LABEL_13:
    v32 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v33 = v32 | (v29 << 6);
    v35 = v77;
    v34 = v78;
    v36 = v76;
    v37 = v80;
    (*(v77 + 16))(v76, *(v78 + 48) + *(v77 + 72) * v33, v80);
    v38 = *(v34 + 56) + 168 * v33;
    v40 = *(v38 + 16);
    v39 = *(v38 + 32);
    v95[0] = *v38;
    v95[1] = v40;
    v95[2] = v39;
    v41 = *(v38 + 96);
    v43 = *(v38 + 48);
    v42 = *(v38 + 64);
    v96[2] = *(v38 + 80);
    v96[3] = v41;
    v96[0] = v43;
    v96[1] = v42;
    v45 = *(v38 + 128);
    v44 = *(v38 + 144);
    v46 = *(v38 + 112);
    v97 = *(v38 + 160);
    v96[5] = v45;
    v96[6] = v44;
    v96[4] = v46;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78);
    v48 = v75;
    v49 = &v75[*(v47 + 48)];
    (*(v35 + 32))(v75, v36, v37);
    v50 = v96[6];
    *(v49 + 8) = v96[5];
    *(v49 + 9) = v50;
    *(v49 + 20) = v97;
    v51 = v96[2];
    *(v49 + 4) = v96[1];
    *(v49 + 5) = v51;
    v52 = v96[4];
    *(v49 + 6) = v96[3];
    *(v49 + 7) = v52;
    v53 = v95[1];
    *v49 = v95[0];
    *(v49 + 1) = v53;
    v54 = v96[0];
    *(v49 + 2) = v95[2];
    *(v49 + 3) = v54;
    v7 = v48;
    (*(*(v47 - 8) + 56))(v48, 0, 1, v47);
    sub_190B6A9C4(v95, &v94);
    v31 = v29;
    v10 = v74;
LABEL_14:
    LOBYTE(v95[0]) = v88 & 1;
    *(v95 + 8) = v89;
    *(&v95[1] + 8) = v81;
    *(&v95[2] + 1) = v92;
    *&v96[0] = v91;
    *(v96 + 8) = v86;
    *(&v96[1] + 8) = v83;
    *(&v96[2] + 8) = v82;
    *(&v96[3] + 8) = v87;
    *(&v96[4] + 8) = v85;
    *(&v96[5] + 8) = v84;
    *(&v96[6] + 1) = v93;
    v97 = v90;
    v112 = v90;
    v111[8] = v96[5];
    v111[9] = v96[6];
    v111[6] = v96[3];
    v111[7] = v96[4];
    v111[4] = v96[1];
    v111[5] = v96[2];
    v111[2] = v95[2];
    v111[3] = v96[0];
    v111[0] = v95[0];
    v111[1] = v95[1];
    sub_190C3294C(v7, v10);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78);
    if ((*(*(v55 - 8) + 48))(v10, 1, v55) == 1)
    {

      v63 = v96[6];
      v64 = v69;
      *(v69 + 128) = v96[5];
      *(v64 + 144) = v63;
      *(v64 + 160) = v97;
      v65 = v96[2];
      *(v64 + 64) = v96[1];
      *(v64 + 80) = v65;
      v66 = v96[4];
      *(v64 + 96) = v96[3];
      *(v64 + 112) = v66;
      v67 = v95[1];
      *v64 = v95[0];
      *(v64 + 16) = v67;
      v68 = v96[0];
      *(v64 + 32) = v95[2];
      *(v64 + 48) = v68;
      return result;
    }

    v56 = &v10[*(v55 + 48)];
    v57 = *(v56 + 9);
    v113[8] = *(v56 + 8);
    v113[9] = v57;
    v114 = *(v56 + 20);
    v58 = *(v56 + 5);
    v113[4] = *(v56 + 4);
    v113[5] = v58;
    v59 = *(v56 + 7);
    v113[6] = *(v56 + 6);
    v113[7] = v59;
    v60 = *(v56 + 1);
    v113[0] = *v56;
    v113[1] = v60;
    v61 = *(v56 + 3);
    v113[2] = *(v56 + 2);
    v113[3] = v61;
    sub_190BAAD74(v111, v113, v98);
    sub_190BAACD4(v95);
    sub_190BAACD4(v113);
    result = (*v79)(v10, v80);
    v20 = v110;
    v12 = v109;
    v26 = v106;
    v27 = v107;
    v28 = v108;
    v23 = v103;
    v24 = v104;
    v25 = v105;
    v91 = v102;
    v92 = v101;
    v22 = v100;
    v21 = v99;
    v18 = v31;
    v19 = v98[0];
  }

  if (v70 <= v18 + 1)
  {
    v30 = v18 + 1;
  }

  else
  {
    v30 = v70;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v29 >= v70)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60A78);
      (*(*(v62 - 8) + 56))(v7, 1, 1, v62);
      v16 = 0;
      goto LABEL_14;
    }

    v16 = *(v71 + 8 * v29);
    ++v18;
    if (v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_190C2C55C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_190D52690();
  sub_190C2BF6C(v4, v10);

  v5 = v11;
  v12 = v11;
  sub_190D52690();
  sub_190BAACD4(v10);
  if (*(v5 + 16) && (v6 = sub_19022DCEC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  sub_19022EEA4(&v12, &qword_1EAD5EC48);
  return v8;
}

uint64_t sub_190C2C64C(char a1, uint64_t a2)
{
  *(v3 + 88) = a2;
  *(v3 + 96) = v2;
  *(v3 + 192) = a1;
  v4 = sub_190D53040();
  *(v3 + 104) = v4;
  *(v3 + 112) = *(v4 - 8);
  *(v3 + 120) = swift_task_alloc();
  v5 = sub_190D521F0();
  *(v3 + 128) = v5;
  *(v3 + 136) = *(v5 - 8);
  *(v3 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C2C76C, 0, 0);
}

uint64_t sub_190C2C76C()
{
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 192);
  v7 = __swift_project_value_buffer(v3, qword_1EAD9E510);
  *(v0 + 152) = v7;
  (*(v2 + 16))(v1, v7, v3);
  sub_190D521A0();
  *(v4 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_didCalculateForCloudKit) = v6;
  v8 = swift_allocObject();
  *(v0 + 160) = v8;
  v8[2] = sub_190C329BC();
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;
  v12 = swift_allocObject();
  *(v0 + 168) = v12;
  v12[2] = sub_190C329BC();
  v12[3] = v13;
  v12[4] = v14;
  v12[5] = v15;
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  *(v16 + 16) = v8;
  *(v16 + 24) = v4;
  *(v16 + 32) = v6;
  *(v16 + 40) = v12;
  *(v16 + 48) = v5;
  v17 = swift_task_alloc();
  *(v0 + 184) = v17;
  *v17 = v0;
  v17[1] = sub_190C2C990;
  v18 = MEMORY[0x1E69E7CA8] + 8;
  v19 = MEMORY[0x1E69E7CA8] + 8;
  v20 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v17, v18, v19, 0, 0, &unk_190DFD928, v16, v20);
}

uint64_t sub_190C2C990()
{

  return MEMORY[0x1EEE6DFA0](sub_190C2CAA8, 0, 0);
}

uint64_t sub_190C2CAA8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[12];
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  swift_beginAccess();
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  sub_190D52690();
  sub_190D52690();
  v12 = sub_190C33098(v4, v5, v6, v7, v8, v9, v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = (v3 + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_countData);
  swift_beginAccess();
  *v19 = v12;
  v19[1] = v14;
  v19[2] = v16;
  v19[3] = v18;

  v20 = sub_190D53020();
  v21 = sub_190D57680();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_19020E000, v20, v21, "Finished Loading...", v22, 2u);
    MEMORY[0x193AF7A40](v22, -1, -1);
  }

  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[16];

  sub_190D521D0();
  (*(v24 + 8))(v23, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_190C2CCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 72) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C2CD50, 0, 0);
}

uint64_t sub_190C2CD50()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 72);
  v3 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = sub_190D572E0();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  sub_190D50920();
  sub_190D50920();
  sub_19022FAC4(v1, &unk_190DFD940, v7);
  sub_19022EEA4(v1, &qword_1EAD5BAF0);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v12;
  *(v8 + 40) = v3;
  *(v8 + 48) = v2;
  *(v8 + 56) = v13;
  sub_190D50920();
  sub_190D50920();
  sub_19022FAC4(v1, &unk_190DFD950, v8);
  sub_19022EEA4(v1, &qword_1EAD5BAF0);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60B08);
  *v9 = v0;
  v9[1] = sub_190C2CF7C;

  return MEMORY[0x1EEE6D898](0, 0, v10);
}

uint64_t sub_190C2CF7C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_190C2D08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_190C2D0B0, 0, 0);
}

uint64_t sub_190C2D0B0()
{
  v1 = *(v0 + 40);
  v2 = sub_190C2D158(*(v0 + 56));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  swift_beginAccess();
  v1[2] = v2;
  v1[3] = v4;
  v1[4] = v6;
  v1[5] = v8;

  v9 = *(v0 + 8);

  return v9();
}

void (**sub_190C2D158(char a1))(uint64_t, uint64_t)
{
  v2 = sub_190D515F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D53040();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D521F0();
  v37 = *(v10 - 8);
  v38 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v6, qword_1EAD9E510);
  (*(v7 + 16))(v9, v13, v6);
  sub_190D521A0();
  v14 = sub_190D53020();
  v15 = sub_190D57680();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = a1 & 1;
    _os_log_impl(&dword_19020E000, v14, v15, "Starting to set counts, isCloudKitEnabled: %{BOOL}d...", v16, 8u);
    MEMORY[0x193AF7A40](v16, -1, -1);
  }

  v17 = sub_190C329BC();
  v36[2] = v19;
  v36[3] = v18;
  if (a1)
  {
    v20 = sub_190C2FF04();

    if (qword_1EAD51F60 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v2, qword_1EAD609F0);
    if (v20[2] && (v22 = sub_190876008(v21), (v23 & 1) != 0))
    {
      v24 = (v20[7] + 168 * v22);
      v26 = v24[1];
      v25 = v24[2];
      v41 = *v24;
      v42 = v26;
      v43 = v25;
      v27 = v24[3];
      v28 = v24[4];
      v29 = v24[6];
      v46 = v24[5];
      v47 = v29;
      v44 = v27;
      v45 = v28;
      v30 = v24[7];
      v31 = v24[8];
      v32 = v24[9];
      v51 = *(v24 + 20);
      v49 = v31;
      v50 = v32;
      v48 = v30;
      memmove(&v52, v24, 0xA8uLL);
      nullsub_10(&v52);
      sub_190B6A9C4(&v41, v39);
    }

    else
    {
      sub_190C35D18(&v52);
    }

    v49 = v60;
    v50 = v61;
    v51 = v62;
    v45 = v56;
    v46 = v57;
    v47 = v58;
    v48 = v59;
    v41 = v52;
    v42 = v53;
    v43 = v54;
    v44 = v55;
    sub_190C35D00(&v41);
    v39[8] = v60;
    v39[9] = v61;
    v40 = v62;
    v39[4] = v56;
    v39[5] = v57;
    v39[6] = v58;
    v39[7] = v59;
    v39[0] = v52;
    v39[1] = v53;
    v39[2] = v54;
    v39[3] = v55;
    sub_19022EEA4(v39, &qword_1EAD60B10);
  }

  else
  {
    if (qword_1EAD51F60 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v2, qword_1EAD609F0);
    (*(v3 + 16))(v5, v33, v2);
    sub_190C33954(&v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v41 = v17;
    sub_190C1CE94(&v52, v5, isUniquelyReferenced_nonNull_native);
    (*(v3 + 8))(v5, v2);
    v20 = v41;
  }

  sub_190D521D0();
  (*(v37 + 8))(v12, v38);
  return v20;
}

uint64_t sub_190C2D7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  return MEMORY[0x1EEE6DFA0](sub_190C2D800, 0, 0);
}

uint64_t sub_190C2D800()
{
  v1 = *(v0 + 40);
  v2 = sub_190C34E74(*(v0 + 56), *(v0 + 48));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  swift_beginAccess();
  v1[2] = v2;
  v1[3] = v4;
  v1[4] = v6;
  v1[5] = v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_190C2D8A8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_190D53040();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_190D521F0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190C2D9C4, 0, 0);
}

uint64_t sub_190C2D9C4()
{
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v3, qword_1EAD9E510);
  (*(v2 + 16))(v1, v4, v3);
  sub_190D521A0();
  result = IMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    *(v0[3] + OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_spaceSavedByAutoDeletingMessages) = result;
    sub_190D521D0();
    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_190C2DB40()
{
  v2 = v0;
  v30[3] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_190D53040();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D521F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_1EAD9E510);
  (*(v7 + 16))(v9, v14, v6);
  sub_190D521A0();
  sub_190D51830();
  v15 = sub_190D51840();
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  v16 = OBJC_IVAR____TtC7ChatKit19StoragePluginCounts_cachedDate;
  swift_beginAccess();
  sub_190C32FD4(v5, v2 + v16);
  swift_endAccess();
  sub_190D50EC0();
  swift_allocObject();
  sub_190D50EB0();
  v30[0] = v2;
  type metadata accessor for StoragePluginCounts();
  sub_190C3696C(&qword_1EAD60B00, type metadata accessor for StoragePluginCounts);
  v17 = sub_190D50EA0();
  if (v1)
  {
  }

  else
  {
    v19 = v17;
    v20 = v18;

    if (qword_1EAD51F58 != -1)
    {
      swift_once();
    }

    v21 = sub_190D515F0();
    __swift_project_value_buffer(v21, qword_1EAD609D8);
    if (sub_190D51500())
    {
      v29 = v10;
      v22 = [objc_opt_self() defaultManager];
      v23 = sub_190D51570();
      v30[0] = 0;
      v24 = [v22 removeItemAtURL:v23 error:v30];

      if (!v24)
      {
        v26 = v30[0];
        sub_190D51420();

        swift_willThrow();
        sub_19083B6D4(v19, v20);
        v10 = v29;
        goto LABEL_12;
      }

      v25 = v30[0];
      v10 = v29;
    }

    sub_190D51690();
    sub_19083B6D4(v19, v20);
  }

LABEL_12:
  sub_190D521D0();
  return (*(v11 + 8))(v13, v10);
}