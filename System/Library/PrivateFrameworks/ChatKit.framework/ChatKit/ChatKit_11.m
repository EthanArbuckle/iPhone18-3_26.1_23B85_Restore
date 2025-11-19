id sub_19089C0C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EAD51CD8 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9E0B8);
  v7 = sub_190D53020();
  v8 = sub_190D576C0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_19020E000, v7, v8, "willPerformPreviewActionForMenuWith", v9, 2u);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  result = [v3 delegate];
  if (result)
  {
    v11 = result;
    if ([result respondsToSelector_])
    {
      [v11 transcriptCollectionViewController:v3 willPerformPreviewActionForMenuWithConfiguration:a1 animator:a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_19089C228(uint64_t a1)
{
  v2 = v1;
  if (qword_1EAD51CD8 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E0B8);
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "accessoriesForContextMenuWith", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  result = [v2 delegate];
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      if (a1)
      {
        v10 = [v9 transcriptCollectionViewController:v2 accessoriesForContextMenuWithConfiguration:a1];
        swift_unknownObjectRelease();
        sub_1902188FC(0, &qword_1EAD55488);
        v11 = sub_190D57180();

        return v11;
      }

      else
      {
        result = swift_unknownObjectRelease();
        __break(1u);
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_19089C3C0(uint64_t a1)
{
  v2 = v1;
  if (qword_1EAD51CD8 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E0B8);
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "styleForContextMenuWith", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  result = [v2 delegate];
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      if (a1)
      {
        v10 = [v9 transcriptCollectionViewController:v2 styleForContextMenuWithConfiguration:a1];
        swift_unknownObjectRelease();
        return v10;
      }

      else
      {
        result = swift_unknownObjectRelease();
        __break(1u);
      }
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

unint64_t sub_19089C534()
{
  result = qword_1EAD554A0;
  if (!qword_1EAD554A0)
  {
    sub_190D51C00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD554A0);
  }

  return result;
}

uint64_t sub_19089C594()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_19089C5F0();
    v1 = v2;
    *(v0 + 24) = v2;
    sub_190D52690();
  }

  sub_190D52690();
  return v1;
}

void sub_19089C5F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_190DD5600;
  v1 = IMBalloonExtensionIDWithSuffix();
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_190D56F10();
  v5 = v4;

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v6 = IMBalloonExtensionIDWithSuffix();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;

  *(v0 + 48) = v8;
  *(v0 + 56) = v10;
  v11 = IMStickersExtensionIdentifier();
  v12 = IMBalloonExtensionIDWithSuffix();

  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = sub_190D56F10();
  v15 = v14;

  *(v0 + 64) = v13;
  *(v0 + 72) = v15;
  v16 = IMBalloonExtensionIDWithSuffix();
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  v18 = sub_190D56F10();
  v20 = v19;

  *(v0 + 80) = v18;
  *(v0 + 88) = v20;
  v21 = IMBalloonExtensionIDWithSuffix();
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v23 = sub_190D56F10();
  v25 = v24;

  *(v0 + 96) = v23;
  *(v0 + 104) = v25;
  v26 = IMBalloonExtensionIDWithSuffix();
  if (v26)
  {
    v27 = v26;
    v28 = sub_190D56F10();
    v30 = v29;

    *(v0 + 112) = v28;
    *(v0 + 120) = v30;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t (*sub_19089C7A4(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = sub_19089C594();
  return sub_190841F7C;
}

uint64_t sub_19089C7EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
  sub_190D52690();
}

uint64_t sub_19089C884(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_19089C91C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  sub_190D52690();
}

uint64_t sub_19089C9B4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t LegacySendMenuOrderProvider.deinit()
{

  return v0;
}

uint64_t LegacySendMenuOrderProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_19089CD0C()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19089CDA4(double a1)
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19089CE9C()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19089CF34(char a1)
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19089D02C()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19089D0C4(char a1)
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_19089D1BC()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_isWidthConstrained;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19089D254(char a1)
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_isWidthConstrained;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_19089D34C()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19089D3E4(double a1)
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_19089D4DC()
{
  v1 = v0 + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_19089D57C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

id TapbackPickerBalloonDisplayConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapbackPickerBalloonDisplayConfiguration.init()()
{
  *&v0[OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX] = 0;
  v0[OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail] = 0;
  v0[OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail] = 1;
  v0[OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_isWidthConstrained] = 0;
  *&v0[OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail] = 0;
  v1 = &v0[OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize];
  v2 = type metadata accessor for TapbackPickerBalloonDisplayConfiguration();
  *v1 = 0;
  v1[1] = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id TapbackPickerBalloonDisplayConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPickerBalloonDisplayConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_19089DBFC()
{
  v1 = [v0 fullScreenBalloonViewController];
  if (!v1)
  {
    v4 = 0;
    goto LABEL_11;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = v3;
  if (!v3)
  {
LABEL_10:

    goto LABEL_11;
  }

  v5 = [v3 pickerBalloonParentView];
  if (!v5)
  {
LABEL_11:
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v12 = sub_190D53040();
    __swift_project_value_buffer(v12, qword_1EAD9D790);
    v13 = sub_190D53020();
    v14 = sub_190D57690();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_19020E000, v13, v14, "Unexpected type for pickerBalloonParentView during entryViewPositioningGuideForCurrentTapbackPickerPresentation.", v15, 2u);
      MEMORY[0x193AF7A40](v15, -1, -1);
    }

    return 0;
  }

  v6 = v5;
  type metadata accessor for TapbackPickerBalloonParentView();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    v2 = v6;
    goto LABEL_10;
  }

  v8 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  v9 = v7;
  swift_beginAccess();
  v10 = *(v9 + v8);
  switch(v10)
  {
    case 0:

      return 0;
    case 2:

      return 3;
    case 1:

      return 1;
    default:
      result = sub_190D58790();
      __break(1u);
      break;
  }

  return result;
}

char *sub_19089DE64(void *a1, id a2)
{
  v5 = [a2 presentedViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

LABEL_6:
    result = [a2 view];
    v9 = result;
    if (result)
    {
      goto LABEL_7;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  result = [v7 view];
  if (!result)
  {
    goto LABEL_17;
  }

  v9 = result;

LABEL_7:
  v10 = [v9 window];
  if (v10)
  {
    v11 = v10;
    v12 = [v9 safeAreaLayoutGuide];
    [v12 layoutFrame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [a2 view];
    [v11 convertRect:v21 fromView:{v14, v16, v18, v20}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
  }

  else
  {
    v23 = 0.0;
    v25 = 0.0;
    v27 = 0.0;
    v29 = 0.0;
  }

  v30 = objc_allocWithZone(type metadata accessor for TapbackPickerContainerAccessoryView());
  v31 = v2;
  v32 = TapbackPickerContainerAccessoryView.init(_:layoutBounds:delegate:)(a1, v2, v23, v25, v27, v29);
  v33 = *&v32[OBJC_IVAR___CKTapbackPickerContainerAccessoryView_pickerBalloonParentView];
  v34 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  if (*(v33 + v34))
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
  }

  v35 = [v31 view];
  if (v35)
  {
    v36 = v35;
    v35 = swift_dynamicCastObjCProtocolConditional();
    if (!v35)
    {

      v35 = 0;
    }
  }

  sub_19092A080(v35);

  return v32;
}

void CKChatController.tapbackPickerBalloonParentView(_:didInsertTapback:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v62 = a2;
  v60 = sub_190D56770();
  v5 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D567A0();
  v61 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D567F0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  v16 = v3;
  [v3 dismissContextMenuInteractionMenu];
  v17 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = &OBJC_IVAR____TtC7ChatKit14DetailsInfoTab___observationRegistrar;
  if (v18)
  {
    v56 = v7;
    v57 = v5;
    v20 = *(v18 + OBJC_IVAR___CKTapbackPickerViewController_ckChatItem);
    v21 = [v20 tapbacksChatItem];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 sentTapbackChatItem];

      if (v23)
      {
        v24 = [v23 tapback];

        if (v24)
        {
          v25 = sub_190900050();
          v27 = v26;
          if (v25 == sub_190900050() && v27 == v28)
          {

            v19 = &OBJC_IVAR____TtC7ChatKit14DetailsInfoTab___observationRegistrar;
            goto LABEL_21;
          }

          v30 = sub_190D58760();

          v19 = &OBJC_IVAR____TtC7ChatKit14DetailsInfoTab___observationRegistrar;
          if (v30)
          {

            goto LABEL_21;
          }
        }
      }
    }

    if (v19[73] != -1)
    {
      swift_once();
    }

    v31 = sub_190D53040();
    __swift_project_value_buffer(v31, qword_1EAD9D790);
    v32 = sub_190D53020();
    v33 = sub_190D576C0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_19020E000, v32, v33, "didInsertTapback: Tapback not already sent. Will begin sending Tapback during orb", v34, 2u);
      MEMORY[0x193AF7A40](v34, -1, -1);
    }

    sub_1902188FC(0, &qword_1EAD46670);
    v35 = sub_190D57870();
    sub_190D567B0();
    sub_190D56820();
    v36 = *(v10 + 8);
    v54 = v9;
    v55 = v36;
    v36(v13, v9);
    v37 = swift_allocObject();
    v38 = v62;
    v37[2] = v16;
    v37[3] = v38;
    v37[4] = v20;
    aBlock[4] = sub_1908A1AE4;
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_190840E6C;
    aBlock[3] = &block_descriptor_18;
    v39 = _Block_copy(aBlock);
    v40 = v20;
    v41 = v16;
    v42 = v38;

    v43 = v58;
    sub_190D56790();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_190840DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
    sub_190840E08();
    v45 = v59;
    v44 = v60;
    sub_190D58170();
    MEMORY[0x193AF30E0](v15, v43, v45, v39);
    _Block_release(v39);

    (*(v57 + 8))(v45, v44);
    (*(v61 + 8))(v43, v56);
    v55(v15, v54);
    v19 = &OBJC_IVAR____TtC7ChatKit14DetailsInfoTab___observationRegistrar;
  }

  else
  {
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v46 = sub_190D53040();
    __swift_project_value_buffer(v46, qword_1EAD9D790);
    v47 = sub_190D53020();
    v48 = sub_190D576A0();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_19020E000, v47, v48, "didInsertTapback: Cannot send tapback on nil ckChatItem from tapbackPickerBalloonParentView during orb", v49, 2u);
      MEMORY[0x193AF7A40](v49, -1, -1);
    }
  }

LABEL_21:
  if (v19[73] != -1)
  {
    swift_once();
  }

  v50 = sub_190D53040();
  __swift_project_value_buffer(v50, qword_1EAD9D790);
  v51 = sub_190D53020();
  v52 = sub_190D576C0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_19020E000, v51, v52, "didInsertTapback: completed during orb", v53, 2u);
    MEMORY[0x193AF7A40](v53, -1, -1);
  }
}

void sub_19089E884(void *a1, uint64_t a2, void *a3)
{
  [a1 sendTapback:a2 chatItem:a3 isRemoval:0];
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D790);
  v5 = a3;
  oslog = sub_190D53020();
  v6 = sub_190D576C0();
  if (!os_log_type_enabled(oslog, v6))
  {

    goto LABEL_8;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v17 = v8;
  *v7 = 136315138;
  v9 = [v5 message];
  if (!v9)
  {

    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 guid];

  if (!v11)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v12 = sub_190D56F10();
  v14 = v13;

  v15 = sub_19021D9F8(v12, v14, &v17);

  *(v7 + 4) = v15;
  _os_log_impl(&dword_19020E000, oslog, v6, "didInsertTapback: did perform send on chatItem.message.guid: %s, during orb", v7, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x193AF7A40](v8, -1, -1);
  MEMORY[0x193AF7A40](v7, -1, -1);
LABEL_8:
}

void CKChatController.tapbackPickerBalloonParentView(_:requestedPresentPlugin:payloadID:)(uint64_t a1, void *a2)
{
  v4 = [v2 inputController];
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      a2 = sub_190D56D60();
    }

    v6 = sub_190D56ED0();
    [v5 _presentPluginIfNecessaryWithPayload_withPayloadID_];
  }
}

uint64_t CKChatController.textInputContextIdentifier(_:)()
{
  v1 = [v0 textInputContextIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_190D56F10();

  return v3;
}

id sub_19089EDE0(void *a1)
{
  v1 = a1;
  v2 = [v1 textInputContextIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_190D56F10();

    v4 = sub_190D56ED0();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

uint64_t sub_19089EE74(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1908A1D34;
  v18 = v4;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_19089F248;
  v16 = &block_descriptor_59;
  v7 = _Block_copy(&v13);
  sub_190D50920();

  v17 = sub_1908A1D3C;
  v18 = v5;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_19084156C;
  v16 = &block_descriptor_62;
  v8 = _Block_copy(&v13);
  sub_190D50920();

  v17 = sub_1908A1D60;
  v18 = v6;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_19084156C;
  v16 = &block_descriptor_65;
  v9 = _Block_copy(&v13);
  sub_190D50920();

  v10 = [v2 buildTapbackMenuElementsForChatItem:a1 sendHandler:v7 emojiKeyboardHandler:v8 detailsHandler:v9];
  _Block_release(v9);
  _Block_release(v8);
  _Block_release(v7);
  sub_1902188FC(0, &unk_1EAD45090);
  v11 = sub_190D57180();

  return v11;
}

void sub_19089F104(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong collectionView];

    [v8 setNeedsContentOffsetAdjustmentForNextContentSizeChange];
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = a3 & 1;
    v11 = v9;
    [v9 sendTapback:a1 chatItem:a2 isRemoval:v10];
  }
}

void sub_19089F1DC(uint64_t a1, uint64_t a2, const char **a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *a3;
    v7 = Strong;
    [Strong v6];
  }
}

void sub_19089F248(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  sub_190D50920();
  v9 = a2;
  v8 = a3;
  v7(v9, v8, a4);
}

id sub_19089F36C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  if ([v8 shouldShowTapbackPickerForChatItem_])
  {
    sub_19089F6F4(a1, a2, a3);
    MEMORY[0x193AF29E0]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    sub_19089FA08(a1, a2, a3, a4, a5);
    MEMORY[0x193AF29E0]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    v16 = v28;
  }

  if (![v8 shouldShowFullScreenAcknowledgmentPickerForChatItem_])
  {
    return v16;
  }

  sub_1902188FC(0, &qword_1EAD464F0);
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a1;
  v18 = a1;
  sub_19029063C(a6);
  v27 = v17;
  v19 = sub_190D57DC0();
  result = CKFrameworkBundle();
  if (result)
  {
    v21 = result;
    v22 = sub_190D56ED0();
    v23 = sub_190D56ED0();
    v24 = [v21 localizedStringForKey:v22 value:0 table:{v23, 0, 0, 0, sub_1908A1DE4, v27}];

    if (!v24)
    {
      sub_190D56F10();
      v24 = sub_190D56ED0();
    }

    [v19 setTitle_];

    v25 = sub_190D56ED0();
    v26 = [objc_opt_self() _systemImageNamed_];

    [v19 setImage_];
    MEMORY[0x193AF29E0]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    sub_190D571E0();
    return v28;
  }

  __break(1u);
  return result;
}

id sub_19089F6F4(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() classicTapbackOptions];
  sub_1902188FC(0, &qword_1EAD53BB8);
  v7 = sub_190D57180();

  if (v7 >> 62)
  {
    sub_1902188FC(0, &qword_1EAD55560);
    sub_190D52690();
    v8 = sub_190D58530();
  }

  else
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &qword_1EAD55560);
    v8 = v7;
  }

  v9 = sub_1908A0038(v8, a1, a2, a3);

  v17 = v9;
  if (!*MEMORY[0x1E69DDA98])
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *MEMORY[0x1E69DDA98];

  v12 = [v11 userInterfaceLayoutDirection];

  if (v12 == 1)
  {
    sub_1908A09F4();
  }

  if (!CKIsRunningInMacCatalyst())
  {
    goto LABEL_9;
  }

  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = sub_190D56ED0();
  v15 = sub_190D56ED0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  sub_190D56F10();
LABEL_9:
  if (v17 >> 62)
  {
    sub_1902188FC(0, &unk_1EAD45090);
    sub_190D52690();
    sub_190D58530();
  }

  else
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &unk_1EAD45090);
  }

  sub_1902188FC(0, &unk_1EAD44ED0);
  return sub_190D57C90();
}

id sub_19089FA08(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1908A0BA4(a1);
  v28 = sub_1908A0038(v10, a1, a2, a3);
  sub_1902188FC(0, &qword_1EAD464F0);
  v11 = swift_allocObject();
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a1;
  sub_19029063C(a4);
  v12 = a1;
  v13 = sub_190D57DC0();
  v14 = sub_190D56ED0();
  v15 = [objc_opt_self() _systemImageNamed_];

  [v13 setImage_];
  if (CKIsRunningInMacCatalyst())
  {
    result = CKFrameworkBundle();
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v17 = result;
    v18 = sub_190D56ED0();
    v19 = sub_190D56ED0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

    sub_190D56F10();
  }

  v21 = sub_190D56ED0();

  [v13 setTitle_];

  MEMORY[0x193AF29E0]();
  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  result = sub_190D571E0();
  if (!*MEMORY[0x1E69DDA98])
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = *MEMORY[0x1E69DDA98];

  v23 = [v22 userInterfaceLayoutDirection];

  if (v23 == 1)
  {
    sub_1908A09F4();
  }

  if (!CKIsRunningInMacCatalyst())
  {
    goto LABEL_12;
  }

  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v24 = result;
  v25 = sub_190D56ED0();
  v26 = sub_190D56ED0();
  v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

  sub_190D56F10();
LABEL_12:
  if (v28 >> 62)
  {
    sub_1902188FC(0, &unk_1EAD45090);
    sub_190D52690();
    sub_190D58530();
  }

  else
  {
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &unk_1EAD45090);
  }

  sub_1902188FC(0, &unk_1EAD44ED0);
  return sub_190D57C90();
}

uint64_t sub_1908A0038(unint64_t a1, void *a2, uint64_t a3, void *a4)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [v4 currentTopChatItemForAggregateChatItem_];
  }

  else
  {
    v9 = a2;
  }

  v10 = v9;
  v11 = [v9 tapbacksChatItem];
  v12 = [v11 sentTapbackChatItem];

  v13 = [v12 tapback];
  v82 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v15 = 0;
    sub_1902188FC(0, &qword_1EAD464F0);
    v72 = a1 & 0xC000000000000001;
    v65 = a1 & 0xFFFFFFFFFFFFFF8;
    v68 = v10;
    v69 = a1;
    v70 = i;
    v71 = v13;
    v64 = a4;
    while (1)
    {
      if (v72)
      {
        v16 = MEMORY[0x193AF3B90](v15, a1);
      }

      else
      {
        if (v15 >= *(v65 + 16))
        {
          goto LABEL_51;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v18 = sub_190900050();
      v20 = v19;
      v75 = v15 + 1;
      if (v13)
      {
        v21 = v18;
        v22 = v13;
        a1 = sub_190900050();
        v24 = v23;

        if (v21 == a1 && v20 == v24)
        {
          v25 = 1;
        }

        else
        {
          v25 = sub_190D58760();
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = swift_allocObject();
      *(v26 + 16) = a3;
      *(v26 + 24) = a4;
      *(v26 + 32) = v17;
      *(v26 + 40) = v10;
      v74 = v25;
      *(v26 + 48) = v25 & 1;
      sub_19029063C(a3);
      v27 = v17;
      v28 = v10;
      v63 = v26;
      v13 = sub_190D57DC0();
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        v30 = v29;
        v31 = objc_allocWithZone(type metadata accessor for TapbackStickerView());
        v32 = v27;
        v10 = [v31 init];
        [v10 configureForTapback:v30 isSelected:0];
        v33 = [*(&v10->isa + OBJC_IVAR___CKTapbackStickerView_contentView) image];
        if (v33)
        {
          v34 = v33;
        }

        else
        {
          v43 = *(&v10->isa + OBJC_IVAR___CKTapbackStickerView_animatedImage);
          if (!v43)
          {
            goto LABEL_38;
          }

          v44 = [v43 frames];
          sub_1902188FC(0, &qword_1EAD44EB0);
          v45 = sub_190D57180();

          if (v45 >> 62)
          {
            if (!sub_190D581C0())
            {
LABEL_37:

LABEL_38:
              if (qword_1EAD46248 != -1)
              {
                swift_once();
              }

              v53 = sub_190D53040();
              __swift_project_value_buffer(v53, qword_1EAD9D790);
              v54 = sub_190D53020();
              v55 = sub_190D57680();
              if (os_log_type_enabled(v54, v55))
              {
                v56 = v28;
                v57 = swift_slowAlloc();
                *v57 = 0;
                _os_log_impl(&dword_19020E000, v54, v55, "Asked the tapbackStickerView for its image. It did not have one. Possible call timing issue?", v57, 2u);
                v58 = v57;
                v28 = v56;
                MEMORY[0x193AF7A40](v58, -1, -1);
              }

              v10 = v54;
              goto LABEL_43;
            }
          }

          else if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          if ((v45 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x193AF3B90](0, v45);
          }

          else
          {
            if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v46 = *(v45 + 32);
          }

          v47 = v46;

          v34 = v47;
        }

        v35 = v34;
        [v13 setImage_];
      }

      else
      {
        v67 = v28;
        objc_opt_self();
        v36 = swift_dynamicCastObjCClass();
        if (v36)
        {
          v37 = v36;
          v66 = v27;
          v38 = _s7ChatKit16TapbackViewUtilsC4view3for10isSelectedSo09CKTapbackD8Protocol_So6UIViewCXcSo9IMTapbackCSg_SbtFZ_0(v37, 0);
          [v38 setFrame_];
          v39 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
          v40 = swift_allocObject();
          *(v40 + 16) = 0x40297FFFFFFFFFF8;
          *(v40 + 24) = v38;
          v41 = swift_allocObject();
          *(v41 + 16) = sub_1908A1DF0;
          *(v41 + 24) = v40;
          v80 = sub_1908986D0;
          v81 = v41;
          aBlock = MEMORY[0x1E69E9820];
          v77 = 1107296256;
          v78 = sub_190233A24;
          v79 = &block_descriptor_51;
          a4 = _Block_copy(&aBlock);
          a1 = v81;
          v42 = v38;
          sub_190D50920();

          v10 = [v39 imageWithActions_];

          _Block_release(a4);
          LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

          if (v42)
          {
            goto LABEL_52;
          }

          [v13 setImage_];
        }

        else
        {
          v48 = _s7ChatKit16TapbackViewUtilsC4view3for10isSelectedSo09CKTapbackD8Protocol_So6UIViewCXcSo9IMTapbackCSg_SbtFZ_0(v27, 0);
          [v48 setFrame_];
          v49 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
          v50 = swift_allocObject();
          *(v50 + 16) = 0;
          *(v50 + 24) = v48;
          v51 = swift_allocObject();
          *(v51 + 16) = sub_1908A1D28;
          *(v51 + 24) = v50;
          v80 = sub_190233AFC;
          v81 = v51;
          aBlock = MEMORY[0x1E69E9820];
          v77 = 1107296256;
          v78 = sub_190233A24;
          v79 = &block_descriptor_40;
          a1 = _Block_copy(&aBlock);
          a4 = v81;
          v52 = v48;
          sub_190D50920();

          v10 = [v49 imageWithActions_];

          _Block_release(a1);
          LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

          if (v49)
          {
            goto LABEL_53;
          }

          [v13 setImage_];
        }

        a4 = v64;
        v28 = v67;
      }

LABEL_43:

      if (CKIsRunningInMacCatalyst())
      {
        sub_1908C04C4();
      }

      v10 = v68;
      a1 = v69;
      v59 = sub_190D56ED0();

      [v13 setTitle_];

      [v13 setState_];
      v60 = v13;
      MEMORY[0x193AF29E0]();
      if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();

      ++v15;
      v13 = v71;
      if (v75 == v70)
      {
        v61 = v82;

        return v61;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1908A09F4()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x193AF3B90](v4, v1);
          v10 = MEMORY[0x193AF3B90](v2 - 1, v1);
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v2 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_190A5E100(v1);
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = sub_190A5E100(v1);
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v2;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v2 - 2;
        --v2;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!sub_190D581C0())
      {
        return;
      }

      v2 = sub_190D581C0();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

void sub_1908A0BA4(void *a1)
{
  type metadata accessor for TapbackPickerContentProvider();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  swift_unknownObjectWeakInit();
  *(inited + 24) = &off_1F04135B8;
  swift_unknownObjectWeakAssign();
  sub_190A2C6F8(a1);
  v4 = v3;
  v5 = objc_opt_self();
  v6 = [a1 serviceName];
  v7 = [v5 allMessageAcknowledgmentDescriptorsWithServiceName_];

  if (!v7)
  {
    __break(1u);
    return;
  }

  sub_1902188FC(0, &qword_1EAD55558);
  v8 = sub_190D57180();

  if (v8 >> 62)
  {
    v9 = sub_190D581C0();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v6 = (v4 >> 62);
    if (!(v4 >> 62))
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v12 = sub_190D581C0();
LABEL_7:
  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v14 < 1)
  {

    swift_setDeallocating();
    sub_19024C978(inited + 16);
    return;
  }

  v8 = v13;
  if (__OFADD__(v14, 1))
  {
    goto LABEL_44;
  }

  if (v6)
  {
    if (v4 < 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_190D581C0() < 0)
    {
      goto LABEL_47;
    }

    v15 = sub_190D581C0();
  }

  else
  {
    v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 < v13)
  {
    goto LABEL_45;
  }

  if (v13 < 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    sub_1902188FC(0, &qword_1EAD55560);
    sub_190D52690();
    v16 = 0;
    do
    {
      v17 = v16 + 1;
      sub_190D582F0();
      v16 = v17;
    }

    while (v13 != v17);
  }

  else
  {
    sub_190D52690();
  }

  if (v6)
  {
    v11 = sub_190D58550();
    v13 = v18;
    v6 = v19;
    v8 = v20;

    if (v8)
    {
      goto LABEL_33;
    }

LABEL_32:
    sub_190C22B38(v11, v13, v6, v8);

    swift_unknownObjectRelease();
    return;
  }

  v11 = v4 & 0xFFFFFFFFFFFFFF8;
  v13 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v8 = (2 * v8) | 1;
  if ((v8 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  sub_190D58780();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v8 >> 1, v6))
  {
    goto LABEL_48;
  }

  if (v22 != (v8 >> 1) - v6)
  {
LABEL_49:
    swift_unknownObjectRelease_n();
    goto LABEL_32;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v23)
  {
    swift_unknownObjectRelease();
  }
}

void sub_1908A0F40(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 transcriptBackground];
  if (v6)
  {
    v7 = v6;
    v8 = [a2 IMChatItem];
    if (!v8)
    {
      __break(1u);
LABEL_15:

      __break(1u);
      goto LABEL_16;
    }

    v9 = v8;
    v10 = [v8 guid];

    [v7 didAddTapbackToChatItemWithGUID_];
    swift_unknownObjectRelease();
  }

  v11 = [a1 collectionView];
  [v11 setNeedsContentOffsetAdjustmentForNextContentSizeChange];

  [a1 sendTapback:a3 chatItem:a2 isRemoval:0];
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v12 = sub_190D53040();
  __swift_project_value_buffer(v12, qword_1EAD9D790);
  v7 = a2;
  oslog = sub_190D53020();
  v13 = sub_190D576C0();
  if (!os_log_type_enabled(oslog, v13))
  {

    goto LABEL_11;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v24 = v15;
  *v14 = 136315138;
  v16 = [v7 message];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = v16;
  v18 = [v16 guid];

  if (!v18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v19 = sub_190D56F10();
  v21 = v20;

  v22 = sub_19021D9F8(v19, v21, &v24);

  *(v14 + 4) = v22;
  _os_log_impl(&dword_19020E000, oslog, v13, "didSelectTapback: did perform send on chatItem.message.guid: %s, during orb", v14, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v15);
  MEMORY[0x193AF7A40](v15, -1, -1);
  MEMORY[0x193AF7A40](v14, -1, -1);
LABEL_11:
}

uint64_t sub_1908A1278(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v33 = a3;
  v34 = a2;
  v6 = v5;
  v37 = sub_190D56770();
  v40 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D567A0();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_190D567F0();
  v32 = v13;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - v18;
  v20 = *(a1 + OBJC_IVAR___CKTapbackPickerViewController_ckChatItem);
  [v6 dismissContextMenuInteractionMenu];
  sub_1902188FC(0, &qword_1EAD46670);
  v21 = sub_190D57870();
  sub_190D567B0();
  sub_190D56820();
  v31 = *(v14 + 8);
  v31(v17, v13);
  v22 = swift_allocObject();
  v22[2] = v6;
  v22[3] = v20;
  v24 = v34;
  v23 = v35;
  v22[4] = v34;
  aBlock[4] = v23;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = v36;
  v25 = _Block_copy(aBlock);
  v26 = v20;
  v27 = v6;
  v28 = v24;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  v29 = v37;
  sub_190D58170();
  MEMORY[0x193AF30E0](v19, v12, v9, v25);
  _Block_release(v25);

  (*(v40 + 8))(v9, v29);
  (*(v38 + 8))(v12, v39);
  return (v31)(v19, v32);
}

void sub_1908A162C(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 transcriptBackground];
  if (v6)
  {
    v7 = v6;
    v8 = [a2 IMChatItem];
    if (!v8)
    {
      __break(1u);
LABEL_15:

      __break(1u);
      goto LABEL_16;
    }

    v9 = v8;
    v10 = [v8 guid];

    [v7 didRemoveTapbackFromChatItemWithGUID_];
    swift_unknownObjectRelease();
  }

  [a1 sendTapback:a3 chatItem:a2 isRemoval:1];
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v11 = sub_190D53040();
  __swift_project_value_buffer(v11, qword_1EAD9D790);
  v7 = a2;
  oslog = sub_190D53020();
  v12 = sub_190D576C0();
  if (!os_log_type_enabled(oslog, v12))
  {

    goto LABEL_11;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v23 = v14;
  *v13 = 136315138;
  v15 = [v7 message];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v15 guid];

  if (!v17)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v18 = sub_190D56F10();
  v20 = v19;

  v21 = sub_19021D9F8(v18, v20, &v23);

  *(v13 + 4) = v21;
  _os_log_impl(&dword_19020E000, oslog, v12, "didDeselectTapback: did perform send on chatItem.message.guid: %s, during orb", v13, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v14);
  MEMORY[0x193AF7A40](v14, -1, -1);
  MEMORY[0x193AF7A40](v13, -1, -1);
LABEL_11:
}

void __swiftcall CKChatController.chatItemForTapbackPicker()(CKMessagePartChatItem_optional *__return_ptr retstr)
{
  v2 = [v1 clickyOrbChatItem];

  v3 = v2;
}

uint64_t CKChatController.contextualCKChatItemsForTapbackPickerViewController(_:)()
{
  v1 = [v0 contextualChatItemsForTapbackPicker];
  sub_1902188FC(0, &qword_1EAD450F0);
  v2 = sub_190D57180();

  return v2;
}

void _sSo16CKChatControllerC7ChatKitE53tapbackPickerBalloonParentViewRequestedAppCardDismissyyAC07TapbackfghI0CF_0()
{
  v1 = [v0 inputController];
  if (v1)
  {
    v3 = v1;
    if ([v1 hasStickerReactionSession])
    {
    }

    else
    {
      aBlock[4] = nullsub_10;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_190840E6C;
      aBlock[3] = &block_descriptor_68;
      v2 = _Block_copy(aBlock);
      [v3 dismissAppCardIfNecessaryAnimated:1 completion:v2];
      _Block_release(v2);
    }
  }
}

uint64_t objectdestroyTm_3()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_24Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1908A1CC0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t sub_1908A1CF0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  }

  return result;
}

char *sub_1908A1E50(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_190D581C0();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_19082DE18(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x193AF3B90](i, a1);
        sub_1902188FC(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_19082DE18((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_190824530(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_1902188FC(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_19082DE18((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_190824530(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1908A2084(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  v20[1] = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_19082DEC0(0, v12, 0);
    v13 = v24;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_1908A6764(v14, v11, a3);
      v24 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_19082DEC0((v16 > 1), v17 + 1, 1);
        v13 = v24;
      }

      v22 = v8;
      v23 = sub_1908A67CC(a4, a3);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      sub_1908A6764(v11, boxed_opaque_existential_1, a3);
      *(v13 + 16) = v17 + 1;
      sub_19029058C(&v21, v13 + 40 * v17 + 32);
      sub_1908A6814(v11, a3);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_1908A223C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_19082DF00(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD555C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD555D0);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_19082DF00((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1908A2370(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_19082DE18(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {
      sub_190D52690();
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_19082DE18((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_190824530(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1908A2500(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1902188FC(0, &qword_1EAD44E30);
    sub_190D52690();
    v1 = sub_190D58530();
  }

  else
  {
    v1 = a1;
    sub_190D52690();
    sub_190D58770();
    sub_1902188FC(0, &qword_1EAD44E30);
  }

  return v1;
}

uint64_t sub_1908A25BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_190D581C0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_19082DBB4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193AF3B90](0, a1);
    }

    else
    {
      v4 = *(a1 + 32);
    }

    result = sub_190D56EF0();
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall NSAttributedString.ck_containsNSTextAnimations()()
{
  v8 = 0;
  v6[2] = &v8;
  v1 = [v0 length];
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1908A2858;
  *(v2 + 24) = v6;
  aBlock[4] = sub_1908A62F4;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1908A2B98;
  aBlock[3] = &block_descriptor_19;
  v3 = _Block_copy(aBlock);
  sub_190D50920();

  [v0 ck:0 enumerateTextAnimationsIn:v1 options:0 using:v3];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

BOOL sub_1908A286C(void *a1)
{
  v1 = a1;
  v2 = NSAttributedString.ck_containsNSTextAnimations()();

  return v2;
}

Swift::Bool __swiftcall NSAttributedString.ck_containsStaleEntryViewFont()()
{
  if ([v0 length] < 1)
  {
    return 0;
  }

  v1 = [v0 length];
  sub_1908A631C();
  v3 = v2;
  v12 = 0;
  v4 = *MEMORY[0x1E69DB648];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1908A657C;
  *(v6 + 24) = v5;
  aBlock[4] = sub_19023C3E4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19023C344;
  aBlock[3] = &block_descriptor_9_2;
  v7 = _Block_copy(aBlock);
  sub_190D50920();

  [v0 enumerateAttribute:v4 inRange:0 options:v1 usingBlock:{0, v7}];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v10 = v12;

    return v10;
  }

  __break(1u);
  return result;
}

void sub_1908A2A58(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, _BYTE *a6)
{
  sub_19023C414(a1, v10);
  if (v11)
  {
    sub_1902188FC(0, &qword_1EAD46540);
    if (swift_dynamicCast())
    {
      if (sub_190CA9A44(v9, a5))
      {
      }

      else
      {
        *a4 = 1;

        *a6 = 1;
      }
    }
  }

  else
  {
    sub_19021E7D8(v10);
  }
}

BOOL sub_1908A2B3C(void *a1)
{
  v1 = a1;
  v2 = NSAttributedString.ck_containsStaleEntryViewFont()();

  return v2;
}

uint64_t sub_1908A2B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  swift_unknownObjectRetain();
  v9(a2, a3, a4, a5);

  return swift_unknownObjectRelease();
}

uint64_t NSAttributedString.ck_enumerateTextAnimations(in:options:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *MEMORY[0x1E69DB6D8];
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1908A6584;
  *(v14 + 24) = v13;
  v17[4] = sub_19023C3E0;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_19023C344;
  v17[3] = &block_descriptor_19;
  v15 = _Block_copy(v17);
  sub_190D50920();

  [v6 enumerateAttribute:v12 inRange:a1 options:a2 usingBlock:{a3, v15}];
  _Block_release(v15);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908A2D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_19023C414(a1, &v11);
  if (!v12)
  {
    return sub_19021E7D8(&v11);
  }

  sub_190824530(&v11, v13);
  sub_19021834C(v13, &v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55590);
  if (swift_dynamicCast())
  {
    a5(v10, a2, a3, a4);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

void sub_1908A2E7C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *aBlock)
{
  v10 = _Block_copy(aBlock);
  v16[2] = v10;
  v11 = *MEMORY[0x1E69DB6D8];
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1908A6874;
  *(v12 + 24) = v16;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1908A6940;
  *(v13 + 24) = v12;
  aBlocka[4] = sub_19023C3E0;
  aBlocka[5] = v13;
  aBlocka[0] = MEMORY[0x1E69E9820];
  aBlocka[1] = 1107296256;
  aBlocka[2] = sub_19023C344;
  aBlocka[3] = &block_descriptor_226;
  v14 = _Block_copy(aBlocka);
  v15 = a1;
  sub_190D50920();

  [v15 enumerateAttribute:v11 inRange:a3 options:a4 usingBlock:{a5, v14}];
  _Block_release(v14);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v10);

  if (a5)
  {
    __break(1u);
  }
}

void sub_1908A3064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t, uint64_t))
{
  sub_19023C414(a1, v10);
  if (v11)
  {
    sub_1902188FC(0, &qword_1EAD46510);
    if (swift_dynamicCast())
    {
      a5([v9 integerValue], a2, a3, a4);
    }
  }

  else
  {
    sub_19021E7D8(v10);
  }
}

Swift::Bool __swiftcall NSAttributedString.ck_containsIMTextEffect()()
{
  v1 = [v0 length];
  v10 = 0;
  v8[2] = &v10;
  if (qword_1EAD44FD0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EAD44FE0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1908A658C;
  *(v3 + 24) = v8;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1908A65A0;
  *(v4 + 24) = v3;
  aBlock[4] = sub_19023C3E0;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19023C344;
  aBlock[3] = &block_descriptor_29;
  v5 = _Block_copy(aBlock);
  sub_190D50920();

  [v0 enumerateAttribute:v2 inRange:0 options:v1 usingBlock:{0, v5}];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1908A3304(void *a1)
{
  v1 = a1;
  v2 = [v1 length];
  v11 = 0;
  v9[2] = &v11;
  if (qword_1EAD44FD0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD44FE0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1908A694C;
  *(v4 + 24) = v9;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1908A6934;
  *(v5 + 24) = v4;
  aBlock[4] = sub_19023C3E0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19023C344;
  aBlock[3] = &block_descriptor_215_0;
  v6 = _Block_copy(aBlock);
  sub_190D50920();

  [v1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1908A34E0(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, _BYTE *a6)
{
  if (a5 == result)
  {
    *a6 = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t NSAttributedString.ck_textAnimationFollowing(_:)(uint64_t a1)
{
  v10 = 0;
  v9 = 0;
  v7[2] = &v9;
  v7[3] = &v10;
  v7[4] = a1;
  v2 = [v1 length];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1908A65A8;
  *(v3 + 24) = v7;
  aBlock[4] = sub_1908A6930;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1908A2B98;
  aBlock[3] = &block_descriptor_36_1;
  v4 = _Block_copy(aBlock);
  sub_190D50920();

  [v1 ck:0 enumerateTextAnimationsIn:v2 options:0 using:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1908A3664(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, BOOL *a5, uint64_t *a6, uint64_t a7)
{
  if (*a5)
  {
    *a6 = result;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *a4 = 1;
  }

  else
  {
    *a5 = result == a7;
  }

  return result;
}

uint64_t NSAttributedString.ck_lastTextAnimation()()
{
  v8 = 0;
  v6[2] = &v8;
  v1 = [v0 length];
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1908A660C;
  *(v2 + 24) = v6;
  aBlock[4] = sub_1908A6930;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1908A2B98;
  aBlock[3] = &block_descriptor_43;
  v3 = _Block_copy(aBlock);
  sub_190D50920();

  [v0 ck:0 enumerateTextAnimationsIn:v1 options:2 using:v3];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t NSAttributedString.ck_isLastTextAnimation(_:)(uint64_t a1)
{
  result = NSAttributedString.ck_lastTextAnimation()();
  if (result)
  {
    v3 = result;
    swift_unknownObjectRelease();
    return v3 == a1;
  }

  return result;
}

uint64_t NSAttributedString.ck_firstTextAnimation()()
{
  v8 = 0;
  v6[2] = &v8;
  v1 = [v0 length];
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1908A6944;
  *(v2 + 24) = v6;
  aBlock[4] = sub_1908A6930;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1908A2B98;
  aBlock[3] = &block_descriptor_50;
  v3 = _Block_copy(aBlock);
  sub_190D50920();

  [v0 ck:0 enumerateTextAnimationsIn:v1 options:0 using:v3];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1908A39B0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  *a5 = a1;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *a4 = 1;
  return result;
}

Swift::Bool __swiftcall NSAttributedString.ck_hasTextAnimation()()
{
  v9 = 0;
  v7[2] = &v9;
  v1 = [v0 length];
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1908A6944;
  *(v2 + 24) = v7;
  aBlock[4] = sub_1908A6930;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1908A2B98;
  aBlock[3] = &block_descriptor_58;
  v3 = _Block_copy(aBlock);
  sub_190D50920();

  [v0 ck:0 enumerateTextAnimationsIn:v1 options:0 using:v3];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v6 = v9;
    if (v9)
    {
      swift_unknownObjectRelease();
    }

    return v6 != 0;
  }

  return result;
}

BOOL sub_1908A3B5C(void *a1)
{
  v1 = a1;
  hasText = NSAttributedString.ck_hasTextAnimation()();

  return hasText;
}

uint64_t NSAttributedString.ck_textAnimation(at:longestEffectiveRange:)(uint64_t a1, _OWORD *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = sub_190D50E40();
  v5 = [v2 length];
  if ([v2 attribute:*MEMORY[0x1E69DB6D8] atIndex:a1 longestEffectiveRange:&v8 inRange:{0, v5}])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55590);
    if (swift_dynamicCast())
    {
      result = v7;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    sub_19021E7D8(v11);
  }

  return 0;
}

id sub_1908A3CC4(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = a1;
  v7 = NSAttributedString.ck_textAnimation(at:longestEffectiveRange:)(a3, a4);

  return v7;
}

id NSAttributedString.ck_textAnimation(at:)(uint64_t a1)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = sub_190D50E40();
  v5[1] = 0;
  v3 = [v1 ck:a1 textAnimationAt:v5 longestEffectiveRange:?];

  return v3;
}

id sub_1908A3DAC(void *a1, uint64_t a2, uint64_t a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v4 = a1;
  v7[0] = sub_190D50E40();
  v7[1] = 0;
  v5 = [v4 ck:a3 textAnimationAt:v7 longestEffectiveRange:?];

  return v5;
}

id sub_1908A3E4C(void *a1)
{
  v1 = a1;
  result = [v1 mutableCopy];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  [result ck_replaceBIUSWithIMTextStyles];
  result = [v3 copy];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = result;

  return v4;
}

Swift::Void __swiftcall NSMutableAttributedString.ck_addAttribute(_:from:range:)(NSAttributedStringKey _, NSAttributedString from, __C::_NSRange range)
{
  length = range.length;
  location = range.location;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = _;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1908A6650;
  *(v9 + 24) = v8;
  v13[4] = sub_19023C3E0;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_19023C344;
  v13[3] = &block_descriptor_68_0;
  v10 = _Block_copy(v13);
  v11 = v3;
  v12 = _;
  sub_190D50920();

  [(objc_class *)from.super.isa enumerateAttribute:v12 inRange:location options:length usingBlock:0, v10];
  _Block_release(v10);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }
}

uint64_t sub_1908A405C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_19023C414(a1, &v11);
  if (!v12)
  {
    return sub_19021E7D8(&v11);
  }

  sub_190824530(&v11, &v13);
  __swift_project_boxed_opaque_existential_1(&v13, v14);
  [a5 addAttribute:a6 value:sub_190D58740() range:{a2, a3}];
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(&v13);
}

uint64_t sub_1908A4114(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1908A693C;
  *(v12 + 24) = v11;
  v19[4] = sub_19023C3E0;
  v19[5] = v12;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_19023C344;
  v19[3] = &block_descriptor_203_0;
  v13 = _Block_copy(v19);
  v14 = a3;
  v15 = a1;
  v16 = v14;
  v17 = a4;
  sub_190D50920();

  [v17 enumerateAttribute:v16 inRange:a5 options:a6 usingBlock:{0, v13}];
  _Block_release(v13);
  LOBYTE(a6) = swift_isEscapingClosureAtFileLocation();

  if (a6)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.ck_replaceTextAnimationsWithIMTextEffects()()
{
  v1 = [v0 copy];
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x1EEE9AC00](v1);
    v9[6] = v0;
    v4 = MEMORY[0x1EEE9AC00](v3);
    v9[2] = sub_1908A6658;
    v9[3] = v5;
    v6 = [v4 length];
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1908A6660;
    *(v7 + 24) = v9;
    aBlock[4] = sub_1908A6930;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1908A2B98;
    aBlock[3] = &block_descriptor_75;
    v8 = _Block_copy(aBlock);
    sub_190D50920();

    [v2 ck:0 enumerateTextAnimationsIn:v6 options:0 using:v8];

    _Block_release(v8);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if ((v2 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1908A4480(void *a1, uint64_t a2, uint64_t a3, id a4)
{
  [a4 removeAttribute:*MEMORY[0x1E69DB6D8] range:{a2, a3}];
  if ([a1 respondsToSelector_])
  {
    v8 = [a1 name];
    sub_190D56F10();

    v9 = sub_190D56ED0();

    v10 = IMTextEffectTypeFromName();

    if (v10)
    {
      v11 = *MEMORY[0x1E69A7CF8];
      v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v13 = v11;
      v14 = [v12 initWithInteger_];
      [a4 addAttribute:v13 value:v14 range:{a2, a3}];
    }
  }
}

void sub_1908A45E4(void *a1)
{
  v1 = a1;
  NSMutableAttributedString.ck_replaceTextAnimationsWithIMTextEffects()();
}

Swift::Void __swiftcall NSMutableAttributedString.ck_addDisplayableAttributeForIMTextEffectAttribute()()
{
  v1 = [v0 length];
  v7[2] = sub_1908A6688;
  v7[3] = &v8;
  if (qword_1EAD44FD0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EAD44FE0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1908A6690;
  *(v3 + 24) = v7;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1908A6934;
  *(v4 + 24) = v3;
  aBlock[4] = sub_19023C3E0;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19023C344;
  aBlock[3] = &block_descriptor_86;
  v5 = _Block_copy(aBlock);
  sub_190D50920();

  [v0 enumerateAttribute:v2 inRange:0 options:v1 usingBlock:{0, v5}];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1908A480C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = IMTextEffectNameFromType();
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() animationWithName_];

    if (v9)
    {
      [a4 addAttribute:*MEMORY[0x1E69DB6D8] value:v9 range:{a2, a3}];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1908A48D8(void *a1)
{
  v11 = a1;
  v1 = a1;
  v2 = [v1 length];
  v9[2] = sub_1908A6948;
  v9[3] = &v10;
  if (qword_1EAD44FD0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD44FE0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1908A6938;
  *(v4 + 24) = v9;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1908A6934;
  *(v5 + 24) = v4;
  aBlock[4] = sub_19023C3E0;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19023C344;
  aBlock[3] = &block_descriptor_192;
  v6 = _Block_copy(aBlock);
  sub_190D50920();

  [v1 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall NSMutableAttributedString.ck_replaceBIUSWithIMTextStyles()()
{
  v1 = v0;
  v2 = [v0 length];
  v3 = *MEMORY[0x1E69DB648];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1908A66D4;
  *(v5 + 24) = v4;
  v25 = sub_19023C3E0;
  v26 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_19023C344;
  v24 = &block_descriptor_142;
  v6 = _Block_copy(&aBlock);
  v7 = v1;
  sub_190D50920();

  [v7 enumerateAttribute:v3 inRange:0 options:v2 usingBlock:{0, v6}];
  _Block_release(v6);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v20 = v3;
  v8 = *MEMORY[0x1E69DB758];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1908A66DC;
  *(v10 + 24) = v9;
  v25 = sub_19023C3E0;
  v26 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_19023C344;
  v24 = &block_descriptor_152;
  v11 = _Block_copy(&aBlock);
  v12 = v7;
  sub_190D50920();

  [v12 enumerateAttribute:v8 inRange:0 options:v2 usingBlock:{0, v11}];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v14 = *MEMORY[0x1E69DB6B8];
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1908A6718;
  *(v16 + 24) = v15;
  v25 = sub_19023C3E0;
  v26 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_19023C344;
  v24 = &block_descriptor_162;
  v17 = _Block_copy(&aBlock);
  v18 = v12;
  sub_190D50920();

  [v18 enumerateAttribute:v14 inRange:0 options:v2 usingBlock:{0, v17}];
  _Block_release(v17);
  v19 = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    [v18 removeAttribute:v20 range:{0, v2}];
    [v18 removeAttribute:v8 range:{0, v2}];
    [v18 removeAttribute:v14 range:{0, v2}];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1908A4F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_19023C414(a1, v13);
  if (v14)
  {
    sub_1902188FC(0, &qword_1EAD46540);
    if (swift_dynamicCast())
    {
      if ([v12 ck_hasBoldTrait])
      {
        if (qword_1EAD51960 != -1)
        {
          swift_once();
        }

        v8 = qword_1EAD55570;
        v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [a5 addAttribute:v8 value:v9 range:{a2, a3}];
      }

      if ([v12 ck_hasItalicTrait])
      {
        if (qword_1EAD51968 != -1)
        {
          swift_once();
        }

        v10 = qword_1EAD55578;
        v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [a5 addAttribute:v10 value:v11 range:{a2, a3}];
      }
    }
  }

  else
  {
    sub_19021E7D8(v13);
  }
}

void sub_1908A50D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t *a7)
{
  sub_19023C414(a1, v15);
  if (v16)
  {
    sub_1902188FC(0, &qword_1EAD46510);
    if (swift_dynamicCast())
    {
      if ([v14 integerValue] == 1)
      {
        if (*a6 != -1)
        {
          swift_once();
        }

        v12 = *a7;
        v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        [a5 addAttribute:v12 value:v13 range:{a2, a3}];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_19021E7D8(v15);
  }
}

void sub_1908A520C(void *a1)
{
  v1 = a1;
  NSMutableAttributedString.ck_replaceBIUSWithIMTextStyles()();
}

Swift::Void __swiftcall NSMutableAttributedString.ck_adjustFontsForBigEmojisIfNeeded(withSingleBigEmojiSupported:mediaObjects:)(Swift::Bool withSingleBigEmojiSupported, Swift::OpaquePointer mediaObjects)
{
  sub_1908A1E50(mediaObjects._rawValue, &qword_1EAD466C0);
  v4 = sub_190D57160();

  v5 = [v2 __ck_bigEmojiStyleWithSingleBigEmojiSupported_mediaObjects_];

  v6 = [objc_opt_self() sharedBehaviors];
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  if (v5 <= 1)
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    if (v5 != 1)
    {
      goto LABEL_11;
    }

    v8 = [v6 singleBigEmojiFont];
    if (v8)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v5 == 2)
  {
    goto LABEL_15;
  }

  if (v5 == 3)
  {
    v8 = [v7 singleBigAssetFont];
    if (!v8)
    {
      __break(1u);
      goto LABEL_11;
    }

LABEL_16:
    v9 = v8;
    v10 = [v2 length];
    v11 = [v2 mutableCopy];
    if (!v11)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v12 = v11;
    v13 = *MEMORY[0x1E69DB648];
    v14 = swift_allocObject();
    *(v14 + 16) = v9;
    *(v14 + 24) = v2;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1908A6754;
    *(v15 + 24) = v14;
    v19[4] = sub_19023C3E0;
    v19[5] = v15;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_19023C344;
    v19[3] = &block_descriptor_172;
    v16 = _Block_copy(v19);
    v17 = v2;
    sub_190D50920();

    [v12 enumerateAttribute:v13 inRange:0 options:v10 usingBlock:{0, v16}];

    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  v8 = [v7 balloonTextFont];
  if (v8)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_13:
  v8 = [v7 balloonTextFont];
  if (v8)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v8 = [v7 multipleBigEmojiFont];
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1908A5564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_19023C414(a1, &v17);
  if (!v18)
  {
    return sub_19021E7D8(&v17);
  }

  sub_190824530(&v17, v19);
  sub_19021834C(v19, &v17);
  sub_1902188FC(0, &qword_1EAD46540);
  if (swift_dynamicCast())
  {
    v10 = [v16 fontDescriptor];
    v11 = [a5 fontDescriptor];
    if ([v10 ck_hasItalicTrait])
    {
      v12 = [v11 ck:1 fontDescriptorByAddingSymbolicTrait:?];

      v11 = v12;
    }

    if ([v10 ck_hasBoldTrait])
    {
      v13 = [v11 ck:2 fontDescriptorByAddingSymbolicTrait:?];

      v11 = v13;
    }

    v14 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
    [a6 addAttribute:*MEMORY[0x1E69DB648] value:v14 range:{a2, a3}];
  }

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_1908A5738(void *a1, uint64_t a2, Swift::Bool a3)
{
  sub_1902188FC(0, &qword_1EAD466C0);
  v5 = sub_190D57180();
  v6 = a1;
  NSMutableAttributedString.ck_adjustFontsForBigEmojisIfNeeded(withSingleBigEmojiSupported:mediaObjects:)(a3, v5);
}

id sub_1908A57C0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    [v4 removeAttribute:*MEMORY[0x1E69DB6B8] range:{a2, a3}];
    if ((a1 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  [v4 removeAttribute:*MEMORY[0x1E69DB758] range:{a2, a3}];
  if ((a1 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((a1 & 1) == 0)
  {
LABEL_4:
    v8 = 0;
    goto LABEL_9;
  }

LABEL_7:
  result = [v4 copy];
  if (!result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = result;
  v21 = *MEMORY[0x1E69DB648];
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  v12 = swift_allocObject();
  v8 = sub_1908A68B8;
  *(v12 + 16) = sub_1908A68B8;
  *(v12 + 24) = v11;
  v27 = sub_19023C3E0;
  v28 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_19023C344;
  v26 = &block_descriptor_246;
  v13 = _Block_copy(&aBlock);
  v14 = v4;
  sub_190D50920();

  [v10 enumerateAttribute:v21 inRange:a2 options:a3 usingBlock:{0, v13}];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_9:
  if ((a1 & 2) == 0)
  {
    return sub_19022123C(v8);
  }

  result = [v4 copy];
  if (!result)
  {
    goto LABEL_17;
  }

  v15 = result;
  v22 = *MEMORY[0x1E69DB648];
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1908A6898;
  *(v17 + 24) = v16;
  v27 = sub_19023C3E0;
  v28 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_19023C344;
  v26 = &block_descriptor_236;
  v18 = _Block_copy(&aBlock);
  v19 = v4;
  sub_190D50920();

  [v15 enumerateAttribute:v22 inRange:a2 options:a3 usingBlock:{0, v18}];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  sub_19022123C(v8);

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_15;
  }

  return result;
}

void sub_1908A5B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_19023C414(a1, v12);
  if (v13)
  {
    sub_1902188FC(0, &qword_1EAD46540);
    if (swift_dynamicCast())
    {
      v10 = [v11 ck:a6 fontByRemovingSymbolicTrait:?];
      [a5 addAttribute:*MEMORY[0x1E69DB648] value:v10 range:{a2, a3}];
    }
  }

  else
  {
    sub_19021E7D8(v12);
  }
}

id NSMutableAttributedString.ck_removeTextStyles(_:options:range:)(id result, char a2, uint64_t a3, uint64_t a4)
{
  v8 = result;
  if ((a2 & 2) != 0)
  {
    result = sub_1908A57C0(result, a3, a4);
  }

  if ((a2 & 1) == 0)
  {
    return result;
  }

  if ((v8 & 4) == 0)
  {
    if ((v8 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (qword_1EAD51978 != -1)
    {
      swift_once();
    }

    result = [v4 removeAttribute:qword_1EAD55588 range:{a3, a4}];
    if ((v8 & 1) == 0)
    {
LABEL_7:
      if ((v8 & 2) == 0)
      {
        return result;
      }

      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (qword_1EAD51970 != -1)
  {
    swift_once();
  }

  result = [v4 removeAttribute:qword_1EAD55580 range:{a3, a4}];
  if ((v8 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  if (qword_1EAD51960 != -1)
  {
    swift_once();
  }

  result = [v4 removeAttribute:qword_1EAD55570 range:{a3, a4}];
  if ((v8 & 2) != 0)
  {
LABEL_18:
    if (qword_1EAD51968 != -1)
    {
      swift_once();
    }

    v9 = qword_1EAD55578;

    return [v4 removeAttribute:v9 range:{a3, a4}];
  }

  return result;
}

void sub_1908A5E00(void *a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = a1;
  NSMutableAttributedString.ck_removeTextStyles(_:options:range:)(a3, a4, a5, a6);
}

Swift::Void __swiftcall NSMutableAttributedString.ck_repairTextEffects()()
{
  v7 = MEMORY[0x1E69E7CC0];
  v5[2] = &v7;
  v1 = [v0 length];
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1908A675C;
  *(v2 + 24) = v5;
  aBlock[4] = sub_1908A6930;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1908A2B98;
  aBlock[3] = &block_descriptor_179_0;
  v3 = _Block_copy(aBlock);
  sub_190D50920();

  [v0 ck:0 enumerateTextAnimationsIn:v1 options:0 using:v3];
  _Block_release(v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1908A5FDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v10 = *a5;
  v11 = *a5 & 0xFFFFFFFFFFFFFF8;
  if (*a5 >> 62)
  {
LABEL_25:
    v12 = sub_190D581C0();
  }

  else
  {
    v12 = *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_190D52690();
  for (i = 0; v12 != i; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x193AF3B90](i, v10);
      if (__OFADD__(i, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (i >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v10 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    swift_unknownObjectRelease();
    if (v14 == a1)
    {

      if ([a1 respondsToSelector_])
      {
        v16 = [a1 name];
        if (!v16)
        {
          sub_190D56F10();
          v16 = sub_190D56ED0();
        }

        v17 = [objc_opt_self() animationWithName_];

        if (v17)
        {
          v18 = *MEMORY[0x1E69DB6D8];
          [a6 removeAttribute:*MEMORY[0x1E69DB6D8] range:{a2, a3}];
          [a6 addAttribute:v18 value:v17 range:{a2, a3}];

          swift_unknownObjectRelease();
        }
      }

      return;
    }
  }

  v15 = swift_unknownObjectRetain();
  MEMORY[0x193AF29E0](v15);
  if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
}

void sub_1908A6234(void *a1)
{
  v1 = a1;
  NSMutableAttributedString.ck_repairTextEffects()();
}

void sub_1908A631C()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 balloonTextFont];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 ck:1 fontBySettingBoldEnabled:?];
      v5 = [v3 ck:1 fontBySettingItalicEnabled:?];
      v6 = [v4 ck:1 fontBySettingItalicEnabled:?];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_190DDA050;
      *(inited + 32) = v3;
      *(inited + 40) = v4;
      *(inited + 48) = v5;
      *(inited + 56) = v6;
      v8 = v4;
      v9 = v5;
      v10 = v6;
      v11 = v3;
      v12 = [v1 balloonTextFont];
      if (v12)
      {
        *(inited + 64) = v12;
        v13 = [v1 singleBigEmojiFont];
        if (v13)
        {
          *(inited + 72) = v13;
          v14 = [v1 multipleBigEmojiFont];
          if (v14)
          {
            *(inited + 80) = v14;
            sub_1908AF3BC(inited);

            return;
          }

          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    if (MEMORY[0x1E69E7CC0] >> 62 && sub_190D581C0())
    {
      sub_1908AF3BC(MEMORY[0x1E69E7CC0]);
    }

    else
    {
    }
  }

  else if (MEMORY[0x1E69E7CC0] >> 62 && sub_190D581C0())
  {
    v15 = MEMORY[0x1E69E7CC0];

    sub_1908AF3BC(v15);
  }
}

void sub_1908A658C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(v4 + 16);
  *a4 = 1;
  *v5 = 1;
}

uint64_t sub_1908A65A8(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(v4 + 16);
  if (*v5)
  {
    **(v4 + 24) = result;
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    *a4 = 1;
  }

  else
  {
    *v5 = *(v4 + 32) == result;
  }

  return result;
}

uint64_t sub_1908A6610(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  **(v4 + 16) = a1;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *a4 = 1;
  return result;
}

uint64_t sub_1908A6764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1908A67CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1908A6814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13CheckmarkViewVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1908A6A80@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v42 = a1;
  v44 = sub_190D565E0();
  v3 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD555E8);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v36[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B08);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36[-v9];
  v11 = *MEMORY[0x1E6981698];
  v12 = sub_190D55EF0();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v10, v11, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  v41 = sub_190D55EC0();
  sub_1908A6FC8(v10);
  v40 = sub_190D55400();
  KeyPath = swift_getKeyPath();
  if (qword_1EAD51988 != -1)
  {
    swift_once();
  }

  v14 = qword_1EAD555D8;
  v38 = swift_getKeyPath();
  v15 = v42;
  sub_190D50920();
  v37 = sub_190D552B0();
  sub_190D539C0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v45 = 0;
  v24 = sub_190D56500();
  v26 = v25;
  if (qword_1EAD51990 != -1)
  {
    swift_once();
  }

  v27 = qword_1EAD555E0;
  v28 = MEMORY[0x1E6981DF0];
  if (v15)
  {
    v28 = MEMORY[0x1E6981DC0];
  }

  v29 = v44;
  (*(v3 + 104))(v5, *v28, v44);
  v30 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD555F0) + 36);
  (*(v3 + 32))(&v7[*(v43 + 36)], v5, v29);
  *v7 = v27;
  *(v7 + 4) = 256;
  sub_1908A7030(v7, v30);
  v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD555F8) + 36));
  *v31 = v24;
  v31[1] = v26;
  v32 = KeyPath;
  v33 = v40;
  *a2 = v41;
  *(a2 + 8) = v32;
  v34 = v38;
  *(a2 + 16) = v33;
  *(a2 + 24) = v34;
  *(a2 + 32) = v14;
  *(a2 + 40) = v37;
  *(a2 + 48) = v17;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21;
  *(a2 + 72) = v23;
  *(a2 + 80) = 0;
  return sub_190D50920();
}

void sub_1908A6E5C()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (!v0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v1 = v0;
  v2 = [v0 theme];

  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = [v2 detailsBackgroundGallerySelectionColor];

  if (v3)
  {
    sub_190D55CE0();
    v4 = sub_190D55DF0();

    qword_1EAD555D8 = v4;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1908A6F18()
{
  sub_190D55DC0();
  result = sub_190D53C70();
  qword_1EAD555E0 = result;
  return result;
}

uint64_t sub_1908A6F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_190D55EA0();
  sub_1908A6A80(v3, a1);
}

uint64_t sub_1908A6FC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1908A7030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD555E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1908A70A0()
{
  result = qword_1EAD55600;
  if (!qword_1EAD55600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD555F0);
    sub_1908A7158();
    sub_190233640(&qword_1EAD55628, &qword_1EAD555F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55600);
  }

  return result;
}

unint64_t sub_1908A7158()
{
  result = qword_1EAD55608;
  if (!qword_1EAD55608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55610);
    sub_1908A71E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55608);
  }

  return result;
}

unint64_t sub_1908A71E4()
{
  result = qword_1EAD55618;
  if (!qword_1EAD55618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55620);
    sub_19081DD10();
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55618);
  }

  return result;
}

void *sub_1908A729C(uint64_t a1)
{
  v2 = sub_190D58180();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1908AF250(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1908A731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D58180();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1908AF2E0(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_190D519C0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1908A73D8(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong generateFilterMenu];
  }

  else
  {
    sub_1902188FC(0, &unk_1EAD44ED0);
    v4 = sub_190D57C90();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_190DD55F0;
  *(v5 + 32) = v4;
  v6 = v4;
  a1(v5);
}

uint64_t sub_1908A7500(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_190D50920();
  v2(sub_1908B081C, v4);
}

void sub_1908A7594(uint64_t a1, uint64_t a2)
{
  sub_1902188FC(0, &unk_1EAD45090);
  v3 = sub_190D57160();
  (*(a2 + 16))(a2, v3);
}

void __swiftcall CKConversationListCollectionViewController.generateFilterMenu()(UIMenu *__return_ptr retstr)
{
  v2 = [v1 activeFilterModes];
  if (v2)
  {
    v3 = v2;
    sub_1902188FC(0, &qword_1EAD46510);
    sub_190218944();
    sub_190D57410();

    v4 = sub_190D574B0();

    v5 = [v1 completedViewDidAppearDeferredSetup];
    v6 = type metadata accessor for CKConversationListInboxMenuConfiguration();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_requestsEnabled;
    v7[v8] = CKMessageUnknownFilteringEnabled() != 0;
    v9 = OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_simFilteringEnabled;
    v7[v9] = IMSharedHelperMessageSIMFilteringEnabled();
    v10 = OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_blackholeEnabled;
    v7[v10] = CKIsBlackholeEnabled();
    v11 = OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showsSpamFiltering;
    v7[v11] = [objc_opt_self() spamInboxEnabled];
    *&v7[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_filterHandler] = sel_filterCommandSelected_;
    *&v7[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_settingsHandler] = sel_messageFilteringSelected_;
    *&v7[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_activeFilterModes] = v4;
    v7[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_showImages] = 1;
    v7[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_allowInboxFilters] = v5;
    v7[OBJC_IVAR____TtC7ChatKit40CKConversationListInboxMenuConfiguration_displayMode] = 0;
    v13.receiver = v7;
    v13.super_class = v6;
    v12 = [(UIMenu *)&v13 init];
    sub_190B5C144(v12);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall CKConversationListCollectionViewController.beginHoldingConversationInConversationListIfNeeded(conversation:)(CKConversation *conversation)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedFeatureFlags];
  v5 = [v4 isModernFilteringEnabled];

  if (!v5)
  {
    return;
  }

  v6 = [(CKConversation *)conversation chat];
  if (v6)
  {
    p_super = &v6->super.super;
    v7 = [v2 activePrimaryFilterMode];
    if (v7 != sub_190D57AA0() || (v8 = *(sub_190219504() + 2), , v8))
    {
      if (qword_1EAD46BA0 != -1)
      {
        swift_once();
      }

      v9 = sub_190D53040();
      __swift_project_value_buffer(v9, qword_1EAD9D8E0);
      v10 = p_super;
      v11 = sub_190D53020();
      v12 = sub_190D576C0();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v32 = v14;
        *v13 = 136315138;
        v15 = [v10 guid];
        v16 = sub_190D56F10();
        v18 = v17;

        v19 = sub_19021D9F8(v16, v18, &v32);

        *(v13 + 4) = v19;
        _os_log_impl(&dword_19020E000, v11, v12, "Holding conversation in conversation list for GUID: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x193AF7A40](v14, -1, -1);
        MEMORY[0x193AF7A40](v13, -1, -1);
      }

      v20 = [v10 guid];
      v21 = sub_190D56F10();
      v23 = v22;
      v24 = [v2 guidsOfPreservedConversations];
      if (v24)
      {
        v25 = v24;
        v26 = sub_190D57410();

        sub_1908AA174(&v32, v21, v23);

        if (v26)
        {
          v27 = sub_190D57400();
        }

        else
        {
          v27 = 0;
        }

        [v2 setGuidsOfPreservedConversations_];
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  else
  {
    if (qword_1EAD46BA0 != -1)
    {
      swift_once();
    }

    v28 = sub_190D53040();
    __swift_project_value_buffer(v28, qword_1EAD9D8E0);
    p_super = sub_190D53020();
    v29 = sub_190D576A0();
    if (os_log_type_enabled(p_super, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_19020E000, p_super, v29, "conversation has no chat and therefore no guid for preservation", v30, 2u);
      MEMORY[0x193AF7A40](v30, -1, -1);
    }
  }
}

void sub_1908A7C74()
{
  v1 = v0;
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D8E0);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Clearing all held conversation guids", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = [v1 guidsOfPreservedConversations];
  if (v6)
  {
    v7 = v6;
    sub_190D57410();

    v8 = sub_190D57400();

    [v1 setGuidsOfPreservedConversations_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t CKConversationListCollectionViewController.addFilterModesIfValid(_:applyDefaultFallback:)(uint64_t a1, char a2)
{
  v3 = sub_190D574B0();
  sub_1908A7E38(v3, a2);
}

void sub_1908A7E38(uint64_t a1, char a2)
{
  v3 = v2;
  LOBYTE(v4) = a2;
  if (qword_1EAD46BA0 != -1)
  {
LABEL_54:
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D8E0);
  sub_190D52690();
  v7 = sub_190D53020();
  v8 = sub_190D576C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v58 = v10;
    *v9 = 136315138;
    v11 = sub_190D57460();
    v13 = sub_19021D9F8(v11, v12, &v58);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_19020E000, v7, v8, "Requesting to add filter modes: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x193AF7A40](v10, -1, -1);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  if (*(a1 + 16))
  {
    oslog = v4;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v4 = v15 & *(a1 + 56);
    v16 = (v14 + 63) >> 6;
    sub_190D52690();
    v17 = 0;
    do
    {
      while (1)
      {
        if (!v4)
        {
          while (1)
          {
            v18 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              __break(1u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            if (v18 >= v16)
            {
              break;
            }

            v4 = *(a1 + 56 + 8 * v18);
            ++v17;
            if (v4)
            {
              v17 = v18;
              goto LABEL_14;
            }
          }

          v25 = sub_190D57450();
          if (*(v25 + 16) <= 1uLL)
          {
            v58 = a1;
            v26 = v25;
            sub_190D52690();
            v27 = sub_190218BE4(v26);
            v29 = v28;

            v30 = a1;
            if ((v29 & 1) == 0)
            {
              [v3 addFilterMode_];
              sub_1908AE02C(v27);
              v30 = v58;
            }

            v4 = v30 + 56;
            v31 = 1 << *(v30 + 32);
            v32 = -1;
            if (v31 < 64)
            {
              v32 = ~(-1 << v31);
            }

            v33 = v32 & *(v30 + 56);
            v34 = (v31 + 63) >> 6;
            sub_190D52690();
            v35 = 0;
            while (v33)
            {
              v36 = v35;
LABEL_34:
              v37 = __clz(__rbit64(v33));
              v33 &= v33 - 1;
              [v3 addFilterMode_];
            }

            while (1)
            {
              v36 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_53;
              }

              if (v36 >= v34)
              {

                sub_190D52690();
                v42 = v3;
                osloga = sub_190D53020();
                v43 = sub_190D576A0();

                if (os_log_type_enabled(osloga, v43))
                {
                  v44 = swift_slowAlloc();
                  v45 = swift_slowAlloc();
                  v57 = v45;
                  *v44 = 136315394;
                  v46 = sub_190D57460();
                  v48 = sub_19021D9F8(v46, v47, &v57);

                  *(v44 + 4) = v48;
                  *(v44 + 12) = 2080;
                  v49 = [v42 activeFilterModes];
                  if (!v49)
                  {
                    __break(1u);
                    return;
                  }

                  v50 = v49;
                  sub_1902188FC(0, &qword_1EAD46510);
                  sub_190218944();
                  sub_190D57410();

                  sub_190D574B0();

                  v51 = sub_190D57460();
                  v53 = v52;

                  v54 = sub_19021D9F8(v51, v53, &v57);

                  *(v44 + 14) = v54;
                  _os_log_impl(&dword_19020E000, osloga, v43, "Finished adding filter modes: %s. Resulting activeFilterModes: %s", v44, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x193AF7A40](v45, -1, -1);
                  MEMORY[0x193AF7A40](v44, -1, -1);
                }

                return;
              }

              v33 = *(v4 + 8 * v36);
              ++v35;
              if (v33)
              {
                v35 = v36;
                goto LABEL_34;
              }
            }
          }

          v21 = sub_190D53020();
          v22 = sub_190D576A0();
          if (!os_log_type_enabled(v21, v22))
          {
            goto LABEL_42;
          }

          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = "Given filterModes contains more than 1 primary filter modes. Rejecting given filter modes.";
          goto LABEL_41;
        }

LABEL_14:
        v19 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v20 = *(*(a1 + 48) + ((v17 << 9) | (8 * v19)));
        if ((v20 - 1) >= 2)
        {
          break;
        }

        if (sub_190D57AA0() != v20)
        {
          goto LABEL_21;
        }
      }

      if (v20 == 9)
      {
        if (([objc_opt_self() spamInboxEnabled] & 1) == 0)
        {
          break;
        }
      }

      else if (!v20)
      {
        break;
      }
    }

    while ((IMSharedHelperMessageSIMFilteringEnabled() & 1) != 0 || (sub_190D57AD0() & 1) == 0);
LABEL_21:

    v21 = sub_190D53020();
    v22 = sub_190D576A0();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_42;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Given filterModes are not all valid. Rejecting given filter modes.";
LABEL_41:
    _os_log_impl(&dword_19020E000, v21, v22, v24, v23, 2u);
    MEMORY[0x193AF7A40](v23, -1, -1);
LABEL_42:

    v41 = oslog & 1;
  }

  else
  {
    v38 = sub_190D53020();
    v39 = sub_190D576A0();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_19020E000, v38, v39, "Given filterModes is empty", v40, 2u);
      MEMORY[0x193AF7A40](v40, -1, -1);
    }

    v41 = v4 & 1;
  }

  sub_1908A8598(v3, v41);
}

uint64_t sub_1908A8598(uint64_t a1, char a2)
{
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  __swift_project_value_buffer(v3, qword_1EAD9D8E0);
  v4 = sub_190D53020();
  v5 = sub_190D576A0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19020E000, v4, v5, "Given filterModes are not all valid. Rejecting given filter modes.", v6, 2u);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  swift_unknownObjectWeakInit();
  if (a2)
  {
    v7 = sub_190D53020();
    v8 = sub_190D576A0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v7, v8, "Applying default fallback.", v9, 2u);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong applyDefaultFilterMode];
  }

  return MEMORY[0x193AF7B30](v12);
}

id CKConversationListCollectionViewController.removeFilterMode(_:)()
{
  v1 = v0;
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D8E0);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    v7 = sub_190D57B00();
    v9 = sub_19021D9F8(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_19020E000, v3, v4, "Removing filter mode: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x193AF7A40](v6, -1, -1);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  if (sub_190D57AF0())
  {

    return [v1 applyDefaultFilterMode];
  }

  result = [v1 activeFilterModes];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = result;
  sub_1902188FC(0, &qword_1EAD46510);
  sub_190218944();
  sub_190D57410();

  v12 = sub_190D574B0();

  v13 = sub_190D57BB0();
  result = [v1 activeFilterModes];
  if (!result)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_190D57410();

  v21 = v15;
  v16 = sub_1908AE3A0(v13, &qword_1EAD46510, 0x1E696AD98, &qword_1EAD556D8, &unk_190DDA210);

  if (v21)
  {
    v17 = sub_190D57400();
  }

  else
  {
    v17 = 0;
  }

  [v1 setActiveFilterModes_];

  result = [v1 activeFilterModes];
  if (!result)
  {
    goto LABEL_21;
  }

  v18 = result;
  sub_190D57410();

  v19 = sub_190D574B0();

  v20 = sub_1902189F8(v12, v19);

  if ((v20 & 1) == 0)
  {

    return sub_19021CD9C(0, 1);
  }

  return result;
}

Swift::Void __swiftcall CKConversationListCollectionViewController.filterModeChangedCommonActions(forcedUpdate:)(Swift::Bool forcedUpdate)
{
  if (forcedUpdate)
  {
    v2 = 0x20646563726F6620;
    v3 = 0xEE00657461647075;
  }

  else
  {
    if (![v1 isVisible])
    {
      return;
    }

    v2 = 0;
    v3 = 0xE000000000000000;
  }

  [v1 updateRefreshControlVisibility];
  [v1 updateConversationListForFilterModeChanged];
  sub_190219008();
  sub_190D582B0();

  MEMORY[0x193AF28B0](v2, v3);

  v4 = sub_190D56ED0();

  [v1 updateFilteringElementsWithReason_];

  [v1 updateSharedProfileNavigationBarPaletteVisibility];
}

Swift::Void __swiftcall CKConversationListCollectionViewController.updateFilteringElements(reason:)(Swift::String reason)
{
  v2 = v1;
  object = reason._object;
  countAndFlagsBits = reason._countAndFlagsBits;
  v5 = [objc_opt_self() sharedFeatureFlags];
  v6 = [v5 isModernFilteringEnabled];

  if (v6)
  {
    if (qword_1EAD46BA0 != -1)
    {
      swift_once();
    }

    v7 = sub_190D53040();
    __swift_project_value_buffer(v7, qword_1EAD9D8E0);
    sub_190D52690();
    v8 = sub_190D53020();
    v9 = sub_190D576C0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_19021D9F8(countAndFlagsBits, object, &v12);
      _os_log_impl(&dword_19020E000, v8, v9, "updating all filtering elements for reason: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x193AF7A40](v11, -1, -1);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }

    [v2 updateConversationListFilterButton];
    sub_190219EA4();

    [v2 updateConversationListTitle];
  }
}

Swift::Void __swiftcall CKConversationListCollectionViewController.updateFiltersAfterNewCompose(sentConversation:)(CKConversation *sentConversation)
{
  v2 = v1;
  v3 = [v1 activeFilterModes];
  if (v3)
  {
    v4 = v3;
    sub_1902188FC(0, &qword_1EAD46510);
    sub_190218944();
    sub_190D57410();

    v5 = sub_190D574B0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    *(inited + 32) = sub_190D57AA0();
    v7 = sub_19021E69C(inited);
    swift_setDeallocating();
    LOBYTE(inited) = sub_1902189F8(v5, v7);

    if (inited)
    {

      return;
    }

    v8 = CKConversation.calculateFilterModes()();
    if (qword_1EAD46BA0 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9D8E0);
    sub_190D52690();
    v10 = sub_190D53020();
    v11 = sub_190D576C0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v41 = v13;
      *v12 = 136315138;
      v14 = sub_190D57460();
      v16 = sub_19021D9F8(v14, v15, &v41);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_19020E000, v10, v11, "Active filter modes during new compose: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x193AF7A40](v13, -1, -1);
      MEMORY[0x193AF7A40](v12, -1, -1);
    }

    sub_190D52690();
    v17 = sub_190D53020();
    v18 = sub_190D576C0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v41 = v20;
      *v19 = 136315138;
      v21 = sub_190D57460();
      v23 = sub_19021D9F8(v21, v22, &v41);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_19020E000, v17, v18, "Filter modes of new compose conversation: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x193AF7A40](v20, -1, -1);
      MEMORY[0x193AF7A40](v19, -1, -1);
    }

    v24 = sub_1908A9438(v8, v5);

    if ((v24 & 1) == 0)
    {
      v25 = sub_190D53020();
      v26 = sub_190D576C0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_19020E000, v25, v26, "Will force filter mode update to [.defaultPrimaryFilterMode]", v27, 2u);
        MEMORY[0x193AF7A40](v27, -1, -1);
      }

      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_190DD1D90;
      *(v28 + 32) = sub_190D57AA0();
      v29 = sub_19021E69C(v28);
      swift_setDeallocating();
      sub_1908A7E38(v29, 0);

      [v2 filterModeChangedCommonActionsWithForcedUpdate_];
    }

    v30 = v2;
    v31 = sub_190D53020();
    v32 = sub_190D576C0();

    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_17;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v33 = 136315138;
    v35 = [v30 activeFilterModes];
    if (v35)
    {
      v36 = v35;
      sub_190D57410();

      sub_190D574B0();

      v37 = sub_190D57460();
      v39 = v38;

      v40 = sub_19021D9F8(v37, v39, &v41);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_19020E000, v31, v32, "Filter modes after new compose: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x193AF7A40](v34, -1, -1);
      MEMORY[0x193AF7A40](v33, -1, -1);
LABEL_17:

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1908A9438(uint64_t result, uint64_t a2)
{
  if (*(result + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  for (i = result + 56; v8; v4 = v11)
  {
    v11 = v4;
LABEL_11:
    if (!*(v3 + 16))
    {
      return 0;
    }

    v12 = *(*(a2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
    sub_190D58870();
    MEMORY[0x193AF4110](v12);
    result = sub_190D588C0();
    v13 = -1 << *(v3 + 32);
    v14 = result & ~v13;
    if (((*(i + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }

    v8 &= v8 - 1;
    v15 = ~v13;
    while (*(*(v3 + 48) + 8 * v14) != v12)
    {
      v14 = (v14 + 1) & v15;
      if (((*(i + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CKConversationListCollectionViewController.updateFiltersAfterJunkDetection()()
{
  v1 = v0;
  v2 = [v0 activeFilterModes];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  sub_1902188FC(0, &qword_1EAD46510);
  sub_190218944();
  sub_190D57410();

  v4 = sub_190D574B0();

  v5 = sub_19021E69C(&unk_1F0402120);
  v6 = sub_1902189F8(v4, v5);

  if (v6)
  {
    return;
  }

  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v7 = sub_190D53040();
  __swift_project_value_buffer(v7, qword_1EAD9D8E0);
  v8 = sub_190D53020();
  v9 = sub_190D576C0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19020E000, v8, v9, "Will force filter mode update to [.oscar] after moving conversation to junk", v10, 2u);
    MEMORY[0x193AF7A40](v10, -1, -1);
  }

  v11 = sub_19021E69C(&unk_1F0402148);
  sub_1908A7E38(v11, 0);

  [v1 filterModeChangedCommonActionsWithForcedUpdate_];
  v12 = v1;
  oslog = sub_190D53020();
  v13 = sub_190D576C0();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    v16 = [v12 activeFilterModes];
    if (v16)
    {
      v17 = v16;
      sub_190D57410();

      sub_190D574B0();

      v18 = sub_190D57460();
      v20 = v19;

      v21 = sub_19021D9F8(v18, v20, &v23);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_19020E000, oslog, v13, "Filter modes after junk detection: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x193AF7A40](v15, -1, -1);
      MEMORY[0x193AF7A40](v14, -1, -1);

      return;
    }

LABEL_15:
    __break(1u);
    return;
  }
}

void sub_1908A9950(void *a1)
{
  v2 = v1;
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D8E0);
  v5 = a1;
  v6 = sub_190D53020();
  v7 = sub_190D576C0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_19020E000, v6, v7, "Filter mode selected with command: %@", v8, 0xCu);
    sub_19022EEA4(v9, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  if ([v5 propertyList])
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_1902188FC(0, &qword_1EAD46510);
    if (swift_dynamicCast())
    {
      v11 = sub_190D57D70();
      if ([v5 state] == 1 && (sub_190D57AF0() & 1) == 0)
      {
        v12 = &selRef_removeFilterMode_;
      }

      else
      {
        v12 = &selRef_addFilterMode_;
      }

      [v2 *v12];
      sub_1908A7C74();
    }
  }

  else
  {
    sub_19022EEA4(v16, &unk_1EAD551C0);
  }
}

uint64_t sub_1908A9C64(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_190D58870();
    MEMORY[0x193AF4110](v13);
    result = sub_190D588C0();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1908A9DD4()
{
  v1 = *v0;
  sub_190D58870();
  sub_190D56FC0();
  v2 = sub_190D588C0() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1908ABD0C(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_1908A9E94(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_190D518A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1908B07D4(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
  v33 = a2;
  v11 = sub_190D56DC0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1908B07D4(&qword_1EAD462D0, MEMORY[0x1E69695A8]);
      v21 = sub_190D56E30();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1908ABE28(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1908AA174(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_190D58870();
  sub_190D56FC0();
  v8 = sub_190D588C0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_190D58760() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_190D52690();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_190D52690();
    sub_1908AC0CC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1908AA2C4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_190D52690();
    v9 = sub_190D581D0();

    if (v9)
    {

      type metadata accessor for CKCommunicationSafetyFlowPresenter();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_190D581C0();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1908AA9E8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1908ABA68(v20 + 1, &qword_1EAD55648);
    }

    v18 = v8;
    sub_1908ABC88(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for CKCommunicationSafetyFlowPresenter();
  v11 = sub_190D57D80();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1908AC24C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_190D57D90();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1908AA510(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_190D58870();
  MEMORY[0x193AF4110](a2);
  v6 = sub_190D588C0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1908AC56C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1908AA62C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_190D58870();
  v7 = a2 & 1;
  MEMORY[0x193AF4110](v7);
  v8 = sub_190D588C0();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1908AC6B8(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1908AA750(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v10 = v6;
  v13 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v6;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = a2;
    sub_190D52690();
    v16 = sub_190D581D0();

    if (v16)
    {

      sub_1902188FC(0, a3);
      swift_dynamicCast();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_190D581C0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v26 = sub_1908AABE8(v14, result + 1, a5, a6, a3);
        v27 = *(v26 + 16);
        if (*(v26 + 24) <= v27)
        {
          sub_1908ABA68(v27 + 1, a5);
        }

        v28 = v15;
        sub_1908ABC88(v28, v26);

        *v10 = v26;
        *a1 = v28;
        return 1;
      }
    }
  }

  else
  {
    sub_1902188FC(0, a3);
    v18 = sub_190D57D80();
    v19 = -1 << *(v13 + 32);
    v20 = v18 & ~v19;
    if ((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        v22 = *(*(v13 + 48) + 8 * v20);
        v23 = sub_190D57D90();

        if (v23)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v13 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v29 = *(*(v13 + 48) + 8 * v20);
      *a1 = v29;
      v30 = v29;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v10;
      v25 = a2;
      sub_1908AC3DC(v25, v20, isUniquelyReferenced_nonNull_native, a5, a6, a3);
      *v10 = v35;
      *a1 = v25;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1908AA9E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55648);
    v2 = sub_190D58270();
    v15 = v2;
    sub_190D581B0();
    if (sub_190D581E0())
    {
      type metadata accessor for CKCommunicationSafetyFlowPresenter();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1908ABA68(v9 + 1, &qword_1EAD55648);
        }

        v2 = v15;
        result = sub_190D57D80();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_190D581E0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1908AABE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v7 = sub_190D58270();
    v20 = v7;
    sub_190D581B0();
    if (sub_190D581E0())
    {
      sub_1902188FC(0, a5);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_1908ABA68(v14 + 1, a3);
        }

        v7 = v20;
        result = sub_190D57D80();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_190D581E0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v7;
}

uint64_t sub_1908AADE8()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556E8);
  result = sub_190D58260();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = (v1 + 56);
    v6 = 1 << *(v1 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v3 + 16);
    }

    while (1)
    {
      v12 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v12 >= v9)
      {
        break;
      }

      v8 = v5[v12];
      ++v4;
      if (v8)
      {
        v4 = v12;
        goto LABEL_13;
      }
    }

    v20 = 1 << *(v1 + 32);
    if (v20 >= 64)
    {
      bzero((v1 + 56), ((v20 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v5 = -1 << v20;
    }

    *(v1 + 16) = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t sub_1908AB00C()
{
  v1 = v0;
  v35 = sub_190D518A0();
  v2 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55688);
  result = sub_190D58260();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1908B07D4(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
      result = sub_190D56DC0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1908AB368()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55658);
  result = sub_190D58260();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1908AB5C8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556C8);
  result = sub_190D58260();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_190D58870();
      MEMORY[0x193AF4110](v16);
      result = sub_190D588C0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1908AB818()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556C0);
  result = sub_190D58260();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      sub_190D58870();
      MEMORY[0x193AF4110](v16);
      result = sub_190D588C0();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1908ABA68(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_190D58260();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_190D57D80();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

unint64_t sub_1908ABC88(uint64_t a1, uint64_t a2)
{
  sub_190D57D80();
  result = sub_190D581A0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1908ABD0C(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1908AADE8();
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1908AD1AC();
LABEL_8:
      v6 = *v2;
      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1908AC80C();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_190D587B0();
  __break(1u);
  return result;
}

uint64_t sub_1908ABE28(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_190D518A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1908AB00C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1908AC918();
      goto LABEL_12;
    }

    sub_1908AD394();
  }

  v13 = *v3;
  sub_1908B07D4(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
  v14 = sub_190D56DC0();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1908B07D4(&qword_1EAD462D0, MEMORY[0x1E69695A8]);
      v22 = sub_190D56E30();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_190D587B0();
  __break(1u);
  return result;
}

uint64_t sub_1908AC0CC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1908AB368();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1908ACB50();
      goto LABEL_16;
    }

    sub_1908AD6B0();
  }

  v10 = *v4;
  sub_190D58870();
  sub_190D56FC0();
  result = sub_190D588C0();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_190D58760();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_190D587B0();
  __break(1u);
  return result;
}

void sub_1908AC24C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1908ABA68(v6 + 1, &qword_1EAD55648);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1908AD06C(&qword_1EAD55648);
      goto LABEL_12;
    }

    sub_1908ADD28(v6 + 1, &qword_1EAD55648);
  }

  v8 = *v3;
  v9 = sub_190D57D80();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for CKCommunicationSafetyFlowPresenter();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_190D57D90();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_190D587B0();
  __break(1u);
}

void sub_1908AC3DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_1908ABA68(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1908AD06C(a4);
      goto LABEL_12;
    }

    v11 = a6;
    sub_1908ADD28(v9 + 1, a4);
  }

  v12 = *v6;
  v13 = sub_190D57D80();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    sub_1902188FC(0, v11);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_190D57D90();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_190D587B0();
  __break(1u);
}

uint64_t sub_1908AC56C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1908AB5C8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1908ACDEC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1908AD8E8();
  }

  v8 = *v3;
  sub_190D58870();
  MEMORY[0x193AF4110](v4);
  result = sub_190D588C0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_190D587B0();
  __break(1u);
  return result;
}

uint64_t sub_1908AC6B8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1908AB818();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1908ACF2C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1908ADB08();
  }

  v8 = *v3;
  sub_190D58870();
  MEMORY[0x193AF4110](v4 & 1);
  result = sub_190D588C0();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_190D587B0();
  __break(1u);
  return result;
}

void *sub_1908AC80C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556E8);
  v2 = *v0;
  v3 = sub_190D58250();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

void *sub_1908AC918()
{
  v1 = v0;
  v2 = sub_190D518A0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55688);
  v6 = *v0;
  v7 = sub_190D58250();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1908ACB50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55658);
  v2 = *v0;
  v3 = sub_190D58250();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        result = sub_190D52690();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1908ACCAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55678);
  v2 = *v0;
  v3 = sub_190D58250();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1908ACDEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556C8);
  v2 = *v0;
  v3 = sub_190D58250();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1908ACF2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556C0);
  v2 = *v0;
  v3 = sub_190D58250();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1908AD06C(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_190D58250();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1908AD1AC()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556E8);
  result = sub_190D58260();
  v3 = result;
  if (*(v1 + 16))
  {
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = result + 56;
    while (v7)
    {
LABEL_13:
      sub_190D58870();
      sub_190D56FC0();
      result = sub_190D588C0();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v9 + 8 * (v13 >> 6))) == 0)
      {
        v15 = 0;
        v16 = (63 - v12) >> 6;
        while (++v14 != v16 || (v15 & 1) == 0)
        {
          v17 = v14 == v16;
          if (v14 == v16)
          {
            v14 = 0;
          }

          v15 |= v17;
          v18 = *(v9 + 8 * v14);
          if (v18 != -1)
          {
            v10 = __clz(__rbit64(~v18)) + (v14 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v10 = __clz(__rbit64((-1 << v13) & ~*(v9 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v7 &= v7 - 1;
      *(v9 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      ++*(v3 + 16);
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_22;
      }

      v7 = *(v1 + 56 + 8 * v11);
      ++v4;
      if (v7)
      {
        v4 = v11;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v0 = v3;
  }

  return result;
}

uint64_t sub_1908AD394()
{
  v1 = v0;
  v32 = sub_190D518A0();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55688);
  v6 = sub_190D58260();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1908B07D4(&qword_1EAD462D8, MEMORY[0x1E69695A8]);
      result = sub_190D56DC0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_1908AD6B0()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55658);
  result = sub_190D58260();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_190D58870();
      sub_190D52690();
      sub_190D56FC0();
      result = sub_190D588C0();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1908AD8E8()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556C8);
  result = sub_190D58260();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_190D58870();
      MEMORY[0x193AF4110](v15);
      result = sub_190D588C0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1908ADB08()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556C0);
  result = sub_190D58260();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      sub_190D58870();
      MEMORY[0x193AF4110](v15);
      result = sub_190D588C0();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1908ADD28(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = sub_190D58260();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_190D57D80();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_1908ADF34(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;
    result = sub_190D52690();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = sub_1908AE02C(*(*(v2 + 48) + ((v9 << 9) | (8 * v10))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1908AE02C(uint64_t a1)
{
  v3 = *v1;
  sub_190D58870();
  MEMORY[0x193AF4110](a1);
  v4 = sub_190D588C0();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1908ACCAC();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1908AEB9C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1908AE138(unsigned __int8 a1)
{
  v3 = *v1;
  sub_190D58870();
  MEMORY[0x193AF4110](a1);
  v4 = sub_190D588C0();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 3;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1908ACDEC();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_1908AED44(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1908AE240(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_190D58870();
  sub_190D56FC0();
  v6 = sub_190D588C0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_190D58760() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1908ACB50();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1908AEEEC(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1908AE3A0(void *a1, unint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    sub_190D52690();
    v12 = a1;
    v13 = sub_190D581F0();

    if (v13)
    {
      v14 = sub_1908AE8C4(v11, v12, a4, a5, a2);

      return v14;
    }

    return 0;
  }

  v25 = v5;
  sub_1902188FC(0, a2);
  v16 = sub_190D57D80();
  v17 = -1 << *(v9 + 32);
  v18 = v16 & ~v17;
  if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v9 + 48) + 8 * v18);
    v21 = sub_190D57D90();

    if (v21)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v25;
  v26 = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1908AD06C(a4);
    v23 = v26;
  }

  v24 = *(*(v23 + 48) + 8 * v18);
  sub_1908AF0B0(v18);
  result = v24;
  *v25 = v26;
  return result;
}

uint64_t sub_1908AE554(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    sub_190D52690();
    v4 = a1;
    v5 = sub_190D581F0();

    if (v5)
    {
      v6 = sub_1908AEA44();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  type metadata accessor for CKCommunicationSafetyFlowPresenter();
  v9 = sub_190D57D80();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = sub_190D57D90();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1908AD06C(&qword_1EAD55648);
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1908AF0B0(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1908AE6EC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_190D58870();
    MEMORY[0x193AF4110](v17);
    result = sub_190D588C0();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (*(v22 + 8 * v19) == v17)
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x1E69E7CD0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (*(v22 + 8 * v19) == v17)
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;
  sub_190D50920();
  return sub_190219A70(v7, a2, v9, a3);
}

uint64_t sub_1908AE8C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v9 = v5;

  v10 = sub_190D581C0();
  v11 = swift_unknownObjectRetain();
  v12 = sub_1908AABE8(v11, v10, a3, a4, a5);
  v21 = v12;
  sub_190D50920();
  v13 = sub_190D57D80();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_1902188FC(0, a5);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_190D57D90();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_1908AF0B0(v15);
  result = sub_190D57D90();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1908AEA44()
{
  v1 = v0;

  v2 = sub_190D581C0();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1908AA9E8(v3, v2);
  v13 = v4;
  sub_190D50920();
  v5 = sub_190D57D80();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    type metadata accessor for CKCommunicationSafetyFlowPresenter();
    while (1)
    {
      v9 = *(*(v4 + 48) + 8 * v7);
      v10 = sub_190D57D90();

      if (v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v4 + 48) + 8 * v7);
  sub_1908AF0B0(v7);
  result = sub_190D57D90();
  if (result)
  {
    *v1 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1908AEB9C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_190D50920();
    v8 = sub_190D58190();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_190D58870();
        MEMORY[0x193AF4110](v10);
        v11 = sub_190D588C0() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1908AED44(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_190D50920();
    v8 = sub_190D58190();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_190D58870();
        MEMORY[0x193AF4110](v10);
        v11 = sub_190D588C0() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1908AEEEC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_190D50920();
    v8 = sub_190D58190();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_190D58870();
        sub_190D52690();
        sub_190D56FC0();
        v10 = sub_190D588C0();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1908AF0B0(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    sub_190D50920();
    v8 = sub_190D58190();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_190D57D80();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_1908AF250(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;
    sub_190D52690();
    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1908AF2E0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_190D519C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_1908AF3E0(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a2;
    v10 = sub_190D581C0();
    a2 = v9;
    if (v10)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2);
      v6 = sub_190D58280();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_190D581C0();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x1E69E7CD0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v11 = v6 + 56;
  v43 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v12 = 0;
    v40 = v4;
    while (1)
    {
      v13 = MEMORY[0x193AF3B90](v12, v4);
      v14 = __OFADD__(v12++, 1);
      if (v14)
      {
        break;
      }

      v15 = v13;
      v16 = sub_190D57D80();
      v17 = -1 << *(v6 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = *(v11 + 8 * (v18 >> 6));
      v21 = 1 << v18;
      if (((1 << v18) & v20) != 0)
      {
        v22 = ~v17;
        sub_1902188FC(0, a4);
        while (1)
        {
          v23 = *(*(v6 + 48) + 8 * v18);
          v24 = sub_190D57D90();

          if (v24)
          {
            break;
          }

          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v20 = *(v11 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          if (((1 << v18) & v20) == 0)
          {
            v8 = v43;
            v4 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v43;
        v4 = v40;
        if (v12 == v43)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v11 + 8 * v19) = v21 | v20;
        *(*(v6 + 48) + 8 * v18) = v15;
        v25 = *(v6 + 16);
        v14 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v26;
        if (v12 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v27 = 0;
    v41 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v27 != v41)
    {
      v28 = *(v4 + 32 + 8 * v27);
      v29 = sub_190D57D80();
      v30 = -1 << *(v6 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      v33 = *(v11 + 8 * (v31 >> 6));
      v34 = 1 << v31;
      if (((1 << v31) & v33) != 0)
      {
        v35 = ~v30;
        sub_1902188FC(0, a4);
        while (1)
        {
          v36 = *(*(v6 + 48) + 8 * v31);
          v37 = sub_190D57D90();

          if (v37)
          {
            break;
          }

          v31 = (v31 + 1) & v35;
          v32 = v31 >> 6;
          v33 = *(v11 + 8 * (v31 >> 6));
          v34 = 1 << v31;
          if (((1 << v31) & v33) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v11 + 8 * v32) = v34 | v33;
        *(*(v6 + 48) + 8 * v31) = v28;
        v38 = *(v6 + 16);
        v14 = __OFADD__(v38, 1);
        v39 = v38 + 1;
        if (v14)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v39;
      }

      if (++v27 == v43)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_1908AF6CC(void *a1)
{
  if (qword_1EAD46BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D8E0);
  v3 = a1;
  v4 = sub_190D53020();
  v5 = sub_190D576C0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_19020E000, v4, v5, "Filtering settings selected with command: %@", v6, 0xCu);
    sub_19022EEA4(v7, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v7, -1, -1);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  return _sSo20CKMessagesControllerC7ChatKitE35didSelectFilterSettingsFromViewMenu7commandySo9UICommandC_tF_0();
}

uint64_t sub_1908AF818(uint64_t a1)
{
  v2 = sub_190D52340();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD556A8);
    v9 = sub_190D58280();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1908B07D4(&qword_1EAD556B0, MEMORY[0x1E69DA028]);
      v16 = sub_190D56DC0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1908B07D4(&qword_1EAD556B8, MEMORY[0x1E69DA028]);
          v23 = sub_190D56E30();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1908AFB38(uint64_t a1)
{
  v2 = sub_190D52310();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55690);
    v9 = sub_190D58280();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1908B07D4(&qword_1EAD55698, MEMORY[0x1E69DA008]);
      v16 = sub_190D56DC0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1908B07D4(&qword_1EAD556A0, MEMORY[0x1E69DA008]);
          v23 = sub_190D56E30();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1908AFE58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55660);
    v3 = sub_190D58280();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_190D56F10();
      sub_190D58870();
      v27 = v7;
      sub_190D56FC0();
      v8 = sub_190D588C0();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_190D56F10();
        v18 = v17;
        if (v16 == sub_190D56F10() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_190D58760();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}