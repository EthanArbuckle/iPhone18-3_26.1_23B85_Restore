void __swiftcall HearingAidUserAgeCheckViewController.tableView(_:viewForHeaderInSection:)(UIView_optional *__return_ptr retstr, UITableView *_, Swift::Int viewForHeaderInSection)
{
  v5 = sub_251FDC230();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (viewForHeaderInSection < 0)
    {
      __break(1u);
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > viewForHeaderInSection)
    {
      v6 = *(v5 + 8 * viewForHeaderInSection + 32);

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v16 = MEMORY[0x253096650](viewForHeaderInSection, v5);

  v18 = *(v16 + 16);
  v17 = *(v16 + 24);

  swift_unknownObjectRelease();
LABEL_5:
  v9 = sub_2520046B0();
  v10 = [(UITableView *)_ dequeueReusableHeaderFooterViewWithIdentifier:v9];

  if (v10)
  {
    v20[3] = sub_252004430();
    v20[4] = MEMORY[0x277D74C30];
    __swift_allocate_boxed_opaque_existential_1(v20);
    v11 = v10;
    sub_252004410();

    sub_252004420();
    v12 = [objc_opt_self() hk:*MEMORY[0x277D76918] preferredFontForTextStyle:2 symbolicTraits:?];
    v13 = sub_252004400();
    sub_2520043E0();
    v13(v19, 0);
    v14 = [objc_opt_self() labelColor];
    v15 = sub_252004400();
    sub_2520043F0();
    v15(v19, 0);

    MEMORY[0x253096450](v20);
  }

  else
  {
  }
}

uint64_t HearingAidUserAgeCheckViewController.headerConfiguration(title:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_252004430();
  v3 = MEMORY[0x277D74C30];
  a1[3] = v2;
  a1[4] = v3;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_252004410();

  sub_252004420();
  v4 = [objc_opt_self() hk:*MEMORY[0x277D76918] preferredFontForTextStyle:2 symbolicTraits:?];
  v5 = sub_252004400();
  sub_2520043E0();
  v5(v9, 0);
  v6 = [objc_opt_self() labelColor];
  v7 = sub_252004400();
  sub_2520043F0();
  return v7(v9, 0);
}

unint64_t HearingAidUserAgeCheckViewController.tableView(_:didSelectRowAt:)()
{
  v0 = sub_252003B90();
  result = sub_251FDC230();
  if ((result & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x253096650](v0, result);
  }

  else
  {
    if ((v0 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v0 >= *((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v2 = *(result + 8 * v0 + 32);
  }

  v3 = v2[6];
  result = sub_252003B80();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v3 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  (*(*v2 + 200))(*(v3 + result + 32));
}

void sub_251FDF0F0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_2520046B0();
  v5 = [objc_opt_self() systemImageNamed_];

  if (v5)
  {
    *&v2[OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_accessoryImage] = v5;
    v2[OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_itemState] = 2;
    v2[OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_accessoryIsSelected] = 0;
    if (a2)
    {
      v6 = sub_2520046B0();
    }

    else
    {
      v6 = 0;
    }

    v15.receiver = v2;
    v15.super_class = type metadata accessor for BinaryConfirmationSelectTableViewCell();
    v7 = objc_msgSendSuper2(&v15, sel_initWithStyle_reuseIdentifier_, 3, v6);

    v8 = v7;
    v9 = [v8 textLabel];
    if (v9)
    {
      v10 = v9;
      [v9 setNumberOfLines_];
    }

    [v8 setSelectionStyle_];
    v11 = [objc_opt_self() secondarySystemBackgroundColor];
    [v8 setBackgroundColor_];

    sub_251FDBF50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6D80, &qword_252007E60);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252007360;
    v13 = sub_252004440();
    v14 = MEMORY[0x277D74DB8];
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    sub_252004960();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_251FDF310()
{
  v1 = sub_2520046B0();
  v2 = [objc_opt_self() systemImageNamed_];

  if (!v2)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_accessoryImage) = v2;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_itemState) = 2;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI37BinaryConfirmationSelectTableViewCell_accessoryIsSelected) = 0;
  sub_252004B10();
  __break(1u);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_251FDF49C()
{
  result = qword_27F4C6CE0;
  if (!qword_27F4C6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6CE0);
  }

  return result;
}

unint64_t sub_251FDF4F4()
{
  result = qword_27F4C6CE8;
  if (!qword_27F4C6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6CE8);
  }

  return result;
}

void sub_251FDF56C()
{
  sub_251FDF630();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_251FDF630()
{
  if (!qword_27F4C6CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4C6C80, "̤");
    v0 = sub_252004510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C6CF8);
    }
  }
}

uint64_t getEnumTagSinglePayload for TableSectionViewModel.State(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TableSectionViewModel.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251FDF818()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251FDF850()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FDF88C(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2 || (v2 & 1) != 0)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = (*(*Strong + 240))(Strong);

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 presentViewController:v7 animated:1 completion:0];
      }
    }
  }
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_251FDF9B0(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 != 2 && (v2 & 1) == 0)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = (*(*Strong + 240))(Strong);

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 presentViewController:v7 animated:1 completion:0];
      }
    }
  }
}

uint64_t sub_251FDFA90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6900, &qword_2520073C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251FDFB14()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C93F8);
  __swift_project_value_buffer(v0, qword_27F4C93F8);
  return sub_2520043C0();
}

uint64_t sub_251FDFB88()
{
  if (qword_27F4C7FD0 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C93F8);
}

uint64_t sub_251FDFBEC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C7FD0 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C93F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FDFC94()
{
  v1 = (v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___deviceName);
  if (*(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___deviceName + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___deviceName + 8);
  }

  else
  {
    type metadata accessor for AnyHearingFeatureContentProvider();
    v4 = sub_251FDFD60();
    v5 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v4);
    if (AnyHearingFeatureContentProvider.featureFlag.getter())
    {
      v2 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
      v7 = v6;
    }

    else
    {

      v7 = 0xEB000000006F7250;
      v2 = 0x2073646F50726941;
    }

    v8 = v1[1];
    *v1 = v2;
    v1[1] = v7;
  }

  return v2;
}

void *sub_251FDFD60()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice;
  v9 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice);
  if (!v9 || (v10 = v9, v11 = sub_251FEAFA4(), v10, !v11))
  {
    sub_2520043A0();
    v12 = sub_2520043B0();
    v13 = sub_2520048B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_251FC55E0(0x6E6F687064616568, 0xEF65636976654465, &v19);
      _os_log_impl(&dword_251FB5000, v12, v13, "%s: connected device !", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x253097030](v15, -1, -1);
      MEMORY[0x253097030](v14, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v11 = *(v1 + v8);
    v16 = v11;
  }

  return v11;
}

uint64_t sub_251FDFF48()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController_listeners;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_251FDFF90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController_listeners;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id HearingAidTuningVoiceEntertainmentController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2520046B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HearingAidTuningVoiceEntertainmentController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice] = 0;
  v5 = &v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___deviceName];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___amplificationSliderSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___swipeControlAmpSwitchSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___transparencyBalanceSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___toneDarkLightSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ownVoiceControlSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ambientNoiseReductionSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___conversationBoostSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___resetAllTuningsSection] = 0;
  if (a2)
  {
    v6 = sub_2520046B0();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for HearingAidTuningVoiceEntertainmentController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

void sub_251FE028C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E48, &qword_252007E90);
  v59 = *(v1 - 8);
  v2 = *(v59 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v54 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E50, &qword_252007E98);
  v60 = *(v6 - 8);
  v7 = *(v60 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E58, &unk_252007EA0);
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v54 - v18;
  v20 = [v0 specifier];
  if (!v20)
  {
    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  v22 = [v20 userInfo];

  if (v22)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v65 = v63;
  v66 = v64;
  if (!*(&v64 + 1))
  {
    goto LABEL_17;
  }

  sub_251FD6770(0, &qword_27F4C69C0, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v23 = v62;
  v24 = sub_2520046B0();
  v57 = v23;
  v25 = [v23 objectForKey_];

  if (v25)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
  }

  v65 = v63;
  v66 = v64;
  if (!*(&v64 + 1))
  {

LABEL_17:
    sub_251FC6470(&v65, &qword_27F4C69B0, &unk_252007A00);
    goto LABEL_18;
  }

  sub_252003EC0();
  if (swift_dynamicCast())
  {
    v26 = v62;
    v27 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice);
    *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice) = v62;
    v55 = v26;

    (*((*MEMORY[0x277D85000] & *v0) + 0xE8))(MEMORY[0x277D84FA0]);
    v56 = v0;
    v28 = sub_251FDFD60();
    if (v28)
    {
      v29 = v28;
      v30 = sub_252003E60();

      sub_252003FC0();
      v31 = sub_252003E20();
      v32 = *(v60 + 8);
      v32(v14, v6);
      *&v65 = v31;
      v33 = sub_251FDFD60();
      if (v33)
      {
        v34 = v33;
        v35 = sub_252003E60();

        sub_252004070();
        v36 = sub_252003E20();
        (*(v59 + 8))(v5, v1);
        *&v63 = v36;
        v37 = sub_251FDFD60();
        if (v37)
        {
          v38 = v37;
          v39 = sub_252003E60();

          sub_252003F50();
          v40 = sub_252003E20();
          v32(v11, v6);
          v62 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E60, &unk_252007EB0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E68, &unk_2520084D0);
          sub_251FD67B8(&qword_27F4C6E70, &qword_27F4C6E60, &unk_252007EB0);
          sub_251FD67B8(&qword_27F4C6E78, &qword_27F4C6E68, &unk_2520084D0);
          sub_252004460();
          swift_allocObject();
          v41 = v56;
          swift_unknownObjectWeakInit();
          sub_251FD67B8(&qword_27F4C6E80, &qword_27F4C6E58, &unk_252007EA0);
          sub_252004580();

          (*(v58 + 8))(v19, v15);
          v42 = (*((*MEMORY[0x277D85000] & *v41) + 0xF0))(&v65);
          sub_252004480();

          v42(&v65, 0);
          v43 = type metadata accessor for HearingAidTuningVoiceEntertainmentController();
          v61.receiver = v41;
          v61.super_class = v43;
          objc_msgSendSuper2(&v61, sel_viewDidLoad);

          return;
        }

        goto LABEL_27;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_18:
  if (qword_27F4C7FD0 != -1)
  {
    swift_once();
  }

  v44 = sub_2520043D0();
  __swift_project_value_buffer(v44, qword_27F4C93F8);
  v45 = sub_2520043B0();
  v46 = sub_2520048B0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v65 = v48;
    *v47 = 136315650;
    *(v47 + 4) = sub_251FC55E0(0x4C64694477656976, 0xED0000292864616FLL, &v65);
    *(v47 + 12) = 2048;
    *(v47 + 14) = 50;
    *(v47 + 22) = 2080;
    sub_252003F10();
    v49 = sub_252003EF0();
    sub_252003EE0();

    sub_252003EC0();
    v50 = sub_252004610();
    v52 = v51;

    v53 = sub_251FC55E0(v50, v52, &v65);

    *(v47 + 24) = v53;
    _os_log_impl(&dword_251FB5000, v45, v46, "%s: %ld Depedencies not meet! %s", v47, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x253097030](v48, -1, -1);
    MEMORY[0x253097030](v47, -1, -1);
  }
}

char *sub_251FE0B64()
{
  v1 = sub_251FDFD60();
  if (v1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69C8, &qword_252007400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252007E80;
    v3 = MEMORY[0x277D85000];
    *(inited + 32) = (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
    *(inited + 40) = (*((*v3 & *v0) + 0x110))();
    *(inited + 48) = (*((*v3 & *v0) + 0x128))();
    *(inited + 56) = (*((*v3 & *v0) + 0x140))();
    *(inited + 64) = (*((*v3 & *v0) + 0x170))();
    *(inited + 72) = (*((*v3 & *v0) + 0x188))();
    *(inited + 80) = (*((*v3 & *v0) + 0x158))();
    *(inited + 88) = (*((*v3 & *v0) + 0x1A0))();
    v4 = sub_251FD1C74(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69D0, &qword_252007408);
    swift_arrayDestroy();
    sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
    v5 = sub_2520047A0();
    v6 = sub_2520046B0();
    [v0 setValue:v5 forKey:v6];

    v7 = sub_251FD1A78(v4);
  }

  else
  {
    sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
    v8 = sub_2520047A0();
    v9 = sub_2520046B0();
    [v0 setValue:v8 forKey:v9];

    if (qword_27F4C7FD0 != -1)
    {
      swift_once();
    }

    v10 = sub_2520043D0();
    __swift_project_value_buffer(v10, qword_27F4C93F8);
    v11 = sub_2520043B0();
    v12 = sub_2520048B0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_251FC55E0(0x6569666963657073, 0xEC00000029287372, &v16);
      *(v13 + 12) = 2048;
      *(v13 + 14) = 86;
      _os_log_impl(&dword_251FB5000, v11, v12, "%s: %ld Depedencies not meet, bailing out of specifiers returning empty conroller!", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x253097030](v14, -1, -1);
      MEMORY[0x253097030](v13, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_251FE10E0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___amplificationSliderSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___amplificationSliderSection) = a1;
}

uint64_t (*sub_251FE10F8(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE10A0();
  return sub_251FE1140;
}

uint64_t sub_251FE116C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_251FE11D4(void *a1)
{
  v2 = sub_2520042A0();
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2520046A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252004680();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v33 = a1;
  sub_252004670();
  sub_252004660();
  sub_251FDFC94();
  sub_252004640();

  sub_252004660();
  sub_252004690();
  v15 = type metadata accessor for HearingAidTuningVoiceEntertainmentController();
  v16 = sub_251FEAB30(v11);
  v18 = v17;
  v19 = *(v7 + 8);
  v19(v11, v6);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_252004360();
  v31 = v16;
  v32 = v18;
  sub_252004310();

  v33 = a1;
  sub_252004620();
  sub_251FEAB30(v11);
  v19(v11, v6);
  v34 = v15;
  v33 = a1;
  v23 = a1;
  v24 = v28;
  sub_252004290();
  sub_252004320();

  (*(v29 + 8))(v24, v30);
  sub_252004330();

  v25 = sub_252004350();

  return v25;
}

uint64_t sub_251FE15A8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___swipeControlAmpSwitchSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___swipeControlAmpSwitchSection) = a1;
}

uint64_t (*sub_251FE15C0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE114C();
  return sub_251FE1608;
}

uint64_t sub_251FE1648(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *&v4[*a1];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = sub_251FE1744(v4, a2, a3, a4);
    v8 = *&v4[v5];
    *&v4[v5] = v7;
  }

  return v7;
}

uint64_t sub_251FE16AC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___transparencyBalanceSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___transparencyBalanceSection) = a1;
}

uint64_t (*sub_251FE16C4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE1614();
  return sub_251FE170C;
}

uint64_t sub_251FE1744(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a4;
  v5 = sub_2520042A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2520046A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_252004620();
  v17 = type metadata accessor for HearingAidTuningVoiceEntertainmentController();
  sub_251FEAB30(v16);
  (*(v12 + 8))(v16, v11);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_252004360();
  v26 = v17;
  v25 = a1;
  v21 = a1;
  sub_252004290();
  sub_252004320();

  (*(v6 + 8))(v10, v5);
  v24[4] = v21;
  sub_252004330();

  v22 = sub_252004350();

  return v22;
}

uint64_t sub_251FE19D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___toneDarkLightSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___toneDarkLightSection) = a1;
}

uint64_t (*sub_251FE19EC(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE1718();
  return sub_251FE1A34;
}

void sub_251FE1A60(void *a1)
{
  v2 = sub_2520042A0();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251FDFD60();
  if (!v14)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = sub_252003E60();

  LODWORD(v15) = sub_252004110();
  if (v15 != 1)
  {
    goto LABEL_9;
  }

  v17 = sub_251FDFD60();
  if (!v17)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = sub_252003E60();

  LODWORD(v18) = sub_252004140();
  if (v18 == 2)
  {
    goto LABEL_7;
  }

  v20 = sub_251FDFD60();
  if (v20)
  {
    v21 = v20;
    v22 = sub_252003E60();

    LODWORD(v21) = sub_252004140();
    if (v21 == 3)
    {
LABEL_7:
      v23 = sub_251FDFD60();
      if (v23)
      {
        v24 = v23;
        v25 = sub_252003E60();

        LODWORD(v24) = sub_252004140();
        v46[3] = v24 == 2;
        v47[0] = a1;
        sub_252004620();
        v26 = type metadata accessor for HearingAidTuningVoiceEntertainmentController();
        sub_251FEAB30(v13);
        (*(v9 + 8))(v13, v8);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
        v28 = *(v27 + 48);
        v29 = *(v27 + 52);
        swift_allocObject();
        sub_252004360();
        v47[3] = v26;
        v47[0] = a1;
        a1;
        sub_252004290();
        sub_252004320();

        v30 = (*(v3 + 8))(v7, v2);
        MEMORY[0x28223BE20](v30, v31);
        sub_252004330();

        sub_252004350();

        return;
      }

      goto LABEL_19;
    }

LABEL_9:
    if (qword_27F4C7FD0 != -1)
    {
      swift_once();
    }

    v32 = sub_2520043D0();
    __swift_project_value_buffer(v32, qword_27F4C93F8);
    v2 = a1;
    v33 = sub_2520043B0();
    v34 = sub_2520048C0();
    if (!os_log_type_enabled(v33, v34))
    {

      return;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v47[0] = v36;
    *v35 = 136315906;
    *(v35 + 4) = sub_251FC55E0(0xD000000000000016, 0x800000025200CF00, v47);
    *(v35 + 12) = 1024;
    v37 = sub_251FDFD60();
    if (v37)
    {
      v38 = v37;
      v39 = sub_252003E60();

      LODWORD(v38) = sub_252004110();
      *(v35 + 14) = v38 == 1;

      *(v35 + 18) = 1024;
      v40 = sub_251FDFD60();
      if (v40)
      {
        v41 = v40;
        v42 = sub_252003E60();

        LODWORD(v41) = sub_252004140();
        *(v35 + 20) = v41 == 2;

        *(v35 + 24) = 1024;
        v43 = sub_251FDFD60();
        if (v43)
        {
          v44 = v43;
          v45 = sub_252003E60();

          LODWORD(v44) = sub_252004140();
          *(v35 + 26) = v44 == 3;

          _os_log_impl(&dword_251FB5000, v33, v34, "%s: haV2 capability - %{BOOL}d hav2 region supported - %{BOOL}d hav2 region rescinded - %{BOOL}d", v35, 0x1Eu);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          MEMORY[0x253097030](v36, -1, -1);
          MEMORY[0x253097030](v35, -1, -1);

          return;
        }

        goto LABEL_22;
      }

LABEL_21:

      __break(1u);
LABEL_22:

      __break(1u);
      goto LABEL_23;
    }

LABEL_20:

    __break(1u);
    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_251FE2040(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ownVoiceControlSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ownVoiceControlSection) = a1;
}

uint64_t (*sub_251FE2058(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE1A40();
  return sub_251FE20A0;
}

uint64_t sub_251FE20CC(void *a1)
{
  v2 = sub_2520042A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = a1;
  sub_252004620();
  v14 = type metadata accessor for HearingAidTuningVoiceEntertainmentController();
  sub_251FEAB30(v13);
  (*(v9 + 8))(v13, v8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_252004360();
  v24 = v14;
  v23 = a1;
  v18 = a1;
  sub_252004290();
  sub_252004320();

  (*(v3 + 8))(v7, v2);
  v22 = v18;
  sub_252004330();

  v19 = sub_252004350();

  return v19;
}

uint64_t sub_251FE2370(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ambientNoiseReductionSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ambientNoiseReductionSection) = a1;
}

uint64_t (*sub_251FE2388(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE20AC();
  return sub_251FE23D0;
}

uint64_t sub_251FE23FC(void *a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2520042A0();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251FE26C0(a1);
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  sub_252004360();
  v25 = v13;
  v26 = v15;
  sub_252004310();

  v27 = a1;
  sub_252004620();
  v19 = type metadata accessor for HearingAidTuningVoiceEntertainmentController();
  sub_251FEAB30(v7);
  (*(v3 + 8))(v7, v2);
  v28 = v19;
  v27 = a1;
  v20 = a1;
  sub_252004290();
  sub_252004320();

  (*(v8 + 8))(v12, v24);
  v21 = sub_252004350();

  return v21;
}

void *sub_251FE26C0(uint64_t a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252004680();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  result = sub_251FDFD60();
  if (result)
  {
    v12 = result;
    v13 = sub_252003E60();

    sub_252004110();
    result = sub_251FDFD60();
    if (result)
    {
      v14 = result;
      v15 = sub_252003E60();

      sub_252004140();
      v17[1] = a1;
      sub_252004670();
      sub_252004660();
      sub_251FDFC94();
      sub_252004640();

      sub_252004660();
      sub_252004690();
      type metadata accessor for HearingAidTuningVoiceEntertainmentController();
      v16 = sub_251FEAB30(v7);
      (*(v3 + 8))(v7, v2);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251FE2960(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___conversationBoostSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___conversationBoostSection) = a1;
}

uint64_t (*sub_251FE2978(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE23DC();
  return sub_251FE29C0;
}

uint64_t sub_251FE29EC(uint64_t a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520042A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_252004360();
  *&v19[0] = a1;
  sub_252004620();
  type metadata accessor for HearingAidTuningVoiceEntertainmentController();
  sub_251FEAB30(v7);
  (*(v3 + 8))(v7, v2);
  memset(v19, 0, sizeof(v19));
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_252004290();
  sub_252004340();

  (*(v9 + 8))(v13, v8);
  v17 = sub_252004350();

  return v17;
}

uint64_t sub_251FE2C88(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___resetAllTuningsSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___resetAllTuningsSection) = a1;
}

uint64_t (*sub_251FE2CA0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_251FE29CC();
  return sub_251FE2CE8;
}

id sub_251FE2CF4()
{
  result = sub_251FDFD60();
  if (result)
  {
    v1 = result;
    v2 = sub_252003E60();

    sub_252003F30();
    v4 = v3;

    v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v6) = v4;

    return [v5 initWithFloat_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251FE2E08(void *a1)
{
  v2 = sub_251FDFD60();
  if (v2)
  {
    v3 = v2;
    v4 = sub_252003E60();

    [a1 floatValue];
    sub_252003F40();
  }

  else
  {
    __break(1u);
  }
}

void *sub_251FE2F0C()
{
  result = sub_251FDFD60();
  if (result)
  {
    v1 = result;
    v2 = sub_252003E60();

    sub_252004040();
    sub_251FD6770(0, &qword_27F4C6AF8, 0x277CCABB0);
    return sub_252004970();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_251FE306C(void *a1)
{
  v2 = sub_251FDFD60();
  if (v2)
  {
    v3 = v2;
    v4 = sub_252003E60();

    [a1 BOOLValue];
    sub_252004050();
  }

  else
  {
    __break(1u);
  }
}

id sub_251FE3188(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252003B60();
  v5 = type metadata accessor for HearingAidTuningVoiceEntertainmentController();
  v15.receiver = v1;
  v15.super_class = v5;
  v6 = objc_msgSendSuper2(&v15, sel_tableView_cellForRowAtIndexPath_, a1, v4);

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7 && (v8 = v7, [v7 type] == 13))
  {
    v9 = v6;
    v10 = [v8 textLabel];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() redColor];
      [v11 setTextColor_];
    }
  }

  else
  {

    v9 = sub_252003B60();
    v14.receiver = v2;
    v14.super_class = v5;
    v8 = objc_msgSendSuper2(&v14, sel_tableView_cellForRowAtIndexPath_, a1, v9);
  }

  return v8;
}

id HearingAidTuningVoiceEntertainmentController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingAidTuningVoiceEntertainmentController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_251FE3528()
{
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController__headphoneDevice) = 0;
  v1 = (v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___deviceName);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController_listeners) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___amplificationSliderSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___swipeControlAmpSwitchSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___transparencyBalanceSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___toneDarkLightSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ownVoiceControlSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___ambientNoiseReductionSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___conversationBoostSection) = 0;
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI44HearingAidTuningVoiceEntertainmentController____lazy_storage___resetAllTuningsSection) = 0;
  sub_252004B10();
  __break(1u);
}

uint64_t sub_251FE3614()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FE364C()
{
  if (qword_27F4C7FD0 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();
  __swift_project_value_buffer(v0, qword_27F4C93F8);
  v1 = sub_2520043B0();
  v2 = sub_2520048C0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_251FB5000, v1, v2, "objectWillChange: reload called", v3, 2u);
    MEMORY[0x253097030](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong reloadSpecifiers];
  }
}

void type metadata accessor for HMMultiState()
{
  if (!qword_27F4C6E88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F4C6E88);
    }
  }
}

void sub_251FE37CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_251FDFD60();

    if (v2)
    {
      v3 = sub_252003E60();
      swift_allocObject();
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      sub_252003F20();
    }
  }
}

void sub_251FE38BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong reloadSpecifiers];
  }
}

unint64_t sub_251FE3920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6EB0, qword_252007F80);
    v3 = sub_252004B50();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_251FD4318(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_251FE3A24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251FE3A94(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v11 = type metadata accessor for HearingAidTuningValuesSliderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E90, &qword_252007F48);
  [a1 setProperty:sub_252004BB0() forKey:{*MEMORY[0x277D3FE58], v11}];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 32) = 0x745F726564696C73;
  *(inited + 16) = xmmword_252007350;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 48) = 3;
  *(inited + 72) = &type metadata for HearingAidTuningValuesSliderCell.SliderType;
  *(inited + 80) = 0x6E6F687064616568;
  *(inited + 88) = 0xEF65636976654465;
  v7 = sub_251FDFD60();
  if (v7)
  {
    v8 = v7;
    *(inited + 120) = sub_252003EC0();
    *(inited + 96) = v8;
    sub_251FD4B5C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
    swift_arrayDestroy();
    v9 = sub_252004600();

    [a1 setUserInfo_];

    v10 = sub_2520047F0();
    [a1 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];
  }

  else
  {
    __break(1u);
  }
}

void sub_251FE3C98(void *a1, char a2)
{
  v5 = *(v2 + 16);
  v10 = type metadata accessor for HearingAidTuningValuesSliderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E90, &qword_252007F48);
  [a1 setProperty:sub_252004BB0() forKey:{*MEMORY[0x277D3FE58], v10}];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007350;
  *(inited + 32) = 0x745F726564696C73;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 48) = a2;
  *(inited + 72) = &type metadata for HearingAidTuningValuesSliderCell.SliderType;
  *(inited + 80) = 0x6E6F687064616568;
  *(inited + 88) = 0xEF65636976654465;
  v7 = sub_251FDFD60();
  if (v7)
  {
    v8 = v7;
    *(inited + 120) = sub_252003EC0();
    *(inited + 96) = v8;
    sub_251FD4B5C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
    swift_arrayDestroy();
    v9 = sub_252004600();

    [a1 setUserInfo_];
  }

  else
  {
    __break(1u);
  }
}

void sub_251FE3E58(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_2520046B0();
  [a1 setProperty:v5 forKey:*MEMORY[0x277D3FF88]];
}

void sub_251FE3EC0(void *a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for HearingAidTuningAmplificationSliderCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E98, &qword_252007F68);
  [a1 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6EA0, &qword_252007F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  *(inited + 32) = 0x6E6F687064616568;
  *(inited + 40) = 0xEF65636976654465;
  v5 = sub_251FDFD60();
  if (v5)
  {
    *(inited + 48) = v5;
    sub_251FE3920(inited);
    swift_setDeallocating();
    sub_251FC6470(inited + 32, &qword_27F4C6EA8, &qword_252007F78);
    sub_252003EC0();
    v6 = sub_252004600();

    [a1 setUserInfo_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_251FE402C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(sub_252003E10());
  v5 = a3;

  return sub_252003E00();
}

id _HearingAidInternalViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _HearingAidInternalViewController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _HearingAidInternalViewController();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _HearingAidInternalViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _HearingAidInternalViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251FE4248()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9410);
  __swift_project_value_buffer(v0, qword_27F4C9410);
  return sub_2520043C0();
}

uint64_t sub_251FE42C8()
{
  if (qword_27F4C8060 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9410);
}

uint64_t sub_251FE432C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8060 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FE4438()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_flowController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_251FE44E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_flowController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_251FE4540@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

uint64_t sub_251FE459C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

id sub_251FE46A4(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *(*(sub_252004680() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = sub_2520046A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_flowController] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_lisenters] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_serviceClient] = a1;
  type metadata accessor for AnyHearingFeatureContentProvider();
  v33 = a1;
  v32 = a2;
  v12 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a2);
  v13 = AnyHearingFeatureContentProvider.featureFlag.getter();
  v31 = v12;
  if (v13)
  {
    v14 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
  }

  else
  {
    v15 = 0xEB000000006F7250;
    v14 = 0x2073646F50726941;
  }

  v16 = &v3[OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_deviceName];
  *v16 = v14;
  v16[1] = v15;
  sub_252004620();
  sub_251FEAB30(v11);
  v17 = *(v8 + 8);
  v17(v11, v7);
  v18 = sub_2520046B0();
  v29 = v7;
  v30 = v18;

  sub_252004670();
  sub_252004660();
  v19 = *v16;
  v20 = v16[1];

  sub_252004640();

  sub_252004660();
  v21 = *v16;
  v22 = v16[1];

  sub_252004640();

  sub_252004660();
  sub_252004690();
  sub_251FEAB30(v11);
  v17(v11, v29);
  v23 = sub_2520046B0();

  v24 = type metadata accessor for HearingAssistWelcomeController();
  v34.receiver = v3;
  v34.super_class = v24;
  v25 = v30;
  v26 = objc_msgSendSuper2(&v34, sel_initWithTitle_detailText_icon_contentLayout_, v30, v23, 0, 2);

  return v26;
}

uint64_t sub_251FE4A6C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_251FE4A80(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FE4A4C();
  return sub_251FE4AC8;
}

void sub_251FE4AC8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___primaryBoldButton) = v2;
}

id sub_251FE4B00(uint64_t *a1, uint64_t *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = *a2;
    v8 = [objc_opt_self() *a3];
    sub_251FE63A0(v8);
    v9 = *(v3 + v4);
    *(v3 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  v10 = v5;
  return v6;
}

uint64_t sub_251FE4B8C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_251FE4BA0(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FE4AE0();
  return sub_251FE4BE8;
}

void sub_251FE4BE8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController____lazy_storage___secondaryLinkButton) = v2;
}

void sub_251FE4C00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2520043D0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v8);
  if (v11)
  {
    v12 = [v11 headphoneDevice];
    swift_unknownObjectRelease();
    v13 = objc_opt_self();
    sub_252003EB0();
    v14 = sub_2520046B0();

    v23 = [v13 makeTestResultsControllerWithSample:a1 bluetoothAddress:v14];

    v15 = [v2 navigationController];
    if (v15)
    {
      v16 = v15;
      [v15 pushViewController:v23 animated:1];
    }

    v17 = v23;
  }

  else
  {
    v18 = sub_251FE87D8();
    (*(v5 + 16))(v10, v18, v4);
    v19 = sub_2520043B0();
    v20 = sub_2520048B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_251FB5000, v19, v20, "HearingAssistWelcomeController::audiogramIngestionDidSaveAudiogram early exit as we dont have a headphoneDevice no flow controller", v21, 2u);
      MEMORY[0x253097030](v21, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_251FE4EDC()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_lisenters;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_251FE4F24(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_lisenters;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_251FE4FDC()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v58 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6EF0, &qword_252007A20);
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v61 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6EF8, &qword_252007FE8);
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v64 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6F00, &unk_252007FF0);
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v67 = &v58 - v17;
  v18 = sub_252004680();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v21 = sub_2520046A0();
  v70 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for HearingAssistWelcomeController();
  v74.receiver = v0;
  v74.super_class = v27;
  objc_msgSendSuper2(&v74, sel_viewDidLoad);
  v73[0] = v0;
  sub_252004620();
  sub_251FEAB30(v26);
  v28 = *(v22 + 8);
  v28(v26, v21);
  v29 = sub_2520046B0();

  v73[0] = v0;
  sub_252004670();
  sub_252004660();
  v30 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_deviceName);
  v71 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_deviceName + 8);
  v72 = v30;
  sub_252004640();
  sub_252004660();
  sub_252004690();
  sub_251FEAB30(v26);
  v31 = v70;
  v28(v26, v70);
  v32 = sub_2520046B0();

  v33 = sub_2520046B0();
  [v1 addBulletedListItemWithTitle:v29 description:v32 symbolName:v33];

  v73[0] = v1;
  sub_252004620();
  sub_251FEAB30(v26);
  v28(v26, v31);
  v34 = sub_2520046B0();

  v73[0] = v1;
  sub_252004670();
  sub_252004660();
  sub_252004640();
  sub_252004660();
  sub_252004690();
  sub_251FEAB30(v26);
  v28(v26, v31);
  v35 = sub_2520046B0();

  v36 = sub_2520046B0();
  [v1 addBulletedListItemWithTitle:v34 description:v35 symbolName:v36];

  v37 = MEMORY[0x277D85000];
  v38 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  if (v38)
  {
    v39 = v38;
    sub_251FE5E90();
    v40 = [v39 headphoneDevice];
    v41 = sub_252003E60();

    v42 = v61;
    sub_252004000();

    v43 = v63;
    v44 = sub_252004500();
    (*(v62 + 8))(v42, v43);
    v73[0] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BD0, &qword_252007A38);
    sub_251FD67B8(&qword_27F4C6F10, &unk_27F4C6BD0, &qword_252007A38);
    v45 = v64;
    sub_252004560();

    sub_251FD67B8(&qword_27F4C6F18, &qword_27F4C6EF8, &qword_252007FE8);
    sub_251FE7150();
    v46 = v66;
    v47 = v67;
    sub_252004570();
    (*(v65 + 8))(v45, v46);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_251FD67B8(&unk_27F4C6F40, &unk_27F4C6F00, &unk_252007FF0);
    v48 = v69;
    sub_252004580();

    (*(v68 + 8))(v47, v48);
    v49 = (*((*v37 & *v1) + 0xE8))(v73);
    sub_252004480();

    v49(v73, 0);
    return swift_unknownObjectRelease();
  }

  else
  {
    v51 = sub_251FE87D8();
    v53 = v58;
    v52 = v59;
    v54 = v60;
    (*(v59 + 16))(v58, v51, v60);
    v55 = sub_2520043B0();
    v56 = sub_2520048B0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_251FB5000, v55, v56, "Can not load HearingAssistWelcomeController due to depedencies not met flowController is nil", v57, 2u);
      MEMORY[0x253097030](v57, -1, -1);
    }

    return (*(v52 + 8))(v53, v54);
  }
}

void sub_251FE5990(char a1)
{
  v2 = v1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HearingAssistWelcomeController();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1 & 1);
  sub_252003D90();
  v4 = sub_252003D70();
  sub_252003D50();
  sub_252003D80();

  v5 = sub_252003D70();
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x80))();
  if (v6)
  {
    v7 = [v6 headphoneDevice];
    swift_unknownObjectRelease();
    v8 = sub_252003E50();

    [v8 productID];
  }

  sub_252003D80();
}

void sub_251FE5B14(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HearingAssistWelcomeController();
  objc_msgSendSuper2(&v7, sel_viewWillAppear_, a1 & 1);
  sub_252003F10();
  v3 = sub_252003EF0();
  v4 = sub_252003F00();

  v6[4] = sub_251FE5BFC;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_251FD9520;
  v6[3] = &block_descriptor_1;
  v5 = _Block_copy(v6);
  [v4 triggerFetchAudiogramsWithCompletion_];
  _Block_release(v5);
}

void sub_251FE5BFC(void *a1)
{
  if (qword_27F4C8060 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  __swift_project_value_buffer(v2, qword_27F4C9410);
  v3 = a1;
  oslog = sub_2520043B0();
  v4 = sub_2520048C0();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      v7 = 0x64656C696146;
    }

    else
    {
      v7 = 0x6564656563637553;
    }

    if (a1)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE900000000000064;
    }

    v9 = sub_251FC55E0(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_251FB5000, oslog, v4, "Audiogram Refresh: [HearingAssistWelcomeController] Refresh Trigger %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x253097030](v6, -1, -1);
    MEMORY[0x253097030](v5, -1, -1);
  }
}

uint64_t sub_251FE5E90()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v45 - v10;
  v12 = sub_2520046A0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v16);
  if (v19)
  {
    v20 = v19;
    v46 = v11;
    v47 = v2;
    v21 = [v0 buttonTray];
    v48 = v0;
    sub_252004620();
    type metadata accessor for HearingAssistWelcomeController();
    sub_251FEAB30(v18);
    (*(v13 + 8))(v18, v12);
    v22 = sub_2520046B0();

    [v21 setCaptionText_];

    v23 = MEMORY[0x277D85000];
    v24 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
    v25 = v24();
    sub_251FE63A0(v25);

    v26 = [v1 &selRef_sharedInstance];
    v27 = v24();
    [v26 addButton_];

    v28 = [v20 headphoneDevice];
    v29 = sub_252003E60();

    LODWORD(v24) = sub_252004120();
    if (v24 == 2)
    {
      v30 = *((*v23 & *v1) + 0xB8);
      v31 = v30();
      sub_251FE63A0(v31);

      v32 = [v1 &selRef_sharedInstance];
      v33 = v30();
      [v32 addButton_];

      v34 = sub_251FE87D8();
      v36 = v46;
      v35 = v47;
      (*(v3 + 16))(v46, v34, v47);
      v37 = sub_2520043B0();
      v38 = sub_2520048B0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_251FB5000, v37, v38, "Hearing Test Supported -- Adding second button", v39, 2u);
        MEMORY[0x253097030](v39, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v3 + 8))(v36, v35);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v40 = sub_251FE87D8();
    (*(v3 + 16))(v8, v40, v2);
    v41 = sub_2520043B0();
    v42 = sub_2520048B0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_251FB5000, v41, v42, "Can not load HearingAssistWelcomeController due to depedencies not met flowController is nil", v43, 2u);
      MEMORY[0x253097030](v43, -1, -1);
    }

    return (*(v3 + 8))(v8, v2);
  }
}

uint64_t sub_251FE63A0(void *a1)
{
  v2 = v1;
  v34[0] = a1;
  v3 = sub_2520043D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2520046A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*((*MEMORY[0x277D85000] & *v1) + 0x80))(v13);
  if (v16)
  {
    v17 = v16;
    v18 = [v16 headphoneDevice];
    v19 = sub_252003E60();

    sub_252004120();
    v20 = [v17 headphoneDevice];
    v21 = sub_252003E60();

    v22 = sub_252003FD0();
    if (v22 >> 62)
    {
      sub_252004B20();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    MEMORY[0x28223BE20](v24, v25);
    sub_2520049C0();
    v34[1] = v2;
    sub_252004620();
    type metadata accessor for HearingAssistWelcomeController();
    sub_251FEAB30(v15);
    (*(v10 + 8))(v15, v9);
    v30 = sub_2520046B0();

    v31 = v34[0];
    [v34[0] setTitle:v30 forState:0];

    sub_251FD6770(0, &qword_27F4C6BB0, 0x277D750C8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_2520049A0();
    [v31 addAction:v32 forControlEvents:64];

    return swift_unknownObjectRelease();
  }

  else
  {
    v26 = sub_251FE87D8();
    (*(v4 + 16))(v8, v26, v3);
    v27 = sub_2520043B0();
    v28 = sub_2520048B0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_251FB5000, v27, v28, "Can not load HearingAssistWelcomeController due to depedencies not met flowController is nil", v29, 2u);
      MEMORY[0x253097030](v29, -1, -1);
    }

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t sub_251FE6A04()
{
  v0 = sub_2520043D0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = MEMORY[0x277D85000];
    v8 = Strong;
    v9 = (*((*MEMORY[0x277D85000] & *Strong) + 0x80))();

    if (v9)
    {
      v10 = [v9 headphoneDevice];
      swift_unknownObjectRelease();
      type metadata accessor for HMHearingTestService();
      v11 = HMHearingTestService.__allocating_init()();
      v12 = (*((*v7 & *v11) + 0x58))();

      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13 && (v14 = [v13 topViewController]) != 0)
      {
        v15 = v14;
        swift_beginAccess();
        v16 = swift_unknownObjectWeakLoadStrong();
        if (v16)
        {
          v17 = v16;
          v18 = *(v16 + OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_serviceClient);

          sub_252003D90();
          v19 = sub_252003D70();
          sub_252003D50();
          sub_252003D80();

          sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
          v20 = swift_allocObject();
          swift_beginAccess();
          v21 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v22 = swift_allocObject();
          v23 = swift_unknownObjectWeakLoadStrong();

          swift_unknownObjectWeakInit();

          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          *(v24 + 24) = v15;

          v25 = v15;
          static HearingModeUIService.showOcclusionAlert(_:serviceClient:presentAction:passAction:)(v10, v18, sub_251FE75D4, v20, sub_251FE76A8, v24);
        }

        v10 = v12;
      }

      else
      {
        v15 = v12;
      }
    }
  }

  v27 = sub_251FE87D8();
  (*(v1 + 16))(v5, v27, v0);
  v28 = sub_2520043B0();
  v29 = sub_2520048B0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_251FB5000, v28, v29, "Unable to show results page as depedencies not met.", v30, 2u);
    MEMORY[0x253097030](v30, -1, -1);
  }

  return (*(v1 + 8))(v5, v0);
}

id HearingAssistWelcomeController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2520046B0();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_2520046B0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2520046B0();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HearingAssistWelcomeController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2520046B0();

  if (a4)
  {
    v12 = sub_2520046B0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id HearingAssistWelcomeController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingAssistWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_251FE7150()
{
  result = qword_27F4C6F20;
  if (!qword_27F4C6F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4C6F28, &qword_252008000);
    sub_251FE71D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6F20);
  }

  return result;
}

unint64_t sub_251FE71D4()
{
  result = qword_27F4C6F30;
  if (!qword_27F4C6F30)
  {
    sub_251FD6770(255, &unk_27F4C6C00, 0x277CCD030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6F30);
  }

  return result;
}

uint64_t sub_251FE723C()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FE7274()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong buttonTray];

    [v2 removeAllButtons];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_251FE5E90();
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_251FE7420(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return [*(v3 + 16) removeAction:result forControlEvents:a3];
  }

  return result;
}

void sub_251FE7440()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x277CEFE90]) initWithDelegate_];
      [v4 setAnalyticsClient_];
      [v3 presentViewController:v4 animated:1 completion:0];
    }
  }
}

void sub_251FE7504()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationController];

    if (v2)
    {
      type metadata accessor for HearingAidUserAgeCheckViewController();
      v3 = sub_251FDD7EC();
      [v2 pushViewController:v3 animated:1];
    }
  }

  sub_252003D90();
  v4 = sub_252003D70();
  sub_252003D50();
  sub_252003D80();
}

void sub_251FE75D4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationController];

    if (v4)
    {
      [v4 presentViewController:a1 animated:1 completion:0];
    }
  }
}

uint64_t sub_251FE7668()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_251FE76A8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationController];

    if (v5)
    {
      [v5 pushViewController:v1 animated:1];
    }
  }
}

uint64_t sub_251FE7740()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9428);
  __swift_project_value_buffer(v0, qword_27F4C9428);
  return sub_2520043C0();
}

uint64_t sub_251FE77B8()
{
  if (qword_27F4C8070 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9428);
}

uint64_t sub_251FE781C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8070 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FE78C4()
{
  type metadata accessor for HearingTopLevelCaseObjectWrapper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_252003AD0();

  return v2;
}

uint64_t HearingTopLevelCellUseCase.localizedStrings(_:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_2520046A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 1)
  {
    if (!a2)
    {
      v23 = 0;
      sub_252004620();
      v9 = sub_251FEAB30(v8);
      v10 = *(v4 + 8);
      v10(v8, v3);
      v23 = 0;
      sub_252004620();
      v11 = v8;
LABEL_6:
      sub_251FEAB30(v11);
      v10(v8, v3);
      return v9;
    }

    if (a2 == 1)
    {
      v12 = sub_252003E60();
      v13 = sub_252003F60();

      v23 = 1;
      sub_252004620();
      v9 = sub_251FEAB30(v8);
      (*(v4 + 8))(v8, v3);
      if (v13)
      {
        type metadata accessor for HearingTopLevelCaseObjectWrapper();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v15 = [objc_opt_self() bundleForClass_];
        sub_252003AD0();
      }

      return v9;
    }

LABEL_31:
    v23 = a2;
    sub_252004BA0();
    __break(1u);
    goto LABEL_32;
  }

  if (a2 == 2)
  {
    v23 = 2;
    sub_252004620();
    v9 = sub_251FEAB30(v8);
    v10 = *(v4 + 8);
    v10(v8, v3);
    v23 = 2;
    sub_252004620();
    v11 = v8;
    goto LABEL_6;
  }

  if (a2 != 3)
  {
    goto LABEL_31;
  }

  v16 = sub_252003E60();
  v17 = sub_2520040D0();

  v18 = sub_252003E60();
  v19 = sub_252004080();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6FD0, &qword_252008080);
  if (v17)
  {
    if (v17 == 2)
    {
      if (v19 && v19 != 2)
      {
        if (v19 != 1)
        {
          goto LABEL_32;
        }

        goto LABEL_20;
      }

      goto LABEL_26;
    }

    if (v17 == 1)
    {
      if (!v19 || v19 == 2)
      {
        v23 = 3;
        goto LABEL_29;
      }

      if (v19 == 1)
      {
        v23 = 3;
        goto LABEL_29;
      }
    }
  }

  else
  {
    switch(v19)
    {
      case 2:
        goto LABEL_26;
      case 1:
LABEL_20:
        v23 = 3;
LABEL_29:
        sub_252004620();
        sub_251FEAB30(v8);
        v20 = *(v4 + 8);
        v20(v8, v3);
        v23 = 3;
        sub_252004620();
        v9 = sub_251FEAB30(v8);
        v20(v8, v3);
        return v9;
      case 0:
LABEL_26:
        v23 = 3;
        goto LABEL_29;
    }
  }

LABEL_32:
  result = sub_252004B80();
  __break(1u);
  return result;
}

unint64_t sub_251FE7F70@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_251FE85B4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t HearingOcclusionUseCase.localizedStrings(_:)(void *a1, uint64_t a2)
{
  v4 = sub_252004680();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = sub_2520046A0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnyHearingFeatureContentProvider();
  v13 = a1;
  v14 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a1);
  if (AnyHearingFeatureContentProvider.featureFlag.getter())
  {
    AnyHearingFeatureContentProvider.devicePlatformName.getter();
    if (a2 != 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 1;
    sub_252004620();
    v18 = sub_251FEAB30(v12);
    v15 = *(v8 + 8);
    v15(v12, v7);
    v19 = 1;
    sub_252004670();
    sub_252004660();
    sub_252004640();

    sub_252004660();
    sub_252004690();
    v16 = v12;
    goto LABEL_7;
  }

  if (a2 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!a2)
  {

    v19 = 0;
    sub_252004620();
    v18 = sub_251FEAB30(v12);
    v15 = *(v8 + 8);
    v15(v12, v7);
    v19 = 0;
    sub_252004620();
    v16 = v12;
LABEL_7:
    sub_251FEAB30(v16);

    v15(v12, v7);
    return v18;
  }

  v19 = a2;
  result = sub_252004BA0();
  __break(1u);
  return result;
}

unint64_t HearingOcclusionUseCase.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id sub_251FE8360(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_251FE85C4(a1, v3 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingTopLevelCaseObjectWrapper_usecase);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

id sub_251FE83D4(uint64_t *a1)
{
  sub_251FE85C4(a1, v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingTopLevelCaseObjectWrapper_usecase);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for HearingTopLevelCaseObjectWrapper();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_251FE8434()
{
  v1 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingTopLevelCaseObjectWrapper_usecase + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingTopLevelCaseObjectWrapper_usecase), *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingTopLevelCaseObjectWrapper_usecase + 24));
  return sub_252004300();
}

id HearingTopLevelCaseObjectWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HearingTopLevelCaseObjectWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingTopLevelCaseObjectWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_251FE85B4(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_251FE85C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_251FE862C()
{
  result = qword_27F4C6FE0;
  if (!qword_27F4C6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6FE0);
  }

  return result;
}

unint64_t sub_251FE8684()
{
  result = qword_27F4C6FE8;
  if (!qword_27F4C6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C6FE8);
  }

  return result;
}

uint64_t sub_251FE8758()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9440);
  __swift_project_value_buffer(v0, qword_27F4C9440);
  return sub_2520043C0();
}

uint64_t sub_251FE87D8()
{
  if (qword_27F4C8500 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9440);
}

uint64_t sub_251FE883C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8500 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9440);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FE8940()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t sub_251FE89F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id sub_251FE8AA8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  *&v6[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController] = 0;
  swift_beginAccess();
  *&v6[v7] = a1;
  v10.receiver = v6;
  v10.super_class = v3;
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2(&v10, sel_initWithRootViewController_, a2);
  [v8 setModalInPresentation_];
  [v8 setModalPresentationStyle_];

  swift_unknownObjectRelease();
  return v8;
}

id sub_251FE8B80(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  *&v2[OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController] = 0;
  swift_beginAccess();
  *&v2[v5] = a1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for HearingFlowNavigationController();
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v8, sel_initWithRootViewController_, a2);
  [v6 setModalInPresentation_];
  [v6 setModalPresentationStyle_];

  swift_unknownObjectRelease();
  return v6;
}

void sub_251FE8C68()
{
  *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController) = 0;
  sub_252004B10();
  __break(1u);
}

uint64_t sub_251FE8D38(uint64_t result)
{
  if (result)
  {
    v2 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      v3 = result;
      v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
      v5 = v2;
      [v3 setFlowController_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_251FE8EC8(void *a1, char a2)
{
  sub_251FE90EC(a1);
  v14 = &unk_286450CA0;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = v5;
    v7 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
    v8 = a1;
    [v6 setFlowController_];

    swift_unknownObjectRelease();
    v9 = type metadata accessor for HearingFlowNavigationController();
    v12 = v2;
    v10 = &v12;
  }

  else
  {
    v9 = type metadata accessor for HearingFlowNavigationController();
    v13.receiver = v2;
    v10 = &v13;
  }

  v10->super_class = v9;
  return [(objc_super *)v10 pushViewController:a1 animated:a2 & 1];
}

void sub_251FE90EC(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  v4 = sub_2520046E0();
  v6 = v5;

  if (sub_252004770())
  {
    goto LABEL_3;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (sub_252003E10(), swift_dynamicCastClass()))
  {

    v14 = [a1 navigationItem];
    [v14 setHidesBackButton_];
  }

  else
  {
    if (v4 == 0xD000000000000027 && 0x800000025200D900 == v6)
    {
LABEL_3:

      return;
    }

    v7 = sub_252004B90();

    if (v7)
    {
      return;
    }

    v8 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:0 action:0];
    sub_251FD6770(0, &qword_27F4C6BB0, 0x277D750C8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_2520049A0();
    [v8 setPrimaryAction_];

    v11 = [a1 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2520073A0;
    *(v12 + 32) = v8;
    sub_251FD6770(0, &qword_27F4C6FF8, 0x277D751E0);
    v13 = v8;
    v14 = sub_2520047A0();

    [v11 setRightBarButtonItems_];
  }
}

void sub_251FE9404(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HearingFlowNavigationController();
  objc_msgSendSuper2(&v4, sel_viewWillDisappear_, a1 & 1);
  sub_252003D90();
  v3 = sub_252003D70();
  sub_252003D60();
}

id sub_251FE94E0(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id sub_251FE95B8(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id sub_251FE96BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HearingFlowNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251FE9700()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FE9738()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_251FE9798()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9458);
  __swift_project_value_buffer(v0, qword_27F4C9458);
  return sub_2520043C0();
}

uint64_t sub_251FE981C()
{
  if (qword_27F4C8508 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9458);
}

uint64_t sub_251FE9880@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8508 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9458);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251FE9928@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController_delegate;
  swift_beginAccess();
  return sub_251FE9980(v1 + v3, a1);
}

uint64_t sub_251FE9980(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7008, "ҡ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251FE99F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController_delegate;
  swift_beginAccess();
  sub_251FE9A50(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_251FE9A50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7008, "ҡ");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_251FE9B54(__int128 *a1)
{
  v3 = &v1[OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController_delegate];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton] = 0;
  *&v1[OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton] = 0;
  v4 = [objc_opt_self() systemBlueColor];
  v5 = objc_opt_self();
  v6 = [v5 configurationWithHierarchicalColor_];

  v7 = sub_2520046B0();
  v8 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v8)
  {
    v9 = [v5 configurationWithPointSize:5 weight:48.0];
    v10 = [v8 imageByApplyingSymbolConfiguration_];

    sub_251FE78C4();
    v11 = sub_2520046B0();

    v16.receiver = v1;
    v16.super_class = type metadata accessor for HMHearingProtectionPPEEnrollmentViewController();
    v12 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_icon_contentLayout_, v11, 0, v10, 2);

    sub_251FC64D0(a1, v15);
    v13 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController_delegate;
    swift_beginAccess();
    v14 = v12;
    sub_251FE9A50(v15, v12 + v13);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_251FE9D98()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for HMHearingProtectionPPEEnrollmentViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = sub_2520046B0();
  sub_251FE78C4();
  v2 = sub_2520046B0();

  v3 = sub_2520046B0();
  [v0 addBulletedListItemWithTitle:v1 description:v2 symbolName:v3];

  v4 = sub_2520046B0();
  sub_251FE78C4();
  v5 = sub_2520046B0();

  v6 = sub_2520046B0();
  [v0 addBulletedListItemWithTitle:v4 description:v5 symbolName:v6];

  sub_251FEA3D0();
}

id sub_251FE9F40()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton;
  v2 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton);
  }

  else
  {
    v4 = [objc_opt_self() boldButton];
    sub_251FE78C4();
    v5 = sub_2520046B0();

    [v4 setTitle:v5 forState:0];

    sub_251FEA548();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = v6;
    v7 = v0;
    v8 = sub_2520049A0();
    [v4 addAction:v8 forControlEvents:{64, 0, 0, 0, sub_251FEA5CC, v12}];

    v9 = *(v7 + v1);
    *(v7 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_251FEA0B4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_251FEA0C8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FE9F40();
  return sub_251FEA110;
}

void sub_251FEA110(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___primaryBoldButton) = v2;
}

id sub_251FEA128()
{
  v1 = sub_2520046A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton;
  v8 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton);
  }

  else
  {
    v10 = [objc_opt_self() linkButton];
    v17[1] = v0;
    sub_252004620();
    type metadata accessor for HMHearingProtectionPPEEnrollmentViewController();
    v11 = v0;
    sub_251FEAB30(v6);
    (*(v2 + 8))(v6, v1);
    v12 = sub_2520046B0();

    [v10 setTitle:v12 forState:0];

    sub_251FEA548();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = sub_2520049A0();
    [v10 addAction:v13 forControlEvents:64];

    v14 = *(v11 + v7);
    *(v11 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v15 = v8;
  return v9;
}

uint64_t sub_251FEA35C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton) = a1;
  return MEMORY[0x2821F96F8]();
}

void (*sub_251FEA370(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_251FEA128();
  return sub_251FEA3B8;
}

void sub_251FEA3B8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI46HMHearingProtectionPPEEnrollmentViewController____lazy_storage___secondaryLinkButton) = v2;
}

void sub_251FEA3D0()
{
  v1 = [v0 buttonTray];
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
  [v1 addButton_];

  v4 = [v0 buttonTray];
  v5 = (*((*v2 & *v0) + 0xA0))();
  [v4 addButton_];

  v6 = [v0 buttonTray];
  sub_251FE78C4();
  v7 = sub_2520046B0();

  [v6 setCaptionText_];
}

unint64_t sub_251FEA548()
{
  result = qword_27F4C6BB0;
  if (!qword_27F4C6BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C6BB0);
  }

  return result;
}

uint64_t sub_251FEA594()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FEA5CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_251FEA61C();
  }
}

id sub_251FEA61C()
{
  v1 = v0;
  if (qword_27F4C8508 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  __swift_project_value_buffer(v2, qword_27F4C9458);
  v3 = sub_2520043B0();
  v4 = sub_2520048C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_251FB5000, v3, v4, "PPE setup complete", v5, 2u);
    MEMORY[0x253097030](v5, -1, -1);
  }

  (*((*MEMORY[0x277D85000] & *v1) + 0x68))(v12);
  if (v12[3])
  {
    sub_251FE85C4(v12, v9);
    sub_251FEAA9C(v12);
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_251FEAA9C(v12);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id HMHearingProtectionPPEEnrollmentViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_2520046B0();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_2520046B0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_2520046B0();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HMHearingProtectionPPEEnrollmentViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_2520046B0();

  if (a4)
  {
    v12 = sub_2520046B0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id HMHearingProtectionPPEEnrollmentViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMHearingProtectionPPEEnrollmentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251FEAA9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7008, "ҡ");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251FEAB30(uint64_t a1)
{
  v2 = *(*(sub_252003B50() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = *(*(sub_2520046A0() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v5 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for HearingAidSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_252003B40();
  return sub_252004700();
}

uint64_t sub_251FEAC98(uint64_t a1)
{
  v2 = sub_252003B50();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_2520046A0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  (*(v9 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for HearingAidSettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_252003B40();
  return sub_252004700();
}

uint64_t sub_251FEAE14()
{
  v0 = sub_2520043D0();
  __swift_allocate_value_buffer(v0, qword_27F4C9470);
  __swift_project_value_buffer(v0, qword_27F4C9470);
  return sub_2520043C0();
}

uint64_t sub_251FEAE98()
{
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();

  return __swift_project_value_buffer(v0, qword_27F4C9470);
}

uint64_t sub_251FEAEFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v2 = sub_2520043D0();
  v3 = __swift_project_value_buffer(v2, qword_27F4C9470);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_251FEAFA4()
{
  sub_252003F10();
  v0 = sub_252003EF0();
  v1 = sub_252003EB0();
  v3 = v2;
  v4 = sub_252003EE0();

  if (*(v4 + 16))
  {
    v5 = sub_251FD4318(v1, v3);
    v7 = v6;

    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * v5);

      if (qword_27F4C8510 != -1)
      {
        swift_once();
      }

      v9 = sub_2520043D0();
      __swift_project_value_buffer(v9, qword_27F4C9470);
      v10 = v8;
      v11 = sub_2520043B0();
      v12 = sub_2520048A0();
      v13 = v10;

      if (os_log_type_enabled(v11, v12))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v27 = v16;
        *v14 = 138412546;
        *(v14 + 4) = v13;
        *v15 = v13;
        *(v14 + 12) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B30, &unk_252007820);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_252007360;
        *(v17 + 56) = sub_252003EC0();
        *(v17 + 64) = sub_251FF2BC8(&qword_27F4C7020, MEMORY[0x277D0FBA8]);
        *(v17 + 32) = v13;
        v18 = v13;
        v19 = sub_2520046F0();
        v21 = sub_251FC55E0(v19, v20, &v27);

        *(v14 + 14) = v21;
        _os_log_impl(&dword_251FB5000, v11, v12, "Connected Device is device: %@::%s", v14, 0x16u);
        sub_251FC6470(v15, &qword_27F4C68E8, &qword_252007318);
        MEMORY[0x253097030](v15, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x253097030](v16, -1, -1);
        MEMORY[0x253097030](v14, -1, -1);
      }

      return v13;
    }
  }

  else
  {
  }

  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v23 = sub_2520043D0();
  __swift_project_value_buffer(v23, qword_27F4C9470);
  v24 = sub_2520043B0();
  v25 = sub_2520048B0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_251FB5000, v24, v25, "Connected Device is nil!", v26, 2u);
    MEMORY[0x253097030](v26, -1, -1);
  }

  return 0;
}

Swift::Void __swiftcall HearingModeUIService.configHearingModeClient()()
{
  v1 = v0;
  v2 = sub_252004930();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2520048F0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v9 = sub_2520045C0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = [objc_allocWithZone(MEMORY[0x277D12B98]) init];
  [v0 setHmsClient_];

  v13 = [v0 hmsClient];
  v23[1] = sub_251FD6770(0, &qword_27F4C6928, 0x277D85C78);
  sub_2520045B0();
  aBlock = MEMORY[0x277D84F90];
  sub_251FF2BC8(&qword_27F4C7028, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7030, &unk_252008490);
  sub_251FD67B8(&qword_27F4C7038, &qword_27F4C7030, &unk_252008490);
  sub_252004A10();
  (*(v25 + 104))(v24, *MEMORY[0x277D85260], v26);
  v14 = sub_252004950();
  [v13 setDispatchQueue_];

  v15 = [v1 hmsClient];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = sub_251FF2C48;
  v32 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_251FEB7F4;
  v30 = &block_descriptor_2;
  v17 = _Block_copy(&aBlock);

  [v15 setInterruptionHandler_];
  _Block_release(v17);

  v18 = [v1 hmsClient];
  v19 = swift_unknownObjectWeakInit();
  MEMORY[0x2530970B0](v19);
  v31 = sub_251FEB838;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_251FEB7F4;
  v30 = &block_descriptor_6;
  v20 = _Block_copy(&aBlock);
  [v18 setInvalidationHandler_];
  _Block_release(v20);

  v21 = [v1 hmsClient];
  v31 = sub_251FEB990;
  v32 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = sub_251FD9520;
  v30 = &block_descriptor_9;
  v22 = _Block_copy(&aBlock);
  [v21 activateWithCompletion_];
  _Block_release(v22);
}

uint64_t sub_251FEB7F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_251FEB838()
{
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();
  __swift_project_value_buffer(v0, qword_27F4C9470);
  oslog = sub_2520043B0();
  v1 = sub_2520048B0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315394;
    *(v2 + 4) = sub_251FC55E0(0xD000000000000019, 0x800000025200EE90, &v5);
    *(v2 + 12) = 2048;
    *(v2 + 14) = 49;
    _os_log_impl(&dword_251FB5000, oslog, v1, "HearingModeUIService: %s: %ld hearing client invalidated! Retrying to standup discovery stack", v2, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x253097030](v3, -1, -1);
    MEMORY[0x253097030](v2, -1, -1);
  }
}

void sub_251FEB990(uint64_t a1)
{
  if (a1)
  {
    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    v1 = sub_2520043D0();
    __swift_project_value_buffer(v1, qword_27F4C9470);
    oslog = sub_2520043B0();
    v2 = sub_2520048B0();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v6 = v4;
      *v3 = 136315394;
      *(v3 + 4) = sub_251FC55E0(0xD000000000000019, 0x800000025200EE90, &v6);
      *(v3 + 12) = 2048;
      *(v3 + 14) = 56;
      _os_log_impl(&dword_251FB5000, oslog, v2, "HearingModeUIService: %s: %ld failed to acitivate HMServiceClient", v3, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x253097030](v4, -1, -1);
      MEMORY[0x253097030](v3, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_251FEBB50()
{
  v0 = sub_251FF4D18(&unk_28643B728);
  result = swift_arrayDestroy();
  qword_27F4C8520 = v0;
  return result;
}

uint64_t sub_251FEBB9C()
{
  v0 = sub_251FF4D18(&unk_28643B778);
  result = swift_arrayDestroy();
  qword_27F4C8530 = v0;
  return result;
}

id HearingModeUIService.decoratedSpecifiers(_:device:)(unint64_t a1)
{
  result = sub_252003E60();
  *&v115[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_82;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v112 = result;
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x253096650](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        result = *(a1 + 8 * v5 + 32);
      }

      v7 = result;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        v41 = result;
        v3 = sub_252004B20();
        result = v41;
        goto LABEL_3;
      }

      if (qword_27F4C8518 != -1)
      {
        swift_once();
      }

      v9 = qword_27F4C8520;

      result = [v7 identifier];
      if (!result)
      {
        goto LABEL_152;
      }

      v10 = result;
      v11 = sub_2520046E0();
      v13 = v12;

      LOBYTE(v10) = sub_251FECBD4(v11, v13, v9);

      if (v10)
      {
        goto LABEL_7;
      }

      v14 = [v7 identifier];
      if (!v14)
      {
        goto LABEL_28;
      }

      v15 = v14;
      v16 = sub_2520046E0();
      v18 = v17;

      if (v16 == 0xD000000000000015 && 0x800000025200DB50 == v18 || (sub_252004B90() & 1) != 0)
      {

        if (([v108 shouldShowHearingProtection] & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }

      if (v16 == 0xD000000000000011 && 0x800000025200DB70 == v18 || (sub_252004B90() & 1) != 0)
      {
        break;
      }

      if (v16 == 0x5F474E4952414548 && v18 == 0xEF44495F54534554 || (sub_252004B90() & 1) != 0)
      {

        v19 = sub_252004120();
LABEL_27:
        if (v19 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_7;
      }

      if (v16 == 0xD000000000000016 && 0x800000025200DB90 == v18)
      {
      }

      else
      {
        v20 = sub_252004B90();

        if ((v20 & 1) == 0)
        {
LABEL_28:

          goto LABEL_8;
        }
      }

LABEL_7:
      sub_252004AB0();
      v6 = *(*&v115[0] + 16);
      sub_252004AE0();
      sub_252004AF0();
      result = sub_252004AC0();
LABEL_8:
      ++v5;
      if (v8 == v3)
      {
        a1 = *&v115[0];
        v4 = MEMORY[0x277D84F90];
        goto LABEL_39;
      }
    }

    v19 = sub_252004160();
    goto LABEL_27;
  }

  a1 = MEMORY[0x277D84F90];
LABEL_39:
  v21 = MEMORY[0x277D3FF38];
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    v42 = v4;
    v43 = sub_252004B20();
    v4 = v42;
    v22 = v43;
    if (v43)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v22 = *(a1 + 16);
    if (v22)
    {
LABEL_42:
      *&v115[0] = v4;
      result = sub_252004AD0();
      if (v22 < 0)
      {
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
        return result;
      }

      v23 = 0;
      v106 = 0x800000025200DB90;
      v109 = *v21;
      do
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_80;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x253096650](v23, a1);
        }

        else
        {
          if (v23 >= *(a1 + 16))
          {
            goto LABEL_81;
          }

          v26 = *(a1 + 8 * v23 + 32);
        }

        v27 = v26;
        v28 = [v26 identifier];
        if (v28)
        {
          v29 = v28;
          v30 = sub_2520046E0();
          v32 = v31;

          v33 = v30 == 0xD000000000000015 && 0x800000025200DB50 == v32;
          if (v33 || (sub_252004B90() & 1) != 0)
          {

            if (sub_2520041B0() != 2)
            {
              sub_2520041F0();
            }
          }

          else if (v30 == 0xD000000000000011 && 0x800000025200DB70 == v32 || (sub_252004B90() & 1) != 0)
          {

            sub_252004160();
          }

          else if (v30 == 0x5F474E4952414548 && v32 == 0xEF44495F54534554 || (sub_252004B90() & 1) != 0)
          {

            sub_252004120();
          }

          else if (v30 == 0xD000000000000016 && v106 == v32)
          {
          }

          else
          {
            sub_252004B90();
          }
        }

        if (qword_27F4C8518 != -1)
        {
          swift_once();
        }

        v34 = qword_27F4C8520;

        result = [v27 identifier];
        if (!result)
        {
          goto LABEL_153;
        }

        v35 = result;
        v36 = sub_2520046E0();
        v38 = v37;

        LOBYTE(v36) = sub_251FECBD4(v36, v38, v34);

        if ((v36 & 1) == 0)
        {
          v39 = sub_2520047F0();
          [v27 setProperty:v39 forKey:v109];
        }

        sub_252004AB0();
        v24 = *(*&v115[0] + 16);
        sub_252004AE0();
        sub_252004AF0();
        result = sub_252004AC0();
        ++v23;
      }

      while (v25 != v22);

      v40 = *&v115[0];
      goto LABEL_85;
    }
  }

  v40 = MEMORY[0x277D84F90];
LABEL_85:
  v44 = v40 >> 62;
  if (v40 >> 62)
  {
    goto LABEL_148;
  }

  for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252004B20())
  {
    v46 = MEMORY[0x277D84F90];
    v114 = v40;
    v47 = MEMORY[0x277D3FF38];
    v107 = v44;
    if (!i)
    {
      break;
    }

    v118 = MEMORY[0x277D84F90];
    result = sub_251FF36AC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_151;
    }

    v48 = 0;
    v46 = v118;
    v113 = v40 & 0xC000000000000001;
    v110 = v40 & 0xFFFFFFFFFFFFFF8;
    v49 = *v47;
    while (1)
    {
      v44 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v113)
      {
        v50 = MEMORY[0x253096650](v48, v114);
      }

      else
      {
        if (v48 >= *(v110 + 16))
        {
          goto LABEL_147;
        }

        v50 = *(v114 + 8 * v48 + 32);
      }

      v51 = v50;
      *&v115[0] = 0;
      *(&v115[0] + 1) = 0xE000000000000000;
      sub_252004A70();
      v52 = [v51 description];
      v53 = sub_2520046E0();
      v55 = v54;

      v116 = v53;
      v117 = v55;
      MEMORY[0x253096310](0x6C62616E65202D20, 0xEC000000203A6465);
      if ([v51 propertyForKey_])
      {
        sub_252004A00();
        swift_unknownObjectRelease();
      }

      else
      {
        memset(v115, 0, 32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C69B0, &unk_252007A00);
      v56 = sub_252004710();
      MEMORY[0x253096310](v56);

      v40 = v116;
      v57 = v117;
      v118 = v46;
      v59 = *(v46 + 16);
      v58 = *(v46 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_251FF36AC((v58 > 1), v59 + 1, 1);
        v46 = v118;
      }

      *(v46 + 16) = v59 + 1;
      v60 = v46 + 16 * v59;
      *(v60 + 32) = v40;
      *(v60 + 40) = v57;
      ++v48;
      if (v44 == i)
      {
        goto LABEL_101;
      }
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    ;
  }

LABEL_101:
  v61 = 7104878;
  if ([v108 delegate] && (objc_opt_self(), v62 = swift_dynamicCastObjCClass(), swift_unknownObjectRelease(), v62))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B30, &unk_252007820);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_252007360;
    result = [v108 delegate];
    if (!result)
    {
      goto LABEL_155;
    }

    objc_opt_self();
    v64 = swift_dynamicCastObjCClassUnconditional();
    *(v63 + 56) = sub_251FD6770(0, &qword_27F4C7040, 0x277D3FA48);
    *(v63 + 64) = sub_251FF36CC();
    *(v63 + 32) = v64;
    v61 = sub_2520046F0();
    v66 = v65;
  }

  else
  {
    v66 = 0xE300000000000000;
  }

  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v67 = sub_2520043D0();
  __swift_project_value_buffer(v67, qword_27F4C9470);
  v68 = v112;

  v69 = sub_2520043B0();
  v70 = sub_2520048C0();

  v111 = v68;
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v115[0] = v72;
    *v71 = 136316674;
    v73 = sub_252004010();
    v75 = sub_251FC55E0(v73, v74, v115);

    *(v71 + 4) = v75;
    v76 = v68;
    *(v71 + 12) = 256;
    LOBYTE(v75) = sub_2520041B0();

    *(v71 + 14) = v75;
    *(v71 + 15) = 256;
    LOBYTE(v75) = sub_2520041F0();

    *(v71 + 17) = v75;
    *(v71 + 18) = 256;
    LOBYTE(v75) = sub_252004160();

    *(v71 + 20) = v75;
    *(v71 + 21) = 256;
    v77 = sub_252004120();

    *(v71 + 23) = v77;
    *(v71 + 24) = 2080;
    v78 = MEMORY[0x253096390](v46, MEMORY[0x277D837D0]);
    v80 = v79;

    v81 = sub_251FC55E0(v78, v80, v115);

    *(v71 + 26) = v81;
    *(v71 + 34) = 2080;
    v82 = sub_251FC55E0(v61, v66, v115);

    *(v71 + 36) = v82;
    _os_log_impl(&dword_251FB5000, v69, v70, "HearingModeUIService decoratedSpecifiers for %s: HP: %hhu PPE:%hhu HA:%hhu  HT:%hhu VS:%s BTSC:%s", v71, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x253097030](v72, -1, -1);
    MEMORY[0x253097030](v71, -1, -1);
  }

  else
  {
  }

  v40 = [v108 headphoneDevice];
  v83 = objc_allocWithZone(sub_252003D10());
  v84 = sub_252003D00();
  sub_252003CF0();

  v116 = MEMORY[0x277D84F90];
  if (!v107)
  {
    v85 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v85)
    {
      goto LABEL_138;
    }

    goto LABEL_113;
  }

  v85 = sub_252004B20();
  if (v85)
  {
LABEL_113:
    v86 = 0;
    v112 = (v114 & 0xFFFFFFFFFFFFFF8);
    v44 = v114 + 32;
    while (1)
    {
      if ((v114 & 0xC000000000000001) != 0)
      {
        v87 = MEMORY[0x253096650](v86, v114);
      }

      else
      {
        if (v86 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v87 = *(v44 + 8 * v86);
      }

      v40 = v87;
      if (__OFADD__(v86++, 1))
      {
        goto LABEL_145;
      }

      if (qword_27F4C8528 != -1)
      {
        swift_once();
      }

      v89 = qword_27F4C8530;

      result = [v40 identifier];
      if (!result)
      {
        goto LABEL_154;
      }

      v90 = result;
      v91 = sub_2520046E0();
      v93 = v92;

      if (*(v89 + 16) && (v94 = *(v89 + 40), sub_252004C00(), sub_252004730(), v95 = sub_252004C20(), v96 = -1 << *(v89 + 32), v97 = v95 & ~v96, ((*(v89 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) != 0))
      {
        v98 = ~v96;
        while (1)
        {
          v99 = (*(v89 + 48) + 16 * v97);
          v100 = *v99 == v91 && v99[1] == v93;
          if (v100 || (sub_252004B90() & 1) != 0)
          {
            break;
          }

          v97 = (v97 + 1) & v98;
          if (((*(v89 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        sub_252004AB0();
        v101 = *(v116 + 16);
        sub_252004AE0();
        sub_252004AF0();
        sub_252004AC0();
        if (v86 == v85)
        {
LABEL_135:
          v102 = v116;
          v103 = v111;
          if ((v116 & 0x8000000000000000) == 0)
          {
            goto LABEL_139;
          }

          goto LABEL_149;
        }
      }

      else
      {
LABEL_114:

        if (v86 == v85)
        {
          goto LABEL_135;
        }
      }
    }
  }

LABEL_138:
  v102 = MEMORY[0x277D84F90];
  v103 = v111;
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_139:
    if ((v102 & 0x4000000000000000) == 0)
    {
      v104 = *(v102 + 16);
      goto LABEL_141;
    }
  }

LABEL_149:
  v104 = sub_252004B20();
LABEL_141:
  v105 = v114;

  if (v104 <= 0)
  {

    v105 = MEMORY[0x277D84F90];
  }

  sub_251FECD44(v105);

  return v105;
}

uint64_t sub_251FECBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_252004C00();
  sub_252004730();
  v7 = sub_252004C20();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_252004B90() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Void __swiftcall HearingModeUIService.submitHPDeviceAnalytics()()
{
  v1 = [v0 headphoneDevice];
  v2 = objc_allocWithZone(sub_252003D10());
  v3 = sub_252003D00();
  sub_252003CF0();
}

void sub_251FECD44(uint64_t a1)
{
  v2 = v1;
  v86 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7050, &qword_2520084A0);
  v78 = *(v3 - 8);
  v4 = *(v78 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v71 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7058, &qword_2520084A8);
  v83 = *(v8 - 8);
  v9 = *(v83 + 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v71 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v71 - v19;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7060, &qword_2520084B0);
  v21 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81, v22);
  v79 = &v71 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7068, &qword_2520084B8);
  v82 = *(v84 - 8);
  v24 = *(v82 + 64);
  MEMORY[0x28223BE20](v84, v25);
  v80 = &v71 - v26;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7070, &qword_2520084C0);
  v77 = *(v87 - 8);
  v27 = *(v77 + 64);
  MEMORY[0x28223BE20](v87, v28);
  v85 = &v71 - v29;
  sub_251FED80C();
  v76 = sub_252004490();
  v30 = sub_252004600();

  swift_beginAccess();
  objc_setAssociatedObject(v1, &byte_27F4C9488, v30, 1);
  swift_endAccess();

  v31 = sub_251FEAFA4();
  if (v31)
  {
    v32 = v31;
    v75 = v13;
    v33 = v20;
    v34 = sub_252003E60();

    v35 = [v2 delegate];
    if (v35)
    {
      v36 = v35;
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (v37)
      {
        v71 = v36;
        v72 = v34;
        v73 = v37;
        sub_2520041C0();
        v38 = sub_252004500();
        v74 = v2;
        v39 = *(v83 + 1);
        v39(v33, v8);
        v40 = v7;
        v41 = v3;
        v91 = v38;
        sub_252004170();
        v42 = sub_252004500();
        v39(v17, v8);
        v83 = v39;
        v90 = v42;
        v43 = v75;
        sub_252004130();
        v44 = sub_252004500();
        v39(v43, v8);
        v89 = v44;
        sub_252004100();
        v45 = sub_252004500();
        (*(v78 + 8))(v40, v41);
        v88 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7078, &qword_2520084C8);
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6E68, &unk_2520084D0);
        sub_251FD67B8(&qword_27F4C7080, &qword_27F4C7078, &qword_2520084C8);
        sub_251FD67B8(&qword_27F4C6E78, &qword_27F4C6E68, &unk_2520084D0);
        sub_252004470();
        v46 = v72;
        sub_252004200();
        v47 = sub_252004500();
        v83(v33, v8);
        v91 = v47;
        sub_251FD67B8(&qword_27F4C7088, &qword_27F4C7060, &qword_2520084B0);
        v48 = v80;
        sub_252004450();
        sub_251FD67B8(&qword_27F4C7090, &qword_27F4C7068, &qword_2520084B8);
        v49 = v84;
        v50 = v85;
        sub_252004560();
        (*(v82 + 8))(v48, v49);
        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v52 = swift_allocObject();
        v53 = v74;
        swift_unknownObjectWeakInit();
        v54 = swift_allocObject();
        v54[2] = v46;
        v54[3] = v51;
        v55 = v86;
        v54[4] = v52;
        v54[5] = v55;
        sub_251FD67B8(&qword_27F4C7098, &qword_27F4C7070, &qword_2520084C0);
        v56 = v46;

        v57 = v87;
        v58 = sub_252004580();

        v59 = sub_251FED80C();
        if (v59)
        {
          v60 = v59;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v91 = v60;
          sub_251FF4724(v58, 0x4F676E6972616548, 0xEF72657672657362, isUniquelyReferenced_nonNull_native);
          if (v91)
          {
            v62 = sub_252004600();
          }

          else
          {
            v62 = 0;
          }

          swift_beginAccess();
          objc_setAssociatedObject(v53, &byte_27F4C9488, v62, 1);
          swift_endAccess();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v77 + 8))(v50, v57);
        }

        else
        {
          __break(1u);
        }

        return;
      }

      swift_unknownObjectRelease();
    }

    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    v67 = sub_2520043D0();
    __swift_project_value_buffer(v67, qword_27F4C9470);
    v68 = sub_2520043B0();
    v69 = sub_2520048B0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_251FB5000, v68, v69, "observeSpecifiers: no delegate!", v70, 2u);
      MEMORY[0x253097030](v70, -1, -1);
    }
  }

  else
  {
    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    v63 = sub_2520043D0();
    __swift_project_value_buffer(v63, qword_27F4C9470);
    v64 = sub_2520043B0();
    v65 = sub_2520048B0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_251FB5000, v64, v65, "HearingModeUIService listener precondition fail no device", v66, 2u);
      MEMORY[0x253097030](v66, -1, -1);
    }
  }
}

uint64_t sub_251FED80C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &byte_27F4C9488);
  swift_endAccess();
  if (v1)
  {
    sub_252004A00();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70E0, &qword_252008660);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_251FC6470(v6, &qword_27F4C69B0, &unk_252007A00);
  }

  return 0;
}

uint64_t sub_251FED8FC(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_252004AD0();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_251FC6534(i, v6);
    sub_251FD6770(0, &qword_27F4C69B8, 0x277D3FAD8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_252004AB0();
    v4 = *(v7 + 16);
    sub_252004AE0();
    sub_252004AF0();
    sub_252004AC0();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_251FEDA58(char a1)
{
  result = swift_beginAccess();
  byte_27F4C9488 = a1;
  return result;
}

Swift::Bool __swiftcall HearingModeUIService._showOcclusionDetectionPlacard()()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 headphoneDevice];
  if (!v8 || (v9 = v8, v10 = sub_251FEAFA4(), v9, !v10))
  {
    sub_2520043A0();
    v28 = sub_2520043B0();
    v29 = sub_2520048B0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v61 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_251FC55E0(0xD000000000000020, 0x800000025200DBD0, &v61);
      _os_log_impl(&dword_251FB5000, v28, v29, "%s: No headphone device", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x253097030](v31, -1, -1);
      MEMORY[0x253097030](v30, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    return 0;
  }

  v11 = sub_252003E60();
  v12 = sub_2520041B0();

  if (v12 != 2 || (v13 = sub_252003E60(), v14 = sub_252004150(), v13, v14 != 1) || (v15 = sub_252003E60(), v16 = sub_2520041E0(), v15, !v16))
  {
    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_27F4C9470);
    v32 = v10;
    v33 = sub_2520043B0();
    v34 = sub_2520048B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v61 = v36;
      *v35 = 136315906;
      *(v35 + 4) = sub_251FC55E0(0xD000000000000020, 0x800000025200DBD0, &v61);
      *(v35 + 12) = 2080;
      v37 = sub_252003E60();
      v38 = sub_2520041B0();

      if (v38 == 2)
      {
        v39 = 0x6574726F70707553;
      }

      else
      {
        v39 = 0x7070755320746F4ELL;
      }

      if (v38 == 2)
      {
        v40 = 0xE900000000000064;
      }

      else
      {
        v40 = 0xED0000646574726FLL;
      }

      v41 = sub_251FC55E0(v39, v40, &v61);

      *(v35 + 14) = v41;
      *(v35 + 22) = 2080;
      v42 = sub_252003E60();
      v43 = sub_252004150();

      if (v43 == 1)
      {
        v44 = 0x64656C62616E45;
      }

      else
      {
        v44 = 0x62616E4520746F4ELL;
      }

      if (v43 == 1)
      {
        v45 = 0xE700000000000000;
      }

      else
      {
        v45 = 0xEB0000000064656CLL;
      }

      v46 = sub_251FC55E0(v44, v45, &v61);

      *(v35 + 24) = v46;
      *(v35 + 32) = 2080;
      v47 = sub_252003E60();
      LODWORD(v46) = sub_2520041E0();

      HMOcclusionResultToString(v46);
      v48 = sub_252004750();
      v50 = sub_251FC55E0(v48, v49, &v61);

      *(v35 + 34) = v50;
      _os_log_impl(&dword_251FB5000, v33, v34, "%s: Region status %s HearingProtection %s Occlusion Result %s returning without showing placard", v35, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x253097030](v36, -1, -1);
      MEMORY[0x253097030](v35, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v17 = sub_252003E60();
  v18 = sub_2520041E0();

  HIDWORD(v60) = v18 == 2;
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F4C9470);
  v19 = sub_2520043B0();
  v20 = sub_2520048C0();
  if (!os_log_type_enabled(v19, v20))
  {

    if (byte_27F4C8538)
    {
      goto LABEL_19;
    }

LABEL_42:

    goto LABEL_54;
  }

  v21 = swift_slowAlloc();
  v22 = swift_slowAlloc();
  v61 = v22;
  *v21 = 136315394;
  v23 = 0xE400000000000000;
  v24 = 0x776F68536F4ELL;
  if (byte_27F4C8538 == 1)
  {
    v24 = 2003789907;
  }

  else
  {
    v23 = 0xE600000000000000;
  }

  if (byte_27F4C8538)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0x6E776F6E6B6E55;
  }

  if (byte_27F4C8538)
  {
    v26 = v23;
  }

  else
  {
    v26 = 0xE700000000000000;
  }

  v27 = sub_251FC55E0(v25, v26, &v61);

  *(v21 + 4) = v27;
  *(v21 + 12) = 1024;
  *(v21 + 14) = v18 == 2;
  _os_log_impl(&dword_251FB5000, v19, v20, "previousShouldShowPlacardStatus %s shouldShowPlacard %{BOOL}d", v21, 0x12u);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  MEMORY[0x253097030](v22, -1, -1);
  MEMORY[0x253097030](v21, -1, -1);

  if (!byte_27F4C8538)
  {
    goto LABEL_42;
  }

LABEL_19:
  v52 = sub_252004B90();

  if (v52)
  {
    goto LABEL_54;
  }

  if (byte_27F4C8538 && byte_27F4C8538 == 1)
  {

    goto LABEL_48;
  }

  v53 = sub_252004B90();

  if (v53)
  {
LABEL_48:
    if (v18 != 2)
    {
      goto LABEL_54;
    }
  }

  if (byte_27F4C8538 && byte_27F4C8538 == 2)
  {
  }

  else
  {
    v54 = sub_252004B90();

    if ((v54 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  if (v18 != 2)
  {
LABEL_60:
    v59 = 2;
    goto LABEL_61;
  }

LABEL_54:
  v55 = [v1 hmsClient];
  v56 = sub_252003E60();
  sub_252004010();

  v57 = sub_2520046B0();

  if (v18 == 2)
  {
    v58 = 7;
  }

  else
  {
    v58 = 8;
  }

  [v55 occlusionIndicationShownForDeviceAddress:v57 featureID:2 type:v58 action:0];

LABEL_58:
  if (v18 != 2)
  {
    goto LABEL_60;
  }

  v59 = 1;
LABEL_61:
  byte_27F4C8538 = v59;

  return BYTE4(v60);
}

unint64_t HearingModeUIService._getHearingAssistPayload(_:device:inUsecase:)(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252008480;
  *(inited + 32) = 0x65726464612D7462;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  v10 = sub_251FF6CD0();
  v12 = *v10;
  v11 = v10[1];
  *(inited + 80) = v12;
  *(inited + 88) = v11;

  v13 = [v4 hmsClient];
  *(inited + 120) = sub_251FD6770(0, &qword_27F4C70A0, 0x277D12B98);
  *(inited + 96) = v13;
  sub_2520042F0();
  *(inited + 128) = sub_2520042E0();
  *(inited + 136) = v14;
  *(inited + 168) = sub_252003EC0();
  *(inited + 144) = a3;
  v15 = a3;
  *(inited + 176) = sub_2520042C0();
  *(inited + 184) = v16;
  v17 = HearingTopLevelCellUseCase.init(rawValue:)(a4);
  LOBYTE(a4) = v18;
  v25[3] = &type metadata for HearingTopLevelCellUseCase;
  v19 = sub_251FF4F40();
  if (a4)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v25[4] = v19;
  v25[0] = v20;
  v21 = type metadata accessor for HearingTopLevelCaseObjectWrapper();
  v22 = sub_251FE8360(v25);
  *(inited + 216) = v21;
  *(inited + 192) = v22;
  v23 = sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  return v23;
}

id sub_251FEE604(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id, uint64_t))
{
  v10 = sub_2520046E0();
  v12 = v11;
  v13 = a4;
  v14 = a1;
  a6(v10, v12, v13, a5);

  v15 = sub_252004600();

  return v15;
}

void sub_251FEE6D4(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, NSObject *a10)
{
  v41 = a4;
  v42 = a6;
  v40 = a3;
  v43 = a1;
  v14 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70B8, &qword_252008608);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v37 - v18;
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v20 = sub_2520043D0();
  __swift_project_value_buffer(v20, qword_27F4C9470);
  v21 = a2;
  v22 = sub_2520043B0();
  v23 = sub_2520048C0();

  if (os_log_type_enabled(v22, v23))
  {
    v38 = a8;
    v39 = a10;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 67109378;
    *(v24 + 4) = v43;
    *(v24 + 8) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v26 = sub_252004BE0();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0xE000000000000000;
    }

    v29 = sub_251FC55E0(v26, v28, &v44);

    *(v24 + 10) = v29;
    _os_log_impl(&dword_251FB5000, v22, v23, "fetchOcclusionResult: %d %s", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x253097030](v25, -1, -1);
    MEMORY[0x253097030](v24, -1, -1);

    a8 = v38;
    v14 = v39;
  }

  else
  {
  }

  v30 = sub_252004840();
  (*(*(v30 - 8) + 56))(v19, 1, 1, v30);
  sub_252004820();
  v31 = v40;

  v32 = sub_252004810();
  v33 = swift_allocObject();
  v34 = MEMORY[0x277D85700];
  *(v33 + 16) = v32;
  *(v33 + 24) = v34;
  *(v33 + 32) = v43;
  v36 = v41;
  v35 = v42;
  *(v33 + 40) = v31;
  *(v33 + 48) = v36;
  *(v33 + 56) = a5;
  *(v33 + 64) = v35;
  *(v33 + 72) = a7;
  *(v33 + 80) = a8;
  *(v33 + 88) = a9;
  sub_251FEEC50(0, 0, v19, &unk_252008618, v33);

  dispatch_group_leave(v14);
}

uint64_t sub_251FEE9D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v14;
  *(v8 + 48) = v13;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 16) = a5;
  *(v8 + 24) = a6;
  *(v8 + 80) = a4;
  sub_252004820();
  *(v8 + 72) = sub_252004810();
  v10 = sub_252004800();

  return MEMORY[0x2822009F8](sub_251FEEA88, v10, v9);
}

uint64_t sub_251FEEA88()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      v7 = *(v0 + 24);
      v8 = *(v0 + 32);
      v9 = sub_252003D30();
      v6();

      goto LABEL_10;
    }

    if (v2 == 2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ((v2 - 3) < 4)
    {
      v4 = *(v0 + 64);
      (*(v0 + 56))(v3);
      goto LABEL_10;
    }

    if (v2 == 7)
    {
LABEL_9:
      v11 = *(v0 + 40);
      v10 = *(v0 + 48);
      v13 = *(v0 + 24);
      v12 = *(v0 + 32);
      v14 = *(v0 + 16);
      sub_252003EA0();
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      *(v15 + 24) = v10;

      v16 = sub_252003D40();

      v11(v16);
    }
  }

LABEL_10:
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_251FEEC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70B8, &qword_252008608);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_251FC6348(a3, v28 - v12, &qword_27F4C70B8, &qword_252008608);
  v14 = sub_252004840();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_251FC6470(v13, &qword_27F4C70B8, &qword_252008608);
  }

  else
  {
    sub_252004830();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_252004800();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_252004720() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_251FC6470(a3, &qword_27F4C70B8, &qword_252008608);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_251FC6470(a3, &qword_27F4C70B8, &qword_252008608);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

void sub_251FEEF50(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

Swift::Void __swiftcall HearingModeUIService._showOcclusionTutorial()()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 headphoneDevice];
  if (v8 && (v9 = v8, v10 = sub_251FEAFA4(), v9, v10))
  {
    v28[0] = sub_252003EB0();
    v28[1] = v11;
    v27[2] = 45;
    v27[3] = 0xE100000000000000;
    v27[0] = 58;
    v27[1] = 0xE100000000000000;
    sub_251FD671C();
    sub_2520049E0();

    sub_252003EA0();
    v12 = objc_allocWithZone(sub_252003DB0());
    v13 = sub_252003DA0();
    [v13 setModalInPresentation_];
    v14 = [v13 navigationItem];
    sub_251FD6770(0, &qword_27F4C6FF8, 0x277D751E0);
    sub_251FD6770(0, &qword_27F4C6BB0, 0x277D750C8);
    *(swift_allocObject() + 16) = v13;
    v15 = v13;
    sub_2520049A0();
    v16 = sub_2520048D0();
    [v14 setRightBarButtonItem_];

    v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    v18 = [v1 delegate];
    if (v18)
    {
      v19 = v18;
      if ([v18 respondsToSelector_])
      {
        [v19 presentViewController_];
      }

      swift_unknownObjectRelease();
    }

    v20 = [v1 hmsClient];
    v21 = sub_252003E60();
    sub_252004010();

    v22 = sub_2520046B0();

    [v20 occlusionIndicationShownForDeviceAddress:v22 featureID:2 type:7 action:3];
  }

  else
  {
    sub_2520043A0();
    v23 = sub_2520043B0();
    v24 = sub_2520048B0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_251FC55E0(0xD000000000000018, 0x800000025200DC00, v28);
      _os_log_impl(&dword_251FB5000, v23, v24, "%s: No headphone device", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x253097030](v26, -1, -1);
      MEMORY[0x253097030](v25, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }
}

Swift::Void __swiftcall HearingModeUIService.hearingTestTapped()()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 headphoneDevice];
  if (v8 && (v9 = v8, v21 = sub_251FEAFA4(), v9, v21))
  {
    v10 = sub_252003E40();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 hearingTestCapability];

      if (v12 == 2)
      {
        v13 = [v1 hmsClient];
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();

        _sSo20HearingModeUIServiceC0aB10SettingsUIE18showOcclusionAlert_13serviceClient13presentAction04passL0y16HeadphoneManager0N6DeviceC_So09HMServiceJ0CySo16UIViewControllerCcyyctFZ_0(v21, v13, sub_251FF55F8, v14, sub_251FF56A0, v15);
      }

      else
      {
        [v1 presentCapabilityAlertForHearingAssistance:0 device:v21];
        v20 = v21;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_2520043A0();
    v16 = sub_2520043B0();
    v17 = sub_2520048B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_251FC55E0(0xD000000000000013, 0x800000025200DC20, &v22);
      _os_log_impl(&dword_251FB5000, v16, v17, "%s: No headphone device", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x253097030](v19, -1, -1);
      MEMORY[0x253097030](v18, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }
}

Swift::Bool __swiftcall HearingModeUIService._getHearingAssist()()
{
  v1 = sub_2520043D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 headphoneDevice];
  if (v7 && (v8 = v7, v9 = sub_251FEAFA4(), v8, v9))
  {
    v10 = sub_252003E60();
    v11 = sub_2520040F0();

    return v11 == 1;
  }

  else
  {
    sub_2520043A0();
    v13 = sub_2520043B0();
    v14 = sub_2520048B0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_251FC55E0(0xD000000000000013, 0x800000025200DC40, &v18);
      _os_log_impl(&dword_251FB5000, v13, v14, "%s: No headphone device", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x253097030](v16, -1, -1);
      MEMORY[0x253097030](v15, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    return 0;
  }
}

void HearingModeUIService.presentCapabilityAlert(forHearingAssistance:device:)(int a1, void *a2)
{
  v3 = v2;
  v35 = a1;
  v5 = sub_252004680();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = v2;
  sub_252004620();
  v14 = sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
  v37 = sub_251FEAC98(v13);
  v38 = v15;
  v16 = *(v9 + 8);
  v16(v13, v8);
  type metadata accessor for AnyHearingFeatureContentProvider();
  v17 = a2;
  v18 = AnyHearingFeatureContentProvider.__allocating_init(device:)(a2);
  v19 = AnyHearingFeatureContentProvider.featureFlag.getter();
  v39 = v18;
  if (v19)
  {
    v36 = AnyHearingFeatureContentProvider.devicePlatformName.getter();
  }

  else
  {
    v36 = 0x73646F50726941;
  }

  v20 = [objc_opt_self() currentDevice];
  [v20 userInterfaceIdiom];

  aBlock[0] = v3;
  sub_252004620();
  v34[1] = sub_251FEAB30(v13);
  v16(v13, v8);
  v40 = v14;
  aBlock[0] = v3;
  sub_252004620();
  sub_251FEAB30(v13);
  v16(v13, v8);
  v34[0] = v3;
  aBlock[0] = v3;
  sub_252004670();
  sub_252004660();
  sub_252004640();

  sub_252004660();
  sub_252004640();
  sub_252004660();
  sub_252004640();

  sub_252004660();
  sub_252004640();

  sub_252004660();
  sub_252004690();
  sub_251FEAC98(v13);
  v16(v13, v8);
  v21 = sub_2520046B0();

  v22 = sub_2520046B0();

  v23 = [objc_opt_self() alertControllerWithTitle:v21 message:v22 preferredStyle:1];

  v24 = v16;
  v25 = v34[0];
  aBlock[0] = v34[0];
  sub_252004620();
  sub_251FEAC98(v13);
  v24(v13, v8);
  v26 = sub_2520046B0();

  aBlock[4] = sub_251FF0184;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251FC8818;
  aBlock[3] = &block_descriptor_24;
  v27 = _Block_copy(aBlock);

  v28 = objc_opt_self();
  v29 = [v28 actionWithTitle:v26 style:0 handler:v27];
  _Block_release(v27);

  aBlock[0] = v25;
  sub_252004620();
  sub_251FEAC98(v13);
  v24(v13, v8);
  v30 = sub_2520046B0();

  v31 = [v28 actionWithTitle:v30 style:0 handler:0];

  [v23 addAction_];
  [v23 addAction_];
  [v23 setPreferredAction_];
  v32 = [v25 delegate];
  if (v32)
  {
    v33 = v32;
    if (([v32 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_10;
    }

    [v33 presentViewController_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_10:
}

uint64_t sub_251FF0184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6A58, &qword_252007790);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v15 - v3;
  v5 = sub_252003B10();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252003B00();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_251FC6470(v4, &qword_27F4C6A58, &qword_252007790);
  }

  (*(v6 + 32))(v10, v4, v5);
  v12 = [objc_opt_self() sharedApplication];
  v13 = sub_252003AF0();
  sub_251FD4C8C(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_251FF2BC8(&qword_27F4C6A60, type metadata accessor for OpenExternalURLOptionsKey);
  v14 = sub_252004600();

  [v12 openURL:v13 options:v14 completionHandler:0];

  return (*(v6 + 8))(v10, v5);
}

Swift::Void __swiftcall HearingModeUIService.submitHADeviceAnalytics(enrolled:)(Swift::Int enrolled)
{
  v11 = [objc_allocWithZone(sub_252003D10()) init];
  v2 = [v1 headphoneDevice];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 headphoneDevice];
    if (v4)
    {
      v5 = v4;
      v6 = sub_252003E50();

      [v6 productID];
      v7 = sub_252004C30();
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
    }

    v9 = v7;
    sub_252003CC0();

    v10 = sub_252004860();
    sub_252003CC0();

    sub_252003CD0();
    v8 = v3;
  }

  else
  {
    v8 = v11;
  }
}

Swift::String __swiftcall HearingModeUIService.getHearingAidString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_252004680();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2520046A0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8, v11);
  v96 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2520043D0();
  v97 = *(v13 - 8);
  v98 = v13;
  v14 = *(v97 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v94 = &v89 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v89 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v89 - v27;
  sub_252003F10();
  v29 = sub_252003EF0();
  v103[0] = countAndFlagsBits;
  v103[1] = object;
  v101 = 58;
  v102 = 0xE100000000000000;
  v99 = 45;
  v100 = 0xE100000000000000;
  sub_251FD671C();
  v30 = sub_2520049E0();
  v32 = v31;
  v33 = sub_252003EE0();

  if (*(v33 + 16))
  {
    v34 = sub_251FD4318(v30, v32);
    v36 = v35;

    if (v36)
    {
      v91 = v7;
      v93 = v8;
      v37 = *(*(v33 + 56) + 8 * v34);

      v38 = sub_252003E60();
      sub_2520043A0();
      v39 = v38;
      v40 = sub_2520043B0();
      v41 = sub_2520048C0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v103[0] = v90;
        *v42 = 136315906;
        v43 = sub_2520041B0();
        HMRegionStatusToString(v43);
        v44 = sub_252004750();
        v46 = sub_251FC55E0(v44, v45, v103);
        v92 = v9;
        v47 = v46;

        *(v42 + 4) = v47;
        *(v42 + 12) = 2080;
        v48 = sub_252004120();
        HMRegionStatusToString(v48);
        v49 = sub_252004750();
        v51 = sub_251FC55E0(v49, v50, v103);

        *(v42 + 14) = v51;
        *(v42 + 22) = 2080;
        v52 = sub_252004160();
        HMRegionStatusToString(v52);
        v53 = sub_252004750();
        v55 = sub_251FC55E0(v53, v54, v103);

        *(v42 + 24) = v55;
        *(v42 + 32) = 2080;
        v56 = v39;
        v57 = sub_2520041F0();
        HMRegionStatusToString(v57);
        v58 = sub_252004750();
        v60 = sub_251FC55E0(v58, v59, v103);

        *(v42 + 34) = v60;
        v9 = v92;
        _os_log_impl(&dword_251FB5000, v40, v41, "Hearing Mode: Fetching footer with mode HP - %s, HT - %s, HA - %s HP PPE - %s", v42, 0x2Au);
        v61 = v90;
        swift_arrayDestroy();
        MEMORY[0x253097030](v61, -1, -1);
        MEMORY[0x253097030](v42, -1, -1);
      }

      else
      {
        v56 = v39;
      }

      v67 = *(v97 + 8);
      v67(v28, v98);
      type metadata accessor for AnyHearingFeatureContentProvider();
      v92 = v37;
      v68 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v37);
      if (AnyHearingFeatureContentProvider.featureFlag.getter())
      {
        AnyHearingFeatureContentProvider.deviceMarketingName.getter();
      }

      v69 = v56;
      v70 = v68;
      if (sub_2520041D0() == 1)
      {
        v71 = sub_2520041B0();
        v72 = sub_2520041F0();
        if (v71 != 2 && v72 != 2)
        {
          if (v71 != 3 && v72 != 3)
          {
            if (v72 != 1 || v71 != 1)
            {
              sub_252004120();
              sub_252004160();
              goto LABEL_67;
            }

            v73 = sub_252004120();
            v74 = sub_252004160();
            goto LABEL_25;
          }

          v73 = sub_252004120();
          v74 = sub_252004160();
          goto LABEL_41;
        }

        v73 = sub_252004120();
        v74 = sub_252004160();
      }

      else
      {
        sub_2520043A0();
        v75 = sub_2520043B0();
        v76 = sub_2520048C0();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          *v77 = 0;
          _os_log_impl(&dword_251FB5000, v75, v76, "Hearing Mode: PPE Capability not supported! Default to HP region status", v77, 2u);
          MEMORY[0x253097030](v77, -1, -1);
        }

        v67(v25, v98);
        v78 = sub_2520041B0();
        v73 = sub_252004120();
        v74 = sub_252004160();
        if (v78 == 3)
        {
LABEL_41:
          if (v73 != 3)
          {
            if (v73 != 2)
            {
              if (v73 != 1)
              {
                goto LABEL_67;
              }

              if (v74 != 3)
              {
                if (v74 == 2)
                {
                  goto LABEL_60;
                }

                if (v74 != 1)
                {
                  goto LABEL_67;
                }

                v79 = v96;
                v103[0] = v95;
                sub_252004620();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
LABEL_48:
                v80 = v79;
                goto LABEL_71;
              }

              v79 = v96;
              v103[0] = v95;
              sub_252004620();
              sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
              goto LABEL_92;
            }

            if (v74 != 3 && v74 != 2)
            {
              if (v74 != 1)
              {
                goto LABEL_67;
              }

              goto LABEL_60;
            }

            goto LABEL_87;
          }

          if (v74 != 3)
          {
            if (v74 != 2)
            {
              if (v74 != 1)
              {
                goto LABEL_67;
              }

              v79 = v96;
              v103[0] = v95;
              sub_252004620();
              sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
              goto LABEL_65;
            }

LABEL_87:
            v103[0] = v95;
            sub_252004670();
            sub_252004660();
            sub_252004640();

            sub_252004660();
            v79 = v96;
            sub_252004690();
            sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
            goto LABEL_88;
          }

          v79 = v96;
          v103[0] = v95;
          sub_252004620();
          sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
LABEL_70:
          v80 = v79;
          goto LABEL_71;
        }

        if (v78 != 2)
        {
          if (v78 != 1)
          {
            goto LABEL_67;
          }

LABEL_25:
          switch(v73)
          {
            case 3:
              if (v74 == 3)
              {

                v79 = v96;
                v103[0] = v95;
                sub_252004620();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                goto LABEL_97;
              }

              if (v74 != 2)
              {
                if (v74 != 1)
                {
                  goto LABEL_67;
                }

                v79 = v96;
                v103[0] = v95;
                sub_252004620();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                goto LABEL_80;
              }

              break;
            case 2:
              if (v74 != 3)
              {
                if (v74 != 2)
                {
                  if (v74 != 1)
                  {
                    goto LABEL_67;
                  }

                  v103[0] = v95;
                  sub_252004670();
                  sub_252004660();
                  sub_252004640();

                  sub_252004660();
                  v79 = v96;
                  sub_252004690();
                  sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
LABEL_80:
                  v80 = v79;
                  goto LABEL_71;
                }

                v103[0] = v95;
                sub_252004670();
                sub_252004660();
                sub_252004640();

                sub_252004660();
                v79 = v96;
                sub_252004690();
                sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
LABEL_97:
                v80 = v79;
                goto LABEL_71;
              }

              break;
            case 1:
              switch(v74)
              {
                case 3:

                  v79 = v96;
                  v103[0] = v95;
                  sub_252004620();
                  sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                  break;
                case 2:
                  v103[0] = v95;
                  sub_252004670();
                  sub_252004660();
                  sub_252004640();

                  sub_252004660();
                  v79 = v96;
                  sub_252004690();
                  sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                  break;
                case 1:

                  v79 = v96;
                  v103[0] = v95;
                  sub_252004620();
                  sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
                  v80 = v79;
LABEL_71:
                  v85 = sub_251FEAC98(v80);
                  v87 = v86;

                  (v9[1])(v79, v93);
                  v66 = v87;
                  v65 = v85;
                  goto LABEL_100;
                default:
                  goto LABEL_67;
              }

              v80 = v79;
              goto LABEL_71;
            default:
LABEL_67:

              v81 = v94;
              sub_2520043A0();
              v82 = sub_2520043B0();
              v83 = sub_2520048C0();
              if (os_log_type_enabled(v82, v83))
              {
                v84 = swift_slowAlloc();
                *v84 = 0;
                _os_log_impl(&dword_251FB5000, v82, v83, "Hearing Mode: Reached erroneous state", v84, 2u);
                MEMORY[0x253097030](v84, -1, -1);
              }

              v67(v81, v98);
              v79 = v96;
              v103[0] = v95;
              sub_252004620();
              sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
              goto LABEL_70;
          }

LABEL_60:
          v103[0] = v95;
          sub_252004670();
          sub_252004660();
          sub_252004640();

          sub_252004660();
          v79 = v96;
          sub_252004690();
          sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
          v80 = v79;
          goto LABEL_71;
        }
      }

      switch(v73)
      {
        case 3:
          if (v74 == 3)
          {
            goto LABEL_87;
          }

          if (v74 != 2)
          {
            if (v74 != 1)
            {
              goto LABEL_67;
            }

            goto LABEL_60;
          }

          break;
        case 2:
          if (v74 != 3)
          {
            if (v74 != 2)
            {
              if (v74 != 1)
              {
                goto LABEL_67;
              }

              v103[0] = v95;
              sub_252004670();
              sub_252004660();
              sub_252004640();
              sub_252004660();
              sub_252004640();

              sub_252004660();
              v79 = v96;
              sub_252004690();
              sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
LABEL_65:
              v80 = v79;
              goto LABEL_71;
            }

            v103[0] = v95;
            sub_252004670();
            sub_252004660();
            sub_252004640();
            sub_252004660();
            sub_252004640();

            sub_252004660();
            v79 = v96;
            sub_252004690();
            sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
            goto LABEL_70;
          }

          break;
        case 1:
          if (v74 == 3)
          {
            goto LABEL_60;
          }

          if (v74 != 2)
          {
            if (v74 != 1)
            {
              goto LABEL_67;
            }

            v103[0] = v95;
            sub_252004670();
            sub_252004660();
            sub_252004640();

            sub_252004660();
            v79 = v96;
            sub_252004690();
            sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
            goto LABEL_48;
          }

          v103[0] = v95;
          sub_252004670();
          sub_252004660();
          sub_252004640();
          sub_252004660();
          sub_252004640();

          sub_252004660();
          v79 = v96;
          sub_252004690();
          sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
LABEL_92:
          v80 = v79;
          goto LABEL_71;
        default:
          goto LABEL_67;
      }

      v103[0] = v95;
      sub_252004670();
      sub_252004660();
      sub_252004640();
      sub_252004660();
      sub_252004640();

      sub_252004660();
      v79 = v96;
      sub_252004690();
      sub_251FD6770(0, &unk_27F4C6FC0, &off_2796F16F0);
LABEL_88:
      v80 = v79;
      goto LABEL_71;
    }
  }

  else
  {
  }

  sub_2520043A0();
  v62 = sub_2520043B0();
  v63 = sub_2520048C0();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_251FB5000, v62, v63, "Hearing Mode: Invalid BT Address while fetching footer", v64, 2u);
    MEMORY[0x253097030](v64, -1, -1);
  }

  (*(v97 + 8))(v18, v98);
  v65 = 0;
  v66 = 0xE000000000000000;
LABEL_100:
  result._object = v66;
  result._countAndFlagsBits = v65;
  return result;
}

uint64_t HearingModeUIService.setTopLevelCellClass(_:)(void *a1)
{
  sub_2520042F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AC0, &unk_2520077E0);
  [a1 setProperty:sub_252004BB0() forKey:*MEMORY[0x277D3FE58]];
  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall HearingModeUIService.shouldShowHearingProtection()()
{
  v1 = sub_2520043D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v67 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v67 - v17;
  v19 = [v0 headphoneDevice];
  if (v19 && (v20 = v19, v21 = sub_251FEAFA4(), v20, v21))
  {
    v22 = sub_252003E60();
    v23 = sub_2520041B0();
    v68 = v15;
    v69 = (v23 == 2 || sub_2520041B0() == 3) && sub_252004180() == 1;
    sub_2520043A0();
    v29 = v22;
    v30 = v21;
    v31 = sub_2520043B0();
    v32 = sub_2520048C0();

    v33 = os_log_type_enabled(v31, v32);
    v72 = v2;
    v73 = v1;
    v71 = v11;
    v67 = v30;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74 = v70;
      *v34 = 136315906;
      *(v34 + 4) = sub_251FC55E0(0xD00000000000001DLL, 0x800000025200ED80, &v74);
      *(v34 + 12) = 2080;
      v35 = sub_252003EA0();
      v37 = sub_251FC55E0(v35, v36, &v74);

      *(v34 + 14) = v37;
      *(v34 + 22) = 256;
      LOBYTE(v37) = sub_2520041B0();

      *(v34 + 24) = v37;
      *(v34 + 25) = 256;
      LOBYTE(v37) = sub_252004180();

      *(v34 + 27) = v37;
      _os_log_impl(&dword_251FB5000, v31, v32, "%s: for %s, HP status: %hhu, HP capability: %hhd", v34, 0x1Cu);
      v38 = v70;
      swift_arrayDestroy();
      MEMORY[0x253097030](v38, -1, -1);
      MEMORY[0x253097030](v34, -1, -1);

      v39 = *(v72 + 8);
      v39(v18, v73);
    }

    else
    {

      v39 = *(v2 + 8);
      v39(v18, v1);
    }

    v40 = v68;
    if (v69)
    {
      v41 = 1;
    }

    else
    {
      v41 = (sub_2520041F0() == 2 || sub_2520041F0() == 3) && sub_2520041D0() == 1;
    }

    v42 = v67;
    v69 = v41;
    sub_2520043A0();
    v43 = v29;
    v44 = v42;
    v45 = sub_2520043B0();
    v46 = sub_2520048C0();

    v47 = os_log_type_enabled(v45, v46);
    v70 = v39;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v74 = v49;
      *v48 = 136315906;
      *(v48 + 4) = sub_251FC55E0(0xD00000000000001DLL, 0x800000025200ED80, &v74);
      *(v48 + 12) = 2080;
      v50 = sub_252003EA0();
      v52 = sub_251FC55E0(v50, v51, &v74);

      *(v48 + 14) = v52;
      *(v48 + 22) = 256;
      v53 = sub_2520041F0();

      *(v48 + 24) = v53;
      *(v48 + 25) = 256;
      v54 = sub_2520041D0();

      *(v48 + 27) = v54;
      _os_log_impl(&dword_251FB5000, v45, v46, "%s: for %s, PPE status: %hhu, PPE capability: %hhd", v48, 0x1Cu);
      swift_arrayDestroy();
      v55 = v49;
      v39 = v70;
      MEMORY[0x253097030](v55, -1, -1);
      MEMORY[0x253097030](v48, -1, -1);
    }

    else
    {
    }

    v56 = v73;
    v39(v40, v73);
    v57 = v71;
    sub_2520043A0();
    v58 = v44;
    v59 = sub_2520043B0();
    v60 = sub_2520048C0();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v74 = v62;
      *v61 = 136315650;
      *(v61 + 4) = sub_251FC55E0(0xD00000000000001DLL, 0x800000025200ED80, &v74);
      *(v61 + 12) = 2080;
      v63 = sub_252003EA0();
      v65 = sub_251FC55E0(v63, v64, &v74);

      *(v61 + 14) = v65;
      *(v61 + 22) = 1024;
      v66 = v69;
      *(v61 + 24) = v69;
      _os_log_impl(&dword_251FB5000, v59, v60, "%s: for %s, shouldShow: %{BOOL}d", v61, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x253097030](v62, -1, -1);
      MEMORY[0x253097030](v61, -1, -1);

      v70(v71, v56);
      return v66;
    }

    else
    {

      v39(v57, v56);
      return v69;
    }
  }

  else
  {
    sub_2520043A0();
    v24 = sub_2520043B0();
    v25 = sub_2520048B0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v74 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_251FC55E0(0xD00000000000001DLL, 0x800000025200ED80, &v74);
      _os_log_impl(&dword_251FB5000, v24, v25, "%s: No headphone device", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x253097030](v27, -1, -1);
      MEMORY[0x253097030](v26, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
    return 0;
  }
}

uint64_t sub_251FF29D8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_251FF2AD0;

  return v7(a1);
}

uint64_t sub_251FF2AD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_251FF2BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251FF2C10()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FF2C48()
{
  if (qword_27F4C8510 != -1)
  {
    swift_once();
  }

  v0 = sub_2520043D0();
  __swift_project_value_buffer(v0, qword_27F4C9470);
  v1 = sub_2520043B0();
  v2 = sub_2520048B0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_251FC55E0(0xD000000000000019, 0x800000025200EE90, &v7);
    *(v3 + 12) = 2048;
    *(v3 + 14) = 44;
    _os_log_impl(&dword_251FB5000, v1, v2, "HearingModeUIService: %s: %ld hearing client interrupted! Retrying to standup discovery stack", v3, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x253097030](v4, -1, -1);
    MEMORY[0x253097030](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong configHearingModeClient];
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251FF2DE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_252004C00();
  sub_252004730();
  v9 = sub_252004C20();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_252004B90() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_251FF3198(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_251FF2F38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70E8, &qword_252008668);
  result = sub_252004A50();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_252004C00();
      sub_252004730();
      result = sub_252004C20();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_251FF3198(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_251FF2F38(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_251FF3318();
      goto LABEL_16;
    }

    sub_251FF3474(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_252004C00();
  sub_252004730();
  result = sub_252004C20();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_252004B90();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_252004BC0();
  __break(1u);
  return result;
}

void *sub_251FF3318()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70E8, &qword_252008668);
  v2 = *v0;
  v3 = sub_252004A40();
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

uint64_t sub_251FF3474(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70E8, &qword_252008668);
  result = sub_252004A50();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_252004C00();

      sub_252004730();
      result = sub_252004C20();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

char *sub_251FF36AC(char *a1, int64_t a2, char a3)
{
  result = sub_251FF40CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_251FF36CC()
{
  result = qword_27F4C7048;
  if (!qword_27F4C7048)
  {
    sub_251FD6770(255, &qword_27F4C7040, 0x277D3FA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C7048);
  }

  return result;
}

uint64_t sub_251FF3734()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_251FF3784()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  if (qword_27F4C8510 != -1)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v73 = sub_2520043D0();
    __swift_project_value_buffer(v73, qword_27F4C9470);
    v5 = v1;

    v6 = sub_2520043B0();
    v7 = sub_2520048C0();

    v68 = v3;
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v76[0] = v9;
      *v8 = 136316418;
      v10 = sub_252004010();
      v12 = sub_251FC55E0(v10, v11, v76);

      *(v8 + 4) = v12;
      *(v8 + 12) = 256;
      v13 = sub_2520041B0();

      *(v8 + 14) = v13;
      *(v8 + 15) = 256;
      v14 = sub_2520041F0();

      *(v8 + 17) = v14;
      *(v8 + 18) = 256;
      v15 = sub_252004160();

      *(v8 + 20) = v15;
      *(v8 + 21) = 256;
      v16 = sub_252004120();

      *(v8 + 23) = v16;
      *(v8 + 24) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6B30, &unk_252007820);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_252007360;
      swift_beginAccess();
      v75[0] = swift_unknownObjectWeakLoadStrong();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70D0, &qword_252008648);
      v18 = sub_252004710();
      v20 = v19;
      *(v17 + 56) = MEMORY[0x277D837D0];
      *(v17 + 64) = sub_251FD6800();
      *(v17 + 32) = v18;
      *(v17 + 40) = v20;
      v21 = sub_2520046F0();
      v23 = sub_251FC55E0(v21, v22, v76);

      *(v8 + 26) = v23;
      _os_log_impl(&dword_251FB5000, v6, v7, "HearingModeUIService listener triggered for %s: HP: %hhu PPE: %hhu HA:%hhu  HT:%hhu BTSC:%s", v8, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x253097030](v9, -1, -1);
      MEMORY[0x253097030](v8, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_26;
    }

    v25 = Strong;
    v1 = [Strong specifiers];
    v3 = sub_2520047B0();

    v26 = sub_251FED8FC(v3);

    if (!v26)
    {

LABEL_26:
      v48 = sub_2520043B0();
      v49 = sub_2520048B0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_251FB5000, v48, v49, "HearingModeUIService depedencies not met! no specifiers or we are being deallocated!", v50, 2u);
        MEMORY[0x253097030](v50, -1, -1);
      }

LABEL_50:

      return;
    }

    v27 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      v28 = sub_252004B20();
    }

    else
    {
      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = v2;
    v67 = v25;
    v71 = v28;
    v72 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v28)
    {
      v70 = v26 & 0xC000000000000001;
      v2 = MEMORY[0x277D84F98];
      v29 = 4;
      while (1)
      {
        v30 = v29 - 4;
        if (v70)
        {
          v31 = MEMORY[0x253096650](v29 - 4, v26);
        }

        else
        {
          if (v30 >= *(v27 + 16))
          {
            goto LABEL_54;
          }

          v31 = *(v26 + 8 * v29);
        }

        v1 = v31;
        v3 = (v29 - 3);
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        if (qword_27F4C8510 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v73, qword_27F4C9470);
        v32 = v1;
        v33 = sub_2520043B0();
        v34 = sub_2520048C0();
        v74 = v29 - 3;
        if (os_log_type_enabled(v33, v34))
        {
          v69 = v2;
          v35 = v26;
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v75[0] = v37;
          *v36 = 136315138;
          v38 = [v32 identifier];

          if (!v38)
          {
            goto LABEL_61;
          }

          v39 = sub_2520046E0();
          v41 = v40;

          v42 = sub_251FC55E0(v39, v41, v75);

          *(v36 + 4) = v42;
          _os_log_impl(&dword_251FB5000, v33, v34, "updatedSpecifiersMap adding identifier: %s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v37);
          MEMORY[0x253097030](v37, -1, -1);
          MEMORY[0x253097030](v36, -1, -1);

          v26 = v35;
          v28 = v71;
          v27 = v72;
          v2 = v69;
        }

        else
        {
        }

        v43 = [v32 identifier];
        if (!v43)
        {
          break;
        }

        v44 = v43;
        v3 = sub_2520046E0();
        v46 = v45;

        v1 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75[0] = v2;
        sub_251FF48C4(v1, v3, v46, isUniquelyReferenced_nonNull_native);

        v2 = v75[0];

        ++v29;
        if (v74 == v28)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_61:
      __break(1u);
      return;
    }

    v2 = MEMORY[0x277D84F98];
LABEL_29:
    v51 = v68 >> 62 ? sub_252004B20() : *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *(v2 + 16);

    if (v51 != v3)
    {
      break;
    }

    v1 = sub_2520043B0();
    v52 = sub_2520048C0();
    v2 = v66;
    if (os_log_type_enabled(v1, v52))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_251FB5000, v1, v52, "HearingModeUIService listener triggered reload ID", v3, 2u);
      MEMORY[0x253097030](v3, -1, -1);
    }

    swift_beginAccess();
    v53 = swift_unknownObjectWeakLoadStrong();
    if (v53)
    {
      v1 = v53;
      sub_251FD1A78(v68);
      v3 = sub_2520047A0();

      sub_251FD1A78(v26);
      v54 = sub_2520047A0();

      [v1 replaceContiguousSpecifiers:v3 withSpecifiers:v54];
    }

    if (!v28)
    {
LABEL_51:

      return;
    }

    v55 = 4;
    while (1)
    {
      v57 = v55 - 4;
      if ((v26 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x253096650](v55 - 4, v26);
      }

      else
      {
        if (v57 >= *(v27 + 16))
        {
          goto LABEL_56;
        }

        v58 = *(v26 + 8 * v55);
      }

      v1 = v58;
      v59 = v55 - 3;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      swift_beginAccess();
      v60 = swift_unknownObjectWeakLoadStrong();
      if (v60)
      {
        v61 = v60;
        v3 = [v1 identifier];
        [v61 reloadSpecifierID_];
      }

      ++v55;
      v56 = v59 == v71;
      v27 = v72;
      if (v56)
      {
        goto LABEL_51;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    swift_once();
  }

  v62 = sub_2520043B0();
  v63 = sub_2520048C0();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_251FB5000, v62, v63, "HearingModeUIService listener triggered reload all", v64, 2u);
    MEMORY[0x253097030](v64, -1, -1);
  }

  swift_beginAccess();
  v65 = swift_unknownObjectWeakLoadStrong();
  if (v65)
  {
    v48 = v65;
    [v65 reloadSpecifiers];

    goto LABEL_50;
  }
}

char *sub_251FF40CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70F0, &unk_252008670);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_251FF41D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70C8, &qword_252008640);
  v38 = a2;
  result = sub_252004B40();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_252004C00();
      sub_252004730();
      result = sub_252004C20();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_251FF4480(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70D8, &qword_252008658);
  v39 = a2;
  result = sub_252004B40();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_252004C00();
      sub_252004730();
      result = sub_252004C20();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_251FF4724(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_251FD4318(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_251FF41D8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_251FD4318(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_252004BD0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_251FF4A3C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

const char *HMOcclusionResultToString(unsigned int a1)
{
  if (a1 > 7)
  {
    return "?";
  }

  else
  {
    return off_2796F1F08[a1];
  }
}

uint64_t sub_251FF48C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_251FD4318(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_251FF4480(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_251FD4318(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        v11 = sub_252004BD0();
        __break(1u);
        return MEMORY[0x2821F96F8](v11, v24);
      }
    }

    else
    {
      v19 = v11;
      sub_251FF4BAC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8](v11, v24);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

void *sub_251FF4A3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70C8, &qword_252008640);
  v2 = *v0;
  v3 = sub_252004B30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_251FF4BAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C70D8, &qword_252008658);
  v2 = *v0;
  v3 = sub_252004B30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_251FF4D18(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x253096420](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_251FF2DE8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t _sSo20HearingModeUIServiceC0aB10SettingsUIE20_getOcclusionPayload_6device9inUsecaseSDySSypGSS_16HeadphoneManager0L6DeviceCSitF_0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252008480;
  *(inited + 32) = 0x65726464612D7462;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2520042F0();

  *(inited + 80) = sub_2520042E0();
  *(inited + 88) = v9;
  *(inited + 120) = sub_252003EC0();
  *(inited + 96) = a3;
  v10 = a3;
  *(inited + 128) = sub_2520042C0();
  *(inited + 136) = v11;
  v12 = HearingOcclusionUseCase.init(rawValue:)(a4);
  LOBYTE(a4) = v13;
  v21[3] = &type metadata for HearingOcclusionUseCase;
  v14 = sub_251FF5EC0();
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v21[4] = v14;
  v21[0] = v15;
  v16 = type metadata accessor for HearingTopLevelCaseObjectWrapper();
  v17 = sub_251FE8360(v21);
  *(inited + 168) = v16;
  *(inited + 144) = v17;
  *(inited + 176) = sub_2520042D0();
  *(inited + 184) = v18;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  v19 = sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  return v19;
}

unint64_t sub_251FF4F40()
{
  result = qword_27F4C70A8;
  if (!qword_27F4C70A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C70A8);
  }

  return result;
}

unint64_t _sSo20HearingModeUIServiceC0aB10SettingsUIE04_getA17ProtectionPayload_6device9inUsecaseSDySSypGSS_16HeadphoneManager0L6DeviceCSitF_0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AA0, &unk_252007F50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2520073B0;
  *(inited + 32) = 0x65726464612D7462;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEA00000000007373;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_2520042F0();

  *(inited + 80) = sub_2520042E0();
  *(inited + 88) = v9;
  *(inited + 120) = sub_252003EC0();
  *(inited + 96) = a3;
  v10 = a3;
  *(inited + 128) = sub_2520042C0();
  *(inited + 136) = v11;
  v12 = HearingTopLevelCellUseCase.init(rawValue:)(a4);
  LOBYTE(a4) = v13;
  v20[3] = &type metadata for HearingTopLevelCellUseCase;
  v14 = sub_251FF4F40();
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v20[4] = v14;
  v20[0] = v15;
  v16 = type metadata accessor for HearingTopLevelCaseObjectWrapper();
  v17 = sub_251FE8360(v20);
  *(inited + 168) = v16;
  *(inited + 144) = v17;
  v18 = sub_251FD4B5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6AB8, &unk_2520084E0);
  swift_arrayDestroy();
  return v18;
}

void _sSo20HearingModeUIServiceC0aB10SettingsUIE18showOcclusionAlert_13serviceClient13presentAction04passL0y16HeadphoneManager0N6DeviceC_So09HMServiceJ0CySo16UIViewControllerCcyyctFZ_0(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a2;
  v42 = a4;
  v43 = a3;
  v41 = sub_2520045E0();
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  v10 = MEMORY[0x28223BE20](v41, v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v37 - v14;
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  aBlock = sub_252003EB0();
  v45 = v17;
  v52 = 45;
  v53 = 0xE100000000000000;
  v50 = 58;
  v51 = 0xE100000000000000;
  sub_251FD671C();
  v18 = sub_2520049E0();
  v20 = v19;

  v21 = sub_252003E50();
  v22 = [v21 identifier];

  if (v22)
  {
    sub_2520046E0();
  }

  v23 = sub_2520046B0();

  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = v18;
  v37[1] = v18;
  v26 = v42;
  v25 = v43;
  v24[4] = v20;
  v24[5] = v25;
  v24[6] = v26;
  v24[7] = a5;
  v24[8] = v39;
  v24[9] = v16;
  v48 = sub_251FF5A90;
  v49 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_251FEEF50;
  v47 = &block_descriptor_35;
  v27 = _Block_copy(&aBlock);
  v28 = a1;

  v29 = v16;

  [v40 fetchOcclusionResultForDeviceIdentifier:v23 featureID:3 completion:v27];
  _Block_release(v27);

  sub_2520045D0();
  sub_2520045F0();
  v30 = *(v38 + 8);
  v31 = v41;
  v30(v12, v41);
  sub_2520048E0();
  v30(v15, v31);
  if (sub_2520045A0())
  {
    if (qword_27F4C8510 != -1)
    {
      swift_once();
    }

    v32 = sub_2520043D0();
    __swift_project_value_buffer(v32, qword_27F4C9470);
    v33 = sub_2520043B0();
    v34 = sub_2520048B0();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_251FB5000, v33, v34, "timeout for fetching fetchOcclusionResult: Timed Out", v35, 2u);
      MEMORY[0x253097030](v35, -1, -1);
    }

    v36 = sub_252003D30();

    v43(v36);
  }

  else
  {
  }
}

uint64_t sub_251FF551C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_251FF5554()
{
  v1 = [*(v0 + 16) navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 presentingViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_251FF55F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong delegate];

    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        [v4 presentViewController_];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_251FF56A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong delegate];

    if (v2)
    {
      if ([v2 respondsToSelector_])
      {
        type metadata accessor for HMHearingTestService();
        v3 = HMHearingTestService.__allocating_init()();
        v4 = (*((*MEMORY[0x277D85000] & *v3) + 0x58))();

        [v2 presentViewController_];
      }

      swift_unknownObjectRelease();
    }
  }
}

const char *HMRegionStatusToString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "?";
  }

  else
  {
    return off_2796F1F48[a1];
  }
}

unint64_t _sSo20HearingModeUIServiceC0aB10SettingsUIE03getA7AidLinkyS2SF_0()
{
  v0 = 0xD000000000000034;
  sub_252003F10();
  v1 = sub_252003EF0();
  sub_251FD671C();
  v2 = sub_2520049E0();
  v4 = v3;
  v5 = sub_252003EE0();

  if (!*(v5 + 16))
  {

    goto LABEL_8;
  }

  v6 = sub_251FD4318(v2, v4);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_8:

    return v0;
  }

  v9 = *(*(v5 + 56) + 8 * v6);

  v10 = sub_252003E60();
  if (sub_2520041B0() == 3 || sub_252004120() == 3 || sub_252004160() == 3)
  {

    return 0xD000000000000020;
  }

  else
  {
  }

  return v0;
}

uint64_t _s14AssociatedKeysVwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s14AssociatedKeysVwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_251FF5A38()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_251FF5AC4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_251FF5B1C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v12 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_251FF5BFC;

  return sub_251FEE9D4(v8, v9, v10, v2, v3, v4, v5, v6);
}

uint64_t sub_251FF5BFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_251FF5CF0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251FF5D28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_251FF6028;

  return sub_251FF29D8(a1, v5);
}

uint64_t sub_251FF5DE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_251FF5BFC;

  return sub_251FF29D8(a1, v5);
}

uint64_t sub_251FF5E98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_251FF5EC0()
{
  result = qword_27F4C70C0;
  if (!qword_27F4C70C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C70C0);
  }

  return result;
}

Swift::Void __swiftcall UIView.pinToOther(_:)(UIView *a1)
{
  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252007390;
  v5 = [v1 leadingAnchor];
  v6 = [(UIView *)a1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v4 + 32) = v7;
  v8 = [v1 trailingAnchor];
  v9 = [(UIView *)a1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v4 + 40) = v10;
  v11 = [v1 topAnchor];
  v12 = [(UIView *)a1 topAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v4 + 48) = v13;
  v14 = [v1 bottomAnchor];
  v15 = [(UIView *)a1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 56) = v16;
  sub_251FD6770(0, &qword_27F4C69D8, 0x277CCAAD0);
  v17 = sub_2520047A0();

  [v3 activateConstraints_];
}

void sub_251FF6298(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  UIView.pinToOther(_:)(v4);
}

id sub_251FF6304(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7100, &qword_252008778);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252007360;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 64) = sub_251FD6770(0, &qword_27F4C7108, 0x277D74300);
  *(inited + 40) = a3;
  v6 = v5;
  v7 = a3;
  sub_251FF68C0(inited);
  swift_setDeallocating();
  sub_251FF69C8(inited + 32);
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_2520046B0();
  type metadata accessor for Key();
  sub_251FF6C18(&qword_27F4C7118);
  v10 = sub_252004600();

  v11 = [v8 initWithString:v9 attributes:v10];

  [v13 appendAttributedString_];

  return v13;
}

void OBWelcomeController.fitNoiseSetupCancelButton(fitDelegate:)(uint64_t a1)
{
  v3 = sub_2520043D0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = objc_allocWithZone(MEMORY[0x277D751E0]);
    swift_unknownObjectRetain();
    v10 = [v9 initWithBarButtonSystemItem:1 target:0 action:0];
    sub_251FD6770(0, &qword_27F4C6BB0, 0x277D750C8);
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a1;
    swift_unknownObjectRetain();
    v13 = v1;
    v14 = sub_2520049A0();
    [v10 setPrimaryAction_];

    v15 = [v13 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F4C6BA0, &qword_252007410);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2520073A0;
    *(v16 + 32) = v10;
    sub_251FD6770(0, &qword_27F4C6FF8, 0x277D751E0);
    v17 = v10;
    v23 = sub_2520047A0();

    [v15 setRightBarButtonItems_];
    swift_unknownObjectRelease();

    v18 = v23;
  }

  else
  {
    sub_252004390();
    v19 = sub_2520043B0();
    v20 = sub_2520048B0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_251FB5000, v19, v20, "No delegate", v21, 2u);
      MEMORY[0x253097030](v21, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
  }
}

void sub_251FF67C0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  OBWelcomeController.fitNoiseSetupCancelButton(fitDelegate:)(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_251FF6828(uint64_t a1)
{
  v2 = sub_251FF6C18(&qword_27F4C7118);
  v3 = sub_251FF6C18(&qword_27F4C7140);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_251FF68C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7148, &qword_252008948);
    v3 = sub_252004B50();
    v4 = a1 + 32;

    while (1)
    {
      sub_251FF6C5C(v4, &v11);
      v5 = v11;
      result = sub_251FD4390(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_251FC63B0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_251FF69C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7110, &unk_252008780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Key()
{
  if (!qword_27F4C7120)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F4C7120);
    }
  }
}

uint64_t sub_251FF6A80()
{
  MEMORY[0x2530970B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251FF6AB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_251FF6AF8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([v1 respondsToSelector_])
    {
      [v1 fitNoiseCheckCancelled_];
    }
  }
}

uint64_t sub_251FF6C18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251FF6C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7110, &unk_252008780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251FF6CF8()
{
  v1 = (v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___deviceName);
  if (*(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___deviceName + 8))
  {
    v2 = *v1;
    v3 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___deviceName + 8);
  }

  else
  {
    type metadata accessor for AnyHearingFeatureContentProvider();
    v4 = sub_251FF6DB8();
    v5 = AnyHearingFeatureContentProvider.__allocating_init(device:)(v4);
    if (AnyHearingFeatureContentProvider.featureFlag.getter())
    {
      v2 = AnyHearingFeatureContentProvider.deviceMarketingName.getter();
      v7 = v6;
    }

    else
    {

      v7 = 0xEB000000006F7250;
      v2 = 0x2073646F50726941;
    }

    v8 = v1[1];
    *v1 = v2;
    v1[1] = v7;
  }

  return v2;
}

void *sub_251FF6DB8()
{
  v1 = v0;
  v2 = sub_2520043D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice;
  v9 = *(v0 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice);
  if (!v9 || (v10 = v9, v11 = sub_251FEAFA4(), v10, !v11))
  {
    sub_2520043A0();
    v12 = sub_2520043B0();
    v13 = sub_2520048B0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_251FC55E0(0x6E6F687064616568, 0xEF65636976654465, &v19);
      _os_log_impl(&dword_251FB5000, v12, v13, "%s: connected device !", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x253097030](v15, -1, -1);
      MEMORY[0x253097030](v14, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    v11 = *(v1 + v8);
    v16 = v11;
  }

  return v11;
}

uint64_t sub_251FF6FAC()
{
  v1 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_listeners;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_251FF6FF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_listeners;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id HearingAidSettingsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2520046B0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id HearingAidSettingsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__hmsClient] = 0;
  v5 = &v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___deviceName];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_address];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController_listeners] = MEMORY[0x277D84FA0];
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___hearingOptionsControlCenterSection] = 0;
  *&v3[OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___adjustMediaAssistSection] = 0;
  if (a2)
  {
    v7 = sub_2520046B0();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for HearingAidSettingsViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

uint64_t sub_251FF72C8()
{
  v1 = sub_2520046A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2520042A0();
  v7 = *(v20 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v20, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_252004360();
  v21 = v0;
  sub_252004310();

  v22 = v0;
  sub_252004620();
  v15 = type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v6);
  (*(v2 + 8))(v6, v1);
  v23 = v15;
  v22 = v0;
  v16 = v0;
  sub_252004290();
  sub_252004320();

  (*(v7 + 8))(v11, v20);
  sub_252004330();

  v17 = sub_252004350();

  return v17;
}

uint64_t sub_251FF7590(void *a1, uint64_t a2)
{
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252004680();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C7240, &qword_252008A78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v31 - v16;
  v18 = sub_252003B30();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a2 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController__headphoneDevice);
  if (v24)
  {
    v34 = a2;
    v35 = v5;
    v25 = v24;
    sub_252003E30();

    sub_252004270();

    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      (*(v19 + 32))(v23, v17, v18);
      v26 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v26 setDateStyle_];
      [v26 setTimeStyle_];
      v27 = sub_252003B20();
      v28 = [v26 stringFromDate_];

      sub_2520046E0();
      v32 = v4;
      v33 = a1;

      v36 = v34;
      sub_252004670();
      sub_252004660();
      sub_252004640();

      sub_252004660();
      sub_252004690();
      type metadata accessor for HearingAidSettingsViewController();
      sub_251FEAC98(v9);
      (*(v35 + 8))(v9, v32);
      v29 = sub_2520046B0();

      [v33 setProperty:v29 forKey:*MEMORY[0x277D3FF88]];

      return (*(v19 + 8))(v23, v18);
    }
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  return sub_251FC6470(v17, &qword_27F4C7240, &qword_252008A78);
}

uint64_t sub_251FF79C4()
{
  v1 = sub_2520042A0();
  v20 = *(v1 - 8);
  v21 = v1;
  v2 = *(v20 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2520046A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v0;
  sub_252004620();
  v12 = type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v11);
  v13 = *(v7 + 8);
  v13(v11, v6);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_252004360();
  v22 = v0;
  sub_252004310();

  v23 = v0;
  sub_252004620();
  sub_251FEAB30(v11);
  v13(v11, v6);
  v24 = v12;
  v23 = v0;
  v17 = v0;
  sub_252004290();
  sub_252004320();

  (*(v20 + 8))(v5, v21);
  v18 = sub_252004350();

  return v18;
}

uint64_t sub_251FF7CC8(uint64_t a1, uint64_t a2)
{
  v14[2] = a1;
  v3 = sub_252004680();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_2520046A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2;
  sub_252004620();
  type metadata accessor for HearingAidSettingsViewController();
  v14[1] = sub_251FEAB30(v11);
  v12 = *(v7 + 8);
  v12(v11, v6);
  v15 = a2;
  sub_252004670();
  sub_252004660();
  sub_251FF6CF8();
  sub_252004640();

  sub_252004660();
  sub_252004690();
  sub_251FEAB30(v11);
  v12(v11, v6);
  sub_252004890();
}

uint64_t sub_251FF7F28(void *a1)
{
  v2 = sub_2520046A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2520042A0();
  v8 = *(v21 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v21, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C6948, &qword_2520073E0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_252004360();
  v22 = a1;
  sub_252004310();

  v23 = a1;
  sub_252004620();
  v16 = type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v7);
  (*(v3 + 8))(v7, v2);
  v24 = v16;
  v23 = a1;
  v17 = a1;
  sub_252004290();
  sub_252004320();

  (*(v8 + 8))(v12, v21);
  sub_252004330();

  v18 = sub_252004350();

  return v18;
}

void sub_251FF81F0(void *a1, uint64_t a2)
{
  v4 = sub_2520046A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = a2;
  sub_252004620();
  type metadata accessor for HearingAidSettingsViewController();
  sub_251FEAB30(v9);
  (*(v5 + 8))(v9, v4);
  v10 = sub_2520046B0();

  [a1 setProperty:v10 forKey:*MEMORY[0x277D3FF88]];
}

uint64_t sub_251FF8354(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___hearingOptionsControlCenterSection);
  *(v1 + OBJC_IVAR____TtC21HearingModeSettingsUI32HearingAidSettingsViewController____lazy_storage___hearingOptionsControlCenterSection) = a1;
}