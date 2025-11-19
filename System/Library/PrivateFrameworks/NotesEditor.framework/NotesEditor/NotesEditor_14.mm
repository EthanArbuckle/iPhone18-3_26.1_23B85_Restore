void sub_215424AA4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_215324EEC(v5, v6, &qword_27CA5D960);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      sub_215328E68(v9, v2[8]);
      v11 = *v10;
      v12 = v2[13];
      v13 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = v2[7];
        v15 = v2[4];
        (*(v2[3] + 16))(v15, *v2, v2[2]);
        sub_215328E68(v13, v14);
        sub_2154730DC(v12, v15, v14, v11);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = v2[11];
    sub_215324EEC(v5, v16, &qword_27CA5D960);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v17 != 1)
    {
      v20 = v2[1];
      sub_215328E68(v9, v2[9]);
      v11 = *v20;
      v12 = v2[13];
      v13 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_215328E68(v13, v11[7] + *(v2[6] + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_2151ADCD8(v9, &qword_27CA5D960);
  if (v8)
  {
    v18 = v2[13];
    v19 = *v2[1];
    (*(v2[3] + 8))(*(v19 + 48) + *(v2[3] + 72) * v18, v2[2]);
    sub_21536DA30(v18, v19);
  }

LABEL_10:
  v21 = v2[11];
  v22 = v2[12];
  v24 = v2[9];
  v23 = v2[10];
  v26 = v2[7];
  v25 = v2[8];
  v27 = v2[4];
  sub_2151ADCD8(v22, &qword_27CA5D960);
  free(v22);
  free(v21);
  free(v23);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_215424CE4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_215424D0C;
}

uint64_t sub_215424D20()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_215424DB0(uint64_t a1)
{
  v2 = type metadata accessor for TextElementAnimationConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_215424E2C()
{
  result = qword_27CA5DB90;
  if (!qword_27CA5DB90)
  {
    sub_21549E70C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DB90);
  }

  return result;
}

uint64_t sub_215424E84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_215424EFC()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5D978);
  __swift_project_value_buffer(v0, qword_27CA5D978);
  return sub_21549F09C();
}

char *SystemPaperLinkBarViewController.init(noteEditorViewController:textView:)(void *a1, void *a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___ICSystemPaperLinkBarViewController_linkControllerDelegate] = 0;
  *&v3[OBJC_IVAR___ICSystemPaperLinkBarViewController_attachmentWasAddedObservation] = 0;
  *&v3[OBJC_IVAR___ICSystemPaperLinkBarViewController_attachmentWasDeletedObservation] = 0;
  *&v3[OBJC_IVAR___ICSystemPaperLinkBarViewController_blurView] = 0;
  *&v3[OBJC_IVAR___ICSystemPaperLinkBarViewController_linkDescriptionLabel] = 0;
  *&v3[OBJC_IVAR___ICSystemPaperLinkBarViewController_addLinkButton] = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_2154A2C8C())
  {
    sub_21532B7CC(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  *&v3[OBJC_IVAR___ICSystemPaperLinkBarViewController_lastFetchedFilteredLinks] = v6;
  swift_unknownObjectWeakAssign();
  sub_2154A17FC();
  v7 = a2;
  *&v3[OBJC_IVAR___ICSystemPaperLinkBarViewController_linkController] = sub_2154A17BC();
  v8 = [objc_allocWithZone(MEMORY[0x277D6B780]) init];
  *&v3[OBJC_IVAR___ICSystemPaperLinkBarViewController_addLinkClient] = v8;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for SystemPaperLinkBarViewController();
  v9 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, 0, 0);
  type metadata accessor for SystemPaperViewControllerLinkDelegate();
  v10 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedAssign();
  *&v9[OBJC_IVAR___ICSystemPaperLinkBarViewController_linkControllerDelegate] = v10;
  v11 = v9;

  v12 = *&v11[OBJC_IVAR___ICSystemPaperLinkBarViewController_linkController];
  sub_2154A17EC();

  return v11;
}

void sub_2154252F4(void *a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_linkControllerDelegate) = 0;
  *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_attachmentWasAddedObservation) = 0;
  *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_attachmentWasDeletedObservation) = 0;
  *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_blurView) = 0;
  *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_linkDescriptionLabel) = 0;
  *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_addLinkButton) = 0;
  if (MEMORY[0x277D84F90] >> 62 && sub_2154A2C8C())
  {
    sub_21532B7CC(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_lastFetchedFilteredLinks) = v2;
  sub_2154A2EDC();
  __break(1u);
}

id sub_215425410()
{
  v1 = sub_2154A250C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v104 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A5A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v104 - v9;
  v11 = sub_2154A2AAC();
  v115 = *(v11 - 8);
  v116 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v104 - v15;
  v16 = type metadata accessor for SystemPaperLinkBarViewController();
  v118.receiver = v0;
  v118.super_class = v16;
  objc_msgSendSuper2(&v118, sel_viewDidLoad);
  v117 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v18 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [v117 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19 = result;
  v111 = v4;
  v112 = v2;
  v20 = objc_opt_self();
  v21 = [v20 clearColor];
  [v19 setBackgroundColor_];

  type metadata accessor for LinkBackdropView();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = [v117 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = result;
  v108 = v13;
  v109 = v10;
  v113 = v20;
  v24 = v22;
  [v23 insertSubview:v24 atIndex:0];

  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2154BDB30;
  v26 = [v24 topAnchor];

  result = [v117 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v27 = result;
  v28 = [result topAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v25 + 32) = v29;
  v30 = [v24 leadingAnchor];

  result = [v117 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v31 = result;
  v107 = v1;
  v32 = [result leadingAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v25 + 40) = v33;
  v34 = [v24 heightAnchor];

  result = [v117 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v35 = result;
  v106 = v7;
  v36 = [result heightAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v25 + 48) = v37;
  v38 = [v24 widthAnchor];

  result = [v117 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v39 = result;
  v40 = objc_opt_self();
  v41 = [v39 widthAnchor];

  v42 = [v38 constraintEqualToAnchor_];
  *(v25 + 56) = v42;
  v104 = sub_2151A6C9C(0, &qword_2811995A0);
  v43 = sub_2154A1F3C();

  v105 = v40;
  [v40 activateConstraints_];

  v44 = v117;
  v45 = *&v117[OBJC_IVAR___ICSystemPaperLinkBarViewController_blurView];
  *&v117[OBJC_IVAR___ICSystemPaperLinkBarViewController_blurView] = v24;

  v46 = v114;
  sub_2154A2A5C();
  v47 = [objc_opt_self() mainBundle];
  sub_21549E2CC();

  sub_2154A2A8C();
  sub_2154A29FC();
  v48 = [objc_opt_self() configurationWithScale_];
  sub_2154A296C();
  sub_2154A29CC();
  v49 = v109;
  sub_21549F2AC();
  v50 = sub_21549F29C();
  (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  sub_2154A2A3C();
  sub_2151A6C9C(0, &qword_281199470);
  v52 = v115;
  v51 = v116;
  v53 = *(v115 + 16);
  v53(v108, v46, v116);
  v54 = sub_2154A2ABC();
  [v54 setTranslatesAutoresizingMaskIntoConstraints_];
  v55 = v106;
  v53(v106, v46, v51);
  (*(v52 + 56))(v55, 0, 1, v51);
  sub_2154A2ADC();
  v56 = *&v44[OBJC_IVAR___ICSystemPaperLinkBarViewController_addLinkButton];
  *&v44[OBJC_IVAR___ICSystemPaperLinkBarViewController_addLinkButton] = v54;
  v57 = v54;

  v58 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v58 setTranslatesAutoresizingMaskIntoConstraints_];
  v59 = [objc_opt_self() ic:*MEMORY[0x277D76968] preferredFontForStyle:*MEMORY[0x277D74420] withFontWeight:?];
  [v58 setFont_];

  v60 = [v113 secondaryLabelColor];
  [v58 setTextColor_];

  [v58 setLineBreakMode_];
  v61 = sub_2154A1D2C();
  [v58 setText_];

  LODWORD(v62) = 1112014848;
  [v58 setContentCompressionResistancePriority:0 forAxis:v62];
  v63 = *&v44[OBJC_IVAR___ICSystemPaperLinkBarViewController_linkDescriptionLabel];
  *&v44[OBJC_IVAR___ICSystemPaperLinkBarViewController_linkDescriptionLabel] = v58;
  v64 = v58;

  v113 = v64;
  [v24 addSubview_];
  [v24 addSubview_];
  v65 = 0.0;
  if ([objc_opt_self() ic_isiPad])
  {
    v66 = objc_opt_self();
    [v66 noteLeadingMargin];
    v68 = v67;
    [v66 noteLeadingMargin];
    [v24 setLayoutMargins_];
    v65 = -6.0;
  }

  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_2154C4320;
  v71 = [v57 heightAnchor];
  v72 = objc_opt_self();
  [v72 linkBarItemsHeight];
  v73 = [v71 constraintGreaterThanOrEqualToConstant_];

  *(v70 + 32) = v73;
  v74 = [v57 leadingAnchor];
  v75 = [v24 layoutMarginsGuide];

  v76 = [v75 leadingAnchor];
  v77 = [v74 constraintEqualToAnchor:v76 constant:v65];

  *(v70 + 40) = v77;
  v78 = [v57 centerYAnchor];
  v79 = [v24 &selRef_currentSetBoundsRect];

  v80 = [v78 constraintEqualToAnchor_];
  *(v70 + 48) = v80;
  v109 = v57;
  v81 = [v57 trailingAnchor];

  v82 = v113;
  v83 = [v113 leadingAnchor];
  v84 = [v81 constraintEqualToAnchor:v83 constant:-8.0];

  *(v70 + 56) = v84;
  v85 = [v82 heightAnchor];
  [v72 linkBarItemsHeight];
  v86 = [v85 constraintGreaterThanOrEqualToConstant_];

  *(v70 + 64) = v86;
  v87 = [v82 trailingAnchor];
  v88 = [v24 layoutMarginsGuide];

  v89 = [v88 trailingAnchor];
  v90 = [v87 constraintLessThanOrEqualToAnchor_];

  *(v70 + 72) = v90;
  v91 = [v82 centerYAnchor];

  v92 = [v24 centerYAnchor];
  v93 = [v91 constraintEqualToAnchor_];

  *(v70 + 80) = v93;
  v94 = sub_2154A1F3C();

  [v105 activateConstraints_];

  v95 = objc_opt_self();
  v96 = [v95 defaultCenter];
  v97 = v111;
  sub_2154A251C();

  swift_allocObject();
  v98 = v117;
  swift_unknownObjectWeakInit();
  sub_215429E50(&qword_281199588, MEMORY[0x277CC9DB0]);
  v99 = v107;
  v100 = sub_21549F3EC();

  v101 = *(v112 + 8);
  v101(v97, v99);
  *&v98[OBJC_IVAR___ICSystemPaperLinkBarViewController_attachmentWasAddedObservation] = v100;

  v102 = [v95 defaultCenter];
  sub_2154A251C();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v103 = sub_21549F3EC();

  v101(v97, v99);
  (*(v115 + 8))(v114, v116);
  *&v98[OBJC_IVAR___ICSystemPaperLinkBarViewController_attachmentWasDeletedObservation] = v103;
}

uint64_t sub_215426310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21549E30C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() ic:*MEMORY[0x277D76968] preferredFontForStyle:*MEMORY[0x277D74420] withFontWeight:?];
  sub_215324F74();
  return sub_21549E31C();
}

void sub_2154263D0()
{
  v0 = sub_21549E18C();
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = v0;
  sub_2154A1D6C();
  sub_2154A2D3C();
  if (!*(v1 + 16) || (v2 = sub_2153B1010(v7), (v3 & 1) == 0))
  {

    sub_21533FC34(v7);
LABEL_11:
    v8 = 0u;
    v9 = 0u;
    goto LABEL_12;
  }

  sub_21533FC88(*(v1 + 56) + 32 * v2, &v8);
  sub_21533FC34(v7);

  if (!*(&v9 + 1))
  {
LABEL_12:
    sub_2151ADCD8(&v8, &qword_27CA5ABC0);
    return;
  }

  sub_2151A6C9C(0, &qword_281199690);
  if (swift_dynamicCast())
  {
    v4 = v7[0];
    if (([v7[0] isDrawing] & 1) == 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;
        sub_2154287FC();
      }
    }
  }
}

void sub_215426534()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2 && (v3 = v2, v4 = [v2 note], v3, v4) && (v5 = objc_msgSend(v4, sel_objectID), v4, v5))
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6 && (v7 = v6, v8 = [v6 hostBundleIdentifier], v7, v8))
      {
        v9 = sub_2154A1D6C();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v5;
      v13[3] = v9;
      v13[4] = v11;
      v13[5] = v12;
      v14 = v5;

      sub_2154A17DC();
    }

    else
    {
    }
  }
}

void sub_215426728(void *a1)
{
  if (qword_27CA598D8 != -1)
  {
    swift_once();
  }

  v3 = sub_21549F11C();
  __swift_project_value_buffer(v3, qword_27CA5D978);
  v4 = sub_21549F0FC();
  v5 = sub_2154A225C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2151A1000, v4, v5, "Tapped add link button", v6, 2u);
    MEMORY[0x21606B520](v6, -1, -1);
  }

  v7 = [a1 showsMenuAsPrimaryAction];
  v8 = sub_21549F0FC();
  v9 = sub_2154A225C();
  v10 = os_log_type_enabled(v8, v9);
  if (v7)
  {
    if (v10)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2151A1000, v8, v9, "Add link button shows menu as primary action. Updating menu.", v11, 2u);
      MEMORY[0x21606B520](v11, -1, -1);
    }

    v12 = *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_addLinkButton);
    if (v12)
    {
      v13 = v12;
      oslog = sub_2154A17CC();
      [v13 setMenu_];
    }

    else
    {
      oslog = sub_21549F0FC();
      v15 = sub_2154A226C();
      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2151A1000, oslog, v15, "addLinkButton wasn't available at time of didTapAddLinkButton.", v16, 2u);
        MEMORY[0x21606B520](v16, -1, -1);
      }
    }
  }

  else
  {
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2151A1000, v8, v9, "Add link button does not show menu as primary action. Adding link.", v14, 2u);
      MEMORY[0x21606B520](v14, -1, -1);
    }

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_2154A17DC();
  }
}

uint64_t sub_215426A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2154A10EC();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2154A110C();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2151A6C9C(0, &unk_2811995C0);
  v10 = sub_2154A245C();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_215429EA0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_49_0;
  v12 = _Block_copy(aBlock);

  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_215429E50(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v9, v6, v12);
  _Block_release(v12);

  (*(v15 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v14);
}

void sub_215426D2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
LABEL_18:

      return;
    }

    v6 = v5;
    v7 = [v5 note];
    v8 = [v6 hostBundleIdentifier];
    if (v8)
    {
      v9 = v8;
      v10 = sub_2154A1D6C();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v13 = sub_21546D400(a2, v7, v10, v12);

    if (v13[2])
    {
      swift_unknownObjectRetain();

      sub_2154A16EC();
      if (swift_dynamicCastClass())
      {
        v14 = sub_2154A16CC();
        v15 = [v14 userActivity];
        if (v15)
        {
          v16 = v15;
          v17 = *&v4[OBJC_IVAR___ICSystemPaperLinkBarViewController_addLinkClient];
          v18 = swift_allocObject();
          *(v18 + 16) = v6;
          *(v18 + 24) = v14;
          aBlock[4] = sub_215429EA8;
          aBlock[5] = v18;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_215427374;
          aBlock[3] = &block_descriptor_55;
          v19 = _Block_copy(aBlock);
          v20 = v17;
          v21 = v6;
          v22 = v14;

          [v20 userWillAddLinkWithActivity:v16 completion:v19];
          swift_unknownObjectRelease();

          _Block_release(v19);
          v6 = v20;
        }

        else
        {
          [v6 addSystemPaperLink:v14 updateFirstResponder:1];

          swift_unknownObjectRelease();
          v4 = v14;
        }

LABEL_17:

        v4 = v6;
        goto LABEL_18;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    if (qword_27CA598D8 != -1)
    {
      swift_once();
    }

    v23 = sub_21549F11C();
    __swift_project_value_buffer(v23, qword_27CA5D978);
    v24 = sub_21549F0FC();
    v25 = sub_2154A226C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2151A1000, v24, v25, "No SynapseLinkItem available. Can't add link. Bailing out.", v26, 2u);
      MEMORY[0x21606B520](v26, -1, -1);
    }

    v4 = v24;
    goto LABEL_17;
  }
}

uint64_t sub_21542706C(void *a1, void *a2, void *a3)
{
  v6 = sub_2154A10EC();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2154A110C();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2151A6C9C(0, &unk_2811995C0);
  v12 = sub_2154A245C();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_215429EB0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_61;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  v16 = a3;
  v17 = a2;

  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_215429E50(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v11, v8, v14);
  _Block_release(v14);

  (*(v20 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v19);
}

void sub_215427374(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_215427448(uint64_t a1)
{
  v3 = sub_2154A10EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v164 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2154A110C();
  v163 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v7 = &v154 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v154 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v154 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v154 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v154 - v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v162 = v4;
  v166 = Strong;
  v24 = [Strong note];
  if (v24)
  {
    v25 = v24;
    v26 = *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_addLinkButton);
    if (!v26)
    {
      if (qword_27CA598D8 != -1)
      {
        swift_once();
      }

      v33 = sub_21549F11C();
      __swift_project_value_buffer(v33, qword_27CA5D978);
      v34 = sub_21549F0FC();
      v35 = sub_2154A226C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2151A1000, v34, v35, "addLinkButton wasn't available at time updateWithFilteredLinks was called.", v36, 2u);
        MEMORY[0x21606B520](v36, -1, -1);
      }

      goto LABEL_22;
    }

    v160 = v3;
    v27 = *(v1 + OBJC_IVAR___ICSystemPaperLinkBarViewController_linkDescriptionLabel);
    if (!v27)
    {
      v37 = qword_27CA598D8;
      v38 = v26;
      if (v37 != -1)
      {
        swift_once();
      }

      v39 = sub_21549F11C();
      __swift_project_value_buffer(v39, qword_27CA5D978);
      v40 = sub_21549F0FC();
      v41 = sub_2154A226C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_2151A1000, v40, v41, "linkDescriptionLabel wasn't available at time updateWithFilteredLinks was called.", v42, 2u);
        MEMORY[0x21606B520](v42, -1, -1);
      }

      goto LABEL_22;
    }

    v156 = v7;
    v157 = v22;
    v28 = *(a1 + 16);
    v161 = v26;
    v29 = v27;
    v30 = v29;
    v159 = v28;
    if (!v28)
    {
      if (([v166 isPaperLinkBarShowing] & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_20;
    }

    v158 = v29;
    v31 = [v25 isSharedReadOnly];
    v32 = [v166 isPaperLinkBarShowing];
    if (v31)
    {
      v30 = v158;
      if (!v32)
      {
LABEL_8:

LABEL_21:
LABEL_22:

        goto LABEL_23;
      }

LABEL_20:
      [v166 setPaperLinkBarShowing_];
      v43 = v161;
      v44 = [v161 contextMenuInteraction];
      [v44 dismissMenu];

      goto LABEL_21;
    }

    if ((v32 & 1) == 0)
    {
      [v166 setPaperLinkBarShowing_];
    }

    v46 = v158;
    v48 = v156;
    v47 = v157;
    if (v159 != 1)
    {
      v157 = v25;
      v155 = v1;
      v59 = sub_2154A1D2C();
      v154 = [objc_opt_self() systemImageNamed_];

      sub_2154A2ACC();
      v60 = sub_2154A2AAC();
      if (!(*(*(v60 - 8) + 48))(v16, 1, v60))
      {
        v61 = v154;
        sub_2154A2A6C();
      }

      sub_215429DD8(v16, v19);
      sub_2154A2ADC();
      aBlock[0] = MEMORY[0x277D84F90];
      v62 = v159;
      sub_21531B5AC(0, v159, 0);
      v63 = aBlock[0];
      v64 = a1 + 40;
      do
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v65 = sub_2154A18FC();
        v67 = v66;
        swift_unknownObjectRelease();
        aBlock[0] = v63;
        v69 = *(v63 + 16);
        v68 = *(v63 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_21531B5AC((v68 > 1), v69 + 1, 1);
          v63 = aBlock[0];
        }

        *(v63 + 16) = v69 + 1;
        v70 = v63 + 16 * v69;
        *(v70 + 32) = v65;
        *(v70 + 40) = v67;
        v64 += 16;
        --v62;
      }

      while (v62);
      aBlock[0] = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0);
      sub_2151ACC5C(&qword_2811996E8, &qword_27CA5E9F0);
      v71 = sub_2154A1CBC();
      v73 = v72;

      v74 = [objc_opt_self() mainBundle];
      v75 = sub_2154A1D2C();
      v76 = [v74 localizedStringForKey:v75 value:0 table:0];

      sub_2154A1D6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_2154BDB40;
      v78 = MEMORY[0x277D83C10];
      *(v77 + 56) = MEMORY[0x277D83B88];
      *(v77 + 64) = v78;
      *(v77 + 32) = v159;
      *(v77 + 96) = MEMORY[0x277D837D0];
      *(v77 + 104) = sub_215333D20();
      *(v77 + 72) = v71;
      *(v77 + 80) = v73;
      v159 = sub_2154A1D3C();

      v79 = v161;
      v80 = v161;
      v81 = v155;
      [v80 removeTarget:v155 action:0 forControlEvents:64];
      [v80 addTarget:v81 action:sel_didTapAddLinkButtonWithButton_ forControlEvents:0x4000];
      [v80 setShowsMenuAsPrimaryAction_];

      [v80 setMenu_];
      sub_2151A6C9C(0, &unk_2811995C0);
      v82 = sub_2154A245C();
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v80;
      aBlock[4] = sub_215429E48;
      aBlock[5] = v84;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2151BD7E4;
      aBlock[3] = &block_descriptor_28;
      v85 = _Block_copy(aBlock);
      v86 = v80;

      sub_2154A10FC();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_215429E50(&qword_281199700, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
      sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
      v87 = v164;
      v88 = v160;
      sub_2154A2BEC();
      MEMORY[0x216069000](0, v48, v87, v85);
      _Block_release(v85);

      (*(v162 + 8))(v87, v88);
      (*(v163 + 8))(v48, v165);
      v89 = v16;
      v90 = v157;
      v51 = v154;
      goto LABEL_80;
    }

    v49 = *(a1 + 32);
    sub_2154A16EC();
    if (!swift_dynamicCastClass())
    {
      if (qword_27CA598D8 != -1)
      {
        swift_once();
      }

      v91 = sub_21549F11C();
      __swift_project_value_buffer(v91, qword_27CA5D978);
      v92 = sub_21549F0FC();
      v93 = sub_2154A226C();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_2151A1000, v92, v93, "Expected link to be of type SynapseLinkItem, but wasn't. Bailing out.", v94, 2u);
        MEMORY[0x21606B520](v94, -1, -1);
      }

      goto LABEL_22;
    }

    v155 = v1;
    v165 = v49;
    swift_unknownObjectRetain();
    v50 = sub_2154A1D2C();
    v51 = [objc_opt_self() systemImageNamed_];

    sub_2154A2ACC();
    v52 = sub_2154A2AAC();
    if (!(*(*(v52 - 8) + 48))(v47, 1, v52))
    {
      v53 = v51;
      sub_2154A2A6C();
    }

    sub_215429DD8(v47, v19);
    sub_2154A2ADC();
    v54 = sub_2154A16CC();
    v55 = [v54 itemURL];
    v56 = v25;
    if (v55)
    {
      v57 = v55;
      sub_21549E51C();

      v58 = 0;
    }

    else
    {
      v58 = 1;
    }

    v95 = sub_21549E56C();
    v96 = *(v95 - 8);
    (*(v96 + 56))(v10, v58, 1, v95);
    sub_215323B30(v10, v13);
    if ((*(v96 + 48))(v13, 1, v95) == 1)
    {
      sub_2151ADCD8(v13, &unk_27CA5B090);
      v97 = v155;
      goto LABEL_60;
    }

    v164 = sub_21549E52C();
    v99 = v98;
    (*(v96 + 8))(v13, v95);
    v97 = v155;
    if (!v99)
    {
      goto LABEL_60;
    }

    v100 = [v54 displayTitle];
    if (v100)
    {
      v101 = v100;
      v102 = sub_2154A1D6C();
      v104 = v103;

      v105 = [v54 activityType];
      if (v105)
      {
        v163 = v102;
        v154 = v51;
        v106 = v105;
        v107 = sub_2154A1D6C();
        v109 = v108;

        v110 = sub_2154A1D6C();
        if (v109)
        {
          if (v107 == v110 && v109 == v111)
          {

LABEL_83:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
            v150 = swift_allocObject();
            *(v150 + 16) = xmmword_2154BDB40;
            v151 = MEMORY[0x277D837D0];
            *(v150 + 56) = MEMORY[0x277D837D0];
            v152 = sub_215333D20();
            v153 = v163;
            *(v150 + 32) = v164;
            *(v150 + 40) = v99;
            *(v150 + 96) = v151;
            *(v150 + 104) = v152;
            *(v150 + 64) = v152;
            *(v150 + 72) = v153;
            *(v150 + 80) = v104;
            sub_2154A1D3C();

            v90 = v56;
            v79 = v161;
            v51 = v154;
            goto LABEL_79;
          }

          v149 = sub_2154A2FAC();

          if (v149)
          {
            goto LABEL_83;
          }

          v51 = v154;
LABEL_60:
          v112 = [v54 displayTitle];
          v90 = v56;
          v79 = v161;
          if (v112)
          {
            v113 = v112;
            v114 = sub_2154A1D6C();
            v116 = v115;

            v117 = [v54 sourceLastKnownName];
            if (v117)
            {
              v118 = v117;
              v119 = sub_2154A1D6C();
              v121 = v120;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0);
              v122 = swift_allocObject();
              *(v122 + 16) = xmmword_2154BDB40;
              v123 = v90;
              v124 = MEMORY[0x277D837D0];
              *(v122 + 56) = MEMORY[0x277D837D0];
              v125 = sub_215333D20();
              *(v122 + 32) = v114;
              *(v122 + 40) = v116;
              *(v122 + 96) = v124;
              *(v122 + 104) = v125;
              v90 = v123;
              v79 = v161;
              *(v122 + 64) = v125;
              *(v122 + 72) = v119;
              *(v122 + 80) = v121;
              sub_2154A1D3C();

LABEL_79:

              v144 = v79;
              [v144 removeTarget:v97 action:0 forControlEvents:0x4000];
              [v144 addTarget:v97 action:sel_didTapAddLinkButtonWithButton_ forControlEvents:64];
              [v144 setShowsMenuAsPrimaryAction_];

              [v144 setMenu_];
              v145 = v144;
              v146 = sub_2154A1D2C();

              [v145 setAccessibilityValue_];

              swift_unknownObjectRelease();
              v89 = v157;
LABEL_80:
              sub_2151ADCD8(v89, &qword_27CA5B4D0);
              v147 = sub_2154A1D2C();

              v148 = v158;
              [v158 setText_];

              return;
            }
          }

          v126 = sub_2154A16DC();
          v128 = v127;

          v129 = HIBYTE(v128) & 0xF;
          if ((v128 & 0x2000000000000000) == 0)
          {
            v129 = v126 & 0xFFFFFFFFFFFFLL;
          }

          if (v129)
          {
            sub_2154A16DC();
          }

          else
          {
            v130 = [v54 sourceLastKnownName];
            if (v130)
            {
              v131 = v130;
              v132 = sub_2154A1D6C();
              v134 = v133;

              v135 = HIBYTE(v134) & 0xF;
              if ((v134 & 0x2000000000000000) == 0)
              {
                v135 = v132 & 0xFFFFFFFFFFFFLL;
              }

              if (v135)
              {
                goto LABEL_78;
              }
            }

            if (qword_27CA598D8 != -1)
            {
              swift_once();
            }

            v136 = sub_21549F11C();
            __swift_project_value_buffer(v136, qword_27CA5D978);
            v137 = v54;
            v138 = sub_21549F0FC();
            v139 = sub_2154A226C();

            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              *v140 = 138412290;
              *(v140 + 4) = v137;
              *v141 = v137;
              v142 = v137;
              _os_log_impl(&dword_2151A1000, v138, v139, "Couldn't find appropriate description for item {item: %@}", v140, 0xCu);
              sub_2151ADCD8(v141, &unk_27CA59E90);
              MEMORY[0x21606B520](v141, -1, -1);
              MEMORY[0x21606B520](v140, -1, -1);
            }

            v143 = [v137 sourceIdentifier];
            sub_2154A1D6C();
          }

LABEL_78:
          v97 = v155;
          goto LABEL_79;
        }

        v51 = v154;
      }

      else
      {
        sub_2154A1D6C();
      }
    }

    goto LABEL_60;
  }

LABEL_23:
  v45 = v166;
}

void sub_215428774(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_2154A17CC();
    [a2 setMenu_];
  }
}

void sub_2154287FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong note];

    if (v2)
    {
      v3 = [v2 objectID];

      if (v3)
      {
        v4 = swift_unknownObjectWeakLoadStrong();
        if (v4 && (v5 = v4, v6 = [v4 hostBundleIdentifier], v5, v6))
        {
          v7 = sub_2154A1D6C();
          v9 = v8;
        }

        else
        {
          v7 = 0;
          v9 = 0;
        }

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        v11[2] = v3;
        v11[3] = v7;
        v11[4] = v9;
        v11[5] = v10;
        v12 = v3;

        sub_2154A17DC();
      }
    }
  }
}

void sub_215428994(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedContext];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a1;
    v12[4] = a3;
    v12[5] = a4;
    v12[6] = a5;
    v15[4] = sub_215429ED0;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_2151B5B78;
    v15[3] = &block_descriptor_67_2;
    v13 = _Block_copy(v15);

    v14 = a2;

    [v11 performBackgroundTask_];
    _Block_release(v13);
  }
}

uint64_t sub_215428AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v12 = sub_2154A10EC();
  v27 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2154A110C();
  v25 = *(v15 - 8);
  v26 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2151A6C9C(0, &qword_27CA5C700);
  v18 = [swift_getObjCClassFromMetadata() ic:a2 existingObjectWithID:a1 context:?];
  v19 = sub_21546D400(a3, v18, a4, a5);
  sub_2151A6C9C(0, &unk_2811995C0);
  v20 = sub_2154A245C();
  v21 = swift_allocObject();
  *(v21 + 16) = a6;
  *(v21 + 24) = v19;
  aBlock[4] = sub_215429F20;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_73_0;
  v22 = _Block_copy(aBlock);

  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_215429E50(&qword_281199700, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00);
  sub_2154A2BEC();
  MEMORY[0x216069000](0, v17, v14, v22);
  _Block_release(v22);

  (*(v27 + 8))(v14, v12);
  return (*(v25 + 8))(v17, v26);
}

void sub_215428E38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v8 = *(a2 + 16);
LABEL_3:
  v9 = 16 * v6 + 32;
  while (1)
  {
    if (v8 == v6)
    {
      v2 = v7 >> 62;
      if (v7 >> 62)
      {
        goto LABEL_50;
      }

      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = &qword_27CA5D000;
      if (v12)
      {
        goto LABEL_13;
      }

LABEL_37:
      v33 = *(v5 + v13[313]);
      if ((v33 & 0xC000000000000001) != 0)
      {

        v34 = sub_2154A2C8C();

        v35 = v7 & 0xFFFFFFFFFFFFFF8;
        if (!v2)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v34 = *(v33 + 16);
        v35 = v7 & 0xFFFFFFFFFFFFFF8;
        if (!v2)
        {
LABEL_39:
          if (v34 == *(v35 + 16))
          {
            goto LABEL_46;
          }

          goto LABEL_42;
        }
      }

      if (v34 == sub_2154A2C8C())
      {
LABEL_46:

        return;
      }

LABEL_42:
      v36 = sub_2153659F0(v7);

      *(v5 + v13[313]) = v36;

      sub_215427448(a2);

      return;
    }

    if (v6 >= v8)
    {
      break;
    }

    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_48;
    }

    v2 = *(a2 + v9);
    sub_2154A16EC();
    ++v6;
    v9 += 16;
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      sub_2154A16CC();
      v11 = swift_unknownObjectRelease();
      MEMORY[0x216068AC0](v11);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();
      v7 = v48;
      v6 = v10;
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  v12 = sub_2154A2C8C();
  v13 = &qword_27CA5D000;
  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_13:
  v14 = 0;
  v15 = v13[313];
  v16 = v7 & 0xC000000000000001;
  v17 = v7 & 0xFFFFFFFFFFFFFF8;
  v18 = v7 + 32;
  v44 = v7;
  v45 = v5;
  v41 = v12;
  v42 = v2;
  v39 = v7 & 0xC000000000000001;
  v40 = v15;
  v37 = v7 + 32;
  v38 = v7 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v16)
    {
      v19 = MEMORY[0x216069960](v14, v7);
      goto LABEL_18;
    }

    if (v14 < *(v17 + 16))
    {
      v19 = *(v18 + 8 * v14);
LABEL_18:
      v46 = v19;
      v20 = __OFADD__(v14, 1);
      v21 = v14 + 1;
      if (!v20)
      {
        v43 = v21;
        v22 = *(v5 + v15);
        if ((v22 & 0xC000000000000001) != 0)
        {

          swift_unknownObjectRetain();
          sub_2154A2C3C();
          sub_2151A6C9C(0, &qword_27CA5A7F8);
          sub_215429F28();
          sub_2154A20FC();
          v23 = v48;
          v7 = v49;
          v24 = v50;
          v5 = v51;
          v25 = v52;
        }

        else
        {
          v26 = -1 << *(v22 + 32);
          v7 = v22 + 56;
          v24 = ~v26;
          v27 = -v26;
          if (v27 < 64)
          {
            v28 = ~(-1 << v27);
          }

          else
          {
            v28 = -1;
          }

          v25 = v28 & *(v22 + 56);
          v23 = *(v5 + v15);
          swift_bridgeObjectRetain_n();
          v5 = 0;
        }

        v2 = (v24 + 64) >> 6;
        do
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            if (!sub_2154A2CDC() || (sub_2151A6C9C(0, &qword_27CA5A7F8), swift_dynamicCast(), (v31 = v47) == 0))
            {
LABEL_41:

              sub_2151A66EC();

              v7 = v44;
              v5 = v45;
              v13 = &qword_27CA5D000;
              goto LABEL_42;
            }
          }

          else
          {
            v29 = v5;
            for (i = v25; !i; ++v29)
            {
              v5 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_49;
              }

              if (v5 >= v2)
              {
                goto LABEL_41;
              }

              i = *(v7 + 8 * v5);
            }

            v25 = (i - 1) & i;
            v31 = *(*(v23 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(i)))));
            if (!v31)
            {
              goto LABEL_41;
            }
          }

          v32 = [v31 representsSameContentAsItem_];
        }

        while ((v32 & 1) == 0);

        sub_2151A66EC();

        v2 = v42;
        v14 = v43;
        v7 = v44;
        v5 = v45;
        v13 = &qword_27CA5D000;
        v16 = v39;
        v15 = v40;
        v18 = v37;
        v17 = v38;
        if (v43 != v41)
        {
          continue;
        }

        goto LABEL_37;
      }

      __break(1u);
    }

    break;
  }

  __break(1u);
}

id SystemPaperLinkBarViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2154A1D2C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_215429418(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_21542951C(void *a1)
{
  if (qword_27CA598D8 != -1)
  {
    swift_once();
  }

  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5D978);
  v3 = sub_21549F0FC();
  v4 = sub_2154A225C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2151A1000, v3, v4, "Delegate callback received to refresh add link section.", v5, 2u);
    MEMORY[0x21606B520](v5, -1, -1);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([a1 isEqual_])
    {
      sub_2154287FC();
      v8 = v7;
    }

    else
    {
      oslog = sub_21549F0FC();
      v9 = sub_2154A225C();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2151A1000, oslog, v9, "Dropping linkingControllerLinksMightHaveChanged notification because it's not for the active link controller.", v10, 2u);
        MEMORY[0x21606B520](v10, -1, -1);
      }

      v8 = oslog;
    }
  }

  else
  {
    sub_2154A2EDC();
    __break(1u);
  }
}

void *sub_2154297CC(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (!Strong)
  {
    if (qword_27CA598D8 != -1)
    {
      swift_once();
    }

    v10 = sub_21549F11C();
    __swift_project_value_buffer(v10, qword_27CA5D978);
    v3 = sub_21549F0FC();
    v11 = sub_2154A225C();
    if (os_log_type_enabled(v3, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2151A1000, v3, v11, "Dropping linkingControllerLinksMenuExcludedUserActivities request because linkBarViewController isn't active.", v12, 2u);
      MEMORY[0x21606B520](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_10:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v5 = v4;
  if (([a1 isEqual_] & 1) == 0)
  {
    if (qword_27CA598D8 != -1)
    {
      swift_once();
    }

    v13 = sub_21549F11C();
    __swift_project_value_buffer(v13, qword_27CA5D978);
    v14 = sub_21549F0FC();
    v15 = sub_2154A225C();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_20;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Dropping linkingControllerLinksMenuExcludedUserActivities request because it's not for the active link controller.";
    goto LABEL_19;
  }

  v6 = [v5 note];
  if (!v6)
  {
    if (qword_27CA598D8 != -1)
    {
      swift_once();
    }

    v18 = sub_21549F11C();
    __swift_project_value_buffer(v18, qword_27CA5D978);
    v14 = sub_21549F0FC();
    v15 = sub_2154A226C();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_20;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "linkBarViewController.noteEditorViewController.note was unexpectedly nil. No offering any NSUAs to exclude.";
LABEL_19:
    _os_log_impl(&dword_2151A1000, v14, v15, v17, v16, 2u);
    MEMORY[0x21606B520](v16, -1, -1);
LABEL_20:

    v9 = MEMORY[0x277D84F90];
    v3 = v14;
    goto LABEL_21;
  }

  v7 = v6;
  v8 = [v5 userActivity];
  v9 = _s11NotesEditor20PaperCommonUtilitiesC19activitiesToExclude7forNote19currentUserActivitySaySo06NSUserM0CGSo6ICNoteC_AHSgtFZ_0(v7, v8);

  v3 = v5;
LABEL_21:

  return v9;
}

uint64_t sub_215429B50()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_215429C30()
{
  if (qword_27CA598D8 != -1)
  {
    swift_once();
  }

  v0 = sub_21549F11C();
  __swift_project_value_buffer(v0, qword_27CA5D978);
  v1 = sub_21549F0FC();
  v2 = sub_2154A225C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2151A1000, v1, v2, "Delegate callback received to add link.", v3, 2u);
    MEMORY[0x21606B520](v3, -1, -1);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = sub_2154A16CC();
      v9 = [v7 addSystemPaperLink:v8 updateFirstResponder:1];

      v5 = v8;
    }

    else
    {
      v9 = 0;
    }

    return v9;
  }

  else
  {
    result = sub_2154A2EDC();
    __break(1u);
  }

  return result;
}

uint64_t sub_215429DD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_215429E50(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_215429EB0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = *(v0 + 32);
  }

  return [*(v0 + 16) addSystemPaperLink:v1 updateFirstResponder:1];
}

uint64_t objectdestroy_45Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_215429F28()
{
  result = qword_27CA5AF78;
  if (!qword_27CA5AF78)
  {
    sub_2151A6C9C(255, &qword_27CA5A7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5AF78);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_21542A004(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_35;
  }

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_36:
    __break(1u);
  }

  else
  {
    if (v2 == -1)
    {
      return;
    }

    v5 = a1;
    v16 = MEMORY[0x277D84F90];
    sub_21531B56C(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        if (v6 >= v3)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_31;
        }

        if (v7)
        {
          goto LABEL_38;
        }

        if (__OFSUB__(v5, 1))
        {
          goto LABEL_32;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
        sub_2154A1F6C();
        if (!v15)
        {
          goto LABEL_21;
        }

        if (v15 >> 62)
        {
          if (!sub_2154A2C8C())
          {
LABEL_20:

LABEL_21:
            MidX = 0.0;
            goto LABEL_22;
          }
        }

        else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        if ((v15 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x216069960](0);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v9 = *(v15 + 32);
        }

        v10 = v9;

        [v10 frame];
        MidX = CGRectGetMidX(v17);

LABEL_22:
        v13 = *(v16 + 16);
        v12 = *(v16 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_21531B56C((v12 > 1), v13 + 1, 1);
        }

        *(v16 + 16) = v13 + 1;
        *(v16 + 8 * v13 + 32) = MidX;
        v7 = v5 == a2;
        if (v5 == a2)
        {
          v5 = 0;
        }

        else if (__OFADD__(v5++, 1))
        {
          goto LABEL_33;
        }

        ++v6;
        if (v8 == v3)
        {
          return;
        }
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_21542A214(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BE4F0;
  swift_beginAccess();
  *(inited + 32) = v1[3];
  swift_beginAccess();
  *(inited + 40) = v1[4];
  swift_beginAccess();
  *(inited + 48) = v1[5];

  v4 = sub_21542B574(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
  swift_arrayDestroy();
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:

    swift_unknownObjectWeakAssign();
    sub_21542A3E8(1);
    return;
  }

  v5 = sub_2154A2C8C();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x216069960](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      [v7 removeFromSuperview];
      [a1 addSubview_];
    }

    while (v5 != v6);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_21542A3E8(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v104 = Strong;
  [v104 bounds];
  v109 = v4;
  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v104 semanticContentAttribute];

  v110 = [v7 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  if (*(v1 + 88) & 1) != 0 || *(v1 + 72) != v109 || *(v1 + 80) != v6 || (a1)
  {
    swift_beginAccess();
    v9 = *(v1 + 32);
    if (v9 >> 62)
    {
      goto LABEL_135;
    }

    v10 = "";
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_11:
    swift_beginAccess();
    v11 = *(v1 + 40);
    if (v11 >> 62)
    {
      if (sub_2154A2C8C())
      {
        goto LABEL_13;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A610);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2154BDB50;
    swift_beginAccess();
    *(v12 + 32) = *(v1 + 24);
LABEL_14:

    if (v110 == 1)
    {
      v12 = sub_21542CE10(v12);
    }

    v103 = v1;
    v14 = *(v12 + 16);

    v107 = v14;
    if (v14)
    {
      v1 = 0;
      v106 = v12 + 32;
      v15 = v6 / 20.0 * 20.0;
      v16 = 48.0;
      if (v15 <= 48.0)
      {
        v16 = v6 / 20.0 * 20.0;
      }

      v111 = v16;
      v17 = 38.0;
      if (v15 > 38.0)
      {
        v17 = v6 / 20.0 * 20.0;
      }

      v114 = v17;
      v18 = 0.0;
      v19 = &OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem;
      v20 = 0.0;
      MaxX = 0.0;
      v105 = v12;
      while (1)
      {
        if (v1 >= *(v12 + 16))
        {
          goto LABEL_129;
        }

        v24 = *(v106 + 8 * v1);

        if (v110 == 1)
        {
          v24 = sub_21542CF04(v24);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
        v112 = v1;
        sub_2154A1F6C();
        v1 = v117;
        if (!v117)
        {
          goto LABEL_37;
        }

        if (v117 >> 62)
        {
          if (!sub_2154A2C8C())
          {
LABEL_36:

LABEL_37:
            v26 = 0;
            v29 = 0.0;
            if ((v24 & 0x8000000000000000) != 0)
            {
              goto LABEL_59;
            }

            goto LABEL_38;
          }
        }

        else if (!*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        if ((v117 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x216069960](0);
        }

        else
        {
          if (!*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_132;
          }

          v25 = *(v117 + 32);
        }

        v26 = v25;

        v27 = v26;
        sub_215353334();
        v29 = v28;

        if ((v24 & 0x8000000000000000) != 0)
        {
LABEL_59:
          v1 = sub_2154A2C8C();
          v113 = v26;
          if (!v1)
          {
            goto LABEL_60;
          }

LABEL_40:
          v30 = 0;
          v31 = 0.0;
          while (2)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v32 = MEMORY[0x216069960](v30, v24);
            }

            else
            {
              if (v30 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_126;
              }

              v32 = *(v24 + 8 * v30 + 32);
            }

            v33 = v32;
            v34 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
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
LABEL_135:
              v10 = "DisplayMode" + 11;
              if (!sub_2154A2C8C())
              {
                goto LABEL_11;
              }

LABEL_13:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A610);
              v12 = swift_allocObject();
              *(v12 + 16) = *(v10 + 79);
              swift_beginAccess();
              v13 = *(v1 + 32);
              *(v12 + 32) = *(v1 + 24);
              *(v12 + 40) = v13;
              swift_beginAccess();
              *(v12 + 48) = *(v1 + 40);

              goto LABEL_14;
            }

            v35 = *v19;
            v36 = [*&v32[*v19] customView];
            if (v36)
            {
              v37 = v36;
              [v36 bounds];
              v39 = v38;
              v41 = v40;
              goto LABEL_50;
            }

            v42 = [*&v33[v35] image];
            if (v42)
            {
              v37 = v42;
              [v42 size];
              v39 = v43;
              v41 = v44;
LABEL_50:

              v45 = 20.0;
              if (v41 != 0.0)
              {
                v45 = v41;
              }

              v46 = v39 * (v6 / v45);
              v47 = 38.0;
              if (v46 > 38.0)
              {
                v47 = 48.0;
                if (v46 <= 48.0)
                {
                  v47 = v46;
                }
              }
            }

            else
            {

              v47 = 38.0;
              if (v6 / 20.0 * 20.0 > 38.0)
              {
                v47 = v111;
              }
            }

            v31 = v31 + v47;
            ++v30;
            if (v34 == v1)
            {
              goto LABEL_61;
            }

            continue;
          }
        }

LABEL_38:
        if ((v24 & 0x4000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v1 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v113 = v26;
        if (v1)
        {
          goto LABEL_40;
        }

LABEL_60:
        v31 = 0.0;
LABEL_61:
        if (v24 >> 62)
        {
          v23 = sub_2154A2C8C();
        }

        else
        {
          v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v22 = v113;
        v48 = v29 == 0.0;
        v49 = __OFSUB__(v23, v48);
        v50 = v23 - v48;
        if (v49)
        {
          goto LABEL_130;
        }

        v51 = (v109 + v29 * -0.5 - v31) / v50;
        if (v1)
        {
          v108 = v23;
          v52 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v62 = MEMORY[0x216069960](v52, v24);
            }

            else
            {
              if (v52 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_128;
              }

              v62 = *(v24 + 8 * v52 + 32);
            }

            v63 = v62;
            v64 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_127;
            }

            v65 = v19;
            v66 = *v19;
            v67 = [*&v62[v66] customView];
            if (v67)
            {
              v68 = v67;
              [v67 bounds];
              v70 = v69;
              v72 = v71;

              v73 = 20.0;
              if (v72 != 0.0)
              {
                v73 = v72;
              }

              v74 = v70 * (v6 / v73);
            }

            else
            {
              v75 = [*&v63[v66] image];
              if (!v75)
              {
                v82 = 48.0;
                v19 = v65;
                if (v114 <= 48.0)
                {
                  v82 = v114;
                }

                goto LABEL_66;
              }

              v76 = v75;
              [v75 size];
              v78 = v77;
              v80 = v79;

              v81 = 20.0;
              if (v80 != 0.0)
              {
                v81 = v80;
              }

              v74 = v78 * (v6 / v81);
            }

            if (v74 <= 38.0)
            {
              v74 = 38.0;
            }

            v82 = 48.0;
            v19 = v65;
            if (v74 <= 48.0)
            {
              v82 = v74;
            }

LABEL_66:
            v53 = v63;
            [v53 setFrame_];
            v18 = v18 + v82;
            [v53 frame];
            v55 = v54;
            v57 = v56;
            v59 = v58;
            v61 = v60;

            v119.origin.x = v55;
            v119.origin.y = v57;
            v119.size.width = v59;
            v119.size.height = v61;
            MaxX = CGRectGetMaxX(v119);

            ++v52;
            if (v64 == v1)
            {
              v22 = v113;
              v23 = v108;
              break;
            }
          }
        }

        v1 = v112 + 1;

        v20 = v20 + v51 * v23;
        v12 = v105;
        if (v112 + 1 == v107)
        {
          goto LABEL_89;
        }
      }
    }

    MaxX = 0.0;
LABEL_89:

    [v104 setContentSize_];
    v1 = v103;
    *(v103 + 72) = v109;
    *(v103 + 80) = v6;
    *(v103 + 88) = 0;
    v83 = *(v103 + 32);
    if (v83 >> 62)
    {
      if (sub_2154A2C8C())
      {
        goto LABEL_93;
      }
    }

    else if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_93;
    }

    swift_beginAccess();
    v84 = *(v103 + 40);
    if (v84 >> 62)
    {
      if (!sub_2154A2C8C())
      {
        goto LABEL_111;
      }
    }

    else if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_111;
    }

LABEL_93:
    if (v110 != 1)
    {
      swift_beginAccess();
      swift_beginAccess();
      swift_getKeyPath();

      v87 = 0;
      v86 = MEMORY[0x277D84F90];
LABEL_96:
      if (v87 <= 3)
      {
        v88 = 3;
      }

      else
      {
        v88 = v87;
      }

      v89 = v87;
      while (v88 != v89)
      {
        v87 = v89 + 1;

        swift_getAtKeyPath();

        if ((v116 & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v86 = sub_215317D18(0, *(v86 + 2) + 1, 1, v86);
          }

          v91 = *(v86 + 2);
          v90 = *(v86 + 3);
          if (v91 >= v90 >> 1)
          {
            v86 = sub_215317D18((v90 > 1), v91 + 1, 1, v86);
          }

          *(v86 + 2) = v91 + 1;
          *&v86[8 * v91 + 32] = v115;
          if (v89 == 2)
          {
LABEL_109:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
            swift_arrayDestroy();

            v1 = v103;
            goto LABEL_110;
          }

          goto LABEL_96;
        }

        ++v89;
        if (v87 == 3)
        {
          goto LABEL_109;
        }
      }

      goto LABEL_131;
    }

    sub_21542A004(0, 2);
    v86 = v85;
LABEL_110:
    *(v1 + 48) = v86;

LABEL_111:
    v92 = sub_21542B050();
    if (v92 != 3)
    {
      v93 = v92;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2154BE4F0;
      *(inited + 32) = 0;
      swift_beginAccess();
      *(inited + 40) = *(v1 + 24);
      *(inited + 48) = 1;
      *(inited + 56) = *(v1 + 32);
      *(inited + 64) = 2;
      swift_beginAccess();
      *(inited + 72) = *(v1 + 40);
      v95 = sub_215327CCC(inited);
      swift_setDeallocating();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A6E8);
      swift_arrayDestroy();
      if (v95[2])
      {
        v96 = sub_2153B1B24(v93);
        if (v97)
        {
          v1 = *(v95[7] + 8 * v96);

          if (v1 >> 62)
          {
            v98 = sub_2154A2C8C();
            if (v98)
            {
LABEL_116:
              v99 = 0;
              do
              {
                if ((v1 & 0xC000000000000001) != 0)
                {
                  v100 = MEMORY[0x216069960](v99, v1);
                }

                else
                {
                  if (v99 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_134;
                  }

                  v100 = *(v1 + 8 * v99 + 32);
                }

                v101 = v100;
                v102 = v99 + 1;
                if (__OFADD__(v99, 1))
                {
                  goto LABEL_133;
                }

                [v100 setSelectionStateActive_];

                ++v99;
              }

              while (v102 != v98);
            }
          }

          else
          {
            v98 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v98)
            {
              goto LABEL_116;
            }
          }
        }
      }

      sub_21542B840(v93, 1);
    }

    return;
  }
}

uint64_t sub_21542B050()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 3;
  }

  v2 = Strong;
  swift_beginAccess();
  v3 = *(v0 + 4);
  if (v3 >> 62)
  {
LABEL_27:
    if (sub_2154A2C8C())
    {
      goto LABEL_6;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  v4 = *(v0 + 5);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_30:

    return 0;
  }

  if (!sub_2154A2C8C())
  {
    goto LABEL_30;
  }

LABEL_6:
  v5 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  [v2 visibleBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BE4F0;
  swift_beginAccess();
  *(inited + 32) = v0[3];
  *(inited + 40) = v0[4];
  swift_beginAccess();
  *(inited + 48) = v0[5];

  if (v5 == 1)
  {
    inited = sub_21542CE10(inited);
  }

  v15 = *(inited + 16);
  if (v15)
  {
    v34 = MEMORY[0x277D84F90];
    sub_2151AE2B8(0, v15, 0);
    v16 = 0;
    v0 = v34;
    v17 = *(inited + 16);
    do
    {
      if (v17 == v16)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= *(inited + 16))
      {
        goto LABEL_26;
      }

      v18 = *(inited + 8 * v16 + 32);

      v19 = sub_21542D114(v16, v18, v7, v9, v11, v13);
      v21 = v20;

      v23 = *(v34 + 2);
      v22 = *(v34 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_2151AE2B8((v22 > 1), v23 + 1, 1);
      }

      ++v16;
      *(v34 + 2) = v23 + 1;
      v24 = &v34[2 * v23];
      *(v24 + 4) = v19;
      *(v24 + 5) = v21;
    }

    while (v15 != v16);

    v25 = *(v34 + 2);
    if (!v25)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v0 = MEMORY[0x277D84F90];
  v25 = *(MEMORY[0x277D84F90] + 16);
  if (!v25)
  {
LABEL_23:

    return 3;
  }

LABEL_16:
  v26 = *(v0 + 4);
  v27 = v25 - 1;
  if (v27)
  {
    v28 = v0[5];
    v29 = v0 + 7;
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      v29 += 2;
      v32 = v31;
      if (v28 < v31)
      {
        v26 = v30;
        v28 = v32;
      }

      --v27;
    }

    while (v27);
  }

  return sub_21542E0A0(v26, v2);
}

uint64_t sub_21542B3C8(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  if (*(a1 + 16) && (v5 = sub_2153B1B24(0), (v6 & 1) != 0))
  {
    v7 = *(*(a1 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  sub_21542D5D4(v2 + 3, v7, v2, v4);
  swift_endAccess();

  if (*(a1 + 16) && (v8 = sub_2153B1B24(1), (v9 & 1) != 0))
  {
    v10 = *(*(a1 + 56) + 8 * v8);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  sub_21542D5D4(v2 + 4, v10, v2, v4);
  swift_endAccess();

  if (*(a1 + 16) && (v11 = sub_2153B1B24(2), (v12 & 1) != 0))
  {
    v13 = *(*(a1 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  swift_beginAccess();
  sub_21542D5D4(v2 + 5, v13, v2, v4);
  swift_endAccess();

  swift_beginAccess();
  v14 = *(v4 + 16);

  return v14;
}

uint64_t sub_21542B574(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v25 = a1 + 32;
  while (1)
  {
    v4 = *(v25 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_2154A2C8C();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = sub_2154A2C8C();
      v9 = v23 + v6;
      if (__OFADD__(v23, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v30 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_2154A2C8C();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_2154A2DDC();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v27 = v1;
    v28 = v2;
    v15 = v10 + 8 * v11 + 32;
    v24 = v10;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_21542E548(&qword_27CA5DC10, &qword_27CA5A618);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
        v17 = sub_2153277D8(v29, i, v4);
        v19 = *v18;
        (v17)(v29, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for ICNoteEditorContextualBarButtonItem();
      swift_arrayInitWithCopy();
    }

    v1 = v27;
    v2 = v28;
    if (v30 >= 1)
    {
      v20 = *(v24 + 16);
      v21 = __OFADD__(v20, v30);
      v22 = v20 + v30;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v24 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  v14 = v10;
  result = sub_2154A2C8C();
  v10 = v14;
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
  {
    goto LABEL_4;
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

void sub_21542B840(unsigned __int8 a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(v2[6] + 16))
    {
      v13 = Strong;
      swift_beginAccess();
      v6 = v2[4];
      if (v6 >> 62)
      {
        if (sub_2154A2C8C())
        {
          goto LABEL_7;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_7;
      }

      swift_beginAccess();
      v7 = v2[5];
      if (v7 >> 62)
      {
        goto LABEL_25;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_7:
        while (1)
        {
          v8 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
          if (a1)
          {
            v9 = a1 == 1 ? a1 : 2 * (v8 == 0);
          }

          else
          {
            v9 = 2 * (v8 != 0);
          }

          v10 = v2[6];
          if (v9 < *(v10 + 16))
          {
            break;
          }

          __break(1u);
LABEL_25:
          if (!sub_2154A2C8C())
          {
            goto LABEL_20;
          }
        }

        v11 = *(v10 + 8 * v9 + 32);
        v12 = (a2 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled();
        [v13 setContentOffset:v12 animated:{v11, 0.0}];
      }

LABEL_20:
    }

    else
    {
    }
  }
}

id sub_21542B9FC()
{
  swift_beginAccess();
  v8[0] = v0[3];
  swift_beginAccess();
  v8[1] = v0[4];
  swift_beginAccess();
  v8[2] = v0[5];

  v1 = 0;
LABEL_12:
  while (v1 != 3)
  {
    v5 = v8[v1];

    v6 = v5;
    ++v1;
    if (v5)
    {
      v2 = 0;
      if (v6 >> 62)
      {
        goto LABEL_9;
      }

      while (1)
      {
        result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2 == result)
        {
          break;
        }

        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x216069960](v2, v6);
          }

          else
          {
            if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            result = *(v6 + 8 * v2 + 32);
          }

          v4 = result;
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_17:
            __break(1u);
            return result;
          }

          [result removeFromSuperview];

          ++v2;
          if (!(v6 >> 62))
          {
            break;
          }

LABEL_9:
          result = sub_2154A2C8C();
          if (v2 == result)
          {
            goto LABEL_12;
          }
        }
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
  swift_arrayDestroy();

  v7 = MEMORY[0x277D84F90];
  v0[3] = MEMORY[0x277D84F90];

  v0[4] = v7;

  v0[5] = v7;
}

double sub_21542BBEC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong bounds];
  }

  else
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12 || (v13 = v12, v3 = [v12 window], v13, !v3))
    {
      swift_beginAccess();
      v14 = *(v0 + 32);
      if (v14 >> 62)
      {
        goto LABEL_68;
      }

      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    [v3 bounds];
  }

  v8 = v4;
  v1 = v5;
  v9 = v6;
  v10 = v7;

  v54.origin.x = v8;
  v54.origin.y = v1;
  v54.size.width = v9;
  v54.size.height = v10;
  Width = CGRectGetWidth(v54);
  v52 = 0;
  while (1)
  {
    swift_beginAccess();
    v21 = *(v0 + 24);
    if (v21 >> 62)
    {
      goto LABEL_54;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
    v53 = v0;

    if (v22)
    {
      v23 = 0;
      v24 = 0.0;
      v0 = 0x4048000000000000;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x216069960](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v26 = *(v21 + 8 * v23 + 32);
        }

        v27 = v26;
        v28 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v22 = sub_2154A2C8C();
          goto LABEL_18;
        }

        v29 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem;
        v30 = [*&v26[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem] customView];
        if (v30)
        {
          break;
        }

        v35 = [*&v27[v29] image];
        if (v35)
        {
          v31 = v35;
          [v35 size];
          v1 = v36;
          v34 = v37;
          goto LABEL_30;
        }

        v25 = 48.0;
LABEL_21:
        v24 = v24 + v25;
        ++v23;
        if (v28 == v22)
        {
          goto LABEL_38;
        }
      }

      v31 = v30;
      [v30 bounds];
      v1 = v32;
      v34 = v33;
LABEL_30:

      v38 = 48.0 / v34;
      if (v34 == 0.0)
      {
        v38 = 2.4;
      }

      v39 = v1 * v38;
      v25 = 38.0;
      if (v39 > 38.0)
      {
        v25 = 48.0;
        if (v39 <= 48.0)
        {
          v25 = v39;
        }
      }

      goto LABEL_21;
    }

    v24 = 0.0;
LABEL_38:

    v40 = v53[3];
    if (v40 >> 62)
    {
      v50 = sub_2154A2C8C();
      v42 = v50 - 1;
      if (__OFSUB__(v50, 1))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        v1 = v24 + v1;
        if (sub_2154A2C8C())
        {
          goto LABEL_44;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v42 = v41 - 1;
      if (__OFSUB__(v41, 1))
      {
        goto LABEL_57;
      }
    }

    v1 = (v42 & ~(v42 >> 63)) * 8.0;
    swift_beginAccess();
    v43 = v53[4];
    if (v43 >> 62)
    {
      goto LABEL_58;
    }

    v1 = v24 + v1;
    if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

LABEL_42:
    swift_beginAccess();
    v44 = v53[5];
    if (v44 >> 62)
    {
      if (!sub_2154A2C8C())
      {
        return fmin(v1, 714.0);
      }
    }

    else if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return fmin(v1, 714.0);
    }

LABEL_44:
    if ((v52 & 1) == 0)
    {
      v1 = Width + -10.0;
      return fmin(v1, 714.0);
    }

    v45 = v53[4];
    if (v45 >> 62)
    {
      break;
    }

    if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_61;
    }

LABEL_47:
    if ((v45 & 0xC000000000000001) != 0)
    {

      v46 = MEMORY[0x216069960](0, v45);

      goto LABEL_50;
    }

    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v46 = *(v45 + 32);
LABEL_50:
      sub_215353334();
      v48 = v47;

      v49 = v48 * 0.5;
      goto LABEL_62;
    }

    __break(1u);
LABEL_68:
    if (sub_2154A2C8C())
    {
      goto LABEL_11;
    }

LABEL_9:
    swift_beginAccess();
    v15 = *(v0 + 40);
    if (v15 >> 62)
    {
      if (!sub_2154A2C8C())
      {
        goto LABEL_71;
      }

LABEL_11:
      v16 = v0;
      if (qword_281199750 != -1)
      {
        swift_once();
      }

      v17 = sub_21549F11C();
      __swift_project_value_buffer(v17, qword_281199758);
      v18 = sub_21549F0FC();
      v19 = sub_2154A224C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2151A1000, v18, v19, "Calculating intrinsic content size for format bar without window, using fallback.", v20, 2u);
        MEMORY[0x21606B520](v20, -1, -1);
      }

      v52 = 1;
      Width = 0.0;
      v0 = v16;
    }

    else
    {
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

LABEL_71:
      v52 = 1;
      Width = 0.0;
    }
  }

  if (sub_2154A2C8C())
  {
    goto LABEL_47;
  }

LABEL_61:
  v49 = 0.0;
LABEL_62:
  v1 = v1 + 8.0 + v49;
  return fmin(v1, 714.0);
}

unint64_t sub_21542C170(char a1)
{
  v3 = sub_21542B050();
  if (v3 == 3)
  {
    return 0;
  }

  LOBYTE(v4) = v3;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  if (a1)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  v8 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  if (v4)
  {
    if (v4 == 1)
    {
      v4 = v4;
    }

    else
    {
      v4 = 2 * (v8 == 0);
    }
  }

  else
  {
    v4 = 2 * (v8 != 0);
  }

  v9 = v6;
  v10 = sub_21542E0A0(v4 + v7, v9);
  if (v10 != 3)
  {
    v11 = v10;
    sub_21542B840(v10, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BE4F0;
    *(inited + 32) = 0;
    swift_beginAccess();
    *(inited + 40) = v1[3];
    *(inited + 48) = 1;
    swift_beginAccess();
    *(inited + 56) = v1[4];
    *(inited + 64) = 2;
    swift_beginAccess();
    *(inited + 72) = v1[5];
    v13 = sub_215327CCC(inited);
    swift_setDeallocating();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A6E8);
    swift_arrayDestroy();
    if (v13[2])
    {
      v14 = sub_2153B1B24(v11);
      if (v15)
      {
        v16 = *(v13[7] + 8 * v14);

        v17 = v16 >> 62;
        if (a1)
        {
          if (v17)
          {
            result = sub_2154A2C8C();
            if (result)
            {
              goto LABEL_17;
            }
          }

          else
          {
            result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result)
            {
LABEL_17:
              if ((v16 & 0xC000000000000001) == 0)
              {
                if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v18 = *(v16 + 32);
LABEL_31:
                  v21 = v18;
LABEL_32:
                  v22 = v21;

                  v23 = *MEMORY[0x277D76488];
                  v24 = v22;
                  UIAccessibilityPostNotification(v23, v24);

                  return 1;
                }

                goto LABEL_40;
              }

              result = 0;
              goto LABEL_38;
            }
          }

          goto LABEL_20;
        }

        if (v17)
        {
          v19 = sub_2154A2C8C();
          if (v19)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
LABEL_26:
            v20 = __OFSUB__(v19, 1);
            result = v19 - 1;
            if (v20)
            {
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            if ((v16 & 0xC000000000000001) == 0)
            {
              if ((result & 0x8000000000000000) == 0)
              {
                if (result < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v18 = *(v16 + 8 * result + 32);
                  goto LABEL_31;
                }

                goto LABEL_42;
              }

LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              return result;
            }

LABEL_38:
            v21 = MEMORY[0x216069960](result, v16);
            goto LABEL_32;
          }
        }
      }
    }

LABEL_20:
  }

  return 0;
}

uint64_t sub_21542C4A8()
{
  v1 = v0;
  result = sub_21542B050();
  v3 = *(v0 + 90);
  if (result == 3)
  {
    if (v3 == 3)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v3 != 3)
  {
    if (v3 == result)
    {
      return result;
    }

LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BE4F0;
    *(inited + 32) = 0;
    swift_beginAccess();
    *(inited + 40) = *(v1 + 24);
    *(inited + 48) = 1;
    swift_beginAccess();
    *(inited + 56) = *(v1 + 32);
    *(inited + 64) = 2;
    swift_beginAccess();
    *(inited + 72) = *(v1 + 40);
    v5 = sub_215327CCC(inited);
    swift_setDeallocating();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A6E8);
    swift_arrayDestroy();
    if (v5[2])
    {
      v6 = sub_2153B1B24(v3);
      if (v7)
      {
        v8 = *(v5[7] + 8 * v6);

        if (v8 >> 62)
        {
          goto LABEL_21;
        }

        for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
        {
          v10 = 0;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = MEMORY[0x216069960](v10, v8);
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            [v11 setSelectionStateActive_];

            ++v10;
            if (v13 == i)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          ;
        }
      }
    }

LABEL_22:
  }

  result = sub_21542B050();
  *(v1 + 90) = result;
  if (result != 3)
  {
    v14 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6E0);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_2154BE4F0;
    *(v15 + 32) = 0;
    swift_beginAccess();
    *(v15 + 40) = *(v1 + 24);
    *(v15 + 48) = 1;
    swift_beginAccess();
    *(v15 + 56) = *(v1 + 32);
    *(v15 + 64) = 2;
    swift_beginAccess();
    *(v15 + 72) = *(v1 + 40);
    v16 = sub_215327CCC(v15);
    swift_setDeallocating();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A6E8);
    swift_arrayDestroy();
    if (v16[2])
    {
      v17 = sub_2153B1B24(v14);
      if (v18)
      {
        v19 = *(v16[7] + 8 * v17);

        if (v19 >> 62)
        {
          goto LABEL_39;
        }

        for (j = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_2154A2C8C())
        {
          for (k = 0; ; ++k)
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x216069960](k, v19);
            }

            else
            {
              if (k >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v22 = *(v19 + 8 * k + 32);
            }

            v23 = v22;
            v24 = k + 1;
            if (__OFADD__(k, 1))
            {
              break;
            }

            [v22 setSelectionStateActive_];

            if (v24 == j)
            {
            }
          }

          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          ;
        }
      }
    }
  }

  return result;
}

void sub_21542C8CC(void *a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*(*(v2 + 48) + 16))
  {
    v26 = Strong;
    v6 = sub_21542B050();
    if (v6 == 3)
    {
      if (a2 <= 0.1)
      {
LABEL_18:
        if (a2 < -0.1)
        {
          v10 = -1;
          goto LABEL_24;
        }

LABEL_20:
        v10 = 0;
        goto LABEL_24;
      }

LABEL_22:
      v10 = 1;
      goto LABEL_24;
    }

    v7 = v6;
    v8 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
    if (v7)
    {
      if (v7 == 1)
      {
        if (a2 <= 0.1)
        {
          if (a2 < -0.1)
          {
            goto LABEL_20;
          }

          goto LABEL_22;
        }

LABEL_23:
        v10 = 2;
        goto LABEL_24;
      }

      v9 = a2 <= 0.1;
      if (v8)
      {
LABEL_16:
        if (v9)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v9 = a2 <= 0.1;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    if (!v9)
    {
      v10 = 3;
LABEL_24:
      v11 = *(*(v2 + 48) + 16);
      v12 = v10 & ~(v10 >> 63);
      if (v12 >= v11 - 1)
      {
        v13 = v11 - 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = *(v2 + 89);
      if (v14 == 3)
      {
        goto LABEL_53;
      }

      v15 = objc_opt_self();
      v16 = [v15 userInterfaceLayoutDirectionForSemanticContentAttribute_];
      v17 = 2 * (v16 != 0);
      v18 = 2 * (v16 == 0);
      if (v14 == 1)
      {
        v18 = v14;
      }

      if (v14)
      {
        v17 = v18;
      }

      v19 = v17 - v13;
      if (v19 < 0)
      {
        v19 = -v19;
      }

      if (v19 < 2)
      {
LABEL_53:
        if (v13 < 0)
        {
          __break(1u);
          goto LABEL_60;
        }

LABEL_54:
        v25 = *(v2 + 48);
        if (v13 < *(v25 + 16))
        {
          *a1 = *(v25 + 8 * v13 + 32);
          Strong = v26;
          goto LABEL_56;
        }

LABEL_60:
        __break(1u);
        return;
      }

      v20 = [v15 userInterfaceLayoutDirectionForSemanticContentAttribute_];
      if (v14)
      {
        if (v14 == 1)
        {
          [v15 userInterfaceLayoutDirectionForSemanticContentAttribute_];
          v21 = 1;
          if (v13 < 1)
          {
            goto LABEL_52;
          }

LABEL_48:
          v13 = v21 + 1;
          goto LABEL_54;
        }

        if (v20)
        {
          if (v11)
          {
LABEL_44:
            v24 = [v15 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 0;
LABEL_47:
            v21 = 2 * v24;
            goto LABEL_48;
          }
        }

        else if (v13 >= 2)
        {
          goto LABEL_44;
        }

        v23 = [v15 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 0;
LABEL_51:
        v21 = 2 * v23;
LABEL_52:
        v13 = v21 - 1;
        goto LABEL_53;
      }

      if (v20)
      {
        v22 = v26;
        if (v13 < 2)
        {
LABEL_41:
          v23 = [v15 userInterfaceLayoutDirectionForSemanticContentAttribute_] != 0;
          goto LABEL_51;
        }
      }

      else
      {
        v22 = v26;
        if (!v11)
        {
          goto LABEL_41;
        }
      }

      v24 = [v15 userInterfaceLayoutDirectionForSemanticContentAttribute_] != 0;
      goto LABEL_47;
    }

    if (a2 < -0.1)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_56:
}

uint64_t sub_21542CC40()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_281199758);
  __swift_project_value_buffer(v0, qword_281199758);
  return sub_21549F0DC();
}

uint64_t sub_21542CC8C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_beginAccess();
  if (*(a5 + 16))
  {
    v16 = 1;
  }

  else if (a1 == a6)
  {
    v17 = a1 + a7;
    if (__OFADD__(a1, a7))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v16 = v19 == a2;
  }

  else
  {
    v16 = 0;
  }

  swift_beginAccess();
  *(a5 + 16) = v16;
  result = swift_beginAccess();
  v20 = *(a8 + 16);
  v18 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(a8 + 16) = v21;
  if (v21 >= 2)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t sub_21542CD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

uint64_t sub_21542CE10(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = v1[2];
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_14;
    }

    v7 = v1[i];
    v8 = v1[v4];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_215432964(v1);
    }

    v1[i] = v8;

    if (v4 - 4 >= v1[2])
    {
      goto LABEL_15;
    }

    v1[v4] = v7;

LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_21542CF04(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_2154A2C8C();
    if (v19)
    {
      v20 = v19;
      v1 = sub_2153259E4(v19, 0);
      sub_215432E04(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_2154A2C8C();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x216069960]();
          v11 = MEMORY[0x216069960](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_215433F30(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_215433F30(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

char *sub_21542D114(uint64_t a1, unint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 >> 62)
  {
    v12 = sub_2154A2C8C();
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12)
  {
    v44 = MEMORY[0x277D84F90];
    result = sub_21531B54C(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return result;
    }

    v14 = v44;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      do
      {
        [MEMORY[0x216069960](v15 a2)];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        swift_unknownObjectRelease();
        v43 = v14;
        v25 = *(v14 + 16);
        v24 = *(v14 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21531B54C((v24 > 1), v25 + 1, 1);
        }

        ++v15;
        *(v14 + 16) = v25 + 1;
        v26 = (v14 + 32 * v25);
        v26[4] = v17;
        v26[5] = v19;
        v26[6] = v21;
        v26[7] = v23;
      }

      while (v12 != v15);
    }

    else
    {
      v27 = (a2 + 32);
      do
      {
        [*v27 frame];
        v43 = v14;
        v33 = *(v14 + 16);
        v32 = *(v14 + 24);
        if (v33 >= v32 >> 1)
        {
          v35 = v28;
          v36 = v29;
          v37 = v30;
          v38 = v31;
          sub_21531B54C((v32 > 1), v33 + 1, 1);
          v31 = v38;
          v30 = v37;
          v29 = v36;
          v28 = v35;
        }

        *(v14 + 16) = v33 + 1;
        v34 = (v14 + 32 * v33);
        v34[4] = v28;
        v34[5] = v29;
        v34[6] = v30;
        v34[7] = v31;
        ++v27;
        --v12;
      }

      while (v12);
    }
  }

  sub_2154A286C();
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if ((v48 & 1) == 0)
  {
    v41 = v46;
    v42 = v47;
    v39 = v43;
    v40 = v45;
  }

  v49.origin.x = a3;
  v49.origin.y = a4;
  v49.size.width = a5;
  v49.size.height = a6;
  CGRectIntersection(v49, *&v39);
  return a1;
}

id sub_21542D344@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_21542D37C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BE4F0;
  swift_beginAccess();
  *(inited + 32) = v0[3];
  swift_beginAccess();
  *(inited + 40) = v0[4];
  swift_beginAccess();
  v15 = v0;
  *(inited + 48) = v0[5];

  v2 = sub_21542B574(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
  swift_arrayDestroy();
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2154A2C8C())
  {
    for (j = 0; ; ++j)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x216069960](j, v2);
      }

      else
      {
        if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = &v5[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_accessibilityContextualBarButtonDelegate];
      *&v5[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_accessibilityContextualBarButtonDelegate + 8] = v15[13];
      swift_unknownObjectWeakAssign();
      v9 = *&v6[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_view];
      type metadata accessor for ICNoteEditorContextualBarButton();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v11 = v10;
        swift_unknownObjectWeakLoadStrong();
        v12 = *(v8 + 1);
        v13 = v9;

        *(v11 + OBJC_IVAR____TtC11NotesEditor31ICNoteEditorContextualBarButton_accessibilityContextualBarButtonDelegate + 8) = v12;
        swift_unknownObjectWeakAssign();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_21542D5D4(char **a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_39;
  }

  v5 = *a1;
  v6 = *a1 >> 62;
  if (v6)
  {
LABEL_37:
    v14 = a1;
    v15 = a4;
    v16 = a3;
    v17 = sub_2154A2C8C();
    a3 = v16;
    a4 = v15;
    v7 = v17;
    a1 = v14;
  }

  else
  {
    v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    v18 = a1;
    v19 = a4;
    v20 = a3;
    v21 = sub_2154A2C8C();
    a3 = v20;
    a4 = v19;
    v22 = v21;
    a1 = v18;
    if (v7 == v22)
    {
      goto LABEL_6;
    }

LABEL_39:

    sub_21542D860(a1, a2, a3, a4);
    return;
  }

  if (v7 != *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_6:
  v24 = a3;
  v25 = a4;
  v23 = a1;
  if (v6)
  {
    a1 = sub_2154A2C8C();
    v8 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  for (i = 4; ; ++i)
  {
    v10 = (i - 4);
    if ((v5 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x216069960](i - 4, v5);
      v11 = i - 3;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      a1 = *&v5[8 * i];
      v11 = i - 3;
      if (__OFADD__(v10, 1))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v27 = a1;
    if (a2 >> 62)
    {
      a1 = sub_2154A2C8C();
      if (v10 == a1)
      {
LABEL_29:
        v13 = v27;
        goto LABEL_31;
      }
    }

    else
    {
      a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10 == a1)
      {
        goto LABEL_29;
      }
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x216069960](i - 4, a2);
    }

    else
    {
      if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v12 = *(a2 + 8 * i);
    }

    v26 = v12;
    if (*(v27 + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem) != v12)
    {
      break;
    }

    if (v11 == v8)
    {
      return;
    }
  }

  sub_21542D860(v23, a2, v24, v25);

  v13 = v26;
LABEL_31:
}

uint64_t sub_21542D860(char **a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_82;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2154A2C8C())
  {

    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x216069960](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 removeFromSuperview];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

LABEL_12:

    v5 = a2;
    if (!a2)
    {
      v12 = MEMORY[0x277D84F90];
      goto LABEL_58;
    }

    v11 = a2 >> 62 ? sub_2154A2C8C() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = MEMORY[0x277D84F90];
    if (v11)
    {
      break;
    }

LABEL_58:
    *a1 = v12;

    v5 = *a1;
    if (*a1 >> 62)
    {
      v53 = sub_2154A2C8C();
    }

    else
    {
      v53 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v53)
    {
LABEL_73:

      result = swift_beginAccess();
      *(a4 + 16) = 1;
      return result;
    }

    v54 = 0;
    a2 = v5 & 0xFFFFFFFFFFFFFF8;
    v76 = v5 & 0xC000000000000001;
    v74 = a3;
    while (1)
    {
      if (v76)
      {
        v60 = MEMORY[0x216069960](v54, v5);
      }

      else
      {
        if (v54 >= *(a2 + 16))
        {
          goto LABEL_77;
        }

        v60 = *(v5 + 8 * v54 + 32);
      }

      v61 = v60;
      v62 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v64 = Strong;
        [Strong addSubview_];
      }

      v65 = &v61[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_accessibilityContextualBarButtonDelegate];
      *&v61[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_accessibilityContextualBarButtonDelegate + 8] = *(a3 + 104);
      swift_unknownObjectWeakAssign();
      v66 = *&v61[OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_view];
      type metadata accessor for ICNoteEditorContextualBarButton();
      v67 = swift_dynamicCastClass();
      if (v67)
      {
        v55 = v67;
        swift_unknownObjectWeakLoadStrong();
        v56 = v5;
        v57 = v53;
        v58 = *(v65 + 1);
        v59 = v66;

        *(v55 + OBJC_IVAR____TtC11NotesEditor31ICNoteEditorContextualBarButton_accessibilityContextualBarButtonDelegate + 8) = v58;
        v53 = v57;
        v5 = v56;
        a3 = v74;
        swift_unknownObjectWeakAssign();

        swift_unknownObjectRelease();
      }

      else
      {
      }

      ++v54;
      if (v62 == v53)
      {
        goto LABEL_73;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    ;
  }

  v78 = MEMORY[0x277D84F90];

  sub_2154A2E2C();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v73 = v11;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x216069960](v13, a2);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_79;
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v16 = *(a2 + 32 + 8 * v13);
      }

      v17 = v16;
      swift_beginAccess();
      v18 = *(a3 + 16);
      if (*(v18 + 16))
      {
        v19 = sub_2153B0E30(v17);
        if (v20)
        {
          v21 = *(*(v18 + 56) + 8 * v19);
          swift_endAccess();
          v22 = v21;
          goto LABEL_20;
        }
      }

      swift_endAccess();
      v23 = objc_allocWithZone(type metadata accessor for ICNoteEditorContextualBarButtonItem());
      v24 = v17;
      v5 = sub_215352308(v24);
      swift_beginAccess();
      v25 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      v28 = sub_2153B0E30(v24);
      v29 = *(v77 + 16);
      v30 = (v27 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_78;
      }

      v5 = v27;
      if (*(v77 + 24) >= v31)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v77;
          if ((v27 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7A8);
          v38 = sub_2154A2F1C();
          v32 = v38;
          if (*(v77 + 16))
          {
            v39 = (v38 + 64);
            v40 = (v77 + 64);
            v41 = ((1 << *(v32 + 32)) + 63) >> 6;
            if (v32 != v77 || v39 >= &v40[8 * v41])
            {
              memmove(v39, v40, 8 * v41);
            }

            v42 = 0;
            *(v32 + 16) = *(v77 + 16);
            v43 = 1 << *(v77 + 32);
            if (v43 < 64)
            {
              v44 = ~(-1 << v43);
            }

            else
            {
              v44 = -1;
            }

            v45 = v44 & *(v77 + 64);
            v46 = (v43 + 63) >> 6;
            v69 = v46;
            if (v45)
            {
              do
              {
                v47 = __clz(__rbit64(v45));
                v70 = (v45 - 1) & v45;
LABEL_52:
                v50 = v47 | (v42 << 6);
                v51 = *(*(v77 + 56) + 8 * v50);
                *(*(v32 + 48) + 8 * v50) = *(*(v77 + 48) + 8 * v50);
                *(*(v32 + 56) + 8 * v50) = v51;
                v52 = v51;
                v46 = v69;
                v45 = v70;
              }

              while (v70);
            }

            v48 = v42;
            while (1)
            {
              v42 = v48 + 1;
              if (__OFADD__(v48, 1))
              {
                goto LABEL_86;
              }

              if (v42 >= v46)
              {
                break;
              }

              v49 = *(v77 + 64 + 8 * v42);
              ++v48;
              if (v49)
              {
                v47 = __clz(__rbit64(v49));
                v70 = (v49 - 1) & v49;
                goto LABEL_52;
              }
            }
          }

          if ((v5 & 1) == 0)
          {
LABEL_36:
            *(v32 + 8 * (v28 >> 6) + 64) |= 1 << v28;
            *(*(v32 + 48) + 8 * v28) = v24;
            *(*(v32 + 56) + 8 * v28) = v25;
            v35 = *(v32 + 16);
            v36 = __OFADD__(v35, 1);
            v37 = v35 + 1;
            if (v36)
            {
              goto LABEL_81;
            }

            *(v32 + 16) = v37;
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_2153DB834(v31, isUniquelyReferenced_nonNull_native);
        v32 = v77;
        v33 = sub_2153B0E30(v24);
        if ((v5 & 1) != (v34 & 1))
        {
          goto LABEL_87;
        }

        v28 = v33;
        if ((v5 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v14 = *(v32 + 56);
      v15 = *(v14 + 8 * v28);
      *(v14 + 8 * v28) = v25;

LABEL_19:
      *(a3 + 16) = v32;
      swift_endAccess();
      v11 = v73;
LABEL_20:

      ++v13;
      sub_2154A2E0C();
      v5 = *(v78 + 16);
      sub_2154A2E4C();
      sub_2154A2E5C();
      sub_2154A2E1C();
      if (v13 == v11)
      {

        v12 = v78;
        goto LABEL_58;
      }
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  result = sub_2154A300C();
  __break(1u);
  return result;
}

uint64_t sub_21542DEEC()
{

  MEMORY[0x21606B640](v0 + 56);
  MEMORY[0x21606B640](v0 + 64);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21542DF44()
{
  sub_21542DEEC();

  return swift_deallocClassInstance();
}

unint64_t sub_21542DFE0()
{
  result = qword_281199CD8;
  if (!qword_281199CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199CD8);
  }

  return result;
}

uint64_t sub_21542E034()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = sub_215327BBC(MEMORY[0x277D84F90]);
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 89) = 771;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  return v0;
}

uint64_t sub_21542E0A0(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];

  if (a1 == 2)
  {
    return 2 * (v4 == 0);
  }

  if (a1 == 1)
  {
    return 1;
  }

  if (a1)
  {
    return 3;
  }

  return 2 * (v4 != 0);
}

uint64_t sub_21542E148(void *a1, char a2, unsigned __int8 a3)
{
  if (!a3)
  {
    return 3;
  }

  v6 = [a1 textStorage];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = a3 + 1;
  v11 = [a1 selectedRange];
  if (v10 >= 1)
  {
    v12 = v10;
    if ((sub_2154A22BC() & 1) == 0)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      v20 = swift_allocObject();
      *(v20 + 16) = 0;
      v21 = v6;
      result = [v8 string];
      if (result)
      {
        v22 = result;

        v23 = swift_allocObject();
        v23[2] = v20;
        v23[3] = v11;
        v23[4] = v12;
        v23[5] = v19;
        aBlock[4] = sub_21542E53C;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21542CD88;
        aBlock[3] = &block_descriptor_29;
        v24 = _Block_copy(aBlock);

        [v22 ic:v11 enumerateParagraphsInRange:v12 usingBlock:v24];

        _Block_release(v24);
        if (v9 == 2)
        {
          swift_beginAccess();
          v25 = *(v19 + 16);

          if (v25 <= 1)
          {
            return 1;
          }

          else
          {
            return 2;
          }
        }

        else
        {
          swift_beginAccess();
          if (*(v19 + 16) < 2)
          {
            swift_beginAccess();
            v26 = *(v20 + 16);

            if (v26)
            {
              return 2;
            }

            else
            {
              return 1;
            }
          }

          else
          {

            return 2;
          }
        }
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  if ((sub_2154A229C() & 1) == 0)
  {
    if (a3 == 2)
    {
      v18 = sub_2154A228C();

      if (v18)
      {
        return 2;
      }

      return 3;
    }

    goto LABEL_12;
  }

  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = sub_2154A1D2C();
  v16 = [v14 BOOLForKey_];

  if (v16)
  {
LABEL_12:

    return 3;
  }

  if (a2 == 2 && (sub_2154A228C() & 1) != 0)
  {
    v27 = [v13 standardUserDefaults];
    v28 = sub_2154A1D2C();
    v29 = [v27 BOOLForKey_];

    if (v29)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_21542E548(unint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for NotesFeature(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NotesFeature(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_21542E618()
{
  v2 = sub_2154A2DAC();
  MEMORY[0x2160689F0](47, 0xE100000000000000);
  v0 = sub_2154A2DAC();
  MEMORY[0x2160689F0](v0);

  return v2;
}

unint64_t sub_21542E69C(uint64_t a1)
{
  *(a1 + 8) = sub_215325200();
  result = sub_21542E6CC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21542E6CC()
{
  result = qword_27CA5D9F0;
  if (!qword_27CA5D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5D9F0);
  }

  return result;
}

uint64_t sub_21542E720()
{
  v1 = [v0 interactions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5C7B0);
  v2 = sub_2154A1F4C();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_2154A2C8C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x216069960](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v7 = v5;

            return v7;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for NestedScrollViewPanInteraction();
        v5 = swift_dynamicCastClass();
        if (v5)
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return 0;
}

uint64_t sub_21542E88C(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_2154A2CEC();
  }

  else if (*(a2 + 16) && (sub_2151A6C9C(0, a3), v6 = sub_2154A290C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = sub_2154A291C();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

char *sub_21542E9E4()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollableViews] = MEMORY[0x277D84F90];
  v1 = &v0[OBJC_IVAR___ICNestedScrollViewPanInteraction_linearDataModel];
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  v0[OBJC_IVAR___ICNestedScrollViewPanInteraction_enabledForSequence] = 0;
  swift_unknownObjectWeakAssign();
  type metadata accessor for NestedScrollViewPanInteraction.ExclusionGestureRecognizer();
  *&v0[OBJC_IVAR___ICNestedScrollViewPanInteraction_exclusionGestureRecognizer] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for NestedScrollViewPanInteraction.VerticalPanGestureRecognizer();
  *&v0[OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollVerticalPanBlocker] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *&v0[OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView] = v2;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for NestedScrollViewPanInteraction();
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = *&v3[OBJC_IVAR___ICNestedScrollViewPanInteraction_exclusionGestureRecognizer];
  v5 = v3;
  [v4 setDelegate_];
  [*&v5[OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollVerticalPanBlocker] setDelegate_];
  v6 = OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView;
  [*&v5[OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView] setContentInsetAdjustmentBehavior_];
  [*&v5[v6] setDelegate_];

  swift_unknownObjectRelease();
  return v5;
}

void sub_21542EBD4(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BDB70;
    v6 = [*(v1 + OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView) panGestureRecognizer];
    *(inited + 32) = v6;
    v7 = *(v1 + OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollVerticalPanBlocker);
    *(inited + 40) = v7;
    v8 = *(v1 + OBJC_IVAR___ICNestedScrollViewPanInteraction_exclusionGestureRecognizer);
    *(inited + 48) = v8;
    v9 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      v19 = v7;
      v20 = v8;
      v13 = MEMORY[0x216069960](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v10 = v6;
      v11 = v7;
      v12 = v8;
      v13 = v10;
    }

    v14 = v13;
    [v4 removeGestureRecognizer_];

    if (v9)
    {
      v15 = MEMORY[0x216069960](1, inited);
LABEL_9:
      v16 = v15;
      [v4 removeGestureRecognizer_];

      if (v9)
      {
        v17 = MEMORY[0x216069960](2, inited);
LABEL_13:
        v18 = v17;

        [v4 removeGestureRecognizer_];

        goto LABEL_14;
      }

      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v17 = *(inited + 48);
        goto LABEL_13;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v15 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_14:
  if (!a1)
  {
    return;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
LABEL_22:
    __break(1u);
    return;
  }

  swift_unknownObjectWeakAssign();
}

void sub_21542EE30(void *a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BDB70;
    v4 = OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView;
    v5 = *(v1 + OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView);
    v6 = a1;
    v7 = [v5 panGestureRecognizer];
    *(inited + 32) = v7;
    v8 = *(v1 + OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollVerticalPanBlocker);
    *(inited + 40) = v8;
    v9 = *(v1 + OBJC_IVAR___ICNestedScrollViewPanInteraction_exclusionGestureRecognizer);
    *(inited + 48) = v9;
    v10 = inited & 0xC000000000000001;
    if ((inited & 0xC000000000000001) != 0)
    {
      v21 = v8;
      v22 = v9;
      v14 = MEMORY[0x216069960](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v11 = v7;
      v12 = v8;
      v13 = v9;
      v14 = v11;
    }

    v15 = v14;
    [v6 addGestureRecognizer_];
    [v6 addSubview_];
    [*(v1 + v4) setHidden_];

    if (v10)
    {
      v16 = MEMORY[0x216069960](1, inited);
LABEL_9:
      v17 = v16;
      [v6 addGestureRecognizer_];
      [v6 addSubview_];
      [*(v1 + v4) setHidden_];

      if (v10)
      {
        v18 = MEMORY[0x216069960](2, inited);
LABEL_13:
        v19 = v18;

        [v6 addGestureRecognizer_];
        [v6 addSubview_];
        v20 = *(v1 + v4);
        [v20 setHidden_];

        return;
      }

      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v18 = *(inited + 48);
        goto LABEL_13;
      }

LABEL_18:
      __break(1u);
      return;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v16 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

uint64_t sub_21542F1E8()
{
  v139 = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollableViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  swift_bridgeObjectRetain_n();
  v148[0] = sub_215432A30(v3, sub_2153259E4, sub_215433474);
  sub_215431BD8(v148);

  v4 = v148[0];
  if (v148[0] < 0 || (v148[0] & 0x4000000000000000) != 0)
  {
    v5 = sub_2154A2C8C();
    v6 = &selRef__dataOwnerForCopy;
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_14:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v5 = *(v148[0] + 16);
  v6 = &selRef__dataOwnerForCopy;
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v130 = v0;
  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x216069960](v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = [objc_allocWithZone(type metadata accessor for NestedContentInfo()) init];
    [v9 frameInContainingScrollView];
    v11 = &v10[OBJC_IVAR___ICNestedContentInfo_frame];
    *v11 = v12;
    *(v11 + 1) = v13;
    *(v11 + 2) = v14;
    *(v11 + 3) = v15;
    [v9 contentOffset];
    v16 = &v10[OBJC_IVAR___ICNestedContentInfo_contentOffset];
    *v16 = v17;
    *(v16 + 1) = v18;
    [v9 contentSize];
    v19 = &v10[OBJC_IVAR___ICNestedContentInfo_contentSize];
    *v19 = v20;
    *(v19 + 1) = v21;
    [v9 scrollBounds];
    v22 = &v10[OBJC_IVAR___ICNestedContentInfo_scrollBounds];
    *v22 = v23;
    *(v22 + 1) = v24;
    *(v22 + 2) = v25;
    *(v22 + 3) = v26;
    [v9 v6[275]];
    v27 = &v10[OBJC_IVAR___ICNestedContentInfo_adjustedContentInset];
    *v27 = v28;
    *(v27 + 1) = v29;
    *(v27 + 2) = v30;
    *(v27 + 3) = v31;
    v32 = v10;
    MEMORY[0x216068AC0]();
    if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2154A1F8C();
    }

    ++v7;
    sub_2154A1FAC();

    v6 = &selRef__dataOwnerForCopy;
  }

  while (v5 != v7);
  v5 = v139;
  v0 = v130;
LABEL_15:

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }
  }

  if (!sub_2154A2C8C())
  {
  }

LABEL_17:
  v1 = (v0 + OBJC_IVAR___ICNestedScrollViewPanInteraction_linearDataModel);
  swift_beginAccess();
  v33 = v1[1];
  v138[0] = *v1;
  v138[1] = v33;
  v34 = v1[3];
  v138[2] = v1[2];
  v138[3] = v34;
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  sub_2151ADCD8(v138, &qword_27CA5DB68);
  if (!(v5 >> 62))
  {
    v35 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_19;
  }

LABEL_49:
  v35 = sub_2154A2C8C();
LABEL_19:
  v36 = MEMORY[0x277D84F90];
  v131 = v1;
  if (v35)
  {
    if (v35 < 1)
    {
      __break(1u);
      goto LABEL_51;
    }

    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x216069960](v37, v5);
      }

      else
      {
        v39 = *(v5 + 8 * v37 + 32);
      }

      v40 = v39;
      v41 = *&v39[OBJC_IVAR___ICNestedContentInfo_contentSize + 8];
      v42 = *&v39[OBJC_IVAR___ICNestedContentInfo_adjustedContentInset];
      v43 = *&v39[OBJC_IVAR___ICNestedContentInfo_adjustedContentInset + 16];
      v44 = &v39[OBJC_IVAR___ICNestedContentInfo_frame];
      MinY = CGRectGetMinY(*&v39[OBJC_IVAR___ICNestedContentInfo_frame]);
      Height = CGRectGetHeight(*v44);
      v47 = CGRectGetHeight(*&v40[OBJC_IVAR___ICNestedContentInfo_scrollBounds]);
      v48 = *&v40[OBJC_IVAR___ICNestedContentInfo_contentOffset + 8];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_215318AF0(0, *(v38 + 2) + 1, 1, v38);
      }

      v50 = *(v38 + 2);
      v49 = *(v38 + 3);
      if (v50 >= v49 >> 1)
      {
        v38 = sub_215318AF0((v49 > 1), v50 + 1, 1, v38);
      }

      ++v37;

      *(v38 + 2) = v50 + 1;
      v51 = &v38[64 * v50];
      *(v51 + 4) = MinY;
      *(v51 + 5) = Height;
      *(v51 + 6) = v47;
      *(v51 + 7) = v48;
      *(v51 + 8) = v41 + v42 + v43;
      *(v51 + 9) = 0;
      *(v51 + 10) = 0;
      *(v51 + 11) = v36;
    }

    while (v35 != v37);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v35 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v53 = Strong;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() contentSize];
  v55 = v54;

  v56 = swift_unknownObjectWeakLoadStrong();
  if (!v56)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v57 = v56;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() adjustedContentInset];
  v59 = v58;

  v60 = swift_unknownObjectWeakLoadStrong();
  if (!v60)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v61 = v60;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() adjustedContentInset];
  v63 = v62;

  v64 = sub_2153D3BB8(v38);
  v65 = swift_unknownObjectWeakLoadStrong();
  if (!v65)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v66 = v65;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() safeAreaInsets];
  v68 = v67;

  v69 = swift_unknownObjectWeakLoadStrong();
  if (!v69)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v70 = v69;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() safeAreaInsets];
  v72 = v71;

  v73 = swift_unknownObjectWeakLoadStrong();
  if (!v73)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v74 = v73;
  v128 = v63;
  v129 = v68;
  v75 = v59;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() contentOffset];
  v77 = v76;

  v78 = OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView;
  v79 = *(v35 + OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView);
  v80 = swift_unknownObjectWeakLoadStrong();
  if (!v80)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v81 = v80;
  objc_opt_self();
  v82 = swift_dynamicCastObjCClassUnconditional();
  v83 = v79;
  [v82 adjustedContentInset];
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v91 = v90;

  [v83 setContentInset_];
  v92 = *(v35 + v78);
  v93 = swift_unknownObjectWeakLoadStrong();
  if (!v93)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v94 = v93;
  objc_opt_self();
  v95 = swift_dynamicCastObjCClassUnconditional();
  v96 = v92;
  [v95 frame];
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;

  [v96 setFrame_];
  v105 = *(v35 + v78);
  v106 = swift_unknownObjectWeakLoadStrong();
  if (!v106)
  {
LABEL_59:
    __break(1u);

    __break(1u);
    return result;
  }

  v107 = v106;
  v108 = v55 + v75 + v128;
  objc_opt_self();
  v109 = swift_dynamicCastObjCClassUnconditional();
  v110 = v105;
  [v109 bounds];
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;

  v149.origin.x = v112;
  v149.origin.y = v114;
  v149.size.width = v116;
  v149.size.height = v118;
  Width = CGRectGetWidth(v149);
  memset(v148, 0, 24);
  v148[3] = v77;
  *&v148[4] = v108;
  v148[5] = v129;
  v148[6] = v72;
  v148[7] = v64;
  [v110 setContentSize_];

  if ([*(v35 + v78) isDragging])
  {
  }

  else
  {
    v120 = [*(v35 + v78) isDecelerating];

    if ((v120 & 1) == 0)
    {
      v121 = *(v35 + v78);
      v141 = 0;
      v142 = 0;
      v140 = 0;
      v143 = v77;
      v144 = v108;
      v145 = v129;
      v146 = v72;
      v147 = v64;
      v122 = v121;
      sub_21542FC1C();
      [v122 contentOffset];
      [v122 setContentOffset_];
    }
  }

  v132 = 0uLL;
  *&v133 = 0;
  *(&v133 + 1) = v77;
  *&v134 = v108;
  *(&v134 + 1) = v129;
  *&v135 = v72;
  *(&v135 + 1) = v64;
  memset(v136, 0, 24);
  v136[3] = v77;
  *&v136[4] = v108;
  v136[5] = v129;
  v136[6] = v72;
  v136[7] = v64;
  sub_2153D59DC(&v132, v137);
  sub_215433EAC(v136);
  v123 = v131[1];
  v137[0] = *v131;
  v137[1] = v123;
  v124 = v131[3];
  v137[2] = v131[2];
  v137[3] = v124;
  v125 = v133;
  *v131 = v132;
  v131[1] = v125;
  v126 = v135;
  v131[2] = v134;
  v131[3] = v126;
  return sub_2151ADCD8(v137, &qword_27CA5DB68);
}

double sub_21542FB6C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    v5 = *(v0 + 32);
    do
    {
      v6 = __swift_project_boxed_opaque_existential_0Tm(v4, v4[3]);
      v14 = sub_21542FB6C(v6, v7, v8, v9, v10, v11, v12, v13);
      v15 = v14 - *(__swift_project_boxed_opaque_existential_0Tm(v4, v4[3]) + 1);
      if (v15 > 0.0)
      {
        v1 = v5 + v15;
        v5 = v5 + v15;
      }

      v4 += 5;
      --v3;
    }

    while (v3);
  }

  return v1;
}

double sub_21542FC1C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v5 = *(v0 + 24);
    while (1)
    {
      sub_215333D74(v4, v18);
      v7 = __swift_project_boxed_opaque_existential_0Tm(v18, v19);
      v8 = v7[1];
      v24 = *v7;
      v25 = v8;
      v9 = v7[3];
      v26 = v7[2];
      v27 = v9;
      v10 = sub_21542FB6C();
      if (*(__swift_project_boxed_opaque_existential_0Tm(v18, v19) + 2) < v10)
      {
        v11 = *__swift_project_boxed_opaque_existential_0Tm(v18, v19) - *(v0 + 40);
        v12 = __swift_project_boxed_opaque_existential_0Tm(v18, v19);
        v13 = v12[1];
        v20 = *v12;
        v21 = v13;
        v14 = v12[3];
        v22 = v12[2];
        v23 = v14;
        v15 = sub_21542FB6C();
        v16 = *(__swift_project_boxed_opaque_existential_0Tm(v18, v19) + 2);
        if (TSUEqualDoubles(v1, v11))
        {
          v6 = *(__swift_project_boxed_opaque_existential_0Tm(v18, v19) + 3);
        }

        else
        {
          if (v11 >= v1)
          {
            goto LABEL_5;
          }

          v6 = v15 - v16;
        }

        v5 = v5 + v6;
      }

LABEL_5:
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      v4 += 40;
      if (!--v3)
      {
        return v5;
      }
    }
  }

  return *(v0 + 24);
}

uint64_t sub_21542FD78()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___ICNestedScrollViewPanInteraction_linearDataModel];
  result = swift_beginAccess();
  v4 = *(v2 + 1);
  v35[0] = *v2;
  v35[1] = v4;
  v5 = *(v2 + 3);
  v35[2] = *(v2 + 2);
  v35[3] = v5;
  v6 = *(&v5 + 1);
  if (!*(&v5 + 1))
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_38:
    __break(1u);

    __break(1u);
    return result;
  }

  v8 = Strong;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();

  [v9 contentOffset];

  v10 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = v6 + 32;
    do
    {
      sub_215333D74(v12, v33);
      v13 = [objc_allocWithZone(type metadata accessor for NestedContentInfo()) init];
      v14 = __swift_project_boxed_opaque_existential_0Tm(v33, v33[3])[3];
      __swift_destroy_boxed_opaque_existential_0Tm(v33);
      v15 = &v13[OBJC_IVAR___ICNestedContentInfo_contentOffset];
      *v15 = 0;
      *(v15 + 1) = v14;
      v16 = v13;
      MEMORY[0x216068AC0]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2154A1F8C();
      }

      sub_2154A1FAC();

      v12 += 40;
      --v11;
    }

    while (v11);
    v10 = v34;
  }

  sub_2151ADCD8(v35, &qword_27CA5DB68);
  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
    goto LABEL_38;
  }

  v18 = v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClassUnconditional();
  [v19 contentOffset];
  [v19 setContentOffset_];

  v20 = OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollableViews;
  swift_beginAccess();
  v21 = *&v1[v20];
  swift_bridgeObjectRetain_n();
  v32 = sub_215432A30(v21, sub_2153259E4, sub_215433474);
  sub_215431BD8(&v32);

  v22 = v32;
  if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v23 = v10;
  for (i = *(v32 + 16); i; i = sub_2154A2C8C())
  {
    v25 = 4;
    v10 = v23 >> 62;
    while (1)
    {
      v26 = v25 - 4;
      if ((v22 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x216069960](v25 - 4, v22);
      }

      else
      {
        if (v26 >= *(v22 + 16))
        {
          goto LABEL_33;
        }

        v27 = *(v22 + 8 * v25);
      }

      v28 = v27;
      v29 = v25 - 3;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v10)
      {
        if (v26 == sub_2154A2C8C())
        {
LABEL_29:

          goto LABEL_30;
        }
      }

      else if (v26 == *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      if ((v23 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x216069960](v25 - 4, v23);
      }

      else
      {
        if (v26 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v30 = *(v23 + 8 * v25);
      }

      v31 = v30;
      [v28 contentOffset];
      [v28 setContentOffset_];

      ++v25;
      if (v29 == i)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v23 = v10;
  }

LABEL_30:
}

id sub_215430184(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_touch] = 0;
  v5 = &v2[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_startPoint];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_21532C8D8(a1, v19);
  v6 = v20;
  if (v20)
  {
    v7 = __swift_project_boxed_opaque_existential_0Tm(v19, v20);
    v8 = *(v6 - 8);
    v9 = MEMORY[0x28223BE20](v7);
    v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_2154A2F8C();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for NestedScrollViewPanInteraction.VerticalPanGestureRecognizer();
  v18.receiver = v2;
  v18.super_class = v13;
  v14 = objc_msgSendSuper2(&v18, sel_initWithTarget_action_, v12, a2);
  swift_unknownObjectRelease();
  v19[0] = MEMORY[0x277D84F90];
  v15 = v14;
  sub_2154A2E2C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_2154A2E0C();
  sub_2154A2E4C();
  sub_2154A2E5C();
  sub_2154A2E1C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_2154A2E0C();
  sub_2154A2E4C();
  sub_2154A2E5C();
  sub_2154A2E1C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_2154A2E0C();
  sub_2154A2E4C();
  sub_2154A2E5C();
  sub_2154A2E1C();
  sub_2151A6C9C(0, &qword_2811994B0);
  v16 = sub_2154A1F3C();

  [v15 setAllowedTouchTypes_];

  sub_2151ADCD8(a1, &qword_27CA5ABC0);
  return v15;
}

uint64_t sub_215430490(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_2151A6C9C(0, &unk_27CA5A330);
  sub_215433E44();
  v8 = sub_2154A20CC();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

uint64_t sub_215430538(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  sub_2151A6C9C(0, &unk_27CA5A330);
  sub_215433E44();
  v10 = sub_2154A20CC();
  v11 = a4;
  v12 = a1;
  sub_215433AE0(v10, a5, a6);
}

void sub_21543065C(void *a1)
{
  if (![v1 state])
  {
    v3 = [a1 phase];
    if ((v3 - 4) < 2)
    {

      [v1 setState_];
    }

    else if ((v3 - 2) <= 1)
    {
      v4 = [v1 view];
      [a1 _adjustedAcceleratedDeltaInView_];
      v6 = v5;
      v8 = v7;

      sub_2154307CC(v6, v8);
    }
  }
}

void sub_2154307CC(long double a1, long double a2)
{
  if (sqrt(a1 * a1 + a2 * a2) > 3.0)
  {
    v3 = fabs(atan2(a2, a1));
    if (v3 > 2.7925268 || v3 < 0.34906585)
    {
      v5 = 5;
    }

    else
    {
      v5 = 3;
    }

    [v2 setState_];
  }
}

id sub_215430880(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction26ExclusionGestureRecognizer_touch] = 0;
  sub_21532C8D8(a1, v18);
  v5 = v19;
  if (v19)
  {
    v6 = __swift_project_boxed_opaque_existential_0Tm(v18, v19);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_2154A2F8C();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for NestedScrollViewPanInteraction.ExclusionGestureRecognizer();
  v17.receiver = v2;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_initWithTarget_action_, v11, a2);
  swift_unknownObjectRelease();
  v14 = v13;
  [v14 setDelaysTouchesBegan_];
  [v14 setDelaysTouchesEnded_];
  [v14 setCancelsTouchesInView_];
  v18[0] = MEMORY[0x277D84F90];
  sub_2154A2E2C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_2154A2E0C();
  sub_2154A2E4C();
  sub_2154A2E5C();
  sub_2154A2E1C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_2154A2E0C();
  sub_2154A2E4C();
  sub_2154A2E5C();
  sub_2154A2E1C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_2154A2E0C();
  sub_2154A2E4C();
  sub_2154A2E5C();
  sub_2154A2E1C();
  sub_2151A6C9C(0, &qword_2811994B0);
  v15 = sub_2154A1F3C();

  [v14 setAllowedTouchTypes_];

  sub_2151ADCD8(a1, &qword_27CA5ABC0);
  return v14;
}

uint64_t sub_215430B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(_OWORD *, uint64_t))
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  return a5(v8, a4);
}

uint64_t sub_215430E18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2151A6C9C(0, &qword_281199490);
  v5 = *(v2 + OBJC_IVAR___ICNestedScrollViewPanInteraction_exclusionGestureRecognizer);
  v6 = sub_2154A291C();

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v7 = [*(v3 + OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView) panGestureRecognizer];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    objc_opt_self();
    v10 = [swift_dynamicCastObjCClassUnconditional() panGestureRecognizer];

    v11 = [v10 minimumNumberOfTouches];
    [v7 setMinimumNumberOfTouches_];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = [Strong nestedScrollViewPanInteraction:v3 shouldReceiveTouch:a2];
      swift_unknownObjectRelease();
      *(v3 + OBJC_IVAR___ICNestedScrollViewPanInteraction_enabledForSequence) = v13;
      if ((v13 & 1) == 0)
      {
        return 1;
      }
    }

    else
    {
      *(v3 + OBJC_IVAR___ICNestedScrollViewPanInteraction_enabledForSequence) = 1;
    }

    sub_21542F1E8();
    return 1;
  }

  __break(1u);
  return result;
}

id sub_215431010(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_2151A6C9C(0, &qword_281199490);
  v5 = *(v2 + OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollVerticalPanBlocker);
  v6 = sub_2154A291C();

  if (v6 & 1) != 0 && *(v3 + OBJC_IVAR___ICNestedScrollViewPanInteraction_enabledForSequence) == 1 && (sub_215431144(a2))
  {
    result = [a2 view];
    if (!result)
    {
      return result;
    }

    v8 = result;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v12 = [Strong nestedScrollViewPanInteraction:v3 shouldAllowPanningInNestedScrollView:v10];

        swift_unknownObjectRelease();
        return (v12 ^ 1);
      }
    }
  }

  return 0;
}

uint64_t sub_215431144(void *a1)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    return 0;
  }

  v3 = [a1 view];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v8 = result;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  sub_2151A6C9C(0, &qword_27CA59E50);
  v9 = sub_2154A291C();

  if (v9 & 1) != 0 || (v10 = *(v1 + OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView), v11 = sub_2154A291C(), v10, (v11))
  {
LABEL_7:

    return 0;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_13;
  }

  v12 = result;
  objc_opt_self();
  v13 = [v6 isDescendantOfView_];

  return (v13 & 1) != 0;
}

uint64_t sub_21543134C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___ICNestedScrollViewPanInteraction_exclusionGestureRecognizer);
  sub_2151A6C9C(0, &qword_27CA59E48);
  v7 = v6;
  v8 = sub_2154A291C();

  if (v8)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_2151A6C9C(0, &qword_281199490);
      objc_opt_self();
      v11 = [swift_dynamicCastObjCClassUnconditional() panGestureRecognizer];

      LOBYTE(v10) = sub_2154A291C();
      if (v10)
      {
        v12 = *(v2 + OBJC_IVAR___ICNestedScrollViewPanInteraction_enabledForSequence) ^ 1;
      }

      else
      {
        v16 = [*(v2 + OBJC_IVAR___ICNestedScrollViewPanInteraction_hiddenScrollView) panGestureRecognizer];
        v17 = sub_2154A291C();

        if (v17)
        {
          v12 = *(v3 + OBJC_IVAR___ICNestedScrollViewPanInteraction_enabledForSequence);
        }

        else
        {
          v12 = 1;
        }
      }

      return v12 & 1;
    }

    __break(1u);
  }

  else
  {
    v13 = *(v2 + OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollVerticalPanBlocker);
    v14 = sub_2154A291C();

    if (v14)
    {
      v12 = sub_215431144(a2) ^ 1;
      return v12 & 1;
    }
  }

  sub_2154A2D9C();

  v18 = [a1 description];
  v19 = sub_2154A1D6C();
  v21 = v20;

  MEMORY[0x2160689F0](v19, v21);

  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

void sub_215431618(double a1)
{
  v3 = *(v1 + 56);
  v4 = v3[2];
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v5 = 0;
      *(v1 + 56) = v3;
      v6 = v3 + 4;
      v7 = a1;
      while (v5 < v3[2])
      {
        sub_215333D74(v6, v25);
        v8 = __swift_project_boxed_opaque_existential_0Tm(v6, v6[3]);
        v9 = v8[1];
        v31 = *v8;
        v32 = v9;
        v10 = v8[3];
        v33 = v8[2];
        v34 = v10;
        v11 = sub_21542FB6C();
        if (v11 > *(__swift_project_boxed_opaque_existential_0Tm(v25, v26) + 2))
        {
          v12 = *__swift_project_boxed_opaque_existential_0Tm(v25, v26) - *(v1 + 40);
          v13 = __swift_project_boxed_opaque_existential_0Tm(v25, v26);
          v14 = v13[1];
          v27 = *v13;
          v28 = v14;
          v15 = v13[3];
          v29 = v13[2];
          v30 = v15;
          v16 = sub_21542FB6C();
          v17 = __swift_project_boxed_opaque_existential_0Tm(v25, v26);
          if (v7 <= v12)
          {
            if (v5 >= v3[2])
            {
              goto LABEL_17;
            }

            v21 = v6[3];
            v22 = v6[4];
            __swift_mutable_project_boxed_opaque_existential_1(v6, v21);
            (*(v22 + 24))(v21, v22, 0.0);
            *(v1 + 56) = v3;
          }

          else
          {
            a1 = v16 - v17[2];
            v18 = v3[2];
            if (v7 <= v12 + a1)
            {
              if (v5 >= v18)
              {
                goto LABEL_19;
              }

              v23 = v6[3];
              v24 = v6[4];
              __swift_mutable_project_boxed_opaque_existential_1(v6, v23);
              (*(v24 + 24))(v23, v24, v7 - v12);
              *(v1 + 56) = v3;
              v7 = v7 - a1;
              a1 = v12;
            }

            else
            {
              if (v5 >= v18)
              {
                goto LABEL_18;
              }

              v19 = v6[3];
              v20 = v6[4];
              __swift_mutable_project_boxed_opaque_existential_1(v6, v19);
              (*(v20 + 24))(v19, v20, a1);
              *(v1 + 56) = v3;
              a1 = v7 - a1;
              v7 = a1;
            }
          }
        }

        ++v5;
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        v6 += 5;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v3 = sub_2154329F0(v3);
    }
  }

LABEL_15:
  *(v1 + 24) = a1;
}

uint64_t sub_21543193C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_215433B98(v6);
  v10 = v9;

  return v10 & 1;
}

uint64_t sub_21543199C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_215433CC4(v6);

  return v9 & 1;
}

id sub_215431AB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_215431B28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_215431B70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_215431BD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2151CB390(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_215431C54(v6);
  return sub_2154A2E1C();
}

void sub_215431C54(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2154A2F6C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DB70);
        v6 = sub_2154A1F9C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_215431E68(v8, v9, a1, v4);
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
    sub_215431D64(0, v2, 1, a1);
  }
}

void sub_215431D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 frameInContainingScrollView];
      MinY = CGRectGetMinY(v19);
      [v13 frameInContainingScrollView];
      v15 = CGRectGetMinY(v20);

      if (MinY >= v15)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v16;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_215431E68(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_87:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_21543284C(v8);
    }

    v92 = v5;
    v93 = *(v8 + 2);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v5 = v93 - 1;
        v94 = *&v8[16 * v93];
        v95 = *&v8[16 * v93 + 24];
        sub_2154324F0((*a3 + 8 * v94), (*a3 + 8 * *&v8[16 * v93 + 16]), (*a3 + 8 * v95), v9);
        if (v92)
        {
          goto LABEL_97;
        }

        if (v95 < v94)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21543284C(v8);
        }

        if (v93 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v96 = &v8[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        sub_2154327C0(v93 - 1);
        v93 = *(v8 + 2);
        if (v93 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v98 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 frameInContainingScrollView];
      MinY = CGRectGetMinY(v106);
      [v17 frameInContainingScrollView];
      v19 = CGRectGetMinY(v107);

      v20 = v12 + 2;
      while (v6 != v20)
      {
        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        [v22 frameInContainingScrollView];
        v24 = CGRectGetMinY(v108);
        [v23 frameInContainingScrollView];
        v25 = CGRectGetMinY(v109);

        ++v20;
        ++v14;
        if (MinY < v19 == v24 >= v25)
        {
          v6 = (v20 - 1);
          break;
        }
      }

      v9 = v12;
      if (MinY < v19)
      {
        if (v6 < v12)
        {
          goto LABEL_117;
        }

        if (v12 < v6)
        {
          v26 = 8 * v6 - 8;
          v27 = v6;
          v28 = v12;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v29 = *(v30 + v5);
              *(v30 + v5) = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            v28 = (v28 + 1);
            v26 -= 8;
            v5 += 8;
          }

          while (v28 < v27);
        }
      }

      v10 = v6;
      v5 = v98;
    }

    v31 = a3[1];
    if (v10 < v31)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v32 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v32 >= v31)
        {
          v32 = a3[1];
        }

        if (v32 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v32)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_215317AD4(0, *(v8 + 2) + 1, 1, v8);
    }

    v47 = *(v8 + 2);
    v46 = *(v8 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      v8 = sub_215317AD4((v46 > 1), v47 + 1, 1, v8);
    }

    *(v8 + 2) = v48;
    v49 = &v8[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v10;
    v50 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v104 = v10;
    if (v47)
    {
      while (1)
      {
        v51 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v52 = *(v8 + 4);
          v53 = *(v8 + 5);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_56:
          if (v55)
          {
            goto LABEL_104;
          }

          v68 = &v8[16 * v48];
          v70 = *v68;
          v69 = *(v68 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_107;
          }

          v74 = &v8[16 * v51 + 32];
          v76 = *v74;
          v75 = *(v74 + 1);
          v62 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v62)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v72, v77))
          {
            goto LABEL_111;
          }

          if (v72 + v77 >= v54)
          {
            if (v54 < v77)
            {
              v51 = v48 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v78 = &v8[16 * v48];
        v80 = *v78;
        v79 = *(v78 + 1);
        v62 = __OFSUB__(v79, v80);
        v72 = v79 - v80;
        v73 = v62;
LABEL_70:
        if (v73)
        {
          goto LABEL_106;
        }

        v81 = &v8[16 * v51];
        v83 = *(v81 + 4);
        v82 = *(v81 + 5);
        v62 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v62)
        {
          goto LABEL_109;
        }

        if (v84 < v72)
        {
          goto LABEL_3;
        }

LABEL_77:
        v89 = v51 - 1;
        if (v51 - 1 >= v48)
        {
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v90 = *&v8[16 * v89 + 32];
        v9 = *&v8[16 * v51 + 40];
        sub_2154324F0((*a3 + 8 * v90), (*a3 + 8 * *&v8[16 * v51 + 32]), (*a3 + 8 * v9), v50);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v9 < v90)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_21543284C(v8);
        }

        if (v89 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v91 = &v8[16 * v89];
        *(v91 + 4) = v90;
        *(v91 + 5) = v9;
        sub_2154327C0(v51);
        v48 = *(v8 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v56 = &v8[16 * v48 + 32];
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_102;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_103;
      }

      v63 = &v8[16 * v48];
      v65 = *v63;
      v64 = *(v63 + 1);
      v62 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v62)
      {
        goto LABEL_105;
      }

      v62 = __OFADD__(v54, v66);
      v67 = v54 + v66;
      if (v62)
      {
        goto LABEL_108;
      }

      if (v67 >= v59)
      {
        v85 = &v8[16 * v51 + 32];
        v87 = *v85;
        v86 = *(v85 + 1);
        v62 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v62)
        {
          goto LABEL_112;
        }

        if (v54 < v88)
        {
          v51 = v48 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v7 = v104;
    v6 = a3[1];
    if (v104 >= v6)
    {
      goto LABEL_87;
    }
  }

  v99 = v5;
  v100 = v9;
  v33 = *a3;
  v34 = *a3 + 8 * v10 - 8;
  v35 = (v9 - v10);
  v102 = v32;
LABEL_29:
  v103 = v10;
  v36 = *(v33 + 8 * v10);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *v38;
    v40 = v36;
    v41 = v39;
    [v40 frameInContainingScrollView];
    v42 = CGRectGetMinY(v110);
    [v41 frameInContainingScrollView];
    v43 = CGRectGetMinY(v111);

    if (v42 >= v43)
    {
LABEL_28:
      v10 = v103 + 1;
      v34 += 8;
      --v35;
      if ((v103 + 1) != v102)
      {
        goto LABEL_29;
      }

      v10 = v102;
      v5 = v99;
      v9 = v100;
      goto LABEL_36;
    }

    if (!v33)
    {
      break;
    }

    v44 = *v38;
    v36 = *(v38 + 8);
    *v38 = v36;
    *(v38 + 8) = v44;
    v38 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_2154324F0(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v23 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v23;
    }

    v22 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v37 = v4;
LABEL_26:
      __dst = v22;
      v24 = v22 - 1;
      --v5;
      v25 = v14;
      do
      {
        v26 = v5 + 1;
        v27 = *--v25;
        v28 = v24;
        v29 = *v24;
        v30 = v27;
        v31 = v29;
        [v30 frameInContainingScrollView];
        MinY = CGRectGetMinY(v40);
        [v31 frameInContainingScrollView];
        v33 = CGRectGetMinY(v41);

        if (MinY < v33)
        {
          v34 = v28;
          if (v26 != __dst)
          {
            *v5 = *v28;
          }

          v4 = v37;
          if (v14 <= v37 || (v22 = v34, v34 <= v6))
          {
            v22 = v34;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v26 != v14)
        {
          *v5 = *v25;
        }

        --v5;
        v14 = v25;
        v24 = v28;
      }

      while (v25 > v37);
      v14 = v25;
      v22 = __dst;
      v4 = v37;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 frameInContainingScrollView];
        v18 = CGRectGetMinY(v38);
        [v17 frameInContainingScrollView];
        v19 = CGRectGetMinY(v39);

        if (v18 >= v19)
        {
          break;
        }

        v20 = v13;
        v21 = v6 == v13++;
        if (!v21)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v20 = v4;
      v21 = v6 == v4++;
      if (v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v20;
      goto LABEL_17;
    }

LABEL_19:
    v22 = v6;
  }

LABEL_37:
  if (v22 != v4 || v22 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v22, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_2154327C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21543284C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_215432860(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2C8);
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

uint64_t sub_215432978(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2154A2C8C();
  }

  return sub_2154A2DDC();
}

uint64_t sub_215432A30(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_2154A2C8C();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
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

uint64_t sub_215432AD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2154A2C8C();
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
      result = sub_2154A2C8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21542E548(&qword_27CA5DB98, &qword_27CA5A630);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A630);
            v9 = sub_215327758(v13, i, a3);
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
        sub_2151A6C9C(0, &qword_281199620);
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

uint64_t sub_215432C74(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2154A2C8C();
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
      result = sub_2154A2C8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21542E548(&unk_27CA5DC20, &qword_27CA5DC18);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC18);
            v9 = sub_215327758(v13, i, a3);
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
        type metadata accessor for ICPDFTextFindingResult(0);
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

uint64_t sub_215432E04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2154A2C8C();
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
      result = sub_2154A2C8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21542E548(&qword_27CA5DC10, &qword_27CA5A618);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
            v9 = sub_2153277D8(v13, i, a3);
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
        type metadata accessor for ICNoteEditorContextualBarButtonItem();
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

uint64_t sub_215432F94(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2154A2C8C();
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
      result = sub_2154A2C8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21542E548(&qword_27CA5DC00, &qword_27CA5AD20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5AD20);
            v9 = sub_215327758(v13, i, a3);
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
        sub_2151A6C9C(0, &unk_27CA5AC70);
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

uint64_t sub_215433134(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2154A2C8C();
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
      result = sub_2154A2C8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21542E548(&qword_27CA5DBF8, &qword_27CA5DBF0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DBF0);
            v9 = sub_215327758(v13, i, a3);
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
        sub_2151A6C9C(0, &qword_281199650);
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

uint64_t sub_2154332D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2154A2C8C();
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
      result = sub_2154A2C8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21542E548(&unk_27CA5DBE0, &qword_27CA5DBD8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DBD8);
            v9 = sub_215327758(v13, i, a3);
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
        sub_2151A6C9C(0, &qword_27CA5DBD0);
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

uint64_t sub_215433474(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2154A2C8C();
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
      result = sub_2154A2C8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21542E548(&unk_27CA5DB80, &qword_27CA5DB78);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DB78);
            v9 = sub_215327758(v13, i, a3);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DB70);
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

uint64_t sub_215433610(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2154A2C8C();
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
      result = sub_2154A2C8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21542E548(&unk_27CA5DBA8, &qword_27CA5DBA0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DBA0);
            v9 = sub_215327758(v13, i, a3);
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
        sub_2151A6C9C(0, &unk_2811994F8);
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

uint64_t sub_2154337B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2154A2C8C();
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
      result = sub_2154A2C8C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21542E548(&unk_27CA5DBC0, &qword_27CA5DBB8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DBB8);
            v9 = sub_215327758(v13, i, a3);
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
        sub_2151A6C9C(0, &unk_281199640);
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

void sub_215433964(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_touch;
  if (*&v1[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_touch])
  {
    v3 = 5;
  }

  else
  {
    v4 = sub_2153B1B28(a1);
    v5 = *&v1[v2];
    *&v1[v2] = v4;
    v6 = v4;

    if (!v4)
    {
      __break(1u);
      return;
    }

    [v6 locationInView_];
    v8 = v7;
    v10 = v9;

    v3 = 0;
    v11 = &v1[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_startPoint];
    *v11 = v8;
    *(v11 + 1) = v10;
  }

  [v1 setState_];
}

void sub_215433A1C(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_touch];
  if (v2)
  {
    v6 = v2;
    if ((sub_21542E88C(v6, a1, &unk_27CA5A330) & 1) != 0 && ![v1 state])
    {
      [v6 locationInView_];
      sub_2154307CC(v4 - *&v1[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_startPoint], v5 - *&v1[OBJC_IVAR____TtCC11NotesEditor30NestedScrollViewPanInteraction28VerticalPanGestureRecognizer_startPoint + 8]);
    }
  }
}

void sub_215433AE0(uint64_t a1, void *a2, uint64_t a3)
{
  if (![v3 state])
  {
    v7 = *&v3[*a2];
    if (v7)
    {
      v8 = v7;
      if (sub_21542E88C(v8, a1, &unk_27CA5A330))
      {
        [v3 setState_];
      }
    }
  }
}

void sub_215433B98(uint64_t a1)
{
  v2 = OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollableViews;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_2154A2C8C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x216069960](v6, v3);
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v10 = [v7 isZoomed];

    ++v6;
    if (v10)
    {
      v6 = v9;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_215433CC4(uint64_t a1)
{
  v2 = OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollableViews;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2154A2C8C())
  {

    if (!i)
    {
      break;
    }

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
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_2151A6C9C(0, &qword_281199490);
      v9 = [v7 scrollView];
      v10 = sub_2154A291C();

      if (v10)
      {

        v12 = [v7 isLocked];

        return v12;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 1;
}

unint64_t sub_215433E44()
{
  result = qword_27CA5DB60;
  if (!qword_27CA5DB60)
  {
    sub_2151A6C9C(255, &unk_27CA5A330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DB60);
  }

  return result;
}

uint64_t sub_215433EDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_21549E70C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id LockedTextAttachmentView.__allocating_init(frame:textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v10 = [objc_allocWithZone(v7) initWithFrame:a1 textAttachment:a2 textContainer:a3 & 1 forManualRendering:{a4, a5, a6, a7}];

  return v10;
}

char *LockedTextAttachmentView.init(frame:textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  ObjectType = swift_getObjectType();
  v16 = sub_21549F6DC();
  MEMORY[0x28223BE20](v16 - 8);
  if (a1)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = a1;
      [v17 lockedAttachmentViewLayout];
    }
  }

  else
  {
    v17 = 0;
  }

  sub_21549F6CC();
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC30));
  *&v7[OBJC_IVAR___ICLockedTextAttachmentView_lockedView] = sub_21549FCDC();
  v25.receiver = v7;
  v25.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v25, sel_initWithFrame_textAttachment_textContainer_forManualRendering_, v17, a2, a3 & 1, a4, a5, a6, a7);
  v21 = OBJC_IVAR___ICLockedTextAttachmentView_lockedView;
  v22 = *&v20[OBJC_IVAR___ICLockedTextAttachmentView_lockedView];
  v23 = v20;
  [v23 addSubview_];
  [*&v20[v21] ic_addAnchorsToFillSuperview];

  return v23;
}

id LockedTextAttachmentView.__allocating_init(textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3)
{
  v6 = [objc_allocWithZone(v3) initWithTextAttachment:a1 textContainer:a2 forManualRendering:a3 & 1];

  return v6;
}

id LockedTextAttachmentView.init(textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = a1;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = [v4 initWithFrame:v8 textAttachment:a2 textContainer:a3 & 1 forManualRendering:{0.0, 0.0, 0.0, 0.0}];

  return v10;
}

id LockedTextAttachmentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LockedTextAttachmentView.didTapAttachment(_:)()
{
  v1 = [v0 attachment];
  if (v1)
  {
    v10 = v1;
    v2 = [v0 window];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() promptForIntent:1 object:v10];
      v5 = [objc_opt_self() shared];
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v10;
      *(v7 + 24) = v6;
      aBlock[4] = sub_2154349B4;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2154349BC;
      aBlock[3] = &block_descriptor_30;
      v8 = _Block_copy(aBlock);
      v9 = v10;

      [v5 authenticateWithPrompt:v4 displayWindow:v3 completionHandler:v8];
      _Block_release(v8);
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall LockedTextAttachmentView.openAttachment()()
{
  v1 = [v0 attachment];
  if (v1)
  {
    v10 = v1;
    v2 = [v0 window];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_opt_self() promptForIntent:1 object:v10];
      v5 = [objc_opt_self() shared];
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v10;
      *(v7 + 24) = v6;
      aBlock[4] = sub_215434ACC;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2154349BC;
      aBlock[3] = &block_descriptor_11_0;
      v8 = _Block_copy(aBlock);
      v9 = v10;

      [v5 authenticateWithPrompt:v4 displayWindow:v3 completionHandler:v8];
      _Block_release(v8);
    }

    else
    {
    }
  }
}

void sub_2154348FC(int a1, id a2)
{
  if ([a2 isAuthenticated])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong textView];

      if (v4)
      {
        v5 = [v4 editorContainer];

        if (v5)
        {
          [v5 reloadCurrentNote];
        }
      }
    }
  }
}

uint64_t sub_2154349BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id LockedTextAttachmentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_215434B18()
{
  type metadata accessor for SummaryViewModel();
  if (v0 <= 0x3F)
  {
    sub_2153AD9F8();
    if (v1 <= 0x3F)
    {
      sub_215434C50(319, &qword_27CA5BDF8, MEMORY[0x277D084A8], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_2153BB10C();
        if (v3 <= 0x3F)
        {
          sub_215434C50(319, &qword_27CA5C888, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_215434C50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_215434CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDF8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  LOBYTE(v19) = 0;
  sub_2154A0DDC();
  v7 = v21;
  *(a2 + 32) = v20;
  *(a2 + 40) = v7;
  v8 = sub_21549EEEC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = objc_allocWithZone(sub_2154A11FC());
  v19 = sub_2154A11DC();
  sub_2154A0DDC();
  v10 = v21;
  *(a2 + 48) = v20;
  *(a2 + 56) = v10;
  LOBYTE(v19) = 0;
  sub_2154A0DDC();
  v11 = v21;
  *(a2 + 64) = v20;
  *(a2 + 72) = v11;
  v12 = type metadata accessor for SummaryView(0);
  v13 = *(v12 + 36);
  *(a2 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  swift_storeEnumTagMultiPayload();
  v14 = *(v12 + 40);
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  swift_storeEnumTagMultiPayload();
  *a2 = a1;
  v15 = objc_allocWithZone(type metadata accessor for SummaryTextView());

  v16 = [v15 init];
  result = [objc_allocWithZone(type metadata accessor for SummaryViewModelObserver()) init];
  *(a2 + 8) = v16;
  *(a2 + 16) = a1;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_215434EEC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SummaryView(0);
  sub_215324EEC(v1 + *(v10 + 36), v9, &qword_27CA5B7C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21543A634(v9, a1);
  }

  sub_2154A227C();
  v12 = sub_2154A068C();
  sub_21549F07C();

  sub_2154A00CC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2154350C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SummaryView(0);
  sub_215324EEC(v1 + *(v10 + 40), v9, &unk_27CA5CA00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21549FB6C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2154A227C();
    v13 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2154352CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for SummaryView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC50);
  MEMORY[0x28223BE20](v35);
  v7 = v33 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC58);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v33 - v8;
  v41 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC60);
  sub_215439018();
  sub_21549FDCC();
  sub_2153F0A20(v1, v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_215439764(v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD18) + 36);
  v34 = v7;
  v12 = &v7[v11];
  *v12 = sub_2154397C8;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  sub_2153F0A20(v2, v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = swift_allocObject();
  sub_215439764(v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v9);
  v14 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD20) + 36)];
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = sub_215439A08;
  *(v14 + 3) = v13;
  v15 = *v2;
  swift_getKeyPath();
  v33[1] = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  v48 = v15;
  sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
  sub_21549ED9C();

  v16 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  swift_beginAccess();
  LOBYTE(v13) = *(v15 + v16);
  sub_2153F0A20(v2, v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_215439764(v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v9);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD28);
  v19 = v34;
  v20 = &v34[*(v18 + 36)];
  *v20 = v13;
  *(v20 + 1) = sub_215439A94;
  *(v20 + 2) = v17;
  swift_getKeyPath();
  v47 = v15;
  sub_21549ED9C();

  v21 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__showMontaraOnboarding;
  swift_beginAccess();
  LOBYTE(v13) = *(v15 + v21);
  sub_2153F0A20(v2, v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = swift_allocObject();
  sub_215439764(v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v9);
  v23 = v35;
  v24 = v19;
  v25 = v19 + *(v35 + 36);
  *v25 = v13;
  *(v25 + 8) = sub_215439AAC;
  *(v25 + 16) = v22;
  v26 = *(v2 + 40);
  LOBYTE(v45) = *(v2 + 32);
  v46 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40);
  sub_2154A0E0C();
  v40 = v2;
  v27 = sub_215439B50();
  v28 = v36;
  sub_2154A0BAC();

  sub_2151ADCD8(v24, &qword_27CA5DC50);
  v29 = *(v2 + 56);
  v45 = *(v2 + 48);
  v46 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD80);
  sub_2154A0E0C();
  v30 = v44;
  v42 = v23;
  v43 = v27;
  swift_getOpaqueTypeConformance2();
  v31 = v37;
  sub_2154A098C();

  return (*(v38 + 8))(v28, v31);
}

uint64_t sub_2154358AC@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD88);
  MEMORY[0x28223BE20](v57);
  v4 = (&v53 - v3);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD10);
  MEMORY[0x28223BE20](v68);
  v6 = &v53 - v5;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD90);
  MEMORY[0x28223BE20](v66);
  v67 = &v53 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCA0);
  MEMORY[0x28223BE20](v64);
  v63 = &v53 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD98);
  v55 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v10 = &v53 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDA0);
  MEMORY[0x28223BE20](v58);
  v61 = &v53 - v11;
  v12 = type metadata accessor for SummaryView(0);
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDA8);
  v54 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = &v53 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC78);
  MEMORY[0x28223BE20](v65);
  v60 = &v53 - v15;
  IsFCSReportAConcernEnabled = ICInternalSettingsIsFCSReportAConcernEnabled();
  v17 = a1;
  v18 = *a1;
  swift_getKeyPath();
  if (IsFCSReportAConcernEnabled)
  {
    v74 = v18;
    sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED9C();

    v19 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__showSummarizationErrorToggle;
    swift_beginAccess();
    if (*(&v18->Kind + v19) == 1 && (swift_getKeyPath(), v78 = v18, sub_21549ED9C(), , v20 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSettingTextEffects, swift_beginAccess(), (*(&v18->Kind + v20) & 1) == 0))
    {
      v36 = *(v17 + 56);
      v72 = *(v17 + 48);
      v73 = v36;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD80);
      sub_2154A0DEC();
      v37 = v70;
      *v4 = v18;
      v4[1] = v37;
      swift_storeEnumTagMultiPayload();
      sub_215439230();
      sub_215439284();
      sub_2154A039C();
    }

    else
    {
      v21 = v63;
      sub_215436458(v63);
      sub_215324EEC(v21, v4, &qword_27CA5DCA0);
      swift_storeEnumTagMultiPayload();
      sub_215439230();
      sub_215439284();
      sub_2154A039C();
      sub_2151ADCD8(v21, &qword_27CA5DCA0);
    }

    v38 = &qword_27CA5DD10;
    sub_215324EEC(v6, v67, &qword_27CA5DD10);
  }

  else
  {
    v74 = v18;
    sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel);
    sub_21549ED9C();

    v22 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__showSummarizationErrorToggle;
    swift_beginAccess();
    if (*(&v18->Kind + v22) == 1 && (swift_getKeyPath(), v74 = v18, sub_21549ED9C(), , v23 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSettingTextEffects, swift_beginAccess(), (*(&v18->Kind + v23) & 1) == 0))
    {
      v39 = *(v17 + 56);
      v74 = *(v17 + 48);
      v75 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD80);
      sub_2154A0DEC();
      v40 = v70;
      v74 = v18;
      v75 = v70;
      sub_2153F0A20(v17, &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v41 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v42 = swift_allocObject();
      sub_215439764(&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC80);
      v44 = sub_215439230();
      v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC90);
      v46 = sub_2151ACC5C(&qword_27CA5DC98, &qword_27CA5DC90);
      v70 = v45;
      v71 = v46;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v48 = v53;
      sub_2154A0BEC();

      v49 = v54;
      v50 = v59;
      (*(v54 + 16))(v61, v48, v59);
      swift_storeEnumTagMultiPayload();
      v74 = &type metadata for ErrorPlaceHolderView;
      v75 = v43;
      v76 = v44;
      v77 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v51 = sub_215439284();
      v74 = v64;
      v75 = v43;
      v76 = v51;
      v77 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v6 = v60;
      sub_2154A039C();
      (*(v49 + 8))(v48, v50);
    }

    else
    {
      v24 = v63;
      sub_215436458(v63);
      sub_2153F0A20(v17, &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      v25 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v26 = swift_allocObject();
      sub_215439764(&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC80);
      v28 = sub_215439284();
      v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC90);
      v30 = sub_2151ACC5C(&qword_27CA5DC98, &qword_27CA5DC90);
      v74 = v29;
      v75 = v30;
      v31 = swift_getOpaqueTypeConformance2();
      v32 = v64;
      sub_2154A0BEC();
      sub_2151ADCD8(v24, &qword_27CA5DCA0);

      v33 = v55;
      v34 = v62;
      (*(v55 + 16))(v61, v10, v62);
      swift_storeEnumTagMultiPayload();
      v35 = sub_215439230();
      v74 = &type metadata for ErrorPlaceHolderView;
      v75 = v27;
      v76 = v35;
      v77 = v31;
      swift_getOpaqueTypeConformance2();
      v74 = v32;
      v75 = v27;
      v76 = v28;
      v77 = v31;
      swift_getOpaqueTypeConformance2();
      v6 = v60;
      sub_2154A039C();
      (*(v33 + 8))(v10, v34);
    }

    v38 = &qword_27CA5DC78;
    sub_215324EEC(v6, v67, &qword_27CA5DC78);
  }

  swift_storeEnumTagMultiPayload();
  sub_2154390A4();
  sub_2154396D8();
  sub_2154A039C();
  return sub_2151ADCD8(v6, v38);
}