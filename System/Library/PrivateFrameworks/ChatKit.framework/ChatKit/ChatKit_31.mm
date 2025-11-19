void sub_190ABE9A8()
{
  v1 = v0;
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D790);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "[Tapbacks] showTapbackPicker: during double-tap", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = [v1 pickerBalloonParentView];
  if (v6)
  {
    v51 = v6;
    type metadata accessor for TapbackPickerBalloonParentView();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {

      goto LABEL_46;
    }

    v8 = v7;
    sub_190ABEFA8(v7);
    v9 = &selRef_stateRestorationActivityForScene_;
    if (![v1 shouldPresentAsTapbackKeyboardInput])
    {
      sub_19092CB50();
      v24 = sub_190D53020();
      v25 = sub_190D576C0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_19020E000, v24, v25, "[Tapbacks] showTapbackPicker: presenting suggestions selection", v26, 2u);
        MEMORY[0x193AF7A40](v26, -1, -1);
      }

LABEL_32:
      v40 = sub_190ABF194();
      if (v40)
      {

        v41 = [v1 balloonView];
        if (v41)
        {
          v42 = v41;
          [v41 setHidden:1];
        }

        else
        {
          v42 = sub_190D53020();
          v43 = sub_190D576A0();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_19020E000, v42, v43, "[Tapbacks] showTapbackPicker: balloonView is not found. This is unexpected ", v44, 2u);
            MEMORY[0x193AF7A40](v44, -1, -1);
          }
        }
      }

      v45 = [v1 delegate];
      if (v45)
      {
        v46 = v45;
        if ([v45 v9[300]])
        {
          [v46 fullScreenBalloonViewController:v1 updateTapbackPileAppearanceAsHidden:1];
        }

        swift_unknownObjectRelease();
      }

      v47 = [v1 delegate];
      if (v47)
      {
        v48 = v47;
        if ([v47 v9[300]])
        {
          [v48 fullScreenBalloonViewController:v1 updateTranscriptBalloonViewAppearanceAsHidden:1];
        }

        swift_unknownObjectRelease();
        return;
      }

LABEL_46:

      return;
    }

    v49 = v1;
    v10 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
    swift_beginAccess();
    *&v8[v10] = 2;
    v50 = sub_1909297E8();
    v11 = v50[2];
    if (v11)
    {
      v12 = v50 + 5;
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        ObjectType = swift_getObjectType();
        v16 = *&v8[v10];
        v17 = *(v14 + 32);
        v18 = v13;
        v17(v16, ObjectType, v14);

        v12 += 2;
        --v11;
      }

      while (v11);
    }

    v19 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
    swift_beginAccess();
    v20 = *&v8[v19];
    if (v20)
    {
      *(v20 + OBJC_IVAR___CKTapbackPickerViewController_needsPresentationAnimation) = 0;
    }

    sub_19092BA70();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      if ([Strong respondsToSelector_])
      {
        v23 = [v22 tapbackPickerBalloonParentViewTapbackPileView_];
        swift_unknownObjectRelease();
LABEL_24:
        v27 = sub_1909297E8();
        v28 = v27[2];
        if (v28)
        {
          v29 = v27 + 5;
          do
          {
            v30 = *(v29 - 1);
            v31 = *v29;
            v32 = swift_getObjectType();
            v33 = *(v31 + 184);
            v34 = v30;
            v33(v23, v32, v31);

            v29 += 2;
            --v28;
          }

          while (v28);
        }

        [v8 showEmojiKeyboard];
        v35 = *(*&v8[OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer] + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
        if (v35)
        {
          v36 = v35;
          [v36 setUserInteractionEnabled_];
        }

        v37 = sub_190D53020();
        v38 = sub_190D576C0();
        v1 = v49;
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_19020E000, v37, v38, "[Tapbacks] showTapbackPicker: presenting keyboard input", v39, 2u);
          MEMORY[0x193AF7A40](v39, -1, -1);
        }

        v9 = &selRef_stateRestorationActivityForScene_;
        goto LABEL_32;
      }

      swift_unknownObjectRelease();
    }

    v23 = 0;
    goto LABEL_24;
  }
}

void sub_190ABEFA8(void *a1)
{
  v2 = v1;
  v4 = [v1 balloonView];
  if (v4)
  {
    oslog = v4;
    v5 = [v1 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    [v5 insertSubview:a1 aboveSubview:oslog];

    v7 = [v2 delegate];
    if (v7)
    {
      v8 = v7;
      if ([v7 respondsToSelector_])
      {
        v9 = [v8 fullScreenBalloonViewControllerGradientReferenceView_];
        swift_unknownObjectRelease();
        v7 = v9;
      }

      else
      {
        swift_unknownObjectRelease();
        v7 = 0;
      }
    }

    sub_19092A080(v7);
    sub_190AC0694(a1);
    sub_190AC093C(a1);
    sub_190AC0A9C(a1);
  }

  else
  {
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v10 = sub_190D53040();
    __swift_project_value_buffer(v10, qword_1EAD9D790);
    oslog = sub_190D53020();
    v11 = sub_190D57690();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_19020E000, oslog, v11, "[Tapbacks] Tapback picker tried presenting but found nil balloonView", v12, 2u);
      MEMORY[0x193AF7A40](v12, -1, -1);
    }
  }
}

id sub_190ABF194()
{
  v1 = v0;
  v2 = [v0 delegate];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  if (([v2 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v4 = [v1 chatItem];
  v5 = [v3 fullScreenBalloonViewController:v1 balloonViewForChatItem:v4];

  swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_9:
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v13 = sub_190D53040();
    __swift_project_value_buffer(v13, qword_1EAD9D790);
    v8 = sub_190D53020();
    v14 = sub_190D576C0();
    if (!os_log_type_enabled(v8, v14))
    {
      v5 = 0;
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19020E000, v8, v14, "[Tapbacks] parentBalloonView not found", v10, 2u);
    v5 = 0;
    goto LABEL_13;
  }

  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v6 = sub_190D53040();
  __swift_project_value_buffer(v6, qword_1EAD9D790);
  v7 = v5;
  v8 = sub_190D53020();
  v9 = sub_190D576C0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v5;
    v12 = v7;
    _os_log_impl(&dword_19020E000, v8, v9, "[Tapbacks] parentBalloonView: %@", v10, 0xCu);
    sub_190830D58(v11);
    MEMORY[0x193AF7A40](v11, -1, -1);
LABEL_13:
    MEMORY[0x193AF7A40](v10, -1, -1);
  }

LABEL_15:

  return v5;
}

double sub_190ABF448()
{
  v1 = [v0 balloonView];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v0 balloonMinimumTopOffset_];
    v12 = v11;
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    MinY = CGRectGetMinY(v25);
    if (qword_1EAD46248 != -1)
    {
      v24 = MinY;
      swift_once();
      MinY = v24;
    }

    v14 = MinY - v12;
    v15 = sub_190D53040();
    __swift_project_value_buffer(v15, qword_1EAD9D790);
    v16 = v2;
    v17 = sub_190D53020();
    v18 = sub_190D576C0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134218496;
      [v16 frame];
      *(v19 + 4) = CGRectGetMinY(v26);
      *(v19 + 12) = 2048;
      *(v19 + 14) = v12;
      *(v19 + 22) = 2048;
      *(v19 + 24) = v14;
      _os_log_impl(&dword_19020E000, v17, v18, "[Tapbacks] balloonView minY: %f, topOffset: %f, parentViewY: %f", v19, 0x20u);
      MEMORY[0x193AF7A40](v19, -1, -1);
    }

    else
    {

      v16 = v17;
    }
  }

  else
  {
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v20 = sub_190D53040();
    __swift_project_value_buffer(v20, qword_1EAD9D790);
    v16 = sub_190D53020();
    v21 = sub_190D576C0();
    v14 = 0.0;
    if (os_log_type_enabled(v16, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_19020E000, v16, v21, "[Tapbacks] Could not find balloonView. This is unexpected.", v22, 2u);
      MEMORY[0x193AF7A40](v22, -1, -1);
    }
  }

  return v14;
}

void sub_190ABF6F4(void *a1)
{
  v3 = [v1 pickerBalloonParentView];
  if (v3)
  {
    v16 = v3;
    type metadata accessor for TapbackPickerBalloonParentView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      if (a1)
      {
        v5 = v4;
        v6 = a1;
        [v5 insertSticker_];
        if (qword_1EAD46248 != -1)
        {
          swift_once();
        }

        v7 = sub_190D53040();
        __swift_project_value_buffer(v7, qword_1EAD9D790);
        v8 = sub_190D53020();
        v9 = sub_190D576C0();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&dword_19020E000, v8, v9, "[Tapbacks] inserting sticker: during double-tap", v10, 2u);
          MEMORY[0x193AF7A40](v10, -1, -1);
        }

        v11 = v16;
      }

      else
      {
        if (qword_1EAD46248 != -1)
        {
          swift_once();
        }

        v13 = sub_190D53040();
        __swift_project_value_buffer(v13, qword_1EAD9D790);
        v11 = sub_190D53020();
        v14 = sub_190D576A0();
        if (os_log_type_enabled(v11, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_19020E000, v11, v14, "[Tapbacks] Attempting to insert nil sticker", v15, 2u);
          MEMORY[0x193AF7A40](v15, -1, -1);
        }

        v6 = v16;
      }

      v12 = v6;
    }

    else
    {
      v12 = v16;
    }
  }
}

void sub_190ABF990(uint64_t a1)
{
  v2 = v1;
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9D790);
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "[Tapbacks] Begin sendTouchBarTapback", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E69A7FB0]) initWithAssociatedMessageType_];
  if (!v8)
  {
    oslog = sub_190D53020();
    v15 = sub_190D576A0();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      _os_log_impl(&dword_19020E000, oslog, v15, "[Tapbacks] Could not make classic tapback for ack type: %lld", v16, 0xCu);
      MEMORY[0x193AF7A40](v16, -1, -1);
    }

    goto LABEL_41;
  }

  v9 = v8;
  v10 = [v1 chatItem];
  v11 = [v10 tapbacksChatItem];

  if (v11)
  {
    v12 = [v11 sentTapbackChatItem];

    if (v12)
    {
      v13 = [v12 tapback];

      if (!v13)
      {
        __break(1u);
        goto LABEL_45;
      }

      v12 = sub_190900050();
      v11 = v14;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  oslog = v9;
  v17 = [oslog associatedMessageType];
  if (v17 <= 2002)
  {
    switch(v17)
    {
      case 2000:
        v18 = 0xE500000000000000;
        v19 = 0x7472616568;
        goto LABEL_27;
      case 2001:
        v18 = 0xE800000000000000;
        v19 = 0x705573626D756874;
        goto LABEL_27;
      case 2002:
        v18 = 0xEA00000000006E77;
        v19 = 0x6F4473626D756874;
        goto LABEL_27;
    }

LABEL_45:
    sub_190D58510();
    __break(1u);
    return;
  }

  if (v17 == 2003)
  {
    v18 = 0xE200000000000000;
    v19 = 24936;
    goto LABEL_27;
  }

  if (v17 == 2004)
  {
    v18 = 0xEB000000006E6F69;
    v19 = 0x74616D616C637865;
    goto LABEL_27;
  }

  if (v17 != 2005)
  {
    goto LABEL_45;
  }

  v18 = 0xEC0000006B72614DLL;
  v19 = 0x6E6F697473657571;
LABEL_27:

  if (v11)
  {
    if (v12 == v19 && v11 == v18)
    {

      goto LABEL_33;
    }

    v20 = sub_190D58760();

    if (v20)
    {
LABEL_33:
      v21 = [v2 delegate];
      if (v21)
      {
        v22 = v21;
        v23 = &selRef_fullScreenBalloonViewController_didDeselectTapback_;
LABEL_37:
        if ([v22 respondsToSelector_])
        {
          [v22 *v23];
        }

        swift_unknownObjectRelease();
        goto LABEL_40;
      }

      goto LABEL_40;
    }
  }

  else
  {
  }

  v24 = [v2 delegate];
  if (v24)
  {
    v22 = v24;
    v23 = &selRef_fullScreenBalloonViewController_didSelectTapback_;
    goto LABEL_37;
  }

LABEL_40:
  [v2 closeEmojiPicker];
  [v2 beginDismissal];
LABEL_41:
}

double sub_190ABFE6C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [v4 pickerBalloonParentView];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  type metadata accessor for TapbackPickerBalloonParentView();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_8:
    if (qword_1EAD52100 != -1)
    {
      swift_once();
    }

    v23 = *&qword_1EAD9E738;
    v24 = *&qword_1EAD9E738 + 37.4;
    if (qword_1EAD52128 != -1)
    {
      swift_once();
    }

    v25 = v24 + *&qword_1EAD9E760;
    goto LABEL_18;
  }

  v12 = v11;
  v13 = _s7ChatKit34TapbackPickerBalloonLayoutTemplateC17selectionTailSizeSo6CGSizeVvgZ_0();
  sub_190AC0CCC(a1, a2, a3, a4);
  if (v14 >= v13)
  {
    if (qword_1EAD52100 != -1)
    {
      swift_once();
    }

    v23 = *&qword_1EAD9E738;
    v26 = *&qword_1EAD9E738 + 37.4;
    if (qword_1EAD52128 != -1)
    {
      swift_once();
    }

    v27 = *&qword_1EAD9E760;

    v25 = v26 + v27;
LABEL_18:
    v22 = v23 + v25 * 0.64278761 + 37.4;
    return v22 + 5.0;
  }

  v15 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v16 = *(v12 + v15);
  v17 = &v16[OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize];
  swift_beginAccess();
  v18 = v17[1] + 44.0;
  v19 = qword_1EAD520F0;
  v20 = v16;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&qword_1EAD9E728;

  v22 = v18 + v21;
  return v22 + 5.0;
}

id sub_190AC0154(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = sub_190AC0268(v1, 0, 256);
  if (!v2)
  {
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v3 = sub_190D53040();
    __swift_project_value_buffer(v3, qword_1EAD9D790);
    v4 = sub_190D53020();
    v5 = sub_190D576A0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_19020E000, v4, v5, "[Tapbacks] unable to generate duplicateView. This is unexpected", v6, 2u);
      MEMORY[0x193AF7A40](v6, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

id sub_190AC0268(uint64_t a1, char a2, __int16 a3)
{
  v7 = [v3 delegate];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v9 = [v8 fullScreenBalloonViewController:v3 duplicatedViewForChatItem:a1];
  swift_unknownObjectRelease();
  if (!v9)
  {
    return v9;
  }

  v10 = sub_190ABF194();
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [v3 pickerBalloonParentView];
    [v11 convertRect:v20 toView:{v13, v15, v17, v19}];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    [v9 setFrame_];
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
LABEL_17:
    [v9 layoutIfNeeded];
    [v9 setUserInteractionEnabled_];
    return v9;
  }

  v30 = v29;
  v31 = objc_opt_self();
  v32 = v9;
  result = [v31 sharedBehaviors];
  if (result)
  {
    v34 = result;
    v35 = [result usesTapbackRefreshStyling];

    if (v35)
    {
      v36 = sub_190ABF194();
      if (v36)
      {
        v37 = v36;
        [v36 balloonDescriptor];
        [v30 setBalloonDescriptor_];
      }
    }

    if (a2)
    {
      [v30 setHasTail_];
    }

    if ([v30 color] == -1 && (a3 & 0x100) == 0)
    {
      [v30 setColor_];
    }

    [v30 setNeedsPrepareForDisplay];
    [v30 prepareForDisplayIfNeeded];

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_190AC0574()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v2 = result;
    v3 = [result usesTapbackRefreshStyling];

    if (v3)
    {
      v4 = [v0 traitCollection];
      v5 = [v4 isTranscriptBackgroundActive];

      if (v5)
      {
        return 0;
      }
    }

    v6 = [v0 chatItem];
    v7 = [v6 isFromMe];

    if (v7)
    {
      return 0;
    }

    else
    {
      result = [v0 balloonView];
      if (result)
      {
        v8 = result;
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass() != 0;

        return v9;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190AC0694(uint64_t a1)
{
  v3 = [v1 balloonView];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
    swift_beginAccess();
    v6 = *(a1 + v5);
    v7 = [v1 chatItem];
    v8 = [v7 isFromMe];

    LOBYTE(v7) = v8 ^ 1;
    v9 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
    swift_beginAccess();
    v6[v9] = v7;
    [v4 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = _s7ChatKit34TapbackPickerBalloonLayoutTemplateC17selectionTailSizeSo6CGSizeVvgZ_0();
    sub_190AC0CCC(v11, v13, v15, v17);
    LOBYTE(v7) = v19 < v18;
    v20 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_isWidthConstrained;
    swift_beginAccess();
    v6[v20] = v7;
    v21 = _s7ChatKit34TapbackPickerBalloonLayoutTemplateC17selectionTailSizeSo6CGSizeVvgZ_0();
    sub_190AC0CCC(v11, v13, v15, v17);
    v23 = v22;

    if ((v23 - v21) * 0.5 <= 6.0)
    {
      v24 = (v23 - v21) * 0.5;
    }

    else
    {
      v24 = 6.0;
    }

    v25 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail;
    swift_beginAccess();
    *&v6[v25] = v24;
  }

  else
  {
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v26 = sub_190D53040();
    __swift_project_value_buffer(v26, qword_1EAD9D790);
    oslog = sub_190D53020();
    v27 = sub_190D57690();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_19020E000, oslog, v27, "[Tapbacks] Tapback picker tried presenting but found nil balloonView", v28, 2u);
      MEMORY[0x193AF7A40](v28, -1, -1);
    }
  }
}

id sub_190AC093C(void *a1)
{
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;

  [a1 sizeThatFits_];
  v10 = v9;
  v12 = v11;
  result = [v1 balloonView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = result;
  [result frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_190ABE850();
  [a1 preferredOriginXWithBalloonSourceFrame:v15 presentationBounds:v17 proposedSize:{v19, v21, v22, v23, v24, v25, *&v10, *&v12}];
  v27 = v26;
  [v1 pickerBalloonParentViewY];

  return [a1 setFrame_];
}

void sub_190AC0A9C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
  swift_beginAccess();
  v7 = v5[v6];
  v8 = v5;
  v9 = [v2 balloonView];
  v10 = v9;
  if (v7 == 1)
  {
    if (!v9)
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    [v9 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v44.origin.x = v12;
    v44.origin.y = v14;
    v44.size.width = v16;
    v44.size.height = v18;
    MaxX = CGRectGetMaxX(v44);
    v20 = [v2 balloonView];
    if (v20)
    {
LABEL_7:
      v29 = v20;
      [v20 frame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v46.origin.x = v31;
      v46.origin.y = v33;
      v46.size.width = v35;
      v46.size.height = v37;
      MinY = CGRectGetMinY(v46);
      v39 = [v2 view];
      if (v39)
      {
        v40 = v39;
        [v39 convertPoint:a1 toCoordinateSpace:{MaxX, MinY}];
        v42 = v41;

        v43 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX;
        swift_beginAccess();
        *&v8[v43] = v42;

        return;
      }

      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
  }

  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v10 frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v45.origin.x = v22;
  v45.origin.y = v24;
  v45.size.width = v26;
  v45.size.height = v28;
  MaxX = CGRectGetMinX(v45);
  v20 = [v2 balloonView];
  if (v20)
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
}

void sub_190AC0CCC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [v4 chatItem];
  v10 = [v9 isFromMe];

  if (v10)
  {
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetMinX(v31);
    v11 = [v4 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v32.origin.x = v14;
      v32.origin.y = v16;
      v32.size.width = v18;
      v32.size.height = v20;
      CGRectGetMinX(v32);
      return;
    }

    __break(1u);
  }

  else
  {
    v21 = [v4 view];
    if (v21)
    {
      v22 = v21;
      [v21 bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v33.origin.x = v24;
      v33.origin.y = v26;
      v33.size.width = v28;
      v33.size.height = v30;
      CGRectGetMaxX(v33);
      v34.origin.x = a1;
      v34.origin.y = a2;
      v34.size.width = a3;
      v34.size.height = a4;
      CGRectGetMaxX(v34);
      return;
    }
  }

  __break(1u);
}

uint64_t CKFullScreenBalloonViewControllerPhone.contextualCKChatItemsForTapbackPickerViewController(_:)()
{
  v1 = [v0 delegate];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = [v1 contextualChatItemsForFullScreenBalloonViewController_];
  swift_unknownObjectRelease();
  sub_190863204();
  v3 = sub_190D57180();

  return v3;
}

uint64_t CKFullScreenBalloonViewControllerPhone.smartEmojiResponses(_:chatItem:)()
{
  v1 = [v0 delegate];
  if (v1)
  {
    v2 = v1;
    if ([v1 respondsToSelector_])
    {
      v3 = [v2 fullScreenBalloonViewControllerSmartEmojiResponses_];
      swift_unknownObjectRelease();
      v4 = sub_190D57180();

      return v4;
    }

    swift_unknownObjectRelease();
  }

  return MEMORY[0x1E69E7CC0];
}

void CKFullScreenBalloonViewControllerPhone.tapbackPickerBalloonParentView(_:didInsertTapback:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  [v3 setAnimatedBalloonViewFrameUpdates_];
  v6 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR___CKTapbackPickerViewController_ckChatItem);
    v9 = [v8 tapbacksChatItem];
    if (v9 && (v10 = v9, v11 = [v9 sentTapbackChatItem], v10, v11) && (v12 = objc_msgSend(v11, sel_tapback), v11, v12))
    {
      v13 = sub_190900050();
      v15 = v14;
      if (v13 == sub_190900050() && v15 == v16)
      {

LABEL_26:
        [v3 beginDismissal];
        if (qword_1EAD46248 != -1)
        {
          swift_once();
        }

        v29 = sub_190D53040();
        __swift_project_value_buffer(v29, qword_1EAD9D790);
        v30 = sub_190D53020();
        v31 = sub_190D576C0();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_19020E000, v30, v31, "[Tapbacks] didInsertTapback: Tapback already sent. Will dismiss", v32, 2u);
          MEMORY[0x193AF7A40](v32, -1, -1);
        }

        goto LABEL_20;
      }

      v18 = sub_190D58760();

      if (v18)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v19 = sub_190D53040();
  __swift_project_value_buffer(v19, qword_1EAD9D790);
  v20 = sub_190D53020();
  v21 = sub_190D576C0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_19020E000, v20, v21, "[Tapbacks] didInsertTapback: Tapback not already sent. Will begin sending Tapback", v22, 2u);
    MEMORY[0x193AF7A40](v22, -1, -1);
  }

  v23 = [v3 delegate];
  if (v23)
  {
    v24 = v23;
    if ([v23 respondsToSelector_])
    {
      [v24 fullScreenBalloonViewController:v3 didSelectTapback:a2];
    }

    swift_unknownObjectRelease();
  }

LABEL_20:
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v25 = sub_190D53040();
  __swift_project_value_buffer(v25, qword_1EAD9D790);
  v26 = sub_190D53020();
  v27 = sub_190D576C0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_19020E000, v26, v27, "[Tapbacks] didInsertTapback: completed during double-tap", v28, 2u);
    MEMORY[0x193AF7A40](v28, -1, -1);
  }
}

id sub_190AC176C()
{
  v1 = [v0 delegate];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 respondsToSelector_])
  {
    v3 = [v2 fullScreenBalloonViewControllerShouldEnableStickerTapbacks_];
  }

  else
  {
    v3 = 0;
  }

  swift_unknownObjectRelease();
  return v3;
}

id sub_190AC17F8(void *a1)
{
  v1 = a1;
  v2 = [v1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v4 = [v3 fullScreenBalloonViewControllerShouldEnableStickerTapbacks_];
    }

    else
    {
      v4 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id CKFullScreenBalloonViewControllerPhone.textInputContextIdentifier(_:)()
{
  result = [v0 delegate];
  if (result)
  {
    v2 = result;
    if (([result respondsToSelector_] & 1) != 0 && (v3 = objc_msgSend(v2, sel_textInputContextIdentifierForFullScreenBalloonViewController_, v0)) != 0)
    {
      v4 = v3;
      v5 = sub_190D56F10();
      swift_unknownObjectRelease();

      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void CKFullScreenBalloonViewControllerPhone.tapbackPickerBalloonParentView(_:requestedPresentPlugin:payloadID:)(uint64_t a1, void *a2)
{
  v4 = [v2 delegate];
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector_])
    {
      if (a2)
      {
        a2 = sub_190D56D60();
      }

      v6 = sub_190D56ED0();
      [v5 fullScreenBalloonViewController:v2 requestedPresentPlugin:a2 withPayloadID:v6];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_190AC1D24(uint64_t a1, SEL *a2)
{
  result = [v2 delegate];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 *a2];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_190AC1DC0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = a1;
  v5 = [v7 delegate];
  if (v5)
  {
    v6 = v5;
    if ([v5 respondsToSelector_])
    {
      [v6 *a4];
    }

    swift_unknownObjectRelease();
  }
}

id CKFullScreenBalloonViewControllerPhone.tapbackPickerBalloonParentViewTapbackTintableMessageBalloon(_:)(uint64_t a1)
{
  if ([v1 hideBalloonView])
  {
    return 0;
  }

  result = sub_190ABF194();
  if (result)
  {
    v4 = result;
    v5 = [v1 chatItem];
    v6 = [v1 generateDuplicateBalloonViewForChatItem_];

    if (sub_190AC0574())
    {
      v7 = [v1 chatItem];
      v8 = sub_190AC0268(v7, 0, 4);
    }

    else
    {
      v8 = 0;
    }

    v9 = v4;
    [v9 frame];
    v12 = v10;
    v13 = v11;
    if (v6)
    {
      [v6 setFrame_];
    }

    if (v8)
    {
      [v8 setFrame_];
    }

    [v9 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [v9 convertRect:a1 toCoordinateSpace:{v15, v17, v19, v21}];
    v26 = [objc_allocWithZone(type metadata accessor for TapbackPickerTintableMessageBalloonView()) initWithFrame_];
    v27 = v6;
    sub_1908CA044(v6);
    v28 = v8;
    sub_1908CA054(v8);
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v29 = sub_190D53040();
    __swift_project_value_buffer(v29, qword_1EAD9D790);
    v30 = v26;
    v31 = sub_190D53020();
    v32 = sub_190D576C0();
    v33 = v30;

    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v33;
      *v35 = v33;
      v36 = v33;
      _os_log_impl(&dword_19020E000, v31, v32, "[Tapbacks] created tintableBalloon %@", v34, 0xCu);
      sub_190830D58(v35);
      MEMORY[0x193AF7A40](v35, -1, -1);
      MEMORY[0x193AF7A40](v34, -1, -1);
    }

    return v33;
  }

  return result;
}

void sub_190AC227C(void *a1)
{
  v2 = v1;
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  v5 = __swift_project_value_buffer(v4, qword_1EAD9D790);
  v6 = a1;
  v7 = sub_190D53020();
  v8 = sub_190D576C0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_19020E000, v7, v8, "[Tapbacks] keyCommandSelectTapback %@", v9, 0xCu);
    sub_190830D58(v10);
    MEMORY[0x193AF7A40](v10, -1, -1);
    MEMORY[0x193AF7A40](v9, -1, -1);
  }

  v12 = [v2 tapbackPickerViewController];
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  type metadata accessor for TapbackPickerViewController();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {

LABEL_20:
    oslog = sub_190D53020();
    v30 = sub_190D576A0();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_19020E000, oslog, v30, "[Tapbacks] Tapback keyboard shortcut invoked with no TapbackPickerViewController to reference. This is unexpected", v31, 2u);
      MEMORY[0x193AF7A40](v31, -1, -1);
    }

    goto LABEL_25;
  }

  v15 = v14;
  v16 = [v6 input];
  if (v16)
  {
    v17 = v16;
    v18 = sub_190D56F10();
    v20 = v19;

    sub_190D52690();
    v21 = sub_190AC2A88(v18, v20);
    if (v22)
    {
      v23 = OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerItems;
      swift_beginAccess();
      v24 = *(v15 + v23);
      if (*(v24 + 16))
      {
        v25 = sub_1908789E4(1);
        if (v26)
        {
          v27 = *(*(v24 + 56) + 8 * v25);
          if (qword_1F0402798 == v18 && unk_1F04027A0 == v20 || (sub_190D58760() & 1) != 0)
          {
            v5 = 0;
            goto LABEL_15;
          }

          if (qword_1F04027A8 == v18 && unk_1F04027B0 == v20 || (sub_190D58760() & 1) != 0)
          {
            v5 = 1;
            goto LABEL_15;
          }

          if (qword_1F04027B8 == v18 && unk_1F04027C0 == v20 || (sub_190D58760() & 1) != 0)
          {
            v5 = 2;
            goto LABEL_15;
          }

          if (qword_1F04027C8 == v18 && unk_1F04027D0 == v20 || (sub_190D58760() & 1) != 0)
          {
            v5 = 3;
            goto LABEL_15;
          }

          if (qword_1F04027D8 == v18 && unk_1F04027E0 == v20 || (sub_190D58760() & 1) != 0)
          {
            v5 = 4;
            goto LABEL_15;
          }

          if (qword_1F04027E8 == v18 && unk_1F04027F0 == v20 || (sub_190D58760() & 1) != 0)
          {
            v5 = 5;
LABEL_15:
            sub_190D52690();

            if ((v27 & 0xC000000000000001) == 0)
            {
              if (v5 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v28 = *(v27 + 8 * v5 + 32);
LABEL_18:
                v29 = v28;

                goto LABEL_39;
              }

              goto LABEL_87;
            }

LABEL_83:
            v52 = v5;
LABEL_90:
            v28 = MEMORY[0x193AF3B90](v52, v27);
            goto LABEL_18;
          }

LABEL_92:

          v40 = sub_190D53020();
          v44 = sub_190D57690();
          if (!os_log_type_enabled(v40, v44))
          {
            goto LABEL_48;
          }

          v45 = swift_slowAlloc();
          *v45 = 0;
          v46 = "[Tapbacks] Tapback keyboard shortcut invoked with unsupported string value";
          goto LABEL_47;
        }
      }

      v40 = sub_190D53020();
      v44 = sub_190D57690();
      if (os_log_type_enabled(v40, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "[Tapbacks] Tapback keyboard shortcut invoked for suggested tapback but no suggested tapbacks loaded in picker";
LABEL_47:
        _os_log_impl(&dword_19020E000, v40, v44, v46, v45, 2u);
        MEMORY[0x193AF7A40](v45, -1, -1);
        goto LABEL_48;
      }

      goto LABEL_48;
    }

    v34 = v21;

    v35 = OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerItems;
    swift_beginAccess();
    v27 = *(v15 + v35);
    if (!*(v27 + 16) || (v36 = sub_1908789E4(0), (v37 & 1) == 0))
    {
      v40 = sub_190D53020();
      v44 = sub_190D57690();
      if (os_log_type_enabled(v40, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        v46 = "[Tapbacks] Tapback keyboard shortcut invoked for classic tapback but no classic tapbacks loaded in picker";
        goto LABEL_47;
      }

LABEL_48:

LABEL_61:
      return;
    }

    v20 = v34 - 1;
    if (__OFSUB__(v34, 1))
    {
      __break(1u);
      goto LABEL_83;
    }

    v27 = *(*(v27 + 56) + 8 * v36);
    if (v27 >> 62)
    {
      v53 = sub_190D581C0();
      v39 = v53 - 1;
      if (!__OFSUB__(v53, 1))
      {
        goto LABEL_33;
      }
    }

    else
    {
      v38 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v39 = v38 - 1;
      if (!__OFSUB__(v38, 1))
      {
LABEL_33:
        if (v39 < 0)
        {
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }

        if ((v20 & 0x8000000000000000) != 0 || v39 < v20)
        {
          v40 = sub_190D53020();
          v44 = sub_190D57690();
          if (!os_log_type_enabled(v40, v44))
          {
            goto LABEL_48;
          }

          v45 = swift_slowAlloc();
          *v45 = 0;
          v46 = "[Tapbacks] Tapback keyboard shortcut invoked with unsupport int value";
          goto LABEL_47;
        }

        if ((v27 & 0xC000000000000001) != 0)
        {
LABEL_89:
          sub_190D52690();
          v52 = v20;
          goto LABEL_90;
        }

        if (v20 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v27 + 8 * v20 + 32);
LABEL_39:
          v40 = v29;
          v41 = sub_190900050();
          v43 = *(v15 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier + 8);
          if (v43)
          {
            if (v41 == *(v15 + OBJC_IVAR___CKTapbackPickerViewController_selectedTapbackItemIdentifier) && v43 == v42)
            {

              goto LABEL_53;
            }

            v47 = sub_190D58760();

            if (v47)
            {
LABEL_53:
              v48 = [v2 delegate];
              if (v48)
              {
                v49 = v48;
                v50 = &selRef_fullScreenBalloonViewController_didDeselectTapback_;
LABEL_57:
                if ([v49 respondsToSelector_])
                {
                  [v49 *v50];
                }

                swift_unknownObjectRelease();
                goto LABEL_60;
              }

              goto LABEL_60;
            }
          }

          else
          {
          }

          v51 = [v2 delegate];
          if (v51)
          {
            v49 = v51;
            v50 = &selRef_fullScreenBalloonViewController_didSelectTapback_;
            goto LABEL_57;
          }

LABEL_60:
          [v2 beginDismissal];

          goto LABEL_61;
        }

        __break(1u);
        goto LABEL_92;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  oslog = sub_190D53020();
  v32 = sub_190D57690();
  if (os_log_type_enabled(oslog, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_19020E000, oslog, v32, "[Tapbacks] Tapback keyboard shortcut invoked with no input", v33, 2u);
    MEMORY[0x193AF7A40](v33, -1, -1);
  }

LABEL_25:
}

uint64_t sub_190AC2A88(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_190D58340();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_190AC2E64(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_190AC2DF0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53BC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_190AC2E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  sub_190D52690();
  result = sub_190D570F0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_190AC33F0();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_190D58340();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_190AC33F0()
{
  v0 = sub_190D57100();
  v4 = sub_190AC3470(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_190AC3470(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_190D58060();
    if (!v9 || (v10 = v9, v11 = sub_190AC2DF0(v9, 0), v12 = sub_190AC35C8(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_190D52690(), , v12 == v10))
    {
      v13 = sub_190D56FB0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_190D56FB0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_190D58340();
LABEL_4:

  return sub_190D56FB0();
}

unint64_t sub_190AC35C8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_190AFA228(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_190D57090();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_190D58340();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_190AFA228(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_190D57060();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

double sub_190AC37E8()
{
  v0 = sub_190CAF9B0();
  v1 = sub_190D56F10();
  v3 = v2;
  if (v1 == sub_190D56F10() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_190D58760();

  if (v6)
  {
LABEL_6:

    return 8.0;
  }

  v7 = sub_190D56F10();
  v9 = v8;
  if (v7 == sub_190D56F10() && v9 == v10)
  {
    goto LABEL_14;
  }

  v12 = sub_190D58760();

  if (v12)
  {
    goto LABEL_6;
  }

  v13 = sub_190D56F10();
  v15 = v14;
  if (v13 == sub_190D56F10() && v15 == v16)
  {
LABEL_14:

    return 8.0;
  }

  v18 = sub_190D58760();

  if (v18)
  {
    goto LABEL_6;
  }

  v19 = sub_190D56F10();
  v21 = v20;
  if (v19 == sub_190D56F10() && v21 == v22)
  {
    goto LABEL_19;
  }

  v23 = sub_190D58760();

  if (v23)
  {
    goto LABEL_21;
  }

  v24 = sub_190D56F10();
  v26 = v25;
  if (v24 == sub_190D56F10() && v26 == v27)
  {
    goto LABEL_19;
  }

  v28 = sub_190D58760();

  if (v28)
  {
    goto LABEL_21;
  }

  v29 = sub_190D56F10();
  v31 = v30;
  if (v29 == sub_190D56F10() && v31 == v32)
  {
    goto LABEL_19;
  }

  v33 = sub_190D58760();

  if (v33)
  {
LABEL_21:

    return 4.0;
  }

  v34 = sub_190D56F10();
  v36 = v35;
  if (v34 == sub_190D56F10() && v36 == v37)
  {
LABEL_19:

    return 4.0;
  }

  v38 = sub_190D58760();

  if (v38)
  {
    goto LABEL_21;
  }

  v39 = sub_190D56F10();
  v41 = v40;
  if (v39 == sub_190D56F10() && v41 == v42)
  {
    goto LABEL_33;
  }

  v43 = sub_190D58760();

  if (v43)
  {
    goto LABEL_35;
  }

  v44 = sub_190D56F10();
  v46 = v45;
  if (v44 == sub_190D56F10() && v46 == v47)
  {
    goto LABEL_33;
  }

  v48 = sub_190D58760();

  if (v48)
  {
    goto LABEL_35;
  }

  v49 = sub_190D56F10();
  v51 = v50;
  if (v49 == sub_190D56F10() && v51 == v52)
  {
    goto LABEL_33;
  }

  v53 = sub_190D58760();

  if (v53)
  {
    goto LABEL_35;
  }

  v54 = sub_190D56F10();
  v56 = v55;
  if (v54 == sub_190D56F10() && v56 == v57)
  {
    goto LABEL_33;
  }

  v58 = sub_190D58760();

  if (v58)
  {
LABEL_35:

    return 2.0;
  }

  v59 = sub_190D56F10();
  v61 = v60;
  if (v59 == sub_190D56F10() && v61 == v62)
  {
LABEL_33:

    return 2.0;
  }

  v63 = sub_190D58760();

  result = 4.0;
  if (v63)
  {
    return 2.0;
  }

  return result;
}

void sub_190AC3D40(uint64_t a1, SEL *a2, const char *a3)
{
  v6 = v3;
  [v6 setAnimatedBalloonViewFrameUpdates_];
  v8 = [v6 delegate];
  if (v8)
  {
    v9 = v8;
    if ([v8 respondsToSelector_])
    {
      [v9 *a2];
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v10 = sub_190D53040();
  __swift_project_value_buffer(v10, qword_1EAD9D790);
  oslog = sub_190D53020();
  v11 = sub_190D576C0();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_19020E000, oslog, v11, a3, v12, 2u);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }
}

id _sSo38CKFullScreenBalloonViewControllerPhoneC7ChatKitE013tapbackPickerc6Parentd11TapbackPileD0yAC023AggregateAcknowledgmentcD0CSgAC0ljckD0CF_0()
{
  result = [v0 delegate];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      v3 = [v2 associatedTapbackPileViewForFullScreenBalloonViewController_];
      swift_unknownObjectRelease();
      if (v3)
      {
        type metadata accessor for AggregateAcknowledgmentBalloonView();
        result = swift_dynamicCastClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id _sSo38CKFullScreenBalloonViewControllerPhoneC7ChatKitE013tapbackPickerc6Parentd14TapbackBackingC0ySo6UIViewCSgAC0ljckD0CF_0()
{
  v1 = [v0 chatItem];
  v2 = [v1 isFromMe];

  if (v2)
  {
    return 0;
  }

  v3 = sub_190ABF194();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 wantsTapbackPickerBackingBubble];

  if (!v5)
  {
    return 0;
  }

  v6 = [v0 chatItem];
  v7 = sub_190AC0268(v6, 1, 256);

  result = v7;
  if (!v7)
  {
    return 0;
  }

  return result;
}

id sub_190AC4020()
{
  result = [objc_allocWithZone(type metadata accessor for CKBackgroundSettingsPeriodicAnalytics()) init];
  qword_1EAD453B0 = result;
  return result;
}

id static CKBackgroundSettingsPeriodicAnalytics.shared.getter()
{
  if (qword_1EAD453A8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD453B0;

  return v1;
}

unint64_t sub_190AC4158(char a1, char a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD583B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD9C20;
  *(inited + 32) = 0x646165725F6D6461;
  *(inited + 40) = 0xE900000000000079;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000190E718C0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  strcpy((inited + 80), "ever_enabled");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v7 = sub_190821BE8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD583B8);
  swift_arrayDestroy();
  return v7;
}

id CKBackgroundSettingsPeriodicAnalytics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBackgroundSettingsPeriodicAnalytics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190AC42F0()
{
  v0 = sub_190D51840();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E5D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = sub_190D56ED0();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (*(&v31 + 1))
  {
    v13 = swift_dynamicCast();
    (*(v1 + 56))(v9, v13 ^ 1u, 1, v0);
  }

  else
  {
    sub_19022EEA4(v32, &unk_1EAD551C0);
    (*(v1 + 56))(v9, 1, 1, v0);
  }

  sub_190880754(v9, v6);
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_19022EEA4(v6, &unk_1EAD5E5D0);
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v14 = sub_190D53040();
    __swift_project_value_buffer(v14, qword_1EAD9D730);
    v15 = sub_190D53020();
    v16 = sub_190D57680();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_19020E000, v15, v16, "CKBackgroundSettingsPeriodicAnalytics: No previous report found, sending first report", v17, 2u);
      MEMORY[0x193AF7A40](v17, -1, -1);
    }

LABEL_24:
    v24 = 1;
    goto LABEL_25;
  }

  (*(v1 + 32))(v3, v6, v0);
  sub_190D51760();
  v19 = v18;
  if (v18 >= 86400.0)
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v25 = sub_190D53040();
    __swift_project_value_buffer(v25, qword_1EAD9D730);
    v26 = sub_190D53020();
    v27 = sub_190D57680();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_19020E000, v26, v27, "CKBackgroundSettingsPeriodicAnalytics: 24+ hours since last report, sending now", v28, 2u);
      MEMORY[0x193AF7A40](v28, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    goto LABEL_24;
  }

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v20 = sub_190D53040();
  __swift_project_value_buffer(v20, qword_1EAD9D730);
  v21 = sub_190D53020();
  v22 = sub_190D57680();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v19 / 3600.0;
    _os_log_impl(&dword_19020E000, v21, v22, "CKBackgroundSettingsPeriodicAnalytics: Not enough time since last report: %f hours", v23, 0xCu);
    MEMORY[0x193AF7A40](v23, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  v24 = 0;
LABEL_25:
  sub_19022EEA4(v9, &unk_1EAD5E5D0);
  return v24;
}

void sub_190AC4858()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 settingValueForKey_];

  if (v1)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  aBlock = v18;
  v15 = v19;
  if (*(&v19 + 1))
  {
    sub_19021DC70();
    if (swift_dynamicCast())
    {
      v2 = v13;
      v3 = [v13 BOOLValue];
      goto LABEL_9;
    }
  }

  else
  {
    sub_19022EEA4(&aBlock, &unk_1EAD551C0);
  }

  v3 = 0;
  v2 = 0;
LABEL_9:
  v4 = objc_opt_self();
  v5 = 1;
  if (([v4 summarizationModelsAvailable] & 1) == 0)
  {
    v5 = [v4 generativePlaygroundModelsAvailable];
  }

  v6 = sub_190D56ED0();
  v7 = swift_allocObject();
  v7[16] = v5;
  v7[17] = v3;
  v7[18] = 1;
  v16 = sub_190AC5F98;
  v17 = v7;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v15 = sub_190A928AC;
  *(&v15 + 1) = &block_descriptor_73;
  v8 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v8);

  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v9 = sub_190D53040();
  __swift_project_value_buffer(v9, qword_1EAD9D730);
  v10 = sub_190D53020();
  v11 = sub_190D57680();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109632;
    *(v12 + 4) = v5;
    *(v12 + 8) = 1024;
    *(v12 + 10) = v3;
    *(v12 + 14) = 1024;
    *(v12 + 16) = 1;
    _os_log_impl(&dword_19020E000, v10, v11, "CKBackgroundSettingsPeriodicAnalytics: Sent periodic report - admReady: %{BOOL}d, currentlyEnabled: %{BOOL}d, everEnabled: %{BOOL}d", v12, 0x14u);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }
}

void sub_190AC4B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D51840();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_190D51780();
  v10 = sub_190D56ED0();
  [v8 setObject:v9 forKey:v10];

  v11 = sub_190D56ED0();
  [v8 setInteger:a2 forKey:v11];

  [v8 synchronize];
  if (qword_1EAD46218 != -1)
  {
    swift_once();
  }

  v12 = sub_190D53040();
  __swift_project_value_buffer(v12, qword_1EAD9D730);
  (*(v5 + 16))(v7, a1, v4);
  v13 = sub_190D53020();
  v14 = sub_190D57680();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    v17 = sub_190D51780();
    (*(v5 + 8))(v7, v4);
    *(v15 + 4) = v17;
    *v16 = v17;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2;
    _os_log_impl(&dword_19020E000, v13, v14, "CKBackgroundSettingsPeriodicAnalytics: Updated last report date to %@ (hour: %ld", v15, 0x16u);
    sub_19022EEA4(v16, &unk_1EAD54610);
    MEMORY[0x193AF7A40](v16, -1, -1);
    MEMORY[0x193AF7A40](v15, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t ConversationAppIntentsEntity.init(chatGUID:displayName:groupName:recipients:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

void ConversationAppIntentsEntity.init(conversation:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_190D50680();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 chat];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 guid];

    v12 = sub_190D56F10();
    v48 = v13;

    v14 = [a1 displayName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_190D56F10();
      v46 = v17;
      v47 = v16;
    }

    else
    {
      v46 = 0xE000000000000000;
      v47 = 0;
    }

    v22 = [a1 groupName];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 string];

      v25 = sub_190D56F10();
      v44 = v26;
      v45 = v25;
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v27 = [a1 recipients];
    v28 = sub_190D57180();

    v29 = *(v28 + 16);
    if (v29)
    {
      v41 = v12;
      v42 = a1;
      v43 = a2;
      v52 = MEMORY[0x1E69E7CC0];
      sub_19082DC18(0, v29, 0);
      v30 = v52;
      v40 = v28;
      v31 = v28 + 32;
      do
      {
        sub_19021834C(v31, v51);
        sub_19021834C(v51, v50);
        sub_19084E158();
        swift_dynamicCast();
        v32 = v49;
        sub_190CDE170(v8);

        __swift_destroy_boxed_opaque_existential_0(v51);
        v52 = v30;
        v34 = *(v30 + 16);
        v33 = *(v30 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_19082DC18(v33 > 1, v34 + 1, 1);
          v30 = v52;
        }

        *(v30 + 16) = v34 + 1;
        (*(v5 + 32))(v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v34, v8, v4);
        v31 += 32;
        --v29;
      }

      while (v29);

      a2 = v43;
      v12 = v41;
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    v36 = v47;
    v35 = v48;
    *a2 = v12;
    a2[1] = v35;
    v38 = v45;
    v37 = v46;
    a2[2] = v36;
    a2[3] = v37;
    v39 = v44;
    a2[4] = v38;
    a2[5] = v39;
    a2[6] = v30;
  }

  else
  {
    if (qword_1EAD46290 != -1)
    {
      swift_once();
    }

    v18 = sub_190D53040();
    __swift_project_value_buffer(v18, qword_1EAD9D7D8);
    v19 = sub_190D53020();
    v20 = sub_190D57680();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_19020E000, v19, v20, "Creating a ConversationAppIntentsEntity with no id, this will not be a valid AppIntents Entity.", v21, 2u);
      MEMORY[0x193AF7A40](v21, -1, -1);
    }

    a2[6] = 0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 0u;
  }
}

uint64_t ConversationAppIntentsEntity.id.getter()
{
  v1 = *v0;
  sub_190D52690();
  return v1;
}

uint64_t sub_190AC63E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD5C940);
  __swift_project_value_buffer(v10, qword_1EAD5C940);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t static ConversationAppIntentsEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51C00 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD5C940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ConversationAppIntentsEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v17 - v5;
  v7 = sub_190D56EA0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  sub_190D56E90();
  sub_190D56E80();
  sub_190D56E70();
  sub_190D56E80();
  sub_190D51450();
  (*(v9 + 16))(v11, v14, v8);
  (*(v9 + 56))(v6, 1, 1, v8);
  v15 = sub_190D50B50();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_190D50B70();
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_190AC6A2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51C00 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD5C940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190AC6AD4(uint64_t a1)
{
  v2 = sub_190AC7024();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_190AC6B24(uint64_t a1)
{
  v2 = sub_190AC6F0C();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t ConversationAppIntentsEntity.messageConversationRepresentation.getter()
{
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();

  return sub_190D50CD0();
}

uint64_t sub_190AC6BEC()
{
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D50CD0();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_190AC6CA0()
{
  result = qword_1EAD45648;
  if (!qword_1EAD45648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45648);
  }

  return result;
}

unint64_t sub_190AC6CF8()
{
  result = qword_1EAD45630;
  if (!qword_1EAD45630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45630);
  }

  return result;
}

unint64_t sub_190AC6D50()
{
  result = qword_1EAD45608;
  if (!qword_1EAD45608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45608);
  }

  return result;
}

unint64_t sub_190AC6DA8()
{
  result = qword_1EAD5C958;
  if (!qword_1EAD5C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C958);
  }

  return result;
}

unint64_t sub_190AC6E0C()
{
  result = qword_1EAD45628;
  if (!qword_1EAD45628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45628);
  }

  return result;
}

unint64_t sub_190AC6E60()
{
  result = qword_1EAD45620;
  if (!qword_1EAD45620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45620);
  }

  return result;
}

unint64_t sub_190AC6EB4()
{
  result = qword_1EAD45638;
  if (!qword_1EAD45638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45638);
  }

  return result;
}

unint64_t sub_190AC6F0C()
{
  result = qword_1EAD45618;
  if (!qword_1EAD45618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45618);
  }

  return result;
}

unint64_t sub_190AC6F64()
{
  result = qword_1EAD5C960;
  if (!qword_1EAD5C960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5C968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5C960);
  }

  return result;
}

unint64_t sub_190AC6FCC()
{
  result = qword_1EAD45610;
  if (!qword_1EAD45610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45610);
  }

  return result;
}

unint64_t sub_190AC7024()
{
  result = qword_1EAD45640;
  if (!qword_1EAD45640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45640);
  }

  return result;
}

uint64_t sub_190AC7078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_190AC70C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_190AC714C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_190D519C0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v11 setDateStyle_];
  [v11 setTimeStyle_];
  sub_190D51980();
  v12 = sub_190D51940();
  (*(v8 + 8))(v10, v7);
  [v11 setLocale_];

  *a4 = v11;
}

void sub_190AC7290()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = objc_opt_self();
    v3 = [v1 contactsSettingsCacheSize];

    v4 = [v2 defaultSettingsWithCacheSize_];
    v5 = [objc_allocWithZone(MEMORY[0x1E695D098]) initWithSettings_];

    qword_1EAD5C980 = v5;
  }

  else
  {
    __break(1u);
  }
}

char *CKCarPlayConversationController.init(interfaceController:)(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_sessionConfiguration] = 0;
  if (qword_1EAD51CE8 != -1)
  {
    swift_once();
  }

  v4 = sub_190D53040();
  __swift_project_value_buffer(v4, qword_1EAD9E0E8);
  v5 = sub_190D53020();
  v6 = sub_190D576C0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_19020E000, v5, v6, "Initializing modern controller", v7, 2u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  v8 = [objc_opt_self() sharedConversationList];
  sub_190AC7A68();

  sub_190AC9610(a1);
  sub_190AC9A88(a1);
  result = CKFrameworkBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_190D56ED0();
    v12 = sub_190D56ED0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    if (!v13)
    {
      sub_190D56F10();
      v13 = sub_190D56ED0();
    }

    v14 = objc_allocWithZone(MEMORY[0x1E695AF28]);
    sub_1902188FC(0, &qword_1EAD5C990);
    v15 = sub_190D57160();

    sub_1902188FC(0, &qword_1EAD5C998);
    v16 = sub_190D57160();

    v17 = [v14 initWithTitle:v13 sections:v15 assistantCellConfiguration:0 headerGridButtons:v16];

    v18 = OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_conversationListTemplate;
    *&v2[OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_conversationListTemplate] = v17;
    v19 = [objc_allocWithZone(MEMORY[0x1E695AF30]) init];
    [v19 setButtonStyle_];
    v20 = *&v2[v18];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_190DD55F0;
    *(v21 + 32) = v19;
    sub_1902188FC(0, &qword_1EAD5C9B0);
    v22 = v20;
    v23 = sub_190D57160();

    [v22 setTrailingNavigationBarButtons_];

    [a1 setRootTemplate:*&v2[v18] animated:0];
    *&v2[OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_interfaceController] = a1;
    v45.receiver = v2;
    v45.super_class = type metadata accessor for CKCarPlayConversationController();
    v24 = a1;
    v25 = objc_msgSendSuper2(&v45, sel_init);
    v26 = objc_allocWithZone(MEMORY[0x1E695AF50]);
    v27 = v25;
    v28 = [v26 initWithDelegate_];
    v29 = *&v27[OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_sessionConfiguration];
    *&v27[OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_sessionConfiguration] = v28;

    [v24 setDelegate_];
    v30 = objc_opt_self();
    v31 = [v30 defaultCenter];
    [v31 addObserver:v27 selector:sel_receivedRefreshNotificationWithNotification_ name:@"CKConversationListConversationLeftNotification" object:0];

    v32 = [v30 defaultCenter];
    [v32 addObserver:v27 selector:sel_receivedRefreshNotificationWithNotification_ name:@"CKConversationListFinishedLoadingNotification" object:0];

    v33 = [v30 defaultCenter];
    [v33 addObserver:v27 selector:sel_receivedRefreshNotificationWithNotification_ name:@"CKConversationListChangedNotification" object:0];

    v34 = [v30 defaultCenter];
    [v34 addObserver:v27 selector:sel_receivedRefreshNotificationWithNotification_ name:*MEMORY[0x1E69A5700] object:0];

    v35 = [v30 defaultCenter];
    [v35 addObserver:v27 selector:sel_receivedRefreshNotificationWithNotification_ name:*MEMORY[0x1E69A5748] object:0];

    v36 = [v30 defaultCenter];
    [v36 addObserver:v27 selector:sel_receivedRefreshNotificationWithNotification_ name:CKMessageFilteringChangedNotification[0] object:0];

    v37 = [v30 defaultCenter];
    [v37 addObserver:v27 selector:sel_receivedRefreshNotificationWithNotification_ name:CKMessageSpamFilteringChangedNotification object:0];

    v38 = [objc_opt_self() sharedFeatureFlags];
    LODWORD(v15) = [v38 isUnreadCountRefactorEnabled];

    v39 = [v30 defaultCenter];
    v40 = v39;
    if (v15)
    {
      v41 = *MEMORY[0x1E69A7DD0];
    }

    else
    {
      v41 = *MEMORY[0x1E69A5920];
    }

    [v39 addObserver:v27 selector:sel_receivedRefreshNotificationWithNotification_ name:v41 object:0];

    v42 = v27;
    v43 = [v30 defaultCenter];
    [v43 addObserver:v42 selector:sel_receivedRefreshNotificationWithNotification_ name:CKConversationListContactPhotosEnabledNotification object:0];

    v44 = [v30 defaultCenter];
    [v44 addObserver:v42 selector:sel_receivedRefreshNotificationWithNotification_ name:@"CKConversationListPinnedConversationsChangedNotification" object:0];

    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190AC7A68()
{
  if (qword_1EAD51CE8 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9E0E8);
  v2 = sub_190D53020();
  v3 = sub_190D576C0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19020E000, v2, v3, "Begin resort and reload data", v4, 2u);
    MEMORY[0x193AF7A40](v4, -1, -1);
  }

  [v0 resort];
  [v0 updateConversationListsAndSortIfEnabled];
  oslog = sub_190D53020();
  v5 = sub_190D576C0();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19020E000, oslog, v5, "end resort and reload data", v6, 2u);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }
}

id CKCarPlayConversationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKCarPlayConversationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKCarPlayConversationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190AC7D3C()
{
  v0 = [objc_opt_self() sharedFeatureFlags];
  v1 = [v0 isModernFilteringEnabled];

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD1D90;
    *(inited + 32) = sub_190D57AA0();
    v3 = sub_19021E69C(inited);
    swift_setDeallocating();
    v4 = sub_19021DEC0(v3, 0);
  }

  else
  {
    v5 = [objc_opt_self() sharedConversationList];
    v6 = [v5 pinnedConversations];

    sub_1902188FC(0, &qword_1EAD466B0);
    v7 = sub_190D57180();

    v21 = MEMORY[0x1E69E7CC0];
    if (v7 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
    {
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x193AF3B90](v9, v7);
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v10 = *(v7 + 8 * v9 + 32);
        }

        v11 = v10;
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (CKConversation.isHidden.getter())
        {
        }

        else
        {
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
        }

        ++v9;
        if (v12 == i)
        {
          v4 = v21;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v4 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:

  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 isStewieActive];

  if (v14)
  {
    v22 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_35;
    }

    for (j = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_190D581C0())
    {
      v16 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x193AF3B90](v16, v4);
        }

        else
        {
          if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if ([v17 isStewieConversation])
        {
        }

        else
        {
          sub_190D58360();
          sub_190D583B0();
          sub_190D583C0();
          sub_190D58370();
        }

        ++v16;
        if (v19 == j)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_36:

    return v22;
  }

  return v4;
}

uint64_t sub_190AC80A8()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isModernFilteringEnabled];

  if (v2)
  {
    v3 = [v0 defaultPrimaryFilterModeConversations];
    sub_1902188FC(0, &qword_1EAD466B0);
    v4 = sub_190D57180();

    v18 = MEMORY[0x1E69E7CC0];
    if (v4 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x193AF3B90](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 isPinned];
        v11 = [objc_opt_self() sharedInstance];
        v12 = [v11 isStewieActive];

        if (v12)
        {
          if ((v10 & 1) == 0 && ([v8 isStewieConversation] & 1) == 0)
          {
LABEL_16:
            sub_190D58360();
            sub_190D583B0();
            sub_190D583C0();
            sub_190D58370();
            goto LABEL_6;
          }
        }

        else if (!v10)
        {
          goto LABEL_16;
        }

LABEL_6:
        ++v6;
        if (v9 == i)
        {
          v16 = v18;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_24:
  }

  else
  {
    v13 = CKMessageUnknownFilteringEnabled() != 0;
    v14 = [objc_opt_self() sharedConversationList];
    v15 = [v14 conversationsForFilterMode_];

    sub_1902188FC(0, &qword_1EAD466B0);
    v16 = sub_190D57180();
  }

  return v16;
}

void sub_190AC834C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D50FB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51CE8 != -1)
  {
    swift_once();
  }

  v8 = sub_190D53040();
  __swift_project_value_buffer(v8, qword_1EAD9E0E8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_190D53020();
  v10 = sub_190D576C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v19 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = sub_190D50F80();
    v15 = sub_190D56F10();
    v17 = v16;

    (*(v5 + 8))(v7, v4);
    v18 = sub_19021D9F8(v15, v17, &v20);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_19020E000, v9, v10, "Received refresh notification: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x193AF7A40](v13, -1, -1);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_190AC85A0();
}

void sub_190AC85A0()
{
  v1 = v0;
  if (qword_1EAD51CE8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9E0E8);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Refreshing conversation list", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = [objc_opt_self() sharedConversationList];
  sub_190AC7A68();

  v7 = OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_interfaceController;
  v8 = *(v1 + OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_interfaceController);
  sub_190AC9610(v8);

  v9 = OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_conversationListTemplate;
  v10 = *(v1 + OBJC_IVAR____TtC7ChatKit31CKCarPlayConversationController_conversationListTemplate);
  sub_1902188FC(0, &qword_1EAD5C998);
  v11 = v10;
  v12 = sub_190D57160();

  [v11 setHeaderGridButtons_];

  v13 = *(v1 + v7);
  sub_190AC9A88(v13);

  v14 = *(v1 + v9);
  sub_1902188FC(0, &qword_1EAD5C990);
  v15 = v14;
  v16 = sub_190D57160();

  [v15 updateSections_];

  oslog = sub_190D53020();
  v17 = sub_190D576C0();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_19020E000, oslog, v17, "Ended refershing conversation list", v18, 2u);
    MEMORY[0x193AF7A40](v18, -1, -1);
  }
}

id sub_190AC8A3C()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isCarPlaySummaryEnabled];

  if (!v2)
  {
    return 0;
  }

  result = sub_190AC8B04();
  if (!v4)
  {
    result = [v0 previewText];
    if (result)
    {
      v5 = result;
      v6 = [result string];
      v7 = sub_190D56F10();

      return v7;
    }
  }

  return result;
}

id sub_190AC8B04()
{
  if ([objc_opt_self() messageSummarizationEnabled])
  {
    result = [v0 chat];
    if (!result)
    {
      return result;
    }

    v2 = result;
    v3 = [result chatSummary];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 string];
      v6 = sub_190D56F10();

      return v6;
    }
  }

  return 0;
}

id CKConversation.carPlayMessageListItem(traitCollection:dateFormatter:timeFormatter:avatarImageRenderer:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_190D51B00();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_190D51840();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v5 hasUnreadMessages];
  if (CKConversationListContactPhotosEnabled())
  {
    v18 = [v5 renderedAvatarImageWithSize:a1 traitCollection:a4 avatarImageRenderer:{*MEMORY[0x1E695AF08], *(MEMORY[0x1E695AF08] + 8)}];
  }

  else
  {
    v18 = 0;
  }

  v69 = [objc_allocWithZone(MEMORY[0x1E695AF48]) initWithLeadingItem:0 leadingImage:v18 unread:v17];
  v19 = [v5 uniqueIdentifier];
  if (!v19)
  {
    sub_190D56F10();
    v19 = sub_190D56ED0();
  }

  v20 = [v5 hasDisplayName];
  v70 = v19;
  if (!v20)
  {
    v21 = [v5 name];
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_10:
    v67 = 0;
    v68 = 0xE000000000000000;
    goto LABEL_11;
  }

  v21 = [v5 displayName];
  if (!v21)
  {
    goto LABEL_10;
  }

LABEL_8:
  v22 = v21;
  v67 = sub_190D56F10();
  v68 = v23;

LABEL_11:
  v63 = sub_190AC8A3C();
  v25 = v24;
  v26 = [objc_opt_self() sharedFeatureFlags];
  v27 = [v26 isCarPlaySummaryEnabled];

  if (v27 && !v25)
  {
    v62 = v13;
    if (qword_1EAD51CE8 != -1)
    {
      swift_once();
    }

    v28 = sub_190D53040();
    __swift_project_value_buffer(v28, qword_1EAD9E0E8);
    v29 = v5;
    v30 = sub_190D53020();
    v31 = sub_190D576A0();

    if (os_log_type_enabled(v30, v31))
    {
      v58 = a2;
      v59 = a3;
      v60 = v12;
      v61 = v18;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v71 = v33;
      *v32 = 136315138;
      v34 = [v29 chat];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 guid];

        v37 = sub_190D56F10();
        v39 = v38;
      }

      else
      {
        v39 = 0xEC00000064697567;
        v37 = 0x5F6E776F6E6B6E75;
      }

      v40 = sub_19021D9F8(v37, v39, &v71);

      *(v32 + 4) = v40;
      _os_log_impl(&dword_19020E000, v30, v31, "conversation.guid: %s unable to generate preview", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x193AF7A40](v33, -1, -1);
      MEMORY[0x193AF7A40](v32, -1, -1);

      v12 = v60;
      v18 = v61;
      a2 = v58;
      a3 = v59;
    }

    else
    {
    }

    v13 = v62;
  }

  v41 = [v5 date];
  if (v41)
  {
    v42 = v41;
    sub_190D517E0();

    v43 = v64;
    sub_190D51AC0();
    v44 = sub_190D51A10();
    (*(v65 + 8))(v43, v66);
    v45 = sub_190D51780();
    if (v44)
    {
      v46 = a3;
    }

    else
    {
      v46 = a2;
    }

    v47 = [v46 stringFromDate_];

    sub_190D56F10();
    v49 = v48;

    (*(v13 + 8))(v16, v12);
  }

  else
  {
    v49 = 0;
  }

  v50 = v69;
  v51 = sub_190D56ED0();

  if (!v25)
  {
    v52 = 0;
    if (v49)
    {
      goto LABEL_30;
    }

LABEL_32:
    v53 = 0;
    goto LABEL_33;
  }

  v52 = sub_190D56ED0();

  if (!v49)
  {
    goto LABEL_32;
  }

LABEL_30:
  v53 = sub_190D56ED0();

LABEL_33:
  v54 = objc_allocWithZone(MEMORY[0x1E695AF40]);
  v55 = v70;
  v56 = [v54 initWithConversationIdentifier:v70 text:v51 leadingConfiguration:v50 trailingConfiguration:0 detailText:v52 trailingText:v53];

  [v56 setUserInfo_];
  return v56;
}

char *sub_190AC9270(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_190D581C0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_19082DE18(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_190AC9468(i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CA28);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_19082DE18((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_190824530(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CA28);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_19082DE18((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_190824530(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_190AC9468(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = sub_190D58560();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v2;
    }

LABEL_10:
    sub_190D582B0();
    v3 = "CPListTemplateItem";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v2;
  }

  sub_190D582B0();
  v3 = "";
  v4 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x193AF28B0](v4, v3 | 0x8000000000000000);
  MEMORY[0x193AF28B0](0xD000000000000012, 0x8000000190E71A40);
  MEMORY[0x193AF28B0](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v6 = sub_190D58980();
  MEMORY[0x193AF28B0](v6);

  result = sub_190D58520();
  __break(1u);
  return result;
}

uint64_t sub_190AC9610(id a1)
{
  v2 = [objc_opt_self() sharedConversationList];
  v3 = sub_190AC7D3C();

  if (qword_1EAD51CE8 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9E0E8);
    sub_190D52690();
    v5 = sub_190D53020();
    v6 = sub_190D576C0();
    v7 = v3 >> 62;
    if (os_log_type_enabled(v5, v6))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      v9 = v7 ? sub_190D581C0() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v8 + 4) = v9;

      _os_log_impl(&dword_19020E000, v5, v6, "Refreshing pinned section with %ld conversations", v8, 0xCu);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    else
    {
    }

    v34 = [a1 carTraitCollection];
    v35 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      break;
    }

    v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_27;
    }

LABEL_9:
    v11 = 0;
    v32 = v3 & 0xFFFFFFFFFFFFFF8;
    v33 = v3 & 0xC000000000000001;
    v29 = xmmword_190DD1D90;
    v30 = v10;
    v31 = v3;
    while (1)
    {
      if (v33)
      {
        v12 = MEMORY[0x193AF3B90](v11, v3);
      }

      else
      {
        if (v11 >= *(v32 + 16))
        {
          goto LABEL_24;
        }

        v12 = *(v3 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (qword_1EAD51C18 != -1)
      {
        swift_once();
      }

      v15 = qword_1EAD5C980;
      v16 = [v13 uniqueIdentifier];
      if (!v16)
      {
        sub_190D56F10();
        v16 = sub_190D56ED0();
      }

      v17 = [v13 hasUnreadMessages];
      v18 = [objc_allocWithZone(MEMORY[0x1E695AF38]) initWithConversationIdentifier:v16 unread:v17];

      [objc_opt_self() maximumGridButtonImageSize];
      v19 = [v13 renderedAvatarImageWithSize:v34 traitCollection:v15 avatarImageRenderer:?];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
      v20 = swift_allocObject();
      *(v20 + 16) = v29;
      v21 = [v13 pinnedConversationDisplayNamePreferringShortName_];
      v22 = sub_190D56F10();
      v24 = v23;

      *(v20 + 32) = v22;
      *(v20 + 40) = v24;
      v25 = objc_allocWithZone(MEMORY[0x1E695AF18]);
      a1 = v18;
      v26 = sub_190D57160();

      [v25 initWithTitleVariants:v26 image:v19 messageConfiguration:a1 handler:0];

      MEMORY[0x193AF29E0]();
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
      ++v11;
      v3 = v31;
      if (v14 == v30)
      {
        v27 = v35;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
  }

  v10 = sub_190D581C0();
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_27:
  v27 = MEMORY[0x1E69E7CC0];
LABEL_28:

  return v27;
}

uint64_t sub_190AC9A88(void *a1)
{
  v2 = [objc_opt_self() sharedConversationList];
  v3 = sub_190AC80A8();

  v4 = [objc_opt_self() maximumItemCount];
  v5 = sub_190A2D4F0(v4, v3);

  if (qword_1EAD51CE8 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9E0E8);
    sub_190D52690();
    v7 = sub_190D53020();
    v8 = sub_190D576C0();
    v9 = v5 >> 62;
    if (os_log_type_enabled(v7, v8))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      v11 = v9 ? sub_190D581C0() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v10 + 4) = v11;

      _os_log_impl(&dword_19020E000, v7, v8, "Refreshing list section with %ld conversations", v10, 0xCu);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }

    else
    {
    }

    v30 = [a1 carTraitCollection];
    v31 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      break;
    }

    v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_29;
    }

LABEL_9:
    v13 = 0;
    a1 = (v5 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x193AF3B90](v13, v5);
      }

      else
      {
        if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v14 = *(v5 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (qword_1EAD51C08 != -1)
      {
        swift_once();
      }

      v17 = qword_1EAD51C10;
      v18 = qword_1EAD5C970;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = qword_1EAD51C18;
      v20 = qword_1EAD5C978;
      if (v19 != -1)
      {
        swift_once();
      }

      v21 = qword_1EAD5C980;
      v22 = [v15 carPlayMessageListItemWithTraitCollection:v30 dateFormatter:v18 timeFormatter:v20 avatarImageRenderer:v21];

      MEMORY[0x193AF29E0]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_190D571A0();
      }

      sub_190D571E0();
      ++v13;
      if (v16 == v12)
      {
        v23 = v31;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
  }

  v12 = sub_190D581C0();
  if (v12)
  {
    goto LABEL_9;
  }

LABEL_29:
  v23 = MEMORY[0x1E69E7CC0];
LABEL_30:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_190DD55F0;
  sub_190D52690();
  if (v23 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CA28);
    v25 = sub_190D58530();
  }

  else
  {
    sub_190D58770();
    v25 = v23;
  }

  v26 = objc_allocWithZone(MEMORY[0x1E695AF20]);
  sub_190AC9270(v25);

  v27 = sub_190D57160();

  v28 = [v26 initWithItems_];

  *(v24 + 32) = v28;
  return v24;
}

void sub_190AC9F70(const char *a1)
{
  if (qword_1EAD51CE8 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9E0E8);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, a1, v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  sub_190AC85A0();
}

id sub_190ACA10C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKRichLinkMetadataCache();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190ACA1A0()
{
  v0 = sub_190D56ED0();

  v1 = [objc_opt_self() _systemImageNamed_];

  if (v1)
  {

    sub_190D55E90();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_190ACA338(uint64_t a1)
{
  result = 0xD000000000000014;
  if (*(a1 + 16) != 1)
  {
    sub_190D582B0();
    v3 = sub_190D58720();

    MEMORY[0x193AF28B0](0xD000000000000014, 0x8000000190E71AF0);
    return v3;
  }

  return result;
}

double sub_190ACA3FC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v2);
  sub_190D54AC0();
  sub_190AD0278(&qword_1EAD5AB40, MEMORY[0x1E697FCB0]);
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CA68);
  sub_190ACF598();
  sub_190D53A10();
  v3 = sub_190D552B0();
  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CA40) + 36);
  *v4 = v3;
  result = 0.0;
  *(v4 + 8) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 1;
  return result;
}

uint64_t sub_190ACA570()
{
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CA80);
  sub_190D518A0();
  type metadata accessor for ListCellView();
  sub_190233640(&qword_1EAD5CA88, &qword_1EAD5CA80);
  sub_190AD0278(&qword_1EAD5CA78, type metadata accessor for ListCellView);
  sub_190AD0278(&qword_1EAD5CA90, _s9ViewModelVMa);
  return sub_190D56290();
}

uint64_t sub_190ACA6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_190ACF698(a1, a2);
  v3 = a2 + *(type metadata accessor for ListCellView() + 20);
  result = sub_190D55FC0();
  *v3 = v5;
  *(v3 + 8) = v6;
  return result;
}

uint64_t sub_190ACA728@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_190ACA338(*v1);
  v5 = v4;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CA38);
  v7 = (a1 + v6[9]);
  *v7 = v3;
  v7[1] = v5;
  v8 = (a1 + v6[11]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a1 + v6[10];
  sub_190D55290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CA40);
  sub_190ACF4D8();
  sub_190D53A20();
  v10 = [objc_opt_self() secondarySystemBackgroundColor];
  v11 = sub_190D55CE0();
  LOBYTE(v3) = sub_190D552B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CA60);
  v13 = &v9[*(result + 36)];
  *v13 = v11;
  v13[8] = v3;
  return result;
}

uint64_t sub_190ACA880@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CAD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CAD8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CAE0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - v15;
  *v12 = sub_190D548B0();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CAE8) + 44)];
  v18 = *v2;
  *v8 = sub_190D54AD0();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CAF0);
  sub_190ACAC7C(v2, &v8[*(v19 + 44)]);
  sub_19022FD14(v8, v5, &qword_1EAD5CAD0);
  *v17 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CAF8);
  sub_19022FD14(v5, &v17[*(v20 + 48)], &qword_1EAD5CAD0);
  sub_19022EEA4(v8, &qword_1EAD5CAD0);
  sub_19022EEA4(v5, &qword_1EAD5CAD0);
  LOBYTE(v5) = sub_190D552B0();
  sub_190D539C0();
  v21 = &v12[*(v10 + 44)];
  *v21 = v5;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_190D564B0();
  sub_190D54430();
  sub_19081E40C(v12, v16, &qword_1EAD5CAD8);
  v26 = &v16[*(v14 + 44)];
  v27 = v56;
  *(v26 + 4) = v55;
  *(v26 + 5) = v27;
  *(v26 + 6) = v57;
  v28 = v52;
  *v26 = v51;
  *(v26 + 1) = v28;
  v29 = v54;
  *(v26 + 2) = v53;
  *(v26 + 3) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB00);
  v31 = v50;
  v32 = (v50 + *(v30 + 36));
  v33 = *(sub_190D543E0() + 20);
  v34 = *MEMORY[0x1E697F468];
  v35 = sub_190D54A20();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #16.0 }

  *v32 = _Q0;
  v41 = [objc_opt_self() systemBackgroundColor];
  v42 = sub_190D55CE0();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B18);
  *&v32[*(v43 + 52)] = v42;
  *&v32[*(v43 + 56)] = 256;
  v44 = sub_190D56500();
  v46 = v45;
  v47 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B20) + 36)];
  *v47 = v44;
  v47[1] = v46;
  return sub_19081E40C(v16, v31, &qword_1EAD5CAE0);
}

uint64_t sub_190ACAC7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v123 = &v92[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v92[-v7];
  v130 = sub_190D548D0();
  LOBYTE(v174[0]) = 1;
  sub_190ACBB04(a1, &v193);
  v224 = *&v194[48];
  v225 = *&v194[64];
  v226 = *&v194[80];
  v220 = v193;
  v221 = *v194;
  v222 = *&v194[16];
  v223 = *&v194[32];
  v227 = *&v194[96];
  v228[0] = v193;
  v228[1] = *v194;
  v228[2] = *&v194[16];
  v228[3] = *&v194[32];
  v228[4] = *&v194[48];
  v228[5] = *&v194[64];
  v228[6] = *&v194[80];
  v228[7] = *&v194[96];
  sub_19022FD14(&v220, &v140, &qword_1EAD5CB10);
  sub_19022EEA4(v228, &qword_1EAD5CB10);
  *(&v213[4] + 7) = v224;
  *(&v213[5] + 7) = v225;
  *(&v213[6] + 7) = v226;
  *(&v213[7] + 7) = v227;
  *(v213 + 7) = v220;
  *(&v213[1] + 7) = v221;
  *(&v213[2] + 7) = v222;
  *(&v213[3] + 7) = v223;
  v125 = LOBYTE(v174[0]);
  v129 = sub_190D552D0();
  sub_190D539C0();
  v105 = v8;
  v127 = v10;
  v128 = v9;
  v126 = v11;
  v12 = a1[7];
  v106 = a1;
  *(&v124 + 1) = v12;
  if (v12)
  {
    *&v124 = a1[6];
    *&v193 = v124;
    *(&v193 + 1) = v12;
    sub_19081E484();
    sub_190D52690();
    v13 = sub_190D555F0();
    v15 = v14;
    v17 = v16;
    sub_190D55480();
    v18 = sub_190D555B0();
    v120 = v19;
    v121 = v18;
    v21 = v20;
    v119 = v22;

    sub_19081E474(v13, v15, v17 & 1);

    sub_190D52690();
    LOBYTE(v13) = sub_190D552D0();
    sub_190D539C0();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    a1 = v106;
    LOBYTE(v193) = v21 & 1;
    LOBYTE(v140) = 0;
    v117 = v21 & 1;
    v118 = v13;
  }

  else
  {
    v120 = 0;
    v121 = 0;
    v118 = 0;
    v119 = 0;
    *&v124 = 0;
    v117 = 0;
    v24 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0;
  }

  v31 = a1[9];
  v131 = a1[8];
  v32 = a1[11];
  v111 = a1[10];
  v33 = a1 + *(type metadata accessor for ListCellView() + 20);
  v34 = *v33;
  v35 = *(v33 + 1);
  LOBYTE(v140) = *v33;
  *(&v140 + 1) = v35;
  v116 = v31;
  sub_190D52690();
  v133 = v32;
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB18);
  sub_190D55FF0();
  v134 = *(&v193 + 1);
  v115 = v193;
  v102 = v194[0];
  v114 = sub_190D548D0();
  LOBYTE(v174[0]) = 1;
  sub_190ACBDC4(a1, &v193);
  v208 = *&v194[64];
  v209 = *&v194[80];
  v210[0] = *&v194[96];
  *(v210 + 9) = *&v194[105];
  v205 = *&v194[16];
  v206 = *&v194[32];
  v207 = *&v194[48];
  v203 = v193;
  v204 = *v194;
  v211[5] = *&v194[64];
  v211[6] = *&v194[80];
  v212[0] = *&v194[96];
  *(v212 + 9) = *&v194[105];
  v211[2] = *&v194[16];
  v211[3] = *&v194[32];
  v211[4] = *&v194[48];
  v211[0] = v193;
  v211[1] = *v194;
  sub_19022FD14(&v203, &v140, &qword_1EAD5CB20);
  sub_19022EEA4(v211, &qword_1EAD5CB20);
  *(&v202[5] + 7) = v208;
  *(&v202[6] + 7) = v209;
  *(&v202[7] + 7) = v210[0];
  v202[8] = *(v210 + 9);
  *(&v202[1] + 7) = v204;
  *(&v202[2] + 7) = v205;
  *(&v202[3] + 7) = v206;
  *(&v202[4] + 7) = v207;
  *(v202 + 7) = v203;
  v36 = LOBYTE(v174[0]);
  v37 = a1[20];
  if (v37 && *(v37 + 16))
  {
    LOBYTE(v140) = v34;
    *(&v140 + 1) = v35;
    sub_190D55FF0();
    v38 = *(&v193 + 1);
    v113 = v194[0];
    v132 = v193;
    sub_190D50920();
    v104 = v38;
    sub_190D50920();
    v112 = 0xEE0064616F6C7961;
    v103 = 0x50206E6967756C50;
    v135 = 4;
  }

  else
  {
    v103 = 0;
    v104 = 0;
    v112 = 0;
    v135 = 0;
    v132 = 0;
    v113 = 0;
  }

  v95 = v133 != 0;
  v39 = v111;
  if (!v133)
  {
    v39 = 0;
  }

  v94 = v39;
  v40 = v116;
  if (v116)
  {
    v41 = v131;
  }

  else
  {
    v41 = 0;
  }

  v109 = 0x8000000190E71B30;
  LOBYTE(v140) = v34;
  *(&v140 + 1) = v35;
  sub_190D55FF0();
  v107 = *(&v193 + 1);
  v131 = v193;
  v42 = v194[0];
  sub_190D53AD0();
  v43 = v214;
  v44 = v215;
  v93 = v215;
  LODWORD(v111) = v216;
  v45 = v217;
  v110 = v218;
  v46 = v219;
  sub_190D56500();
  sub_190D53C60();
  v108 = sub_190D55310();
  sub_190D539C0();
  v48 = v47;
  v97 = v50;
  v98 = v49;
  v96 = v51;
  LOBYTE(v193) = 0;
  v52 = sub_190D54AC0();
  v53 = v122;
  *v122 = v52;
  v53[1] = 0;
  *(v53 + 16) = 1;
  v54 = v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB28);
  sub_190ACC328(v106, v54 + *(v55 + 44));
  v56 = v54;
  v57 = v123;
  sub_19022FD14(v56, v123, &qword_1EAD5CB08);
  *(&v141[7] + 1) = v213[7];
  *&v141[8] = *(&v213[7] + 15);
  *(&v141[8] + 9) = v229[0];
  HIDWORD(v141[8]) = *(v229 + 3);
  *(&v145 + 1) = v120;
  *&v146 = v117;
  *(&v146 + 1) = v119;
  v147 = v124;
  *&v148 = v118;
  *(&v148 + 1) = v24;
  *&v149[0] = v26;
  *(&v149[0] + 1) = v28;
  *&v149[1] = v30;
  BYTE8(v149[1]) = 0;
  *(a2 + 264) = v149[0];
  *(a2 + 273) = *(v149 + 9);
  *&v151[1] = v202[0];
  *&v151[65] = v202[4];
  *&v151[49] = v202[3];
  *&v151[33] = v202[2];
  *&v151[17] = v202[1];
  *&v151[129] = v202[8];
  *&v151[113] = v202[7];
  *&v151[97] = v202[6];
  *&v151[81] = v202[5];
  v150 = v114;
  v151[0] = v36;
  v58 = *&v151[128];
  *(a2 + 520) = *&v151[112];
  *(a2 + 536) = v58;
  v59 = *&v151[64];
  *(a2 + 456) = *&v151[48];
  *(a2 + 472) = v59;
  v60 = *&v151[96];
  *(a2 + 488) = *&v151[80];
  *(a2 + 504) = v60;
  v61 = *v151;
  *(a2 + 392) = v150;
  *(a2 + 408) = v61;
  v62 = *&v151[32];
  *(a2 + 424) = *&v151[16];
  *(a2 + 440) = v62;
  *(&v140 + 1) = 0;
  LOBYTE(v141[0]) = v125;
  *(&v141[2] + 1) = v213[2];
  *(&v141[1] + 1) = v213[1];
  *(&v141[5] + 1) = v213[5];
  *(&v141[6] + 1) = v213[6];
  *(&v141[3] + 1) = v213[3];
  *(&v141[4] + 1) = v213[4];
  *(v141 + 1) = v213[0];
  BYTE8(v141[8]) = v129;
  v106 = v30;
  v63 = v105;
  *&v142 = v105;
  v100 = v26;
  v101 = v24;
  *(&v142 + 1) = v128;
  *&v143 = v127;
  v99 = v28;
  *(&v143 + 1) = v126;
  v64 = v141[4];
  v65 = v141[5];
  v66 = v141[6];
  v67 = v141[7];
  v69 = v142;
  v68 = v143;
  v70 = v141[8];
  *(a2 + 296) = v41;
  *(a2 + 320) = v94;
  *(a2 + 336) = v95;
  strcpy((a2 + 344), "General Info");
  *(a2 + 360) = 2;
  *(a2 + 384) = v102;
  *(a2 + 552) = v151[144];
  *(a2 + 608) = 0xD000000000000011;
  *(a2 + 624) = 7;
  *(a2 + 648) = v42;
  *&v140 = v130;
  *&v145 = v121;
  *(a2 + 96) = v65;
  *(a2 + 112) = v66;
  v71 = v141[2];
  *(a2 + 32) = v141[1];
  *(a2 + 48) = v71;
  *(a2 + 64) = v141[3];
  *(a2 + 80) = v64;
  v72 = v141[0];
  *a2 = v140;
  *(a2 + 16) = v72;
  v144 = 0;
  *(a2 + 192) = 0;
  *(a2 + 160) = v69;
  *(a2 + 176) = v68;
  *(a2 + 128) = v67;
  *(a2 + 144) = v70;
  v73 = v148;
  *(a2 + 232) = v147;
  *(a2 + 248) = v73;
  v74 = v146;
  *(a2 + 200) = v145;
  *(a2 + 216) = v74;
  *(a2 + 304) = v40;
  *(a2 + 312) = 0;
  v75 = v134;
  *(a2 + 328) = v133;
  *(a2 + 357) = 0;
  *(a2 + 358) = -5120;
  *(a2 + 368) = v115;
  *(a2 + 376) = v75;
  v102 = v36;
  v76 = v103;
  *(a2 + 560) = v103;
  v77 = v76;
  *(a2 + 568) = v112;
  *(a2 + 576) = v135;
  v78 = v132;
  *(a2 + 584) = v132;
  v79 = v78;
  *(a2 + 592) = v104;
  *(a2 + 600) = v113;
  *(a2 + 616) = v109;
  *(a2 + 632) = v131;
  *(a2 + 640) = v107;
  *&v152 = v43;
  *(&v152 + 1) = __PAIR64__(v111, v44);
  *&v153 = v45;
  *(&v153 + 1) = v110;
  *&v154[0] = v46;
  *(&v154[2] + 8) = v139;
  *(&v154[1] + 8) = v138;
  *(v154 + 8) = v137;
  BYTE8(v154[3]) = v108;
  *&v155 = v48;
  v81 = v97;
  v80 = v98;
  *(&v155 + 1) = v98;
  *&v156 = v97;
  v82 = v96;
  *(&v156 + 1) = v96;
  v157 = 0;
  *(a2 + 784) = 0;
  v83 = v153;
  *(a2 + 656) = v152;
  *(a2 + 672) = v83;
  v84 = v154[1];
  *(a2 + 688) = v154[0];
  *(a2 + 704) = v84;
  v85 = v154[3];
  *(a2 + 720) = v154[2];
  *(a2 + 736) = v85;
  v86 = v156;
  *(a2 + 752) = v155;
  *(a2 + 768) = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB30);
  sub_19022FD14(v57, a2 + *(v87 + 176), &qword_1EAD5CB08);
  sub_19022FD14(&v140, &v193, &qword_1EAD5CB38);
  sub_19022FD14(&v145, &v193, &qword_1EAD5CB40);
  sub_190D50920();
  sub_190D50920();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_19022FD14(&v150, &v193, &qword_1EAD5CB48);
  v88 = v77;
  v89 = v77;
  v90 = v112;
  v132 = v79;
  sub_190ACFA00(v89, v112);
  sub_190D50920();
  sub_190D50920();
  sub_190D52690();
  sub_19022FD14(&v152, &v193, &qword_1EAD5CB50);
  sub_190ACFA50(v88, v90);
  sub_19022EEA4(v122, &qword_1EAD5CB08);
  sub_19022EEA4(v123, &qword_1EAD5CB08);
  v158 = v43;
  v159 = v93;
  v160 = v111;
  v161 = v45;
  v162 = v110;
  v163 = v46;
  v164 = v137;
  v165 = v138;
  v166 = v139;
  v167 = v108;
  *v168 = *v136;
  *&v168[3] = *&v136[3];
  v169 = v48;
  v170 = v80;
  v171 = v81;
  v172 = v82;
  v173 = 0;
  sub_19022EEA4(&v158, &qword_1EAD5CB50);

  sub_190ACFA50(v88, v90);
  v181 = v202[5];
  v182 = v202[6];
  v183 = v202[7];
  v184 = v202[8];
  v177 = v202[1];
  v178 = v202[2];
  v179 = v202[3];
  v180 = v202[4];
  v174[0] = v114;
  v174[1] = 0;
  v175 = v102;
  v176 = v202[0];
  sub_19022EEA4(v174, &qword_1EAD5CB48);

  v185[0] = v121;
  v185[1] = v120;
  v185[2] = v117;
  v185[3] = v119;
  v186 = v124;
  v187 = v118;
  v188 = v101;
  v189 = v100;
  v190 = v99;
  v191 = v106;
  v192 = 0;
  sub_19022EEA4(v185, &qword_1EAD5CB40);
  *&v194[81] = v213[5];
  *&v194[97] = v213[6];
  *&v194[113] = v213[7];
  *&v194[17] = v213[1];
  *&v194[33] = v213[2];
  *&v194[49] = v213[3];
  *&v194[65] = v213[4];
  v193 = v130;
  v194[0] = v125;
  *&v194[128] = *(&v213[7] + 15);
  *&v194[1] = v213[0];
  v195 = v129;
  *v196 = v229[0];
  *&v196[3] = *(v229 + 3);
  v197 = v63;
  v198 = v128;
  v199 = v127;
  v200 = v126;
  v201 = 0;
  return sub_19022EEA4(&v193, &qword_1EAD5CB38);
}

uint64_t sub_190ACBB04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[1];
  v4 = a1[2];
  v51 = v5;
  v52 = v4;
  sub_19081E484();
  sub_190D52690();
  v6 = sub_190D555F0();
  v8 = v7;
  v42 = v9;
  v11 = v10;
  v12 = a1[4];
  if (v12)
  {
    v13 = a1[5];
    v39 = a1[3];
    v52 = a1[4];
    sub_190D52690();
    sub_190AD02C0(v39, v12, v13);
    sub_190D52690();
    v14 = sub_190D555F0();
    v16 = v15;
    v40 = v5;
    v18 = v17;
    v41 = v6;
    v19 = v13;
    v51 = sub_190D55CE0();
    v20 = sub_190D55580();
    v36 = v21;
    v37 = v20;
    v38 = v22;
    v24 = v23;
    v25 = v18 & 1;
    v5 = v40;
    sub_19081E474(v14, v16, v25);

    v26 = sub_190D55470();

    v6 = v41;
    KeyPath = swift_getKeyPath();
    v29 = v36;
    v28 = v37;
    v30 = v39;
    LOBYTE(v51) = v38 & 1;
    v31 = v38 & 1;
  }

  else
  {
    sub_190D52690();
    v28 = 0;
    v29 = 0;
    v24 = 0;
    v30 = 0;
    KeyPath = 0;
    v26 = 0;
    v31 = 0;
  }

  v46 = v42 & 1;
  v45 = 1;
  *&v47 = v28;
  *(&v47 + 1) = v29;
  *&v48 = v31;
  *(&v48 + 1) = v24;
  *&v49 = v30;
  *(&v49 + 1) = v12;
  *&v50 = KeyPath;
  *(&v50 + 1) = v26;
  *&v44[55] = v50;
  *&v44[39] = v49;
  *&v44[23] = v48;
  *&v44[7] = v47;
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v42 & 1;
  *(a2 + 24) = v11;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v32 = *&v44[16];
  *(a2 + 57) = *v44;
  v33 = *&v44[32];
  v34 = *&v44[48];
  *(a2 + 120) = *&v44[63];
  *(a2 + 105) = v34;
  *(a2 + 89) = v33;
  *(a2 + 73) = v32;
  v51 = v28;
  v52 = v29;
  v53 = v31;
  v54 = v24;
  v55 = v30;
  v56 = v12;
  v57 = KeyPath;
  v58 = v26;
  sub_19081BE48(v6, v8, v42 & 1);
  sub_190D52690();
  sub_190D52690();
  sub_19022FD14(&v47, v43, &qword_1EAD5CD70);
  sub_19022EEA4(&v51, &qword_1EAD5CD70);
  sub_19081E474(v6, v8, v42 & 1);
}

uint64_t sub_190ACBDC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[17];
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = 0xE90000000000006BLL;
        v4 = 0x6361627061742031;
      }

      else
      {
        v36 = sub_190D58720();
        v37 = v8;
        MEMORY[0x193AF28B0](0x6B63616270617420, 0xE900000000000073);
        v4 = v36;
        v5 = v37;
      }

      type metadata accessor for ListCellView();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB18);
      sub_190D55FF0();
      v6 = v36;
      v7 = v38;
      sub_190D50920();
      v35 = v37;
      sub_190D50920();
      sub_190D52690();
      v33 = 5;
    }

    else
    {
      v7 = 0;
      v5 = 0;
      v33 = 0;
      v6 = 0;
      v35 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v33 = 0;
    v6 = 0;
    v35 = 0;
    v7 = 0;
  }

  v9 = a1[18];
  v31 = v5;
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      if (v10 == 1)
      {
        v11 = 0xE900000000000072;
        v12 = 0x656B636974732031;
      }

      else
      {
        v36 = sub_190D58720();
        v37 = v15;
        MEMORY[0x193AF28B0](0x72656B6369747320, 0xE900000000000073);
        v12 = v36;
        v11 = v37;
      }

      v30 = v12;
      type metadata accessor for ListCellView();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB18);
      sub_190D55FF0();
      v14 = v38;
      v34 = v36;
      sub_190D50920();
      v32 = v37;
      sub_190D50920();
      sub_190D52690();
      v13 = 6;
    }

    else
    {
      v14 = 0;
      v11 = 0;
      v13 = 0;
      v34 = 0;
      v30 = 0;
      v32 = 0;
    }
  }

  else
  {
    v30 = 0;
    v11 = 0;
    v13 = 0;
    v34 = 0;
    v32 = 0;
    v14 = 0;
  }

  v16 = a1[19];
  v29 = v7;
  if (v16)
  {
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v6;
      v19 = v4;
      if (v17 == 1)
      {
        v17 = 0x66736E6172742031;
        v20 = 0xEA00000000007265;
      }

      else
      {
        v36 = sub_190D58720();
        v37 = v24;
        MEMORY[0x193AF28B0](0x6566736E61727420, 0xEA00000000007372);
        v17 = v36;
        v20 = v37;
      }

      type metadata accessor for ListCellView();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB18);
      sub_190D55FF0();
      v27 = v38;
      v28 = v36;
      sub_190D50920();
      v23 = v37;
      sub_190D50920();
      sub_190D52690();
      v22 = 3;
      v21 = v20;
    }

    else
    {
      v18 = v6;
      v19 = v4;
      v27 = 0;
      v21 = 0;
      v22 = 0;
      v28 = 0;
      v23 = 0;
    }
  }

  else
  {
    v18 = v6;
    v19 = v4;
    v17 = 0;
    v21 = 0;
    v22 = 0;
    v28 = 0;
    v23 = 0;
    v27 = 0;
  }

  sub_190ACFA00(v19, v31);
  sub_190ACFA00(v30, v11);
  sub_190ACFA00(v17, v21);
  sub_190ACFA50(v30, v11);
  sub_190ACFA50(v19, v31);
  sub_190ACFA50(v17, v21);
  *a2 = v19;
  *(a2 + 8) = v31;
  *(a2 + 16) = v33;
  *(a2 + 24) = v18;
  *(a2 + 32) = v35;
  *(a2 + 40) = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13;
  *(a2 + 72) = v34;
  *(a2 + 80) = v32;
  *(a2 + 88) = v14;
  *(a2 + 96) = v17;
  *(a2 + 104) = v21;
  *(a2 + 112) = v22;
  *(a2 + 120) = v28;
  *(a2 + 128) = v23;
  *(a2 + 136) = v27;
  sub_190ACFA50(v17, v21);
  sub_190ACFA50(v30, v11);
  return sub_190ACFA50(v19, v31);
}

uint64_t sub_190ACC328@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB58);
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v107 - v3;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB60);
  MEMORY[0x1EEE9AC00](v128);
  v129 = (&v107 - v4);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB68);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v107 - v5;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB70);
  MEMORY[0x1EEE9AC00](v144);
  v134 = &v107 - v6;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB78);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v108 = (&v107 - v7);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB80);
  MEMORY[0x1EEE9AC00](v126);
  v117 = &v107 - v8;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB88);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v107 - v9;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB90);
  MEMORY[0x1EEE9AC00](v140);
  v127 = &v107 - v10;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB98);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v12 = &v107 - v11;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBA0);
  MEMORY[0x1EEE9AC00](v121);
  v113 = &v107 - v13;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBA8);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v15 = &v107 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBB0);
  MEMORY[0x1EEE9AC00](v123);
  v114 = &v107 - v16;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBB8);
  MEMORY[0x1EEE9AC00](v141);
  v143 = &v107 - v17;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBC0);
  MEMORY[0x1EEE9AC00](v135);
  *&v138 = &v107 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBC8);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v107 - v19;
  *&v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBD0);
  MEMORY[0x1EEE9AC00](v137);
  v122 = &v107 - v20;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBD8);
  MEMORY[0x1EEE9AC00](v142);
  *&v139 = &v107 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBE0);
  v118 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v107 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBE8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v107 - v29;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CBF0);
  MEMORY[0x1EEE9AC00](v136);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v107 - v34;
  v36 = a1 + *(type metadata accessor for ListCellView() + 20);
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v153) = v37;
  *(&v153 + 1) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CB18);
  sub_190D55FD0();
  if (v146 <= 4u)
  {
    if (v146 == 2)
    {
      *v35 = sub_190D54AD0();
      *(v35 + 1) = 0;
      v55 = 1;
      v35[16] = 1;
      if (a1[12])
      {
        *&v153 = a1[12];
        sub_190D52690();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CC88);
        sub_190233640(&qword_1EAD5CC90, &qword_1EAD5CC88);
        sub_190AD017C();
        sub_190AD01D0();
        sub_190D56290();
        v56 = v118;
        (*(v118 + 32))(v30, v24, v22);
        v55 = 0;
      }

      else
      {
        v56 = v118;
      }

      (*(v56 + 56))(v30, v55, 1, v22);
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CC80);
      sub_19081E40C(v30, &v35[*(v72 + 44)], &qword_1EAD5CBE8);
      v62 = &qword_1EAD5CBF0;
      sub_19022FD14(v35, v120, &qword_1EAD5CBF0);
      swift_storeEnumTagMultiPayload();
      sub_190233640(&qword_1EAD5CC00, &qword_1EAD5CBF0);
      sub_190ACFD74();
      v73 = v122;
      sub_190D54C50();
      sub_19022FD14(v73, v138, &qword_1EAD5CBD0);
      swift_storeEnumTagMultiPayload();
      sub_190ACFCC4(&qword_1EAD5CC38, &qword_1EAD5CBD0, &unk_190DEFB00, sub_190ACFD74);
      sub_190ACFE24();
      v74 = v139;
      sub_190D54C50();
      sub_19022EEA4(v73, &qword_1EAD5CBD0);
      sub_19022FD14(v74, v143, &qword_1EAD5CBD8);
      swift_storeEnumTagMultiPayload();
      sub_190ACFC0C();
      sub_190AD0010();
      sub_190D54C50();
      sub_19022EEA4(v74, &qword_1EAD5CBD8);
      v63 = v35;
      goto LABEL_35;
    }

    if (v146 != 3)
    {
      if (v146 == 4)
      {
        *v32 = sub_190D54AD0();
        *(v32 + 1) = 0;
        v39 = 1;
        v32[16] = 1;
        if (a1[20])
        {
          *&v153 = a1[20];
          sub_190D52690();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CC88);
          sub_190233640(&qword_1EAD5CC90, &qword_1EAD5CC88);
          sub_190AD017C();
          sub_190AD01D0();
          sub_190D56290();
          v40 = v118;
          (*(v118 + 32))(v27, v24, v22);
          v39 = 0;
        }

        else
        {
          v40 = v118;
        }

        (*(v40 + 56))(v27, v39, 1, v22);
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CC80);
        sub_19081E40C(v27, &v32[*(v75 + 44)], &qword_1EAD5CBE8);
        v62 = &qword_1EAD5CBF0;
        sub_19022FD14(v32, v129, &qword_1EAD5CBF0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CC10);
        sub_190233640(&qword_1EAD5CC00, &qword_1EAD5CBF0);
        sub_190ACFAA0();
        v76 = v130;
        sub_190D54C50();
        sub_19022FD14(v76, v133, &qword_1EAD5CB68);
        swift_storeEnumTagMultiPayload();
        sub_190ACFCC4(&qword_1EAD5CBF8, &qword_1EAD5CB68, &unk_190DEFA98, sub_190ACFAA0);
        v77 = v134;
        sub_190D54C50();
        sub_19022EEA4(v76, &qword_1EAD5CB68);
        sub_19022FD14(v77, v143, &qword_1EAD5CB70);
        swift_storeEnumTagMultiPayload();
        sub_190ACFC0C();
        sub_190AD0010();
        sub_190D54C50();
        sub_19022EEA4(v77, &qword_1EAD5CB70);
        v63 = v32;
        goto LABEL_35;
      }

      goto LABEL_16;
    }

    v64 = a1[19];
    if (v64)
    {
      *v15 = sub_190D54AD0();
      *(v15 + 1) = 0x4020000000000000;
      v15[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CCE0);
      *&v153 = v64;
      sub_190D52690();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CCE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CCF0);
      sub_190233640(&qword_1EAD5CCF8, &qword_1EAD5CCE8);
      sub_190233640(&qword_1EAD5CD00, &qword_1EAD5CCF0);
      sub_190AD0224();
      sub_190D56290();
      v59 = v114;
      sub_19081E40C(v15, v114, &qword_1EAD5CBA8);
      v65 = 0;
      v66 = v122;
    }

    else
    {
      v65 = 1;
      v66 = v122;
      v59 = v114;
    }

    (*(v111 + 56))(v59, v65, 1, v112);
    v62 = &qword_1EAD5CBB0;
    sub_19022FD14(v59, v120, &qword_1EAD5CBB0);
    swift_storeEnumTagMultiPayload();
    sub_190233640(&qword_1EAD5CC00, &qword_1EAD5CBF0);
    sub_190ACFD74();
    sub_190D54C50();
    v103 = &qword_1EAD5CBD0;
    sub_19022FD14(v66, v138, &qword_1EAD5CBD0);
    swift_storeEnumTagMultiPayload();
LABEL_34:
    sub_190ACFCC4(&qword_1EAD5CC38, &qword_1EAD5CBD0, &unk_190DEFB00, sub_190ACFD74);
    sub_190ACFE24();
    v105 = v139;
    sub_190D54C50();
    sub_19022EEA4(v66, v103);
    sub_19022FD14(v105, v143, &qword_1EAD5CBD8);
    swift_storeEnumTagMultiPayload();
    sub_190ACFC0C();
    sub_190AD0010();
    sub_190D54C50();
    sub_19022EEA4(v105, &qword_1EAD5CBD8);
    v63 = v59;
    goto LABEL_35;
  }

  if (v146 == 5)
  {
    v57 = a1[17];
    if (v57)
    {
      *v12 = sub_190D54AD0();
      *(v12 + 1) = 0x4020000000000000;
      v12[16] = 0;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CCD8);
      sub_190ACDED8(a1, v57, &v12[*(v58 + 44)]);
      v59 = v113;
      sub_19081E40C(v12, v113, &qword_1EAD5CB98);
      v60 = 0;
    }

    else
    {
      v60 = 1;
      v59 = v113;
    }

    (*(v109 + 56))(v59, v60, 1, v110);
    v62 = &qword_1EAD5CBA0;
    sub_19022FD14(v59, v125, &qword_1EAD5CBA0);
    swift_storeEnumTagMultiPayload();
    sub_190ACFEB0();
    sub_190ACFF60();
    v66 = v127;
    goto LABEL_33;
  }

  if (v146 == 6)
  {
    v67 = a1[18];
    if (v67)
    {
      v68 = sub_190D54AD0();
      v69 = v108;
      *v108 = v68;
      v69[1] = 0x4020000000000000;
      *(v69 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CCA8);
      *&v153 = v67;
      sub_190D52690();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CCB0);
      sub_190D518A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CCB8);
      sub_190233640(&qword_1EAD5CCC0, &qword_1EAD5CCB0);
      sub_190233640(&qword_1EAD5CCC8, &qword_1EAD5CCB8);
      sub_190AD0278(&qword_1EAD5CCD0, _s9ViewModelV7StickerVMa);
      sub_190D56290();
      v70 = v69;
      v59 = v117;
      sub_19081E40C(v70, v117, &qword_1EAD5CB78);
      v71 = 0;
      v66 = v127;
    }

    else
    {
      v71 = 1;
      v66 = v127;
      v59 = v117;
    }

    v104 = v125;
    (*(v115 + 56))(v59, v71, 1, v116);
    v62 = &qword_1EAD5CB80;
    sub_19022FD14(v59, v104, &qword_1EAD5CB80);
    swift_storeEnumTagMultiPayload();
    sub_190ACFEB0();
    sub_190ACFF60();
LABEL_33:
    sub_190D54C50();
    v103 = &qword_1EAD5CB90;
    sub_19022FD14(v66, v138, &qword_1EAD5CB90);
    swift_storeEnumTagMultiPayload();
    goto LABEL_34;
  }

  if (v146 != 7)
  {
LABEL_16:
    swift_storeEnumTagMultiPayload();
    sub_190ACFCC4(&qword_1EAD5CBF8, &qword_1EAD5CB68, &unk_190DEFA98, sub_190ACFAA0);
    v61 = v134;
    sub_190D54C50();
    v62 = &qword_1EAD5CB70;
    sub_19022FD14(v61, v143, &qword_1EAD5CB70);
    swift_storeEnumTagMultiPayload();
    sub_190ACFC0C();
    sub_190AD0010();
    sub_190D54C50();
    v63 = v61;
LABEL_35:
    v102 = v62;
    return sub_19022EEA4(v63, v102);
  }

  v41 = a1[21];
  v42 = a1[22];
  if (v42)
  {
    *&v153 = v41;
    *(&v153 + 1) = v42;
    sub_19081E484();
    sub_190D52690();
    v43 = sub_190D555F0();
    v45 = v44;
    v47 = v46;
    sub_190D55470();
    v48 = sub_190D555B0();
    v50 = v49;
    v52 = v51;
    v140 = v41;
    v54 = v53;

    sub_19081E474(v43, v45, v47 & 1);

    v146 = v48;
    v147 = v50;
    v148 = v52 & 1;
    v149 = v54;
    v150 = v140;
    v151 = v42;
    v152 = 0;
    sub_190D52690();
  }

  else
  {
    sub_190D549E0();
    v78 = sub_190D555D0();
    v80 = v79;
    v82 = v81;
    sub_190D55470();
    v83 = sub_190D555B0();
    v85 = v84;
    v87 = v86;
    v89 = v88;

    sub_19081E474(v78, v80, v82 & 1);

    v146 = v83;
    v147 = v85;
    v148 = v87 & 1;
    v149 = v89;
    v150 = 0;
    v151 = 0;
    v152 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CC20);
  sub_190ACFB2C();
  sub_190D54C50();
  v90 = v154;
  v91 = v155;
  v92 = v156;
  v139 = v153;
  v137 = v154;
  v138 = v155;
  v93 = v129;
  *v129 = v153;
  v93[1] = v90;
  v93[2] = v91;
  *(v93 + 48) = v92;
  swift_storeEnumTagMultiPayload();
  v95 = *(&v139 + 1);
  v94 = v139;
  v140 = v139;
  *&v139 = *(&v139 + 1);
  v96 = v137;
  v97 = v138;
  sub_190AD00C8(v140, *(&v139 + 1), v137, *(&v137 + 1), v138, *(&v138 + 1), v92);
  sub_190AD00C8(v94, v95, v96, *(&v96 + 1), v97, *(&v97 + 1), v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CC10);
  sub_190233640(&qword_1EAD5CC00, &qword_1EAD5CBF0);
  sub_190ACFAA0();
  v98 = v130;
  sub_190D54C50();
  sub_19022FD14(v98, v133, &qword_1EAD5CB68);
  swift_storeEnumTagMultiPayload();
  sub_190ACFCC4(&qword_1EAD5CBF8, &qword_1EAD5CB68, &unk_190DEFA98, sub_190ACFAA0);
  v99 = v134;
  sub_190D54C50();
  sub_19022EEA4(v98, &qword_1EAD5CB68);
  sub_19022FD14(v99, v143, &qword_1EAD5CB70);
  swift_storeEnumTagMultiPayload();
  sub_190ACFC0C();
  sub_190AD0010();
  sub_190D54C50();
  v100 = v140;
  v101 = v139;
  sub_190AD0124(v140, v139, v96, *(&v96 + 1), v97, *(&v97 + 1), v92);
  sub_190AD0124(v100, v101, v96, *(&v96 + 1), v97, *(&v97 + 1), v92);
  v63 = v99;
  v102 = &qword_1EAD5CB70;
  return sub_19022EEA4(v63, v102);
}

uint64_t sub_190ACDED8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CD18);
  v6 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - v10;
  if (a1[14])
  {
    v12 = a1[16];
    v27 = a1[15];
    v28 = v12;
    sub_190D52690();
    v26 = 0xEE006D6574492065;
    v13 = 0x7461676572676741;
  }

  else
  {
    v13 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  v29 = a2;
  sub_190D52690();
  v24[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CD20);
  v24[1] = sub_190D518A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CD28);
  sub_190233640(&qword_1EAD5CD30, &qword_1EAD5CD20);
  sub_190233640(&qword_1EAD5CD38, &qword_1EAD5CD28);
  sub_190AD0278(&qword_1EAD5CD40, _s9ViewModelV7TapbackVMa);
  v14 = v11;
  v24[0] = v11;
  sub_190D56290();
  v15 = v6;
  v16 = *(v6 + 16);
  v17 = v25;
  v16(v8, v14, v25);
  v19 = v26;
  v18 = v27;
  *a3 = v13;
  a3[1] = v19;
  v20 = v28;
  a3[2] = v18;
  a3[3] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CD48);
  v16(a3 + *(v21 + 48), v8, v17);
  sub_190AA2B30(v13, v19);
  v22 = *(v15 + 8);
  v22(v24[0], v17);
  v22(v8, v17);
  return sub_1908B1EFC(v13, v19);
}

double sub_190ACE200@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D54AD0();
  v27 = 1;
  sub_190ACE394(a1, &v14);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v40[8] = v22;
  v40[9] = v23;
  v40[10] = v24;
  v40[11] = v25;
  v40[4] = v18;
  v40[5] = v19;
  v40[6] = v20;
  v40[7] = v21;
  v40[0] = v14;
  v40[1] = v15;
  v40[2] = v16;
  v40[3] = v17;
  sub_19022FD14(&v28, &v13, &qword_1EAD5CD50);
  sub_19022EEA4(v40, &qword_1EAD5CD50);
  *&v26[135] = v36;
  *&v26[151] = v37;
  *&v26[167] = v38;
  *&v26[183] = v39;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[103] = v34;
  *&v26[119] = v35;
  *&v26[7] = v28;
  *&v26[23] = v29;
  *&v26[39] = v30;
  *&v26[55] = v31;
  v5 = *&v26[128];
  *(a2 + 161) = *&v26[144];
  v6 = *&v26[176];
  *(a2 + 177) = *&v26[160];
  *(a2 + 193) = v6;
  v7 = *&v26[64];
  *(a2 + 97) = *&v26[80];
  v8 = *&v26[112];
  *(a2 + 113) = *&v26[96];
  *(a2 + 129) = v8;
  *(a2 + 145) = v5;
  v9 = *v26;
  *(a2 + 33) = *&v26[16];
  result = *&v26[32];
  v11 = *&v26[48];
  *(a2 + 49) = *&v26[32];
  *(a2 + 65) = v11;
  *(a2 + 81) = v7;
  v12 = v27;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 208) = *&v26[191];
  *(a2 + 17) = v9;
  return result;
}

uint64_t sub_190ACE394@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[4];
  v11 = a1[5];
  if (*(a1 + 96) == 1)
  {
    v12 = 0x7469736E65537369;
  }

  else
  {
    v12 = 0;
  }

  if (*(a1 + 96) == 1)
  {
    v13 = 0xEB00000000657669;
  }

  else
  {
    v13 = 0;
  }

  if (*(a1 + 96) == 1)
  {
    v14 = 5457241;
  }

  else
  {
    v14 = 0;
  }

  if (*(a1 + 96) == 1)
  {
    v15 = 0xE300000000000000;
  }

  else
  {
    v15 = 0;
  }

  *a2 = 0x7373616C43;
  a2[1] = 0xE500000000000000;
  a2[2] = v2;
  a2[3] = v3;
  a2[4] = 1145656647;
  a2[5] = 0xE400000000000000;
  a2[6] = v4;
  a2[7] = v5;
  a2[8] = 0x7265646E6553;
  a2[9] = 0xE600000000000000;
  a2[10] = v6;
  a2[11] = v7;
  a2[12] = 1702125892;
  a2[13] = 0xE400000000000000;
  a2[14] = v8;
  a2[15] = v9;
  a2[16] = 0x7972616D6D7553;
  a2[17] = 0xE700000000000000;
  a2[18] = v10;
  a2[19] = v11;
  a2[20] = v12;
  a2[21] = v13;
  a2[22] = v14;
  a2[23] = v15;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_190D52690();
  swift_bridgeObjectRetain_n();
  sub_190D52690();
  sub_190D52690();
  sub_190AA2B30(v12, v13);
  sub_1908B1EFC(v12, v13);

  swift_bridgeObjectRelease_n();
}

void *sub_190ACE57C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D548B0();
  v25 = 1;
  sub_190ACE728(a1, &v8);
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v42[12] = v20;
  v42[13] = v21;
  v42[14] = v22;
  v42[15] = v23;
  v42[8] = v16;
  v42[9] = v17;
  v42[10] = v18;
  v42[11] = v19;
  v42[4] = v12;
  v42[5] = v13;
  v42[6] = v14;
  v42[7] = v15;
  v42[0] = v8;
  v42[1] = v9;
  v42[2] = v10;
  v42[3] = v11;
  sub_19022FD14(&v26, &v7, &qword_1EAD5CD58);
  sub_19022EEA4(v42, &qword_1EAD5CD58);
  *&__src[199] = v38;
  *&__src[215] = v39;
  *&__src[231] = v40;
  *&__src[247] = v41;
  *&__src[135] = v34;
  *&__src[151] = v35;
  *&__src[167] = v36;
  *&__src[183] = v37;
  *&__src[71] = v30;
  *&__src[87] = v31;
  *&__src[103] = v32;
  *&__src[119] = v33;
  *&__src[7] = v26;
  *&__src[23] = v27;
  *&__src[39] = v28;
  *&__src[55] = v29;
  v5 = v25;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), __src, 0x107uLL);
}

uint64_t sub_190ACE728@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B08);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36[-v5];
  sub_190D55ED0();
  v7 = *MEMORY[0x1E6981698];
  v8 = sub_190D55EF0();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = sub_190D55EC0();

  sub_19022EEA4(v6, &qword_1EAD54B08);
  sub_190D56690();
  v12 = v11;
  v14 = v13;
  v15 = sub_190D54AD0();
  v36[0] = 1;
  sub_190ACEB1C(a1, &v53);
  v46 = *&v54[112];
  v47 = *&v54[128];
  v48 = *&v54[144];
  v49 = *&v54[160];
  v42 = *&v54[48];
  v43 = *&v54[64];
  v44 = *&v54[80];
  v45 = *&v54[96];
  v38 = v53;
  v39 = *v54;
  v40 = *&v54[16];
  v41 = *&v54[32];
  v50[8] = *&v54[112];
  v50[9] = *&v54[128];
  v50[10] = *&v54[144];
  v50[11] = *&v54[160];
  v50[4] = *&v54[48];
  v50[5] = *&v54[64];
  v50[6] = *&v54[80];
  v50[7] = *&v54[96];
  v50[0] = v53;
  v50[1] = *v54;
  v50[2] = *&v54[16];
  v50[3] = *&v54[32];
  sub_19022FD14(&v38, &v51, &qword_1EAD5CD60);
  sub_19022EEA4(v50, &qword_1EAD5CD60);
  *&v37[135] = v46;
  *&v37[151] = v47;
  *&v37[167] = v48;
  *&v37[183] = v49;
  *&v37[71] = v42;
  *&v37[87] = v43;
  *&v37[103] = v44;
  *&v37[119] = v45;
  *&v37[7] = v38;
  *&v37[23] = v39;
  *&v37[39] = v40;
  *&v37[55] = v41;
  v16 = *&v37[128];
  *&v52[145] = *&v37[144];
  v17 = *&v37[144];
  *&v52[161] = *&v37[160];
  v18 = *&v37[160];
  *&v52[177] = *&v37[176];
  v19 = *&v37[64];
  *&v52[81] = *&v37[80];
  v20 = *&v37[80];
  *&v52[97] = *&v37[96];
  v21 = *&v37[96];
  *&v52[113] = *&v37[112];
  v22 = *&v37[112];
  *&v52[129] = *&v37[128];
  v23 = *v37;
  *&v52[17] = *&v37[16];
  v24 = *&v37[16];
  *&v52[33] = *&v37[32];
  v25 = *&v37[32];
  *&v52[49] = *&v37[48];
  v26 = *&v37[48];
  *&v52[65] = *&v37[64];
  *&v52[1] = *v37;
  *(a2 + 8) = vdupq_n_s64(0x3FE3333333333333uLL);
  v27 = v36[0];
  v51 = v15;
  v52[0] = v36[0];
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  v28 = *&v52[160];
  *(a2 + 200) = *&v52[144];
  *(a2 + 216) = v28;
  *(a2 + 232) = *&v52[176];
  v29 = *&v52[96];
  *(a2 + 136) = *&v52[80];
  *(a2 + 152) = v29;
  v30 = *&v52[128];
  *(a2 + 168) = *&v52[112];
  *(a2 + 184) = v30;
  v31 = *&v52[32];
  *(a2 + 72) = *&v52[16];
  *(a2 + 88) = v31;
  v32 = *&v52[64];
  *(a2 + 104) = *&v52[48];
  *(a2 + 120) = v32;
  v33 = *v52;
  *(a2 + 40) = v51;
  *(a2 + 56) = v33;
  *&v54[145] = v17;
  *&v54[161] = v18;
  v55[0] = *&v37[176];
  *&v54[81] = v20;
  *&v54[97] = v21;
  *&v54[113] = v22;
  *&v54[129] = v16;
  *&v54[17] = v24;
  *&v54[33] = v25;
  v34 = *&v37[191];
  *&v52[192] = *&v37[191];
  *a2 = v10;
  *(a2 + 248) = v34;
  v53 = v15;
  v54[0] = v27;
  *(v55 + 15) = *&v37[191];
  *&v54[49] = v26;
  *&v54[65] = v19;
  *&v54[1] = v23;
  sub_190D50920();
  sub_19022FD14(&v51, v36, &qword_1EAD5CD68);
  sub_19022EEA4(&v53, &qword_1EAD5CD68);
}

uint64_t sub_190ACEB1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[6];
  v7 = a1[3];
  v15 = a1[5];
  v16 = a1[2];
  if (*(a1 + 32))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(a1 + 32))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  MEMORY[0x193AF28B0](v8, v9);

  v11 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v13 = a1[10];
  *a2 = 0x7373616C43;
  *(a2 + 8) = 0xE500000000000000;
  *(a2 + 16) = v5;
  *(a2 + 24) = v4;
  *(a2 + 32) = 0x7265646E6553;
  *(a2 + 40) = 0xE600000000000000;
  *(a2 + 48) = v15;
  *(a2 + 56) = v6;
  strcpy((a2 + 64), "transferGUID");
  *(a2 + 77) = 0;
  *(a2 + 78) = -5120;
  *(a2 + 80) = v16;
  *(a2 + 88) = v7;
  *(a2 + 96) = 0x6974636165527369;
  *(a2 + 104) = 0xEA00000000006E6FLL;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0xE000000000000000;
  *(a2 + 128) = 0x5072656B63697473;
  *(a2 + 136) = 0xEF656D614E6B6361;
  *(a2 + 144) = v11;
  *(a2 + 152) = v10;
  *(a2 + 160) = 0x5572656B63697473;
  *(a2 + 168) = 0xEF6F666E49726573;
  *(a2 + 176) = v12;
  *(a2 + 184) = v13;
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
}

uint64_t sub_190ACED60@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_190D54AD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CD10);
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CC88);
  sub_190233640(&qword_1EAD5CC90, &qword_1EAD5CC88);
  sub_190AD017C();
  sub_190AD01D0();
  return sub_190D56290();
}

uint64_t sub_190ACEE6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  sub_190D52690();

  return sub_190D52690();
}

uint64_t sub_190ACEEDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_190AD0304();
  *a1 = result;
  return result;
}

uint64_t sub_190ACEF0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656C637269;
  v4 = 0x632E6E6F73726570;
  v5 = 0xE700000000000000;
  v6 = 0x72656B63697473;
  if (v2 != 6)
  {
    v6 = 0x6275622E74786574;
    v5 = 0xEB00000000656C62;
  }

  v7 = 0x8000000190E5AF50;
  v8 = 0xD000000000000011;
  result = 0x742E656C62627562;
  if (v2 != 4)
  {
    v8 = 0x742E656C62627562;
    v7 = 0xEE006B6361627061;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xEB00000000656C63;
  v11 = 0x7269632E6F666E69;
  if (v2 != 2)
  {
    v11 = 0xD000000000000010;
    v10 = 0x8000000190E5AF30;
  }

  if (*v1)
  {
    v4 = 0x6B636F6C63;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 3);
  v12 = v2 == 3;
  v13 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t sub_190ACF044(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_190D52690();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);

  return sub_190D56030();
}

void sub_190ACF134()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_190D56ED0();
  [v0 setString_];
}

uint64_t sub_190ACF1C8()
{
  sub_190D549E0();

  return sub_190D55F30();
}

uint64_t sub_190ACF228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a1;
  v18 = a2;
  v3 = sub_190D54FA0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CDA0);
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = v16 - v8;
  v10 = *v2;
  v11 = v2[1];
  sub_190D54F90();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CDA8);
  v13 = sub_190233640(&qword_1EAD5CDB0, &qword_1EAD5CDA8);
  sub_190D55810();
  (*(v4 + 8))(v6, v3);
  v19 = v10;
  v20 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
  v21 = v12;
  v22 = v3;
  v23 = v13;
  v24 = MEMORY[0x1E69803B8];
  swift_getOpaqueTypeConformance2();
  sub_190233640(&qword_1EAD5B9D8, &qword_1EAD5B9D0);
  v14 = v17;
  sub_190D55750();
  return (*(v7 + 8))(v9, v14);
}

unint64_t sub_190ACF4D8()
{
  result = qword_1EAD5CA48;
  if (!qword_1EAD5CA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CA40);
    sub_190233640(&qword_1EAD5CA50, &qword_1EAD5CA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CA48);
  }

  return result;
}

unint64_t sub_190ACF598()
{
  result = qword_1EAD5CA70;
  if (!qword_1EAD5CA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CA68);
    sub_190AD0278(&qword_1EAD5CA78, type metadata accessor for ListCellView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CA70);
  }

  return result;
}

uint64_t type metadata accessor for ListCellView()
{
  result = qword_1EAD5CA98;
  if (!qword_1EAD5CA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190ACF698(uint64_t a1, uint64_t a2)
{
  v4 = _s9ViewModelVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for KTEnhancedProtectionStatusCellState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KTEnhancedProtectionStatusCellState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_190ACF874()
{
  _s9ViewModelVMa(319);
  if (v0 <= 0x3F)
  {
    sub_190ACF8F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_190ACF8F8()
{
  if (!qword_1EAD5CAA8)
  {
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5CAA8);
    }
  }
}

unint64_t sub_190ACF990()
{
  result = qword_1EAD5CAC8;
  if (!qword_1EAD5CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CAC8);
  }

  return result;
}

uint64_t sub_190ACFA00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_190D50920();
    sub_190D50920();

    return sub_190D52690();
  }

  return result;
}

uint64_t sub_190ACFA50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_190ACFAA0()
{
  result = qword_1EAD5CC08;
  if (!qword_1EAD5CC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CC10);
    sub_190ACFB2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC08);
  }

  return result;
}

unint64_t sub_190ACFB2C()
{
  result = qword_1EAD5CC18;
  if (!qword_1EAD5CC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CC20);
    sub_190ACFBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC18);
  }

  return result;
}

unint64_t sub_190ACFBB8()
{
  result = qword_1EAD5CC28;
  if (!qword_1EAD5CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC28);
  }

  return result;
}

unint64_t sub_190ACFC0C()
{
  result = qword_1EAD5CC30;
  if (!qword_1EAD5CC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CBD8);
    sub_190ACFCC4(&qword_1EAD5CC38, &qword_1EAD5CBD0, &unk_190DEFB00, sub_190ACFD74);
    sub_190ACFE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC30);
  }

  return result;
}

uint64_t sub_190ACFCC4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    sub_190233640(&qword_1EAD5CC00, &qword_1EAD5CBF0);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190ACFD74()
{
  result = qword_1EAD5CC40;
  if (!qword_1EAD5CC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CBB0);
    sub_190233640(&qword_1EAD5CC48, &qword_1EAD5CBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC40);
  }

  return result;
}

unint64_t sub_190ACFE24()
{
  result = qword_1EAD5CC50;
  if (!qword_1EAD5CC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CB90);
    sub_190ACFEB0();
    sub_190ACFF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC50);
  }

  return result;
}

unint64_t sub_190ACFEB0()
{
  result = qword_1EAD5CC58;
  if (!qword_1EAD5CC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CBA0);
    sub_190233640(&qword_1EAD5CC60, &qword_1EAD5CB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC58);
  }

  return result;
}

unint64_t sub_190ACFF60()
{
  result = qword_1EAD5CC68;
  if (!qword_1EAD5CC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CB80);
    sub_190233640(&qword_1EAD5CC70, &qword_1EAD5CB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC68);
  }

  return result;
}

unint64_t sub_190AD0010()
{
  result = qword_1EAD5CC78;
  if (!qword_1EAD5CC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CB70);
    sub_190ACFCC4(&qword_1EAD5CBF8, &qword_1EAD5CB68, &unk_190DEFA98, sub_190ACFAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC78);
  }

  return result;
}

uint64_t sub_190AD00C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_19081BE48(a1, a2, a3 & 1);
  }

  else
  {
    sub_19081BE48(a1, a2, a3 & 1);
    sub_190D52690();
  }

  return sub_190D52690();
}

uint64_t sub_190AD0124(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    sub_19081E474(a1, a2, a3 & 1);
  }

  else
  {
    sub_19081E474(a1, a2, a3 & 1);
  }
}

unint64_t sub_190AD017C()
{
  result = qword_1EAD5CC98;
  if (!qword_1EAD5CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CC98);
  }

  return result;
}

unint64_t sub_190AD01D0()
{
  result = qword_1EAD5CCA0;
  if (!qword_1EAD5CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CCA0);
  }

  return result;
}

unint64_t sub_190AD0224()
{
  result = qword_1EAD5CD08;
  if (!qword_1EAD5CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CD08);
  }

  return result;
}

uint64_t sub_190AD0278(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_190AD02C0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    sub_190D52690();

    v3 = a3;
  }
}

uint64_t sub_190AD0304()
{
  v0 = sub_190D585F0();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_190AD0360()
{
  result = qword_1EAD5CD78;
  if (!qword_1EAD5CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CB00);
    sub_190AD0418();
    sub_190233640(&qword_1EAD54B40, &qword_1EAD54B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CD78);
  }

  return result;
}

unint64_t sub_190AD0418()
{
  result = qword_1EAD5CD80;
  if (!qword_1EAD5CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CAE0);
    sub_190AD04A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CD80);
  }

  return result;
}

unint64_t sub_190AD04A4()
{
  result = qword_1EAD5CD88;
  if (!qword_1EAD5CD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CAD8);
    sub_190233640(&qword_1EAD5CD90, &qword_1EAD5CD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CD88);
  }

  return result;
}

uint64_t sub_190AD058C(uint64_t a1, uint64_t a2)
{
  v3 = (*(a1 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_navigationBarFlagsProvider))();
  if (a2 == 3 || (*(v3 + OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isShownInStandaloneWindow) & 1) != 0 || (*(v3 + OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isSplitViewCollapsed) & 1) != 0)
  {

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_190DD55F0;
    v7 = v5[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_wantsGlassPlatter];
    v8 = type metadata accessor for NavigationBarButtonModel();
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content];
    *v10 = xmmword_190DEFCC0;
    v10[16] = 2;
    v11 = &v9[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier];
    *v11 = 0;
    v11[1] = 0;
    v12 = &v9[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction];
    *v12 = 5;
    v12[8] = 2;
    v9[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter] = v7;
    v13.receiver = v9;
    v13.super_class = v8;
    *(v6 + 32) = objc_msgSendSuper2(&v13, sel_init);

    return v6;
  }
}

uint64_t sub_190AD06F4(uint64_t a1, uint64_t a2)
{
  v4 = (*(a1 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_navigationBarFlagsProvider))();
  v5 = v4;
  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_190DD55F0;
      if (a2 == 3)
      {
        v32 = type metadata accessor for NavigationBarButtonModel();
        v33 = objc_allocWithZone(v32);
        v34 = &v33[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content];
        *v34 = xmmword_190DEFCD0;
        v34[16] = 2;
        v35 = &v33[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier];
        *v35 = 0;
        v35[1] = 0;
        v36 = &v33[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction];
        *v36 = 6;
        v36[8] = 2;
        v33[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter] = 1;
        v14 = objc_msgSendSuper2(&v40, sel_init, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v33, v32, v41.receiver, v41.super_class, v42.receiver, v42.super_class);
      }

      else
      {
        v15 = v5[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_wantsGlassPlatter];
        v16 = type metadata accessor for NavigationBarButtonModel();
        v17 = objc_allocWithZone(v16);
        v18 = &v17[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content];
        *v18 = xmmword_190DEFCD0;
        v18[16] = 2;
        v19 = &v17[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier];
        *v19 = 0;
        v19[1] = 0;
        v20 = &v17[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction];
        *v20 = 4;
        v20[8] = 2;
        v17[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter] = v15;
        v14 = objc_msgSendSuper2(&v41, sel_init, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class, v17, v16, v42.receiver, v42.super_class);
      }
    }

    else
    {
      if (a2 != 5)
      {
        if (a2 != 6)
        {
          goto LABEL_13;
        }

        v6 = sub_190AD0D08(a1);
        goto LABEL_19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_190DD55F0;
      v26 = v5[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_wantsGlassPlatter];
      v27 = type metadata accessor for NavigationBarButtonModel();
      v28 = objc_allocWithZone(v27);
      v29 = &v28[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content];
      *v29 = 0;
      *(v29 + 1) = 0;
      v29[16] = 2;
      v30 = &v28[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier];
      *v30 = 0;
      v30[1] = 0;
      v31 = &v28[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction];
      *v31 = 3;
      v31[8] = 2;
      v28[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter] = v26;
      v14 = objc_msgSendSuper2(&v42, sel_init, v38.receiver, v38.super_class, v39.receiver, v39.super_class, v40.receiver, v40.super_class, v41.receiver, v41.super_class, v28, v27);
    }

LABEL_17:
    *(v7 + 32) = v14;
LABEL_20:

    return v7;
  }

  if (a2 > 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_190DD55F0;
    v8 = v5[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_wantsGlassPlatter];
    if (a2 == 1)
    {
      v21 = type metadata accessor for NavigationBarButtonModel();
      v22 = objc_allocWithZone(v21);
      v23 = &v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content];
      *v23 = xmmword_190DEFCE0;
      v23[16] = 2;
      v24 = &v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier];
      *v24 = 0;
      v24[1] = 0;
      v25 = &v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction];
      *v25 = 2;
      v25[8] = 2;
      v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter] = v8;
      v14 = objc_msgSendSuper2(&v38, sel_init, v22, v21, v39.receiver, v39.super_class, v40.receiver, v40.super_class, v41.receiver, v41.super_class, v42.receiver, v42.super_class);
    }

    else
    {
      v9 = type metadata accessor for NavigationBarButtonModel();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content];
      *v11 = 0;
      *(v11 + 1) = 0;
      v11[16] = 2;
      v12 = &v10[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier];
      *v12 = 0;
      v12[1] = 0;
      v13 = &v10[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction];
      *v13 = 2;
      v13[8] = 2;
      v10[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter] = v8;
      v14 = objc_msgSendSuper2(&v39, sel_init, v38.receiver, v38.super_class, v10, v9, v40.receiver, v40.super_class, v41.receiver, v41.super_class, v42.receiver, v42.super_class);
    }

    goto LABEL_17;
  }

  if (!a2)
  {
    v6 = sub_190AD0BA0(a1);
LABEL_19:
    v7 = v6;
    goto LABEL_20;
  }

LABEL_13:

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_190AD0BA0(uint64_t a1)
{
  v2 = (*(a1 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_unifiedCallButtonViewProvider))();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_190DD55F0;
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_navigationBarFlagsProvider);
  v6 = v3;
  v7 = v5();
  LOBYTE(v5) = v7[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_wantsGlassPlatter];

  v8 = type metadata accessor for NavigationBarButtonModel();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content];
  *v10 = v3;
  *(v10 + 1) = 0;
  v10[16] = 3;
  *&v9[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier] = xmmword_190DEFCF0;
  v11 = &v9[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction];
  *v11 = 0;
  v11[8] = 2;
  v9[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter] = v5;
  v13.receiver = v9;
  v13.super_class = v8;
  *(v4 + 32) = objc_msgSendSuper2(&v13, sel_init);

  return v4;
}

uint64_t sub_190AD0D08(uint64_t a1)
{
  v1 = (*(a1 + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_chatBotPersistentMenuProvider))();
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DD55F0;
  v4 = sub_190D56ED0();
  v5 = [objc_opt_self() systemImageNamed_];

  v6 = type metadata accessor for NavigationBarButtonModel();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content];
  *v8 = v5;
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = &v7[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v7[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction];
  *v10 = v2;
  v10[8] = 1;
  v7[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter] = 1;
  v13.receiver = v7;
  v13.super_class = v6;
  v11 = v2;
  *(v3 + 32) = objc_msgSendSuper2(&v13, sel_init);

  return v3;
}

id sub_190AD0E70()
{
  v1 = *v0;
  v2 = _s23ShareLocationMenuButtonCMa();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection23ShareLocationMenuButton_viewModel] = v1;
  v6.receiver = v3;
  v6.super_class = v2;
  sub_190D50920();
  v4 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190AD1044();

  return v4;
}

uint64_t sub_190AD0EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AD1B4C();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_190AD0F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AD1B4C();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_190AD0FC0()
{
  sub_190AD1B4C();
  sub_190D54C10();
  __break(1u);
}

id sub_190AD1044()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v57 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54E68);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v53 - v5;
  v7 = sub_190D51290();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_190D511C0();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_190D57FB0();
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = result;
  sub_1902188FC(0, &qword_1EAD464F0);
  v14 = sub_190D56ED0();
  v15 = sub_190D56ED0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  sub_190D56F10();
  v17 = sub_190D56ED0();
  v18 = objc_opt_self();
  v19 = [v18 systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_190D57DC0();
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20 = result;
  v21 = sub_190D56ED0();
  v22 = sub_190D56ED0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  sub_190D56F10();
  v24 = sub_190D56ED0();
  v25 = [v18 systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = sub_190D57DC0();
  result = CKFrameworkBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v26 = result;
  v27 = sub_190D56ED0();
  v28 = sub_190D56ED0();
  v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

  sub_190D56F10();
  v30 = sub_190D56ED0();
  v31 = [v18 systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_190D57DC0();
  sub_190D57F70();
  v33 = [objc_opt_self() systemBlueColor];
  sub_190D57F00();
  v34 = v11;
  sub_190D57E60();
  result = CKFrameworkBundle();
  if (result)
  {
    v35 = result;
    v36 = sub_190D56ED0();
    v37 = sub_190D56ED0();
    v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

    sub_190D56F10();
    sub_190D51280();
    v39 = v60;
    sub_190D511D0();
    v62 = [objc_opt_self() preferredFontForTextStyle_];
    sub_1908DD4D0();
    sub_190D511E0();
    v40 = v59;
    v41 = v61;
    (*(v59 + 16))(v6, v39, v61);
    (*(v40 + 56))(v6, 0, 1, v41);
    v42 = v34;
    sub_190D57EB0();
    [v1 setContentHorizontalAlignment_];
    v43 = v55;
    v45 = v57;
    v44 = v58;
    (*(v55 + 16))(v57, v42, v58);
    (*(v43 + 56))(v45, 0, 1, v44);
    sub_190D57FE0();
    [v1 setShowsMenuAsPrimaryAction_];
    sub_1902188FC(0, &unk_1EAD44ED0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_190DDA780;
    v48 = v53;
    v47 = v54;
    *(v46 + 32) = v54;
    *(v46 + 40) = v48;
    *(v46 + 48) = v32;
    v49 = v47;
    v50 = v48;
    v51 = v32;
    v52 = sub_190D57C90();
    [v1 setMenu_];

    (*(v40 + 8))(v60, v61);
    return (*(v43 + 8))(v42, v44);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_190AD1994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection23ShareLocationMenuButton_viewModel);
    v6 = result;
    sub_190D50920();

    v7 = *(*(v5 + 24) + OBJC_IVAR____TtCOV7ChatKit18DetailsInfoTabView15LocationSection14ActionHandlers_shareLocation);
    sub_190D50920();
    v7(a3);
  }

  return result;
}

id sub_190AD1A70()
{
  v2.receiver = v0;
  v2.super_class = _s23ShareLocationMenuButtonCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_190AD1B4C()
{
  result = qword_1EAD5CDC0;
  if (!qword_1EAD5CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CDC0);
  }

  return result;
}

uint64_t sub_190AD1BA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_190AD1BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_190AD1C60()
{
  type metadata accessor for DetailsViewCommonContextMenu.MenuItem();
  sub_19081E484();
  sub_190D52690();
  sub_190D52690();
  return sub_190D55F40();
}

uint64_t sub_190AD1CF4(uint64_t a1)
{
  v2 = a1 - 8;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_19022FD14(v1 + *(v2 + 32), &v10[-v6], &qword_1EAD53110);
  sub_190AD40E8(v1, &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_190AD3D00(&v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  return sub_190D56020();
}

uint64_t sub_190AD1EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CDC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v30 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CDD0);
  MEMORY[0x1EEE9AC00](v31);
  v8 = v30 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CDD8);
  v9 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = v30 - v11;
  v30[3] = v30;
  LOBYTE(v11) = *(v2 + 40);
  v35 = v2;
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v10);
    v30[1] = v27;
    v28 = v2;
    v44 = *v2;
    v43 = *(v2 + 16);
    v42 = *(v2 + 32);
    v13 = swift_allocObject();
    v30[2] = v3;
    v14 = *(v2 + 16);
    v13[1] = *v2;
    v13[2] = v14;
    *(v13 + 41) = *(v2 + 25);
    sub_19022FD14(&v44, &v36, &qword_1EAD5CE18);
    sub_190869370(&v43, &v36);
    sub_19022FD14(&v42, &v36, &qword_1EAD5CE20);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CDE0);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CDE8);
    v17 = sub_190233640(&qword_1EAD5CDF0, &qword_1EAD5CDE0);
    v18 = sub_190AD39F0();
    v19 = sub_190AD3AA0();
    v28 = v18;
    v29 = v19;
    v27[0] = &type metadata for DetailsViewCommonContextMenu.CKQLPreviewControllerRepresentable;
    v27[1] = v17;
    sub_190D55740();

    v20 = v33;
    (*(v9 + 16))(v8, v12, v33);
    swift_storeEnumTagMultiPayload();
    v36 = v15;
    v37 = v16;
    v38 = &type metadata for DetailsViewCommonContextMenu.CKQLPreviewControllerRepresentable;
    v39 = v17;
    v40 = v18;
    v41 = v19;
    swift_getOpaqueTypeConformance2();
    v36 = v15;
    v37 = v16;
    v38 = v17;
    v39 = v18;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v9 + 8))(v12, v20);
  }

  else
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CDE0);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CDE8);
    v24 = sub_190233640(&qword_1EAD5CDF0, &qword_1EAD5CDE0);
    v25 = sub_190AD39F0();
    sub_190D55750();
    (*(v4 + 16))(v8, v6, v3);
    swift_storeEnumTagMultiPayload();
    v26 = sub_190AD3AA0();
    v36 = v22;
    v37 = v23;
    v38 = &type metadata for DetailsViewCommonContextMenu.CKQLPreviewControllerRepresentable;
    v39 = v24;
    v40 = v25;
    v41 = v26;
    swift_getOpaqueTypeConformance2();
    v36 = v22;
    v37 = v23;
    v38 = v24;
    v39 = v25;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v4 + 8))(v6, v3);
  }
}

void sub_190AD2474(void *a1)
{
  v2 = type metadata accessor for DetailsViewCoordinator.PresentationAction();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1[4])
  {
    *v4 = *a1;
    swift_storeEnumTagMultiPayload();
    sub_190D52690();
    sub_190BE66F8(v4);
    sub_190A413AC(v4);
  }
}

uint64_t sub_190AD2520@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v43 = a3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CE28);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v50 = &v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CE30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CE38);
  v13 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v51 = a1;
  v52 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CE40);
  sub_190233640(&qword_1EAD5CE48, &qword_1EAD5CE40);
  v46 = v17;
  sub_190D562E0();
  if ((a2 & 1) != 0 || !*(*a1 + 16))
  {
    v22 = (*(v48 + 56))(v12, 1, 1, v45);
  }

  else
  {
    v18 = sub_19083B854(*a1 + 32, v53);
    MEMORY[0x1EEE9AC00](v18);
    *(&v39 - 2) = a1;
    *(&v39 - 1) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CE50);
    sub_190AD3B58();
    v19 = v50;
    sub_190D562E0();
    v20 = v48;
    v21 = v45;
    (*(v48 + 32))(v12, v19, v45);
    (*(v20 + 56))(v12, 0, 1, v21);
    v22 = __swift_destroy_boxed_opaque_existential_0(v53);
  }

  v41 = v12;
  MEMORY[0x1EEE9AC00](v22);
  *(&v39 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CE50);
  sub_190AD3B58();
  v23 = v50;
  sub_190D562E0();
  v24 = *(v13 + 16);
  v25 = v47;
  v26 = v44;
  v24(v47, v46, v44);
  v27 = v42;
  sub_19022FD14(v12, v42, &qword_1EAD5CE30);
  v28 = v48;
  v29 = v26;
  v40 = *(v48 + 16);
  v30 = v45;
  v40(v49, v23, v45);
  v31 = v27;
  v32 = v43;
  v24(v43, v25, v29);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CE68);
  sub_19022FD14(v31, &v32[*(v33 + 48)], &qword_1EAD5CE30);
  v34 = v49;
  v40(&v32[*(v33 + 64)], v49, v30);
  v35 = *(v28 + 8);
  v35(v50, v30);
  sub_19022EEA4(v41, &qword_1EAD5CE30);
  v36 = *(v13 + 8);
  v37 = v44;
  v36(v46, v44);
  v35(v34, v30);
  sub_19022EEA4(v31, &qword_1EAD5CE30);
  return (v36)(v47, v37);
}

id sub_190AD2ABC@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v81) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v10 = type metadata accessor for DetailsViewCommonContextMenu.MenuItem();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v78 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v68 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v68 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CE50);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v83 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v68 - v30;
  if (!a1[4])
  {
    v39 = *(v11 + 56);
    v39(&v68 - v30, 1, 1, v10, v31);
    (v39)(v28, 1, 1, v10);
LABEL_9:
    v66 = v83;
    sub_19022FD14(v32, v83, &qword_1EAD5CE50);
    sub_19022FD14(v28, v23, &qword_1EAD5CE50);
    sub_19022FD14(v66, a3, &qword_1EAD5CE50);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CE70);
    sub_19022FD14(v23, a3 + *(v67 + 48), &qword_1EAD5CE50);
    sub_19022EEA4(v28, &qword_1EAD5CE50);
    sub_19022EEA4(v32, &qword_1EAD5CE50);
    sub_19022EEA4(v23, &qword_1EAD5CE50);
    return sub_19022EEA4(v66, &qword_1EAD5CE50);
  }

  v73 = a1[4];
  v82 = &v68 - v30;
  v70 = v28;
  v77 = v11;
  v85 = *a1;
  v33 = sub_190D539A0();
  v34 = *(v33 - 8);
  v75 = *(v34 + 56);
  v76 = v33;
  v74 = v34 + 56;
  v75(v9, 1, 1);
  v35 = v9;
  v71 = v23;
  v72 = a3;
  v69 = v15;
  if (v81)
  {
    v37 = a1[2];
    v36 = a1[3];
    sub_19022FD14(&v85, v84, &qword_1EAD5CE18);
    sub_190D52690();
    v38 = v10;
  }

  else
  {
    sub_190D52690();
    result = CKFrameworkBundle();
    if (!result)
    {
      goto LABEL_11;
    }

    v41 = result;
    v38 = v10;
    v42 = sub_190D56ED0();
    v43 = sub_190D56ED0();
    v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

    v37 = sub_190D56F10();
    v36 = v45;
  }

  *v18 = v85;
  v18[1] = sub_190B84270;
  v18[2] = 0;
  sub_190AD3C90(v35, v18 + v38[6]);
  v46 = (v18 + v38[7]);
  *v46 = v37;
  v46[1] = v36;
  v47 = (v18 + v38[8]);
  *v47 = 0xD000000000000014;
  v47[1] = 0x8000000190E71C50;
  v48 = v79;
  sub_190AD3D00(v18, v79);
  v49 = v48;
  v50 = v82;
  sub_190AD3D00(v49, v82);
  v81 = *(v77 + 56);
  v81(v50, 0, 1, v38);
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = swift_allocObject();
  *(v52 + 16) = v51;
  *(v52 + 24) = 0;
  v53 = *a1;
  v54 = v80;
  (v75)(v80, 1, 1, v76);
  sub_190D52690();
  result = CKFrameworkBundle();
  if (result)
  {
    v55 = result;
    v56 = sub_190D56ED0();
    v57 = sub_190D56ED0();
    v58 = [v55 localizedStringForKey:v56 value:0 table:v57];

    v59 = sub_190D56F10();
    v61 = v60;

    v62 = v78;
    *v78 = v53;
    *(v62 + 8) = sub_190AD3D6C;
    *(v62 + 16) = v52;
    sub_190AD3C90(v54, v62 + v38[6]);
    v63 = (v62 + v38[7]);
    *v63 = v59;
    v63[1] = v61;
    v64 = (v62 + v38[8]);
    *v64 = 0xD000000000000013;
    v64[1] = 0x8000000190E622D0;
    v65 = v69;
    sub_190AD3D00(v62, v69);
    v28 = v70;
    sub_190AD3D00(v65, v70);
    v81(v28, 0, 1, v38);
    v23 = v71;
    a3 = v72;
    v32 = v82;
    goto LABEL_9;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_190AD31C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for DetailsViewCommonContextMenu.MenuItem();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  if (*(a1 + 32))
  {
    v32 = v13;
    v33 = a3;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C30);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_190DD1D90;
    sub_19083B854(a2, v18 + 32);
    v19 = sub_190D539A0();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    result = CKFrameworkBundle();
    if (result)
    {
      v21 = result;
      v22 = sub_190D56ED0();
      v23 = sub_190D56ED0();
      v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

      v25 = sub_190D56F10();
      v27 = v26;

      *v11 = v18;
      v11[1] = sub_190AD3D64;
      v11[2] = v17;
      sub_190AD3C90(v8, v11 + v9[6]);
      v28 = (v11 + v9[7]);
      *v28 = v25;
      v28[1] = v27;
      v29 = (v11 + v9[8]);
      *v29 = 0x6567617373656DLL;
      v29[1] = 0xE700000000000000;
      sub_190AD3D00(v11, v16);
      v30 = v33;
      sub_190AD3D00(v16, v33);
      return (*(v32 + 56))(v30, 0, 1, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v31 = *(v13 + 56);

    return v31(a3, 1, 1, v9, v14);
  }

  return result;
}

id sub_190AD3524@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for DetailsViewCommonContextMenu.MenuItem();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  if (a1[4])
  {
    v30 = v11;
    v31 = a2;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = *a1;
    sub_190D52690();
    sub_190D53970();
    v17 = sub_190D539A0();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    result = CKFrameworkBundle();
    if (result)
    {
      v19 = result;
      v20 = sub_190D56ED0();
      v21 = sub_190D56ED0();
      v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

      v23 = sub_190D56F10();
      v25 = v24;

      *v9 = v16;
      v9[1] = sub_190AD3C88;
      v9[2] = v15;
      sub_190AD3C90(v6, v9 + v7[6]);
      v26 = (v9 + v7[7]);
      *v26 = v23;
      v26[1] = v25;
      v27 = (v9 + v7[8]);
      *v27 = 0x6873617274;
      v27[1] = 0xE500000000000000;
      sub_190AD3D00(v9, v14);
      v28 = v31;
      sub_190AD3D00(v14, v31);
      return (*(v30 + 56))(v28, 0, 1, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v29 = *(v11 + 56);

    return v29(a2, 1, 1, v7, v12);
  }

  return result;
}

id sub_190AD384C()
{
  if (v0[2])
  {
    return sub_190B7400C(*v0, v0[1]);
  }

  v2 = objc_allocWithZone(MEMORY[0x1E69DD258]);

  return [v2 init];
}

uint64_t sub_190AD38AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AD4094();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_190AD3910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_190AD4094();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_190AD3974()
{
  sub_190AD4094();
  sub_190D55130();
  __break(1u);
}

unint64_t sub_190AD39F0()
{
  result = qword_1EAD5CDF8;
  if (!qword_1EAD5CDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CDE8);
    sub_190233640(&qword_1EAD5CE00, &qword_1EAD5CE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CDF8);
  }

  return result;
}

unint64_t sub_190AD3AA0()
{
  result = qword_1EAD5CE10;
  if (!qword_1EAD5CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CE10);
  }

  return result;
}

uint64_t sub_190AD3AF4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[4];
  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  v6 = v5;

  return sub_190D52690();
}

unint64_t sub_190AD3B58()
{
  result = qword_1EAD5CE58;
  if (!qword_1EAD5CE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CE50);
    sub_190AD3BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CE58);
  }

  return result;
}

unint64_t sub_190AD3BDC()
{
  result = qword_1EAD5CE60;
  if (!qword_1EAD5CE60)
  {
    type metadata accessor for DetailsViewCommonContextMenu.MenuItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CE60);
  }

  return result;
}

uint64_t type metadata accessor for DetailsViewCommonContextMenu.MenuItem()
{
  result = qword_1EAD5CE78;
  if (!qword_1EAD5CE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AD3C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190AD3D00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsViewCommonContextMenu.MenuItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_190AD3DAC()
{
  sub_190AD3E58();
  if (v0 <= 0x3F)
  {
    sub_1908E1324();
    if (v1 <= 0x3F)
    {
      sub_190AD3EBC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190AD3E58()
{
  if (!qword_1EAD5CE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5E390);
    v0 = sub_190D57200();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5CE88);
    }
  }
}

void sub_190AD3EBC()
{
  if (!qword_1EAD5CE90)
  {
    sub_190D539A0();
    v0 = sub_190D58050();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5CE90);
    }
  }
}

unint64_t sub_190AD3F14()
{
  result = qword_1EAD5CE98;
  if (!qword_1EAD5CE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CDE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5CDE8);
    sub_190233640(&qword_1EAD5CDF0, &qword_1EAD5CDE0);
    sub_190AD39F0();
    sub_190AD3AA0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CE98);
  }

  return result;
}

unint64_t sub_190AD4094()
{
  result = qword_1EAD5CEA8;
  if (!qword_1EAD5CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5CEA8);
  }

  return result;
}

uint64_t sub_190AD40E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsViewCommonContextMenu.MenuItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190AD414C()
{
  v1 = *(type metadata accessor for DetailsViewCommonContextMenu.MenuItem() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return (*(v2 + 8))(*v2);
}

id sub_190AD41C0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for TTRSheetViewUIHostingController();
  return objc_msgSendSuper2(&v2, sel_viewDidLoad);
}

uint64_t sub_190AD4204(uint64_t a1)
{
  v3 = type metadata accessor for TTRSheetView();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_190A2C12C(a1, v5);
  v7 = sub_190D54B60();
  sub_190AD4530(a1);
  return v7;
}

uint64_t sub_190AD42A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSheetView();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v2);
  sub_190A2C12C(a2, v6);
  v8 = sub_190D54B50();
  sub_190AD4530(a2);
  return v8;
}

id sub_190AD434C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for TTRSheetViewUIHostingController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_190AD43E0(void *a1)
{
  v2 = type metadata accessor for TTRSheetView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  sub_190A2B948(a1, &v12 - v6);
  v8 = objc_allocWithZone(type metadata accessor for TTRSheetViewUIHostingController());
  sub_190A2C12C(v7, v4);
  v9 = sub_190D54B60();
  sub_190AD4530(v7);
  v10 = v9;
  [v10 setModalPresentationStyle_];
  [v10 setModalTransitionStyle_];

  return v10;
}

uint64_t type metadata accessor for TTRSheetViewUIHostingController()
{
  result = qword_1EAD5CEB0;
  if (!qword_1EAD5CEB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190AD4530(uint64_t a1)
{
  v2 = type metadata accessor for TTRSheetView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id TTRSheetViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRSheetViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSheetViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_190AD4790(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_190AD483C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_190D51570();
  v7 = sub_190D56ED0();

  if (a4)
  {
    v8 = sub_190D56D60();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_190D515F0();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_190D51420();

    swift_willThrow();
    v15 = sub_190D515F0();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

uint64_t sub_190AD4B44()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190AD4BA4(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit16TapbackAssetView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

void sub_190AD4C3C(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 superlayer];
    v5 = [v1 layer];
    v6 = v5;
    if (v4)
    {
      if (!v5)
      {

        goto LABEL_10;
      }

      sub_1902188FC(0, &qword_1EAD46528);
      v7 = sub_190D57D90();

      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v5)
    {

LABEL_10:
      goto LABEL_11;
    }

    [v3 removeFromSuperlayer];
    goto LABEL_10;
  }

LABEL_11:
  v8 = *&v2[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer];
  if (v8)
  {
    v9 = v8;
    [v9 setGeometryFlipped_];
    v10 = [v2 layer];
    [v10 addSublayer_];
  }
}

uint64_t sub_190AD4DE8()
{
  v1 = OBJC_IVAR____TtC7ChatKit16TapbackAssetView_isSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_190AD4E80(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit16TapbackAssetView_isSelected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id TapbackAssetView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TapbackAssetView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_attributionScaleFactor] = 0x3FF0000000000000;
  v9 = &v4[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_platterEdgeInsets];
  v10 = *(MEMORY[0x1E69DDCE0] + 16);
  *v9 = *MEMORY[0x1E69DDCE0];
  v9[1] = v10;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer] = 0;
  v4[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_isSelected] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_stateController] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for TapbackAssetView();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id TapbackAssetView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TapbackAssetView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_attributionScaleFactor] = 0x3FF0000000000000;
  v3 = &v1[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_platterEdgeInsets];
  v4 = *(MEMORY[0x1E69DDCE0] + 16);
  *v3 = *MEMORY[0x1E69DDCE0];
  v3[1] = v4;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer] = 0;
  v1[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_isSelected] = 0;
  *&v1[OBJC_IVAR____TtC7ChatKit16TapbackAssetView_stateController] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for TapbackAssetView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id TapbackAssetView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackAssetView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TapbackAssetView.configure(for:isSelected:)(void *a1)
{
  [a1 associatedMessageType];

  return _s7ChatKit16TapbackAssetViewC04loadD024forAssociatedMessageTypeySo012IMAssociatediJ0V_tF_0();
}

Swift::Void __swiftcall TapbackAssetView.performViewControllerAppearingAnimation()()
{
  if (*(v0 + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer))
  {
    v1 = *(v0 + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_stateController);
    if (v1)
    {
      [v1 setInitialStatesOfLayer_];
    }
  }
}

Swift::Void __swiftcall TapbackAssetView.performViewControllerDismissingAnimation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_stateController);
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      v5 = sub_190D56ED0();
      v6 = [v4 stateWithName_];

      if (v6)
      {
        [v3 setState:v6 ofLayer:v4];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t _s7ChatKit16TapbackAssetViewC04loadD024forAssociatedMessageTypeySo012IMAssociatediJ0V_tF_0()
{
  v1 = v0;
  v2 = sub_190D515F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  type metadata accessor for TapbackAssetView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_190D56ED0();
  v15 = sub_190D56ED0();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (!v16)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_190D515B0();

  (*(v3 + 32))(v11, v8, v2);
  sub_1902188FC(0, &unk_1EAD44E50);
  (*(v3 + 16))(v5, v11, v2);
  v17 = sub_190D56F10();
  v19 = sub_190AD483C(v5, v17, v18, 0);
  v20 = [v19 rootLayer];
  if (!v20)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21 = v20;
  v43 = v3;
  v22 = objc_allocWithZone(MEMORY[0x1E69794D0]);
  v23 = v21;
  v24 = [v22 initWithLayer_];
  v25 = *(v1 + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_stateController);
  *(v1 + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_stateController) = v24;

  v26 = *(v1 + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer);
  *(v1 + OBJC_IVAR____TtC7ChatKit16TapbackAssetView_tapbackAssetLayer) = v21;
  v27 = v23;
  sub_190AD4C3C(v26);

  v28 = objc_opt_self();
  v29 = sub_190D56ED0();
  v30 = [v28 ckImageNamed_];

  if (!v30)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v40 = v13;
  v41 = v11;
  v42 = v2;
  v31 = [v30 CGImage];
  v32 = sub_190D56ED0();
  v33 = [v19 publishedObjectWithName_];

  if (!v33)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_190D58140();
  swift_unknownObjectRelease();
  sub_190824530(v45, v46);
  sub_1902188FC(0, &qword_1EAD46528);
  swift_dynamicCast();
  v34 = v44;
  v35 = v31;
  [v34 setContents_];
  v36 = sub_190D56ED0();
  v37 = [v19 publishedObjectWithName_];

  if (v37)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
    sub_190824530(v45, v46);
    swift_dynamicCast();
    v38 = v44;
    [v44 setContents_];

    return (*(v43 + 8))(v41, v42);
  }

LABEL_11:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_190AD5C44(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_190AD5CA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_190AD5D28@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v24 = sub_190D52490();
  MEMORY[0x1EEE9AC00](v24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF08);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v30 = *a1;
  v28 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF10);
  sub_190D55FD0();
  v28 = a1[1];
  v29 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF18);
  sub_190D55FD0();
  sub_190D52480();
  sub_190AD6168();
  sub_190D562C0();
  v28 = v30;
  sub_190D55FD0();
  if (v27)
  {
    sub_190D524A0();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_190D524B0();
  (*(*(v16 - 8) + 56))(v7, v15, 1, v16);
  v17 = *(v9 + 16);
  v17(v11, v14, v8);
  v18 = v25;
  sub_190AD61C0(v7, v25);
  v19 = v26;
  v17(v26, v11, v8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF20);
  sub_190AD61C0(v18, &v19[*(v20 + 48)]);
  sub_190AD6230(v7);
  v21 = *(v9 + 8);
  v21(v14, v8);
  sub_190AD6230(v18);
  return (v21)(v11, v8);
}

uint64_t sub_190AD60A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CEF0);
  sub_190233640(&qword_1EAD5CEF8, &qword_1EAD5CEF0);
  return sub_190D554D0();
}

unint64_t sub_190AD6168()
{
  result = qword_1EAD620D0;
  if (!qword_1EAD620D0)
  {
    sub_190D52490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD620D0);
  }

  return result;
}

uint64_t sub_190AD61C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190AD6230(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5CF00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_190AD6298(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AF3B90](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

Swift::Void __swiftcall DetailsViewCoordinator.presentPopoverForUnknownContact(from:activeHandle:contact:)(UIView_optional *from, Swift::String activeHandle, CNContact contact)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_190D56ED0();
      [v7 detailsCoordinatorRequestedContactsPopover:v9 sourceView:from activeHandle:v8 contact:contact.super.isa];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_190AD64CC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation);
  v5 = sub_190D528D0();
  v7 = v6;
  sub_190D52690();
  sub_190A0BE18(v5, v7, a2);
}

uint64_t DetailsViewCoordinator.isScreenSharingAvailable(for:)(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = sub_190D572A0();
  v2[14] = sub_190D57290();
  v4 = sub_190D57240();
  v2[15] = v4;
  v2[16] = v3;

  return MEMORY[0x1EEE6DFA0](sub_190AD6614, v4, v3);
}

uint64_t sub_190AD6614()
{
  v1 = [*(*(v0 + 96) + OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_conversation) recipients];
  v2 = sub_190D57180();

  v13 = MEMORY[0x1E69E7CC0];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_19021834C(v4, v0 + 16);
      sub_190824530((v0 + 16), (v0 + 48));
      sub_19084E158();
      if ((swift_dynamicCast() & 1) != 0 && *(v0 + 80))
      {
        MEMORY[0x193AF29E0]();
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_190D571A0();
        }

        sub_190D571E0();
        v5 = v13;
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 88);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  v8 = sub_190AD6298(sub_190AD6D2C, v7, v5);
  *(v0 + 136) = v8;

  if (v8)
  {
    *(v0 + 144) = sub_190D57290();
    v10 = sub_190D57240();
    *(v0 + 152) = v10;
    *(v0 + 160) = v9;

    return MEMORY[0x1EEE6DFA0](sub_190AD687C, v10, v9);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11(0);
  }
}