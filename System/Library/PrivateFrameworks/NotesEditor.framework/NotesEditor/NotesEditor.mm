uint64_t type metadata accessor for AudioAttachmentEditorCoordinator()
{
  result = qword_281199CE0;
  if (!qword_281199CE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2151A5454()
{
  sub_2151A5528();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2151A5528()
{
  if (!qword_281199D10)
  {
    sub_21549E56C();
    v0 = sub_2154A2B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_281199D10);
    }
  }
}

id AudioAttachmentEditorCoordinator.init(noteEditorViewController:)(void *a1)
{
  *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController] = 0;
  *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_currentRecordingViewController] = 0;
  v3 = MEMORY[0x277D84FA0];
  v4 = MEMORY[0x277D84F90] >> 62;
  v5 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_2154A2C8C())
    {
      sub_21532B784(MEMORY[0x277D84F90]);
    }

    else
    {
      v5 = MEMORY[0x277D84FA0];
    }
  }

  *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_trackedAttachmentViews] = v5;
  v6 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_temporaryExportURLToRemove;
  v7 = sub_21549E56C();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator____lazy_storage___feedbackDelegateExtensionVC] = 0;
  *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer] = 0;
  *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint] = 0;
  v8 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_ignoredAttachments;
  if (v4)
  {
    if (sub_2154A2C8C())
    {
      sub_21532B7A8(MEMORY[0x277D84F90]);
    }

    else
    {
      v9 = MEMORY[0x277D84FA0];
    }

    *&v1[v8] = v9;
    if (sub_2154A2C8C())
    {
      sub_21532B7A8(MEMORY[0x277D84F90]);
      v3 = v10;
    }
  }

  else
  {
    *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_ignoredAttachments] = v3;
  }

  *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_closedAttachments] = v3;
  v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_wantsMiniPlayerVisible] = 0;
  v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector] = 0;
  *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator__eventReporter] = 0;
  *&v1[OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController] = a1;
  v20.receiver = v1;
  v20.super_class = type metadata accessor for AudioAttachmentEditorCoordinator();
  v11 = a1;
  v12 = objc_msgSendSuper2(&v20, sel_init);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  [v15 addObserver:v14 selector:sel_attachmentViewDidMoveToWindow_ name:@"ICAttachmentViewDidMoveToWindowNotification" object:0];

  v16 = [v13 defaultCenter];
  [v16 addObserver:v14 selector:sel_audioControllerDidPlay_ name:*MEMORY[0x277D36470] object:0];

  v17 = [v13 defaultCenter];
  [v17 addObserver:v14 selector:sel_attachmentWillBeDeleted_ name:*MEMORY[0x277D35C28] object:0];

  v18 = [v13 defaultCenter];
  [v18 addObserver:v14 selector:sel_attachmentWasUndeleted_ name:*MEMORY[0x277D35C20] object:0];

  return v14;
}

void sub_2151A5A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2151A60CC()
{
  v1 = [*(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController) note];
  v53 = v0;
  if (!v1)
  {
    if (MEMORY[0x277D84F90] >> 62 && sub_2154A2C8C())
    {
      sub_21532A754(MEMORY[0x277D84F90]);
      v4 = v9;
      if ((v9 & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = MEMORY[0x277D84FA0];
      if ((MEMORY[0x277D84FA0] & 0xC000000000000001) != 0)
      {
        goto LABEL_6;
      }
    }

LABEL_9:
    v7 = 0;
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v4 + 56);
    goto LABEL_13;
  }

  v2 = v1;
  v3 = [v1 visibleTopLevelAttachments];

  sub_2151A6C9C(0, &qword_281199690);
  sub_21533FBE4(&qword_281199680, &qword_281199690);
  v4 = sub_2154A20CC();

  if ((v4 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  sub_2154A2C3C();
  sub_2151A6C9C(0, &qword_281199690);
  sub_21533FBE4(&qword_281199680, &qword_281199690);
  sub_2154A20FC();
  v4 = v56;
  v5 = v57;
  v6 = v58;
  v7 = v59;
  v8 = v60;
LABEL_13:
  v52 = v6;
  v13 = (v6 + 64) >> 6;
  v14 = &selRef_setSelectedNewNoteShortcutItem_;
  while ((v4 & 0x8000000000000000) == 0)
  {
    v17 = v7;
    v18 = v8;
    if (!v8)
    {
      while (1)
      {
        v7 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v7 >= v13)
        {
          goto LABEL_33;
        }

        v18 = *(v5 + 8 * v7);
        ++v17;
        if (v18)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

LABEL_22:
    v19 = (v18 - 1) & v18;
    v20 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v20)
    {
      goto LABEL_33;
    }

LABEL_26:
    v54 = v19;
    v21 = objc_opt_self();
    v22 = [v21 v14[318]];
    if (!v22)
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v23 = v22;
    v24 = [v22 currentAttachment];

    if (v24 && (sub_2151A6C9C(0, &qword_281199690), v25 = v20, v26 = sub_2154A291C(), v25, v24, (v26 & 1) != 0) || (sub_21549F93C(), sub_21549F90C(), v27 = sub_21549F91C(), , v27) && (sub_2151A6C9C(0, &qword_281199690), v28 = v13, v29 = v5, v30 = v20, v31 = sub_2154A291C(), v30, v5 = v29, v13 = v28, v14 = &selRef_setSelectedNewNoteShortcutItem_, v27, (v31 & 1) != 0) && (sub_21549F90C(), v32 = sub_21549F8DC(), , (v32 & 1) != 0))
    {
      v15 = [v21 v14[318]];
      if (!v15)
      {
        goto LABEL_54;
      }

      v16 = v15;
      [v15 stop];
    }

    v8 = v54;
  }

  if (sub_2154A2CDC())
  {
    sub_2151A6C9C(0, &qword_281199690);
    swift_dynamicCast();
    v20 = v55;
    v19 = v8;
    if (v55)
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  sub_2151A66EC();
  v33 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer;
  v14 = v53;
  v34 = *(v53 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_miniPlayer);
  if (!v34)
  {
    goto LABEL_38;
  }

  [v34 willMoveToParentViewController_];
  v35 = *(v53 + v33);
  if (!v35)
  {
    goto LABEL_38;
  }

  v36 = [v35 view];
  if (!v36)
  {
LABEL_55:
    __break(1u);
    return;
  }

  v37 = v36;
  [v36 removeFromSuperview];

  v38 = *(v53 + v33);
  if (v38)
  {
    [v38 removeFromParentViewController];
    v39 = *(v53 + v33);
    goto LABEL_39;
  }

LABEL_38:
  v39 = 0;
LABEL_39:
  *(v53 + v33) = 0;

  v40 = *(v53 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint);
  *(v53 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_hideMiniPlayerConstraint) = 0;

  v13 = MEMORY[0x277D84F90] >> 62;
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    v41 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_ignoredAttachments;
    swift_beginAccess();
    v42 = MEMORY[0x277D84FA0];
    *(v53 + v41) = MEMORY[0x277D84FA0];

    goto LABEL_41;
  }

LABEL_47:
  if (sub_2154A2C8C())
  {
    sub_21532B7A8(MEMORY[0x277D84F90]);
    v49 = v48;
  }

  else
  {
    v49 = MEMORY[0x277D84FA0];
  }

  v50 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_ignoredAttachments;
  swift_beginAccess();
  *(v14 + v50) = v49;

  if (sub_2154A2C8C())
  {
    sub_21532B7A8(MEMORY[0x277D84F90]);
    v42 = v51;
  }

  else
  {
    v42 = MEMORY[0x277D84FA0];
  }

LABEL_41:
  v43 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_closedAttachments;
  swift_beginAccess();
  *(v14 + v43) = v42;

  if (v13 && sub_2154A2C8C())
  {
    sub_21532B784(MEMORY[0x277D84F90]);
    v45 = v44;
  }

  else
  {
    v45 = MEMORY[0x277D84FA0];
  }

  v46 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_trackedAttachmentViews;
  swift_beginAccess();
  *(v14 + v46) = v45;

  v47 = *(v14 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController);
  *(v14 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_recordingViewController) = 0;
}

id sub_2151A6974()
{
  result = [objc_allocWithZone(type metadata accessor for ICSystemPaperDocumentController()) init];
  qword_2811998E0 = result;
  return result;
}

Swift::Void __swiftcall ICSystemPaperDocumentController.add(_:)(ICNoteEditorViewController *a1)
{
  v2 = v1;
  v4 = sub_2154A113C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2151A6C9C(0, &unk_2811995C0);
  *v7 = sub_2154A245C();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_2154A116C();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7B8);
  swift_allocObject();
  v9 = a1;
  sub_21549EE8C();
  v10 = OBJC_IVAR___ICSystemPaperDocumentController_presenters;
  swift_beginAccess();

  MEMORY[0x216068AC0](v11);
  if (*((*(v2 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2154A1F8C();
  }

  sub_2154A1FAC();
  swift_endAccess();
}

uint64_t sub_2151A6C9C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2151A94A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v35 - 184));
  objc_destroyWeak((v35 - 176));
  _Unwind_Resume(a1);
}

char *OutlineRenderer.init(textView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v41 = ObjectType;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C528);
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C530);
  v11 = *(v10 - 8);
  v39 = v10;
  v40 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___ICOutlineRenderer_selectionVisibilityRequiresEditing] = 1;
  *&v1[OBJC_IVAR___ICOutlineRenderer_hoveredCharacterObservation] = 0;
  v14 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR___ICOutlineRenderer_visibleUUIDs] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR___ICOutlineRenderer_affordanceShownUUIDs] = v14;
  swift_unknownObjectWeakAssign();
  v15 = type metadata accessor for TextElementLocator();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  v37 = a1;
  swift_unknownObjectWeakAssign();
  v44.receiver = v16;
  v44.super_class = v15;
  *&v1[OBJC_IVAR___ICOutlineRenderer_textElementLocator] = objc_msgSendSuper2(&v44, sel_init);
  v43.receiver = v1;
  v43.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v43, sel_init);
  swift_getKeyPath();
  v18 = v17;
  sub_21549E41C();

  v19 = [objc_opt_self() mainRunLoop];
  v42[0] = v19;
  v20 = sub_2154A2B3C();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_2151A6C9C(0, &qword_281199448);
  sub_2151ACC5C(&qword_281199498, &qword_27CA5C528);
  sub_2151ACCA4();
  v21 = v38;
  sub_21549F3BC();
  sub_2151ADCD8(v6, &qword_27CA5C430);

  (*(v7 + 8))(v9, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2151ACC5C(&qword_281199710, &qword_27CA5C530);
  v22 = v39;
  v23 = sub_21549F3EC();

  (*(v40 + 8))(v13, v22);
  *&v18[OBJC_IVAR___ICOutlineRenderer_hoveredCharacterObservation] = v23;

  v24 = objc_opt_self();
  v25 = [v24 defaultCenter];
  v26 = v37;
  [v25 addObserver:v18 selector:sel_textViewLayoutDidChangeWithNotification_ name:@"ICTextViewLayoutDidChangeNotification" object:v37];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A348);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2154BDB50;
  v28 = sub_21549F1AC();
  v29 = MEMORY[0x277D74C50];
  *(v27 + 32) = v28;
  *(v27 + 40) = v29;
  v42[3] = v41;
  v42[0] = v18;
  v30 = v18;
  MEMORY[0x216069470](v27, v42, sel_horizontalSizeClassDidChange);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  v31 = [v24 defaultCenter];
  [v31 addObserver:v30 selector:sel_textViewLayoutDidChangeWithNotification_ name:@"ICTextViewSelectedTextRangeDidChangeNotification" object:v26];

  v32 = [v24 defaultCenter];
  [v32 addObserver:v30 selector:sel_accessibilityStatusDidChange name:*MEMORY[0x277D765F0] object:0];

  v33 = [v24 defaultCenter];
  [v33 addObserver:v30 selector:sel_accessibilityStatusDidChange name:*MEMORY[0x277D76520] object:0];

  v34 = [v24 defaultCenter];
  [v34 addObserver:v30 selector:sel_accessibilityButtonShapesDidChange name:*MEMORY[0x277D76450] object:0];

  return v30;
}

id sub_2151ABABC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hoveredCharacterIndex];
  *a2 = result;
  return result;
}

uint64_t sub_2151ABAF0()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

char *PaperTextAttachmentManager.init(note:textView:delegate:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICPaperTextAttachmentManager_isMathPaperSolvingAllowedObservation] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v18, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:sel_paperKitViewDidAppear_ name:*MEMORY[0x277D365C8] object:0];

  v10 = [v7 defaultCenter];
  [v10 addObserver:v8 selector:sel_paperKitViewWillDisappear_ name:*MEMORY[0x277D365D0] object:0];

  v11 = [v7 defaultCenter];
  v12 = *MEMORY[0x277D36590];
  v13 = v8;
  [v11 addObserver:v13 selector:sel_noteDidChangeCalculatePreviewBehavior_ name:v12 object:a1];

  v17 = [objc_opt_self() sharedManager];
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = sub_21549E40C();
  swift_unknownObjectRelease();

  v15 = *&v13[OBJC_IVAR___ICPaperTextAttachmentManager_isMathPaperSolvingAllowedObservation];
  *&v13[OBJC_IVAR___ICPaperTextAttachmentManager_isMathPaperSolvingAllowedObservation] = v14;

  return v13;
}

id sub_2151AC12C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMathPaperSolvingAllowed];
  *a2 = result;
  return result;
}

uint64_t sub_2151AC160()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *ICNoteEditorContextualInputAccessoryView.init(frame:)(double a1, double a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_calculatedScope] = 3;
  v11 = &v4[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_bouncedSelectionHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v4[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_skipUpdate] = 0;
  v12 = &v4[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_icaxAccessibilityHint];
  v13 = objc_opt_self();
  v14 = [v13 mainBundle];
  v15 = sub_21549E2CC();
  v17 = v16;

  *v12 = v15;
  v12[1] = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v19 = OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_scrollView;
  *&v5[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_scrollView] = v18;
  [v18 setBouncesHorizontally_];
  [*&v5[v19] setShowsVerticalScrollIndicator_];
  [*&v5[v19] setShowsHorizontalScrollIndicator_];
  if (_UISolariumEnabled())
  {
    [*&v5[v19] setClipsToBounds_];
  }

  type metadata accessor for ICNoteEditorContextualToolbarController();
  swift_allocObject();
  *&v5[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_toolbarController] = sub_21542E034();
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  v21 = OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_scrollView;
  [*&v20[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_scrollView] setDelegate_];
  [*&v20[v21] setDecelerationRate_];
  [v20 addSubview_];
  v22 = OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_toolbarController;
  v23 = *&v20[v21];

  v24 = v23;
  sub_21542A214(v24);

  v32.size.width = a3;
  v32.size.height = a4;
  ICNoteEditorContextualInputAccessoryView.updateLayout(with:)(v32);
  v25 = [v13 mainBundle];
  sub_21549E2CC();

  v26 = sub_2154A1D2C();

  [v20 setAccessibilityLabel_];

  [v20 setAccessibilityContainerType_];
  v27 = *&v20[v22];
  *(v27 + 96) = v20;
  *(v27 + 104) = &off_28274F648;
  v28 = v20;

  swift_unknownObjectRelease();
  sub_21542D37C();

  v29 = [objc_allocWithZone(MEMORY[0x277D756C8]) init];
  [v28 addInteraction_];

  [v28 setIc:*MEMORY[0x277D76838] preferredContentSizeCategory:?];
  return v28;
}

void sub_2151ACBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2151ACC5C(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_2151ACCA4()
{
  result = qword_281199450;
  if (!qword_281199450)
  {
    sub_2151A6C9C(255, &qword_281199448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199450);
  }

  return result;
}

char *sub_2151ACDF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2151ADCD8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2151AE104()
{
  result = _UISolariumEnabled();
  v1 = 44.0;
  if (result)
  {
    v1 = 64.0;
  }

  qword_281199BE0 = *&v1;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_2151AE1E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_2151AE234@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = sub_2154A2C8C();
    if (!result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_6:
      *a2 = result;
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x216069960](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

char *sub_2151AE2B8(char *a1, int64_t a2, char a3)
{
  result = sub_2151ACDF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_2151AEB64(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR___ICVisualAssetImportController_paperImageInsertionController;
  *&v2[OBJC_IVAR___ICVisualAssetImportController_paperImageInsertionController] = 0;
  *&v2[OBJC_IVAR___ICVisualAssetImportController_captureController] = 0;
  v6 = OBJC_IVAR___ICVisualAssetImportController_doNotAdvanceInsertionPointAfterInsertingAttachment;
  v2[OBJC_IVAR___ICVisualAssetImportController_doNotAdvanceInsertionPointAfterInsertingAttachment] = 0;
  v2[OBJC_IVAR___ICVisualAssetImportController_isShowing] = 0;
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedInit();
  v7 = [a2 editorController];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(ICPaperImageInsertionController) initWithNoteEditorViewController_];
    v10 = *&v2[v5];
    *&v2[v5] = v9;

    v11 = [v8 doNotAdvanceInsertionPointAfterInsertingAttachment];
    v2[v6] = v11;
  }

  v13.receiver = v2;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

char *LinkAcceleratorController.init(cloudConfiguration:mode:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___ICLinkAcceleratorController_acceleratorChar];
  *v6 = 62;
  v6[1] = 0xE100000000000000;
  *&v2[OBJC_IVAR___ICLinkAcceleratorController_numTimesAcceleratorCharMustBeTyped] = 2;
  *&v2[OBJC_IVAR___ICLinkAcceleratorController_maxCharactersTyped] = 0;
  v2[OBJC_IVAR___ICLinkAcceleratorController_needToWaitUntilUpdateBoundsToAppear] = 0;
  v7 = &v2[OBJC_IVAR___ICLinkAcceleratorController_currentSuggestionRange];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR___ICLinkAcceleratorController_isShowing] = 0;
  *&v2[OBJC_IVAR___ICLinkAcceleratorController_mode] = a2;
  if ([objc_opt_self() ic_isVision])
  {
    v8 = type metadata accessor for VisionLinkAcceleratorViewController();
  }

  else
  {
    v8 = type metadata accessor for iOSLinkAcceleratorViewController();
  }

  v9 = [objc_allocWithZone(v8) init];
  *&v2[OBJC_IVAR___ICLinkAcceleratorController_viewController] = v9;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v22, sel_init);

  v11 = OBJC_IVAR___ICLinkAcceleratorController_viewController;
  v12 = *&v10[OBJC_IVAR___ICLinkAcceleratorController_viewController];
  v13 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v14 = *(v12 + v13);
  *(v12 + v13) = v10;
  v15 = v10;

  v16 = *&v10[v11];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = &v16[OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_didSelectNoteLinkCompletion];
  swift_beginAccess();
  v19 = *v18;
  *v18 = sub_215371590;
  v18[1] = v17;
  v20 = v16;
  sub_2151AF750(v19);

  return v15;
}

uint64_t sub_2151AEED8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for iOSLinkAcceleratorViewController()
{
  result = qword_2811997C8;
  if (!qword_2811997C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for LinkAcceleratorViewController()
{
  result = qword_2811998E8;
  if (!qword_2811998E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2151AF00C()
{
  sub_2154976EC(319, &qword_281199708, MEMORY[0x277D36398]);
  if (v0 <= 0x3F)
  {
    sub_2154976EC(319, &unk_281199730, MEMORY[0x277D359B8]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id iOSLinkAcceleratorViewController.init()()
{
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_collectionViewController] = 0;
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_kvoToken] = 0;
  v1 = OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_maxWidth;
  if (qword_2811997A0 != -1)
  {
    swift_once();
  }

  *&v0[v1] = qword_28119B178;
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_minWidthCompactMultiplier] = 0x3FE8000000000000;
  v2 = _UISolariumEnabled();
  v3 = 12.0;
  if (v2)
  {
    v3 = 30.0;
  }

  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_cornerRadius] = v3;
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_minimumSpacingToEdge] = 0x4030000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_preferredWidthForNonCompactOrLandscape] = qword_28119B1A8;
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_editorXOffset] = 0xC030000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_editorYOffset] = 0x4010000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_editorYPadding] = 0x4040000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_verticalPadding] = 0x402E000000000000;
  *&v0[OBJC_IVAR____TtC11NotesEditor32iOSLinkAcceleratorViewController_horizontalPadding] = 0x4024000000000000;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for iOSLinkAcceleratorViewController();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_2151AF28C()
{
  if (qword_281199740 != -1)
  {
    swift_once();
  }

  v0 = byte_281199749;
  v1 = objc_opt_self();
  v2 = *MEMORY[0x277D74418];
  v3 = *MEMORY[0x277D76918];
  v4 = [v1 ic:v3 preferredFontForStyle:v2 withFontWeight:?];

  if (v4)
  {
    v5 = _UISolariumEnabled();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2154BDB20;
    v7 = objc_opt_self();
    *(v6 + 32) = [v7 labelColor];
    sub_2151A6C9C(0, &qword_2811994C0);
    v8 = sub_2154A1F3C();

    v9 = objc_opt_self();
    v10 = [v9 configurationWithPaletteColors_];

    if (qword_2811997A8 != -1)
    {
      swift_once();
    }

    v11 = [v9 configurationWithFont:qword_28119B1E0 scale:2];
    v12 = [v10 configurationByApplyingConfiguration_];

    v13 = [v7 secondarySystemFillColor];
    v14 = [v7 secondarySystemFillColor];
    v15 = [v7 secondarySystemFillColor];
    v16 = [v1 ic:*MEMORY[0x277D769D0] preferredFontForStyle:v2 withFontWeight:?];
    if (v16)
    {
      xmmword_28119B150 = xmmword_2154C6850;
      qword_28119B160 = 0x4028000000000000;
      byte_28119B168 = v0;
      unk_28119B170 = xmmword_2154C6860;
      qword_28119B180 = 0x4034000000000000;
      unk_28119B188 = v4;
      LOBYTE(xmmword_28119B190) = 0;
      BYTE1(xmmword_28119B190) = v5 ^ 1;
      *(&xmmword_28119B190 + 8) = xmmword_2154C6870;
      *&qword_28119B1A8 = xmmword_2154C6880;
      qword_28119B1B8 = v12;
      unk_28119B1C0 = v13;
      qword_28119B1C8 = v14;
      unk_28119B1D0 = v15;
      qword_28119B1D8 = v16;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2151AF584()
{
  result = _UISolariumEnabled();
  if (result)
  {
    result = [objc_opt_self() ic_isVision];
    v1 = result ^ 1;
  }

  else
  {
    v1 = 0;
  }

  byte_281199749 = v1;
  return result;
}

void sub_2151AF5CC()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D74418];
  v2 = *MEMORY[0x277D76918];
  v3 = [v0 ic:v2 preferredFontForStyle:v1 withFontWeight:?];

  if (v3)
  {
    qword_28119B1E0 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2151AF750(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id AuthorHighlightsUpdater.init(authorHighlightsController:textLayoutManager:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue] = 0;
  v6 = &v2[OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *&v2[OBJC_IVAR___ICAuthorHighlightsUpdater_filter] = 0;
  v7 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___ICAuthorHighlightsUpdater_collaboratorStatuses] = MEMORY[0x277D84F90];
  v8 = OBJC_IVAR___ICAuthorHighlightsUpdater_showsCursorsUserPreference;
  v2[OBJC_IVAR___ICAuthorHighlightsUpdater_showsCursorsUserPreference] = 1;
  *&v2[OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder] = 0;
  v9 = OBJC_IVAR___ICAuthorHighlightsUpdater_states;
  *&v2[v9] = sub_2151AFA2C(v7);
  *&v2[OBJC_IVAR___ICAuthorHighlightsUpdater____lazy_storage___grouper] = 0;
  *&v2[OBJC_IVAR___ICAuthorHighlightsUpdater_updateTimer] = 0;
  v2[OBJC_IVAR___ICAuthorHighlightsUpdater_animatesScheduledUpdate] = 0;
  v2[OBJC_IVAR___ICAuthorHighlightsUpdater_isUpdating] = 0;
  *&v2[OBJC_IVAR___ICAuthorHighlightsUpdater_preferredFramesPerSecond] = 2;
  v2[OBJC_IVAR___ICAuthorHighlightsUpdater_forceNextUpdate] = 0;
  v2[OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly] = 0;
  *&v2[OBJC_IVAR___ICAuthorHighlightsUpdater_authorHighlightsController] = a1;
  *&v2[OBJC_IVAR___ICAuthorHighlightsUpdater_textLayoutManager] = a2;
  v10 = a2;
  v11 = a1;
  v12 = [v11 note];
  v13 = [v12 showsCollaboratorCursors];

  v2[v8] = v13;
  v19.receiver = v2;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_init);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 defaultCenter];
  [v17 addObserver:v16 selector:sel_noteShowsCollaboratorCursorsDidChange_ name:*MEMORY[0x277D35D10] object:0];

  return v16;
}

unint64_t sub_2151AFA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6F8);
    v3 = sub_2154A2F3C();

    for (i = (a1 + 48); ; i += 8)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = i[1];
      v8 = i[2];
      v9 = i[3];
      v10 = i[4];
      v11 = i[5];
      v12 = *(i - 2);

      result = sub_2153B1320(v12);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v12;
      v15 = (v3[7] + 56 * result);
      *v15 = v5;
      v15[1] = v6;
      v15[2] = v7;
      v15[3] = v8;
      v15[4] = v9;
      v15[5] = v10;
      v15[6] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t AuthorHighlightsUpdater.hasHighlights.getter()
{
  v1 = OBJC_IVAR___ICAuthorHighlightsUpdater_searchHighlightRegexFinder;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 1;
  }

  v2 = OBJC_IVAR___ICAuthorHighlightsUpdater_highlightedValue;
  swift_beginAccess();
  if (*(v0 + v2) > 0.0)
  {
    return 1;
  }

  v3 = v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_focusedRange;
  swift_beginAccess();
  if (*(v3 + 16) != 1)
  {
    return 1;
  }

  v4 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  if (*(v0 + v4))
  {
    return 1;
  }

  v5 = OBJC_IVAR___ICAuthorHighlightsUpdater_collaboratorStatuses;
  result = swift_beginAccess();
  if (*(*(v0 + v5) + 16))
  {
    return 1;
  }

  v7 = 0;
  v8 = *(v0 + OBJC_IVAR___ICAuthorHighlightsUpdater_states);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_16:
    v14 = *(v8 + 56) + 56 * (__clz(__rbit64(v11)) | (v7 << 6));
    v15 = *(v14 + 48);
    if (*v14 != 0.0 && *(*(v14 + 8) + 16) || *(v14 + 16) != 0.0 && *(*(v14 + 24) + 16) || *(*(v14 + 32) + 16) || *(*(v14 + 40) + 16))
    {
      return 1;
    }

    v11 &= v11 - 1;
    result = 1;
    if (*(v15 + 16))
    {
      return result;
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v12)
    {
      return 0;
    }

    v11 = *(v8 + 64 + 8 * v13);
    ++v7;
    if (v11)
    {
      v7 = v13;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_2151B0984(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2151B0D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151B11A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ActivityStreamDockView.init(coordinator:isDisplayedInCard:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICActivityStreamDockView_horizontalStackLeadingConstraint] = 0;
  if (_UISolariumEnabled())
  {
    v5 = [objc_opt_self() ic_isVision];
  }

  else
  {
    v5 = 1;
  }

  v2[OBJC_IVAR___ICActivityStreamDockView_isNonSolarium] = v5;
  *&v2[OBJC_IVAR___ICActivityStreamDockView_selection] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView_object] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView_margin] = 0x4030000000000000;
  *&v2[OBJC_IVAR___ICActivityStreamDockView_buttonHeight] = 0x4040000000000000;
  *&v2[OBJC_IVAR___ICActivityStreamDockView_closeButtonHeight] = 0x4046000000000000;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___topBorderView] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___backgroundEffectView] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___subtitleLabel] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___showAllActivityButton] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack] = 0;
  *&v2[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___baselineLayoutGuide] = 0;
  swift_unknownObjectWeakAssign();
  v2[OBJC_IVAR___ICActivityStreamDockView_isDisplayedInCard] = a2 & 1;
  v2[OBJC_IVAR___ICActivityStreamDockView_colorBarHidden] = 0;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2151B1A28();

  swift_unknownObjectRelease();
  return v6;
}

void sub_2151B1A28()
{
  v1 = sub_2151B2CA0();
  [v0 addSubview_];

  v2 = sub_2151B2D68();
  [v0 addSubview_];

  LODWORD(v149) = *(v0 + OBJC_IVAR___ICActivityStreamDockView_isNonSolarium);
  if (v149 == 1)
  {
    v3 = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton, sub_2153863A0);
    [v0 addSubview_];
  }

  if (ICAccessibilityAccessibilityLargerTextSizesEnabled() && *(v0 + OBJC_IVAR___ICActivityStreamDockView_isDisplayedInCard) == 1)
  {
    v4 = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack, sub_2151B2ED8);
    v5 = sub_2151B32A8();
    [v4 insertArrangedSubview:v5 atIndex:0];

    v6 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2154BDB10;
    v8 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar;
    v9 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar) topAnchor];
    v10 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack;
    v11 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack) topAnchor];
    v12 = [v9 constraintEqualToAnchor_];

    *(v7 + 32) = v12;
    v13 = [*(v0 + v8) bottomAnchor];
    v14 = [*(v0 + v10) bottomAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v7 + 40) = v15;
    sub_2151A6C9C(0, &qword_2811995A0);
    v16 = sub_2154A1F3C();

    [v6 activateConstraints_];

    goto LABEL_11;
  }

  v17 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack);
  v18 = sub_2151B32A8();
  [v17 insertArrangedSubview:v18 atIndex:0];

  v19 = [v0 layoutGuides];
  sub_2151A6C9C(0, &qword_281199658);
  v20 = sub_2154A1F4C();

  v21 = sub_2151B336C();
  v150 = v21;
  MEMORY[0x28223BE20](v21);
  v146[2] = &v150;
  LOBYTE(v19) = sub_2151B33E0(sub_215386A14, v146, v20);

  if ((v19 & 1) == 0)
  {
    [v0 addLayoutGuide_];
  }

  v22 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___baselineLayoutGuide;
  v23 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___baselineLayoutGuide) topAnchor];
  v24 = sub_2151B3084();
  v25 = [v24 topAnchor];

  v26 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___titleLabel;
  v27 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___titleLabel) font];
  if (!v27)
  {
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  [v27 ascender];
  v30 = v29;

  v31 = [v23 constraintEqualToAnchor:v25 constant:v30];
  LODWORD(v32) = 1144750080;
  [v31 setPriority_];
  v33 = [*(v0 + v22) bottomAnchor];
  v34 = [*(v0 + v26) firstBaselineAnchor];
  v35 = [*(v0 + v26) font];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v36 = v35;
  [v35 descender];
  v38 = v37;

  v39 = [v33 constraintEqualToAnchor:v34 constant:v38];
  LODWORD(v40) = 1144750080;
  [v39 setPriority_];
  v148 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2154BFED0;
  *(v41 + 32) = v31;
  *(v41 + 40) = v39;
  v42 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView;
  v43 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView);
  v147 = v31;
  v44 = v39;
  v45 = [v43 centerYAnchor];
  v46 = [*(v0 + v22) centerYAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v41 + 48) = v47;
  v48 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar;
  v49 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar) centerYAnchor];
  v50 = [*(v0 + v42) centerYAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v41 + 56) = v51;
  v52 = [*(v0 + v48) heightAnchor];
  v53 = [v52 constraintEqualToConstant_];

  *(v41 + 64) = v53;
  sub_2151A6C9C(0, &qword_2811995A0);
  v54 = sub_2154A1F3C();

  [v148 activateConstraints_];

LABEL_11:
  v55 = &selRef_isRubberBandingEnabled;
  if (*(v0 + OBJC_IVAR___ICActivityStreamDockView_isDisplayedInCard) == 1)
  {
    v56 = &selRef__dataOwnerForCopy;
    if (v149)
    {
      v57 = [objc_opt_self() systemBackgroundColor];
      [v0 setBackgroundColor_];

      v58 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_2154BDB20;
      v60 = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton, sub_2153863A0);
      v61 = [v60 topAnchor];

      v62 = [v0 topAnchor];
      v63 = [v61 constraintEqualToAnchor:v62 constant:6.0];

      *(v59 + 32) = v63;
      sub_2151A6C9C(0, &qword_2811995A0);
LABEL_16:
      v107 = sub_2154A1F3C();

      [v58 v56[158]];
    }
  }

  else
  {
    v64 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack);
    v65 = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___showAllActivityButton, sub_215385E44);
    [v64 addArrangedSubview_];

    v66 = sub_215385D80();
    [v0 insertSubview:v66 belowSubview:*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar)];

    v67 = sub_215385CAC();
    [v0 addSubview_];

    v148 = objc_opt_self();
    v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_2154BFEE0;
    v69 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___backgroundEffectView;
    v70 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___backgroundEffectView) topAnchor];
    v71 = [v0 topAnchor];
    v72 = [v70 constraintEqualToAnchor_];

    *(v68 + 32) = v72;
    v73 = [*(v0 + v69) leadingAnchor];
    v74 = [v0 leadingAnchor];
    v75 = [v73 constraintEqualToAnchor_];

    *(v68 + 40) = v75;
    v76 = [*(v0 + v69) heightAnchor];
    v77 = [v0 heightAnchor];
    v78 = [v76 constraintEqualToAnchor_];

    *(v68 + 48) = v78;
    v79 = [*(v0 + v69) widthAnchor];
    v80 = [v0 widthAnchor];
    v81 = [v79 constraintEqualToAnchor_];

    *(v68 + 56) = v81;
    v82 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___topBorderView;
    v83 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___topBorderView) heightAnchor];
    v84 = [v83 constraintEqualToConstant_];

    *(v68 + 64) = v84;
    v85 = [*(v0 + v82) topAnchor];
    v86 = [v0 topAnchor];
    v87 = [v85 constraintEqualToAnchor_];

    *(v68 + 72) = v87;
    v88 = [*(v0 + v82) leadingAnchor];
    v89 = [v0 leadingAnchor];
    v90 = [v88 constraintEqualToAnchor_];

    *(v68 + 80) = v90;
    v91 = [*(v0 + v82) trailingAnchor];
    v92 = [v0 trailingAnchor];
    v93 = [v91 constraintEqualToAnchor_];

    *(v68 + 88) = v93;
    v55 = &selRef_isRubberBandingEnabled;
    v94 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___showAllActivityButton;
    v95 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___showAllActivityButton) heightAnchor];
    v96 = [v95 constraintGreaterThanOrEqualToConstant_];

    *(v68 + 96) = v96;
    v97 = [*(v0 + v94) centerYAnchor];
    v98 = sub_2151B32A8();
    v99 = [v98 centerYAnchor];

    v100 = [v97 constraintEqualToAnchor_];
    *(v68 + 104) = v100;
    sub_2151A6C9C(0, &qword_2811995A0);
    v101 = sub_2154A1F3C();

    v56 = &selRef__dataOwnerForCopy;
    v58 = v148;
    [v148 activateConstraints_];

    if (v149)
    {
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_2154BDB20;
      v103 = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton, sub_2153863A0);
      v104 = [v103 centerYAnchor];

      v105 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView) centerYAnchor];
      v106 = [v104 &selRef_currentFilter + 5];

      *(v102 + 32) = v106;
      goto LABEL_16;
    }
  }

  v148 = objc_opt_self();
  v146[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_2154BFED0;
  v147 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar;
  v109 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar) v55[137]];
  v110 = [v0 safeAreaLayoutGuide];
  v111 = [v110 v55[137]];

  v112 = [v109 constraintEqualToAnchor:v111 constant:16.0];
  *(v108 + 32) = v112;
  v113 = v56;
  v114 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack;
  v115 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack) topAnchor];
  v116 = [v0 safeAreaLayoutGuide];
  v117 = [v116 topAnchor];

  v118 = [v115 constraintEqualToAnchor:v117 constant:16.0];
  *(v108 + 40) = v118;
  v119 = [*(v0 + v114) bottomAnchor];
  v120 = [v0 safeAreaLayoutGuide];
  v121 = [v120 bottomAnchor];

  v122 = [v119 constraintEqualToAnchor:v121 constant:-16.0];
  *(v108 + 48) = v122;
  v123 = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack, sub_2151B2ED8);
  v124 = [v123 heightAnchor];

  v125 = [v124 constraintGreaterThanOrEqualToConstant_];
  *(v108 + 56) = v125;
  v126 = [*&v147[v0] widthAnchor];
  v127 = [v126 constraintEqualToConstant_];

  *(v108 + 64) = v127;
  v128 = sub_2151A6C9C(0, &qword_2811995A0);
  v129 = sub_2154A1F3C();

  [v148 v113 + 1419];

  if (v149)
  {
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_2154BDB30;
    v131 = *(v0 + v114);
    v149 = v128;
    v132 = [v131 trailingAnchor];
    v133 = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton, sub_2153863A0);
    v134 = [v133 leadingAnchor];

    v135 = [v132 constraintEqualToAnchor:v134 constant:-10.0];
    *(v130 + 32) = v135;
    v136 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton;
    v137 = [*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___closeButton) widthAnchor];
    v138 = [v137 &selRef_currentStrokeStartTouch + 1];

    *(v130 + 40) = v138;
    v139 = [*(v0 + v136) heightAnchor];
    v140 = [v139 &selRef_currentStrokeStartTouch + 1];

    *(v130 + 48) = v140;
    v141 = [*(v0 + v136) trailingAnchor];
    v142 = [v0 safeAreaLayoutGuide];
    v143 = [v142 trailingAnchor];

    v144 = [v141 constraintEqualToAnchor:v143 constant:-6.0];
    *(v130 + 56) = v144;
    v145 = sub_2154A1F3C();

    [v148 activateConstraints_];
  }

  ActivityStreamDockView.update()();
}

id sub_2151B2CA0()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [v4 layer];
    [v5 setCornerRadius_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2151B2D68()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___horizontalStack);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2154BDB20;
    *(v4 + 32) = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack, sub_2151B2ED8);
    v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
    sub_2151A6C9C(0, &qword_2811994D0);
    v6 = sub_2154A1F3C();

    v7 = [v5 initWithArrangedSubviews_];

    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setSpacing_];
    [v7 setCustomSpacing:*(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack) afterView:16.0];
    [v7 setAlignment_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_2151B2ED8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2154BDB10;
  *(v0 + 32) = sub_2151B3084();
  *(v0 + 40) = sub_2151B31B4();
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_2151A6C9C(0, &qword_2811994D0);
  v2 = sub_2154A1F3C();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v4) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v4];
  LODWORD(v5) = 1148846080;
  [v3 setContentCompressionResistancePriority:1 forAxis:v5];
  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setDistribution_];
  return v3;
}

id sub_2151B3024(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2151B3084()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = sub_2151B30E4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2151B30E4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForTextStyle:*MEMORY[0x277D767F8] maxContentSizeCategory:?];
  [v0 setFont_];

  [v0 setNumberOfLines_];
  LODWORD(v2) = 1148846080;
  [v0 setContentCompressionResistancePriority:1 forAxis:v2];
  return v0;
}

id sub_2151B31B4()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setNumberOfLines_];
    LODWORD(v6) = 1148846080;
    [v4 setContentCompressionResistancePriority:1 forAxis:v6];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2151B32A8()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];

    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_2151B336C()
{
  v1 = OBJC_IVAR___ICActivityStreamDockView____lazy_storage___baselineLayoutGuide;
  v2 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___baselineLayoutGuide);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICActivityStreamDockView____lazy_storage___baselineLayoutGuide);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2151B33E0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x216069960](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2154A2C8C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

Swift::Void __swiftcall ActivityStreamDockView.update()()
{
  v1 = v0;
  v2 = sub_2154A10EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A110C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v113 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2154A259C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_21549E6AC();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2154A25BC();
  v109 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4C8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v100 - v19;
  MEMORY[0x28223BE20](v18);
  v119 = v100 - v21;
  v22 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  v117 = v3;
  v118 = v2;
  v115 = v5;
  v116 = v6;
  v114 = v7;
  if (v22)
  {
    v23 = v1[OBJC_IVAR___ICActivityStreamDockView_isDisplayedInCard];
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_2151B3024(&OBJC_IVAR___ICActivityStreamDockView____lazy_storage___verticalStack, sub_2151B2ED8);
  v25 = [v24 arrangedSubviews];

  sub_2151A6C9C(0, &qword_2811994D0);
  v26 = sub_2154A1F4C();

  v27 = sub_2151B32A8();
  aBlock = v27;
  MEMORY[0x28223BE20](v27);
  v100[-2] = &aBlock;
  v28 = sub_2151B33E0(sub_2151B44D0, &v100[-4], v26);
  v105 = 0;
  LODWORD(v25) = v28 & 1;

  if (v23 != v25)
  {
    sub_2153852FC();
    return;
  }

  v29 = OBJC_IVAR___ICActivityStreamDockView_selection;
  swift_beginAccess();
  v30 = *&v1[v29];
  if (!v30)
  {
    v45 = 0;
    v33 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v31 = OBJC_IVAR___ICActivityStreamDockView_object;
  swift_beginAccess();
  v32 = *&v1[v31];
  v33 = MEMORY[0x277D84F90];
  if (!v32)
  {
    goto LABEL_13;
  }

  v34 = objc_allocWithZone(MEMORY[0x277D35DE8]);
  v35 = v32;
  v36 = v30;
  v37 = [v34 initWithObject_];
  if (!v37)
  {

LABEL_13:
    v30 = 0;
    v45 = 0;
    goto LABEL_27;
  }

  v38 = v37;
  v103 = v35;
  v104 = v36;
  v39 = [v36 filter];
  v40 = v109;
  (*(v109 + 104))(v13, *MEMORY[0x277D35B40], v11);
  v41 = v119;
  v102 = v38;
  sub_2154A25DC();

  (*(v40 + 8))(v13, v11);
  sub_215386900(v41, v20);
  v42 = sub_2154A25CC();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  if (v44(v20, 1, v42) == 1)
  {
    sub_215386970(v20);
    v109 = 0;
  }

  else
  {
    v109 = sub_2154A257C();
    (*(v43 + 8))(v20, v42);
  }

  v45 = v104;
  v46 = [v104 displayDate];
  v47 = v110;
  sub_21549E66C();

  v100[1] = sub_21549E61C();
  v101 = v48;
  (*(v111 + 8))(v47, v112);
  sub_215386900(v119, v17);
  if (v44(v17, 1, v42) != 1)
  {
    v49 = v106;
    sub_2154A25AC();
    (*(v43 + 8))(v17, v42);
    v50 = sub_2154A258C();
    (*(v107 + 8))(v49, v108);
    v112 = v33;
    aBlock = v33;
    v51 = *(v50 + 16);
    v52 = v103;
    v53 = 0;
    v54 = v50 + 40;
    v30 = &selRef_objectEnumerator;
    v111 = v50 + 40;
LABEL_18:
    v55 = (v54 + 16 * v53);
    while (1)
    {
      if (v51 == v53)
      {

        v45 = v109;
        v33 = v112;
        goto LABEL_26;
      }

      if (v53 >= *(v50 + 16))
      {
        break;
      }

      ++v53;
      v45 = v55 + 16;

      v56 = sub_2154A1D2C();
      v33 = [v52 participantForUserID_];

      v55 = v45;
      if (v33)
      {
        MEMORY[0x216068AC0]();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2154A1F8C();
        }

        sub_2154A1FAC();
        v112 = aBlock;
        v54 = v111;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  sub_215386970(v17);

  v45 = v109;
LABEL_26:
  sub_215386970(v119);
  v30 = v101;
LABEL_27:
  v51 = v33 >> 62;
  if (!(v33 >> 62))
  {
    v57 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_29;
  }

LABEL_52:
  v57 = sub_2154A2C8C();
LABEL_29:
  v1[OBJC_IVAR___ICActivityStreamDockView_colorBarHidden] = v57 != 1;
  sub_2151B44FC();
  v58 = sub_2151B3084();
  [v58 setAttributedText_];

  v59 = sub_2151B31B4();
  v60 = v33;
  if (v30)
  {
    v61 = sub_2154A1D2C();
  }

  else
  {
    v61 = 0;
  }

  [v59 setText_];

  v62 = *&v1[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___subtitleLabel];
  v63 = objc_opt_self();
  v64 = *MEMORY[0x277D76968];
  v65 = *MEMORY[0x277D767F8];
  v66 = v62;
  v67 = [v63 ic:v64 preferredFontForTextStyle:v65 maxContentSizeCategory:?];
  [v66 setFont_];

  if (v57 != 1)
  {
    goto LABEL_48;
  }

  v68 = OBJC_IVAR___ICActivityStreamDockView_object;
  swift_beginAccess();
  v69 = *&v1[v68];
  if (!v69)
  {
    goto LABEL_48;
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (!v70)
  {
    goto LABEL_48;
  }

  v71 = v70;
  if (v51)
  {
    if (sub_2154A2C8C())
    {
      goto LABEL_37;
    }
  }

  else if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_37:
    if ((v60 & 0xC000000000000001) != 0)
    {
      v99 = v69;
      v74 = MEMORY[0x216069960](0, v60);
    }

    else
    {
      if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v72 = *(v60 + 32);
      v73 = v69;
      v74 = v72;
    }

    v75 = v74;
    v76 = v45;
    v77 = [v74 userIdentity];

    v78 = [v77 userRecordID];
    if (v78)
    {
      v79 = [v78 recordName];

      sub_2154A1D6C();
      v78 = v80;
    }

    goto LABEL_44;
  }

  v76 = v45;
  v81 = v69;
  v78 = 0;
LABEL_44:
  v82 = [v71 collaborationColorManager];
  if (v78)
  {
    v83 = sub_2154A1D2C();
  }

  else
  {
    v83 = 0;
  }

  v84 = [v82 highlightColorForUserID:v83 note:v71];

  v85 = sub_2151B2CA0();
  [v85 setBackgroundColor_];

  v45 = v76;
LABEL_48:
  [*&v1[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___avatarView] setImage_];
  if (v57 < 1)
  {

    sub_2151A6C9C(0, &unk_2811995C0);
    v92 = sub_2154A245C();
    v93 = swift_allocObject();
    *(v93 + 16) = v1;
    v124 = sub_2153868F8;
    v125 = v93;
    aBlock = MEMORY[0x277D85DD0];
    v121 = 1107296256;
    v122 = sub_2151BD7E4;
    v123 = &block_descriptor_13;
    v94 = _Block_copy(&aBlock);
    v95 = v1;

    v96 = v113;
    sub_2154A10FC();
    aBlock = MEMORY[0x277D84F90];
    sub_2151B5F20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
    sub_2151B5F78();
    v97 = v115;
    v98 = v118;
    sub_2154A2BEC();
    MEMORY[0x216069000](0, v96, v97, v94);

    _Block_release(v94);
    (*(v117 + 8))(v97, v98);
    (*(v114 + 8))(v96, v116);
  }

  else
  {
    v86 = objc_allocWithZone(MEMORY[0x277D36980]);
    sub_2151A6C9C(0, &qword_2811995B0);
    v87 = sub_2154A1F3C();

    v88 = [v86 initForAvatarWithParticipants:v87 preferredSize:0 hasBorder:{32.0, 32.0}];

    v89 = [objc_opt_self() sharedThumbnailService];
    v90 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v124 = sub_2151B5BE0;
    v125 = v90;
    aBlock = MEMORY[0x277D85DD0];
    v121 = 1107296256;
    v122 = sub_2151B5B78;
    v123 = &block_descriptor_6;
    v91 = _Block_copy(&aBlock);

    [v89 thumbnailWithConfiguration:v88 completion:v91];
    _Block_release(v91);
  }
}

uint64_t sub_2151B4408()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151B4440()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2151B44FC()
{
  v1 = sub_2151B2CA0();
  v2 = OBJC_IVAR___ICActivityStreamDockView_colorBarHidden;
  [v1 setHidden_];

  v3 = OBJC_IVAR___ICActivityStreamDockView_horizontalStackLeadingConstraint;
  v4 = *&v0[OBJC_IVAR___ICActivityStreamDockView_horizontalStackLeadingConstraint];
  if (v4)
  {
    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2154BDB20;
    *(v6 + 32) = v4;
    sub_2151A6C9C(0, &qword_2811995A0);
    v7 = v4;
    v8 = sub_2154A1F3C();

    [v5 deactivateConstraints_];
  }

  v9 = v0[v2];
  v10 = sub_2151B2D68();
  v11 = [v10 leadingAnchor];

  if (v9 == 1)
  {
    v12 = [v0 safeAreaLayoutGuide];
    v13 = [v12 leadingAnchor];

    v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  }

  else
  {
    v13 = [*&v0[OBJC_IVAR___ICActivityStreamDockView____lazy_storage___colorBar] trailingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:8.0];
  }

  v15 = v14;

  v16 = *&v0[v3];
  *&v0[v3] = v15;
  v17 = v15;

  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2154BDB20;
  *(v19 + 32) = v17;
  sub_2151A6C9C(0, &qword_2811995A0);
  v20 = v17;
  v21 = sub_2154A1F3C();

  [v18 activateConstraints_];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2151B4A24(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  ActivityStreamDockView.update()();
}

uint64_t sub_2151B54E0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151B5528(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2151BD36C;

  return sub_2151B55E0(a1, v4);
}

uint64_t sub_2151B55E0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2151BD488;

  return v6(a1);
}

uint64_t sub_2151B56D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_2151B57A4(a1, v4, v5, v6);
}

uint64_t sub_2151B57A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2151BD278;

  return v7();
}

uint64_t sub_2151B588C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2151BD36C;

  return sub_2151B594C(v2, v3, v4);
}

uint64_t sub_2151B594C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2151BD36C;

  return v6();
}

uint64_t sub_2151B5A34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2151BD278;

  return sub_2151B5AE0(v2, v3);
}

uint64_t sub_2151B5AE0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_2154A1FFC();
  v2[4] = sub_2154A1FEC();
  v4 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2151BB3EC, v4, v3);
}

void sub_2151B5B78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2151B5BE8(void *a1, uint64_t a2)
{
  v4 = sub_2154A10EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2154A110C();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2151A6C9C(0, &unk_2811995C0);
  v11 = sub_2154A245C();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_2151BD898;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_15;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2151B5F20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151B5F78();
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_2151B5E88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2151B5F20()
{
  result = qword_281199700;
  if (!qword_281199700)
  {
    sub_2154A10EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199700);
  }

  return result;
}

unint64_t sub_2151B5F78()
{
  result = qword_2811996F0;
  if (!qword_2811996F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA59E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811996F0);
  }

  return result;
}

void sub_2151B6D04()
{
  v1 = v0;
  v104 = *(v0 + OBJC_IVAR___ICAudioAttachmentEditorCoordinator_noteEditorViewController);
  v2 = [v104 textView];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_trackedAttachmentViews;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    sub_2154A2C3C();
    sub_2151A6C9C(0, &unk_281199610);
    sub_21533FBE4(&qword_27CA5C7D0, &unk_281199610);
    sub_2154A20FC();
    v5 = v107;
    v6 = v108;
    v8 = v109;
    v7 = v110;
    v9 = v111;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);

    v7 = 0;
  }

  v102 = v5;
  v13 = (v8 + 64) >> 6;
  while (1)
  {
    if (v5 < 0)
    {
      if (!sub_2154A2CDC() || (sub_2151A6C9C(0, &unk_281199610), swift_dynamicCast(), v18 = v106, v16 = v7, v17 = v9, !v106))
      {
LABEL_66:
        sub_2151A66EC();

        return;
      }

      goto LABEL_20;
    }

    v14 = v7;
    v15 = v9;
    v16 = v7;
    if (!v9)
    {
      break;
    }

LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_66;
    }

LABEL_20:
    v19 = [v18 attachment];
    if (v19)
    {
      v20 = v19;
      if (([v19 isVisible] & 1) == 0)
      {

        goto LABEL_10;
      }

      v105 = v17;
      v21 = [v20 note];
      v22 = [v104 note];
      v23 = v22;
      if (v21)
      {
        if (!v22)
        {

          goto LABEL_32;
        }

        sub_2151A6C9C(0, &qword_27CA5C700);
        v24 = sub_2154A291C();

        if ((v24 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v22)
      {

LABEL_32:
        goto LABEL_62;
      }

      v25 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_ignoredAttachments;
      swift_beginAccess();
      v26 = *(v1 + v25);

      v27 = [v20 objectID];
      sub_2151A6C9C(0, &qword_2811995F0);
      v99 = v1;
      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = v27;
        v29 = sub_2154A2CEC();

        if (v29)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v101 = v27;
        v98 = v3;
        if (*(v26 + 16))
        {
          v30 = sub_2154A290C();
          v31 = -1 << *(v26 + 32);
          v32 = v30 & ~v31;
          if ((*(v26 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            v33 = ~v31;
            while (1)
            {
              v34 = *(*(v26 + 48) + 8 * v32);
              v35 = sub_2154A291C();

              if (v35)
              {
                break;
              }

              v32 = (v32 + 1) & v33;
              if (((*(v26 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            goto LABEL_64;
          }
        }

LABEL_38:

        v3 = v98;
        v1 = v99;
      }

      v36 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_closedAttachments;
      swift_beginAccess();
      v37 = *(v1 + v36);

      v38 = [v20 objectID];
      v39 = v38;
      if ((v37 & 0xC000000000000001) != 0)
      {
        v40 = v38;
        v41 = sub_2154A2CEC();

        if (v41)
        {
LABEL_41:

          goto LABEL_62;
        }

LABEL_48:
        v47 = v3;
        v48 = [objc_opt_self() sharedAudioController];
        if (!v48)
        {
          goto LABEL_69;
        }

        v49 = v48;
        v50 = [v48 currentAttachment];

        if (v50)
        {
          sub_2151A6C9C(0, &qword_281199690);
          v51 = v20;
          v52 = sub_2154A291C();

          if (v52)
          {
            goto LABEL_54;
          }
        }

        sub_21549F93C();
        sub_21549F90C();
        v53 = sub_21549F91C();

        if (!v53)
        {

          goto LABEL_58;
        }

        sub_2151A6C9C(0, &qword_281199690);
        v54 = v20;
        v55 = sub_2154A291C();

        if ((v55 & 1) == 0 || (sub_21549F90C(), v56 = sub_21549F8DC(), , (v56 & 1) == 0))
        {

LABEL_58:
          v7 = v16;
          v9 = v105;
          v3 = v47;
          goto LABEL_65;
        }

LABEL_54:
        v3 = v47;
        v57 = v47;
        [v57 safeAreaInsets];
        v103 = v58;
        v60 = v59;
        [v57 bounds];
        CGRectGetMaxY(v112);
        v61 = [v57 keyboardLayoutGuide];
        [v61 layoutFrame];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;

        v113.origin.x = v63;
        v113.origin.y = v65;
        v113.size.width = v67;
        v113.size.height = v69;
        CGRectGetMinY(v113);
        [v57 bounds];
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v77 = v76;

        [v57 convertRect:0 toView:{UIEdgeInsetsInsetRect(v71, v73, v75, v77, v103, v60)}];
        v79 = v78;
        v81 = v80;
        v83 = v82;
        v85 = v84;
        v86 = v18;
        [v86 bounds];
        [v86 convertRect:0 toView:?];
        x = v114.origin.x;
        y = v114.origin.y;
        width = v114.size.width;
        height = v114.size.height;
        v91 = CGRectGetHeight(v114) * 0.5;
        v115.origin.x = v79;
        v115.origin.y = v81;
        v115.size.width = v83;
        v115.size.height = v85;
        v116 = CGRectInset(v115, 0.0, v91);
        v92 = v116.origin.x;
        v93 = v116.origin.y;
        v94 = v116.size.width;
        v95 = v116.size.height;
        v96 = [v86 window];

        if (v96)
        {

          v117.origin.x = v92;
          v117.origin.y = v93;
          v117.size.width = v94;
          v117.size.height = v95;
          v118.origin.x = x;
          v118.origin.y = y;
          v118.size.width = width;
          v118.size.height = height;
          v97 = !CGRectIntersectsRect(v117, v118);
        }

        else
        {
          v97 = 1;
        }

        v1 = v99;
        sub_2153E2A18(v97, v20);

LABEL_62:
        v7 = v16;
        v9 = v105;
        v5 = v102;
      }

      else
      {
        v98 = v3;
        if (!*(v37 + 16) || (v42 = sub_2154A290C(), v43 = -1 << *(v37 + 32), v44 = v42 & ~v43, ((*(v37 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0))
        {
LABEL_47:

          v3 = v98;
          goto LABEL_48;
        }

        v100 = ~v43;
        while (1)
        {
          v45 = *(*(v37 + 48) + 8 * v44);
          v46 = sub_2154A291C();

          if (v46)
          {
            break;
          }

          v44 = (v44 + 1) & v100;
          if (((*(v37 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
          {
            goto LABEL_47;
          }
        }

LABEL_64:

        v7 = v16;
        v9 = v105;
        v3 = v98;
LABEL_65:
        v1 = v99;
        v5 = v102;
      }
    }

    else
    {
LABEL_10:

      v7 = v16;
      v9 = v17;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_66;
    }

    v15 = *(v6 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
}

void sub_2151B8688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151B87A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ICHashWithHashKeys(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  if (!a1)
  {
    return 1;
  }

  v9 = a1;
  result = 1;
  do
  {
    result = v9 - result + 32 * result;
    v11 = v12;
    v12 += 8;
    v9 = *v11;
  }

  while (v9);
  return result;
}

uint64_t sub_2151BB3EC()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2151BCEAC;

  return LinkAcceleratorController.presentLinkAcceleratorIfNecessary()();
}

void sub_2151BB604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2151BB62C()
{
  v1 = LinkAcceleratorController.shouldShowLinkAccelerator.getter();
  *(v0 + 144) = v1 & 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong note];
    swift_unknownObjectRelease();
    v4 = [v3 textStorage];
  }

  else
  {
    v4 = 0;
  }

  *(v0 + 120) = v4;
  v5 = *(v0 + 88);
  v6 = OBJC_IVAR___ICLinkAcceleratorController_isShowing;
  if (v1)
  {
    swift_beginAccess();
    if (*(v5 + v6))
    {
      v7 = swift_task_alloc();
      *(v0 + 136) = v7;
      *v7 = v0;
      v7[1] = sub_21536E860;

      return sub_2154927F0();
    }

    else
    {
      v16 = swift_task_alloc();
      *(v0 + 128) = v16;
      *v16 = v0;
      v16[1] = sub_21536E600;

      return sub_21536F304();
    }
  }

  else
  {
    swift_beginAccess();
    v9 = *(v5 + v6);

    if (v9 == 1)
    {
      LinkAcceleratorController.hideAccelerator()();
    }

    v10 = *(v0 + 120);
    if (v10)
    {
      v11 = *(v0 + 144);
      sub_2151BCCE4(*(v0 + 120));
      if (v11 == 1 && (v12 = LinkAcceleratorController.acceleratorDetectionResult.getter(), v13 = *&v12[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange], v14 = *&v12[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange + 8], v15 = v12[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange + 16], v12, v15 != 1))
      {
        v17 = *(v0 + 88);
        v18 = *MEMORY[0x277D35FE8];
        v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        v20 = v18;
        v21 = [v19 initWithBool_];
        [v10 addAttribute:v20 value:v21 range:{v13, v14}];

        v22 = v17 + OBJC_IVAR___ICLinkAcceleratorController_currentSuggestionRange;
        *v22 = v13;
        *(v22 + 8) = v14;
        *(v22 + 16) = 0;
      }

      else
      {
      }
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

void *LinkAcceleratorController.shouldShowLinkAccelerator.getter()
{
  if (*(v0 + OBJC_IVAR___ICLinkAcceleratorController_mode) == 1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result;
      if ([result respondsToSelector_])
      {
        v3 = [v2 searchString];
        swift_unknownObjectRelease();
        v4 = [v3 length];

        return (v4 > 0);
      }

      else
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  else
  {
    v5 = OBJC_IVAR___ICLinkAcceleratorController_needToWaitUntilUpdateBoundsToAppear;
    swift_beginAccess();
    if (*(v0 + v5))
    {
      return 0;
    }

    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 isSecureScreenShowing];

    if (v7)
    {
      return 0;
    }

    else
    {
      v8 = LinkAcceleratorController.acceleratorDetectionResult.getter();
      v9 = v8[OBJC_IVAR___ICAcceleratorDetectionResult_isValidAcceleratorScenario];

      return v9;
    }
  }

  return result;
}

uint64_t LinkAcceleratorController.presentLinkAcceleratorIfNecessary()()
{
  v1[11] = v0;
  sub_2154A1FFC();
  v1[12] = sub_2154A1FEC();
  v3 = sub_2154A1FCC();
  v1[13] = v3;
  v1[14] = v2;

  return MEMORY[0x2822009F8](sub_2151BB62C, v3, v2);
}

id LinkAcceleratorController.acceleratorDetectionResult.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICLinkAcceleratorController_mode);
  if (v1 != 1)
  {
    if (v1)
    {
      result = sub_2154A2FDC();
      __break(1u);
      return result;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_13;
    }

    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      v7 = [v6 textStorage];
      swift_unknownObjectRelease();
      v4 = [v7 string];

      if (!v4)
      {
        sub_2154A1D6C();
        v4 = sub_2154A1D2C();
      }

      goto LABEL_10;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 searchString];
      swift_unknownObjectRelease();
LABEL_10:
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        v10 = v4;
        v11 = [v9 lastSelectedRangeForAccelerator];
        v13 = v12;
        swift_unknownObjectRelease();
        sub_2151BC1A8(v10, v11, v13);
        v15 = v14;

        return v15;
      }

      else
      {
        v22 = qword_27CA59848;
        v23 = v4;
        if (v22 != -1)
        {
          swift_once();
        }

        v24 = sub_21549F11C();
        __swift_project_value_buffer(v24, qword_27CA5B120);
        v25 = sub_21549F0FC();
        v26 = sub_2154A226C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_2151A1000, v25, v26, "Couldn't get selection from delegate.", v27, 2u);
          MEMORY[0x21606B520](v27, -1, -1);
        }

        if (qword_2811999A0 != -1)
        {
          swift_once();
        }

        v28 = qword_28119B2A0;

        return v28;
      }
    }

LABEL_12:
    swift_unknownObjectRelease();
  }

LABEL_13:
  if (qword_27CA59848 != -1)
  {
    swift_once();
  }

  v17 = sub_21549F11C();
  __swift_project_value_buffer(v17, qword_27CA5B120);
  v18 = sub_21549F0FC();
  v19 = sub_2154A226C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2151A1000, v18, v19, "No text vended by delegate. Can't proceed with check for link accelerator.", v20, 2u);
    MEMORY[0x21606B520](v20, -1, -1);
  }

  if (qword_2811999A0 != -1)
  {
    swift_once();
  }

  v21 = qword_28119B2A0;

  return v21;
}

void sub_2151BC17C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2151BC1A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_21549E15C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v105 - v13;
  v15 = [a1 length];
  if (*(v4 + OBJC_IVAR___ICLinkAcceleratorController_mode) == 1)
  {
    v16 = sub_2154A1D6C();
    v18 = v17;
    v19 = type metadata accessor for AcceleratorDetectionResult();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];
    *v21 = v16;
    v21[1] = v18;
    v20[OBJC_IVAR___ICAcceleratorDetectionResult_isValidAcceleratorScenario] = 1;
    v22 = &v20[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange];
    *v22 = a2;
    *(v22 + 1) = a3;
    v22[16] = 0;
    v118.receiver = v20;
    v118.super_class = v19;
    objc_msgSendSuper2(&v118, sel_init);
    return;
  }

  v23 = v15;
  v24 = sub_21549E0EC();
  if (a2 < 2 || v24 == a2 || a3 >= 1 || v23 < a2)
  {
    if (qword_2811999A0 != -1)
    {
      swift_once();
    }

    v25 = qword_28119B2A0;

    v26 = v25;
    return;
  }

  v112 = v23;
  v27 = OBJC_IVAR___ICLinkAcceleratorController_isShowing;
  swift_beginAccess();
  v116 = v27;
  if (*(v4 + v27) != 1)
  {
    goto LABEL_19;
  }

  v28 = [a1 substringWithRange_];
  if (v28)
  {
    v29 = v28;
    sub_2151A6C9C(0, &qword_281199488);
    v30 = sub_2154A294C();
    v31 = sub_2154A291C();

    if (v31)
    {
      if (qword_2811999A0 != -1)
      {
        swift_once();
      }

      qword_28119B2A0;

      return;
    }

LABEL_19:
    v32 = *(v4 + OBJC_IVAR___ICLinkAcceleratorController_acceleratorChar);

    v115 = v32;
    sub_2154A1EDC();
    v33 = sub_2154A1D2C();

    if (a2 == 2)
    {
      v34 = v33;
      v35 = [a1 substringWithRange_];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 isEqual_];
        v38 = type metadata accessor for AcceleratorDetectionResult();
        v39 = objc_allocWithZone(v38);
        *&v39[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText] = xmmword_2154BF800;
        v39[OBJC_IVAR___ICAcceleratorDetectionResult_isValidAcceleratorScenario] = v37;
        v40 = &v39[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange];
        *v40 = xmmword_2154BF810;
        v40[16] = 0;
        v119.receiver = v39;
        v119.super_class = v38;
        objc_msgSendSuper2(&v119, sel_init);

        return;
      }

      goto LABEL_113;
    }

    v109 = v33;
    v108 = v8;
    v41 = objc_opt_self();
    v42 = [v41 whitespaceAndNewlineCharacterSet];
    v117 = v4;
    v43 = v42;
    sub_21549E12C();

    v44 = [v41 whitespaceCharacterSet];
    sub_21549E12C();

    v122 = 1;
    v121 = 1;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v107 = v9;
    v110 = v12;
    if (Strong)
    {
      v106 = [Strong languageHasSpaces];
      swift_unknownObjectRelease();
    }

    else
    {
      v106 = 1;
    }

    v46 = sub_2154A1D2C();
    v113 = v14;
    v114 = v46;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v111 = v112 - 1;
    v50 = a2;
    while (2)
    {
      v115 = v47;
      --v50;
      while (1)
      {
        v51 = [a1 substringWithRange_];
        if (!v51)
        {
          goto LABEL_108;
        }

        v52 = v51;
        v53 = sub_21549E10C();
        v54 = [v52 stringByTrimmingCharactersInSet_];

        v55 = sub_2154A1D6C();
        v57 = v56;

        if ((v57 & 0x2000000000000000) != 0)
        {
          v58 = HIBYTE(v57) & 0xF;
        }

        else
        {
          v58 = v55 & 0xFFFFFFFFFFFFLL;
        }

        sub_2151A6C9C(0, &qword_281199490);
        v59 = sub_2154A291C();
        if (*(v117 + v116) & 1 | (v58 != 0))
        {
          v60 = 0;
        }

        else
        {
          v48 = v115;
          v60 = v115 <= 1;
        }

        if (v60)
        {
          goto LABEL_66;
        }

        v61 = v59;
        if (!(*(v117 + v116) & 1 | (v58 != 0)))
        {
          v49 = v115;
        }

        sub_2151A6C9C(0, &qword_281199488);
        v62 = sub_2154A294C();
        v63 = sub_2154A291C();

        if ((v63 & 1) != 0 && v50 + 1 < a2)
        {
          v49 = v48;
          if (v48 <= 1)
          {
            goto LABEL_66;
          }
        }

        if (v61)
        {
          break;
        }

        if (v49 == 2)
        {
          goto LABEL_48;
        }

        if (v49 == 1)
        {
LABEL_66:

          goto LABEL_67;
        }

        v64 = v50-- + 1;
        if (v64 <= 1)
        {
          v74 = 0;
          v75 = 0;
          goto LABEL_68;
        }
      }

      v65 = __OFADD__(v49++, 1);
      if (v65)
      {
        goto LABEL_107;
      }

      if (v49 != 2)
      {

        v48 = v49;
        v47 = v49;
        v73 = v117;
        goto LABEL_64;
      }

      v48 = 2;
      v115 = 2;
LABEL_48:
      if (v50 + 1 >= v111)
      {
      }

      else
      {
        v66 = [a1 substringWithRange_];
        if (!v66)
        {
          goto LABEL_114;
        }

        v67 = v66;
        v68 = sub_21549E10C();
        v69 = [v67 stringByTrimmingCharactersInSet_];

        v105 = sub_2154A1D6C();
        v71 = v70;

        v72 = HIBYTE(v71) & 0xF;
        if ((v71 & 0x2000000000000000) == 0)
        {
          v72 = v105 & 0xFFFFFFFFFFFFLL;
        }

        if (!v72)
        {
LABEL_67:
          v74 = 0;
          v75 = 0;
LABEL_68:
          v73 = v117;
          goto LABEL_69;
        }
      }

      v73 = v117;
      if (v61)
      {
        v47 = v115;
        if (v50 && v58)
        {
          v49 = 2;
LABEL_64:
          if ((v50 + 1) > 1)
          {
            continue;
          }

          v74 = 0;
          v75 = 0;
          goto LABEL_69;
        }
      }

      else
      {
        v47 = v115;
        if (v58)
        {
          if (v106)
          {
            v74 = 0;
            v75 = 0;
            goto LABEL_69;
          }

          if (v50)
          {
            v49 = 2;
            goto LABEL_64;
          }

          v122 = 0;
          v75 = 1;
          v74 = 3;
LABEL_100:
          v76 = v112;
LABEL_70:
          if (*(v73 + v116))
          {
            v77 = a2 - 1;
LABEL_72:
            v78 = v77 - v74;
            if (__OFSUB__(v77, v74))
            {
              __break(1u);
            }

            else
            {
              v79 = v78 + 2;
              v80 = v109;
              if (!__OFADD__(v78, 2))
              {
                if (!__OFSUB__(v74, 1))
                {
                  v81 = [a1 substringWithRange_];
                  v82 = sub_2154A1D6C();
                  v84 = v83;

                  v85 = v74 - 2;
                  if (!__OFSUB__(v74, 2))
                  {
                    v86 = v74 - 3;
                    if (!__OFSUB__(v85, 1))
                    {
                      v87 = v79 + 2;
                      if (!__OFADD__(v79, 2))
                      {
                        v121 = 0;
                        v88 = v79;
                        if (v79 <= *(v73 + OBJC_IVAR___ICLinkAcceleratorController_maxCharactersTyped))
                        {
                          v88 = *(v73 + OBJC_IVAR___ICLinkAcceleratorController_maxCharactersTyped);
                        }

                        *(v73 + OBJC_IVAR___ICLinkAcceleratorController_maxCharactersTyped) = v88;
                        goto LABEL_92;
                      }

                      goto LABEL_106;
                    }

LABEL_105:
                    __break(1u);
LABEL_106:
                    __break(1u);
LABEL_107:
                    __break(1u);
LABEL_108:
                    __break(1u);
                    goto LABEL_109;
                  }

LABEL_104:
                  __break(1u);
                  goto LABEL_105;
                }

LABEL_103:
                __break(1u);
                goto LABEL_104;
              }
            }

            __break(1u);
            goto LABEL_103;
          }

          if (v74 < v76)
          {
            v77 = v74;
            do
            {
              v89 = [a1 substringWithRange_];
              if (!v89)
              {
                goto LABEL_111;
              }

              v90 = v89;
              v91 = sub_21549E10C();
              v92 = [v90 stringByTrimmingCharactersInSet_];

              v93 = sub_2154A1D6C();
              v95 = v94;

              v96 = HIBYTE(v95) & 0xF;
              if ((v95 & 0x2000000000000000) == 0)
              {
                v96 = v93 & 0xFFFFFFFFFFFFLL;
              }

              if (v96)
              {
                v97 = v111 == v77;
              }

              else
              {
                v97 = 1;
              }

              if (v97)
              {
                goto LABEL_72;
              }
            }

            while (v112 != ++v77);
          }

LABEL_91:
          v86 = 0;
          v87 = 0;
          v82 = 0;
          v84 = 0;
          v80 = v109;
LABEL_92:
          v98 = v121;
          v99 = type metadata accessor for AcceleratorDetectionResult();
          v100 = objc_allocWithZone(v99);
          v101 = &v100[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];
          *v101 = v82;
          v101[1] = v84;
          v100[OBJC_IVAR___ICAcceleratorDetectionResult_isValidAcceleratorScenario] = v75;
          v102 = &v100[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange];
          *v102 = v86;
          *(v102 + 1) = v87;
          v102[16] = v98;
          v120.receiver = v100;
          v120.super_class = v99;
          objc_msgSendSuper2(&v120, sel_init);

          v103 = *(v107 + 8);
          v104 = v108;
          v103(v110, v108);
          v103(v113, v104);
          return;
        }
      }

      break;
    }

    v74 = v50 + 3;
    if (__OFADD__(v50 + 1, 2))
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v122 = 0;
    if (v50)
    {
      v65 = __OFADD__(v74, 1);
      v74 = v50 + 4;
      if (v65)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        goto LABEL_112;
      }

      v75 = 1;
LABEL_69:
      v76 = v112;
      if (v122)
      {
        goto LABEL_91;
      }

      goto LABEL_70;
    }

    v75 = 1;
    goto LABEL_100;
  }

LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
}

id sub_2151BCC40()
{
  v0 = type metadata accessor for AcceleratorDetectionResult();
  v1 = objc_allocWithZone(v0);
  v2 = &v1[OBJC_IVAR___ICAcceleratorDetectionResult_extractedAcceleratorText];
  *v2 = 0;
  v2[1] = 0;
  v1[OBJC_IVAR___ICAcceleratorDetectionResult_isValidAcceleratorScenario] = 0;
  v3 = &v1[OBJC_IVAR___ICAcceleratorDetectionResult_fullAcceleratorRange];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v5.receiver = v1;
  v5.super_class = v0;
  result = objc_msgSendSuper2(&v5, sel_init);
  qword_28119B2A0 = result;
  return result;
}

void sub_2151BCCE4(void *a1)
{
  v2 = (v1 + OBJC_IVAR___ICLinkAcceleratorController_currentSuggestionRange);
  if (*(v1 + OBJC_IVAR___ICLinkAcceleratorController_currentSuggestionRange + 16))
  {
    return;
  }

  v3 = *v2;
  v4 = v2[1];
  v5 = *v2 + v4;
  if (__OFADD__(*v2, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = [a1 string];
    sub_2154A1D6C();

    v8 = sub_2154A1E0C();

    if (!__OFSUB__(v5, v8))
    {
      if (v5 - v8 < 1)
      {
        [a1 removeAttribute:*MEMORY[0x277D35FE8] range:{v3, v4}];
        *v2 = 0;
        v2[1] = 0;
        *(v2 + 16) = 1;
        return;
      }

      if (qword_27CA59848 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_6:
  v9 = sub_21549F11C();
  __swift_project_value_buffer(v9, qword_27CA5B120);
  oslog = sub_21549F0FC();
  v10 = sub_2154A226C();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2151A1000, oslog, v10, "Tried to apply a selection that was too long. Bailing out.", v11, 2u);
    MEMORY[0x21606B520](v11, -1, -1);
  }
}

uint64_t sub_2151BCEAC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2151BD0C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id MediaActionMenu.init(isPasswordProtected:isInSecureScreen:presentingViewController:presentingBarButtonItem:presentingSourceView:sidecarMenuController:completion:)(char a1, char a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = [objc_opt_self() isCameraAvailable];
  v16 = [objc_opt_self() ic_isLiveTextAvailable];
  if (a7)
  {
    aBlock[4] = a7;
    aBlock[5] = a8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2153777F0;
    aBlock[3] = &block_descriptor_3;
    v20 = v16;
    v17 = _Block_copy(aBlock);

    v15 = v15;

    v16 = v20;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v22 initWithIsCameraAvailable:v15 isLiveTextAvailable:v16 isPasswordProtected:a1 & 1 isInSecureScreen:a2 & 1 presentingViewController:a3 presentingBarButtonItem:a4 presentingSourceView:a5 sidecarMenuController:a6 completion:v17];
  sub_2151AF750(a7);

  _Block_release(v17);
  return v18;
}

uint64_t sub_2151BD278()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2151BD488()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_2151BD580(char a1, char a2, char a3, char a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = &v10[OBJC_IVAR___ICMediaActionMenu_completion];
  *v15 = 0;
  v15[1] = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  *&v10[OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem] = 0;
  v10[OBJC_IVAR___ICMediaActionMenu_isCameraAvailable] = a1;
  v10[OBJC_IVAR___ICMediaActionMenu_isLiveTextAvailable] = a2;
  v10[OBJC_IVAR___ICMediaActionMenu_isPasswordProtected] = a3;
  v10[OBJC_IVAR___ICMediaActionMenu_isInSecureScreen] = a4;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v17 = *&v10[v16];
  *&v10[v16] = a6;
  v18 = a6;

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v19 = *v15;
  *v15 = a9;
  v15[1] = a10;
  sub_2151BD748(a9);
  sub_2151AF750(v19);
  v22.receiver = v10;
  v22.super_class = type metadata accessor for MediaActionMenu();
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_2151BD748(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151BD7E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_2151BD8A0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 image];
    if (!v5)
    {
      swift_beginAccess();
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v5 = [v6 image];
      }

      else
      {
        v5 = 0;
      }
    }

    [v4 setImage_];
  }
}

unint64_t sub_2151BD978()
{
  result = qword_281199BC0;
  if (!qword_281199BC0)
  {
    type metadata accessor for MediaActionMenu();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199BC0);
  }

  return result;
}

void sub_2151BDD64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151BFD10()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = [v2 textLayoutManager];

      if (v4)
      {
        v5 = [v4 textContentManager];

        if (v5)
        {
          objc_opt_self();
          v6 = swift_dynamicCastObjCClass();
          if (!v6)
          {
          }

          v7 = [v6 outlineController];

          if (v7)
          {
            v8 = *&v0[OBJC_IVAR___ICOutlineRenderer_textElementLocator];
            v9 = v0;
            v10 = v7;
            v11 = v12;
            sub_2151BFE64(v8, v9, v10, v11);
          }
        }
      }
    }
  }
}

void *sub_2151BFE64(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = sub_2151C02CC();
  if (result)
  {
    v8 = result;
    v9 = [result subviews];
    sub_2151A6C9C(0, &qword_2811994D0);
    v10 = sub_2154A1F4C();

    if (v10 >> 62)
    {
      v11 = sub_2154A2C8C();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        result = objc_opt_self();
        if (v11 < 1)
        {
          __break(1u);
          return result;
        }

        v12 = result;
        v33 = v8;
        v34 = a2;
        v35 = a3;
        v36 = a4;
        v13 = 0;
        v37 = v11;
        v14 = &selRef_updateHeaderConfiguration;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x216069960](v13, v10);
          }

          else
          {
            v15 = *(v10 + 8 * v13 + 32);
          }

          v16 = v15;
          v17 = [v12 v14[447]];
          if (v17)
          {
            v18 = 0xD00000000000001ALL;
          }

          else
          {
            v18 = 0xD000000000000019;
          }

          v19 = "rDocumentEngagementData";
          if (!v17)
          {
            v19 = "rectangle.3.group";
          }

          v20 = v19 | 0x8000000000000000;
          v21 = [v16 className];
          if (v21)
          {
            v22 = v21;
            v23 = v14;
            v24 = sub_2154A1D6C();
            v26 = v25;

            if (v24 == v18 && v20 == v26)
            {
            }

            else
            {
              v28 = sub_2154A2FAC();

              if ((v28 & 1) == 0)
              {

                v14 = v23;
                goto LABEL_8;
              }
            }

            v14 = v23;
            [v12 v23 + 3638];
            v29 = sub_2154A1D2C();

            v30 = [v16 valueForKeyPath_];

            if (v30)
            {
              sub_2154A2BCC();
              swift_unknownObjectRelease();
            }

            else
            {
              v39 = 0u;
              v40 = 0u;
            }

            v41 = v39;
            v42 = v40;
            if (!*(&v40 + 1))
            {

LABEL_38:
              sub_21532C870(&v41);
              goto LABEL_8;
            }

            sub_2151A6C9C(0, &qword_281199570);
            if (swift_dynamicCast())
            {
              v31 = sub_2154A1D2C();
              v32 = [v38 valueForKeyPath_];

              if (v32)
              {
                sub_2154A2BCC();
                swift_unknownObjectRelease();
              }

              else
              {
                v39 = 0u;
                v40 = 0u;
              }

              v41 = v39;
              v42 = v40;
              if (!*(&v40 + 1))
              {

                goto LABEL_38;
              }

              sub_2151A6C9C(0, &unk_281199660);
              if ((swift_dynamicCast() & 1) == 0)
              {

                goto LABEL_8;
              }

              sub_2151C062C(v16, v38, v38, v34, v35, v36);
            }
          }

          else
          {
          }

LABEL_8:
          if (v37 == ++v13)
          {
          }
        }
      }
    }
  }

  return result;
}

void *sub_2151C02CC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong subviews];

    sub_2151A6C9C(0, &qword_2811994D0);
    v3 = sub_2154A1F4C();

    if (v3 >> 62)
    {
      goto LABEL_40;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x216069960](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 className];
        if (v9)
        {
          v10 = v9;
          v11 = sub_2154A1D6C();
          v13 = v12;

          if (v11 == 0xD000000000000014 && 0x80000002154DD0A0 == v13)
          {

LABEL_19:

            v3 = [v7 subviews];
            v16 = sub_2154A1F4C();

            if (v16 >> 62)
            {
              v17 = sub_2154A2C8C();
              if (v17)
              {
                goto LABEL_21;
              }
            }

            else
            {
              v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v17)
              {
LABEL_21:
                v18 = 0;
                do
                {
                  if ((v16 & 0xC000000000000001) != 0)
                  {
                    v19 = MEMORY[0x216069960](v18, v16);
                  }

                  else
                  {
                    if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_39;
                    }

                    v19 = *(v16 + 8 * v18 + 32);
                  }

                  v20 = v19;
                  v3 = v18 + 1;
                  if (__OFADD__(v18, 1))
                  {
                    goto LABEL_38;
                  }

                  v21 = [v19 className];
                  if (v21)
                  {
                    v22 = v21;
                    v23 = sub_2154A1D6C();
                    v25 = v24;

                    if (v23 == 0xD000000000000017 && 0x80000002154DD0C0 == v25)
                    {

                      return v20;
                    }

                    v27 = sub_2154A2FAC();

                    if (v27)
                    {

                      return v20;
                    }
                  }

                  ++v18;
                }

                while (v3 != v17);
              }
            }

            goto LABEL_44;
          }

          v15 = sub_2154A2FAC();

          if (v15)
          {
            goto LABEL_19;
          }
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      ;
    }

LABEL_44:
  }

  return 0;
}

uint64_t sub_2151C062C(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v115 = a2;
  v116 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v103 - v11;
  v13 = sub_21549E70C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v114 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v103 - v17;
  sub_2154A222C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_2151ADCD8(v12, &unk_27CA5EA00);
  }

  v104 = *(v14 + 32);
  v105 = v14 + 32;
  v104(v18, v12, v13);
  v108 = a4;
  v20 = OutlineRenderer.isDisclosureIndicatorVisible(for:)(a3);
  v21 = sub_21549E6CC();
  v110 = [a5 isUUIDCollapsible_];

  v111 = a1;
  v22 = [a1 subviews];
  sub_2151A6C9C(0, &qword_2811994D0);
  v23 = sub_2154A1F4C();

  v112 = v18;
  v113 = v14;
  v109 = a3;
  v106 = a5;
  v107 = v20;
  v24 = v13;
  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_21:

    if ((v110 & 1) == 0)
    {
      return (*(v113 + 8))(v112, v24);
    }

    [v111 setClipsToBounds_];
    v35 = v116;
    v36 = [v116 textLayoutManager];
    v37 = v24;
    v38 = v113;
    if (v36)
    {
      v39 = v36;
      v40 = [v109 elementRange];
      if (v40)
      {
        v41 = v40;
        v42 = [v39 ic:v40 rangeForTextRange:?];
        v44 = v43;
        v45 = [v35 tk2TextController];
        v46 = [v116 TTTextStorage];
        v47 = [v45 writingDirectionForRange:v42 inTextView:v44 inTextStorage:{v116, v46}];

        v35 = v116;
      }

      else
      {
        v47 = -1;
      }

      v48 = v47;
    }

    else
    {
      v48 = -1;
    }

    type metadata accessor for OutlineDisclosureButton();
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = v38 + 16;
    v50 = *(v38 + 16);
    v52 = v114;
    v53 = v112;
    v50(v114, v112, v24);
    v54 = (*(v51 + 64) + 32) & ~*(v51 + 64);
    v55 = swift_allocObject();
    *(v55 + 16) = v49;
    v56 = v106;
    *(v55 + 24) = v106;
    v104((v55 + v54), v52, v24);
    v57 = v56;
    v58 = OutlineDisclosureButton.__allocating_init(writingDirection:stateChangeHandler:)(v48, sub_2153DFD3C, v55);
    v59 = v58;
    v60 = v107;
    if (!v107)
    {
      v61 = v58;
      [v61 ic:0.0 setAlpha:?];
      [v61 setUserInteractionEnabled_];
    }

    sub_2151C22B4(v59, v53, v60);
    objc_opt_self();
    swift_dynamicCastObjCClass();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v62 = v59;
    [v62 setTranslatesAutoresizingMaskIntoConstraints_];
    v63 = v111;
    [v111 addSubview_];
    v64 = v115;
    v65 = [v115 textLineFragments];
    sub_2151A6C9C(0, &qword_27CA5C558);
    v66 = sub_2154A1F4C();

    if (v66 >> 62)
    {
      result = sub_2154A2C8C();
      if (result)
      {
        goto LABEL_33;
      }
    }

    else
    {
      result = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_33:
        if ((v66 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x216069960](0, v66);
        }

        else
        {
          if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v67 = *(v66 + 32);
        }

        v68 = v67;

        [v68 typographicBounds];
        v70 = v69;
        v72 = v71;
        v74 = v73;
        v76 = v75;

        v77 = v70 + v74;
LABEL_39:
        if (v48 == 1)
        {
          if ([v35 ic_isRTL])
          {
            v78 = [v62 trailingAnchor];
            v79 = [v63 trailingAnchor];
            v80 = -v77;
LABEL_48:
            v83 = [v78 constraintEqualToAnchor:v79 constant:v80];
            goto LABEL_49;
          }

          if (([v35 ic_isRTL] & 1) == 0)
          {
            v78 = [v62 leadingAnchor];
            v79 = [v63 leadingAnchor];
            v83 = [v78 constraintEqualToAnchor:v79 constant:v77];
LABEL_49:
            v84 = v83;

            v85 = *&qword_281199A40;
            v86 = [v35 textContainer];
            objc_opt_self();
            v87 = swift_dynamicCastObjCClass();
            if (v87 && [v87 insideSystemPaper])
            {
              [objc_opt_self() noteLeadingMargin];
              v89 = v88;

              if (v85 <= v89)
              {
                v85 = v89;
              }
            }

            else
            {
            }

            v90 = [v62 traitCollection];
            v91 = [v90 ic_hasCompactWidth];

            if (v48 != 1 && (v91 & 1) == 0)
            {
              [v84 setConstant_];
            }

            v92 = objc_opt_self();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
            v93 = swift_allocObject();
            *(v93 + 16) = xmmword_2154BDB30;
            *(v93 + 32) = v84;
            v94 = v84;
            v95 = [v62 widthAnchor];
            v96 = [v95 constraintEqualToConstant_];

            *(v93 + 40) = v96;
            v97 = [v62 topAnchor];
            v98 = [v111 topAnchor];
            v99 = [v97 constraintEqualToAnchor:v98 constant:v72];

            *(v93 + 48) = v99;
            v100 = [v62 heightAnchor];

            v101 = [v100 constraintEqualToConstant_];
            *(v93 + 56) = v101;
            sub_2151A6C9C(0, &qword_2811995A0);
            v102 = sub_2154A1F3C();

            [v92 activateConstraints_];

            return (*(v113 + 8))(v112, v37);
          }
        }

        else if (!v48 && [v35 ic_isRTL])
        {
          v78 = [v62 leadingAnchor];
          v81 = [v63 trailingAnchor];
LABEL_47:
          v79 = v81;
          [v64 leadingPadding];
          v80 = -v82;
          goto LABEL_48;
        }

        v78 = [v62 trailingAnchor];
        v81 = [v63 leadingAnchor];
        goto LABEL_47;
      }
    }

    v76 = 0.0;
    v72 = 0.0;
    v77 = 0.0;
    goto LABEL_39;
  }

LABEL_20:
  v25 = sub_2154A2C8C();
  if (!v25)
  {
    goto LABEL_21;
  }

LABEL_5:
  v26 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x216069960](v26, v23);
    }

    else
    {
      if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v27 = *(v23 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    type metadata accessor for OutlineDisclosureButton();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      break;
    }

    ++v26;
    if (v29 == v25)
    {
      goto LABEL_21;
    }
  }

  v31 = v30;

  v32 = v113;
  if (v110)
  {
    v33 = v31;
    v34 = v112;
    sub_2151C22B4(v33, v112, v107);
  }

  else
  {
    [v31 removeFromSuperview];
    v34 = v112;
  }

  return (*(v32 + 8))(v34, v24);
}

uint64_t sub_2151C1118()
{
  v1 = sub_21549E70C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

Swift::Bool __swiftcall OutlineRenderer.isDisclosureIndicatorVisible(for:)(NSTextElement a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20]();
  v5 = v66 - v4;
  v6 = sub_21549E70C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2154A222C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2151ADCD8(v5, &unk_27CA5EA00);
LABEL_29:
    LOBYTE(v14) = 0;
    return v14;
  }

  (*(v7 + 32))(v9, v5, v6);
  v10 = OutlineRenderer.outlineController.getter();
  if (!v10)
  {
    goto LABEL_28;
  }

  v11 = v10;
  v12 = sub_21549E6CC();
  v13 = [v11 isUUIDCollapsible_];

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = [objc_opt_self() sharedInstance];
  if (!v14)
  {
LABEL_77:
    __break(1u);
    return v14;
  }

  v15 = v14;
  v16 = [v14 needsAccessibilityElements];

  if ((v16 & 1) == 0)
  {
    v17 = OBJC_IVAR___ICOutlineRenderer_textView;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v66[1] = v17;
      v19 = Strong;
      v20 = [Strong textContentStorage];

      if (v20)
      {
        v21 = [v20 textLayoutManagers];

        sub_2151A6C9C(0, &qword_281199598);
        v22 = sub_2154A1F4C();

        v67 = v11;
        v66[0] = v2;
        if (v22 >> 62)
        {
          goto LABEL_33;
        }

        for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
        {
          v24 = 0;
          v69 = (v22 & 0xFFFFFFFFFFFFFF8);
          v70 = v22 & 0xC000000000000001;
          v68 = i;
          while (1)
          {
            if (v70)
            {
              v26 = MEMORY[0x216069960](v24, v22);
            }

            else
            {
              if (v24 >= v69[2])
              {
                goto LABEL_32;
              }

              v26 = *(v22 + 8 * v24 + 32);
            }

            v27 = v26;
            v28 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            v29 = v22;
            v30 = [v26 textContainer];
            if (!v30)
            {
              v25 = v27;
LABEL_15:

              goto LABEL_16;
            }

            v25 = v30;
            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            if (!v31)
            {

              goto LABEL_15;
            }

            v32 = [v31 insideSiriSnippet];

            if (v32)
            {
              (*(v7 + 8))(v9, v6);

              goto LABEL_29;
            }

LABEL_16:
            ++v24;
            v22 = v29;
            if (v28 == v68)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          ;
        }

LABEL_34:

        v33 = sub_21549E6CC();
        v34 = v67;
        v35 = [v67 isUUIDCollapsed_];

        v36 = [(objc_class *)a1.super.isa elementRange];
        if (!v36)
        {
          (*(v7 + 8))(v9, v6);

          LOBYTE(v14) = v35;
          return v14;
        }

        v37 = v36;
        v38 = swift_unknownObjectWeakLoadStrong();
        if (!v38)
        {
          (*(v7 + 8))(v9, v6);

          LOBYTE(v14) = v35;
          return v14;
        }

        v39 = v38;
        v40 = [v39 textLayoutManager];
        if (!v40)
        {

          (*(v7 + 8))(v9, v6);
          LOBYTE(v14) = v35;
          return v14;
        }

        v41 = v40;
        v69 = [v40 ic:v37 rangeForTextRange:?];
        v70 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2154BDB20;
        v44 = [v39 selectedRange];
        v46 = v45;

        *(inited + 32) = [objc_opt_self() valueWithRange_];
        if (v35)
        {
          goto LABEL_38;
        }

        v48 = OBJC_IVAR___ICOutlineRenderer_selectionVisibilityRequiresEditing;
        LOBYTE(v14) = swift_beginAccess();
        v68 = v48;
        if ((inited & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x216069960](0, inited);
          v49 = v69;
        }

        else
        {
          v49 = v69;
          if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_76;
          }

          v50 = *(inited + 32);
        }

        v69 = v50;
        v51.location = [v50 rangeValue];
        if ((v51.length & 0x8000000000000000) == 0)
        {
          location = v51.location;
          v71.location = v49;
          v71.length = v70;
          if (NSIntersectionRange(v51, v71).location > 0)
          {
            v14 = [v39 hoveredCharacterIndex];
            if (v14 >= v49)
            {
              if (!__OFSUB__(v14, v49))
              {
                v53 = v14 - v49 < v70;
LABEL_61:
                v61 = swift_unknownObjectWeakLoadStrong();
                if (v61)
                {
                  v62 = v61;
                  LODWORD(v70) = [v61 isEditing];

                  if (v70)
                  {
                    goto LABEL_38;
                  }
                }

                else
                {
                }

                if (!v53 && (*(v66[0] + v68) & 1) != 0)
                {
                  goto LABEL_67;
                }

LABEL_38:

                swift_setDeallocating();
                swift_arrayDestroy();
                v47 = 1;
LABEL_68:
                (*(v7 + 8))(v9, v6);
                LOBYTE(v14) = v47;
                return v14;
              }

              goto LABEL_76;
            }

LABEL_60:
            v53 = 0;
            goto LABEL_61;
          }

          v56 = (v49 | location) == 0;
          v57 = v49;
          v58 = v56;
          v14 = [v39 hoveredCharacterIndex];
          v59 = __OFSUB__(v14, v57);
          v60 = v14 - v57;
          if (v60 < 0 == v59)
          {
            if (!v59)
            {
              if ((v58 & 1) == 0)
              {
                v64 = v70;

                if (v60 >= v64)
                {
                  goto LABEL_67;
                }

                goto LABEL_38;
              }

              v53 = v60 < v70;
              goto LABEL_61;
            }

            goto LABEL_76;
          }

          if (v58)
          {
            goto LABEL_60;
          }

LABEL_64:

LABEL_67:
          swift_setDeallocating();
          swift_arrayDestroy();
          v63 = [v39 note];
          v47 = [v63 isSharedReadOnly];

          goto LABEL_68;
        }

        v14 = [v39 hoveredCharacterIndex];
        v54 = __OFSUB__(v14, v49);
        v55 = v14 - v49;
        if (v55 < 0 != v54)
        {
          goto LABEL_64;
        }

        if (!v54)
        {

          if (v55 >= v70)
          {
            goto LABEL_67;
          }

          goto LABEL_38;
        }

LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

LABEL_13:
      (*(v7 + 8))(v9, v6);

      goto LABEL_29;
    }

LABEL_28:
    (*(v7 + 8))(v9, v6);
    goto LABEL_29;
  }

  (*(v7 + 8))(v9, v6);

  LOBYTE(v14) = 1;
  return v14;
}

id OutlineRenderer.outlineController.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result textLayoutManager];

    if (v2 && (v3 = [v2 textContentManager], v2, v3))
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (!v4)
      {
      }

      v5 = [v4 outlineController];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *OutlineDisclosureButton.__allocating_init(writingDirection:stateChangeHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v38 = a1;
  v4 = sub_2154A2AAC();
  v5 = *(v4 - 8);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  sub_2154A298C();
  v11 = objc_opt_self();
  v12 = [v11 clearColor];
  sub_2154A2A1C();
  v13 = [objc_opt_self() ic_isVision];
  v14 = &selRef_ic_noteEditorSecondaryLabelColor;
  if (!v13)
  {
    v14 = &selRef_tertiaryLabelColor;
  }

  v15 = [v11 *v14];
  sub_2154A2A2C();
  UIAccessibilityButtonShapesEnabled();
  v16 = sub_2154A1D2C();

  v17 = [objc_opt_self() systemImageNamed_];

  if (v17)
  {
    v18 = [objc_opt_self() preferredFontForTextStyle_];
    v19 = [objc_opt_self() configurationWithFont:v18 scale:1];

    v20 = [v17 imageWithConfiguration_];
  }

  sub_2154A2A6C();
  v21 = [v11 clearColor];
  v22 = sub_2154A297C();
  sub_21549F14C();
  v22(v39, 0);
  (*(v5 + 16))(v8, v10, v4);
  sub_2151C2038();
  v23 = swift_allocObject();
  *(v23 + 16) = v36;
  *(v23 + 24) = a3;

  sub_2154A295C();
  v24 = v37;
  v25 = sub_2154A2ABC();
  v26 = [v25 imageView];
  if (v26)
  {
    v27 = v26;
    [v26 setContentMode_];
  }

  v28 = *MEMORY[0x277D767F8];
  v29 = v25;
  [v29 setMaximumContentSizeCategory_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A348);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2154BDB50;
  v31 = sub_21549F28C();
  v32 = MEMORY[0x277D74DB8];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  v39[3] = v24;
  v39[0] = v29;
  MEMORY[0x216069470](v30, v39, sel_contentSizeCategoryDidChange);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v39);
  v33 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_writingDirection;
  swift_beginAccess();
  *&v29[v33] = v38;
  if (*&qword_281199A40 == 0.0)
  {
    [OutlineDisclosureButton contentSizeCategoryDidChange]_0();

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    (*(v5 + 8))(v10, v4, *&qword_281199A40);
  }

  return v29;
}

uint64_t sub_2151C2000()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2151C2038()
{
  result = qword_281199480;
  if (!qword_281199480)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281199480);
  }

  return result;
}

uint64_t sub_2151C22B4(_BYTE *a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v43 - v8;
  v9 = sub_21549E70C();
  v46 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = OBJC_IVAR___ICOutlineRenderer_visibleUUIDs;
  swift_beginAccess();
  v16 = *(v3 + v15);

  LODWORD(v44) = sub_2151C2934(a2, v16);

  if (a3)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = OutlineRenderer.outlineController.getter();
  v47 = a2;
  if (v18)
  {
    v19 = v18;
    v20 = sub_21549E6CC();
    v21 = [v19 isUUIDCollapsed_];
  }

  else
  {
    v21 = 0;
  }

  v22 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_isCollapsed;
  swift_beginAccess();
  v23 = a1[v22];
  a1[v22] = v21;
  if (v21 != v23)
  {
    v24 = [a1 imageView];
    if (v24)
    {
      v25 = v24;
      v43 = objc_opt_self();
      v26 = swift_allocObject();
      *(v26 + 16) = a1;
      *(v26 + 24) = v25;
      v52 = sub_2153DFF9C;
      v53 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v49 = 1107296256;
      v50 = sub_2151BD7E4;
      v51 = &block_descriptor_23_0;
      v27 = _Block_copy(&aBlock);
      v28 = a1;
      v29 = v25;

      [v43 animateWithDuration:v27 animations:0.0];
      _Block_release(v27);
    }
  }

  [a1 alpha];
  if (v17 != v30)
  {
    if ((v44 & 1) == (a3 & 1))
    {
      [a1 setUserInteractionEnabled_];
      [a1 setAlpha_];
      if (a3)
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    if (a3)
    {
      [a1 setUserInteractionEnabled_];
    }

    v44 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = a1;
    *(v31 + 24) = v17;
    v52 = sub_2153DFF74;
    v53 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_2151BD7E4;
    v51 = &block_descriptor_23;
    v32 = _Block_copy(&aBlock);
    v33 = a1;

    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = a3 & 1;
    v52 = sub_2153DFF88;
    v53 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v49 = 1107296256;
    v50 = sub_2153DF054;
    v51 = &block_descriptor_17;
    v35 = _Block_copy(&aBlock);
    v36 = v33;

    [v44 animateWithDuration:v32 animations:v35 completion:0.25];
    _Block_release(v35);
    _Block_release(v32);
  }

  if (a3)
  {
LABEL_16:
    v38 = v46;
    v37 = v47;
    v39 = *(v46 + 16);
    v39(v12, v47, v9);
    swift_beginAccess();
    sub_2153EE480(v14, v12);
    swift_endAccess();
    v40 = *(v38 + 8);
    v40(v14, v9);
    v39(v12, v37, v9);
    swift_beginAccess();
    sub_2153EE480(v14, v12);
    swift_endAccess();
    return (v40)(v14, v9);
  }

LABEL_18:
  swift_beginAccess();
  v42 = v45;
  sub_2151C2B24(v47, v45);
  swift_endAccess();
  return sub_2151ADCD8(v42, &unk_27CA5EA00);
}

uint64_t sub_2151C2884()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C28BC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2151C28F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C2934(uint64_t a1, uint64_t a2)
{
  v3 = sub_21549E70C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_215433EDC(&qword_281199D00), v7 = sub_2154A1C9C(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_215433EDC(&qword_27CA5DB90);
      v15 = sub_2154A1D1C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_2151C2B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21549E70C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_2151C2DCC(&qword_281199D00, MEMORY[0x277CC95F0]);
  v31 = a1;
  v10 = sub_2154A1C9C();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_2151C2DCC(&qword_27CA5DB90, MEMORY[0x277CC95F0]);
      v19 = sub_2154A1D1C();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2153EC810();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_2153EDCFC(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_2151C2DCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2151C30E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2151C3108(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_2151C3134(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2151C3154(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_2151C31BC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_2151C3240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2154A1D6C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_2151C326C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2151C32FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C334C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2151C3410@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_participantDetailsDataSource;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_2151C3488@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_showParticipantCursors;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2151C3508()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C3540()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2151C363C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C3678()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C36C8()
{
  sub_215324170(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C3710()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C3760()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C37C8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151C3820()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~v3;
  v5 = (v3 + 32) & ~v3;
  v6 = *(v2 + 64) + 7;
  v7 = (v6 + v5) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v5, v1);
  if (*(v0 + v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + v7);
  }

  v9 = (v3 + v7 + 40) & v4;
  v10 = (v6 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v3 + v10 + 8) & v4;
  v12 = (v6 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v8(v0 + v9, v1);

  v8(v0 + v11, v1);

  v15 = (((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v15 + 8, v3 | 7);
}

uint64_t sub_2151C39F0()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = ~v4;
  v6 = (v4 + 16) & ~v4;
  v7 = *(v2 + 64);
  v8 = (v7 + 7 + v6) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v6, v1);
  if (*(v0 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + v8);
  }

  v9 = (v4 + v8 + 40) & v5;
  v10 = (v7 + 7 + v9) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v4 + v10 + 8) & v5;
  v3(v0 + v9, v1);

  v3(v0 + v11, v1);

  return MEMORY[0x2821FE8E8](v0, v11 + v7, v4 | 7);
}

uint64_t sub_2151C3B08()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C3B40()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C3B78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C3BB8()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C3BF0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C3C3C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A380);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_21549E56C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2151C3DBC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C3E04()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C3E44()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2151C3E7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C3EBC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2151C3F0C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C3FFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C4044()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C4094()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C40EC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C4124()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C415C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C4198()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151C41D0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C4208()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C4240()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2151C42A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21549E70C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_21549ED6C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2151C43C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21549E70C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_21549ED6C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_2151C44EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21549E70C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2151C45A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21549E70C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2151C4664()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C46AC()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2151C4794()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2151C47CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICSharedWithYouControllerInternal_managedObjectContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2151C4838()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C4870()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C48B4()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2151C4964()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C49A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C49E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C4A1C()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2151C4B30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C4B98()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2151C4BF0()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2151C4C50()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2151C4CB4()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2151C4D0C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151C4D5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2151C4DAC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2151C4E0C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151C4E5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2151C4EB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C4EEC()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C4F24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C4F64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2151C4FBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_2151C5004()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C5040()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2151C5080@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 selectionStateActive];
  *a2 = result;
  return result;
}

id sub_2151C50C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 menu];
  *a2 = result;
  return result;
}

uint64_t sub_2151C5118()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2151C5150@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSelected];
  *a2 = result;
  return result;
}

uint64_t sub_2151C5198()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C51E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_2151C5220@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEnabled];
  *a2 = result;
  return result;
}

id sub_2151C5268@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 image];
  *a2 = result;
  return result;
}

uint64_t sub_2151C52B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C52FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21549FB6C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2151C53A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_21549FB6C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2151C5710()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151C5758()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C5790()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C57C8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2151C5828()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C5878()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2151C5968()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C59A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___LinkEditorController_delegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_2151C5A00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___LinkEditorController_addApproach;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2151C5A58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___LinkEditorController_addApproach;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2151C5AAC()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2151C5B88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C5BC8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_21549E56C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_2151C5D00()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C5D38()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C5D70()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C5DA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2151C5DE8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C5E28()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C5E84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentViewProvider_updatedLocationForRecycledViewProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_2151C5F14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C5F54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_2151C6010(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B1B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2151C60CC@<X0>(void *a1@<X8>)
{
  result = sub_21549FEDC();
  *a1 = v3;
  return result;
}

uint64_t sub_2151C6120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B288);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2151C6190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2151C627C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICMediaActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2151C62E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C6320()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C637C()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2151C648C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C64C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C64FC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2151C6550()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151C6588()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C6644()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2151C6690(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2153875AC(v1);
}

uint64_t sub_2151C66C8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C6768(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_21538858C(v1, v2);
}

uint64_t sub_2151C6844()
{

  return MEMORY[0x2821FE8E8](v0, 89, 7);
}

uint64_t sub_2151C68CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2151C693C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2151C69A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2151C6A24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C6A9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C6AD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C6B0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2151C6B24()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C6B60()
{

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2151C6BA0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C6C10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C6C58()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C6C90()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C6CD8()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2151C6DB8()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2151C6F28()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2151C6FE0()
{
  sub_215354880(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C705C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C7094()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C70CC()
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

uint64_t sub_2151C74FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7E8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2151C7620(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7E8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_2151C7740()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151C77D8()
{
  v1 = type metadata accessor for ICRecordButton();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21549FA0C();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21549FCFC();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v5 + *(v1 + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_2151C7B60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICTableActionMenu_presentingBarButtonItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2151C7BCC()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C7C04()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C7C3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C7C84@<X0>(void *a1@<X8>)
{
  result = sub_21549FFBC();
  *a1 = v3;
  return result;
}

uint64_t sub_2151C7D00(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB00);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB08);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BA98);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_2151C7E90(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB00);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BB08);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BA98);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2151C8024()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C8070@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21549F57C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2151C80C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21549F63C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2151C8198@<X0>(uint64_t *a1@<X8>)
{
  result = ICEditingTextView.collaboratorStatuses.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2151C81C8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2151C82A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C82F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2151C83B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2151C8488@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2154A006C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2151C84F0(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7F0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BED8);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[8]];

  return v15(v16, a2, v14);
}

char *sub_2151C8680(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7F0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BED8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2151C887C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C88C4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2151C8904()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C8944()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C8994@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2151C89F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC11NotesEditor39TranscriptDetailPresentationInteraction_delegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_2151C8A6C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICMiniPlayerViewController_actionsDelegate;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_2151C8AD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C8B08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C8B40()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C8B78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C8BB4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151C8C04()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C8C3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C8CC0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2151C8D10@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_2153252BC;
  a2[1] = v5;
}

uint64_t sub_2151C8D84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C8DD0()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2151C8E6C()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2151C8EB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isFinished];
  *a2 = result;
  return result;
}

uint64_t sub_2151C8EE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C8F1C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C8F5C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2151C8F94@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2151C904C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C9084()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C90BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C9104()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C9144()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C9184()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C91D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2151C922C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICAudioAttachmentEditorCoordinator_isShowingInspector;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2151C9280()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C92C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151C9300()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151C9348()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C9380()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151C93B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151C93FC(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C868);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_21549E6AC();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[20];

  return v16(v17, a2, v15);
}

char *sub_2151C95D4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C868);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_21549E6AC();
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[20]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2151C9810@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2154A006C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2151C987C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21549FFDC();
  *a1 = result;
  return result;
}

uint64_t sub_2151C98D8()
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

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21537702C(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_21537702C(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  MEMORY[0x21606B640](v5 + v1[19]);
  v14 = v1[20];
  v15 = sub_21549E6AC();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v2 | 7);
}

uint64_t sub_2151C9E50()
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

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21537702C(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_21537702C(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  MEMORY[0x21606B640](v5 + v1[19]);
  v14 = v1[20];
  v15 = sub_21549E6AC();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v2 | 7);
}

uint64_t sub_2151CA29C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CA2D4()
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

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21537702C(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_21537702C(*(v5 + v1[12]), *(v5 + v1[12] + 8));

  MEMORY[0x21606B640](v5 + v1[19]);
  v14 = v1[20];
  v15 = sub_21549E6AC();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v2 | 7);
}

uint64_t sub_2151CA710@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21549FF9C();
  *a1 = result;
  return result;
}

uint64_t sub_2151CA764()
{
  v1 = type metadata accessor for RecordingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v19 = *(*(v1 - 1) + 64);
  v21 = sub_21549EB6C();
  v4 = *(v21 - 8);
  v5 = *(v4 + 80);
  v20 = *(v4 + 64);
  v6 = v0 + v3;

  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21549FB6C();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2154A04CC();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21549FCFC();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
  }

  v14 = v2 | v5;
  v15 = (v3 + v19 + v5) & ~v5;
  sub_21537702C(*(v6 + v1[11]), *(v6 + v1[11] + 8));
  sub_21537702C(*(v6 + v1[12]), *(v6 + v1[12] + 8));

  MEMORY[0x21606B640](v6 + v1[19]);
  v16 = v1[20];
  v17 = sub_21549E6AC();
  (*(*(v17 - 8) + 8))(v6 + v16, v17);

  (*(v4 + 8))(v0 + v15, v21);

  return MEMORY[0x2821FE8E8](v0, v15 + v20, v14 | 7);
}

uint64_t sub_2151CAC20()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151CAC94@<X0>(uint64_t a1@<X8>)
{
  result = sub_2154A008C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2151CAD04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21549FFFC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2151CAD34@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2154A000C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2151CAE14()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5D8C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5BE90);
  sub_21541E018();
  sub_2151ACC5C(&qword_27CA5CB50, &qword_27CA5BE90);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2151CAFB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CAFEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CB024()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2151CB080()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CB0B8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CB0F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CB130()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CB16C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CB1B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CB1F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151CB238()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151CB2B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151CB3A4()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CB3E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C868);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2151CB520(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C868);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2151CB6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2151CB76C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2151CB7E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC50);
  sub_215439B50();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2151CB8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2151CB9BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5C870);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2151CBAE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CBB54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2154A00AC();
  *a1 = result;
  return result;
}

uint64_t sub_2151CBBE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_215389728(v1, v2);
}

uint64_t sub_2151CBC5C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_215388154(v1, v2);
}

uint64_t sub_2151CBC9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E1F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_2151CBD58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E1F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2151CBED4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2154A001C();
  *a1 = result;
  return result;
}

uint64_t sub_2151CBF90@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x216066BD0]();
  *a1 = result;
  return result;
}

uint64_t sub_2151CBFE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21549FF2C();
  *a1 = result;
  return result;
}

void sub_2151CC044(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_21543F6AC(v1);
}

uint64_t sub_2151CC178()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CC1B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CC1F8()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CC230()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CC2D4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2151CC328()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2151CC498()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2151CC714()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CC7BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CC7F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CC8CC()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_2151CC99C()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2151CCB08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CCB50()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CCB88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CCBC0()
{
  v1 = sub_21549E28C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_21549E70C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  v12 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v12 + 9, v3 | v7 | 7);
}

uint64_t sub_2151CCD78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2151CCDB0()
{
  v1 = sub_21549E28C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2151CCE88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2151CCF08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_2151CCF48@<D0>(void *a1@<X8>)
{
  result = *&qword_281199A40;
  *a1 = qword_281199A40;
  return result;
}

double sub_2151CCF58(double *a1)
{
  result = *a1;
  qword_281199A40 = *a1;
  return result;
}

uint64_t sub_2151CCF68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11NotesEditor23OutlineDisclosureButton_isCollapsed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2151CCFE8@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

uint64_t sub_2151CD0AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2151CD174(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2151CD224()
{
  MEMORY[0x21606B640](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2151CD26C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICAuthorHighlightsUpdater_filter;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2151CD2D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_2151CD330(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICAuthorHighlightsUpdater_updatesVisibleRangesOnly;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_215482AA4(v5);
}

uint64_t sub_2151CD3B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CD418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21549E70C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2151CD4D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21549E70C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2151CD58C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_2151CD5D8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2151CD5E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5EE30);
  sub_215492014();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2151CD648()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151CD688()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2151CD6C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2151CD700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2151CD770(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5EFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2151CD7E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11NotesEditor29LinkAcceleratorViewController_linkAcceleratorController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2151CD8F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2151CFAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151D0A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151D1958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151D2230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151D2958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151D3B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromICMediaSourceType(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2781ABE30[a1 - 1];
  }
}

uint64_t ICMediaSourceTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"camera"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"photoLibrary"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"liveText"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"documentCamera"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"documentPicker"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"sidecar"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"audio"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_2151D8B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a17);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151D9B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151DA5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_2151DB3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151DB87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_2151DBDB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151DC72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  objc_destroyWeak((v13 + 32));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151DCAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151DD7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_2151DDCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151DDF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_2151DE548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151DEB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151DF1F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id location)
{
  objc_destroyWeak(v42);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151DFC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151E02C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151E09DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151E139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151E1CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151E2A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151E2D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151E636C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 192), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_2151E8EEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2151EF788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2151F5028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151F88F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151F8C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151FB3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151FBC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151FD4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151FDEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151FE04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2151FEDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215206E14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2152095C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21520CD54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21520D1A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21520D694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21520FC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}