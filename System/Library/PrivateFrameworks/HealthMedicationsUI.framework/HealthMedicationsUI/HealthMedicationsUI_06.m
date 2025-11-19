uint64_t sub_2282011F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_6:
    v17 = v5;
    v18 = a3;
    v7 = *(v4 + 8 * a3);
    v16 = v6;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v21 == v19 && v22 == v20)
      {

LABEL_5:
        a3 = v18 + 1;
        v5 = v17 + 8;
        v6 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = sub_228393460();

      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v13 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v13;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22820133C(uint64_t *a1)
{
  v2 = a1[1];
  swift_retain_n();
  result = sub_228393410();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
        v6 = sub_228392220();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v7[1] = v5;

      sub_228200A80(v7, v8, a1, v4);

      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {

    sub_2282011F4(0, v2, 1, a1);
  }
}

uint64_t sub_2282014A8(uint64_t *a1)
{
  v2 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22834169C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;

  sub_22820133C(v6);

  sub_228393220();
}

uint64_t sub_228201554(uint64_t a1)
{
  sub_2282015E0(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2282015E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228201644()
{
  result = qword_280DDB830;
  if (!qword_280DDB830)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DDB830);
  }

  return result;
}

uint64_t sub_2282016A8(uint64_t a1, uint64_t a2)
{
  sub_2282015E0(0, &unk_280DDBD10, MEMORY[0x277D11720], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_22820174C()
{
  _s30HealthMedicationsUIBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280DDCED8 = result;
  return result;
}

id static NSBundle.healthMedicationsUI.getter()
{
  if (qword_280DDCED0 != -1)
  {
    swift_once();
  }

  v1 = qword_280DDCED8;

  return v1;
}

uint64_t sub_228201824(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  swift_beginAccess();
  sub_22817A680(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_228201888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282018E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell_item;
  swift_beginAccess();
  sub_22817A680(a1, v1 + v3);
  return swift_endAccess();
}

id sub_2282019A0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    v5 = [objc_opt_self() opaqueSeparatorColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_228201CB0()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = sub_2282019A0();
  [v2 addSubview_];

  v4 = objc_opt_self();
  sub_228180ED0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_228397F00;
  v6 = OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView;
  v7 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI28InteractionSeparatorLineCell____lazy_storage___separatorView] leadingAnchor];
  v8 = [v1 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [*&v1[v6] topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 topAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v14;
  v15 = [*&v1[v6] bottomAnchor];
  v16 = [v1 contentView];
  v17 = [v16 bottomAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v5 + 48) = v18;
  v19 = [*&v1[v6] trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v5 + 56) = v22;
  sub_2281BF1B8();
  v23 = sub_228392190();

  [v4 activateConstraints_];
}

id InteractionSeparatorLineCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractionSeparatorLineCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22820213C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_228393070();
    v5 = v4;
    v6 = sub_228393120();
    v8 = v7;
    v9 = MEMORY[0x22AAB6C40](v3, v5, v6, v7);
    sub_228205ADC(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_228205ADC(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = sub_228393040();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_2282D9160(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_228205ADC(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_228202258()
{
  v1 = [v0 interactionType];
  v2 = [v0 medication];
  v3 = [v2 localizedOntologyEducationContent];
  if (v1 != 1)
  {
    if (v3)
    {
      v4 = v3;
      sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
      v5 = sub_22838FA80();
      goto LABEL_6;
    }

LABEL_7:

    return 0;
  }

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  sub_22817A958(0, &unk_27D8251E0, 0x277CCD750);
  v5 = sub_22838FA90();
LABEL_6:
  v6 = v5;

  return v6;
}

uint64_t sub_228202364(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228204C58();
  return sub_22819482C(v6);
}

uint64_t sub_2282023D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22820242C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228204C58();
  return sub_22819482C(a1);
}

void (*sub_228202498(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282024FC;
}

void sub_2282024FC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_228204C58();
  }
}

id sub_228202530(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___dismissLabel] = 0;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton;
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v11 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v11, v12, 0xD000000000000012, 0x80000002283ABE90);
  v14 = v13;

  *&v4[v10] = v14;
  v15 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton;
  v16 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v16, v17, 0xD000000000000012, 0x80000002283ABEE0);
  v19 = v18;

  *&v4[v15] = v19;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___learnMoreLabel] = 0;
  v25.receiver = v4;
  v25.super_class = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4, 0xE000000000000000);
  sub_228203C38();
  sub_228203F28();
  sub_228205210(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_228397F40;
  v22 = sub_228391640();
  v23 = MEMORY[0x277D74DB8];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v20;
}

id sub_228202868(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___dismissLabel] = 0;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton;
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v5 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v5, v6, 0xD000000000000012, 0x80000002283ABE90);
  v8 = v7;

  *&v1[v4] = v8;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton;
  v10 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v10, v11, 0xD000000000000012, 0x80000002283ABEE0);
  v13 = v12;

  *&v1[v9] = v13;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___learnMoreLabel] = 0;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  v14 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1, 0xE000000000000000);

  if (v14)
  {
  }

  return v14;
}

uint64_t sub_228202AA8()
{
  sub_228203C38();
  sub_228203F28();
  sub_228205210(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F40;
  v1 = sub_228391640();
  v2 = MEMORY[0x277D74DB8];
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();
}

void sub_228202C48()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
    if ((sub_228392820() & 1) == 0)
    {
      sub_228203F28();
    }
  }
}

uint64_t sub_228202CB4()
{
  v1 = v0;
  sub_228205210(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = sub_228391330();
  v13 = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  v20.receiver = v1;
  v20.super_class = v13;
  objc_msgSendSuper2(&v20, sel__bridgedUpdateConfigurationUsingState_, v12);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v14 = sub_2283913A0();
    if ((*(*(v14 - 8) + 48))(v11, 1, v14))
    {
      sub_228205274(v11, v9);
      MEMORY[0x22AAB6420](v9);
      v15 = v11;
      return sub_228205308(v15);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v18 = v11;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v16 = sub_2283913A0();
    if ((*(*(v16 - 8) + 48))(v6, 1, v16))
    {
      sub_228205274(v6, v9);
      MEMORY[0x22AAB6420](v9);
      v15 = v6;
      return sub_228205308(v15);
    }

    v19 = [objc_opt_self() secondarySystemBackgroundColor];
    sub_228391370();
    v18 = v6;
  }

  return MEMORY[0x22AAB6420](v18);
}

id sub_228203008()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    v6 = *MEMORY[0x277CDA138];
    v7 = v5;
    sub_228392B00();
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];

    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_2282030F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = [objc_opt_self() tertiaryLabelColor];
  [v0 setTextColor_];

  [v0 setTextAlignment_];
  v2 = *MEMORY[0x277D12788];
  v16 = sub_228392000();
  v17 = v3;
  v4 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontSizeToFitWidth_];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v8];
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v9 = *MEMORY[0x277D76968];
  v10 = sub_228392AD0();
  [v4 setFont_];
  sub_22817A958(0, &qword_280DDB980, 0x277D755B8);
  result = MEMORY[0x22AAB6790](v10);
  if (result)
  {
    v12 = result;
    v13 = [result imageWithRenderingMode_];
    v14 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
    [v14 setImage_];
    sub_22817A958(0, &qword_27D8251D8, 0x277CCAB48);
    v15 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    [v4 setAttributedText_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_228203400()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D76918];
    v7 = *MEMORY[0x277D74420];
    v8 = sub_228392AD0();
    [v5 setFont_];

    v9 = *MEMORY[0x277D12788];
    v17 = sub_228392000();
    v18 = v10;
    v11 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

    MEMORY[0x22AAB5C80](0x614C656C7469742ELL, 0xEB000000006C6562);

    v12 = sub_228391FC0();

    [v11 setAccessibilityIdentifier_];

    v13 = [objc_opt_self() labelColor];
    [v11 setTextColor_];

    [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    [v11 setNumberOfLines_];
    [v11 setAdjustsFontForContentSizeCategory_];
    v14 = *(v4 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_22820362C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D769D0];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = *MEMORY[0x277D12788];
    v16 = sub_228392000();
    v17 = v9;
    v10 = v5;

    MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

    MEMORY[0x22AAB5C80](0x6C7469746275532ELL, 0xEE006C6562614C65);

    v11 = sub_228391FC0();

    [v10 setAccessibilityIdentifier_];

    v12 = [objc_opt_self() labelColor];
    [v10 setTextColor_];

    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setNumberOfLines_];
    [v10 setAdjustsFontForContentSizeCategory_];
    v13 = *(v4 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

id sub_228203854()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
    HKUIOnePixel();
    [v4 setSeparatorThickness_];
    v5 = [objc_opt_self() separatorColor];
    [v4 setColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_228203950(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_2282039B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = qword_280DDCF18;
  v2 = v0;
  if (v1 != -1)
  {
    swift_once();
  }

  sub_22838F0C0();
  v3 = sub_228391FC0();

  [v2 setText_];

  v4 = *MEMORY[0x277D12788];
  sub_228392000();
  v5 = v2;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283ABE40);

  MEMORY[0x22AAB5C80](0x6F4D6E7261654C2ELL, 0xEF6C6562614C6572);

  v6 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];

  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v7 = *MEMORY[0x277D76918];
  v8 = *MEMORY[0x277D74420];
  v9 = sub_228392AD0();
  [v5 setFont_];

  v10 = [objc_opt_self() systemBlueColor];
  [v5 setTextColor_];

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setAdjustsFontForContentSizeCategory_];

  return v5;
}

void sub_228203C38()
{
  v1 = v0;
  sub_228205210(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_2283913A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391390();
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  sub_228391370();
  v12 = *(v7 + 16);
  v24 = v10;
  v12(v5, v10, v6);
  v25 = v7;
  v26 = v6;
  (*(v7 + 56))(v5, 0, 1, v6);
  MEMORY[0x22AAB6420](v5);
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228399190;
  *(inited + 32) = sub_228203008();
  *(inited + 40) = sub_2282030D0();
  v14 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton];
  *(inited + 48) = v14;
  v15 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton];
  *(inited + 56) = v15;
  v16 = v14;
  v17 = v15;
  *(inited + 64) = sub_228203400();
  *(inited + 72) = sub_22820362C();
  *(inited + 80) = sub_228203854();
  v18 = 0;
  *(inited + 88) = sub_228203930();
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x22AAB6D80](v18, inited);
      goto LABEL_5;
    }

    if (v18 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v19 = *(inited + 8 * v18 + 32);
LABEL_5:
    v20 = v19;
    ++v18;
    v21 = [v1 contentView];
    [v21 addSubview_];

    if (v18 == 8)
    {
      swift_setDeallocating();
      v22 = *(inited + 16);
      swift_arrayDestroy();
      (*(v25 + 8))(v24, v26);
      return;
    }
  }

  __break(1u);
}

void sub_228203F28()
{
  v112 = objc_opt_self();
  v113 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_activeConstraints;
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_activeConstraints);
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);

  v2 = sub_228392190();

  [v112 deactivateConstraints_];

  sub_228180ED0();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22839BE50;
  v4 = sub_228203008();
  v5 = [v4 leadingAnchor];

  v6 = [v0 contentView];
  v7 = [v6 &selRef_logTimeChanged_ + 1];

  v8 = [v5 constraintEqualToAnchor:v7 constant:16.0];
  *(v3 + 32) = v8;
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView;
  v10 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___medmojiView) topAnchor];
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton;
  v12 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton) bottomAnchor];
  v13 = [v10 &selRef_resignFirstResponder + 6];

  *(v3 + 40) = v13;
  v14 = [*(v0 + v9) topAnchor];
  v15 = [*(v0 + v11) bottomAnchor];
  v16 = [v14 &selRef_resignFirstResponder + 6];

  *(v3 + 48) = v16;
  v17 = [*(v0 + v9) widthAnchor];
  v18 = [v17 constraintEqualToConstant_];

  *(v3 + 56) = v18;
  v19 = [*(v0 + v9) heightAnchor];
  v20 = [v19 constraintEqualToConstant_];

  *(v3 + 64) = v20;
  v21 = sub_2282030D0();
  v22 = [v21 trailingAnchor];

  v23 = [v0 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 &selRef_resignFirstResponder + 6];
  *(v3 + 72) = v25;
  v26 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___dismissLabel) topAnchor];
  v27 = [v0 contentView];
  v28 = [v27 topAnchor];

  v29 = [v26 &selRef_resignFirstResponder + 6];
  *(v3 + 80) = v29;
  v30 = [*(v0 + v11) leadingAnchor];
  v31 = [v0 contentView];
  v32 = [v31 leadingAnchor];

  v33 = [v30 &selRef_resignFirstResponder + 6];
  *(v3 + 88) = v33;
  v34 = [*(v0 + v11) trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintLessThanOrEqualToAnchor:v36 constant:16.0];
  *(v3 + 96) = v37;
  v38 = [*(v0 + v11) topAnchor];
  v39 = [v0 contentView];
  v40 = [v39 topAnchor];

  v41 = [v38 &selRef_resignFirstResponder + 6];
  *(v3 + 104) = v41;
  v42 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton;
  v43 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton) &selRef_logTimeChanged_ + 1];
  v44 = [v0 contentView];
  v45 = [v44 &selRef_logTimeChanged_ + 1];

  v46 = [v43 &selRef_resignFirstResponder + 6];
  *(v3 + 112) = v46;
  v47 = [*(v0 + v42) trailingAnchor];
  v48 = [v0 contentView];
  v49 = [v48 trailingAnchor];

  v50 = [v47 constraintLessThanOrEqualToAnchor:v49 constant:16.0];
  *(v3 + 120) = v50;
  v51 = [*(v0 + v42) topAnchor];
  v52 = [v0 contentView];
  v53 = [v52 topAnchor];

  v54 = [v51 &selRef_resignFirstResponder + 6];
  *(v3 + 128) = v54;
  v55 = sub_228203400();
  v56 = [v55 leadingAnchor];

  v57 = [*(v0 + v9) trailingAnchor];
  v58 = [v56 &selRef_resignFirstResponder + 6];

  *(v3 + 136) = v58;
  v59 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel;
  v60 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___titleLabel) trailingAnchor];
  v61 = [v0 contentView];
  v62 = [v61 trailingAnchor];

  v63 = [v60 &selRef_resignFirstResponder + 6];
  *(v3 + 144) = v63;
  v64 = [*(v0 + v59) topAnchor];
  v65 = [*(v0 + v11) bottomAnchor];
  v66 = [v64 &selRef_resignFirstResponder + 6];

  *(v3 + 152) = v66;
  v67 = [*(v0 + v59) topAnchor];
  v68 = [*(v0 + v42) bottomAnchor];
  v69 = [v67 &selRef_resignFirstResponder + 6];

  *(v3 + 160) = v69;
  v70 = sub_22820362C();
  v71 = [v70 leadingAnchor];

  v72 = [*(v0 + v59) leadingAnchor];
  v73 = [v71 constraintEqualToAnchor_];

  *(v3 + 168) = v73;
  v74 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel;
  v75 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel) trailingAnchor];
  v76 = [v0 contentView];
  v77 = [v76 trailingAnchor];

  v78 = [v75 &selRef_resignFirstResponder + 6];
  *(v3 + 176) = v78;
  v79 = [*(v0 + v74) topAnchor];
  v80 = [*(v0 + v59) bottomAnchor];
  v81 = [v79 &selRef_resignFirstResponder + 6];

  *(v3 + 184) = v81;
  v82 = sub_228203854();
  v83 = [v82 leadingAnchor];

  v84 = [*(v0 + v74) leadingAnchor];
  v85 = [v83 &selRef_freeTextMedicationName + 5];

  *(v3 + 192) = v85;
  v86 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView;
  v87 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___separatorView) trailingAnchor];
  v88 = [v0 contentView];
  v89 = [v88 trailingAnchor];

  v90 = [v87 &selRef_freeTextMedicationName + 5];
  *(v3 + 200) = v90;
  v91 = [*(v0 + v86) topAnchor];
  v92 = [*(v0 + v74) bottomAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:12.0];

  *(v3 + 208) = v93;
  v94 = sub_228203930();
  v95 = [v94 leadingAnchor];

  v96 = [*(v0 + v74) leadingAnchor];
  v97 = [v95 &selRef_freeTextMedicationName + 5];

  *(v3 + 216) = v97;
  v98 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___learnMoreLabel;
  v99 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___learnMoreLabel) trailingAnchor];
  v100 = [v0 contentView];
  v101 = [v100 trailingAnchor];

  v102 = [v99 constraintLessThanOrEqualToAnchor_];
  *(v3 + 224) = v102;
  v103 = [*(v0 + v98) centerYAnchor];
  v104 = [*(v0 + v86) bottomAnchor];
  v105 = [v103 constraintEqualToAnchor:v104 constant:22.0];

  *(v3 + 232) = v105;
  v106 = [v0 contentView];
  v107 = [v106 bottomAnchor];

  v108 = [*(v0 + v86) bottomAnchor];
  v109 = [v107 constraintEqualToAnchor:v108 constant:44.0];

  *(v3 + 240) = v109;
  v110 = *&v113[v0];
  *&v113[v0] = v3;

  v111 = *&v113[v0];

  v114 = sub_228392190();

  [v112 activateConstraints_];
}

void sub_228204C58()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228205210(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v9], v42);
  if (v42[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
    if (swift_dynamicCast())
    {
      v10 = v41;
      v11 = sub_228203008();
      v12 = [*(v10 + 16) medication];
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();

      sub_228390950();
      v13 = sub_228203400();
      v14 = [*(v10 + 16) medication];
      v42[0] = v14;
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      sub_228390F30();
      v15 = sub_228391FC0();

      [v13 setText_];
      v16 = sub_22820362C();
      v17 = *(v10 + 16);
      sub_228202258();
      if (!v18)
      {
        if (qword_27D823310 != -1)
        {
          swift_once();
        }

        sub_22838F0C0();
      }

      v19 = sub_228391FC0();

      [v16 setText_];

      v20 = *(v10 + 16);
      v21 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell____lazy_storage___subtitleLabel];
      v22 = v20;
      sub_228202258();
      v24 = v23;

      if (v24)
      {
      }

      sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
      v33 = *MEMORY[0x277D769D0];
      v34 = sub_228392AD0();
      [v21 setFont_];

      v35 = *(v10 + 16);
      v36 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_pregnancyTitleButton];
      [v36 setHidden_];

      v37 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_lactationTitleButton];
      v38 = *(v10 + 16);
      v39 = v37;
      [v39 setHidden_];

      return;
    }
  }

  else
  {
    sub_22819482C(v42);
  }

  if (HKShowSensitiveLogItems())
  {
    sub_228391150();
    v25 = v1;
    v26 = sub_2283911A0();
    v27 = sub_2283925C0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v41 = v29;
      *v28 = 136315138;
      sub_22817E6C8(&v1[v9], v42);
      sub_228181D50();
      v30 = sub_228392040();
      v32 = sub_2281C96FC(v30, v31, &v41);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_22816B000, v26, v27, "Incorrect view model for PregnancyLactationInteractionCriticalAlertItem: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAB7B80](v29, -1, -1);
      MEMORY[0x22AAB7B80](v28, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_228205210(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_228205274(uint64_t a1, uint64_t a2)
{
  sub_228205210(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228205308(uint64_t a1)
{
  sub_228205210(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_228205394()
{
  result = qword_27D825180;
  if (!qword_27D825180)
  {
    sub_22817A958(255, &qword_27D825178, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825180);
  }

  return result;
}

void sub_22820554C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2283911B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22820213C(a1);
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = sub_2282030D0();
  v14 = MEMORY[0x22AAB66C0](v12, v13, 36.0, 36.0);

  if ((v14 & 1) == 0)
  {

LABEL_7:
    sub_22817A958(0, &qword_27D825178, 0x277D75C68);
    sub_228205394();
    v19 = sub_228392470();
    v20 = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
    v33.receiver = v3;
    v33.super_class = v20;
    objc_msgSendSuper2(&v33, sel_touchesEnded_withEvent_, v19, a2);

    return;
  }

  v15 = OBJC_IVAR____TtC19HealthMedicationsUI46PregnancyLactationInteractionCriticalAlertCell_item;
  swift_beginAccess();
  sub_22817E6C8(v3 + v15, v31);
  if (v32)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for PregnancyLactationInteractionCriticalAlertItem();
    if (swift_dynamicCast())
    {
      v17 = v30[7];
      v16 = v30[8];

      v17(v18);

      return;
    }
  }

  else
  {
    sub_22819482C(v31);
  }

  if (HKShowSensitiveLogItems())
  {
    sub_228391150();
    v21 = v3;
    v22 = sub_2283911A0();
    v23 = sub_2283925C0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      sub_22817E6C8(v3 + v15, v31);
      sub_228181D50();
      v26 = sub_228392040();
      v28 = sub_2281C96FC(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_22816B000, v22, v23, "Incorrect view model for PregnancyLactationInteractionCriticalAlertItem: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAB7B80](v25, -1, -1);
      MEMORY[0x22AAB7B80](v24, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
  }

  else
  {
  }
}

id PregnancyLactationInteractionCriticalAlertCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PregnancyLactationInteractionCriticalAlertCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228205ADC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t type metadata accessor for MedicationSourceListToggleItem()
{
  result = qword_27D825210;
  if (!qword_27D825210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228205BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 104) = a5;
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  sub_2283922A0();
  *(v6 + 56) = sub_228392290();
  v8 = sub_228392250();
  *(v6 + 64) = v8;
  *(v6 + 72) = v7;

  return MEMORY[0x2822009F8](sub_228205C50, v8, v7);
}

uint64_t sub_228205C50()
{
  v1 = *(v0 + 40) + qword_27D8251F8;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 40);
    v4 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v6 = [*(v3 + qword_27D825208) source];
    *(v0 + 88) = v6;
    v7 = *(v4 + 8);
    v14 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v9[1] = sub_228205E1C;
    v10 = *(v0 + 104);

    return v14(v6, v10, ObjectType, v4);
  }

  else
  {
    v12 = *(v0 + 56);

    *(*(v0 + 40) + qword_27D825200) = 0;
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_228205E1C(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a2;
  v4[2] = v2;
  v4[3] = a1;
  v5 = v3[12];
  v6 = v3[11];
  v7 = v3[10];
  v11 = *v2;
  *(v4 + 105) = a2;

  swift_unknownObjectRelease();

  v8 = v3[9];
  v9 = v3[8];

  return MEMORY[0x2822009F8](sub_228205F80, v9, v8);
}

uint64_t sub_228205F80()
{
  v1 = *(v0 + 105);
  v2 = *(v0 + 56);

  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 48);
    v5 = *(v0 + 104);
    sub_228390180();
    sub_2282063BC(v3, 1);
    v6 = v5 ^ 1;
  }

  else
  {
    v6 = *(v0 + 104);
  }

  *(*(v0 + 40) + qword_27D8251F0) = v6 & 1;
  *(*(v0 + 40) + qword_27D825200) = 0;
  v7 = *(v0 + 8);

  return v7();
}

void sub_22820606C()
{
  sub_22818B730(v0 + qword_27D8251F8);
  v1 = *(v0 + qword_27D825208);
}

uint64_t sub_2282060AC()
{
  v0 = _s19HealthMedicationsUI38InteractionFactorsLifestyleOptionsItemCfd_0();
  v1 = qword_27D8251F8;

  sub_22818B730(v2 + v1);
  v3 = *(v0 + qword_27D825208);

  return swift_deallocClassInstance();
}

uint64_t sub_228206148(char a1, void *a2)
{
  v3 = v2;
  sub_228206298();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D825200) = 1;
  v10 = sub_2283922D0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_2283922A0();

  v11 = a2;
  v12 = sub_228392290();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  *(v13 + 32) = v3;
  *(v13 + 40) = a1;
  *(v13 + 48) = v11;
  sub_2281DC568(0, 0, v9, &unk_22839BFD8, v13);
}

void sub_228206298()
{
  if (!qword_27D827C30)
  {
    sub_2283922D0();
    v0 = sub_228392F00();
    if (!v1)
    {
      atomic_store(v0, &qword_27D827C30);
    }
  }
}

uint64_t sub_2282062F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22819D87C;

  return sub_228205BB4(a1, v4, v5, v6, v7, v8);
}

void sub_2282063BC(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t type metadata accessor for ColorSelectionViewController()
{
  result = qword_27D825258;
  if (!qword_27D825258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22820647C(uint64_t a1)
{
  v225 = a1;
  sub_228199F10();
  v182 = v1;
  v190 = *(v1 - 8);
  v2 = *(v190 + 64);
  MEMORY[0x28223BE20](v1);
  v179 = &v174 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228208EB0(0, &qword_27D825268, sub_2281CBD18);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v224 = &v174 - v6;
  sub_2281CBD18();
  v217 = v7;
  v200 = *(v7 - 8);
  v8 = *(v200 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v176 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v178 = &v174 - v12;
  MEMORY[0x28223BE20](v11);
  v207 = &v174 - v13;
  v209 = sub_228390E20();
  v211 = *(v209 - 8);
  v14 = *(v211 + 64);
  MEMORY[0x28223BE20](v209);
  v210 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228208B64();
  v17 = v16;
  v214 = *(v16 - 8);
  v18 = *(v214 + 64);
  MEMORY[0x28223BE20](v16);
  v208 = (&v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228208EB0(0, &qword_27D825278, sub_228208B64);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v220 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v218 = &v174 - v24;
  v197 = sub_2283908E0();
  v199 = *(v197 - 8);
  v25 = *(v199 + 64);
  MEMORY[0x28223BE20](v197);
  v198 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228208EB0(0, &qword_27D8238A8, MEMORY[0x277D11640]);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v216 = &v174 - v29;
  v30 = sub_2283909E0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = MEMORY[0x28223BE20](v30);
  v195 = &v174 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v36 = &v174 - v35;
  sub_228208EB0(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v188 = &v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v219 = &v174 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v215 = (&v174 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v174 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v174 - v48;
  v50 = qword_27D825228;
  v51 = sub_228390D50();
  v52 = *(v51 - 8);
  v53 = *(v52 + 56);
  v186 = v52 + 56;
  v185 = v53;
  v53(v49, 1, 1, v51);
  sub_2281E4AF0();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v184 = v54;
  swift_allocObject();
  v187 = v49;
  v57 = v201;
  *(v57 + v50) = sub_228391890();
  *(v57 + qword_27D825248) = MEMORY[0x277D84FA0];
  sub_2281BF64C(v225, v47);
  v221 = *(v52 + 48);
  v222 = v52 + 48;
  v58 = v221(v47, 1, v51);
  v223 = v51;
  v196 = v30;
  if (v58 == 1)
  {
    sub_228208C3C(v47, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v59 = v216;
    (*(v31 + 56))(v216, 1, 1, v30);
    result = sub_2283909C0();
    if (!*(result + 16))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    (*(v31 + 16))(v36, result + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v30);

    if ((*(v31 + 48))(v59, 1, v30) != 1)
    {
      sub_228208C3C(v59, &qword_27D8238A8, MEMORY[0x277D11640]);
    }
  }

  else
  {
    v61 = v216;
    sub_228390D40();
    (*(v52 + 8))(v47, v51);
    (*(v31 + 56))(v61, 0, 1, v30);
    (*(v31 + 32))(v36, v61, v30);
  }

  sub_228208C98();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = sub_228391890();
  v66 = qword_27D825220;
  *(v57 + qword_27D825220) = v65;
  result = sub_2283908A0();
  v67 = v197;
  v68 = v199;
  v69 = v220;
  if (!*(result + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v194 = v31;
  v183 = v66;
  v189 = v52;
  v70 = (*(v199 + 80) + 32) & ~*(v199 + 80);
  v71 = v199 + 16;
  v72 = *(v199 + 16);
  v73 = v198;
  v72(v198, result + v70, v197);

  v193 = sub_2283908D0();
  v76 = *(v68 + 8);
  v74 = v68 + 8;
  v75 = v76;
  v76(v73, v67);
  result = sub_2283908A0();
  if (!*(result + 16))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v192 = v70;
  v181 = v72;
  v72(v73, result + v70, v67);

  v191 = sub_2283908D0();
  v75(v73, v67);
  v77 = v215;
  sub_2281BF64C(v225, v215);
  v78 = v223;
  v79 = v221(v77, 1, v223);
  v80 = v75;
  v199 = v74;
  v180 = v71;
  if (v79 == 1)
  {
    sub_228208C3C(v77, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v81 = v201;
LABEL_40:
    v129 = v193;
    v228 = v193;
    sub_228208BD0(0, &qword_27D824BC8, &qword_280DDB990, 0x277D75348, sub_22817A958);
    v131 = v130;
    v132 = *(v130 + 48);
    v133 = *(v130 + 52);
    swift_allocObject();
    v134 = v129;
    v135 = sub_228391890();
    v136 = qword_27D825238;
    *(v81 + qword_27D825238) = v135;
    v137 = v191;
    v228 = v191;
    v138 = *(v131 + 48);
    v139 = *(v131 + 52);
    swift_allocObject();
    v220 = v137;
    v140 = sub_228391890();
    v141 = qword_27D825240;
    *(v81 + qword_27D825240) = v140;
    v142 = v188;
    sub_2281BF64C(v225, v188);
    v143 = v223;
    v144 = v221(v142, 1, v223);
    v145 = v198;
    v146 = v192;
    v224 = v134;
    if (v144 != 1)
    {
      v150 = v179;
      sub_228390D00();
      (*(v189 + 8))(v142, v143);
      v151 = v182;
      v149 = sub_228391E30();
      (*(v190 + 8))(v150, v151);
      goto LABEL_44;
    }

    sub_228208C3C(v142, &qword_280DDBD20, MEMORY[0x277D116C8]);
    result = sub_2283908B0();
    if (*(result + 16))
    {
      v147 = result + v146;
      v148 = v197;
      v181(v145, v147, v197);

      v149 = sub_2283908D0();
      v80(v145, v148);
LABEL_44:
      v152 = v143;
      v228 = v149;
      v153 = *(v131 + 48);
      v154 = *(v131 + 52);
      swift_allocObject();
      v155 = sub_228391890();
      *(v81 + qword_27D825230) = v155;
      v156 = *(v81 + v183);
      v157 = *(v81 + v136);
      v158 = *(v81 + v141);
      v159 = type metadata accessor for VisualizationModificationDataSource();
      v160 = *(v159 + 48);
      v161 = *(v159 + 52);
      v162 = swift_allocObject();
      v163 = qword_27D8280A8;
      v185(v187, 1, 1, v152);
      v164 = *(v184 + 48);
      v165 = *(v184 + 52);
      swift_allocObject();

      *(v162 + v163) = sub_228391890();
      *(v162 + qword_27D8280D0) = MEMORY[0x277D84FA0];
      *(v162 + qword_27D8280B0) = v156;
      *(v162 + qword_27D8280B8) = v155;
      *(v162 + qword_27D8280C0) = v157;
      *(v162 + qword_27D8280C8) = v158;

      v166 = v195;
      sub_228391870();
      sub_228391870();
      v167 = v228;
      sub_228391870();
      v168 = v227;
      sub_228391870();
      v169 = v226;
      sub_2283478F0(v166, v167, v168, v226);

      (*(v194 + 8))(v166, v196);
      *(swift_allocObject() + 16) = 1;
      v170 = sub_228390380();

      sub_228344684();

      *(v201 + qword_27D825250) = v170;
      sub_2283901F0();
      sub_228182110();
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_228397F40;
      v172 = MEMORY[0x277D10F80];
      *(v171 + 32) = v170;
      *(v171 + 40) = v172;

      sub_228390220();
      v173 = sub_228390480();
      sub_228207D94();

      sub_228208C3C(v225, &qword_280DDBD20, MEMORY[0x277D116C8]);
      return v173;
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v177 = v75;
  v82 = v195;
  sub_228390D40();
  v83 = *(v189 + 8);
  v204 = v189 + 8;
  v203 = v83;
  v83(v77, v78);
  v84 = sub_2283909D0();
  (*(v194 + 8))(v82, v196);
  v85 = sub_228343CB0(v84);

  v86 = 0;
  v205 = v211 + 16;
  v206 = v85;
  v87 = *(v85 + 16);
  v215 = (v214 + 48);
  v216 = (v214 + 56);
  v214 = v211 + 32;
  v213 = (v200 + 56);
  v202 = (v200 + 48);
  v175 = (v190 + 48);
  v174 = (v190 + 8);
  v212 = (v211 + 8);
  v88 = v224;
  v89 = v209;
  v90 = v210;
  while (2)
  {
    v91 = v219;
    while (1)
    {
      if (v86 == v87)
      {
        v92 = 1;
        v86 = v87;
      }

      else
      {
        if ((v86 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (v86 >= *(v206 + 16))
        {
          goto LABEL_46;
        }

        v93 = v211;
        v94 = v206 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v86;
        v95 = *(v17 + 48);
        v96 = v208;
        *v208 = v86;
        (*(v93 + 16))(&v96[v95], v94, v89);
        v97 = v96;
        v91 = v219;
        sub_228208D80(v97, v69, sub_228208B64);
        v92 = 0;
        ++v86;
        v88 = v224;
      }

      (*v216)(v69, v92, 1, v17);
      v98 = v69;
      v99 = v218;
      sub_228208D00(v98, v218);
      if ((*v215)(v99, 1, v17) == 1)
      {

        v81 = v201;
        v80 = v177;
        goto LABEL_40;
      }

      v100 = v91;
      v101 = *v99;
      (*v214)(v90, &v99[*(v17 + 48)], v89);
      sub_2281BF64C(v225, v100);
      v102 = v223;
      if (v221(v100, 1, v223) == 1)
      {
        (*v212)(v90, v89);
        sub_228208C3C(v100, &qword_280DDBD20, MEMORY[0x277D116C8]);
        (*v213)(v88, 1, 1, v217);
        v69 = v220;
        v91 = v100;
        goto LABEL_13;
      }

      v103 = sub_228390D10();
      v203(v100, v102);
      if (*(v103 + 16))
      {
        v90 = v210;
        v104 = sub_2281A79C8(v210);
        v105 = v207;
        if (v106)
        {
          sub_228208DE8(*(v103 + 56) + *(v200 + 72) * v104, v224, sub_2281CBD18);
          v107 = 0;
        }

        else
        {
          v107 = 1;
        }
      }

      else
      {
        v107 = 1;
        v105 = v207;
        v90 = v210;
      }

      v69 = v220;

      v88 = v224;
      v108 = v107;
      v109 = v217;
      (*v213)(v224, v108, 1, v217);
      if ((*v202)(v88, 1, v109) != 1)
      {
        break;
      }

      v89 = v209;
      (*v212)(v90, v209);
      v91 = v219;
LABEL_13:
      result = sub_228208C3C(v88, &qword_27D825268, sub_2281CBD18);
    }

    sub_228208D80(v88, v105, sub_2281CBD18);
    v110 = v182;
    if (!v101)
    {
      v111 = v105;
      v112 = v178;
      sub_228208DE8(v111, v178, sub_2281CBD18);
      v113 = (*v175)(v112, 1, v110);
      v114 = v181;
      if (v113 == 1)
      {
        sub_228208E50(v112, sub_2281CBD18);
        result = sub_2283908A0();
        if (!*(result + 16))
        {
          goto LABEL_51;
        }

        v115 = v198;
        v116 = v197;
        v114(v198, result + v192, v197);

        v117 = sub_2283908D0();

        v177(v115, v116);
        v193 = v117;
        goto LABEL_34;
      }

      v118 = v110;
      v119 = sub_228391E30();
      (*v174)(v112, v118);

      v120 = &v225;
LABEL_33:
      *(v120 - 32) = v119;
LABEL_34:
      v89 = v209;
      sub_228208E50(v207, sub_2281CBD18);
      result = (*v212)(v90, v89);
      v88 = v224;
      continue;
    }

    break;
  }

  v121 = v105;
  v122 = v176;
  sub_228208DE8(v121, v176, sub_2281CBD18);
  v123 = (*v175)(v122, 1, v110);
  v124 = v181;
  if (v123 != 1)
  {
    v128 = v110;
    v119 = sub_228391E30();
    (*v174)(v122, v128);

    v120 = &v223;
    goto LABEL_33;
  }

  sub_228208E50(v122, sub_2281CBD18);
  result = sub_2283908A0();
  if (*(result + 16))
  {
    v125 = v198;
    v126 = v197;
    v124(v198, result + v192, v197);

    v127 = sub_2283908D0();

    v177(v125, v126);
    v191 = v127;
    goto LABEL_34;
  }

LABEL_52:
  __break(1u);
  return result;
}

void sub_228207B20()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ColorSelectionViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 setPreservesSuperviewLayoutMargins_];

    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() systemBackgroundColor];
      [v4 setBackgroundColor_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_228207C00(void *a1)
{
  v1 = a1;
  sub_228207B20();
}

void sub_228207C48(uint64_t a1)
{
  sub_228208EB0(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  v6 = qword_27D825228;
  v7 = sub_228390D50();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_2281E4AF0();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  *(a1 + v6) = sub_228391890();
  *(a1 + qword_27D825248) = MEMORY[0x277D84FA0];
  sub_228393300();
  __break(1u);
}

uint64_t sub_228207D94()
{
  v17 = MEMORY[0x277D85248];
  sub_228208EB0(0, &qword_280DDBAD0, MEMORY[0x277D85248]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  sub_228208F04();
  v18 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + qword_27D825250);
  v11 = qword_27D8280A8;
  swift_beginAccess();
  v19 = *(v10 + v11);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v12 = sub_228392790();
  v20 = v12;
  v13 = sub_228392730();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_2281E4AF0();
  sub_228208FD8(&qword_27D825288, sub_2281E4AF0);
  sub_2281A1504();
  sub_228391A70();
  sub_228208C3C(v4, &qword_280DDBAD0, v17);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228208FD8(&qword_27D825290, sub_228208F04);
  v14 = v18;
  sub_228391AC0();

  (*(v6 + 8))(v9, v14);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void sub_2282080C4(uint64_t a1)
{
  sub_228208EB0(0, &qword_280DDBD20, MEMORY[0x277D116C8]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = sub_228390D50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_2281BF64C(a1, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_228208C3C(v8, &qword_280DDBD20, MEMORY[0x277D116C8]);
    }

    else
    {
      (*(v10 + 32))(v13, v8, v9);
      v16 = v15;
      v17 = sub_228390490();

      if (v17)
      {
        sub_2283902C0();

        v18 = *&v16[qword_27D825228];
        (*(v10 + 16))(v6, v13, v9);
        (*(v10 + 56))(v6, 0, 1, v9);

        sub_228391850();

        sub_228208C3C(v6, &qword_280DDBD20, MEMORY[0x277D116C8]);
        (*(v10 + 8))(v13, v9);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_22820837C(void *a1)
{
  v2 = v1;
  sub_228208EB0(0, &qword_27D824BC0, sub_228199F78);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - v6;
  sub_228199F78();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22838F710();
  [a1 deselectItemAtIndexPath:v14 animated:1];

  v15 = sub_22838F710();
  v32 = [a1 cellForItemAtIndexPath_];

  if (!v32)
  {
    return;
  }

  type metadata accessor for ColorCell();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    v20 = v32;

    return;
  }

  v17 = OBJC_IVAR____TtC19HealthMedicationsUI9ColorCell_item;
  v18 = v16;
  swift_beginAccess();
  sub_228208DE8(v18 + v17, v33, sub_228181D50);
  if (!v33[3])
  {

    sub_228208E50(v33, sub_228181D50);
    (*(v10 + 56))(v7, 1, 1, v9);
    goto LABEL_10;
  }

  sub_22818217C(0, &qword_280DDCD60);
  v19 = swift_dynamicCast();
  (*(v10 + 56))(v7, v19 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {

LABEL_10:
    sub_228208C3C(v7, &qword_27D824BC0, sub_228199F78);
    return;
  }

  sub_228208D80(v7, v13, sub_228199F78);
  v21 = *(v2 + qword_27D825250);
  type metadata accessor for VisualizationModificationDataSource();

  v22 = sub_22838FD40();

  v23 = sub_22838F750();
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v23 >= *(v22 + 16))
  {
LABEL_30:
    __break(1u);
    return;
  }

  v24 = v22 + 16 * v23;
  v26 = *(v24 + 32);
  v25 = *(v24 + 40);

  if (v26 == 0xD000000000000011 && 0x80000002283AA970 == v25 || (sub_228393460() & 1) != 0)
  {

    v27 = qword_27D825238;
  }

  else if (v26 == 0xD000000000000012 && 0x80000002283AA990 == v25 || (sub_228393460() & 1) != 0)
  {

    v27 = qword_27D825240;
  }

  else
  {
    if (v26 == 0x756F72676B636162 && v25 == 0xEF726F6C6F43646ELL)
    {
    }

    else
    {
      v30 = sub_228393460();

      if ((v30 & 1) == 0)
      {
        sub_228208E50(v13, sub_228199F78);

        return;
      }
    }

    v27 = qword_27D825230;
  }

  v28 = *(v2 + v27);

  v29 = sub_2283908D0();
  v33[0] = v29;
  sub_228391850();

  sub_228208E50(v13, sub_228199F78);
}

uint64_t sub_22820889C(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_22838F760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22838F720();
  v10 = a3;
  v11 = a1;
  sub_22820837C(v10);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2282089F8()
{
  v1 = *(v0 + qword_27D825220);

  v2 = *(v0 + qword_27D825228);

  v3 = *(v0 + qword_27D825230);

  v4 = *(v0 + qword_27D825238);

  v5 = *(v0 + qword_27D825240);

  v6 = *(v0 + qword_27D825248);

  v7 = *(v0 + qword_27D825250);
}

id sub_228208A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ColorSelectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_228208AC0(uint64_t a1)
{
  v2 = *(a1 + qword_27D825220);

  v3 = *(a1 + qword_27D825228);

  v4 = *(a1 + qword_27D825230);

  v5 = *(a1 + qword_27D825238);

  v6 = *(a1 + qword_27D825240);

  v7 = *(a1 + qword_27D825248);

  v8 = *(a1 + qword_27D825250);
}

void sub_228208B64()
{
  if (!qword_27D825270)
  {
    sub_228390E20();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D825270);
    }
  }
}

void sub_228208BD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_228391880();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_228208C3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_228208EB0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_228208C98()
{
  if (!qword_27D824BD0)
  {
    sub_2283909E0();
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D824BD0);
    }
  }
}

uint64_t sub_228208D00(uint64_t a1, uint64_t a2)
{
  sub_228208EB0(0, &qword_27D825278, sub_228208B64);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228208D80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_228208DE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_228208E50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228208EB0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_228208F04()
{
  if (!qword_27D825280)
  {
    sub_2281E4AF0();
    sub_22817A958(255, &qword_280DDCEE0, 0x277D85C78);
    sub_228208FD8(&qword_27D825288, sub_2281E4AF0);
    sub_2281A1504();
    v0 = sub_2283917D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27D825280);
    }
  }
}

uint64_t sub_228208FD8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_228209020()
{
  sub_22820D768(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_228392D80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_228392DE0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  sub_228392DA0();
  (*(v5 + 104))(v8, *MEMORY[0x277D75028], v4);
  sub_228392CB0();
  v15 = [objc_opt_self() systemBlueColor];
  sub_228392D60();
  sub_22827CAB8();
  sub_228392D90();
  (*(v10 + 16))(v3, v13, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  sub_228392E10();
  (*(v10 + 8))(v13, v9);
  return v14;
}

uint64_t sub_2282092B4@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_22820D768(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v33 - v5;
  v34 = sub_2283912D0();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391280();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D74AE0];
  sub_22820D768(0, &qword_280DDBCE0, MEMORY[0x277D74AE0], v2);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell____lazy_storage___plusAccessory;
  swift_beginAccess();
  sub_22820DD74(v1 + v22, v21, &qword_280DDBCE0, v14);
  v23 = sub_2283912F0();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v21, 1, v23) != 1)
  {
    return (*(v24 + 32))(v38, v21, v23);
  }

  sub_22820DDF4(v21, &qword_280DDBCE0, MEMORY[0x277D74AE0]);
  v33 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_logButton);
  sub_22820DC6C();
  v26 = &v9[*(v25 + 48)];
  v27 = *MEMORY[0x277D74A98];
  v28 = sub_228391220();
  (*(*(v28 - 8) + 104))(v9, v27, v28);
  *v26 = sub_2281AF1B4;
  v26[1] = 0;
  (*(v6 + 104))(v9, *MEMORY[0x277D74AD8], v34);
  v29 = sub_228391230();
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  v30 = v33;
  sub_228391270();
  v31 = v38;
  sub_2283911D0();
  (*(v35 + 8))(v13, v36);
  (*(v24 + 16))(v19, v31, v23);
  (*(v24 + 56))(v19, 0, 1, v23);
  swift_beginAccess();
  sub_22820DCE0(v19, v1 + v22);
  return swift_endAccess();
}

uint64_t sub_228209754()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v66 = *(v2 - 8);
  v67 = v2;
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_22820D768(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v61 - v9;
  v65 = sub_2283913A0();
  v63 = *(v65 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_228391590();
  v62 = *(v64 - 8);
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v64);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22820D768(0, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem, v6);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for MedicationsRecordDoseItem(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22820DAD8(&v1[v26], v69, sub_228181D50);
  if (v70)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v27 = swift_dynamicCast();
    (*(v22 + 56))(v20, v27 ^ 1u, 1, v21);
    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      v28 = sub_22820DA14(v20, v25);
      MEMORY[0x22AAB64A0](v28);
      v29 = *(v25 + 2);
      v30 = *(v25 + 3);

      sub_228391540();
      v31 = [v1 traitCollection];
      LODWORD(v30) = [v31 userInterfaceStyle] == 2;

      v32 = dbl_22839C000[v30];
      sub_228391390();
      v33 = objc_opt_self();
      v34 = [v33 systemCyanColor];
      v35 = [v34 colorWithAlphaComponent_];

      v36 = v13;
      v61 = v13;
      sub_228391370();
      v37 = v63;
      v38 = v36;
      v39 = v65;
      (*(v63 + 16))(v10, v38, v65);
      (*(v37 + 56))(v10, 0, 1, v39);
      MEMORY[0x22AAB6420](v10);
      sub_22820D768(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      v40 = *(sub_2283912F0() - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_228397F40;
      sub_2282092B4(v43 + v42);
      sub_2283928F0();
      v44 = v25[*(v21 + 36)];
      v45 = &selRef_labelColor;
      if (!v25[*(v21 + 36)])
      {
        v45 = &selRef_secondaryLabelColor;
      }

      v46 = [v33 *v45];
      v47 = sub_228391450();
      sub_228391420();
      v47(v69, 0);
      v48 = sub_228391450();
      sub_2283913E0();
      v48(v69, 0);
      [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_logButton] setEnabled_];
      v49 = v64;
      v70 = v64;
      v71 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
      v51 = v62;
      (*(v62 + 16))(boxed_opaque_existential_1, v16, v49);
      MEMORY[0x22AAB6400](v69);
      (*(v37 + 8))(v61, v65);
      (*(v51 + 8))(v16, v49);
      return sub_22820DA78(v25, type metadata accessor for MedicationsRecordDoseItem);
    }
  }

  else
  {
    sub_22820DA78(v69, sub_228181D50);
    (*(v22 + 56))(v20, 1, 1, v21);
  }

  sub_22820DDF4(v20, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem);
  sub_228391150();
  v53 = v1;
  v54 = sub_2283911A0();
  v55 = sub_2283925C0();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v68 = v57;
    *v56 = 136315138;
    sub_22820DAD8(&v1[v26], v69, sub_228181D50);
    sub_228181D50();
    v58 = sub_228392040();
    v60 = sub_2281C96FC(v58, v59, &v68);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_22816B000, v54, v55, "Incorrect view model for MedicationsRecordDoseItem: %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x22AAB7B80](v57, -1, -1);
    MEMORY[0x22AAB7B80](v56, -1, -1);
  }

  return (*(v66 + 8))(v5, v67);
}

uint64_t sub_228209FCC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v57 = *(v2 - 8);
  v58 = v2;
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_22820D768(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v56 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  sub_22820D768(0, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem, v6);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v56 - v18;
  v20 = type metadata accessor for MedicationsRecordDoseItem(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_228391330();
  v26 = type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  v62.receiver = v1;
  v62.super_class = v26;
  objc_msgSendSuper2(&v62, sel__bridgedUpdateConfigurationUsingState_, v25);

  [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_logButton] addTarget:v1 action:sel_didTapAccessory forControlEvents:64];
  v27 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22820DAD8(&v1[v27], v60, sub_228181D50);
  if (!v61)
  {
    sub_22820DA78(v60, sub_228181D50);
    (*(v21 + 56))(v19, 1, 1, v20);
    goto LABEL_8;
  }

  sub_2281810DC(0, &qword_280DDCD60);
  v28 = swift_dynamicCast();
  (*(v21 + 56))(v19, v28 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
LABEL_8:
    sub_22820DDF4(v19, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem);
    sub_228391150();
    v34 = v1;
    v35 = sub_2283911A0();
    v36 = sub_2283925C0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v59 = v38;
      *v37 = 136315138;
      sub_22820DAD8(&v1[v27], v60, sub_228181D50);
      sub_228181D50();
      v39 = sub_228392040();
      v41 = sub_2281C96FC(v39, v40, &v59);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_22816B000, v35, v36, "Incorrect view model for MedicationsRecordDoseItem: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAB7B80](v38, -1, -1);
      MEMORY[0x22AAB7B80](v37, -1, -1);
    }

    return (*(v57 + 8))(v5, v58);
  }

  v29 = v19;
  v30 = v24;
  sub_22820DA14(v29, v24);
  if (v24[*(v20 + 36)])
  {
    if ([v1 isHighlighted])
    {
      MEMORY[0x22AAB6410]();
      v31 = sub_2283913A0();
      if ((*(*(v31 - 8) + 48))(v15, 1, v31))
      {
        v32 = MEMORY[0x277D74BD0];
        sub_22820DD74(v15, v13, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
        MEMORY[0x22AAB6420](v13);
        sub_22820DA78(v24, type metadata accessor for MedicationsRecordDoseItem);
        v33 = v15;
        return sub_22820DDF4(v33, &unk_280DDBCD0, v32);
      }

      sub_22817A958(0, &qword_280DDB990, 0x277D75348);
      v45 = objc_opt_self();
      v46 = [v45 systemCyanColor];
      v47 = [v46 colorWithAlphaComponent_];

      v48 = [v45 systemCyanColor];
      v49 = [v48 colorWithAlphaComponent_];

      sub_228392B90();
      sub_228391370();
      v50 = v15;
    }

    else
    {
      v43 = v56;
      MEMORY[0x22AAB6410]();
      v44 = sub_2283913A0();
      if ((*(*(v44 - 8) + 48))(v43, 1, v44))
      {
        v32 = MEMORY[0x277D74BD0];
        sub_22820DD74(v43, v13, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
        MEMORY[0x22AAB6420](v13);
        sub_22820DA78(v30, type metadata accessor for MedicationsRecordDoseItem);
        v33 = v43;
        return sub_22820DDF4(v33, &unk_280DDBCD0, v32);
      }

      sub_22817A958(0, &qword_280DDB990, 0x277D75348);
      v51 = objc_opt_self();
      v52 = [v51 systemCyanColor];
      v53 = [v52 colorWithAlphaComponent_];

      v54 = [v51 systemCyanColor];
      v55 = [v54 colorWithAlphaComponent_];

      sub_228392B90();
      sub_228391370();
      v50 = v43;
    }

    MEMORY[0x22AAB6420](v50);
  }

  return sub_22820DA78(v30, type metadata accessor for MedicationsRecordDoseItem);
}

uint64_t sub_22820A904()
{
  v1[15] = v0;
  v2 = sub_2283911B0();
  v1[16] = v2;
  v3 = *(v2 - 8);
  v1[17] = v3;
  v4 = *(v3 + 64) + 15;
  v1[18] = swift_task_alloc();
  sub_22820D768(0, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[19] = swift_task_alloc();
  v7 = type metadata accessor for MedicationsRecordDoseItem(0);
  v1[20] = v7;
  v8 = *(v7 - 8);
  v1[21] = v8;
  v9 = *(v8 + 64) + 15;
  v1[22] = swift_task_alloc();
  sub_2283922A0();
  v1[23] = sub_228392290();
  v11 = sub_228392250();
  v1[24] = v11;
  v1[25] = v10;

  return MEMORY[0x2822009F8](sub_22820AAB0, v11, v10);
}

uint64_t sub_22820AAB0()
{
  v37 = v0;
  v1 = v0[21];
  v2 = v0[15];
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22820DAD8(v2 + v3, (v0 + 2), sub_228181D50);
  v4 = (v1 + 56);
  if (!v0[5])
  {
    v10 = v0[23];
    v11 = v0[19];
    v12 = v0[20];

    sub_22820DA78((v0 + 2), sub_228181D50);
    (*v4)(v11, 1, 1, v12);
    goto LABEL_5;
  }

  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  sub_2281810DC(0, &qword_280DDCD60);
  v8 = swift_dynamicCast();
  (*v4)(v7, v8 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v9 = v0[23];

LABEL_5:
    v13 = v0[18];
    v14 = v0[15];
    sub_22820DDF4(v0[19], qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem);
    sub_228391150();
    v15 = v14;
    v16 = sub_2283911A0();
    v17 = sub_2283925C0();

    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[17];
    v19 = v0[18];
    v21 = v0[16];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136315138;
      sub_22820DAD8(v2 + v3, (v0 + 7), sub_228181D50);
      sub_228181D50();
      v24 = sub_228392040();
      v26 = sub_2281C96FC(v24, v25, &v36);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_22816B000, v16, v17, "Incorrect view model for MedicationsRecordDoseItem: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AAB7B80](v23, -1, -1);
      MEMORY[0x22AAB7B80](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    v27 = v0[22];
    v28 = v0[18];
    v29 = v0[19];

    v30 = v0[1];
    v31 = MEMORY[0x277D84F90];

    return v30(v31);
  }

  v33 = v0[22];
  sub_22820DA14(v0[19], v33);
  v0[26] = [objc_allocWithZone(MEMORY[0x277D11578]) initWithHealthStore_];
  v34 = *(MEMORY[0x277D11798] + 4);
  v35 = swift_task_alloc();
  v0[27] = v35;
  *v35 = v0;
  v35[1] = sub_22820AE6C;

  return MEMORY[0x28216ABE8]();
}

uint64_t sub_22820AE6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v7 = *(v3 + 200);
  v8 = *(v3 + 192);
  if (v1)
  {
    v9 = sub_22820B1EC;
  }

  else
  {
    v9 = sub_22820AFB0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

char *sub_22820AFB0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 184);

  if (v1 >> 62)
  {
    if (*(v0 + 224) < 0)
    {
      v20 = *(v0 + 224);
    }

    v3 = sub_2283930D0();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:
    v21 = *(v0 + 224);
    v22 = *(v0 + 208);
    v23 = *(v0 + 176);

    sub_22820DA78(v23, type metadata accessor for MedicationsRecordDoseItem);
    v6 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_3:
  v29 = MEMORY[0x277D84F90];
  result = sub_2281C9E44(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v29;
  v7 = v1 & 0xC000000000000001;
  v28 = *(v0 + 224) + 32;
  do
  {
    if (v7)
    {
      v8 = MEMORY[0x22AAB6D80](v5, *(v0 + 224));
    }

    else
    {
      v8 = *(v28 + 8 * v5);
    }

    v9 = v8;
    v10 = [v8 medicationIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = sub_228392000();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v16 = *(v29 + 16);
    v15 = *(v29 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2281C9E44((v15 > 1), v16 + 1, 1);
    }

    ++v5;
    *(v29 + 16) = v16 + 1;
    v17 = v29 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
  }

  while (v3 != v5);
  v18 = *(v0 + 224);
  v19 = *(v0 + 176);

  sub_22820DA78(v19, type metadata accessor for MedicationsRecordDoseItem);
LABEL_19:
  v24 = *(v0 + 176);
  v26 = *(v0 + 144);
  v25 = *(v0 + 152);

  v27 = *(v0 + 8);

  return v27(v6);
}

uint64_t sub_22820B1EC()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[18];
  v4 = v0[19];

  sub_22820DA78(v3, type metadata accessor for MedicationsRecordDoseItem);

  v6 = v0[1];
  v7 = v0[29];

  return v6();
}

uint64_t sub_22820B298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = sub_2283911B0();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  sub_22820D768(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v11 = sub_22838F440();
  v5[14] = v11;
  v12 = *(v11 - 8);
  v5[15] = v12;
  v13 = *(v12 + 64) + 15;
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = sub_2283922A0();
  v5[20] = sub_228392290();
  v14 = swift_task_alloc();
  v5[21] = v14;
  *v14 = v5;
  v14[1] = sub_22820B47C;

  return sub_22820A904();
}

uint64_t sub_22820B47C(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;
  v6 = *(*v2 + 168);
  v7 = *v2;
  *(v5 + 176) = a1;
  *(v5 + 184) = v1;

  v8 = *(v4 + 160);
  v9 = *(v4 + 152);
  v11 = sub_228392250();
  if (v3)
  {
    v12 = sub_22820BE04;
  }

  else
  {
    v12 = sub_22820B5DC;
  }

  return MEMORY[0x2822009F8](v12, v11, v10);
}

uint64_t sub_22820B5DC()
{
  v98 = v0;
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[7];

  sub_22820C024(v4);
  v6 = *(v3 + 48);
  v7 = v6(v4, 1, v2);
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];
  if (v7 == 1)
  {
    (*(v9 + 16))(v8, v0[7], v0[14]);
    if (v6(v11, 1, v10) != 1)
    {
      sub_22820DDF4(v0[13], &qword_280DDCDB0, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v9 + 32))(v8, v0[13], v0[14]);
  }

  v12 = v0[6];
  v96 = MEMORY[0x277D84F90];
  v97 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
LABEL_43:
    v90 = v12 & 0xFFFFFFFFFFFFFF8;
    v13 = sub_2283930D0();
    v14 = v0[6];
  }

  else
  {
    v90 = v12 & 0xFFFFFFFFFFFFFF8;
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v12;
  }

  v15 = v0[15];
  v92 = (v15 + 16);
  v93 = (v15 + 32);
  v91 = v0;
  if (v13)
  {
    v16 = 0;
    v89 = v12 & 0xC000000000000001;
    v86 = v14 + 32;
    v87 = v0 + 2;
    v17 = v0[23];
    v18 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    v88 = v13;
    do
    {
      v84 = v19;
      while (1)
      {
        if (v89)
        {
          v20 = MEMORY[0x22AAB6D80](v16, v91[6]);
        }

        else
        {
          if (v16 >= *(v90 + 16))
          {
            goto LABEL_42;
          }

          v20 = *(v86 + 8 * v16);
        }

        v21 = v20;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v94 = v17;
        v95 = v16 + 1;
        v85 = v18;
        v0 = v91;
        v22 = v91[22];
        v23 = v91[17];
        v24 = v91[14];
        v25 = *v92;
        (*v92)(v23, v91[18], v24);
        v26 = type metadata accessor for MedicationsDoseLogViewModel(0);
        v27 = *(v26 + 48);
        v28 = *(v26 + 52);
        v29 = swift_allocObject();
        *(v29 + 2) = v21;
        *(v29 + 3) = 0;
        *(v29 + 4) = 0;
        *(v29 + 5) = 0x3FF0000000000000;
        *(v29 + 6) = 1;
        *&v29[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialStatus] = 1;
        v25(&v29[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_logDate], v23, v24);
        v30 = OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialLogDate;
        v31 = *v93;
        v32 = v21;
        v31(&v29[v30], v23, v24);
        *&v29[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_initialDoseAmount] = *(v29 + 5);
        *&v29[OBJC_IVAR____TtC19HealthMedicationsUI27MedicationsDoseLogViewModel_index] = v16;
        v33 = [v32 semanticIdentifier];
        v34 = [v33 stringValue];

        v35 = sub_228392000();
        v37 = v36;

        v91[2] = v35;
        v91[3] = v37;
        v38 = swift_task_alloc();
        *(v38 + 16) = v87;
        v39 = v22;
        v17 = v94;
        v40 = sub_22830884C(sub_22820DC4C, v38, v39);

        if ((v40 & 1) == 0)
        {
          break;
        }

        v12 = &v96;
        MEMORY[0x22AAB5D20](v41);
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_2283921E0();
        }

        sub_228392230();

        v18 = v96;
        ++v16;
        if (v95 == v88)
        {
          v19 = v84;
          goto LABEL_25;
        }
      }

      v12 = &v97;
      MEMORY[0x22AAB5D20](v41);
      if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v43 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_2283921E0();
      }

      sub_228392230();

      v19 = v97;
      ++v16;
      v18 = v85;
    }

    while (v95 != v88);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
  }

LABEL_25:
  v44 = v91[22];

  if (v18 >> 62)
  {
    v45 = sub_2283930D0();
  }

  else
  {
    v45 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v45)
  {

    if (!(v19 >> 62))
    {
      goto LABEL_31;
    }

LABEL_36:
    if (sub_2283930D0())
    {
      goto LABEL_32;
    }

LABEL_37:

    v64 = 0;
    goto LABEL_38;
  }

  (*v92)(v91[16], v91[7], v91[14]);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v46 = v91[16];
  v47 = v91[14];
  v48 = sub_22838F0C0();
  v50 = v49;
  v51 = type metadata accessor for MedicationDoseLogListViewModel(0);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  (*v93)(v54 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v46, v47);
  v55 = (v54 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v55 = v48;
  v55[1] = v50;
  *(v54 + 16) = v18;
  if (v19 >> 62)
  {
    goto LABEL_36;
  }

LABEL_31:
  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

LABEL_32:
  (*v92)(v91[16], v91[7], v91[14]);
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v56 = v91[16];
  v57 = v91[14];
  v58 = sub_22838F0C0();
  v60 = v59;
  v61 = type metadata accessor for MedicationDoseLogListViewModel(0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  v64 = swift_allocObject();
  (*v93)(v64 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_date, v56, v57);
  v65 = (v64 + OBJC_IVAR____TtC19HealthMedicationsUI30MedicationDoseLogListViewModel_title);
  *v65 = v58;
  v65[1] = v60;
  *(v64 + 16) = v19;
LABEL_38:
  v66 = v91[18];
  v67 = v91[14];
  v68 = v91[15];
  v70 = v91[8];
  v69 = v91[9];
  v71 = v91[5];
  v72 = objc_allocWithZone(type metadata accessor for MedicationsLogViewController());

  v73 = v70;

  v75 = MedicationsLogViewController.init(medicationDoseLogList:asNeededMedicationDoseLogList:healthStore:showRecordAll:provenance:context:)(v74, v64, v73, 0, v69, 0, 2, 0);
  v76 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
  [v76 setModalPresentationStyle_];
  [v76 setModalInPresentation_];
  [v71 presentViewController:v76 animated:1 completion:0];

  (*(v68 + 8))(v66, v67);
  v78 = v91[17];
  v77 = v91[18];
  v79 = v91[16];
  v81 = v91[12];
  v80 = v91[13];

  v82 = v91[1];

  return v82();
}

uint64_t sub_22820BE04()
{
  v28 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 96);

  sub_228391150();
  v4 = v1;
  v5 = sub_2283911A0();
  v6 = sub_2283925C0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 88);
    v26 = *(v0 + 96);
    v9 = *(v0 + 80);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    *(v0 + 32) = v7;
    v12 = v7;
    sub_2281810DC(0, &qword_280DDB860);
    v13 = sub_228392020();
    v15 = sub_2281C96FC(v13, v14, &v27);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_22816B000, v5, v6, "Could not show logging view error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAB7B80](v11, -1, -1);
    MEMORY[0x22AAB7B80](v10, -1, -1);

    (*(v8 + 8))(v26, v9);
  }

  else
  {
    v17 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);

    (*(v17 + 8))(v16, v18);
  }

  v20 = *(v0 + 136);
  v19 = *(v0 + 144);
  v21 = *(v0 + 128);
  v23 = *(v0 + 96);
  v22 = *(v0 + 104);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_22820C024@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_22838F440();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22838F6C0();
  v41 = *(v33 - 8);
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F080();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v36 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v29 - v11;
  sub_22838F680();
  sub_22820D768(0, &qword_280DDB8D8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v31 = v12;
  v13 = sub_22838F6A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22839B440;
  v18 = *(v14 + 104);
  v18(v17 + v16, *MEMORY[0x277CC9980], v13);
  v18(v17 + v16 + v15, *MEMORY[0x277CC99A0], v13);
  v30 = 2 * v15;
  v18(v17 + v16 + 2 * v15, *MEMORY[0x277CC99A8], v13);
  v29 = 3 * v15;
  v18(v17 + v16 + 3 * v15, *MEMORY[0x277CC9930], v13);
  sub_2281EF358(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = v32;
  sub_22838F3F0();
  sub_22838F5C0();

  (*(v34 + 8))(v19, v35);
  v20 = *(v41 + 8);
  v41 += 8;
  v35 = v20;
  v21 = v33;
  v20(v6, v33);
  sub_22838F680();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_228398270;
  v18(v22 + v16, *MEMORY[0x277CC9988], v13);
  v18(v22 + v16 + v15, *MEMORY[0x277CC9998], v13);
  v18(v22 + v16 + v30, *MEMORY[0x277CC9968], v13);
  sub_2281EF358(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23 = v36;
  sub_22838F5C0();

  v24 = v35;
  v35(v6, v21);
  v25 = v40;
  sub_22838EFE0();
  sub_22838EFF0();
  sub_22838F020();
  sub_22838F030();
  sub_22838F040();
  sub_22838F050();
  sub_22838EF90();
  sub_22838EFA0();
  sub_22838F680();
  sub_22838F640();
  v24(v6, v21);
  v26 = v38;
  v27 = *(v37 + 8);
  v27(v23, v38);
  return (v27)(v25, v26);
}

uint64_t sub_22820C5A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x277D83D88];
  sub_22820D768(0, &qword_27D827C30, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v75 - v5;
  v81 = sub_2283911B0();
  v6 = *(v81 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v81);
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v75 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v75 - v14;
  sub_22820D768(0, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem, v2);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v75 - v18;
  v20 = type metadata accessor for MedicationsRecordDoseItem(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v78 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v80 = &v75 - v24;
  v25 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22820DAD8(v1 + v25, v83, sub_228181D50);
  if (v83[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v26 = swift_dynamicCast();
    (*(v21 + 56))(v19, v26 ^ 1u, 1, v20);
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      v27 = v80;
      sub_22820DA14(v19, v80);
      if (*(v27 + *(v20 + 36)))
      {
        v28 = [v1 viewController];
        if (v28)
        {
          v29 = *(v27 + 40);
          if (v29)
          {
            v76 = v28;

            v75 = v29;
            v30 = sub_228390660();
            v31 = v30;
            v83[0] = MEMORY[0x277D84F90];
            if (v30 >> 62)
            {
LABEL_38:
              v81 = v31 & 0xFFFFFFFFFFFFFF8;
              v32 = sub_2283930D0();
              if (v32)
              {
LABEL_8:
                v33 = 0;
                ObjectType = MEMORY[0x277D84F90];
                do
                {
                  v34 = v33;
                  while (1)
                  {
                    if ((v31 & 0xC000000000000001) != 0)
                    {
                      v35 = MEMORY[0x22AAB6D80](v34, v31);
                    }

                    else
                    {
                      if (v34 >= *(v81 + 16))
                      {
                        goto LABEL_37;
                      }

                      v35 = *(v31 + 8 * v34 + 32);
                    }

                    v36 = v35;
                    v33 = v34 + 1;
                    if (__OFADD__(v34, 1))
                    {
                      __break(1u);
LABEL_37:
                      __break(1u);
                      goto LABEL_38;
                    }

                    objc_opt_self();
                    if (swift_dynamicCastObjCClass())
                    {
                      break;
                    }

                    ++v34;
                    if (v33 == v32)
                    {
                      goto LABEL_40;
                    }
                  }

                  MEMORY[0x22AAB5D20]();
                  if (*((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    ObjectType = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                    sub_2283921E0();
                  }

                  sub_228392230();
                  ObjectType = v83[0];
                }

                while (v33 != v32);
                goto LABEL_40;
              }
            }

            else
            {
              v81 = v30 & 0xFFFFFFFFFFFFFF8;
              v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v32)
              {
                goto LABEL_8;
              }
            }

            ObjectType = MEMORY[0x277D84F90];
LABEL_40:

            v62 = sub_2283922D0();
            v63 = v79;
            (*(*(v62 - 8) + 56))(v79, 1, 1, v62);
            v64 = v80;
            v65 = v78;
            sub_22820DAD8(v80, v78, type metadata accessor for MedicationsRecordDoseItem);
            sub_2283922A0();
            v66 = v1;
            v67 = v76;
            v68 = sub_228392290();
            v69 = (*(v21 + 80) + 56) & ~*(v21 + 80);
            v70 = swift_allocObject();
            v71 = MEMORY[0x277D85700];
            v70[2] = v68;
            v70[3] = v71;
            v70[4] = v66;
            v70[5] = v67;
            v70[6] = ObjectType;
            sub_22820DA14(v65, v70 + v69);
            sub_2281DC568(0, 0, v63, &unk_22839C118, v70);

            v73 = v64 + *(v20 + 40);
            if (*v73)
            {
              v74 = *(v73 + 8);
              (*v73)(v72);
            }

            v61 = v64;
            return sub_22820DA78(v61, type metadata accessor for MedicationsRecordDoseItem);
          }

          v49 = v28;
          sub_228391190();
          v50 = sub_2283911A0();
          v51 = sub_2283925E0();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            v53 = swift_slowAlloc();
            v83[0] = v53;
            *v52 = 136315138;
            v54 = sub_228393600();
            v56 = sub_2281C96FC(v54, v55, v83);

            *(v52 + 4) = v56;
            _os_log_impl(&dword_22816B000, v50, v51, "[%s] Could not present MedicationsLogViewController because MedicationsRecordDoseItem did not have a specified medication or a list manager.", v52, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v53);
            v57 = v53;
            v27 = v80;
            MEMORY[0x22AAB7B80](v57, -1, -1);
            MEMORY[0x22AAB7B80](v52, -1, -1);
          }

          v58 = (*(v6 + 8))(v15, v81);
          v59 = v27 + *(v20 + 40);
          if (*v59)
          {
            v60 = *(v59 + 8);
            (*v59)(v58);
          }
        }

        else
        {
          sub_228391190();
          v46 = sub_2283911A0();
          v47 = sub_2283925C0();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_22816B000, v46, v47, "Unable to show logging view controller because MedicationsRecordDoseCollectionViewCell vc cannot be resolved.", v48, 2u);
            MEMORY[0x22AAB7B80](v48, -1, -1);
          }

          (*(v6 + 8))(v13, v81);
        }
      }

      v61 = v27;
      return sub_22820DA78(v61, type metadata accessor for MedicationsRecordDoseItem);
    }
  }

  else
  {
    sub_22820DA78(v83, sub_228181D50);
    (*(v21 + 56))(v19, 1, 1, v20);
  }

  sub_22820DDF4(v19, qword_280DDCC50, type metadata accessor for MedicationsRecordDoseItem);
  sub_228391150();
  v37 = v1;
  v38 = sub_2283911A0();
  v39 = sub_2283925C0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v82 = v41;
    *v40 = 136315138;
    sub_22820DAD8(v1 + v25, v83, sub_228181D50);
    sub_228181D50();
    v42 = sub_228392040();
    v44 = sub_2281C96FC(v42, v43, &v82);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_22816B000, v38, v39, "Incorrect view model for MedicationsRecordDoseItem: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x22AAB7B80](v41, -1, -1);
    MEMORY[0x22AAB7B80](v40, -1, -1);
  }

  return (*(v6 + 8))(v10, v81);
}

uint64_t sub_22820CF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_2283922A0();
  v7[6] = sub_228392290();
  v9 = sub_228392250();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x2822009F8](sub_22820CFB4, v9, v8);
}

uint64_t sub_22820CFB4()
{
  v1 = v0[5];
  v2 = *(type metadata accessor for MedicationsRecordDoseItem(0) + 32);
  v3 = *(v1 + 32);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_22820D074;
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  return sub_22820B298(v6, v5, v1 + v2, v3, 2);
}

uint64_t sub_22820D074()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_22820D194, v4, v3);
}

uint64_t sub_22820D194()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

id sub_22820D404()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicationsRecordDoseCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22820D4E4()
{
  sub_22820D768(319, &qword_280DDBCE0, MEMORY[0x277D74AE0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_22820D5BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  return sub_22820DAD8(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_22820D628(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI39MedicationsRecordDoseCollectionViewCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228209754();
  return sub_22820DA78(a1, sub_228181D50);
}

uint64_t (*sub_22820D6A8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22820D70C;
}

uint64_t sub_22820D70C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_228209754();
  }

  return result;
}

void sub_22820D768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22820D7EC()
{
  sub_228393520();
  v1 = *v0;
  v2 = v0[1];
  sub_2283920B0();
  v3 = v0[2];
  v4 = v0[3];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_22820D83C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2283920B0();
  v3 = v0[2];
  v4 = v0[3];

  return sub_2283920B0();
}

uint64_t sub_22820D87C()
{
  sub_228393520();
  v1 = *v0;
  v2 = v0[1];
  sub_2283920B0();
  v3 = v0[2];
  v4 = v0[3];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_22820D8C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t sub_22820D8F8(uint64_t a1)
{
  MEMORY[0x22AAB5C80](*(v1 + 16), *(v1 + 24));
  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  if (*(v1 + *(a1 + 36)))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + *(a1 + 36)))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x22AAB5C80](v3, v4);

  return 0x6D65744965736F44;
}

uint64_t sub_22820D9AC(uint64_t a1)
{
  v2 = sub_22820E030(qword_280DDCCB0);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_22820DA14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationsRecordDoseItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22820DA78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22820DAD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22820DB40(uint64_t a1)
{
  v4 = *(type metadata accessor for MedicationsRecordDoseItem(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22819D87C;

  return sub_22820CF18(a1, v6, v7, v8, v9, v10, v1 + v5);
}

void sub_22820DC6C()
{
  if (!qword_280DDBCF0)
  {
    sub_228391220();
    sub_2281C35D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280DDBCF0);
    }
  }
}

uint64_t sub_22820DCE0(uint64_t a1, uint64_t a2)
{
  sub_22820D768(0, &qword_280DDBCE0, MEMORY[0x277D74AE0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22820DD74(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22820D768(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22820DDF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22820D768(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22820DE8C()
{
  sub_22817A958(319, &qword_27D824D10, 0x277CCD4D8);
  if (v0 <= 0x3F)
  {
    sub_22820D768(319, &qword_27D8252A0, MEMORY[0x277D77BE0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_22838F440();
      if (v2 <= 0x3F)
      {
        sub_22820D768(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22820E030(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MedicationsRecordDoseItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MedicationOptionsDataSource.currentValuePublisher.getter()
{
  sub_22820F44C();
}

void *MedicationOptionsDataSource.__allocating_init(item:currentValuePublisher:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  v7 = sub_22820F45C(a1, a2);

  return v7;
}

void *MedicationOptionsDataSource.init(item:currentValuePublisher:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_22820F45C(a1, a2);

  return v2;
}

uint64_t sub_22820E14C()
{
  v23 = *v0;
  v21 = MEMORY[0x277D85248];
  sub_22820FE40(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v22 = *(v23 + class metadata base offset for MedicationOptionsDataSource);
  sub_228392F00();
  v5 = sub_228391880();
  v6 = sub_22820FD30();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_22820FD7C(&qword_280DDBAC0, sub_22820FD30);
  v25 = v5;
  v26 = v6;
  v27 = WitnessTable;
  v28 = v8;
  v9 = sub_2283917D0();
  v20 = *(v9 - 8);
  v10 = *(v20 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  v25 = *(v0 + qword_27D8252A8);

  v13 = sub_228392790();
  v24 = v13;
  v14 = sub_228392730();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_228391A70();
  sub_22820FDC4(v4, &qword_280DDBAD0, v21);

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v23;
  v16[2] = v22;
  v16[3] = *(v17 + class metadata base offset for MedicationOptionsDataSource + 8);
  v16[4] = v15;
  swift_getWitnessTable();
  sub_228391AC0();

  (*(v20 + 8))(v12, v9);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

uint64_t sub_22820E4F8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22820E57C();
  }

  return result;
}

uint64_t sub_22820E57C()
{
  v1 = (*(*v0 + class metadata base offset for MedicationOptionsDataSource + 80))();
  sub_228194894(v1);

  sub_22838FF60();

  v3 = (*(*v0 + class metadata base offset for MedicationOptionsDataSource + 88))(v2);
  sub_228194894(v3);

  sub_22838FF60();

  v5 = (*(*v0 + class metadata base offset for MedicationOptionsDataSource + 96))(v4);
  sub_228194894(v5);

  sub_22838FF60();
}

uint64_t sub_22820E6E8()
{
  sub_228390120();
  sub_2283926D0();
  sub_228390300();
  sub_2283926C0();
  sub_2283926B0();
  sub_2283904F0();
  return sub_2283926B0();
}

void *sub_22820E770()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  [v5 contentInsets];
  [v5 setContentInsets_];
  [v5 contentInsets];
  [v5 setContentInsets_];
  return v5;
}

uint64_t sub_22820E884(uint64_t a1)
{
  v3 = sub_2283900D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  sub_228390040();
  (*(*v1 + class metadata base offset for MedicationOptionsDataSource + 104))(a1);
  if (v11)
  {

    sub_228390010();
    (*(v4 + 8))(v10, v3);
    (*(v4 + 32))(v10, v8, v3);
  }

  (*(*v1 + class metadata base offset for MedicationOptionsDataSource + 112))(a1);
  if (v12)
  {

    sub_228390000();
    (*(v4 + 8))(v10, v3);
    (*(v4 + 32))(v10, v8, v3);
  }

  v13 = sub_228390090();
  *(v14 + 16) = 0;
  v13(v17, 0);
  v15 = sub_2283900C0();
  (*(v4 + 8))(v10, v3);
  return v15;
}

uint64_t sub_22820EAE4(uint64_t a1)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    sub_228390040();
    v8 = sub_2283900C0();
    (*(v3 + 8))(v6, v2);
    [v8 contentInsets];
    [v8 setContentInsets_];
    [v8 contentInsets];
    [v8 setContentInsets_];
    return v8;
  }

  if (a1)
  {
    sub_228390040();
    v8 = sub_2283900C0();
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  return sub_22820E884(0);
}

uint64_t sub_22820EC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22820FE40(0, &qword_27D824EB0, MEMORY[0x277D10FE0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - v9;
  v11 = sub_22838F4A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D767D0];
  if (sub_228392000() == a1 && v17 == a2)
  {

    goto LABEL_13;
  }

  v33 = v10;
  v19 = sub_228393460();

  if (v19)
  {
LABEL_13:
    v26 = sub_22838F750();
    (*(*v3 + class metadata base offset for MedicationOptionsDataSource + 112))(v26);
    v34 = 0x74497265746F6F46;
    v35 = 0xEB000000005F6D65;
    sub_22838F490();
    v27 = sub_22838F450();
    v29 = v28;
    (*(v12 + 8))(v15, v11);
    MEMORY[0x22AAB5C80](v27, v29);

    a3[3] = sub_228390330();
    a3[4] = sub_22820FD7C(&qword_27D8244F8, MEMORY[0x277D110D8]);
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_228390320();
  }

  v20 = *MEMORY[0x277D767D8];
  if (sub_228392000() == a1 && v21 == a2)
  {

    v24 = v33;
  }

  else
  {
    v23 = sub_228393460();

    v24 = v33;
    if ((v23 & 1) == 0)
    {
      a3[3] = sub_22838FC00();
      a3[4] = sub_22820FD7C(&qword_27D823958, MEMORY[0x277D10EC8]);
      __swift_allocate_boxed_opaque_existential_1(a3);
      return sub_22838FBF0();
    }
  }

  v30 = sub_22838F750();
  (*(*v3 + class metadata base offset for MedicationOptionsDataSource + 104))(v30);
  v31 = sub_228390130();
  (*(*(v31 - 8) + 56))(v24, 1, 1, v31);
  a3[3] = sub_228390150();
  a3[4] = sub_22820FD7C(&qword_27D824EC8, MEMORY[0x277D10FE8]);
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_228390140();
}

void MedicationOptionsDataSource.init(arrangedSections:identifier:)()
{
  v1 = *(*v0 + class metadata base offset for MedicationOptionsDataSource);
  v2 = *(*v0 + class metadata base offset for MedicationOptionsDataSource + 8);
  sub_22820F89C();
}

uint64_t sub_22820F174()
{
  v1 = *(v0 + qword_27D8252A8);

  sub_22820FDC4(v0 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v2 = *(v0 + qword_27D8252B0);
}

uint64_t MedicationOptionsDataSource.deinit()
{
  v0 = sub_22838FFB0();
  v1 = *(v0 + qword_27D8252A8);

  sub_22820FDC4(v0 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v2 = *(v0 + qword_27D8252B0);

  return v0;
}

uint64_t MedicationOptionsDataSource.__deallocating_deinit()
{
  v0 = *MedicationOptionsDataSource.deinit();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22820F308()
{
  sub_22820F44C();
}

void *sub_22820F45C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22838F4A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_27D8252B0) = MEMORY[0x277D84FA0];
  sub_228181FB4(a1, v3 + qword_27D828B70);
  *(v3 + qword_27D8252A8) = a2;
  v26[0] = 0;
  v26[1] = 0xE000000000000000;

  sub_2283931D0();

  strcpy(v26, "MutableArray<");
  HIWORD(v26[1]) = -4864;
  sub_22838F490();
  v11 = sub_22838F450();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  MEMORY[0x22AAB5C80](v11, v13);

  MEMORY[0x22AAB5C80](62, 0xE100000000000000);
  v14 = sub_22838FF30();
  sub_22820FE40(0, &qword_27D823910, MEMORY[0x277D10F78], MEMORY[0x277D84560]);
  v15 = *(sub_22838FEF0() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_228398270;
  v18 = *(*v14 + class metadata base offset for MedicationOptionsDataSource + 80);

  v20 = v18(v19);
  sub_228194894(v20);

  v21 = sub_22838FED0();
  v22 = (*(*v14 + class metadata base offset for MedicationOptionsDataSource + 88))(v21);
  sub_228194894(v22);

  v23 = sub_22838FED0();
  v24 = (*(*v14 + class metadata base offset for MedicationOptionsDataSource + 96))(v23);
  sub_228194894(v24);

  sub_22838FED0();
  sub_22838FF50();

  sub_22820E14C();

  sub_22820FDC4(a1, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  return v14;
}

void sub_22820F8FC()
{
  sub_22820FE40(319, &qword_27D8238D0, type metadata accessor for MedicationSearchItem, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

unint64_t sub_22820FD30()
{
  result = qword_280DDCEE0;
  if (!qword_280DDCEE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDCEE0);
  }

  return result;
}

uint64_t sub_22820FD7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22820FDC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22820FE40(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22820FE34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_22820E4F8();
}

void sub_22820FE40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22820FEA8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_228393460(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_228393460();
    }
  }

  return result;
}

uint64_t sub_22820FF4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22820FF94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_22820FFE8()
{
  result = qword_27D825338;
  if (!qword_27D825338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825338);
  }

  return result;
}

uint64_t static HKDrugInteractionResultCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);

  v6 = sub_22821010C(v4, v5, &qword_280DDBA10, 0x277D11518);

  return v6 & 1;
}

uint64_t sub_22821010C(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_22817A958(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x22AAB6D80](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x22AAB6D80](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_228392C60();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_228392C60();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_2283930D0();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_2283930D0();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_228210374(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282103D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = 0xEC000000656C7564;
  v8 = 0x6874676E65727473;
  v9 = 0x656C756465686373;
  v10 = v4 - 1;
  while (1)
  {
    v11 = v5[1];
    v28 = *v5;
    v29 = v11;
    v12 = v5[3];
    v30 = v5[2];
    v31 = v12;
    v13 = v6[1];
    v32 = *v6;
    v33 = v13;
    v14 = v6[3];
    v34 = v6[2];
    v35 = v14;
    if (v28 > 1u)
    {
      if (v28 == 2)
      {
        v15 = v8;
      }

      else
      {
        v15 = 1836216166;
      }

      if (v28 == 2)
      {
        v16 = 0xE800000000000000;
      }

      else
      {
        v16 = 0xE400000000000000;
      }
    }

    else
    {
      if (v28)
      {
        v15 = 0x656863536174656DLL;
      }

      else
      {
        v15 = v9;
      }

      if (v28)
      {
        v16 = v7;
      }

      else
      {
        v16 = 0xE800000000000000;
      }
    }

    v17 = v8;
    if (v32 == 2)
    {
      v18 = 0xE800000000000000;
    }

    else
    {
      v8 = 1836216166;
      v18 = 0xE400000000000000;
    }

    v19 = v9;
    if (v32)
    {
      v9 = 0x656863536174656DLL;
    }

    v20 = v7;
    if (!v32)
    {
      v7 = 0xE800000000000000;
    }

    if (v32 <= 1u)
    {
      v21 = v9;
    }

    else
    {
      v21 = v8;
    }

    if (v32 <= 1u)
    {
      v22 = v7;
    }

    else
    {
      v22 = v18;
    }

    if (v15 == v21 && v16 == v22)
    {
      sub_228211388(&v28, v27);
      sub_228211388(&v32, v27);
    }

    else
    {
      v23 = sub_228393460();
      sub_228211388(&v28, v27);
      sub_228211388(&v32, v27);

      if ((v23 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    sub_22817A958(0, &qword_27D825620, 0x277D82BB8);
    if ((sub_228392C60() & 1) == 0 || v29 != v33 && (sub_228393460() & 1) == 0)
    {
LABEL_55:
      sub_2282113E4(&v32);
      sub_2282113E4(&v28);
      return 0;
    }

    if (*(&v30 + 1))
    {
      if (!*(&v34 + 1) || v30 != v34 && (sub_228393460() & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else if (*(&v34 + 1))
    {
      goto LABEL_55;
    }

    v24 = *(&v35 + 1);
    if (*(&v31 + 1))
    {
      if (!*(&v35 + 1))
      {
        goto LABEL_55;
      }

      if (v31 == v35)
      {
        sub_2282113E4(&v32);
        sub_2282113E4(&v28);
      }

      else
      {
        v25 = sub_228393460();
        sub_2282113E4(&v32);
        sub_2282113E4(&v28);
        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      sub_2282113E4(&v32);
      sub_2282113E4(&v28);
      if (v24)
      {
        return 0;
      }
    }

    if (!v10)
    {
      return 1;
    }

    --v10;
    v6 += 4;
    v5 += 4;
    v7 = v20;
    v8 = v17;
    v9 = v19;
  }
}

uint64_t sub_2282106E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_228393460() & 1) == 0)
      {
        break;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_228210778(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_2283930D0();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v17 = 0;
    return v17 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v17 = 1;
    return v17 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = sub_228390A30();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_2283930D0();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AAB6D80](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v15 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          MEMORY[0x22AAB6D80](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v16 = *(a2 + 8 * v12);

LABEL_25:
      sub_228211280(&qword_27D825348, 255, MEMORY[0x277D11660]);
      v17 = sub_228391FB0();

      if (v17)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v17 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282109A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dosage();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_2282112C8(v14, v11);
    if (!v12)
    {
      break;
    }

    sub_2282112C8(v15, v8);
    if ((sub_22838F470() & 1) == 0 || (v18 = *(v4 + 20), (sub_22838F3D0() & 1) == 0))
    {
      sub_22821132C(v8);
      sub_22821132C(v11);
      return 0;
    }

    v19 = *&v11[*(v4 + 24)];
    sub_22821132C(v11);
    v20 = *&v8[*(v4 + 24)];
    sub_22821132C(v8);
    result = v19 == v20;
    v21 = v19 != v20 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v21)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_228210B58()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 < 0)
  {
    v4 = *(v0 + 16);
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_12:

    v5 = MEMORY[0x22AAB6D80](0, v1);

    return v5;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_228210C20(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x22AAB5D20]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_2283921E0();
  }

  sub_228392230();
  return swift_endAccess();
}

uint64_t sub_228210CC8()
{
  swift_beginAccess();

  sub_2281D5A80(v0);
  return swift_endAccess();
}

uint64_t sub_228210D1C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_2283930D0();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_9:

    v5 = MEMORY[0x22AAB6D80](0, v3);

    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);
LABEL_6:
    v6 = [v5 hasSameAncestorIdentifiersAsInteractionResult_];

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_228210DF8()
{
  swift_beginAccess();
  sub_2281D76AC((v0 + 16));
  return swift_endAccess();
}

uint64_t HKDrugInteractionResultCollection.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t HKDrugInteractionResultCollection.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t HKDrugInteractionResultCollection.hash(into:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  sub_2281DB0C8(a1, v3);
}

uint64_t HKDrugInteractionResultCollection.hashValue.getter()
{
  sub_228393520();
  swift_beginAccess();
  v1 = *(v0 + 16);

  sub_2281DB0C8(v3, v1);

  return sub_228393570();
}

uint64_t sub_228210F64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_22821010C(v4, v5, &qword_280DDBA10, 0x277D11518);

  return v6 & 1;
}

uint64_t sub_22821100C()
{
  v1 = *v0;
  sub_228393520();
  swift_beginAccess();
  v2 = *(v1 + 16);

  sub_2281DB0C8(v4, v2);

  return sub_228393570();
}

uint64_t sub_22821107C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  sub_2281DB0C8(a1, v4);
}

uint64_t sub_2282110DC()
{
  sub_228393520();
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  sub_2281DB0C8(v4, v2);

  return sub_228393570();
}

uint64_t sub_228211280(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2282112C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Dosage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22821132C(uint64_t a1)
{
  v2 = type metadata accessor for Dosage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ThirdPartyAuthorizationStepViewController()
{
  result = qword_27D825350;
  if (!qword_27D825350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282114D0()
{
  sub_2281BC944();
  v1 = v0;
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v0);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8[15] = 1;
  sub_2283918C0();
  sub_2281ED0F4();
  v6 = sub_228391990();
  (*(v2 + 8))(v5, v1);
  return v6;
}

id sub_22821164C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyAuthorizationStepViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *MedicationSecondaryEducationViewController.__allocating_init(type:educationDisplayable:content:attribution:)(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = sub_228212278(a1, v15, a3, a4, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v16;
}

void *MedicationSecondaryEducationViewController.init(type:educationDisplayable:content:attribution:)(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_228212060(a1, v18, a3, a4, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v20;
}

Swift::Void __swiftcall MedicationSecondaryEducationViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_2282118F4();
}

void sub_2282118F4()
{
  v1 = v0;
  v2 = qword_27D825360;
  if (*(v0 + qword_27D825360))
  {
    if (*(v0 + qword_27D825360) == 1)
    {
      if (qword_27D823310 == -1)
      {
LABEL_4:
        v3 = &qword_27D826AD0;
        goto LABEL_8;
      }
    }

    else if (qword_27D823310 == -1)
    {
      goto LABEL_4;
    }

    swift_once();
    goto LABEL_4;
  }

  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v3 = &qword_280DDCF20;
LABEL_8:
  v4 = v3[1];
  v5 = v3[2];
  v6 = *v3;

  sub_22838F0C0();

  v7 = sub_228391FC0();

  [v1 setTitle_];

  v8 = [v1 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = v8;
  v10 = [objc_opt_self() systemGroupedBackgroundColor];
  [v9 setBackgroundColor_];

  v11 = [v1 collectionView];
  if (!v11)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = *MEMORY[0x277D12788];
  sub_228392000();

  MEMORY[0x22AAB5C80](0x7461636964654D2ELL, 0xED00002E736E6F69);

  v14 = 0xE900000000000079;
  v15 = 0x636E616E67657250;
  if (*(v1 + v2) != 1)
  {
    v15 = 0x6F6974617463614CLL;
    v14 = 0xE90000000000006ELL;
  }

  if (*(v1 + v2))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x6666452065646953;
  }

  if (*(v1 + v2))
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xEC00000073746365;
  }

  MEMORY[0x22AAB5C80](v16, v17);

  MEMORY[0x22AAB5C80](0x6E6F747475422ELL, 0xE700000000000000);

  v18 = sub_228391FC0();

  [v12 setAccessibilityIdentifier_];
}

void sub_228211CA4(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  sub_2282118F4();
}

id MedicationSecondaryEducationViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id MedicationSecondaryEducationViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall MedicationSecondaryEducationViewController.viewControllerWillEnterAdaptiveModal()()
{
  [v0 setModalPresentationStyle_];
  v1 = [v0 navigationItem];
  sub_22817A958(0, &qword_27D824138, 0x277D751E0);
  sub_22817A958(0, &qword_27D827890, 0x277D750C8);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_228392C90();
  v3 = sub_228392640();
  [v1 setRightBarButtonItem_];
}

void sub_228211F50(void *a1)
{
  v1 = a1;
  MedicationSecondaryEducationViewController.viewControllerWillEnterAdaptiveModal()();
}

Swift::Void __swiftcall MedicationSecondaryEducationViewController.viewControllerDidLeaveAdaptiveModal()()
{
  v1 = [v0 navigationItem];
  [v1 setRightBarButtonItem_];
}

void sub_228211FF4(void *a1)
{
  v2 = a1;
  v1 = [v2 navigationItem];
  [v1 setRightBarButtonItem_];
}

void *sub_228212060(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v35 = a5;
  v36 = a6;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  (*(v14 + 32))(&v34 - v19);
  v21 = *a1;
  *(a7 + qword_27D825360) = *a1;
  v22 = type metadata accessor for MedicationSecondaryEducationCompoundDataSource(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v37 = v21;
  v25 = type metadata accessor for MedicationSecondaryEducationDataSource(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  (*(v14 + 16))(v18, v20, a8);
  v29 = sub_2281AA084(&v37, v18, a3, a4, v35, v36, v28, a8, a9);
  sub_228182110();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_228397F40;
  v31 = sub_2282124D0();
  *(v30 + 32) = v29;
  *(v30 + 40) = v31;
  sub_228390210();

  v32 = sub_228390480();
  [v32 setModalPresentationStyle_];

  (*(v14 + 8))(v20, a8);
  return v32;
}

void *sub_228212278(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(v19);
  (*(v15 + 16))(v18, a2, a8);
  return sub_228212060(a1, v18, a3, a4, a5, v23, v20, a8, a9);
}

uint64_t type metadata accessor for MedicationSecondaryEducationViewController()
{
  result = qword_27D825368;
  if (!qword_27D825368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_228212470()
{
  result = qword_27D8238E8;
  if (!qword_27D8238E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8238E8);
  }

  return result;
}

unint64_t sub_2282124D0()
{
  result = qword_27D825378;
  if (!qword_27D825378)
  {
    type metadata accessor for MedicationSecondaryEducationDataSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D825378);
  }

  return result;
}

id sub_2282126F4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22821273C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228212964(0, &unk_27D827790, type metadata accessor for FormStepResult);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - v8;
  sub_228212964(0, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - v12;
  objc_allocWithZone(type metadata accessor for FormStepViewController(0));
  sub_2282129B8(a1, v13);
  v14 = type metadata accessor for MedicationSearchItem(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 0, 1, v14);
  sub_228212A1C(a3, v9);
  sub_228212A9C();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_228391890();
  v20 = type metadata accessor for MedicationFormsDataSource();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = sub_22833D010(v13, v19);
  sub_2282129B8(a1, v13);
  v15(v13, 0, 1, v14);
  v24 = sub_228380018(v13, v23, a2);

  sub_228212B20(a3);
  sub_228212B98(a1);
  return v24;
}

void sub_228212964(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_228392F00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2282129B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228212A1C(uint64_t a1, uint64_t a2)
{
  sub_228212964(0, &unk_27D827790, type metadata accessor for FormStepResult);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_228212A9C()
{
  if (!qword_27D8253A0)
  {
    sub_228212964(255, &unk_27D827790, type metadata accessor for FormStepResult);
    v0 = sub_228391880();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8253A0);
    }
  }
}

uint64_t sub_228212B20(uint64_t a1)
{
  sub_228212964(0, &unk_27D827790, type metadata accessor for FormStepResult);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228212B98(uint64_t a1)
{
  v2 = type metadata accessor for MedicationSearchItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_228212BF4(uint64_t a1, void *a2)
{
  v4 = sub_2283911B0();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228391060();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(v9 + 16);
  v16(&v23 - v14, a1, v8);
  result = (*(v9 + 88))(v15, v8);
  if (result == *MEMORY[0x277D11738])
  {
    if ((*a2 & 1) == 0)
    {
      *a2 |= 1uLL;
    }
  }

  else if (result == *MEMORY[0x277D11748])
  {
    if ((*a2 & 2) == 0)
    {
      *a2 |= 2uLL;
    }
  }

  else if (result == *MEMORY[0x277D11760])
  {
    if ((*a2 & 4) == 0)
    {
      *a2 |= 4uLL;
    }
  }

  else if (result == *MEMORY[0x277D11758])
  {
    if ((*a2 & 8) == 0)
    {
      *a2 |= 8uLL;
    }
  }

  else if (result == *MEMORY[0x277D11730])
  {
    if ((*a2 & 0x10) == 0)
    {
      *a2 |= 0x10uLL;
    }
  }

  else if (result == *MEMORY[0x277D11750])
  {
    if ((*a2 & 0x20) == 0)
    {
      *a2 |= 0x20uLL;
    }
  }

  else if (result == *MEMORY[0x277D11740])
  {
    if ((*a2 & 0x40) == 0)
    {
      *a2 |= 0x40uLL;
    }
  }

  else
  {
    sub_228391150();
    v16(v13, a1, v8);
    v18 = sub_2283911A0();
    v19 = sub_2283925C0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v20 = 136315394;
      *(v20 + 4) = sub_2281C96FC(0x737961646B656557, 0xE800000000000000, &v28);
      *(v20 + 12) = 2048;
      v25 = v19;
      v24 = sub_228391050();
      v21 = *(v9 + 8);
      v21(v13, v8);
      *(v20 + 14) = v24;
      _os_log_impl(&dword_22816B000, v18, v25, "[%s] Encountered unknown Day = %ld", v20, 0x16u);
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAB7B80](v22, -1, -1);
      MEMORY[0x22AAB7B80](v20, -1, -1);
    }

    else
    {
      v21 = *(v9 + 8);
      v21(v13, v8);
    }

    (*(v27 + 8))(v7, v4);
    return (v21)(v15, v8);
  }

  return result;
}

uint64_t sub_22821301C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22838F4A0();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v29 = v2;
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_27D8253B0) = a1;
  v40 = 1;

  v41[0] = sub_228390770() & 1;
  v42 = 2;
  v43 = sub_2283907C0() & 1;
  v44 = 3;
  v33 = a1;
  v45 = sub_228390790() & 1;
  v38 = MEMORY[0x277D84F90];
  sub_228393240();
  v35 = sub_2281AF0A0();
  v7 = objc_opt_self();
  v8 = type metadata accessor for InteractionFactorsLifestyleOptionsItem();
  v9 = 0;
  v34 = 0x80000002283AC780;
  while (1)
  {
    v11 = *&v39[v9 + 32];
    v12 = v41[v9];
    v13 = *(v8 + 48);
    v14 = *(v8 + 52);
    v15 = swift_allocObject();
    *(v15 + qword_27D8256A8) = v11;
    *(v15 + qword_27D8256A0) = v12;
    v16 = [v7 systemBackgroundColor];
    v17 = [v7 secondarySystemBackgroundColor];
    sub_228392B80();

    HKDrugInteractionLifestyleFactor.image.getter(v11);
    if (v11 > 1)
    {
      break;
    }

    if (v11)
    {
      if (v11 != 1)
      {
        goto LABEL_15;
      }

      v18 = 0xE700000000000000;
      v19 = 0x4C4F484F434C41;
      goto LABEL_11;
    }

LABEL_2:
    sub_2283901A0();
    sub_228393210();
    v10 = *(v38 + 16);
    sub_228393250();
    sub_228393260();
    sub_228393220();
    v9 += 16;
    if (v9 == 48)
    {
      *(v29 + qword_27D8253A8) = v38;
      v20 = sub_22838F920();

      sub_22838F910();
      sub_22838FCD0();

      sub_22819F3B0();
      v21 = *(sub_22838FEF0() - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      *(swift_allocObject() + 16) = xmmword_228397F40;
      v24 = *(v20 + qword_27D8253A8);

      sub_228195D94(v25);

      v26 = v30;
      sub_22838F490();
      sub_22838F450();
      (*(v31 + 8))(v26, v32);
      sub_22838FED0();
      sub_22838FF50();

      return v20;
    }
  }

  if (v11 == 3)
  {
    v18 = 0xE700000000000000;
    v19 = 0x4F434341424F54;
LABEL_11:
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_2283931D0();

    v36 = 0xD000000000000011;
    v37 = v34;
    MEMORY[0x22AAB5C80](v19, v18);

    MEMORY[0x22AAB5C80](95, 0xE100000000000000);
    MEMORY[0x22AAB5C80](0x4F4C41444E415453, 0xEA0000000000454ELL);
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();

    goto LABEL_2;
  }

  if (v11 == 2)
  {
    v18 = 0xE900000000000041;
    v19 = 0x4E41554A4952414DLL;
    goto LABEL_11;
  }

LABEL_15:
  result = sub_228393300();
  __break(1u);
  return result;
}

uint64_t sub_2282135B4()
{
  v0 = sub_2283900D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390040();
  v5 = sub_2283900C0();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_228213688()
{
  v1 = v0;
  v40 = *v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_27D8253A8);
  if (v9 >> 62)
  {
    if (v9 < 0)
    {
      v34 = *(v1 + qword_27D8253A8);
    }

    result = sub_2283930D0();
    v10 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return result;
    }
  }

  if (v10 >= 1)
  {
    v11 = 0;
    v12 = qword_27D8253B0;
    v43 = v9 & 0xC000000000000001;
    v41 = (v3 + 8);
    *&v6 = 136446466;
    v35 = v6;
    v38 = v8;
    v39 = v2;
    v36 = v10;
    v37 = v9;
    v42 = qword_27D8253B0;
    while (1)
    {
      if (v43)
      {
        v15 = MEMORY[0x22AAB6D80](v11, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v11 + 32);
      }

      v16 = *(v15 + qword_27D8256A8);
      switch(v16)
      {
        case 3:
          v19 = *(v1 + v12);
          v20 = *(v15 + qword_27D8256A0);
          sub_2283907A0();
          break;
        case 2:
          v13 = *(v1 + v12);
          v14 = *(v15 + qword_27D8256A0);
          sub_2283907D0();
          break;
        case 1:
          v17 = *(v1 + v12);
          v18 = *(v15 + qword_27D8256A0);
          sub_228390780();
          break;
        default:
          sub_228391150();

          v21 = sub_2283911A0();
          v22 = sub_2283925C0();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v45 = v24;
            *v23 = v35;
            v25 = sub_228393600();
            v27 = v1;
            v28 = sub_2281C96FC(v25, v26, &v45);

            *(v23 + 4) = v28;
            *(v23 + 12) = 2080;
            v44 = v16;
            type metadata accessor for HKDrugInteractionLifestyleFactor(0);
            v29 = sub_228392020();
            v31 = sub_2281C96FC(v29, v30, &v45);
            v1 = v27;
            v9 = v37;

            *(v23 + 14) = v31;
            v8 = v38;
            _os_log_impl(&dword_22816B000, v21, v22, "%{public}s Unrecognized DDI factor: %s", v23, 0x16u);
            swift_arrayDestroy();
            v32 = v24;
            v2 = v39;
            MEMORY[0x22AAB7B80](v32, -1, -1);
            v33 = v23;
            v10 = v36;
            MEMORY[0x22AAB7B80](v33, -1, -1);
          }

          result = (*v41)(v8, v2);
          v12 = v42;
          goto LABEL_7;
      }

LABEL_7:
      if (v10 == ++v11)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228213A44()
{
  v1 = *(v0 + qword_27D8253B0);

  v2 = *(v0 + qword_27D8253A8);
}

uint64_t InteractionFactorsLifestyleOptionsDataSource.deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D8253B0);

  v2 = *(v0 + qword_27D8253A8);

  return v0;
}

uint64_t InteractionFactorsLifestyleOptionsDataSource.__deallocating_deinit()
{
  v0 = _s19HealthMedicationsUI34InteractionSeperatorLineDataSourceCfd_0();
  v1 = *(v0 + qword_27D8253B0);

  v2 = *(v0 + qword_27D8253A8);

  return swift_deallocClassInstance();
}

unint64_t sub_228213C10()
{
  result = qword_27D8253B8;
  if (!qword_27D8253B8)
  {
    type metadata accessor for InteractionFactorsLifestyleOptionsDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8253B8);
  }

  return result;
}

uint64_t type metadata accessor for InteractionFactorsLifestyleOptionsDataSource()
{
  result = qword_27D8253C0;
  if (!qword_27D8253C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_228213DC0()
{
  sub_2283931D0();

  v1 = sub_22838F450();
  MEMORY[0x22AAB5C80](v1);

  MEMORY[0x22AAB5C80](46, 0xE100000000000000);
  v2 = *(v0 + *(type metadata accessor for MedicationLogDetailsUnitItem() + 20));
  v3 = sub_228300540();
  MEMORY[0x22AAB5C80](v3);

  return 0xD000000000000013;
}

uint64_t sub_228213E80(uint64_t a1)
{
  sub_228393520();
  sub_22838F4A0();
  sub_228216EDC(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  v3 = *(v1 + *(a1 + 20));
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_228213F40(uint64_t a1, uint64_t a2)
{
  sub_22838F4A0();
  sub_228216EDC(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  v4 = *(v2 + *(a2 + 20));
  sub_228300540();
  sub_2283920B0();
}

uint64_t sub_228213FF4(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  sub_22838F4A0();
  sub_228216EDC(&unk_27D823CA0, MEMORY[0x277CC95F0]);
  sub_228391F70();
  v4 = *(v2 + *(a2 + 20));
  sub_228300540();
  sub_2283920B0();

  return sub_228393570();
}

uint64_t sub_2282140B4(uint64_t a1)
{
  v2 = sub_228216EDC(&unk_27D8254C0, type metadata accessor for MedicationLogDetailsUnitItem);

  return MEMORY[0x282169440](a1, v2);
}

id sub_228214130()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView);
  }

  else
  {
    type metadata accessor for MedicationLogDetailsUnitView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2282141B8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228216CE0(0, &unk_27D825490, type metadata accessor for MedicationLogDetailsUnitItem, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for MedicationLogDetailsUnitItem();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v16], v35);
  if (v36)
  {
    sub_22817A700();
    v17 = swift_dynamicCast();
    (*(v12 + 56))(v10, v17 ^ 1u, 1, v11);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_2282166B0(v10, v15);
      v18 = sub_228214130();
      v19 = *&v18[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel];
      *&v18[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel] = *&v15[*(v11 + 20)];
      swift_retain_n();

      sub_228214B8C();

      v20 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView];
      v21 = &v15[*(v11 + 24)];
      swift_unknownObjectWeakLoadStrong();
      v22 = *(v21 + 1);
      v23 = v20;
      sub_228216714(v15);
      *&v23[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_detailsDelegate + 8] = v22;
      swift_unknownObjectWeakAssign();

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_228216604(v35, &qword_280DDCD50, sub_22817A700);
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_228216604(v10, &unk_27D825490, type metadata accessor for MedicationLogDetailsUnitItem);
  sub_228391150();
  v25 = v1;
  v26 = sub_2283911A0();
  v27 = sub_2283925C0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34 = v29;
    *v28 = 136315138;
    sub_22817E6C8(&v1[v16], v35);
    sub_228216CE0(0, &qword_280DDCD50, sub_22817A700, MEMORY[0x277D83D88]);
    v30 = sub_228392040();
    v32 = sub_2281C96FC(v30, v31, &v34);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_22816B000, v26, v27, "Incorrect view model for MedicationLogDetailsUnitItem: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAB7B80](v29, -1, -1);
    MEMORY[0x22AAB7B80](v28, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

char *sub_228214648(double a1, double a2, double a3, double a4)
{
  v9 = sub_228391590();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView] = 0;
  v14 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell_item];
  v15 = type metadata accessor for MedicationLogDetailsUnitCell();
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v31.receiver = v4;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  v17 = [v16 contentView];
  v18 = sub_228214130();
  [v17 addSubview_];

  v19 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView;
  [*&v16[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell____lazy_storage___unitView] setTranslatesAutoresizingMaskIntoConstraints_];
  sub_228391520();
  sub_2283914D0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  (*(v10 + 8))(v13, v9);
  v28 = *&v16[v19];
  v29 = [v16 contentView];

  [v28 hk:v29 alignConstraintsWithView:v21 insets:{v23, v25, v27}];
  return v16;
}

uint64_t sub_2282149A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_2282149F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282141B8();
  return sub_228216604(a1, &qword_280DDCD50, sub_22817A700);
}

uint64_t (*sub_228214A80(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228214AE4;
}

uint64_t sub_228214AE4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_2282141B8();
  }

  return result;
}

uint64_t sub_228214B18()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_22838FE40();
}

uint64_t sub_228214B8C()
{
  v1 = sub_22838F580();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel);

    v9 = sub_228214E34();
    v10 = *(v7 + 40);
    sub_228215FCC();
    v11 = sub_228391FC0();

    [v9 setText_];

    v12 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText);
    if (*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText + 8) && (v13 = *v12, v14 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText + 8), , sub_2283920A0(), v16 = v15, , v16))
    {
    }

    else
    {
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      v17 = *(v7 + 40);
      sub_22838F540();
      v18 = sub_228390A90();
      v20 = v19;
      (*(v2 + 8))(v6, v1);
      v21 = v12[1];
      *v12 = v18;
      v12[1] = v20;

      v22 = sub_228215168();
      v23 = sub_228391FC0();

      [v22 setText_];

      v24 = sub_2282153B8();
      v25 = *(v7 + 16);
      sub_228392A00();

      v26 = sub_228391FC0();

      [v24 setText_];
    }
  }

  return result;
}

id sub_228214E54()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = [objc_opt_self() labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v2 = *MEMORY[0x277D12788];
  v8 = sub_228392000();
  v9 = v3;
  v4 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AC900);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v5 = sub_228391FC0();

  [v4 setAccessibilityIdentifier_];

  v6 = [objc_opt_self() preferredFontForTextStyle_];
  [v4 setFont_];

  return v4;
}

id sub_228215048()
{
  sub_228180ED0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228397F20;
  *(v0 + 32) = sub_228215168();
  *(v0 + 40) = sub_2282153B8();
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_228392190();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setDistribution_];
  [v3 setSpacing_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  return v3;
}

id sub_228215188(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_2282151EC(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  [v2 setDelegate_];
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v2 setFont_];

  v4 = [objc_opt_self() systemBlueColor];
  [v2 setTextColor_];

  v5 = *MEMORY[0x277D12788];
  v10 = sub_228392000();
  v11 = v6;
  v7 = v2;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AC900);

  MEMORY[0x22AAB5C80](0x694665756C61562ELL, 0xEB00000000646C65);

  v8 = sub_228391FC0();

  [v7 setAccessibilityIdentifier_];

  [v7 setKeyboardType_];
  [v7 setAdjustsFontForContentSizeCategory_];
  return v7;
}

id sub_2282153D8(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_228215438()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  [v0 setTextColor_];

  [v0 setNumberOfLines_];
  v3 = *MEMORY[0x277D12788];
  v10 = sub_228392000();
  v11 = v4;
  v5 = v0;

  MEMORY[0x22AAB5C80](0xD00000000000001DLL, 0x80000002283AC900);

  MEMORY[0x22AAB5C80](0xD000000000000013, 0x80000002283AC920);

  v6 = sub_228391FC0();

  [v5 setAccessibilityIdentifier_];

  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v5 setFont_];

  v8 = [v1 systemBlueColor];
  [v5 setTextColor_];

  return v5;
}

void sub_228215648()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F20;
  *(v1 + 32) = sub_228214E34();
  *(v1 + 40) = sub_228215028();
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v3 = sub_228392190();

  v4 = [v2 initWithArrangedSubviews_];

  [v4 setAxis_];
  [v4 setAlignment_];
  [v4 setDistribution_];
  [v4 setSpacing_];
  v5 = v4;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228397F00;
  v8 = [v5 topAnchor];
  v9 = [v0 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v7 + 32) = v10;
  v11 = [v5 leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v7 + 40) = v13;
  v14 = [v5 trailingAnchor];
  v15 = [v0 trailingAnchor];
  if (qword_27D8232C8 != -1)
  {
    swift_once();
  }

  v16 = [v14 constraintEqualToAnchor:v15 constant:-*&qword_27D8253D0];

  *(v7 + 48) = v16;
  v17 = [v5 bottomAnchor];

  v18 = [v0 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v7 + 56) = v19;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v20 = sub_228392190();

  [v6 activateConstraints_];

  v21 = sub_228215168();
  [v21 addTarget:v0 action:sel_didChangeText_ forControlEvents:0x20000];
}

void sub_228215A00()
{
  v1 = v0;
  v2 = sub_22838F580();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228215168();
  v8 = [v7 text];

  if (v8)
  {
    v9 = sub_228392000();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = (v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText);
  v13 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText + 8);
  *v12 = v9;
  v12[1] = v11;

  if (v11)
  {
    v14 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueTextField);

    v15 = v14;
    v16 = sub_228391FC0();

    [v15 setText_];
  }

  sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
  v17 = *v12;
  v18 = v12[1];

  sub_22838F540();
  sub_228390AA0();
  v20 = v19;

  (*(v3 + 8))(v6, v2);
  v21 = sub_228214E34();
  sub_228215FCC();
  v22 = sub_228391FC0();

  [v21 setText_];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = [Strong navigationItem];
    v25 = [v24 rightBarButtonItem];

    [v25 setEnabled_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_228215CFC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22838F580();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText + 8))
  {
    v12 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText);
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);

    sub_22838F540();
    sub_228390AA0();
    v14 = v13;

    (*(v8 + 8))(v11, v7);
    return v14;
  }

  else
  {
    sub_228391150();
    v16 = sub_2283911A0();
    v17 = sub_2283925C0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = sub_228393600();
      v22 = sub_2281C96FC(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_22816B000, v16, v17, "[%s] Couldn't retrieve unit value", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAB7B80](v19, -1, -1);
      MEMORY[0x22AAB7B80](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }
}

uint64_t sub_228215FCC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel);
  if (v7)
  {
    v8 = *(v7 + 16);

    v9 = v8;
    v10 = sub_2283929D0();
  }

  else
  {
    sub_228391170();
    v11 = sub_2283911A0();
    v12 = sub_2283925C0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 136315138;
      v15 = sub_228393600();
      v17 = sub_2281C96FC(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_22816B000, v11, v12, "[%s] item is not a MedicationsDoseLogViewModel", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AAB7B80](v14, -1, -1);
      MEMORY[0x22AAB7B80](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return v10;
}

id sub_2282161E8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_detailsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueAffixStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueTextField] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___countingAffixLabel] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for MedicationLogDetailsUnitView();
  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228215648();

  return v10;
}

id sub_228216340(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22821643C(void *a1)
{
  v2 = [a1 endOfDocument];
  v3 = [a1 textRangeFromPosition:v2 toPosition:v2];
  [a1 setSelectedTextRange_];
}

uint64_t type metadata accessor for MedicationLogDetailsUnitItem()
{
  result = qword_27D8254A0;
  if (!qword_27D8254A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_228216604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_228216CE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_228216674()
{
  sub_228390360();
  sub_228390350();
  result = v0 * 0.5;
  qword_27D8253D0 = *&result;
  return result;
}

uint64_t sub_2282166B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicationLogDetailsUnitItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_228216714(uint64_t a1)
{
  v2 = type metadata accessor for MedicationLogDetailsUnitItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_228216770()
{
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_detailsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView_valueText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueAffixStackView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___valueTextField) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI28MedicationLogDetailsUnitView____lazy_storage___countingAffixLabel) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_228216830(void *a1)
{
  v2 = sub_228391DC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_228391DF0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v12 = sub_228392790();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_228216CC0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228191E9C;
  aBlock[3] = &block_descriptor_9;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_228391DE0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_228216EDC(&qword_280DDCF10, MEMORY[0x277D85198]);
  sub_228216CE0(0, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_228216D44();
  sub_228393030();
  MEMORY[0x22AAB6340](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_228216B18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22838F580();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 text];
  if (v11)
  {
    v12 = v11;
    v13 = sub_228391FC0();
    v14 = [v12 stringByReplacingCharactersInRange:a2 withString:{a3, v13}];

    sub_228392000();
    sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
    sub_22838F540();
    v15 = sub_228390A80();

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_228216CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_228216D44()
{
  result = qword_280DDCEF0;
  if (!qword_280DDCEF0)
  {
    sub_228216CE0(255, &qword_280DDCF00, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCEF0);
  }

  return result;
}

uint64_t sub_228216DF4()
{
  result = sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MedicationsDoseLogViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_228216EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TileItem.init(titleText:bodyText:subBodyText:buttonTitle:imageSystemName:background:didTapView:didTapDismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_22838F490();
  v21 = type metadata accessor for TileItem(0);
  v22 = (a9 + v21[5]);
  type metadata accessor for TileItemCell();
  sub_228218624(&qword_27D8254D0, v23, type metadata accessor for TileItemCell);
  *v22 = sub_22838FBB0();
  v22[1] = v24;
  v25 = (a9 + v21[6]);
  *v25 = a1;
  v25[1] = a2;
  v26 = (a9 + v21[7]);
  *v26 = a3;
  v26[1] = a4;
  v27 = (a9 + v21[8]);
  *v27 = a5;
  v27[1] = a6;
  v28 = (a9 + v21[9]);
  *v28 = a7;
  v28[1] = a8;
  v29 = (a9 + v21[10]);
  *v29 = a10;
  v29[1] = a11;
  result = sub_22821B5DC(a12, a9 + v21[11], type metadata accessor for TileItem.Background);
  v31 = (a9 + v21[12]);
  *v31 = a13;
  v31[1] = a14;
  v32 = (a9 + v21[13]);
  *v32 = a15;
  v32[1] = a16;
  return result;
}

uint64_t TileItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F4A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TileItem.reuseIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for TileItem(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t TileItem.uniqueIdentifier.getter()
{
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0x6D657449656C6954;
}

uint64_t TileItem.hash(into:)()
{
  v1 = (v0 + *(type metadata accessor for TileItem(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_2283920B0();
}

uint64_t static TileItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for TileItem(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_228393460();
}

uint64_t TileItem.hashValue.getter()
{
  sub_228393520();
  v1 = (v0 + *(type metadata accessor for TileItem(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_2283920B0();
  return sub_228393570();
}

uint64_t sub_228217360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return sub_228393460();
  }
}

uint64_t sub_228217394()
{
  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0x6D657449656C6954;
}

uint64_t sub_2282173F0(uint64_t a1)
{
  v2 = sub_228218624(&unk_27D8255A0, 255, type metadata accessor for TileItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_228217470(uint64_t a1, uint64_t *a2)
{
  sub_22821B644(a1, v6, sub_228181D50);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_228217508();
  return sub_22821B6AC(v6, sub_228181D50);
}

uint64_t sub_228217508()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_228218898(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v92 - v10;
  v95 = sub_2283913A0();
  v93 = *(v95 - 8);
  v11 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v92 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for TileItem.Background(0);
  v13 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96);
  v15 = (&v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_228218898(0, &unk_27D8255B0, type metadata accessor for TileItem, v7);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v92 - v18;
  v20 = type metadata accessor for TileItem(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  sub_22821B644(&v1[v25], v99, sub_228181D50);
  if (v99[3])
  {
    sub_2281810DC(0, &qword_280DDCD60);
    v26 = swift_dynamicCast();
    (*(v21 + 56))(v19, v26 ^ 1u, 1, v20);
    if ((*(v21 + 48))(v19, 1, v20) != 1)
    {
      sub_22821B5DC(v19, v24, type metadata accessor for TileItem);
      v27 = &v24[v20[10]];
      if (*(v27 + 1))
      {
        v28 = *v27;
        v29 = [objc_opt_self() configurationWithPointSize:5 weight:34.0];
        v30 = sub_228391FC0();
        v31 = [objc_opt_self() systemImageNamed:v30 withConfiguration:v29];

        v32 = sub_228217FF4();
        v33 = *&v32[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView];

        [v33 setImage_];
      }

      else
      {
        v42 = sub_228217FF4();
        v33 = *&v42[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView];

        [v33 setImage_];
      }

      sub_22821B644(&v24[v20[11]], v15, type metadata accessor for TileItem.Background);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v44 = v92;
        v43 = v93;
        v45 = v95;
        (*(v93 + 32))(v92, v15, v95);
        v46 = v94;
        (*(v43 + 16))(v94, v44, v45);
        (*(v43 + 56))(v46, 0, 1, v45);
        MEMORY[0x22AAB6420](v46);
        (*(v43 + 8))(v44, v45);
      }

      else
      {
        v47 = *v15;
        v48 = [v1 contentView];
        [v48 setBackgroundColor_];
      }

      v49 = sub_228217FF4();
      v50 = sub_228218CEC();

      v51 = &v24[v20[6]];
      v52 = *v51;
      v53 = *(v51 + 1);
      v54 = sub_228391FC0();
      [v50 setText_];

      v55 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView;
      v56 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView];
      v57 = sub_228218EFC();

      v58 = &v24[v20[7]];
      v59 = *v58;
      v60 = *(v58 + 1);
      v61 = sub_228391FC0();
      [v57 setText_];

      v62 = *&v1[v55];
      v63 = sub_228218F88();

      v64 = &v24[v20[8]];
      if (*(v64 + 1))
      {
        v65 = *v64;
        v66 = sub_228391FC0();
      }

      else
      {
        v66 = 0;
      }

      [v63 setText_];

      v67 = *&v1[v55];
      v68 = sub_228219714();

      v69 = &v24[v20[9]];
      v70 = *v69;
      v71 = *(v69 + 1);
      v72 = sub_228391FC0();
      [v68 setTitle:v72 forState:0];

      v73 = *&v1[v55];
      v74 = &v24[v20[12]];
      v75 = *v74;
      v76 = *(v74 + 1);
      v77 = &v73[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onTap];
      v78 = *&v73[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onTap + 8];
      *v77 = v75;
      *(v77 + 1) = v76;
      v79 = v73;

      v80 = *&v1[v55];
      v81 = &v24[v20[13]];
      v82 = *v81;
      v83 = v81[1];
      v84 = &v80[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss];
      v85 = *&v80[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss];
      v86 = *&v80[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss + 8];
      *v84 = v82;
      v84[1] = v83;
      v87 = v80;
      sub_228176FA8(v82);
      sub_228176EC8(v85);
      sub_22821B020();

      v88 = *&v1[v55];
      v89 = [v88 traitCollection];
      v90 = [v89 preferredContentSizeCategory];
      LOBYTE(v85) = sub_2283928C0();

      sub_228219F34(v85 & 1);
      [v88 invalidateIntrinsicContentSize];
      v91 = type metadata accessor for TileTipView();
      v98.receiver = v88;
      v98.super_class = v91;
      objc_msgSendSuper2(&v98, sel_layoutSubviews);

      return sub_22821B6AC(v24, type metadata accessor for TileItem);
    }
  }

  else
  {
    sub_22821B6AC(v99, sub_228181D50);
    (*(v21 + 56))(v19, 1, 1, v20);
  }

  sub_22821B550(v19);
  sub_228391150();
  v34 = sub_2283911A0();
  v35 = sub_2283925C0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v99[0] = v37;
    *v36 = 136315138;
    v38 = sub_228393600();
    v40 = sub_2281C96FC(v38, v39, v99);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_22816B000, v34, v35, "[%s] Incorrect view model for TileItemCell", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AAB7B80](v37, -1, -1);
    MEMORY[0x22AAB7B80](v36, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_228217E70@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  return sub_22821B644(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_228217EDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_228217508();
  return sub_22821B6AC(a1, sub_228181D50);
}

uint64_t (*sub_228217F5C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_228217FC0;
}

uint64_t sub_228217FC0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_228217508();
  }

  return result;
}

char *sub_228217FF4()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapView);
    v5 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapView + 8);
    v6 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapDismiss);
    v7 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapDismiss + 8);
    objc_allocWithZone(type metadata accessor for TileTipView());

    sub_228176FA8(v6);
    v8 = v5;
    v9 = v0;
    v10 = sub_228219A84(v4, v8, v6, v7);
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v0 + v1);
    *(v9 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_2282180D0(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapDismiss];
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView] = 0;
  v11 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell_didTapView];
  *v11 = nullsub_1;
  *(v11 + 1) = 0;
  v12 = type metadata accessor for TileItemCell();
  *v10 = 0;
  *(v10 + 1) = 0;
  v18.receiver = v4;
  v18.super_class = v12;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_22838F7B0();
  v14 = *MEMORY[0x277CDA138];
  sub_228392B00();
  v15 = [v13 contentView];
  v16 = sub_228217FF4();
  [v15 addSubview_];

  sub_2282182BC();
  return v13;
}

void sub_2282182BC()
{
  v1 = objc_opt_self();
  sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_228397F00;
  v3 = sub_228217FF4();
  v4 = [v3 topAnchor];

  v5 = [v0 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView;
  v9 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI12TileItemCell____lazy_storage___tileTipView] bottomAnchor];
  v10 = [v0 contentView];
  v11 = [v10 bottomAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v2 + 40) = v12;
  v13 = [*&v0[v8] leadingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 layoutMarginsGuide];

  v16 = [v15 leadingAnchor];
  v17 = [v13 constraintEqualToAnchor_];

  *(v2 + 48) = v17;
  v18 = [*&v0[v8] trailingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v2 + 56) = v21;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v22 = sub_228392190();

  [v1 activateConstraints_];
}

uint64_t sub_228218624(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_228218768()
{
  sub_22838F4A0();
  if (v0 <= 0x3F)
  {
    sub_22821B3F8(319, &qword_27D825070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for TileItem.Background(319);
      if (v2 <= 0x3F)
      {
        sub_2281C35D8();
        if (v3 <= 0x3F)
        {
          sub_228218898(319, &unk_27D826FC0, sub_2281C35D8, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_228218898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282188FC()
{
  result = sub_22817A958(319, &qword_280DDB990, 0x277D75348);
  if (v1 <= 0x3F)
  {
    result = sub_2283913A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_228218A34(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_currentConstraints;
  v3 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_currentConstraints];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_currentConstraints] = a1;

  v5 = sub_228210990(v4, v3);

  if (v5)
  {
  }

  else
  {
    v7 = objc_opt_self();
    sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
    v8 = sub_228392190();

    [v7 deactivateConstraints_];

    v9 = *&v1[v2];

    v10 = sub_228392190();

    [v7 activateConstraints_];

    return [v1 setNeedsLayout];
  }
}

id sub_228218B68()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 setContentMode_];
  v1 = [objc_opt_self() systemGrayColor];
  [v0 setTintColor_];

  v2 = *MEMORY[0x277D12788];
  v6 = sub_228392000();
  v7 = v3;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x616D496E6F63492ELL, 0xEE00776569566567);

  v4 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  return v0;
}

id sub_228218D0C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = *MEMORY[0x277D12788];
  v9 = sub_228392000();
  v10 = v2;
  v3 = v0;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x614C656C7469542ELL, 0xEB000000006C6562);

  v4 = sub_228391FC0();

  [v3 setAccessibilityIdentifier_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setNumberOfLines_];
  v5 = [objc_opt_self() _preferredFontForTextStyle_variant_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  v6 = [objc_opt_self() labelColor];
  [v3 setTextColor_];

  LODWORD(v7) = 1132068864;
  [v3 setContentHuggingPriority:0 forAxis:v7];
  return v3;
}

id sub_228218F24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_228218FB4(a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_228218FB4(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = *MEMORY[0x277D12788];
  v13 = sub_228392000();
  v14 = v6;
  v7 = v4;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](a1, a2);

  v8 = sub_228391FC0();

  [v7 setAccessibilityIdentifier_];

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setNumberOfLines_];
  v9 = [objc_opt_self() preferredFontForTextStyle_];
  [v7 setFont_];

  [v7 setAdjustsFontForContentSizeCategory_];
  v10 = [objc_opt_self() secondaryLabelColor];
  [v7 setTextColor_];

  LODWORD(v11) = 1132068864;
  [v7 setContentHuggingPriority:0 forAxis:v11];
  return v7;
}

id sub_2282191BC(uint64_t *a1, uint64_t (*a2)(void))
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

id sub_22821921C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v1 = [objc_opt_self() opaqueSeparatorColor];
  [v0 setBackgroundColor_];

  v2 = *MEMORY[0x277D12788];
  v6 = sub_228392000();
  v7 = v3;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x746172617065532ELL, 0xEE0077656956726FLL);

  v4 = sub_228391FC0();

  [v0 setAccessibilityIdentifier_];

  return v0;
}

id sub_228219390(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addTarget:a1 action:sel_didTapDismiss forControlEvents:64];
  v3 = *MEMORY[0x277D12788];
  v7 = sub_228392000();
  v8 = v4;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x7373696D7369442ELL, 0xEE006E6F74747542);

  v5 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  return v2;
}

id sub_2282194E8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView);
  }

  else
  {
    v4 = v0;
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v5 = *MEMORY[0x277D769D0];
    v6 = *MEMORY[0x277D743F8];
    v7 = sub_228392AD0();
    v8 = [objc_opt_self() configurationWithFont_];

    v9 = v8;
    v10 = sub_228391FC0();
    v11 = [objc_opt_self() systemImageNamed:v10 withConfiguration:v9];

    v12 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    [v12 setPreferredSymbolConfiguration_];
    [v12 setContentMode_];

    if (v11)
    {
      v13 = objc_opt_self();
      v14 = v11;
      v15 = [v13 quaternaryLabelColor];
      v16 = [v14 imageWithTintColor:v15 renderingMode:1];
    }

    else
    {
      v16 = 0;
    }

    [v12 setImage_];

    v17 = *(v4 + v1);
    *(v4 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_228219734(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_228219798(uint64_t a1)
{
  v2 = [objc_opt_self() buttonWithType_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = *MEMORY[0x277D12788];
  v22 = sub_228392000();
  v23 = v4;

  MEMORY[0x22AAB5C80](0x706954656C69542ELL, 0xEC00000077656956);

  MEMORY[0x22AAB5C80](0x426E6F697463412ELL, 0xED00006E6F747475);

  v5 = sub_228391FC0();

  [v2 setAccessibilityIdentifier_];

  v6 = v2;
  [v6 addTarget:a1 action:sel_didTapView forControlEvents:64];
  v7 = [v6 titleLabel];
  if (v7)
  {
    v8 = v7;
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v9 = *MEMORY[0x277D76918];
    v10 = *MEMORY[0x277D74420];
    v11 = sub_228392AD0();
    [v8 setFont_];
  }

  v12 = [v6 titleLabel];
  if (v12)
  {
    v13 = v12;
    [v12 setAdjustsFontForContentSizeCategory_];
  }

  v14 = [v6 titleLabel];
  if (v14)
  {
    v15 = v14;
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  v16 = [v6 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setNumberOfLines_];
  }

  v18 = [v6 titleLabel];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() systemBlueColor];
    [v19 setTextColor_];
  }

  [v6 setContentHorizontalAlignment_];

  return v6;
}

char *sub_228219A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_isUsingVerticalLayout] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_currentConstraints] = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView;
  *&v4[v10] = sub_228218B68();
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___actionButton] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_detailLabelBottomConstraint] = 0;
  v11 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onTap];
  *v11 = a1;
  v11[1] = a2;
  v12 = *v9;
  v13 = v9[1];
  *v9 = a3;
  v9[1] = a4;

  sub_228176FA8(a3);
  sub_228176EC8(v12);
  v30.receiver = v4;
  v30.super_class = type metadata accessor for TileTipView();
  v14 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_22838F7B0();
  v15 = *MEMORY[0x277CDA138];
  sub_228392B00();
  [v14 addSubview_];
  v16 = sub_2282194E8();
  [v14 addSubview_];

  v17 = sub_228219370();
  [v14 addSubview_];

  v18 = sub_228218CEC();
  [v14 addSubview_];

  v19 = sub_228218EFC();
  [v14 addSubview_];

  v20 = sub_228218F88();
  [v14 addSubview_];

  v21 = sub_22821919C();
  [v14 addSubview_];

  v22 = sub_228219714();
  [v14 addSubview_];

  v23 = [v14 traitCollection];
  v24 = [v23 preferredContentSizeCategory];
  v25 = sub_2283928C0();

  sub_228219F34(v25 & 1);
  sub_228218898(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_228397F40;
  v27 = sub_228391640();
  v28 = MEMORY[0x277D74DB8];
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2281D5250();
  sub_228392B50();
  swift_unknownObjectRelease();

  sub_228176EC8(a3);

  return v14;
}

void sub_228219E0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = type metadata accessor for TileTipView();
    if ((sub_228392820() & 1) == 0)
    {
      v3 = [v1 traitCollection];
      v4 = [v3 preferredContentSizeCategory];
      v5 = sub_2283928C0() & 1;

      if (v5 != v1[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_isUsingVerticalLayout])
      {
        sub_228219F34(v5);
        [v1 invalidateIntrinsicContentSize];
        v6.receiver = v1;
        v6.super_class = v2;
        objc_msgSendSuper2(&v6, sel_layoutSubviews);
      }
    }
  }
}

void sub_228219F34(int a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_2283911B0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v159 - v10;
  v12 = sub_2282194E8();
  v13 = [v12 image];

  if (v13)
  {
    [v13 size];
    v15 = v14;
    v17 = v16;
    v18 = sub_228219714();
    v19 = [v18 titleLabel];

    if (v19)
    {
      v167 = a1;
      v166 = v13;
      sub_22821B020();
      [v2 setLayoutMargins_];
      v168 = [v2 layoutMarginsGuide];
      sub_22821B3F8(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v165 = v20;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_22839C860;
      v22 = sub_228219370();
      v23 = [v22 topAnchor];
      v162 = v19;
      v24 = v23;

      v25 = [v2 topAnchor];
      v26 = [v24 constraintEqualToAnchor_];

      *(v21 + 32) = v26;
      v27 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissButton;
      v28 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissButton] trailingAnchor];
      v29 = [v2 trailingAnchor];
      v30 = [v28 constraintEqualToAnchor_];

      *(v21 + 40) = v30;
      v31 = [*&v2[v27] widthAnchor];
      v32 = [v31 constraintEqualToConstant_];

      *(v21 + 48) = v32;
      v33 = [*&v2[v27] heightAnchor];
      v34 = [v33 &selRef:v17 + 22.0 setDateTimeStyle:? + 1];

      *(v21 + 56) = v34;
      v35 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView;
      v36 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView] topAnchor];
      v37 = [v2 topAnchor];
      v38 = [v36 constraintEqualToAnchor:v37 constant:11.0];

      *(v21 + 64) = v38;
      v160 = v35;
      v39 = [*&v2[v35] trailingAnchor];
      v40 = [v2 layoutMarginsGuide];
      v41 = [v40 trailingAnchor];

      v42 = [v39 constraintEqualToAnchor_];
      *(v21 + 72) = v42;
      v43 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView];
      v44 = [v43 topAnchor];
      v45 = [v2 topAnchor];
      v46 = [v44 constraintEqualToAnchor:v45 constant:11.0];

      *(v21 + 80) = v46;
      v47 = [v43 leadingAnchor];
      v48 = [v2 &selRef_logTimeChanged_ + 1];
      v49 = [v47 constraintEqualToAnchor_];

      *(v21 + 88) = v49;
      v50 = [v43 widthAnchor];
      v51 = [v50 constraintEqualToConstant_];

      *(v21 + 96) = v51;
      v164 = v43;
      v52 = [v43 heightAnchor];
      v53 = [v52 constraintEqualToConstant_];

      *(v21 + 104) = v53;
      v54 = sub_228218EFC();
      v55 = [v54 topAnchor];

      v56 = sub_228218CEC();
      v57 = [v56 bottomAnchor];

      v58 = [v55 constraintEqualToAnchor:v57 constant:4.0];
      *(v21 + 112) = v58;
      v59 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___detailLabel;
      v60 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___detailLabel] &selRef_logTimeChanged_ + 1];
      v61 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___titleLabel;
      v62 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___titleLabel] &selRef_logTimeChanged_ + 1];
      v63 = [v60 constraintEqualToAnchor_];

      *(v21 + 120) = v63;
      v64 = [*&v2[v59] trailingAnchor];
      v65 = [v2 trailingAnchor];
      v66 = [v64 constraintEqualToAnchor_];

      *(v21 + 128) = v66;
      v67 = sub_228218F88();
      v68 = [v67 &selRef_logTimeChanged_ + 1];

      v163 = v61;
      v69 = [*&v2[v61] &selRef_logTimeChanged_ + 1];
      v70 = [v68 constraintEqualToAnchor_];

      *(v21 + 136) = v70;
      v71 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel];
      v72 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel;
      v161 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel;
      v73 = [v71 trailingAnchor];
      v74 = [v2 trailingAnchor];
      v75 = [v73 constraintEqualToAnchor_];

      *(v21 + 144) = v75;
      v76 = [*&v2[v72] bottomAnchor];
      v77 = sub_22821919C();
      v78 = [v77 topAnchor];

      v79 = [v76 constraintEqualToAnchor:v78 constant:-11.0];
      *(v21 + 152) = v79;
      v80 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___separatorView;
      v81 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___separatorView] heightAnchor];
      HKUIOnePixel();
      v82 = [v81 constraintEqualToConstant_];

      *(v21 + 160) = v82;
      v83 = [*&v2[v80] &selRef_logTimeChanged_ + 1];
      v84 = [*&v2[v59] &selRef_logTimeChanged_ + 1];
      v85 = [v83 &selRef_freeTextMedicationName + 5];

      *(v21 + 168) = v85;
      v86 = [*&v2[v80] trailingAnchor];
      v87 = [v2 trailingAnchor];
      v88 = [v86 &selRef_freeTextMedicationName + 5];

      *(v21 + 176) = v88;
      v89 = [*&v2[v80] bottomAnchor];
      v90 = v162;
      v91 = [v90 topAnchor];
      v92 = [v89 constraintEqualToAnchor:v91 constant:-11.0];

      *(v21 + 184) = v92;
      v93 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___actionButton;
      v94 = [*&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___actionButton] &selRef_logTimeChanged_ + 1];
      v95 = [*&v2[v59] &selRef_logTimeChanged_ + 1];
      v96 = [v94 constraintEqualToAnchor_];

      *(v21 + 192) = v96;
      v97 = *&v2[v93];
      v98 = v59;
      v99 = v161;
      v100 = [v97 trailingAnchor];
      v101 = [*&v2[v98] trailingAnchor];
      v102 = [v100 constraintLessThanOrEqualToAnchor_];

      *(v21 + 200) = v102;
      v103 = [v90 bottomAnchor];

      v104 = [v168 bottomAnchor];
      v105 = [v103 constraintEqualToAnchor_];

      *(v21 + 208) = v105;
      v169[0] = v21;
      v106 = [*&v2[v99] text];
      v107 = 0.0;
      if (v106)
      {
        v108 = v106;
        sub_228392000();

        sub_2283920A0();
        v110 = v109;

        if (v110)
        {

          v107 = -11.0;
        }
      }

      v111 = [*&v2[v98] bottomAnchor];
      v112 = [*&v2[v99] topAnchor];
      v113 = [v111 constraintEqualToAnchor:v112 constant:v107];

      v114 = *&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_detailLabelBottomConstraint];
      *&v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_detailLabelBottomConstraint] = v113;
      v115 = v113;

      if (v115)
      {
        [v115 setActive_];
      }

      v116 = v167;
      if (v167)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_228399D40;
        v118 = v163;
        v119 = [*&v2[v163] topAnchor];
        v120 = v164;
        v121 = [v164 bottomAnchor];
        v122 = [v119 constraintEqualToAnchor:v121 constant:4.0];

        *(inited + 32) = v122;
        v123 = [*&v2[v118] leadingAnchor];
        v124 = [v120 leadingAnchor];
        v125 = [v123 constraintEqualToAnchor_];

        *(inited + 40) = v125;
        v126 = [*&v2[v118] trailingAnchor];
        v127 = [v2 trailingAnchor];
        v128 = [v126 constraintEqualToAnchor_];

        *(inited + 48) = v128;
        sub_2281D5A98(inited);
      }

      else
      {
        v143 = v164;
        v144 = [v164 isHidden];
        v162 = v90;
        if (v144)
        {
          v145 = [v2 leadingAnchor];
          v146 = &off_2785F4000;
        }

        else
        {
          v146 = &off_2785F4000;
          v145 = [v143 trailingAnchor];
        }

        v147 = v145;
        if ([v143 isHidden])
        {
          v148 = 0.0;
        }

        else
        {
          v148 = 11.0;
        }

        v149 = swift_initStackObject();
        *(v149 + 16) = xmmword_228399D40;
        v150 = v163;
        v151 = [*&v2[v163] topAnchor];
        v152 = [v2 topAnchor];
        v153 = [v151 constraintEqualToAnchor:v152 constant:11.0];

        *(v149 + 32) = v153;
        v154 = [*&v2[v150] leadingAnchor];
        v155 = [v154 constraintEqualToAnchor:v147 constant:v148];

        *(v149 + 40) = v155;
        v156 = [*&v2[v150] v146[119]];
        v157 = [*&v2[v160] leadingAnchor];
        v158 = [v156 constraintEqualToAnchor:v157 constant:-10.0];

        *(v149 + 48) = v158;
        sub_2281D5A98(v149);

        v90 = v162;
        v116 = v167;
      }

      sub_228218A34(v169[0]);

      v2[OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_isUsingVerticalLayout] = v116 & 1;
    }

    else
    {
      sub_228391150();
      v136 = sub_2283911A0();
      v137 = sub_2283925C0();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v169[0] = v139;
        *v138 = 136315138;
        v140 = sub_228393600();
        v142 = sub_2281C96FC(v140, v141, v169);

        *(v138 + 4) = v142;
        _os_log_impl(&dword_22816B000, v136, v137, "[%s] Action button label is nil.", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v139);
        MEMORY[0x22AAB7B80](v139, -1, -1);
        MEMORY[0x22AAB7B80](v138, -1, -1);
      }

      (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    sub_228391150();
    v129 = sub_2283911A0();
    v130 = sub_2283925C0();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v169[0] = v132;
      *v131 = 136315138;
      v133 = sub_228393600();
      v135 = sub_2281C96FC(v133, v134, v169);

      *(v131 + 4) = v135;
      _os_log_impl(&dword_22816B000, v129, v130, "[%s] Dismiss button image is nil.", v131, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v132);
      MEMORY[0x22AAB7B80](v132, -1, -1);
      MEMORY[0x22AAB7B80](v131, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
  }
}

void sub_22821B020()
{
  v1 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView);
  v2 = [v1 image];
  v3 = v2;
  if (v2)
  {
  }

  [v1 setHidden_];
  v4 = sub_228218F88();
  v5 = [*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel) text];
  if (v5 && (v6 = v5, sub_228392000(), v6, sub_2283920A0(), v8 = v7, , v8))
  {

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  [v4 setHidden_];

  v10 = sub_228219370();
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss;
  [v10 setHidden_];

  v12 = sub_2282194E8();
  [v12 setHidden_];
}

id sub_22821B2A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_22821B3F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22821B448()
{
  v1 = (v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_onDismiss);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_isUsingVerticalLayout) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_currentConstraints) = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_iconImageView;
  *(v0 + v2) = sub_228218B68();
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___subdetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___dismissImageView) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView____lazy_storage___actionButton) = 0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI11TileTipView_detailLabelBottomConstraint) = 0;
  sub_228393300();
  __break(1u);
}

uint64_t sub_22821B550(uint64_t a1)
{
  sub_228218898(0, &unk_27D8255B0, type metadata accessor for TileItem, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22821B5DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22821B644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22821B6AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22821B70C(uint64_t a1, uint64_t *a2)
{
  sub_22817E6C8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_22821D7F8();
  return sub_2282203EC(v6, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
}

uint64_t sub_22821B7A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  return sub_22817E6C8(v1 + v3, a1);
}

uint64_t sub_22821B800(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_22821D7F8();
  return sub_2282203EC(a1, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
}

uint64_t (*sub_22821B898(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_22821B8FC;
}

uint64_t sub_22821B8FC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_22821D7F8();
  }

  return result;
}

id sub_22821B974()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
    v6 = *MEMORY[0x277D76918];
    v7 = sub_228392AD0();
    [v5 setFont_];

    v8 = v5;
    [v8 setTranslatesAutoresizingMaskIntoConstraints_];
    [v8 setNumberOfLines_];
    v9 = *MEMORY[0x277D12788];
    v10 = sub_228392000();
    v12 = v11;
    MEMORY[0x22AAB5C80](*(v4 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier), *(v4 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier + 8));
    v18 = v10;

    MEMORY[0x22AAB5C80](46, 0xE100000000000000);

    MEMORY[0x22AAB5C80](0xD000000000000014, 0x80000002283ACDA0);

    v13 = sub_228391FC0();

    [v8 setAccessibilityIdentifier_];

    LODWORD(v14) = 1148846080;
    [v8 setContentCompressionResistancePriority:1 forAxis:v14];
    v15 = *(v4 + v1);
    *(v4 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

id sub_22821BBD0()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator);
  }

  else
  {
    v4 = sub_22821BC30();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22821BC30()
{
  sub_22827CAD4();
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v3 = [objc_opt_self() tertiaryLabelColor];
  [v2 setTintColor_];

  [v2 setContentMode_];
  LODWORD(v4) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:v4];

  return v2;
}

id sub_22821BD64()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(sub_228390BC0()) initWithFrame_];
    sub_228390960();
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    v6 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22821BFEC(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    [v7 setAxis_];
    [v7 setAlignment_];
    [v7 setSpacing_];
    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_22821C144()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView);
  }

  else
  {
    v4 = sub_22821C1F0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_22821C1F0()
{
  sub_228180ED0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_228399D40;
  *(v0 + 32) = sub_22821BEA4();
  *(v0 + 40) = sub_22821BF40();
  *(v0 + 48) = sub_22821BFDC();
  v1 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v2 = sub_228392190();

  v3 = [v1 initWithArrangedSubviews_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  [v3 setAxis_];
  [v3 setAlignment_];
  [v3 setSpacing_];
  return v3;
}

id sub_22821C304()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint];
  }

  else
  {
    v4 = [v0 heightAnchor];
    v5 = [v4 constraintGreaterThanOrEqualToConstant_];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_22821C3AC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier];
  *v9 = 0xD000000000000016;
  *(v9 + 1) = 0x800000022839CAA0;
  v10 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView] = 0;
  sub_228391150();
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint] = 0;
  v30.receiver = v4;
  v30.super_class = type metadata accessor for MedicationListItemCell();
  v11 = objc_msgSendSuper2(&v30, sel_initWithFrame_, a1, a2, a3, a4);
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F00;
  v13 = v11;
  *(inited + 32) = sub_22821B974();
  *(inited + 40) = sub_22821C144();
  *(inited + 48) = sub_22821BD64();
  *(inited + 56) = sub_22821BBD0();
  v14 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_15;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v16 = i;
    [v13 addSubview_];

    if (v14)
    {
      v17 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_14;
      }

      v17 = *(inited + 40);
    }

    v18 = v17;
    [v13 addSubview_];

    if (v14)
    {
      v19 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_14;
      }

      v19 = *(inited + 48);
    }

    v20 = v19;
    [v13 addSubview_];

    if (v14)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v21 = *(inited + 56);
      goto LABEL_13;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v21 = MEMORY[0x22AAB6D80](3, inited);
LABEL_13:
  v22 = v21;
  [v13 addSubview_];

  swift_setDeallocating();
  v23 = *(inited + 16);
  swift_arrayDestroy();
  sub_22821CC40();
  sub_22821E71C(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_228397F30;
  v25 = sub_228391640();
  v26 = MEMORY[0x277D74DB8];
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  v27 = sub_228391E20();
  v28 = sub_2282204DC(&qword_27D825618, MEMORY[0x277D126D0]);
  *(v24 + 48) = v27;
  *(v24 + 56) = v28;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v13;
}

id sub_22821C7BC(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier];
  *v3 = 0xD000000000000016;
  *(v3 + 1) = 0x800000022839CAA0;
  v4 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView] = 0;
  sub_228391150();
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_activeConstraints] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint] = 0;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for MedicationListItemCell();
  v5 = objc_msgSendSuper2(&v24, sel_initWithCoder_, a1);
  if (!v5)
  {

    return v5;
  }

  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228397F00;
  v7 = v5;
  *(inited + 32) = sub_22821B974();
  *(inited + 40) = sub_22821C144();
  *(inited + 48) = sub_22821BD64();
  *(inited + 56) = sub_22821BBD0();
  v8 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x22AAB6D80](0, inited))
  {
    v10 = i;
    [v7 addSubview_];

    if (v8)
    {
      v11 = MEMORY[0x22AAB6D80](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_17;
      }

      v11 = *(inited + 40);
    }

    v12 = v11;
    [v7 addSubview_];

    if (v8)
    {
      v13 = MEMORY[0x22AAB6D80](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_17;
      }

      v13 = *(inited + 48);
    }

    v14 = v13;
    [v7 addSubview_];

    if (v8)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v15 = *(inited + 56);
      goto LABEL_14;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = MEMORY[0x22AAB6D80](3, inited);
LABEL_14:
  v16 = v15;
  [v7 addSubview_];

  swift_setDeallocating();
  v17 = *(inited + 16);
  swift_arrayDestroy();
  sub_22821CC40();
  sub_22821E71C(0, &qword_27D825090, sub_2281D51F0, MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_228397F30;
  v19 = sub_228391640();
  v20 = MEMORY[0x277D74DB8];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = sub_228391E20();
  v22 = sub_2282204DC(&qword_27D825618, MEMORY[0x277D126D0]);
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2281D5250();
  sub_228392B50();

  swift_unknownObjectRelease();

  return v5;
}

void sub_22821CBC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_22821D7F8();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_22821CC40();
  }
}

void sub_22821CC40()
{
  v1 = v0;
  v2 = objc_opt_self();
  v73 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_activeConstraints;
  v3 = *&v0[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_activeConstraints];
  sub_228180ED0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228396260;

  *(inited + 32) = sub_22821C304();
  sub_2281D5A98(inited);
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v5 = sub_228392190();

  v74 = v2;
  [v2 deactivateConstraints_];

  LOBYTE(inited) = sub_228392B40();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22839CA00;
  v7 = sub_22821BD64();
  v8 = [v7 topAnchor];

  v9 = [v1 topAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v6 + 32) = v10;
  v11 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView;
  v12 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___pillImageView] leadingAnchor];
  v13 = [v1 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v6 + 40) = v14;
  v15 = *&v1[v11];
  if (inited)
  {
    v16 = [v15 heightAnchor];
    v17 = [v16 constraintEqualToConstant_];

    *(v6 + 48) = v17;
    v18 = [*&v1[v11] trailingAnchor];
    v19 = [v1 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor_];

    *(v6 + 56) = v20;
    v21 = sub_22821B974();
    v22 = [v21 leadingAnchor];

    v23 = [v1 leadingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:16.0];

    *(v6 + 64) = v24;
    v25 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel];
    v26 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel] topAnchor];
    v72 = &selRef_bottomAnchor;
    v27 = [*&v1[v11] bottomAnchor];
    v28 = -34.0;
    v29 = -0.0;
  }

  else
  {
    v30 = [v15 widthAnchor];
    v31 = [v30 constraintEqualToConstant_];

    *(v6 + 48) = v31;
    v32 = [*&v1[v11] bottomAnchor];
    v33 = [v1 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor_];

    *(v6 + 56) = v34;
    v35 = sub_22821B974();
    v36 = [v35 leadingAnchor];

    v37 = [*&v1[v11] trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:16.0];

    *(v6 + 64) = v38;
    v25 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel];
    v26 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel] topAnchor];
    v27 = [v1 topAnchor];
    v72 = &selRef_lastBaselineAnchor;
    v28 = -8.0;
    v29 = 0.0;
  }

  v39 = v27;
  v40 = [v26 constraintEqualToAnchor:v39 constant:16.0];

  *(v6 + 72) = v40;
  v41 = [*v25 trailingAnchor];
  v42 = sub_22821BBD0();
  v43 = [v42 leadingAnchor];

  v44 = [v41 constraintLessThanOrEqualToAnchor:v43 constant:-8.0];
  *(v6 + 80) = v44;
  v45 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator;
  v46 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___disclosureIndicator] trailingAnchor];
  v47 = [v1 trailingAnchor];
  v48 = [v46 &selRef_resignFirstResponder + 6];

  *(v6 + 88) = v48;
  v49 = [*&v1[v45] firstBaselineAnchor];
  v50 = [*v25 firstBaselineAnchor];
  v51 = [v49 constraintEqualToAnchor_];

  *(v6 + 96) = v51;
  v52 = sub_22821C144();
  v53 = [v52 topAnchor];

  v54 = [*v25 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:v29];

  *(v6 + 104) = v55;
  v56 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView;
  v57 = [*&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___itemsStackView] leadingAnchor];
  v58 = [*v25 leadingAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v6 + 112) = v59;
  v60 = [*&v1[v56] trailingAnchor];
  v61 = [v1 trailingAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:v28];

  *(v6 + 120) = v62;
  v63 = [*&v1[v56] *v72];
  v64 = [v1 bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:-16.0];

  *(v6 + 128) = v65;
  v66 = *&v1[v73];
  *&v1[v73] = v6;

  v67 = *&v1[v73];
  v68 = swift_initStackObject();
  *(v68 + 16) = xmmword_228396260;
  v69 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___minHeightConstraint];
  *(v68 + 32) = v69;

  v70 = v69;
  sub_2281D5A98(v68);
  v71 = sub_228392190();

  [v74 activateConstraints_];
}

uint64_t sub_22821D4A0()
{
  v1 = v0;
  sub_22821E71C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v20 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = sub_228391330();
  v13 = type metadata accessor for MedicationListItemCell();
  v20.receiver = v1;
  v20.super_class = v13;
  objc_msgSendSuper2(&v20, sel__bridgedUpdateConfigurationUsingState_, v12);

  if ([v1 isHighlighted])
  {
    MEMORY[0x22AAB6410]();
    v14 = sub_2283913A0();
    if ((*(*(v14 - 8) + 48))(v11, 1, v14))
    {
      sub_228205274(v11, v9);
      MEMORY[0x22AAB6420](v9);
      v15 = v11;
      return sub_228205308(v15);
    }

    sub_22817A958(0, &qword_280DDB990, 0x277D75348);
    sub_228392BA0();
    sub_228391370();
    v18 = v11;
  }

  else
  {
    MEMORY[0x22AAB6410]();
    v16 = sub_2283913A0();
    if ((*(*(v16 - 8) + 48))(v6, 1, v16))
    {
      sub_228205274(v6, v9);
      MEMORY[0x22AAB6420](v9);
      v15 = v6;
      return sub_228205308(v15);
    }

    v19 = [objc_opt_self() tertiarySystemBackgroundColor];
    sub_228391370();
    v18 = v6;
  }

  return MEMORY[0x22AAB6420](v18);
}

uint64_t sub_22821D7F8()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_22821E71C(0, &qword_27D825628, MEMORY[0x277D12720], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v118 = &v109 - v10;
  sub_22821E71C(0, &qword_280DDBD20, MEMORY[0x277D116C8], v7);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_item;
  swift_beginAccess();
  sub_22817E6C8(&v1[v13], &v136);
  if (v138)
  {
    sub_2281810DC(0, &qword_280DDCD60);
    type metadata accessor for MedicationListItem();
    if (swift_dynamicCast())
    {
      v14 = v135[0];
      v126 = *MEMORY[0x277D12788];
      v15 = sub_228392000();
      v17 = v16;
      v136 = 46;
      v137 = 0xE100000000000000;
      v18 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier + 8];
      v125 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell_cellAXIdentifier];
      v124 = v18;
      MEMORY[0x22AAB5C80]();
      MEMORY[0x22AAB5C80](46, 0xE100000000000000);
      v135[0] = v14[8];
      v19 = sub_228393420();
      MEMORY[0x22AAB5C80](v19);

      v20 = v136;
      v21 = v137;
      v136 = v15;
      v137 = v17;

      MEMORY[0x22AAB5C80](v20, v21);

      v22 = sub_228391FC0();

      [v1 setAccessibilityIdentifier_];

      sub_22838F7B0();
      v23 = *MEMORY[0x277CDA138];
      sub_228392B00();
      v24 = sub_22821BD64();
      v25 = v14[2];
      _sSo29HKMedicationUserDomainConceptC19HealthMedicationsUIE7medmoji0eF10Experience29MedicationVisualizationConfigVSgvg_0();
      sub_228390950();

      v26 = sub_22821B974();
      v28 = v14[3];
      v136 = v14[2];
      v27 = v136;
      sub_22817A958(0, &qword_280DDB9E0, 0x277D115B8);
      v29 = v27;
      v30 = v28;
      sub_228390F20();
      v31 = sub_228391FC0();

      [v26 setText_];
      v32 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___primaryLabel];
      v33 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
      v34 = *MEMORY[0x277D76918];
      v35 = v32;
      v123 = v33;
      v36 = sub_228392AD0();
      [v35 setFont_];

      sub_228180ED0();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_228399D40;
      *(inited + 32) = sub_22821BEA4();
      *(inited + 40) = sub_22821BF40();
      *(inited + 48) = sub_22821BFDC();
      v112 = v1;
      if ((inited & 0xC000000000000001) == 0)
      {
        if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v38 = *(inited + 32);
          sub_228392B10();

          if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) > 1uLL)
          {
            v39 = *(inited + 40);
            sub_228392B10();

            if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
            {
              v40 = *(inited + 48);
LABEL_8:
              v41 = v40;
              sub_228392B10();

              swift_setDeallocating();
              v42 = *(inited + 16);
              swift_arrayDestroy();
              v110 = v14;
              v43 = v14[3];
              v136 = v14[2];
              v137 = v43;
              v111 = MedicationListViewData.items.getter();
              v44 = *(v111 + 2);
              if (v44)
              {
                v116 = &v112[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView];
                v117 = &v112[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___scheduleStackView];
                v122 = &v112[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___medicationDetailStackView];
                v121 = "pregnancy / lactation";
                v120 = *MEMORY[0x277D769D0];
                v45 = (v111 + 48);
                v119 = *MEMORY[0x277D74418];
                v115 = *MEMORY[0x277D740C0];
                v114 = *MEMORY[0x277D740A8];
                v113 = xmmword_228397F30;
                do
                {
                  v133 = v44;
                  v49 = *(v45 - 16);
                  v50 = *(v45 - 1);
                  v134 = *v45;
                  v51 = v45[1];
                  v127 = v45[2];
                  v52 = v45[3];
                  v128 = v45[4];
                  v53 = v45[5];
                  v54 = objc_allocWithZone(MEMORY[0x277D756B8]);

                  v131 = v50;
                  v129 = v51;

                  v132 = v52;

                  v55 = [v54 init];
                  v56 = sub_228392000();
                  v58 = v57;
                  v136 = 0;
                  v137 = 0xE000000000000000;
                  v59 = v55;
                  sub_2283931D0();

                  v136 = 46;
                  v137 = 0xE100000000000000;
                  MEMORY[0x22AAB5C80](v125, v124);
                  MEMORY[0x22AAB5C80](0xD000000000000017, v121 | 0x8000000000000000);
                  v45 += 8;
                  v60 = 0x6874676E65727473;
                  if (v49 != 2)
                  {
                    v60 = 1836216166;
                  }

                  v61 = 0xE400000000000000;
                  if (v49 == 2)
                  {
                    v61 = 0xE800000000000000;
                  }

                  v62 = 0x656C756465686373;
                  if (v49)
                  {
                    v62 = 0x656863536174656DLL;
                  }

                  v63 = 0xEC000000656C7564;
                  if (!v49)
                  {
                    v63 = 0xE800000000000000;
                  }

                  v130 = v49;
                  if (v49 > 1)
                  {
                    v64 = v61;
                  }

                  else
                  {
                    v60 = v62;
                    v64 = v63;
                  }

                  v135[0] = v60;
                  v135[1] = v64;
                  sub_22819DFF4();
                  v65 = sub_228392F50();
                  v67 = v66;

                  MEMORY[0x22AAB5C80](v65, v67);

                  v68 = v136;
                  v69 = v137;
                  v136 = v56;
                  v137 = v58;

                  MEMORY[0x22AAB5C80](v68, v69);

                  v70 = sub_228391FC0();

                  [v59 setAccessibilityIdentifier_];

                  if (!v53)
                  {
                  }

                  v71 = v59;

                  v72 = sub_228391FC0();

                  [v71 setAccessibilityLabel_];

                  [v71 setTranslatesAutoresizingMaskIntoConstraints_];
                  [v71 setNumberOfLines_];
                  LODWORD(v73) = 1144750080;
                  [v71 setContentCompressionResistancePriority:1 forAxis:v73];
                  v74 = v131;
                  if (v132)
                  {
                    sub_22817A958(0, &unk_280DDBAA0, 0x277CCA898);
                    v75 = sub_228392800();
                    (*(*(v75 - 8) + 56))(v118, 1, 1, v75);
                    v76 = v74;

                    v77 = v76;

                    sub_228392AD0();
                    v78 = sub_2283927E0();
                  }

                  else
                  {
                    sub_22821E71C(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
                    v79 = swift_initStackObject();
                    *(v79 + 16) = v113;
                    v80 = v115;
                    *(v79 + 32) = v115;
                    v81 = sub_22817A958(0, &qword_280DDB990, 0x277D75348);
                    *(v79 + 40) = v74;
                    v82 = v114;
                    *(v79 + 64) = v81;
                    *(v79 + 72) = v82;
                    v83 = v74;
                    v84 = v80;
                    v85 = v82;
                    v86 = v123;
                    v87 = sub_228392AD0();
                    *(v79 + 104) = v86;
                    *(v79 + 80) = v87;
                    sub_2281A859C(v79);
                    swift_setDeallocating();
                    sub_2281D50E8();
                    swift_arrayDestroy();
                    v88 = objc_allocWithZone(MEMORY[0x277CCA898]);
                    v89 = sub_228391FC0();
                    type metadata accessor for Key(0);
                    sub_2282204DC(&qword_280DDBA40, type metadata accessor for Key);
                    v90 = sub_228391F10();

                    v78 = [v88 initWithString:v89 attributes:v90];
                  }

                  [v71 setAttributedText_];

                  v91 = v130;
                  v92 = sub_228304638(v130);
                  v47 = v122;
                  if ((v92 & 1) == 0)
                  {
                    if (v91)
                    {
                      v46 = sub_228393460();

                      v47 = v116;
                      if (v46)
                      {
                        v47 = v117;
                      }
                    }

                    else
                    {

                      v47 = v117;
                    }
                  }

                  v48 = *v47;
                  [v48 addArrangedSubview_];

                  v44 = v133 - 1;
                }

                while (v133 != 1);
              }

              v102 = *&v112[OBJC_IVAR____TtC19HealthMedicationsUI22MedicationListItemCell____lazy_storage___metaScheduleStackView];
              v103 = objc_allocWithZone(MEMORY[0x277D75D18]);
              v104 = v102;
              v105 = [v103 init];
              [v104 addArrangedSubview_];

              v106 = v110[7];

              sub_2283928F0();
            }
          }
        }

        __break(1u);
      }

      v107 = MEMORY[0x22AAB6D80](0, inited);
      sub_228392B10();

      v108 = MEMORY[0x22AAB6D80](1, inited);
      sub_228392B10();

      v40 = MEMORY[0x22AAB6D80](2, inited);
      goto LABEL_8;
    }
  }

  else
  {
    sub_2282203EC(&v136, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
  }

  sub_228391150();
  v93 = v1;
  v94 = sub_2283911A0();
  v95 = sub_2283925C0();

  if (os_log_type_enabled(v94, v95))
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v135[0] = v97;
    *v96 = 136446210;
    sub_22817E6C8(&v1[v13], &v136);
    sub_228220448(0, &qword_280DDCD50, &qword_280DDCD60, MEMORY[0x277D10D48], sub_2281810DC);
    v98 = sub_228392040();
    v100 = sub_2281C96FC(v98, v99, v135);

    *(v96 + 4) = v100;
    _os_log_impl(&dword_22816B000, v94, v95, "Incorrect view model for MedicationListItemCell: %{public}s", v96, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x22AAB7B80](v97, -1, -1);
    MEMORY[0x22AAB7B80](v96, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}