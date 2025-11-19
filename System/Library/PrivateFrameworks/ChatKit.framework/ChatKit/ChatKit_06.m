id sub_190829DF0(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = objc_allocWithZone(type metadata accessor for DynamicClockView());
  return sub_190911290(v4, v5);
}

void sub_190829E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = sub_190D51840();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53BC8);
  MEMORY[0x193AF1A80](v14);
  v15 = OBJC_IVAR____TtC7ChatKit16DynamicClockView_currentDate;
  swift_beginAccess();
  (*(v8 + 24))(a1 + v15, v13, v7);
  swift_endAccess();
  (*(v8 + 16))(v11, a1 + v15, v7);
  sub_190910C48(v11, 0);
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  v17 = v5 + *(a3 + 20);
  v18 = *(v17 + 8);
  v19 = *v17;
  v20 = v18;
  sub_190912A50(v19, v20);
}

uint64_t sub_19082A01C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DynamicClockRepresentable.Coordinator();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_19082A084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19082A1FC(&qword_1EAD53BF0);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_19082A104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19082A1FC(&qword_1EAD53BF0);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19082A184()
{
  sub_19082A1FC(&qword_1EAD53BF0);
  sub_190D54C10();
  __break(1u);
}

uint64_t sub_19082A1FC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DynamicClockRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_19082A2FC()
{
  if (*(v0 + OBJC_IVAR___CKIntroductionsButtonsCell_shouldShowIntroductionsLabel) == 1)
  {
    v1 = [objc_opt_self() sharedBehaviors];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 transcriptEmphasizedFontAttributes];

      if (v3)
      {
        type metadata accessor for Key(0);
        sub_19082B370();
        v4 = sub_190D56D90();
      }

      else
      {
        v4 = 0;
      }

      v6 = [v0 label];
      if (v6)
      {
        v7 = v6;
        v8 = CKFrameworkBundle();
        if (v8)
        {
          v9 = v8;
          v10 = sub_190D56ED0();
          v11 = sub_190D56ED0();
          v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

          if (v12)
          {
            if (v4)
            {
LABEL_12:
              type metadata accessor for Key(0);
              sub_19082B370();
              sub_190D52690();
              v13 = sub_190D56D60();

              goto LABEL_15;
            }
          }

          else
          {
            sub_190D56F10();
            v12 = sub_190D56ED0();

            if (v4)
            {
              goto LABEL_12;
            }
          }

          v13 = 0;
LABEL_15:
          v14 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString:v12 attributes:v13];

          [v7 setAttributedText_];
          v15 = [v0 label];
          if (v15)
          {

            [v15 setNumberOfLines_];
            goto LABEL_17;
          }

LABEL_24:
          __break(1u);
          return;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = [v0 label];
  if (!v5)
  {
    goto LABEL_21;
  }

  v15 = v5;
  [v5 setAttributedText_];
LABEL_17:
}

void __swiftcall CKIntroductionsButtonsCell.init(frame:)(CKIntroductionsButtonsCell *__return_ptr retstr, __C::CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id CKIntroductionsButtonsCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR___CKIntroductionsButtonsCell_buttonsLeadingConstraint] = 0;
  *&v4[OBJC_IVAR___CKIntroductionsButtonsCell_buttonsTrailingConstraint] = 0;
  v10 = type metadata accessor for FooterButtonsContainer();
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
  *&v11[v12] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  *&v11[OBJC_IVAR___CKFooterButtonsContainer_buttons] = MEMORY[0x1E69E7CC0];
  v19.receiver = v11;
  v19.super_class = v10;
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190CD61C8(0, 0);
  *&v5[OBJC_IVAR___CKIntroductionsButtonsCell_buttonsContainer] = v13;
  v5[OBJC_IVAR___CKIntroductionsButtonsCell_shouldShowIntroductionsLabel] = 0;
  v18.receiver = v5;
  v18.super_class = CKIntroductionsButtonsCell;
  v14 = v13;
  v15 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 addSubview_];

  return v15;
}

Swift::Void __swiftcall CKIntroductionsButtonsCell.layoutSubviewsForAlignmentContents()()
{
  v44.super_class = CKIntroductionsButtonsCell;
  objc_msgSendSuper2(&v44, sel_layoutSubviewsForAlignmentContents);
  v1 = [v0 safeAreaLayoutGuide];
  [v1 layoutFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  if ([v0 shouldShowIntroductionsLabel])
  {
    v14 = [v0 label];
    if (!v14)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v15 = v14;
    v45.origin.x = v3;
    v45.origin.y = v5;
    v45.size.width = v7;
    v45.size.height = v9;
    [v14 sizeThatFits_];
    v10 = v16;
    v11 = v17;

    v12 = 8.0;
    v13 = CGRectPxCenteredInRect(v3, 8.0, v10, v11, v3, v5, v7);
  }

  v18 = [v0 label];
  if (!v18)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 setFrame_];

  v20 = [v0 buttonsContainer];
  v46.origin.x = v3;
  v46.origin.y = v5;
  v46.size.width = v7;
  v46.size.height = v9;
  [v20 sizeThatFits_];
  v43 = v21;

  [v0 marginInsets];
  v23 = v22;
  v47.origin.x = v3;
  v47.origin.y = v5;
  v47.size.width = v7;
  v47.size.height = v9;
  Width = CGRectGetWidth(v47);
  v25 = [v0 shouldShowIntroductionsLabel];
  v26 = [v0 label];
  v42 = v7;
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = v26;
  v28 = v5;
  if (v25)
  {
    v29 = 16.0;
  }

  else
  {
    v29 = 0.0;
  }

  if (Width - (v23 + v23) <= 412.0)
  {
    v30 = Width - (v23 + v23);
  }

  else
  {
    v30 = 412.0;
  }

  [v26 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v48.origin.x = v32;
  v48.origin.y = v34;
  v48.size.width = v36;
  v48.size.height = v38;
  v39 = v29 + CGRectGetMaxY(v48);
  v40 = CGRectPxCenteredInRect(v3, v39, v30, v43, v3, v28, v42);
  v41 = [v0 buttonsContainer];
  [v41 setFrame_];
}

CGSize __swiftcall CKIntroductionsButtonsCell.sizeThatFits(_:)(CGSize a1)
{
  v2 = v1;
  width = a1.width;
  v4 = [objc_opt_self() sharedBehaviors];
  if (!v4)
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = v4;
  v8 = [v4 transcriptEmphasizedFontAttributes];

  if (v8)
  {
    type metadata accessor for Key(0);
    sub_19082B370();
    v9 = sub_190D56D90();
  }

  else
  {
    v9 = 0;
  }

  v10 = width * 0.666666667;
  if ([v2 shouldShowIntroductionsLabel])
  {
    v11 = [v2 label];
    if (v11)
    {
      v12 = v11;
      v13 = CKFrameworkBundle();
      if (v13)
      {
        v14 = v13;
        v15 = sub_190D56ED0();
        v16 = sub_190D56ED0();
        v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

        if (v17)
        {
          if (v9)
          {
LABEL_10:
            type metadata accessor for Key(0);
            sub_19082B370();
            sub_190D52690();
            v18 = sub_190D56D60();

            goto LABEL_14;
          }
        }

        else
        {
          sub_190D56F10();
          v17 = sub_190D56ED0();

          if (v9)
          {
            goto LABEL_10;
          }
        }

        v18 = 0;
LABEL_14:
        v20 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString:v17 attributes:v18];

        [v12 setAttributedText_];
        v21 = [v2 label];
        if (v21)
        {
          v22 = v21;
          [v21 setNumberOfLines_];

          v23 = [v2 label];
          if (v23)
          {
            v24 = v23;

            [v24 sizeThatFits_];
            v19 = v25;

            goto LABEL_17;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = 0.0;
LABEL_17:
  v26 = type metadata accessor for FooterButtonAction();
  v27 = objc_allocWithZone(v26);
  swift_getObjectType();
  sub_190BDE144(0);
  v28 = sub_190D57DC0();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v29 = OBJC_IVAR___CKFooterButtonAction_type;
  swift_beginAccess();
  *&v28[v29] = 0;
  v30 = objc_allocWithZone(v26);
  swift_getObjectType();
  sub_190BDE144(0);
  v31 = sub_190D57DC0();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v32 = OBJC_IVAR___CKFooterButtonAction_type;
  swift_beginAccess();
  *&v31[v32] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD5CE0;
  *(inited + 32) = v28;
  *(inited + 40) = v31;
  v34 = type metadata accessor for FooterButtonsContainer();
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR___CKFooterButtonsContainer_stackView;
  v37 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  v38 = v28;
  v39 = v31;
  *&v35[v36] = [v37 init];
  *&v35[OBJC_IVAR___CKFooterButtonsContainer_buttons] = MEMORY[0x1E69E7CC0];
  v46.receiver = v35;
  v46.super_class = v34;
  v40 = objc_msgSendSuper2(&v46, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_190CD61C8(inited, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  [v40 &selRef_simulatedChats];
  v42 = v41;
  v43 = [v2 shouldShowIntroductionsLabel];

  v44 = 32.0;
  if (!v43)
  {
    v44 = 0.0;
  }

  v6 = v19 + v42 + v44;
  v5 = width;
LABEL_25:
  result.height = v6;
  result.width = v5;
  return result;
}

void CKIntroductionsButtonsCell.init(coder:)()
{
  *(v0 + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsLeadingConstraint) = 0;
  *(v0 + OBJC_IVAR___CKIntroductionsButtonsCell_buttonsTrailingConstraint) = 0;
  sub_190D58510();
  __break(1u);
}

double CGRectPxCenteredInRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v10 = CKMainScreenScale_once_106;
  v11 = &__block_literal_global_300;
  if (v10 != -1)
  {
    dispatch_once(&CKMainScreenScale_once_106, &__block_literal_global_300);
  }

  v12 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_106 != 0.0)
  {
    v12 = *&CKMainScreenScale_sMainScreenScale_106;
  }

  return floor((a5 + (a7 - a3) * 0.5) * v12) / v12;
}

unint64_t sub_19082B370()
{
  result = qword_1EAD46570;
  if (!qword_1EAD46570)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46570);
  }

  return result;
}

unint64_t type metadata accessor for CKIntroductionsButtonsCell()
{
  result = qword_1EAD53C18;
  if (!qword_1EAD53C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD53C18);
  }

  return result;
}

uint64_t ConversationQuery.entities(for:)(uint64_t a1)
{
  v1[3] = a1;
  v1[4] = *(type metadata accessor for ConversationEntity() - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19082B4D4, 0, 0);
}

uint64_t sub_19082B4D4()
{
  v1 = v0[3];
  v2 = MEMORY[0x1E69E7CC0];
  v0[2] = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  v0[6] = v3;
  if (v3)
  {
    v0[7] = objc_opt_self();
    v4 = sub_190D572A0();
    v0[9] = 0;
    v0[10] = v2;
    v0[8] = v4;
    v5 = v0[3];
    v0[11] = *(v5 + 32);
    v0[12] = *(v5 + 40);
    sub_190D52690();
    v0[13] = sub_190D57290();
    v6 = sub_190D57240();
    v8 = v7;
    v9 = sub_19082B5FC;
  }

  else
  {
    v0[18] = v2;
    sub_190D572A0();
    v0[19] = sub_190D57290();
    v6 = sub_190D57240();
    v8 = v10;
    v9 = sub_19082BA74;
  }

  return MEMORY[0x1EEE6DFA0](v9, v6, v8);
}

uint64_t sub_19082B5FC()
{
  v1 = *(v0 + 56);

  *(v0 + 112) = [v1 sharedRegistry];

  return MEMORY[0x1EEE6DFA0](sub_19082B684, 0, 0);
}

uint64_t sub_19082B684()
{
  *(v0 + 120) = sub_190D56ED0();
  *(v0 + 128) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_19082B71C, v2, v1);
}

uint64_t sub_19082B71C()
{
  v1 = v0[15];
  v2 = v0[14];

  v0[17] = [v2 existingChatWithChatIdentifier_];

  return MEMORY[0x1EEE6DFA0](sub_19082B7B0, 0, 0);
}

uint64_t sub_19082B7B0()
{
  v23 = v0;
  v1 = v0[17];
  if (v1)
  {
    v2 = v0 + 2;

    MEMORY[0x193AF29E0](v1);
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    v3 = v0[17];
    sub_190D571E0();
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v4 = sub_190D53040();
    __swift_project_value_buffer(v4, qword_1EAD9E840);
    sub_190D52690();
    v5 = sub_190D53020();
    v6 = sub_190D576A0();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[12];
    if (v7)
    {
      v9 = v0[11];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136642819;
      v12 = sub_19021D9F8(v9, v8, &v22);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_19020E000, v5, v6, "No chat found for identifier %{sensitive}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x193AF7A40](v11, -1, -1);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }

    else
    {
    }

    v2 = v0 + 10;
  }

  v13 = *v2;
  v14 = v0[9] + 1;
  if (v14 == v0[6])
  {
    v0[18] = v13;
    sub_190D572A0();
    v0[19] = sub_190D57290();
    v15 = sub_190D57240();
    v17 = v16;
    v18 = sub_19082BA74;
  }

  else
  {
    v0[9] = v14;
    v0[10] = v13;
    v19 = v0[3] + 16 * v14;
    v0[11] = *(v19 + 32);
    v0[12] = *(v19 + 40);
    sub_190D52690();
    v0[13] = sub_190D57290();
    v15 = sub_190D57240();
    v17 = v20;
    v18 = sub_19082B5FC;
  }

  return MEMORY[0x1EEE6DFA0](v18, v15, v17);
}

uint64_t sub_19082BA74()
{
  v1 = v0[18];

  if (v1 >> 62)
  {
    v2 = sub_190D581C0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v4 = sub_190D58390();
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = 0;
    v8 = v0[18] + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193AF3B90](v7, v0[18]);
      }

      else
      {
        v9 = *(v8 + 8 * v7);
      }

      v10 = v9;
      ++v7;
      [objc_allocWithZone(CKConversation) initWithChat_];

      sub_190D58360();
      sub_190D583B0();
      sub_190D583C0();
      sub_190D58370();
    }

    while (v2 != v7);
    v11 = v21;
    v3 = MEMORY[0x1E69E7CC0];
    if (!(v21 >> 62))
    {
LABEL_11:
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_11;
    }
  }

  v12 = sub_190D581C0();
  if (v12)
  {
LABEL_12:
    v4 = sub_19082DBD4(0, v12 & ~(v12 >> 63), 0);
    if ((v12 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v14 = v0[4];
      v15 = v3;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x193AF3B90](v13, v11);
        }

        else
        {
          v16 = *(v11 + 8 * v13 + 32);
        }

        sub_190B9C530(v16, v0[5]);
        v18 = *(v3 + 16);
        v17 = *(v3 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_19082DBD4(v17 > 1, v18 + 1, 1);
        }

        v19 = v0[5];
        ++v13;
        *(v3 + 16) = v18 + 1;
        sub_19082FC20(v19, v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v18);
      }

      while (v12 != v13);

      goto LABEL_24;
    }

LABEL_29:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

LABEL_23:

  v15 = MEMORY[0x1E69E7CC0];
LABEL_24:
  v0[20] = v15;
  v4 = sub_19082BD20;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_19082BD20()
{
  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v1 = sub_190D53040();
  __swift_project_value_buffer(v1, qword_1EAD9E840);
  sub_190D52690();
  sub_190D52690();
  v2 = sub_190D53020();
  v3 = sub_190D576C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  if (v4)
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = *(v5 + 16);

    *(v7 + 12) = 2048;
    *(v7 + 14) = v6;

    _os_log_impl(&dword_19020E000, v2, v3, "Returning %ld ConversationEntities for %ld identifiers.", v7, 0x16u);
    MEMORY[0x193AF7A40](v7, -1, -1);
  }

  else
  {
  }

  v8 = v0[1];
  v9 = v0[20];

  return v8(v9);
}

uint64_t ConversationQuery.suggestedEntities()()
{
  *(v0 + 16) = *(type metadata accessor for ConversationEntity() - 8);
  *(v0 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19082BF6C, 0, 0);
}

uint64_t sub_19082BF6C()
{
  v0[4] = objc_opt_self();
  v0[5] = sub_190D572A0();
  v0[6] = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_19082C014, v2, v1);
}

uint64_t sub_19082C014()
{
  v1 = *(v0 + 32);

  *(v0 + 56) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_19082C09C, 0, 0);
}

uint64_t sub_19082C09C()
{
  *(v0 + 64) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_19082C128, v2, v1);
}

uint64_t sub_19082C128()
{
  v1 = *(v0 + 56);

  [v1 updateConversationListsAndSortIfEnabled];

  return MEMORY[0x1EEE6DFA0](sub_19082C1A0, 0, 0);
}

uint64_t sub_19082C1A0()
{
  v1 = [objc_opt_self() sharedFeatureFlags];
  v2 = [v1 isModernFilteringEnabled];

  if (v2)
  {
    *(v0 + 72) = sub_190D57290();
    v3 = sub_190D57240();
    v5 = v4;
    v6 = sub_19082C2B0;
  }

  else
  {
    *(v0 + 144) = CKMessageUnknownFilteringEnabled();
    *(v0 + 88) = sub_190D57290();
    v3 = sub_190D57240();
    v5 = v7;
    v6 = sub_19082C50C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_19082C2B0()
{
  v1 = *(v0 + 56);

  *(v0 + 80) = [v1 defaultPrimaryFilterModeConversations];

  return MEMORY[0x1EEE6DFA0](sub_19082C338, 0, 0);
}

uint64_t sub_19082C338()
{
  v1 = v0[10];
  sub_1902188FC(0, &qword_1EAD466B0);
  v2 = sub_190D57180();
  v0[13] = v2;

  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  v0[14] = __swift_project_value_buffer(v3, qword_1EAD9E840);
  sub_190D52690();
  v4 = sub_190D53020();
  v5 = sub_190D576C0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v2 >> 62)
    {
      v7 = sub_190D581C0();
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&dword_19020E000, v4, v5, "Received %ld CKConversations from the sorted CKConversationList.", v6, 0xCu);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  else
  {
  }

  v0[15] = v2;
  v0[16] = sub_190D57290();
  v9 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_19082C774, v9, v8);
}

uint64_t sub_19082C50C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);

  *(v0 + 96) = [v2 conversationsForFilterMode_];

  return MEMORY[0x1EEE6DFA0](sub_19082C5A0, 0, 0);
}

uint64_t sub_19082C5A0()
{
  v1 = v0[12];
  sub_1902188FC(0, &qword_1EAD466B0);
  v2 = sub_190D57180();
  v0[13] = v2;

  if (qword_1EAD521B0 != -1)
  {
    swift_once();
  }

  v3 = sub_190D53040();
  v0[14] = __swift_project_value_buffer(v3, qword_1EAD9E840);
  sub_190D52690();
  v4 = sub_190D53020();
  v5 = sub_190D576C0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (v2 >> 62)
    {
      v7 = sub_190D581C0();
    }

    else
    {
      v7 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&dword_19020E000, v4, v5, "Received %ld CKConversations from the sorted CKConversationList.", v6, 0xCu);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  else
  {
  }

  v0[15] = v2;
  v0[16] = sub_190D57290();
  v9 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_19082C774, v9, v8);
}

uint64_t sub_19082C774()
{
  v1 = v0[13];

  if (v1 >> 62)
  {
    v2 = sub_190D581C0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v2 = *((v0[15] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = MEMORY[0x1E69E7CC0];
  v3 = sub_19082DBD4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  v6 = 0;
  v7 = v0[2];
  v8 = v16;
  v9 = v0[15] & 0xC000000000000001;
  v10 = v0[13] + 32;
  do
  {
    if (v9)
    {
      v11 = MEMORY[0x193AF3B90](v6, v0[13]);
    }

    else
    {
      v11 = *(v10 + 8 * v6);
    }

    sub_190B9C530(v11, v0[3]);
    v13 = *(v16 + 16);
    v12 = *(v16 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_19082DBD4(v12 > 1, v13 + 1, 1);
    }

    v14 = v0[3];
    ++v6;
    *(v16 + 16) = v13 + 1;
    sub_19082FC20(v14, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13);
  }

  while (v2 != v6);

LABEL_14:
  v0[17] = v8;
  v3 = sub_19082C924;
  v4 = 0;
  v5 = 0;

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_19082C924()
{
  sub_190D52690();
  v1 = sub_190D53020();
  v2 = sub_190D576C0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[17];
  v5 = v0[7];
  if (v3)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v4 + 16);

    _os_log_impl(&dword_19020E000, v1, v2, "Returning %ld suggested ConversationEntities.", v6, 0xCu);
    MEMORY[0x193AF7A40](v6, -1, -1);
  }

  else
  {
  }

  v7 = v0[1];
  v8 = v0[17];

  return v7(v8);
}

uint64_t static ConversationQuery.conversationFromConversationEntity(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19082CAEC;

  return sub_19082FE14(a1);
}

uint64_t sub_19082CAEC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

id sub_19082CBE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v74 = &v71 - v7;
  v8 = sub_190D505E0();
  v71 = *(v8 - 8);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v73 = (&v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_190D505B0();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v77 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53DB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v79 = &v71 - v13;
  v14 = sub_190D50620();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_190D50650();
  v18 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19021834C(a1, v83);
  sub_1902188FC(0, &qword_1EAD44E80);
  swift_dynamicCast();
  v20 = v84;
  v21 = [v84 propertyType];
  v80 = a2;
  v78 = v18;
  if (!v21)
  {
    sub_190D56F10();
LABEL_8:

    sub_190D56F10();

    goto LABEL_9;
  }

  v22 = v21;
  v23 = sub_190D56F10();
  v25 = v24;

  v26 = sub_190D56F10();
  if (!v25)
  {
    v3 = v2;
    a2 = v80;
    goto LABEL_8;
  }

  if (v26 == v23 && v25 == v27)
  {

LABEL_12:

    result = [v20 rawAddress];
    if (!result)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v32 = result;
    v3 = v2;
    sub_190D56F10();

    (*(v15 + 104))(v17, *MEMORY[0x1E6959FE0], v14);
    v30 = v82;
    sub_190D50600();
    a2 = v80;
    goto LABEL_14;
  }

  v31 = sub_190D58760();

  if (v31)
  {
    goto LABEL_12;
  }

  if (sub_190D56F10() == v23 && v25 == v68)
  {

    v3 = v2;
    a2 = v80;
    goto LABEL_34;
  }

  v69 = sub_190D58760();

  v3 = v2;
  a2 = v80;
  if ((v69 & 1) == 0)
  {
LABEL_9:
    result = [v20 rawAddress];
    if (!result)
    {
      __break(1u);
      goto LABEL_37;
    }

    v29 = result;
    sub_190D56F10();

    v30 = v82;
    sub_190D50610();
LABEL_14:
    v33 = v81;
    if (qword_1EAD51B50 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
    v34 = sub_190D57160();
    v35 = [v20 cnContactWithKeys_];

    if (v35)
    {
      if (qword_1EAD521B0 != -1)
      {
        swift_once();
      }

      v36 = sub_190D53040();
      __swift_project_value_buffer(v36, qword_1EAD9E840);
      v37 = v20;
      v38 = sub_190D53020();
      v39 = sub_190D576C0();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138739971;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_19020E000, v38, v39, "Found matching CNContact for: '%{sensitive}@'", v40, 0xCu);
        sub_190830D58(v41);
        v33 = v81;
        MEMORY[0x193AF7A40](v41, -1, -1);
        v43 = v40;
        v30 = v82;
        MEMORY[0x193AF7A40](v43, -1, -1);
      }

      v45 = v78;
      v44 = v79;
      (*(v78 + 16))(v79, v30, v33);
      (*(v45 + 56))(v44, 0, 1, v33);
      sub_190A0C4A4(v35, v44, [v37 isMe], a2);
      goto LABEL_29;
    }

    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v46 = sub_190D53040();
    __swift_project_value_buffer(v46, qword_1EAD9E840);
    v47 = v20;
    v48 = sub_190D53020();
    v49 = sub_190D576C0();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138739971;
      *(v50 + 4) = v47;
      *v51 = v47;
      v52 = v47;
      _os_log_impl(&dword_19020E000, v48, v49, "Did not find matching CNContact for: '%{sensitive}@'. Creating an IntentPerson.", v50, 0xCu);
      sub_190830D58(v51);
      v53 = v51;
      v30 = v82;
      MEMORY[0x193AF7A40](v53, -1, -1);
      MEMORY[0x193AF7A40](v50, -1, -1);
    }

    result = [v47 defaultIMHandle];
    if (result)
    {
      v54 = result;
      v82 = v3;
      v55 = [result guid];

      v56 = sub_190D56F10();
      v57 = v76;
      v58 = v77;
      *v77 = v56;
      v58[1] = v59;
      (*(v75 + 104))(v58, *MEMORY[0x1E6959F78], v57);
      result = [v47 name];
      if (result)
      {
        v60 = result;

        v61 = sub_190D56F10();
        v63 = v62;

        v64 = v72;
        v65 = v73;
        *v73 = v61;
        v65[1] = v63;
        (*(v71 + 104))(v65, *MEMORY[0x1E6959FA0], v64);
        v45 = v78;
        v66 = v79;
        (*(v78 + 16))(v79, v30, v33);
        (*(v45 + 56))(v66, 0, 1, v33);
        [v47 isMe];
        v67 = sub_190D50B50();
        (*(*(v67 - 8) + 56))(v74, 1, 1, v67);
        sub_190D505C0();
LABEL_29:

        return (*(v45 + 8))(v30, v33);
      }

      goto LABEL_38;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_34:
  result = [v20 rawAddress];
  if (result)
  {
    v70 = result;
    sub_190D56F10();

    (*(v15 + 104))(v17, *MEMORY[0x1E6959FE0], v14);
    v30 = v82;
    sub_190D505F0();
    goto LABEL_14;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_19082D654(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190830DC8;

  return ConversationQuery.entities(for:)(a1);
}

uint64_t sub_19082D6E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_19082D778;

  return ConversationQuery.suggestedEntities()();
}

uint64_t sub_19082D778(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_19082D888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_19082D948;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_19082D948(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_19082DA48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_190830540();
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_19082DAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_190221DA4;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

char *sub_19082DBB4(char *a1, int64_t a2, char a3)
{
  result = sub_19082E2BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19082DBD4(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53E30, &unk_190DD6018, type metadata accessor for ConversationEntity);
  *v3 = result;
  return result;
}

size_t sub_19082DC18(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53D08, &unk_190DD5F48, MEMORY[0x1E695A048]);
  *v3 = result;
  return result;
}

size_t sub_19082DC5C(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53D68, &unk_190DD64B0, MEMORY[0x1E695A038]);
  *v3 = result;
  return result;
}

void *sub_19082DCA0(void *a1, int64_t a2, char a3)
{
  result = sub_19082E4FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19082DCC0(void *a1, int64_t a2, char a3)
{
  result = sub_19082E630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19082DCE0(char *a1, int64_t a2, char a3)
{
  result = sub_19082F0D0(a1, a2, a3, *v3, &qword_1EAD53C70);
  *v3 = result;
  return result;
}

size_t sub_19082DD10(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53CC8, &unk_190DD5F10, _s14descr1F03EACB9V10AttachmentVMa);
  *v3 = result;
  return result;
}

void *sub_19082DD54(void *a1, int64_t a2, char a3)
{
  result = sub_19082E764(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19082DD74(void *a1, int64_t a2, char a3)
{
  result = sub_19082E898(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19082DD94(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53D30, &unk_190DD5F70, MEMORY[0x1E6969770]);
  *v3 = result;
  return result;
}

void *sub_19082DDD8(void *a1, int64_t a2, char a3)
{
  result = sub_19082E9CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19082DDF8(char *a1, int64_t a2, char a3)
{
  result = sub_19082EB14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19082DE18(char *a1, int64_t a2, char a3)
{
  result = sub_19082EC34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19082DE38(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53D60, &unk_190DD5FA0, type metadata accessor for BannerButton);
  *v3 = result;
  return result;
}

size_t sub_19082DE7C(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD59B30, &unk_190DD6380, type metadata accessor for AvatarImageModel);
  *v3 = result;
  return result;
}

void *sub_19082DEC0(void *a1, int64_t a2, char a3)
{
  result = sub_19082EF4C(a1, a2, a3, *v3, &unk_1EAD53C30, &unk_190DE0870, &qword_1EAD5E390);
  *v3 = result;
  return result;
}

char *sub_19082DF00(char *a1, int64_t a2, char a3)
{
  result = sub_19082ED44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19082DF20(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53CC0, &unk_190DD5F08, type metadata accessor for MenuItem);
  *v3 = result;
  return result;
}

char *sub_19082DF64(char *a1, int64_t a2, char a3)
{
  result = sub_19082EE48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_19082DF84(void *a1, int64_t a2, char a3)
{
  result = sub_19082EF4C(a1, a2, a3, *v3, &qword_1EAD53CE8, &unk_190DD5F28, &qword_1EAD53CF0);
  *v3 = result;
  return result;
}

char *sub_19082DFC4(char *a1, int64_t a2, char a3)
{
  result = sub_19082F0D0(a1, a2, a3, *v3, &qword_1EAD53D00);
  *v3 = result;
  return result;
}

size_t sub_19082DFF4(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53C40, &unk_190DD6410, type metadata accessor for PollDetailsViewController.DetailsPollOption);
  *v3 = result;
  return result;
}

size_t sub_19082E038(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53D38, &unk_190DD5F78, type metadata accessor for NicknameUpdateListCellModel);
  *v3 = result;
  return result;
}

char *sub_19082E07C(char *a1, int64_t a2, char a3)
{
  result = sub_19082F208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19082E09C(char *a1, int64_t a2, char a3)
{
  result = sub_19082F30C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19082E0BC(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53D28, &unk_190DD5F68, _s9ViewModelVMa);
  *v3 = result;
  return result;
}

size_t sub_19082E100(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53D18, &unk_190DD63A0, _s17BackgroundSectionVMa);
  *v3 = result;
  return result;
}

char *sub_19082E144(char *a1, int64_t a2, char a3)
{
  result = sub_19082F980(a1, a2, a3, *v3, &qword_1EAD53D20);
  *v3 = result;
  return result;
}

size_t sub_19082E174(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53D10, &unk_190DD5F50, _s21BackgroundGalleryItemVMa);
  *v3 = result;
  return result;
}

char *sub_19082E1B8(char *a1, int64_t a2, char a3)
{
  result = sub_19082F450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19082E1D8(char *a1, int64_t a2, char a3)
{
  result = sub_19082F554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_19082E1F8(size_t a1, int64_t a2, char a3)
{
  result = sub_19082F698(a1, a2, a3, *v3, &qword_1EAD53CF8, &unk_190DD5F38, type metadata accessor for AttributedTapbackItem);
  *v3 = result;
  return result;
}

char *sub_19082E23C(char *a1, int64_t a2, char a3)
{
  result = sub_19082F980(a1, a2, a3, *v3, &qword_1EAD53C78);
  *v3 = result;
  return result;
}

char *sub_19082E26C(char *a1, int64_t a2, char a3)
{
  result = sub_19082F980(a1, a2, a3, *v3, &unk_1EAD53E40);
  *v3 = result;
  return result;
}

void *sub_19082E29C(void *a1, int64_t a2, char a3)
{
  result = sub_19082FA6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_19082E2BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19082E3C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19082E4FC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D88);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19082E630(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D98);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53DA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19082E764(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19082E898(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C48);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19082E9CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19082EB14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19082EC34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19082ED44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_19082EE48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BB70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_19082EF4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_19082F0D0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_19082F208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_19082F30C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19082F450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CA0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_19082F554(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_19082F698(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

char *sub_19082F874(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D40);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19082F980(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_19082FA6C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CD8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t (*sub_19082FBA0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AF3B90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_190830DC0;
  }

  __break(1u);
  return result;
}

uint64_t sub_19082FC20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_19082FC84(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AF3B90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_190830DC4;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_19082FD04(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AF3B90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_19082FD84;
  }

  __break(1u);
  return result;
}

void (*sub_19082FD8C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x193AF3B90](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_19082FE0C;
  }

  __break(1u);
  return result;
}

uint64_t sub_19082FE14(uint64_t a1)
{
  *(v1 + 32) = a1;
  type metadata accessor for ConversationEntity();
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19082FEA4, 0, 0);
}

uint64_t sub_19082FEA4()
{
  v20 = v0;
  sub_190D506F0();
  v1 = v0[3];
  v0[6] = v0[2];
  v0[7] = v1;
  if (v1)
  {
    v0[8] = objc_opt_self();
    v0[9] = sub_190D572A0();
    v0[10] = sub_190D57290();
    v3 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_19083010C, v3, v2);
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v4 = v0[4];
    v5 = v0[5];
    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9E840);
    sub_190830594(v4, v5);
    v7 = sub_190D53020();
    v8 = sub_190D576C0();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[5];
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = ConversationEntity.description.getter();
      v15 = v14;
      sub_1908305F8(v10);
      v16 = sub_19021D9F8(v13, v15, &v19);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_19020E000, v7, v8, "Could not find a CKConversation for ConversationEntity:%s due to missing GUID.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x193AF7A40](v12, -1, -1);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }

    else
    {

      sub_1908305F8(v10);
    }

    v17 = v0[1];

    return v17(0);
  }
}

uint64_t sub_19083010C()
{
  v1 = *(v0 + 64);

  *(v0 + 88) = [v1 sharedConversationList];

  return MEMORY[0x1EEE6DFA0](sub_190830194, 0, 0);
}

uint64_t sub_190830194()
{
  *(v0 + 96) = sub_190D56ED0();

  *(v0 + 104) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190830238, v2, v1);
}

uint64_t sub_190830238()
{
  v1 = v0[12];
  v2 = v0[11];

  v3 = [v2 conversationForExistingChatWithGUID_];

  v4 = v0[1];

  return v4(v3);
}

unint64_t sub_1908302DC()
{
  result = qword_1EAD45E38;
  if (!qword_1EAD45E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E38);
  }

  return result;
}

unint64_t sub_190830334()
{
  result = qword_1EAD45E30;
  if (!qword_1EAD45E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E30);
  }

  return result;
}

unint64_t sub_1908303C0()
{
  result = qword_1EAD45E40;
  if (!qword_1EAD45E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45E40);
  }

  return result;
}

uint64_t sub_190830448(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ConversationEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190830490()
{
  result = qword_1EAD53C20;
  if (!qword_1EAD53C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD53C28);
    sub_190830448(&qword_1EAD45D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53C20);
  }

  return result;
}

unint64_t sub_190830540()
{
  result = qword_1EAD53CD0;
  if (!qword_1EAD53CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53CD0);
  }

  return result;
}

uint64_t sub_190830594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1908305F8(uint64_t a1)
{
  v2 = type metadata accessor for ConversationEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190830654(uint64_t a1)
{
  v1[6] = a1;
  type metadata accessor for ConversationEntity();
  v1[7] = swift_task_alloc();
  v3 = sub_190D50680();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v1;
  v4[1] = sub_190830788;

  return sub_19082FE14(a1);
}

uint64_t sub_190830788(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_190830888, 0, 0);
}

uint64_t sub_190830888()
{
  v20 = v0;
  if (v0[12])
  {
    sub_190D572A0();
    v0[13] = sub_190D57290();
    v2 = sub_190D57240();

    return MEMORY[0x1EEE6DFA0](sub_190830AD8, v2, v1);
  }

  else
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v3 = v0[6];
    v4 = v0[7];
    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9E840);
    sub_190830594(v3, v4);
    v6 = sub_190D53020();
    v7 = sub_190D576A0();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[7];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = ConversationEntity.description.getter();
      v14 = v13;
      sub_1908305F8(v9);
      v15 = sub_19021D9F8(v12, v14, &v19);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_19020E000, v6, v7, "Could not find a CKConversation for ConversationEntity: %s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x193AF7A40](v11, -1, -1);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }

    else
    {

      sub_1908305F8(v9);
    }

    v16 = v0[1];
    v17 = MEMORY[0x1E69E7CC0];

    return v16(v17);
  }
}

uint64_t sub_190830AD8()
{
  v1 = v0[12];

  v2 = [v1 recipients];
  v3 = sub_190D57180();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v0[9];
    v18 = MEMORY[0x1E69E7CC0];
    v6 = sub_19082DC18(0, v4, 0);
    v9 = 0;
    v10 = v18;
    v11 = v3 + 32;
    while (v9 < *(v3 + 16))
    {
      v12 = v0[10];
      sub_19021834C(v11, (v0 + 2));
      sub_19082CBE8((v0 + 2), v12);
      __swift_destroy_boxed_opaque_existential_0((v0 + 2));
      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_19082DC18(v13 > 1, v14 + 1, 1);
      }

      ++v9;
      v15 = v0[10];
      v16 = v0[8];
      *(v18 + 16) = v14 + 1;
      v6 = (*(v5 + 32))(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
      v11 += 32;
      if (v4 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v0[14] = v10;
    v6 = sub_190830CDC;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_190830CDC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_190830D58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD54610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_190830DCC(char a1, char a2, uint64_t a3)
{
  LOBYTE(v4) = (a3 == 6) | a1;
  if (a3 == 6) | a1 & 1 || (a2)
  {
LABEL_7:
    v9 = objc_opt_self();
    v10 = &selRef_whiteColor;
    if ((v4 & 1) == 0)
    {
      v10 = &selRef_secondaryLabelColor;
    }

    v11 = [v9 *v10];

    v12 = v11;
    return;
  }

  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
  swift_beginAccess();
  if ((*(v3 + v5) & 1) != 0 || (v6 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS, swift_beginAccess(), *(v3 + v6) == 1))
  {
    v7 = objc_opt_self();
    v8 = sub_190D56ED0();
    v4 = [v7 ckColorNamed_];

    if (v4)
    {
      return;
    }

    __break(1u);
    goto LABEL_7;
  }

  v13 = objc_opt_self();
  v14 = sub_190D56ED0();
  v15 = [v13 ckColorNamed_];

  if (!v15)
  {
    __break(1u);
  }
}

void sub_19083100C(char a1)
{
  if (a1 == -1)
  {
    v4 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
    swift_beginAccess();
    if ((*(v1 + v4) & 1) != 0 || (v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS, swift_beginAccess(), *(v1 + v5) == 1))
    {
      v6 = objc_opt_self();
      v7 = sub_190D56ED0();
      v8 = [v6 ckColorNamed_];

      if (v8)
      {
        return;
      }

      __break(1u);
    }

    v9 = objc_opt_self();
    v10 = sub_190D56ED0();
    v11 = [v9 ckColorNamed_];

    if (!v11)
    {
      __break(1u);
    }
  }

  else
  {
    v2 = [objc_opt_self() whiteColor];

    v3 = v2;
  }
}

void sub_1908311E4(char a1, uint64_t a2)
{
  if (a2 == 6)
  {
    v3 = &selRef_secondaryLabelColor;
LABEL_5:
    v4 = [objc_opt_self() *v3];

    v5 = v4;
    return;
  }

  if (a1 != -1)
  {
    v3 = &selRef_whiteColor;
    goto LABEL_5;
  }

  v6 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
  swift_beginAccess();
  if ((*(v2 + v6) & 1) != 0 || (v7 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS, swift_beginAccess(), *(v2 + v7) == 1))
  {
    v8 = objc_opt_self();
    v9 = sub_190D56ED0();
    v10 = [v8 ckColorNamed_];

    if (v10)
    {
      return;
    }

    __break(1u);
  }

  v11 = objc_opt_self();
  v12 = sub_190D56ED0();
  v13 = [v11 ckColorNamed_];

  if (!v13)
  {
    __break(1u);
  }
}

id sub_1908313E8(char a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sel_linkColor;
  v6 = sel_whiteColor;
  if ((a1 & 1) == 0)
  {
    v5 = sel_whiteColor;
    v6 = sel_systemBlueColor;
  }

  if (a2 == 6)
  {
    v7 = [v4 v5];
  }

  else
  {
    v7 = [v4 v6];
  }

  return v7;
}

id sub_19083145C(char a1, uint64_t a2)
{
  if (a2 == 6)
  {
    v2 = [objc_opt_self() secondaryLabelColor];
  }

  else
  {
    v3 = ~a1;
    v4 = objc_opt_self();
    if (v3)
    {
      v5 = [v4 whiteColor];
      v6 = [v5 colorWithAlphaComponent_];

      return v6;
    }

    v2 = [v4 secondaryLabelColor];
  }

  return v2;
}

uint64_t sub_19083156C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53E68);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_190DD1DA0;
  sub_190D55DA0();
  *(v2 + 32) = sub_190D56390();
  *(v2 + 40) = v3;
  sub_190D55D90();
  *(v2 + 48) = sub_190D56390();
  *(v2 + 56) = v4;
  sub_190D563A0();
  sub_190D566A0();
  sub_190D566B0();
  sub_190D53EE0();
  sub_190D56500();
  sub_190D53C60();
  v5 = sub_190D55D90();
  v6 = sub_190D552B0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_190DD1DA0;
  sub_190D55D90();
  *(v7 + 32) = sub_190D56390();
  *(v7 + 40) = v8;
  sub_190D55DA0();
  *(v7 + 48) = sub_190D56390();
  *(v7 + 56) = v9;
  sub_190D563A0();
  sub_190D566A0();
  sub_190D566B0();
  sub_190D53EE0();
  sub_190D56500();
  sub_190D53C60();
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v24[0] = v18;
  v24[1] = v19;
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v26[0] = v12;
  v26[1] = v13;
  *&v11[23] = v13;
  *&v11[7] = v12;
  *&v11[71] = v16;
  *&v11[55] = v15;
  *&v11[39] = v14;
  *(a1 + 32) = v20;
  *(a1 + 48) = v21;
  *(a1 + 64) = v22;
  *&v11[87] = v17;
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 113) = *&v11[16];
  *(a1 + 97) = *v11;
  *(a1 + 176) = *&v11[79];
  *(a1 + 161) = *&v11[64];
  *(a1 + 145) = *&v11[48];
  *(a1 + 129) = *&v11[32];
  v25 = v23;
  v27 = v17;
  *(a1 + 80) = v23;
  *(a1 + 88) = v5;
  *(a1 + 96) = v6;
  v28[0] = v12;
  v28[1] = v13;
  v29 = v17;
  v28[3] = v15;
  v28[4] = v16;
  v28[2] = v14;
  sub_19022FD14(v24, v30, &qword_1EAD53E70);
  sub_190D50920();
  sub_19022FD14(v26, v30, &qword_1EAD53E70);
  sub_19022EEA4(v28, &qword_1EAD53E70);

  v30[2] = v20;
  v30[3] = v21;
  v30[4] = v22;
  v31 = v23;
  v30[0] = v18;
  v30[1] = v19;
  return sub_19022EEA4(v30, &qword_1EAD53E70);
}

double sub_19083189C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_190D548D0();
  v30 = 0;
  sub_19083156C(&v17);
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v43[8] = v25;
  v43[9] = v26;
  v43[10] = v27;
  v43[11] = v28;
  v43[4] = v21;
  v43[5] = v22;
  v43[6] = v23;
  v43[7] = v24;
  v43[0] = v17;
  v43[1] = v18;
  v43[2] = v19;
  v43[3] = v20;
  sub_19022FD14(&v31, &v16, &qword_1EAD53E50);
  sub_19022EEA4(v43, &qword_1EAD53E50);
  *&v29[135] = v39;
  *&v29[151] = v40;
  *&v29[167] = v41;
  *&v29[183] = v42;
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[119] = v38;
  *&v29[7] = v31;
  *&v29[23] = v32;
  *&v29[39] = v33;
  *&v29[55] = v34;
  v3 = v30;
  KeyPath = swift_getKeyPath();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53E58) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53E60) + 28);
  v7 = *MEMORY[0x1E697E7D0];
  v8 = sub_190D54190();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = KeyPath;
  v9 = *&v29[128];
  *(a1 + 161) = *&v29[144];
  v10 = *&v29[176];
  *(a1 + 177) = *&v29[160];
  *(a1 + 193) = v10;
  v11 = *&v29[64];
  *(a1 + 97) = *&v29[80];
  v12 = *&v29[112];
  *(a1 + 113) = *&v29[96];
  *(a1 + 129) = v12;
  *(a1 + 145) = v9;
  v13 = *v29;
  *(a1 + 33) = *&v29[16];
  result = *&v29[32];
  v15 = *&v29[48];
  *(a1 + 49) = *&v29[32];
  *(a1 + 65) = v15;
  *(a1 + 81) = v11;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 208) = *&v29[191];
  *(a1 + 17) = v13;
  return result;
}

unint64_t sub_190831AD4()
{
  result = qword_1EAD53E78;
  if (!qword_1EAD53E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD53E58);
    sub_190233640(&qword_1EAD53E80, &qword_1EAD53E88);
    sub_190233640(&qword_1EAD53E90, &qword_1EAD53E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53E78);
  }

  return result;
}

double sub_190831C40(void *a1)
{
  sub_190831CD4();
  v2 = a1;
  sub_190D578F0();
  v4 = v3;

  return v4;
}

uint64_t UITraitCollection.transcriptBackgroundLuminosity.getter()
{
  sub_190831CD4();

  return sub_190D578F0();
}

unint64_t sub_190831CD4()
{
  result = qword_1EAD46800;
  if (!qword_1EAD46800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD46800);
  }

  return result;
}

uint64_t UIMutableTraits.transcriptBackgroundLuminosity.getter()
{
  sub_190831CD4();

  return sub_190D530F0();
}

uint64_t UIMutableTraits.transcriptBackgroundLuminosity.setter()
{
  sub_190831CD4();

  return sub_190D53100();
}

uint64_t (*UIMutableTraits.transcriptBackgroundLuminosity.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  sub_190831CD4();
  sub_190D530F0();
  *a1 = v5;
  return sub_190831E60;
}

double EnvironmentValues.transcriptBackgroundLuminosity.getter()
{
  sub_190831F0C();
  sub_190D54810();
  return v1;
}

unint64_t sub_190831F0C()
{
  result = qword_1EAD53E98;
  if (!qword_1EAD53E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53E98);
  }

  return result;
}

double sub_190831F60@<D0>(double *a1@<X8>)
{
  sub_190831F0C();
  sub_190D54810();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.transcriptBackgroundLuminosity.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_190831F0C();
  sub_190D54810();
  return sub_190832098;
}

uint64_t static CKTranscriptBackgroundLuminosityEnvironmentKey.write(to:value:)(uint64_t a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_190831CD4();
  return sub_190D53100();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_190832194()
{
  result = qword_1EAD53EA0;
  if (!qword_1EAD53EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53EA0);
  }

  return result;
}

id sub_1908321E8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 transcriptBackgroundLuminosity];
  *a2 = v4;
  return result;
}

id sub_190832420(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_foregroundColor;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  return [v3 setNeedsLayout];
}

id sub_190832490()
{
  v1 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_foregroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1908324E4(void *a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_foregroundColor;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  [v1 setNeedsLayout];
}

uint64_t (*sub_190832558(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190838A28;
}

id sub_1908325BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  *&v3[v4] = v2;
  sub_190D52690();

  return [v3 setNeedsLayout];
}

id sub_19083267C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  *&v1[v3] = a1;

  return [v1 setNeedsLayout];
}

uint64_t (*sub_1908326E4(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190832748;
}

id sub_19083274C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

uint64_t (*sub_1908327B8(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensityOffset;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_190838A2C;
}

uint64_t sub_190832864(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

id sub_1908328B8(uint64_t a1, char a2, void *a3)
{
  v6 = a2 & 1;
  v7 = &v3[*a3];
  result = swift_beginAccess();
  v9 = *v7;
  v10 = *(v7 + 8);
  *v7 = *&a1;
  *(v7 + 8) = v6;
  if (a2)
  {
    if (v10)
    {
      return result;
    }

    return [v3 setNeedsLayout];
  }

  if (v9 != *&a1)
  {
    LOBYTE(v10) = 1;
  }

  if (v10)
  {
    return [v3 setNeedsLayout];
  }

  return result;
}

uint64_t (*sub_190832950(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_fillAmount;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;
  return sub_1908329F0;
}

void sub_1908329F4(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v3 = ((*a1)[6] + (*a1)[5]);
  v4 = *(*a1 + 32);
  v5 = *v3;
  v6 = *(v3 + 8);
  *v3 = v2;
  *(v3 + 8) = v4;
  if (v4)
  {
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v5 == v2)
    {
      v7 = v6;
    }

    else
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [v1[5] setNeedsLayout];
LABEL_9:

  free(v1);
}

uint64_t sub_190832A78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = CGRectEqualToRect(*a1, *a2);
  v7 = v2 == v4 && v6;
  return v7 & (v3 ^ v5 ^ 1u);
}

id AudioMessageRecordingWaveformView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id AudioMessageRecordingWaveformView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_foregroundColor;
  *&v4[v9] = [objc_opt_self() labelColor];
  v10 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_segmentViews] = v10;
  *&v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_segmentSpacing] = 0x4010000000000000;
  v11 = &v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensityOffset];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_fillAmount];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v4[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_layoutState];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v13[40] = 1;
  v14 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_removingSegmentViews;
  *&v4[v14] = sub_1908213F4(v10);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for AudioMessageRecordingWaveformView();
  v15 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  [v15 setClipsToBounds_];
  return v15;
}

id AudioMessageRecordingWaveformView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_190832D04()
{
  v80.receiver = v0;
  v80.super_class = type metadata accessor for AudioMessageRecordingWaveformView();
  objc_msgSendSuper2(&v80, sel_layoutSubviews);
  v4 = &selRef_beginGeneratingForKey_;
  [v0 bounds];
  rect1 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v0 bounds];
  v12 = CGRectGetWidth(v83) * 0.25;
  if (v12 >= 0.0)
  {
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_120;
    }
  }

  else
  {
    v12 = 0.0;
  }

  if (v12 <= -9.22337204e18)
  {
    goto LABEL_121;
  }

  if (v12 >= 9.22337204e18)
  {
    goto LABEL_122;
  }

  v3 = v12;
  v4 = &v0[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensityOffset];
  swift_beginAccess();
  LODWORD(v2) = *(v4 + 8);
  v84.origin.x = rect1;
  *v81 = rect1;
  *&v81[1] = v7;
  *&v81[2] = v9;
  *&v81[3] = v11;
  v81[4] = v3;
  v82 = v2;
  v13 = *&v0[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_layoutState + 32];
  v14 = v0[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_layoutState + 40];
  v84.origin.y = v7;
  v84.size.width = v9;
  v84.size.height = v11;
  rect1_16 = v0;
  if (!CGRectEqualToRect(v84, *&v0[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_layoutState]) || v13 != v3 || ((v2 ^ v14) & 1) != 0)
  {
    sub_190833A7C(v81);
  }

  v1 = *&v0[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_segmentViews];
  if (v1 >> 62)
  {
    goto LABEL_123;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_190D581C0())
  {
    v16 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
    v17 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_foregroundColor;
    v18 = &v0[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_fillAmount];
    sub_190D52690();
    swift_beginAccess();
    rect1_8 = v17;
    swift_beginAccess();
    v70 = v18;
    swift_beginAccess();
    if (i)
    {
      v19 = 0;
      v72 = v3;
      v20 = __OFSUB__(v3, 1);
      v74 = v20;
      v21 = (v3 - 1);
      v22 = -1.0;
      v71 = v3;
      v73 = i;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x193AF3B90](v19, v1);
        }

        else
        {
          if (v19 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v26 = *(v1 + 8 * v19 + 32);
        }

        v27 = v26;
        v28 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_111;
        }

        v29 = v19;
        v30 = *(*&v0[v16] + 16);
        if (v30)
        {
          v31 = v3 == 0;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          if (v2)
          {
            v36 = v29 / v72 * v30;
          }

          else
          {
            v22 = -1.0;
            v36 = v30 - (v72 - v29 + -1.0) + -1.0;
          }

          sub_19083365C(v81, v36);
          v3 = v38 & 1;
          v39 = v27;
          sub_1908338A8(v81);
          [v39 bounds];
          [v39 setBounds_];
          v40 = 0.5;
          if (!v3)
          {
            v40 = 1.0;
            if ((v70[8] & 1) == 0)
            {
              v41 = *(*&rect1_16[v16] + 16);
              v42 = *v70 * v41;
              if (v2)
              {
                v43 = v42 / v41 * v72;
              }

              else
              {
                v22 = -1.0;
                v43 = v72 - (v41 - v42 + -1.0) + -1.0;
              }

              if ((*&v43 & 0x7FF0000000000000) != 0x7FF0000000000000 || (*&v43 & 0xFFFFFFFFFFFFFLL) == 0)
              {
                if (v43 <= -9.22337204e18)
                {
                  goto LABEL_115;
                }

                if (v43 >= 9.22337204e18)
                {
                  goto LABEL_116;
                }

                if ((*&v43 & 0x7FF0000000000000) == 0x7FF0000000000000)
                {
                  goto LABEL_117;
                }

                if (v29 <= -9.22337204e18)
                {
                  goto LABEL_118;
                }

                if (v29 >= 9.22337204e18)
                {
                  goto LABEL_119;
                }

                if (*&v43 == *&v29)
                {
                  v45 = floor(v43 + -0.01);
                  v40 = (v43 - v45) / (ceil(v43) - v45) * 0.5 + 0.5;
                }

                else
                {
                  v40 = 1.0;
                  if (v43 < v29)
                  {
                    v40 = 0.5;
                  }
                }
              }
            }
          }

          v35 = v73;
          if (*(v4 + 8) == 1)
          {
            v3 = v71;
            v0 = rect1_16;
            if (v74)
            {
              goto LABEL_114;
            }

            v46 = v21 - v29;
            v47 = v19;
            if (v21 - v29 < 0.0)
            {
              v46 = 0.0;
              v48 = 1.0;
              v49 = 1.0;
              v47 = v19;
              if (v2)
              {
                goto LABEL_79;
              }

LABEL_78:
              v49 = fmin(v47, v48);
              v48 = fmin(v46, v48);
LABEL_79:
              v37 = v48 * (v40 * v49);
              goto LABEL_80;
            }
          }

          else
          {
            v47 = v29 - *v4;
            if (v47 < 0.0)
            {
              v47 = 0.0;
            }

            v3 = v71;
            v0 = rect1_16;
            if (v74)
            {
              goto LABEL_114;
            }

            v46 = v21 - v29 + *v4;
            if (v46 < 0.0)
            {
              v46 = 0.0;
              v48 = 1.0;
              v49 = 1.0;
              if (v2)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }
          }

          v48 = 1.0;
          v49 = 1.0;
          if (!v2)
          {
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        v32 = v26;
        sub_1908338A8(v81);
        [v32 bounds];
        [v32 setBounds_];
        if (*(v4 + 8) == 1)
        {
          if (v74)
          {
            goto LABEL_113;
          }

          v33 = v21 - v29;
          v34 = v19;
          v35 = v73;
          v0 = rect1_16;
          if (v21 - v29 < 0.0)
          {
            v33 = 0.0;
            v34 = v19;
            if (v2)
            {
              goto LABEL_50;
            }

            goto LABEL_42;
          }
        }

        else
        {
          v34 = v29 - *v4;
          if (v34 < 0.0)
          {
            v34 = 0.0;
          }

          if (v74)
          {
            goto LABEL_113;
          }

          v33 = v21 - v29 + *v4;
          if (v33 < 0.0)
          {
            v33 = 0.0;
            v35 = v73;
            v0 = rect1_16;
            if (v2)
            {
              goto LABEL_50;
            }

            goto LABEL_42;
          }

          v35 = v73;
          v0 = rect1_16;
        }

        if (v2)
        {
LABEL_50:
          v37 = 1.0 * 0.5;
          goto LABEL_80;
        }

LABEL_42:
        v37 = fmin(v33, 1.0) * (fmin(v34, 1.0) * 0.5);
LABEL_80:
        [v27 setAlpha_];

        v50 = v21 - v29;
        if ((v4[1] & 1) == 0)
        {
          v50 = v50 + *v4;
        }

        if (v50 < 0.0)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = v50;
        }

        v24 = v27;
        v85.origin.x = rect1;
        v85.origin.y = v7;
        v85.size.width = v9;
        v85.size.height = v11;
        v25 = CGRectGetMaxX(v85) + v22 + v23 * -4.0;
        v86.origin.x = rect1;
        v86.origin.y = v7;
        v86.size.width = v9;
        v86.size.height = v11;
        [v24 setCenter_];
        [v24 setBackgroundColor_];

        ++v19;
        if (v28 == v35)
        {
          v75 = 0;
          goto LABEL_88;
        }
      }
    }

    v51 = __OFSUB__(v3, 1);
    v75 = v51;
    v21 = (v3 - 1);
LABEL_88:

    v52 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_removingSegmentViews;
    swift_beginAccess();
    v53 = *&v0[v52];
    v54 = v53 + 64;
    v1 = 1 << *(v53 + 32);
    v55 = -1;
    if (v1 < 64)
    {
      v55 = ~(-1 << v1);
    }

    v56 = v55 & *(v53 + 64);
    v76 = v53;
    sub_190D52690();
    swift_beginAccess();
    v57 = 0;
    v3 = (v1 + 63) >> 6;
    if (v56)
    {
      break;
    }

LABEL_91:
    while (1)
    {
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      if (v58 >= v3)
      {

        return;
      }

      v56 = *(v54 + 8 * v58);
      ++v57;
      if (v56)
      {
        v57 = v58;
        goto LABEL_95;
      }
    }

    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
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
    ;
  }

  while (1)
  {
LABEL_95:
    v59 = *(v76 + 56) + ((v57 << 11) | (32 * __clz(__rbit64(v56))));
    v1 = *v59;
    v60 = *(v59 + 8);
    if (v60)
    {
      v61 = v1;
      v62 = v60;
      [v62 bounds];
      v0 = rect1_16;
      [v61 bounds];
      [v61 setBounds_];
      [v62 center];
      [v61 setCenter_];
LABEL_106:

      goto LABEL_107;
    }

    if ((*(v59 + 24) & 1) == 0)
    {
      break;
    }

    v65 = v1;
LABEL_107:
    v56 &= v56 - 1;
    v69 = *&v0[rect1_8];
    v2 = v1;
    [v2 setBackgroundColor_];
    [v2 setAlpha_];

    if (!v56)
    {
      goto LABEL_91;
    }
  }

  if (!v75)
  {
    v66 = v21 - *(v59 + 16);
    if ((v4[1] & 1) == 0)
    {
      v66 = v66 + *v4;
    }

    if (v66 < 0.0)
    {
      v67 = 0.0;
    }

    else
    {
      v67 = v66;
    }

    v61 = v1;
    v87.origin.x = rect1;
    v87.origin.y = v7;
    v87.size.width = v9;
    v87.size.height = v11;
    v68 = CGRectGetMaxX(v87) + -1.0 + v67 * -4.0;
    v88.origin.x = rect1;
    v88.origin.y = v7;
    v88.size.width = v9;
    v88.size.height = v11;
    [v61 setCenter_];
    goto LABEL_106;
  }

  __break(1u);
}

uint64_t sub_19083365C(uint64_t result, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  if (a2 < 0 || (v5 = result, v6 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities, *&result = COERCE_DOUBLE(swift_beginAccess()), v7 = *(v2 + v6), v8 = *(v7 + 16), v8 <= v4))
  {
    *&result = 0.0;
    return result;
  }

  if ((*(v5 + 40) & 1) == 0)
  {
    return *(v7 + 8 * v4 + 32);
  }

  v9 = *(v5 + 32);
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = vcvtd_n_f64_s64(v8 / v9, 1uLL);
  v11 = ceil(a2 - v10);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = floor(v10 + a2);
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = v12;
  if (__OFSUB__(v12, v11))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v12 - v11 < 2)
  {
    return *(v7 + 8 * v4 + 32);
  }

  v13 = v11;
  v15 = v13 & ~(v13 >> 63);
  v16 = v8 - 1;
  if (v16 < v14)
  {
    v14 = v16;
  }

  v17 = v14 - v15;
  if (v14 < v15)
  {
    goto LABEL_42;
  }

  v18 = 0.0;
  if (v14 == v15)
  {
    goto LABEL_30;
  }

  v19 = v14 - v15;
  if (v14 > v15)
  {
    if (v19 > 3)
    {
      v20 = v15 + (v19 & 0xFFFFFFFFFFFFFFFCLL);
      v21 = (v7 + 8 * v15 + 48);
      v22 = v19 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v18 = v18 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
        v21 += 4;
        v22 -= 4;
      }

      while (v22);
      if (v19 == (v19 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = v13 & ~(v13 >> 63);
    }

    v23 = v14 - v20;
    v24 = (v7 + 8 * v20 + 32);
    do
    {
      v25 = *v24++;
      v18 = v18 + v25;
      --v23;
    }

    while (v23);
LABEL_30:
    *&result = v18 / v17;
    return result;
  }

LABEL_43:
  __break(1u);
  return result;
}

void sub_1908338A8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensityOffset;
  swift_beginAccess();
  if (*(v3 + 8) == 1)
  {
    if (!__OFSUB__(*(a1 + 32), 1))
    {
      goto LABEL_5;
    }
  }

  else if (!__OFSUB__(*(a1 + 32), 1))
  {
LABEL_5:
    CGRectGetHeight(*a1);
    return;
  }

  __break(1u);
}

uint64_t sub_190833A7C(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_layoutState;
  v4 = *(v1 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_layoutState + 16);
  v170 = *(v1 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_layoutState);
  v171 = v4;
  v5 = *(a1 + 32);
  if (v5 < 0)
  {
    goto LABEL_148;
  }

  v6 = *(v3 + 32);
  v153 = *(v3 + 40);
  v7 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_segmentViews;
  v8 = MEMORY[0x1E69E7CC0];
  v152 = *(a1 + 32);
  v159 = *(v1 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_segmentViews);
  if (v5)
  {
    aBlock = MEMORY[0x1E69E7CC0];
    sub_190D52690();
    sub_19082DCC0(0, v5, 0);
    v9 = 0;
    v10 = aBlock;
    v11 = aBlock[2];
    v12 = 2 * v11;
    do
    {
      aBlock = v10;
      v13 = v10[3];
      if (v11++ >= v13 >> 1)
      {
        sub_19082DCC0((v13 > 1), v11, 1);
        v5 = v152;
        v10 = aBlock;
      }

      v10[2] = v11;
      v15 = &v10[v12];
      v15[4] = v9;
      v15[5] = v8;
      v12 += 2;
      ++v9;
    }

    while (v5 != v9);
  }

  else
  {
    sub_190D52690();
    if (!v8[2])
    {
      v16 = MEMORY[0x1E69E7CC8];
      goto LABEL_10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5E250);
  v16 = sub_190D585A0();
LABEL_10:
  aBlock = v16;
  v17 = sub_190D52690();
  v2 = 0;
  sub_190837808(v17, 1, &aBlock);

  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_149;
  }

  v147 = v7;
  v148 = v3;
  v18 = aBlock;
  v19 = &qword_1EAD53000;
  v20 = v158;
  v157 = v6;
  if (!v6)
  {
    v146 = 0;
    v155 = 0;
    v24 = v152;
    v23 = 0;
    goto LABEL_57;
  }

  v2 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  v21 = 0;
  v155 = 0;
  v22 = 0;
  v23 = v6;
  v24 = v152;
  while (1)
  {
    v25 = *(*&v158[v2] + 16);
    if (!v25)
    {
      sub_19022123C(v155);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v18;
      v31 = sub_190875CC8(0);
      v32 = v18[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_145;
      }

      v35 = v30;
      if (v18[3] < v34)
      {
        sub_190B625AC(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_190875CC8(0);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_156;
        }

        v31 = v36;
        v18 = aBlock;
        if (v35)
        {
          goto LABEL_47;
        }

LABEL_45:
        v18[(v31 >> 6) + 8] |= 1 << v31;
        *(v18[6] + 8 * v31) = 0;
        *(v18[7] + 8 * v31) = MEMORY[0x1E69E7CC0];
        v59 = v18[2];
        v51 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v51)
        {
          goto LABEL_147;
        }

        v18[2] = v60;
        goto LABEL_47;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v18 = aBlock;
        if ((v30 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        sub_190B67AF8();
        v18 = aBlock;
        if ((v35 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

LABEL_47:
      v61 = v18[7];
      v54 = *(v61 + 8 * v31);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      *(v61 + 8 * v31) = v54;
      if ((v62 & 1) == 0)
      {
        v54 = sub_1908368D4(0, *(v54 + 2) + 1, 1, v54, &qword_1EAD5BB70);
        *(v61 + 8 * v31) = v54;
      }

      v57 = *(v54 + 2);
      v63 = *(v54 + 3);
      v58 = v57 + 1;
      v155 = sub_190838A1C;
      if (v57 >= v63 >> 1)
      {
        v54 = sub_1908368D4((v63 > 1), v57 + 1, 1, v54, &qword_1EAD5BB70);
        *(v61 + 8 * v31) = v54;
        v155 = sub_190838A1C;
      }

      goto LABEL_14;
    }

    v26 = v22;
    v27 = v25;
    v28 = (v153 & 1) != 0 ? v26 / v23 * v27 : v27 - (v23 - v26 + -1.0) + -1.0;
    v38 = (*(a1 + 40) & 1) != 0 ? v28 / v27 * v24 : v24 - (v27 - v28 + -1.0) + -1.0;
    v39 = floor(v38);
    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v39 <= -9.22337204e18)
    {
      goto LABEL_142;
    }

    if (v39 >= 9.22337204e18)
    {
      goto LABEL_143;
    }

    v40 = v39;
    sub_19022123C(v21);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v18;
    v43 = sub_190875CC8(v40);
    v44 = v18[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_144;
    }

    v47 = v42;
    if (v18[3] >= v46)
    {
      if (v41)
      {
        v18 = aBlock;
        if ((v42 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_190B67AF8();
        v18 = aBlock;
        if ((v47 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      sub_190B625AC(v46, v41);
      v48 = sub_190875CC8(v40);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_156;
      }

      v43 = v48;
      v18 = aBlock;
      if ((v47 & 1) == 0)
      {
LABEL_37:
        v18[(v43 >> 6) + 8] |= 1 << v43;
        *(v18[6] + 8 * v43) = v40;
        *(v18[7] + 8 * v43) = MEMORY[0x1E69E7CC0];
        v50 = v18[2];
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_146;
        }

        v18[2] = v52;
      }
    }

    v53 = v18[7];
    v54 = *(v53 + 8 * v43);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + 8 * v43) = v54;
    if ((v55 & 1) == 0)
    {
      v54 = sub_1908368D4(0, *(v54 + 2) + 1, 1, v54, &qword_1EAD5BB70);
      *(v53 + 8 * v43) = v54;
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1908368D4((v56 > 1), v57 + 1, 1, v54, &qword_1EAD5BB70);
      *(v53 + 8 * v43) = v54;
    }

    v21 = sub_190838A1C;
LABEL_14:
    *&v54[8 * v57 + 32] = v22;
    *(v54 + 2) = v58;
    if (v157 == ++v22)
    {
      v146 = v21;
      v8 = MEMORY[0x1E69E7CC0];
      v20 = v158;
      v19 = &qword_1EAD53000;
LABEL_57:
      v145 = swift_allocObject();
      *(v145 + 16) = v8;
      v162 = (v145 + 16);
      v149 = v8;
      v169 = v8;
      v64 = v18 + 8;
      v65 = 1 << *(v18 + 32);
      v66 = -1;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      v2 = v66 & v18[8];
      v67 = v19[470];
      sub_190D52690();
      swift_beginAccess();
      v68 = 0;
      v151 = (v65 + 63) >> 6;
      v160 = v159 & 0xC000000000000001;
      v156 = v159 + 32;
      v150 = v67;
      while (1)
      {
        v69 = v152;
        while (1)
        {
          while (1)
          {
            if (!v2)
            {
              while (1)
              {
                v70 = v68 + 1;
                if (__OFADD__(v68, 1))
                {
                  __break(1u);
LABEL_138:
                  __break(1u);
LABEL_139:
                  __break(1u);
LABEL_140:
                  __break(1u);
                  goto LABEL_141;
                }

                if (v70 >= v151)
                {
                  break;
                }

                v2 = v64[v70];
                ++v68;
                if (v2)
                {
                  v68 = v70;
                  goto LABEL_66;
                }
              }

              v116 = v169;
              v117 = v169[2];
              v118 = MEMORY[0x1E69E7CC0];
              if (v117)
              {
                aBlock = MEMORY[0x1E69E7CC0];
                sub_190D52690();
                sub_19082DCA0(0, v117, 0);
                v2 = 0;
                v118 = aBlock;
                v119 = (v116 + 5);
                while (v2 < v116[2])
                {
                  v121 = *(v119 - 1);
                  v120 = *v119;
                  aBlock = v118;
                  v123 = v118[2];
                  v122 = v118[3];
                  v124 = v120;
                  if (v123 >= v122 >> 1)
                  {
                    v126 = v124;
                    sub_19082DCA0((v122 > 1), v123 + 1, 1);
                    v124 = v126;
                    v118 = aBlock;
                  }

                  ++v2;
                  v118[2] = v123 + 1;
                  v125 = &v118[2 * v123];
                  v125[4] = v121;
                  v125[5] = v124;
                  v119 += 4;
                  if (v117 == v2)
                  {

                    goto LABEL_129;
                  }
                }

                goto LABEL_138;
              }

LABEL_129:
              aBlock = v149;
              sub_190D52690();
              sub_190CA9E28(v118);
              sub_190D52690();
              sub_190837B74(&aBlock);

              v127 = aBlock;
              v128 = aBlock[2];
              if (v128)
              {
                aBlock = MEMORY[0x1E69E7CC0];
                sub_190D58390();
                v129 = 5;
                do
                {
                  v130 = v127[v129];
                  sub_190D58360();
                  sub_190D583B0();
                  sub_190D583C0();
                  sub_190D58370();
                  v129 += 2;
                  --v128;
                }

                while (v128);

                v131 = aBlock;
              }

              else
              {

                v131 = MEMORY[0x1E69E7CC0];
              }

              *&v158[v147] = v131;
              sub_190D52690();

              v132 = *(a1 + 16);
              *v148 = *a1;
              v148[1] = v132;
              *(v148 + 25) = *(a1 + 25);
              v2 = objc_opt_self();
              v133 = swift_allocObject();
              *(v133 + 16) = v162;
              v134 = *(a1 + 16);
              *(v133 + 24) = *a1;
              *(v133 + 40) = v134;
              *(v133 + 49) = *(a1 + 25);
              *(v133 + 72) = v131;
              *(v133 + 80) = v158;
              *(v133 + 88) = &v169;
              v135 = v171;
              *(v133 + 96) = v170;
              *(v133 + 112) = v135;
              *(v133 + 128) = v157;
              *(v133 + 136) = v153;
              v136 = swift_allocObject();
              *(v136 + 16) = sub_1908389EC;
              *(v136 + 24) = v133;
              v167 = sub_190838A04;
              v168 = v136;
              aBlock = MEMORY[0x1E69E9820];
              v164 = 1107296256;
              v165 = sub_19088B7B8;
              v166 = &block_descriptor_0;
              v137 = _Block_copy(&aBlock);
              v138 = v158;
              sub_190D50920();

              [v2 performWithoutAnimation_];
              _Block_release(v137);
              LOBYTE(v137) = swift_isEscapingClosureAtFileLocation();

              if ((v137 & 1) == 0)
              {
                v167 = nullsub_10;
                v168 = 0;
                aBlock = MEMORY[0x1E69E9820];
                v164 = 1107296256;
                v165 = sub_190840E6C;
                v166 = &block_descriptor_35;
                v139 = _Block_copy(&aBlock);
                v140 = swift_allocObject();
                *(v140 + 16) = v145;
                *(v140 + 24) = v138;
                v167 = sub_190838A0C;
                v168 = v140;
                aBlock = MEMORY[0x1E69E9820];
                v164 = 1107296256;
                v165 = sub_190896518;
                v166 = &block_descriptor_41;
                v141 = _Block_copy(&aBlock);
                v142 = v138;
                sub_190D50920();

                [v2 animateWithDuration:0 delay:v139 usingSpringWithDamping:v141 initialSpringVelocity:0.0 options:0.0 animations:1.0 completion:0.0];
                _Block_release(v141);
                _Block_release(v139);

                sub_19022123C(v146);
                sub_19022123C(v155);
              }

              goto LABEL_150;
            }

LABEL_66:
            v71 = __clz(__rbit64(v2));
            v2 &= v2 - 1;
            v72 = (v68 << 9) | (8 * v71);
            v73 = *(v18[7] + v72);
            v74 = v73[2];
            v161 = *(v18[6] + v72);
            if (v161 < v69)
            {
              break;
            }

            if (v74)
            {
              sub_190D52690();
              v78 = 4;
              do
              {
                v79 = v73[v78];
                if (v160)
                {
                  v80 = MEMORY[0x193AF3B90](v79, v159);
                }

                else
                {
                  if ((v79 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_139;
                  }

                  if (v79 >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_140;
                  }

                  v80 = *(v156 + 8 * v79);
                }

                v81 = v80;
                v82 = *v162;
                v83 = swift_isUniquelyReferenced_nonNull_native();
                *v162 = v82;
                if ((v83 & 1) == 0)
                {
                  v82 = sub_190835AA8(0, v82[2] + 1, 1, v82);
                  *v162 = v82;
                }

                v85 = v82[2];
                v84 = v82[3];
                if (v85 >= v84 >> 1)
                {
                  v82 = sub_190835AA8((v84 > 1), v85 + 1, 1, v82);
                }

                v82[2] = v85 + 1;
                v86 = &v82[3 * v85];
                v86[4] = v81;
                v86[5] = v161;
                *(v86 + 48) = 0;
                *v162 = v82;
                ++v78;
                --v74;
              }

              while (v74);

              v20 = v158;
              v69 = v152;
              v67 = v150;
              v64 = v18 + 8;
            }
          }

          if (v74)
          {
            break;
          }

          v75 = *(*&v20[v67] + 16);
          if (v75)
          {
            v76 = v161;
            if (*(a1 + 40))
            {
              v77 = v76 / v24 * v75;
            }

            else
            {
              v77 = v75 - (v24 - v76 + -1.0) + -1.0;
            }

            v92 = v75;
            if (v153)
            {
              v93 = v77 / v92 * v23;
            }

            else
            {
              v93 = v23 - (v92 - v77 + -1.0) + -1.0;
            }

            type metadata accessor for AudioMessageRecordingWaveformView.SegmentView();
            v94 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v95 = v169;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_190835974(0, v95[2] + 1, 1, v95);
            }

            v97 = v95[2];
            v96 = v95[3];
            v69 = v152;
            if (v97 >= v96 >> 1)
            {
              v95 = sub_190835974((v96 > 1), v97 + 1, 1, v95);
              v69 = v152;
            }

            v95[2] = v97 + 1;
            v98 = &v95[4 * v97];
            *(v98 + 4) = v161;
            *(v98 + 5) = v94;
            v98[6] = v93;
            *(v98 + 56) = 0;
            v169 = v95;
          }

          else
          {
            type metadata accessor for AudioMessageRecordingWaveformView.SegmentView();
            v87 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            v88 = v169;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = sub_190835974(0, v88[2] + 1, 1, v88);
            }

            v90 = v88[2];
            v89 = v88[3];
            v69 = v152;
            if (v90 >= v89 >> 1)
            {
              v88 = sub_190835974((v89 > 1), v90 + 1, 1, v88);
              v69 = v152;
            }

            v88[2] = v90 + 1;
            v91 = &v88[4 * v90];
            v91[4] = v161;
            v91[5] = v87;
            v91[6] = 0;
            *(v91 + 56) = 1;
            v169 = v88;
          }
        }

        v99 = v73[4];
        if (v160)
        {
          sub_190D52690();
          v101 = MEMORY[0x193AF3B90](v99, v159);
        }

        else
        {
          if ((v99 & 0x8000000000000000) != 0)
          {
            goto LABEL_153;
          }

          if (v99 >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_154;
          }

          v100 = *(v156 + 8 * v99);
          sub_190D52690();
          v101 = v100;
        }

        v144 = v101;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_190835840(0, v149[2] + 1, 1, v149);
        }

        v103 = v149[2];
        v102 = v149[3];
        if (v103 >= v102 >> 1)
        {
          v149 = sub_190835840((v102 > 1), v103 + 1, 1, v149);
        }

        v149[2] = v103 + 1;
        v104 = &v149[2 * v103];
        v104[4] = v161;
        v104[5] = v144;
        if (v73[2] < v74)
        {
          goto LABEL_155;
        }

        v105 = v74 - 1;
        if (v105)
        {
          v106 = v73 + 5;
          do
          {
            v108 = *v106++;
            v107 = v108;
            if (v160)
            {
              v109 = MEMORY[0x193AF3B90](v107, v159);
            }

            else
            {
              if ((v107 & 0x8000000000000000) != 0)
              {
                goto LABEL_151;
              }

              if (v107 >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_152;
              }

              v109 = *(v156 + 8 * v107);
            }

            v110 = v109;
            v111 = *v162;
            v112 = swift_isUniquelyReferenced_nonNull_native();
            *v162 = v111;
            if ((v112 & 1) == 0)
            {
              v111 = sub_190835AA8(0, v111[2] + 1, 1, v111);
              *v162 = v111;
            }

            v114 = v111[2];
            v113 = v111[3];
            if (v114 >= v113 >> 1)
            {
              v111 = sub_190835AA8((v113 > 1), v114 + 1, 1, v111);
            }

            v111[2] = v114 + 1;
            v115 = &v111[3 * v114];
            v115[4] = v110;
            v115[5] = v161;
            *(v115 + 48) = 0;
            *v162 = v111;
            --v105;
            v20 = v158;
          }

          while (v105);
        }

        v67 = v150;
        v64 = v18 + 8;
      }
    }
  }

LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  sub_190D587C0();
  __break(1u);
  swift_unexpectedError();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_190834B6C(uint64_t result, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t a6)
{
  v6 = a6;
  v7 = a4;
  v8 = a2;
  v9 = *result;
  v82 = *(*result + 16);
  if (v82)
  {
    v76 = a5;
    v10 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_removingSegmentViews;
    v79 = a3 & 0xFFFFFFFFFFFFFF8;
    v80 = a3 & 0xC000000000000001;
    v78 = a3 + 32;
    sub_190D52690();
    v11 = 0;
    v12 = (v9 + 48);
    v81 = v9;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        result = sub_190D587C0();
        __break(1u);
        return result;
      }

      v85 = 0;
      v17 = *(v12 - 2);
      v18 = *(v12 - 1);
      v19 = *v12;
      if (*v12)
      {
        goto LABEL_14;
      }

      v20 = *(v12 - 2);
      if (v18 < 1)
      {
        goto LABEL_15;
      }

      if (v18 >= *(v8 + 32))
      {
        break;
      }

      if (v80)
      {
        v40 = v17;
        v20 = MEMORY[0x193AF3B90](v18, a3);
      }

      else
      {
        if (v18 >= *(v79 + 16))
        {
          goto LABEL_63;
        }

        v21 = *(v78 + 8 * v18);
        v22 = v17;
        v20 = v21;
      }

      v85 = v20;
LABEL_15:
      v23 = v20;
      swift_beginAccess();
      v24 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *&a4[v10];
      v27 = v10;
      *&a4[v10] = 0x8000000000000000;
      v29 = sub_190875CC8(v24);
      v30 = v26[2];
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_59;
      }

      v33 = v28;
      if (v26[3] >= v32)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v28 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_190B67C54();
          if ((v33 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        sub_190B6281C(v32, isUniquelyReferenced_nonNull_native);
        v34 = sub_190875CC8(v24);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_64;
        }

        v29 = v34;
        if ((v33 & 1) == 0)
        {
LABEL_22:
          v26[(v29 >> 6) + 8] |= 1 << v29;
          *(v26[6] + 8 * v29) = v24;
          v36 = v26[7] + 32 * v29;
          v16 = v85;
          *v36 = v24;
          *(v36 + 8) = v85;
          *(v36 + 16) = v18;
          *(v36 + 24) = v19;
          v37 = v26[2];
          v38 = __OFADD__(v37, 1);
          v39 = v37 + 1;
          if (v38)
          {
            goto LABEL_62;
          }

          v26[2] = v39;
          goto LABEL_4;
        }
      }

      v13 = v26[7] + 32 * v29;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = v85;
      *v13 = v24;
      *(v13 + 8) = v85;
      *(v13 + 16) = v18;
      *(v13 + 24) = v19;

LABEL_4:
      ++v11;
      v10 = v27;
      *&a4[v27] = v26;
      swift_endAccess();

      v12 += 24;
      v8 = a2;
      v9 = v81;
      if (v82 == v11)
      {

        a5 = v76;
        v6 = a6;
        v7 = a4;
        goto LABEL_28;
      }
    }

    v85 = 0;
LABEL_14:
    v20 = *(v12 - 2);
    goto LABEL_15;
  }

LABEL_28:
  v41 = *a5;
  v42 = *(*a5 + 16);
  if (!v42)
  {
    return result;
  }

  v43 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  v44 = &v7[OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensityOffset];
  v45 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_foregroundColor;
  sub_190D52690();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v46 = (v41 + 56);
  do
  {
    v56 = *(v46 - 2);
    v57 = *(*&v7[v43] + 16);
    if (*v46)
    {
      v58 = *(v46 - 3);
      if (v57 && (v59 = *(v8 + 32)) != 0)
      {
        v60 = v59;
        if (*(v8 + 40))
        {
          v61 = v58 / v60 * v57;
        }

        else
        {
          v61 = v57 - (v60 - v58 + -1.0) + -1.0;
        }

        sub_19083365C(v8, v61);
        v68 = v56;
        sub_1908338A8(a2);
        [v68 bounds];
        [v68 setBounds_];

        v8 = a2;
      }

      else
      {
        v66 = v56;
      }

      v69 = *(v8 + 32);
      v38 = __OFSUB__(v69, 1);
      v70 = v69 - 1;
      if (v38)
      {
        goto LABEL_60;
      }

      v47 = v70 - v58;
      v71 = v8;
      if ((v44[1] & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v62 = *(v46 - 1);
      if (v57 && (v63 = *(v6 + 32)) != 0)
      {
        v64 = v63;
        if (*(v6 + 40))
        {
          v65 = v62 / v64 * v57;
        }

        else
        {
          v65 = v57 - (v64 - v62 + -1.0) + -1.0;
        }

        sub_19083365C(v6, v65);
        v72 = v56;
        sub_1908338A8(v6);
        [v72 bounds];
        [v72 setBounds_];

        v8 = a2;
      }

      else
      {
        v67 = v56;
      }

      v73 = *(v6 + 32);
      v38 = __OFSUB__(v73, 1);
      v74 = v73 - 1;
      if (v38)
      {
        goto LABEL_61;
      }

      v47 = v74 - v62;
      v71 = v6;
      if ((v44[1] & 1) == 0)
      {
LABEL_30:
        v47 = v47 + *v44;
      }
    }

    if (v47 < 0.0)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = v47;
    }

    v49 = *v71;
    v50 = v71[1];
    v51 = v71[2];
    v52 = v71[3];
    v53 = v56;
    v86.origin.x = v49;
    v86.origin.y = v50;
    v86.size.width = v51;
    v86.size.height = v52;
    v54 = CGRectGetMaxX(v86) + -1.0 + v48 * -4.0;
    v87.origin.x = v49;
    v87.origin.y = v50;
    v87.size.width = v51;
    v87.size.height = v52;
    [v53 setCenter_];

    v55 = v53;
    [v55 setAlpha_];
    [v55 setBackgroundColor_];

    [v7 addSubview_];
    v46 += 32;
    --v42;
  }

  while (v42);
}

uint64_t sub_190835170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_removingSegmentViews;
    sub_190D52690();
    v9 = 32;
    do
    {
      v12 = *(v6 + v9);
      [v12 removeFromSuperview];
      swift_beginAccess();
      v13 = sub_190875CC8(v12);
      if (v14)
      {
        v15 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *(a3 + v8);
        *(a3 + v8) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_190B67C54();
        }

        v10 = *(v17 + 56) + 32 * v15;
        v11 = *(v10 + 8);

        sub_190C81DD8(v15, v17);
        *(a3 + v8) = v17;
      }

      swift_endAccess();

      v9 += 24;
      --v7;
    }

    while (v7);
  }

  return result;
}

id sub_19083530C(double a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  v4 = *&v1[v3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v1[v3] = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_190835BEC(0, *(v4 + 2) + 1, 1, v4);
    *&v1[v3] = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_190835BEC((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  *&v4[8 * v7 + 32] = a1;
  *&v1[v3] = v4;
  return [v1 setNeedsLayout];
}

id sub_190835408(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *sub_1908354D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1908355E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_190835714(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD59630);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_190835840(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D88);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_190835974(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54008);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_190835AA8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54018);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_190835BEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_190835D54(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_190835ED4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_190836008(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53FE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_190836128(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53FC8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53FD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19083625C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53E38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_190836378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53FD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1908365EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1908367A0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1908368D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_1908369F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_190836B20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_190836C5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_190836D7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D40);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_190836ED8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_190836FFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F80);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_190837108(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_190837224(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19083736C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54028);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1908374B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1908375D4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CD8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19083771C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void sub_190837808(void *a1, char a2, void *a3)
{
  v43 = a1[2];
  if (!v43)
  {
    goto LABEL_23;
  }

  v7 = a1[4];
  v6 = a1[5];
  v8 = *a3;
  v9 = sub_190875CC8(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v9;
  v15 = v10;
  v16 = v8[3];
  sub_190D52690();
  if (v16 >= v13)
  {
    if (a2)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_190B67AF8();
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_190B625AC(v13, a2 & 1);
  v17 = sub_190875CC8(v7);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_190D587C0();
    __break(1u);
LABEL_29:
    sub_190D582B0();
    MEMORY[0x193AF28B0](0xD00000000000001BLL, 0x8000000190E5DA40);
    sub_190D58450();
    MEMORY[0x193AF28B0](39, 0xE100000000000000);
    sub_190D58510();
    __break(1u);
    return;
  }

  v14 = v17;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v21[6] + 8 * v14) = v7;
  *(v21[7] + 8 * v14) = v6;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = a1 + 7;
    v26 = 1;
    while (v26 < a1[2])
    {
      v28 = *(v25 - 1);
      v27 = *v25;
      v29 = *a3;
      v30 = sub_190875CC8(v28);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];
      sub_190D52690();
      if (v37 < v34)
      {
        sub_190B625AC(v34, 1);
        v38 = sub_190875CC8(v28);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + 8 * v35) = v28;
      *(v40[7] + 8 * v35) = v27;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_190837B74(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1909E3994(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_190D58710();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53D90);
      v7 = sub_190D571D0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_190837CC8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_190837CC8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1909E383C(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_190838250((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = v23[1];
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_190835714(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_190835714((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_190838250((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_190838250(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void _s7ChatKit33AudioMessageRecordingWaveformViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_foregroundColor;
  *(v0 + v1) = [objc_opt_self() labelColor];
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_segmentViews) = v2;
  *(v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_segmentSpacing) = 0x4010000000000000;
  v3 = v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensityOffset;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_fillAmount;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_layoutState;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 40) = 1;
  v6 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_removingSegmentViews;
  *(v0 + v6) = sub_1908213F4(v2);
  sub_190D58510();
  __break(1u);
}

uint64_t keypath_get_4Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_190838938(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_19083898C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_190838B10(void *a1)
{
  if (*(&v1->isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hadContentChange) != 1)
  {
    return 0;
  }

  v3 = &selRef_conversationListSummaryBodyLeading;
  v4 = a1;
  v5 = [a1 currentScrollIntent];
  if (v5 > 9)
  {
    goto LABEL_41;
  }

  if (((1 << v5) & 0x3BE) != 0)
  {
    return 0;
  }

  if (!v5)
  {
    v7 = OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hasSendLaterPluginInfo;
    if (*(&v1->isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hasSendLaterPluginInfo))
    {
      v8 = 6;
    }

    else
    {
      v8 = 0;
    }

    if (qword_1EAD46198 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9D688);
    v10 = v1;
    v11 = v1;
    v2 = v4;
    v1 = sub_190D53020();
    v4 = sub_190D576C0();
    if (!os_log_type_enabled(v1, v4))
    {
LABEL_31:

      goto LABEL_32;
    }

    v52 = v8;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v53 = v13;
    *v12 = 136315650;
    v14 = CKDebugNameForCKTranscriptScrollIntent([v2 currentScrollIntent]);
    if (!v14)
    {

      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v3 = v14;

    v15 = sub_190D56F10();
    v17 = v16;

    v2 = sub_19021D9F8(v15, v17, &v53);

    *(v12 + 4) = v2;
    *(v12 + 12) = 2080;
    v18 = CKDebugNameForCKTranscriptScrollIntent(v52);
    if (v18)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  if (*(&v1->isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_isSendLaterPluginChange))
  {
    if (qword_1EAD46198 != -1)
    {
      swift_once();
    }

    v19 = sub_190D53040();
    __swift_project_value_buffer(v19, qword_1EAD9D688);
    v20 = v4;
    v21 = sub_190D53020();
    v11 = sub_190D576C0();
    if (!os_log_type_enabled(v21, v11))
    {

      goto LABEL_34;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v53 = v23;
    *v22 = 136315394;
    v24 = CKDebugNameForCKTranscriptScrollIntent([v20 v3[246]]);

    if (v24)
    {
      v25 = sub_190D56F10();
      v27 = v26;

      v28 = sub_19021D9F8(v25, v27, &v53);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      v29 = CKDebugNameForCKTranscriptScrollIntent(6uLL);
      if (v29)
      {
        v30 = v29;
        v31 = sub_190D56F10();
        v33 = v32;

        v34 = sub_19021D9F8(v31, v33, &v53);

        *(v22 + 14) = v34;
        _os_log_impl(&dword_19020E000, v21, v11, "Switching intent from %s to %s because we're a sendLaterPluginChange", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v23, -1, -1);
        MEMORY[0x193AF7A40](v22, -1, -1);
LABEL_34:

        v48 = [objc_opt_self() systemDefaultScrollAnimation];
        v8 = 6;
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v7 = OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hasSendLaterPluginInfo;
  if (*(&v1->isa + OBJC_IVAR___CKTranscriptScrollIntentEntryViewChangedTrigger_hasSendLaterPluginInfo))
  {
    v8 = 6;
  }

  else
  {
    v8 = 0;
  }

  if (qword_1EAD46198 != -1)
  {
    swift_once();
  }

  v35 = sub_190D53040();
  __swift_project_value_buffer(v35, qword_1EAD9D688);
  v10 = v1;
  v11 = v1;
  v2 = v4;
  v1 = sub_190D53020();
  LOBYTE(v4) = sub_190D576C0();
  if (!os_log_type_enabled(v1, v4))
  {
    goto LABEL_31;
  }

  v52 = v8;
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v53 = v13;
  *v12 = 136315650;
  v36 = CKDebugNameForCKTranscriptScrollIntent([v2 v3[246]]);
  if (!v36)
  {
LABEL_38:

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = v36;

  v38 = sub_190D56F10();
  v40 = v39;

  v41 = sub_19021D9F8(v38, v40, &v53);

  *(v12 + 4) = v41;
  *(v12 + 12) = 2080;
  v18 = CKDebugNameForCKTranscriptScrollIntent(v52);
  if (v18)
  {
LABEL_30:
    v42 = v18;
    v43 = sub_190D56F10();
    v45 = v44;

    v46 = sub_19021D9F8(v43, v45, &v53);

    *(v12 + 14) = v46;
    *(v12 + 22) = 1024;
    v47 = *(&v10->isa + v7);

    *(v12 + 24) = v47;
    _os_log_impl(&dword_19020E000, v1, v4, "Switching intent from %s to %s because hasSendLaterPluginInfo: %{BOOL}d", v12, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x193AF7A40](v13, -1, -1);
    MEMORY[0x193AF7A40](v12, -1, -1);

    v8 = v52;
LABEL_32:
    v48 = [objc_opt_self() springAnimationWithMass:1.0 stiffness:109.66 damping:20.94 duration:0.9];
LABEL_35:
    v49 = v48;
    v50 = [objc_allocWithZone(CKTranscriptScrollIntentUpdateRequest) initWithAnimatedIntent:v8 animationProperties:v49];

    return v50;
  }

LABEL_40:

  __break(1u);
LABEL_41:
  v51 = v5;
  type metadata accessor for CKTranscriptScrollIntent(0);
  v53 = v51;
  result = sub_190D58790();
  __break(1u);
  return result;
}