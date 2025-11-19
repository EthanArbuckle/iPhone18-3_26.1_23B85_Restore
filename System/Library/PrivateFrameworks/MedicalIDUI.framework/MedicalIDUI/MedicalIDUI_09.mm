void sub_258878D0C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2588BCB78();
  sub_2588BBE38();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_258879274();
  (*(*(v15 - 8) + 16))(a3, a1, v15);
  sub_258879324(0);
  v17 = a3 + *(v16 + 36);
  *v17 = v6;
  *(v17 + 8) = v8;
  *(v17 + 16) = v10;
  *(v17 + 24) = v12;
  *(v17 + 32) = v14;
  *(v17 + 40) = 0;
  LOBYTE(a1) = sub_2588BCBE8();
  sub_2588BBE38();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_258879344(0);
  v27 = a3 + *(v26 + 36);
  *v27 = a1;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  v28 = sub_2588BD5C8();
  v30 = v29;
  v31 = objc_opt_self();
  if (a2)
  {
    v32 = [v31 secondarySystemGroupedBackgroundColor];
  }

  else
  {
    v33 = [v31 secondarySystemBackgroundColor];
  }

  sub_2588BD148();
  sub_2588BC778();
  sub_258879364(0);
  v35 = a3 + *(v34 + 36);
  *v35 = v47;
  *(v35 + 8) = v48;
  *(v35 + 16) = v28;
  *(v35 + 24) = v30;
  sub_25887961C(0, &qword_27F960BF8, sub_258879364, sub_258846858);
  v37 = (a3 + *(v36 + 36));
  v38 = *(sub_2588BC2A8() + 20);
  v39 = *MEMORY[0x277CE0118];
  v40 = sub_2588BC6B8();
  (*(*(v40 - 8) + 104))(&v37[v38], v39, v40);
  __asm { FMOV            V0.2D, #26.0 }

  *v37 = _Q0;
  sub_258846858();
  *&v37[*(v46 + 36)] = 256;
}

uint64_t sub_258878F98@<X0>(uint64_t a1@<X8>)
{

  v20 = sub_2588BCDE8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  KeyPath = swift_getKeyPath();
  v9 = sub_2588BCCC8();
  v10 = swift_getKeyPath();
  v11 = v5 & 1;
  v12 = sub_2588BC8D8();
  v13 = sub_2588BCB78();
  v14 = sub_2588BCB98();
  result = sub_2588BBE38();
  *a1 = v20;
  *(a1 + 8) = v3;
  *(a1 + 16) = v11;
  *(a1 + 24) = v7;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = v10;
  *(a1 + 56) = v9;
  *(a1 + 64) = v12;
  *(a1 + 72) = v13;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = v14;
  *(a1 + 128) = v16;
  *(a1 + 136) = v17;
  *(a1 + 144) = v18;
  *(a1 + 152) = v19;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_2588790D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  return sub_258878F98(a1);
}

uint64_t sub_2588790E8@<X0>(uint64_t a1@<X8>)
{
  sub_25878F648();

  v2 = sub_2588BCDF8();
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() secondaryLabelColor];
  sub_2588BD148();
  v8 = sub_2588BCD88();
  v10 = v9;
  v12 = v11;

  sub_2587B1CF8(v2, v4, v6 & 1);

  sub_2588BCC08();
  sub_2588BCC28();
  sub_2588BCC78();

  v13 = sub_2588BCDD8();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_2587B1CF8(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_258879250@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_2588790E8(a1);
}

void sub_258879274()
{
  if (!qword_27F960BB8)
  {
    sub_2588792D0();
    v0 = sub_2588BC8B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960BB8);
    }
  }
}

unint64_t sub_2588792D0()
{
  result = qword_27F960BC0;
  if (!qword_27F960BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960BC0);
  }

  return result;
}

void sub_258879398()
{
  if (!qword_27F960BE0)
  {
    sub_258879690(255, &qword_27F960BE8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F78], MEMORY[0x277CE0338]);
    sub_258879424();
    v0 = sub_2588BC758();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960BE0);
    }
  }
}

unint64_t sub_258879424()
{
  result = qword_27F960BF0;
  if (!qword_27F960BF0)
  {
    sub_258879690(255, &qword_27F960BE8, MEMORY[0x277CE0F78], MEMORY[0x277CE0F78], MEMORY[0x277CE0338]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960BF0);
  }

  return result;
}

void sub_2588794FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258879558()
{
  if (!qword_27F960C18)
  {
    sub_25887961C(255, &qword_27F95F508, sub_2587E5DE8, sub_2587B1964);
    sub_258879690(255, &qword_27F95E5F8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE0730]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960C18);
    }
  }
}

void sub_25887961C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258879690(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258879718()
{
  result = qword_27F960C28;
  if (!qword_27F960C28)
  {
    sub_258879558();
    sub_258879798();
    sub_25885A8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C28);
  }

  return result;
}

unint64_t sub_258879798()
{
  result = qword_27F960C30;
  if (!qword_27F960C30)
  {
    sub_25887961C(255, &qword_27F95F508, sub_2587E5DE8, sub_2587B1964);
    sub_2587E65C8();
    sub_258879878(&qword_27F95D9B8, sub_2587B1964);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C30);
  }

  return result;
}

uint64_t sub_258879878(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2588798C0()
{
  result = qword_27F960C38;
  if (!qword_27F960C38)
  {
    sub_25887961C(255, &qword_27F960BF8, sub_258879364, sub_258846858);
    sub_2588799A0();
    sub_258879878(&qword_27F95FD40, sub_258846858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C38);
  }

  return result;
}

unint64_t sub_2588799A0()
{
  result = qword_27F960C40;
  if (!qword_27F960C40)
  {
    sub_258879364(255);
    sub_258879A80(&qword_27F960C48, sub_258879344, sub_258879B04);
    sub_258879878(&qword_27F960C60, sub_258879398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C40);
  }

  return result;
}

uint64_t sub_258879A80(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258879B04()
{
  result = qword_27F960C50;
  if (!qword_27F960C50)
  {
    sub_258879324(255);
    sub_258879878(&qword_27F960C58, sub_258879274);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960C50);
  }

  return result;
}

uint64_t sub_258879BB4()
{
  v0 = [objc_opt_self() systemRedColor];
  result = sub_2588BD148();
  qword_27F969918 = result;
  return result;
}

uint64_t sub_258879BF4()
{
  result = sub_2588BD1C8();
  qword_27F969920 = result;
  return result;
}

id MIUIMedicalIDNavigationBarView.init(healthStore:medicalIDData:showDateUpdated:locale:)(void *a1, void *a2, char a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_2588BBA88();
  v10 = [v8 initWithHealthStore:a1 medicalIDData:a2 showDateUpdated:a3 & 1 locale:v9];

  v11 = sub_2588BBAC8();
  (*(*(v11 - 8) + 8))(a4, v11);
  return v10;
}

id MIUIMedicalIDNavigationBarView.init(healthStore:medicalIDData:showDateUpdated:locale:)(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = sub_25887AF30(a1, a2, a3, a4);

  return v6;
}

void sub_258879F48()
{
  if ([v0 showDateUpdated])
  {
    v1 = [v0 containerView];
    [v0 addSubview_];

    v2 = [v0 containerView];
    v3 = [v0 imageView];
    [v2 addSubview_];

    v4 = [v0 containerView];
    v5 = [v0 textLabel];
    [v4 addSubview_];

    v6 = [v0 dateUpdatedLabel];
    [v0 addSubview_];

    sub_25887A2B8();
  }

  else
  {
    v7 = [v0 stackView];
    [v0 addSubview_];

    sub_25887AB2C();
  }
}

void sub_25887A2B8()
{
  sub_258876180();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2588C7120;
  v2 = [v0 imageView];
  v3 = [v2 firstBaselineAnchor];

  v4 = [v0 textLabel];
  v5 = [v4 firstBaselineAnchor];

  v6 = [v3 constraintEqualToAnchor_];
  *(v1 + 32) = v6;
  v7 = [v0 imageView];
  v8 = [v7 trailingAnchor];

  v9 = [v0 textLabel];
  v10 = [v9 leadingAnchor];

  v11 = [v8 constraintEqualToAnchor:v10 constant:-4.0];
  *(v1 + 40) = v11;
  v12 = [v0 imageView];
  v13 = [v12 byte_2798A7529];

  v14 = [v0 containerView];
  v15 = [v14 byte_2798A7529];

  v16 = [v13 constraintEqualToAnchor_];
  *(v1 + 48) = v16;
  v17 = [v0 textLabel];
  v18 = [v17 topAnchor];

  v19 = [v0 containerView];
  v20 = [v19 &selRef_setDateStyle_];

  v21 = [v18 constraintGreaterThanOrEqualToAnchor_];
  *(v1 + 56) = v21;
  v22 = [v0 containerView];
  v23 = [v22 &selRef_setPhoneNumberLabel_ + 4];

  v24 = [v0 textLabel];
  v25 = [v24 &selRef_setPhoneNumberLabel_ + 4];

  v26 = [v23 constraintEqualToAnchor_];
  *(v1 + 64) = v26;
  v27 = [v0 containerView];
  v28 = [v27 bottomAnchor];

  v29 = [v0 textLabel];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v1 + 72) = v31;
  v32 = [v0 containerView];
  v33 = [v32 leadingAnchor];

  v34 = [v0 leadingAnchor];
  v35 = [v33 &off_2798A7108 + 7];

  *(v1 + 80) = v35;
  v36 = [v0 containerView];
  v37 = [v36 centerXAnchor];

  v38 = [v0 centerXAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v1 + 88) = v39;
  v40 = [v0 dateUpdatedLabel];
  v41 = [v40 topAnchor];

  v42 = [v0 containerView];
  v43 = [v42 bottomAnchor];

  v44 = [v41 constraintEqualToAnchor:v43 constant:5.0];
  *(v1 + 96) = v44;
  v45 = [v0 dateUpdatedLabel];
  v46 = [v45 centerXAnchor];

  v47 = [v0 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v1 + 104) = v48;
  v49 = [v0 leadingAnchor];
  v50 = [v0 dateUpdatedLabel];
  v51 = [v50 leadingAnchor];

  v52 = [v49 constraintEqualToAnchor_];
  *(v1 + 112) = v52;
  v53 = [v0 topAnchor];
  v54 = [v0 containerView];
  v55 = [v54 topAnchor];

  v56 = [v53 constraintEqualToAnchor_];
  *(v1 + 120) = v56;
  v57 = [v0 trailingAnchor];
  v58 = [v0 containerView];
  v59 = [v58 trailingAnchor];

  v60 = [v57 constraintGreaterThanOrEqualToAnchor_];
  *(v1 + 128) = v60;
  v61 = [v0 bottomAnchor];
  v62 = [v0 dateUpdatedLabel];
  v63 = [v62 bottomAnchor];

  v64 = [v61 constraintEqualToAnchor_];
  *(v1 + 136) = v64;
  v65 = [v0 trailingAnchor];
  v66 = [v0 dateUpdatedLabel];
  v67 = [v66 trailingAnchor];

  v68 = [v65 constraintEqualToAnchor_];
  *(v1 + 144) = v68;
  v69 = objc_opt_self();
  sub_25878E130(0, &qword_27F960CE0, 0x277CCAAD0);
  v70 = sub_2588BD9A8();

  [v69 activateConstraints_];
}

void sub_25887AB2C()
{
  sub_258876180();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2588C7130;
  v2 = [v0 stackView];
  v3 = [v2 topAnchor];

  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor_];

  *(v1 + 32) = v5;
  v6 = [v0 stackView];
  v7 = [v6 bottomAnchor];

  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v1 + 40) = v9;
  v10 = [v0 stackView];
  v11 = [v10 leadingAnchor];

  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v1 + 48) = v13;
  v14 = [v0 stackView];
  v15 = [v14 trailingAnchor];

  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v1 + 56) = v17;
  v18 = objc_opt_self();
  sub_25878E130(0, &qword_27F960CE0, 0x277CCAAD0);
  v19 = sub_2588BD9A8();

  [v18 activateConstraints_];
}

void __swiftcall MIUIMedicalIDNavigationBarView.init(frame:)(MIUIMedicalIDNavigationBarView *__return_ptr retstr, CGRect frame)
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v6 initWithFrame_];
}

id sub_25887AF30(void *a1, void *a2, int a3, uint64_t a4)
{
  v5 = v4;
  v106 = a4;
  v102 = a3;
  v105 = a1;
  if (a2)
  {
    v104 = _HKMedicalIDData.displayName.getter();
    v103 = v7;
  }

  else
  {
    v104 = 0;
    v103 = 0;
  }

  sub_25887BBC0(0, &qword_27F95D880, MEMORY[0x28220BF50], MEMORY[0x277D83D88]);
  *&v101 = &v95;
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v95 - v9;
  if (a2)
  {
    v11 = [a2 dateSaved];
    v12 = MEMORY[0x28223BE20](v11);
    if (v12)
    {
      v13 = v12;
      sub_2588BB988();

      v14 = sub_2588BB9B8();
      (*(*(v14 - 8) + 56))(&v95 - v9, 0, 1, v14);
    }

    else
    {
      v16 = sub_2588BB9B8();
      (*(*(v16 - 8) + 56))(&v95 - v9, 1, 1, v16);
    }

    sub_2587E8EE8(&v95 - v9, &v95 - v9);
  }

  else
  {
    v15 = sub_2588BB9B8();
    (*(*(v15 - 8) + 56))(&v95 - v9, 1, 1, v15);
  }

  v17 = sub_2588BBAC8();
  v100 = &v95;
  v18 = *(v17 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v17);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v18[2];
  v22(v21, v106, v17);
  v23 = type metadata accessor for MedicalIDNavigationBarViewModel();
  v24 = objc_allocWithZone(v23);
  v25 = v105;
  *&v24[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_healthStore] = v105;
  v26 = &v24[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_displayName];
  v27 = v103;
  *v26 = v104;
  *(v26 + 1) = v27;
  sub_2588252AC(v10, &v24[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved]);
  v22(&v24[OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_locale], v21, v17);
  v108.receiver = v24;
  v108.super_class = v23;
  v28 = v25;
  v29 = objc_msgSendSuper2(&v108, sel_init);
  v30 = v18[1];
  v105 = v17;
  v104 = v18 + 1;
  v103 = v30;
  v30(v21, v17);
  sub_258826118(v10);
  v99 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_viewModel;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_viewModel] = v29;
  v31 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_containerView] = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v33 = MEMORY[0x277D84560];
  sub_25887BBC0(0, &qword_27F960CB0, sub_258863B5C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v101 = xmmword_2588C00B0;
  *(inited + 16) = xmmword_2588C00B0;
  v35 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  sub_25887BBC0(0, &qword_27F960CB8, sub_25887BC24, v33);
  v36 = swift_initStackObject();
  *(v36 + 16) = v101;
  v37 = *MEMORY[0x277D74430];
  *(v36 + 32) = *MEMORY[0x277D74430];
  *(v36 + 40) = *MEMORY[0x277D74420];
  v38 = v35;
  v39 = v37;
  v40 = sub_2588638C8(v36);
  swift_setDeallocating();
  sub_25887BC94(v36 + 32, sub_25887BC24);
  sub_25887BCF4();
  *(inited + 64) = v41;
  *(inited + 40) = v40;
  sub_2588639AC(inited);
  swift_setDeallocating();
  sub_25887BC94(inited + 32, sub_258863B5C);
  type metadata accessor for AttributeName(0);
  sub_25887BDA0(&qword_27F95D650, type metadata accessor for AttributeName);
  v42 = sub_2588BD758();

  v43 = [v32 fontDescriptorByAddingAttributes_];

  v97 = objc_opt_self();
  *&v101 = v43;
  v44 = [v97 fontWithDescriptor:v43 size:0.0];
  v96 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_titleFont;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_titleFont] = v44;
  v45 = [objc_opt_self() configurationWithFont_];
  v46 = sub_2588BD868();
  v47 = [objc_opt_self() systemImageNamed:v46 withConfiguration:v45];

  v48 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v98 = v47;
  v49 = [v48 initWithImage_];
  v50 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_imageView;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_imageView] = v49;
  v100 = v45;
  [v49 setPreferredSymbolConfiguration_];
  v51 = *&v5[v50];
  sub_25878E130(0, &qword_27F960CD0, 0x277D75348);
  v52 = qword_27F95D160;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  swift_retain_n();
  v54 = sub_2588BDCA8();
  [v53 setTintColor_];

  [*&v5[v50] setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v55) = 1148846080;
  [*&v5[v50] setContentHuggingPriority:0 forAxis:v55];
  LODWORD(v56) = 1148846080;
  [*&v5[v50] setContentHuggingPriority:1 forAxis:v56];
  LODWORD(v57) = 1148846080;
  [*&v5[v50] setContentCompressionResistancePriority:0 forAxis:v57];
  LODWORD(v58) = 1148846080;
  [*&v5[v50] setContentCompressionResistancePriority:1 forAxis:v58];
  v59 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v60 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_textLabel;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_textLabel] = v59;
  v61 = v99;
  v62 = *&v5[v99];
  v63 = v59;
  v64 = v62;
  sub_25888D148();

  v65 = sub_2588BD868();

  [v63 setText_];

  [*&v5[v60] setFont_];
  v66 = *&v5[v60];
  v67 = sub_2588BDCA8();
  [v66 setTextColor_];

  [*&v5[v60] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v5[v60] setAdjustsFontForContentSizeCategory_];
  v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_showDateUpdated] = v102 & 1;
  v68 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v69 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_dateUpdatedLabel;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_dateUpdatedLabel] = v68;
  v70 = OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_dateSaved;
  v71 = *&v5[v61];
  v72 = v68;
  v73 = v71;
  sub_2587BCA74(v71 + v70);
  v75 = v74;

  if (v75)
  {
    v76 = sub_2588BD868();
  }

  else
  {
    v76 = 0;
  }

  [v72 setText_];

  v77 = *MEMORY[0x277D76968];
  v78 = *&v5[v69];
  v79 = [v97 preferredFontForTextStyle_];
  [v78 setFont_];

  v80 = *&v5[v69];
  v81 = objc_opt_self();
  v82 = v80;
  v83 = [v81 labelColor];
  [v82 setTextColor_];

  [*&v5[v69] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v5[v69] setAdjustsFontForContentSizeCategory_];
  sub_258876180();
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_2588BFD30;
  v85 = *&v5[v50];
  v86 = *&v5[v60];
  *(v84 + 32) = v85;
  *(v84 + 40) = v86;
  v87 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_25878E130(0, &qword_27F960CD8, 0x277D75D18);
  v88 = v85;
  v89 = v86;
  v90 = sub_2588BD9A8();

  v91 = [v87 initWithArrangedSubviews_];

  v92 = OBJC_IVAR___MIUIMedicalIDNavigationBarView_stackView;
  *&v5[OBJC_IVAR___MIUIMedicalIDNavigationBarView_stackView] = v91;
  [v91 setAxis_];
  [*&v5[v92] setSpacing_];
  [*&v5[v92] setAlignment_];
  [*&v5[v92] setTranslatesAutoresizingMaskIntoConstraints_];
  v107.receiver = v5;
  v107.super_class = MIUIMedicalIDNavigationBarView;
  v93 = objc_msgSendSuper2(&v107, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_258879F48();

  v103(v106, v105);
  return v93;
}

void sub_25887BBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25887BC24()
{
  if (!qword_27F960CC0)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960CC0);
    }
  }
}

uint64_t sub_25887BC94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25887BCF4()
{
  if (!qword_27F960CC8)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_25887BDA0(&qword_27F95D640, type metadata accessor for TraitKey);
    v0 = sub_2588BD778();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960CC8);
    }
  }
}

uint64_t sub_25887BDA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25887BDE8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_25887BE18()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_25887BE48()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_25887BE78()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_25887BEA8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = *a1;
  v5 = [*a1 allergyInfo];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v35 = v8;
    v36 = v7;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  if (qword_27F95D140 != -1)
  {
    swift_once();
  }

  v9 = qword_27F9698E0;
  v33 = qword_27F9698D8;
  v10 = sub_2588BD858();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = v9;

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v12 = qword_27F95DA88;
  v13 = sub_2588BBAC8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v12;
  sub_2588BBAB8();
  v16 = sub_2588BD8B8();
  v18 = v17;
  v19 = [v32 allergiesListVersion];
  if (v19)
  {

    MEMORY[0x28223BE20](v20);
    v21 = sub_2588BD7E8();
    MEMORY[0x28223BE20](v21);
    v22 = v15;
    sub_2588BBAB8();
    v23 = sub_2588BD8B8();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = sub_2588BD9A8();
  v27 = HKUIJoinStringsForAutomationIdentifier();

  if (v27)
  {
    v28 = sub_2588BD8A8();
    v30 = v29;
  }

  else
  {
    v30 = 0xEC0000007365746FLL;
    v28 = 0x4E6C61636964654DLL;
  }

  result = sub_25887C218(a1);
  *a4 = v16;
  a4[1] = v18;
  a4[2] = v36;
  a4[3] = v35;
  a4[4] = a2;
  a4[5] = a3;
  a4[6] = v33;
  a4[7] = v34;
  a4[8] = v23;
  a4[9] = v25;
  a4[10] = v28;
  a4[11] = v30;
  return result;
}

uint64_t sub_25887C218(uint64_t a1)
{
  v2 = type metadata accessor for MedicalIDMedicalInfoViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25887C284@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (qword_27F95D148 != -1)
  {
    swift_once();
  }

  v5 = 0xD000000000000011;
  v6 = qword_27F9698F0;
  v35 = qword_27F9698E8;
  v7 = sub_2588BD858();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = v6;

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v9 = qword_27F95DA88;
  v10 = sub_2588BBAC8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v9;
  sub_2588BBAB8();
  v13 = sub_2588BD8B8();
  v33 = v14;
  v34 = v13;
  v15 = *a1;
  v16 = [*a1 medicalConditions];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2588BD8A8();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [v15 conditionsListVersion];
  if (v21)
  {

    MEMORY[0x28223BE20](v22);
    v23 = sub_2588BD7E8();
    MEMORY[0x28223BE20](v23);
    v24 = v12;
    sub_2588BBAB8();
    v25 = sub_2588BD8B8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = sub_2588BD9A8();
  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {
    v5 = sub_2588BD8A8();
    v31 = v30;
  }

  else
  {
    v31 = 0x80000002588C8AB0;
  }

  result = sub_25887C218(a1);
  *a4 = v34;
  a4[1] = v33;
  a4[2] = v18;
  a4[3] = v20;
  a4[4] = a2;
  a4[5] = a3;
  a4[6] = v35;
  a4[7] = v36;
  a4[8] = v25;
  a4[9] = v27;
  a4[10] = v5;
  a4[11] = v31;
  return result;
}

uint64_t sub_25887C604@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = *a1;
  v5 = [*a1 medicationInfo];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v35 = v8;
    v36 = v7;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v9 = qword_27F969840;
  v33 = qword_27F969838;
  v10 = sub_2588BD858();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = v9;

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v12 = qword_27F95DA88;
  v13 = sub_2588BBAC8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v12;
  sub_2588BBAB8();
  v16 = sub_2588BD8B8();
  v18 = v17;
  v19 = [v32 medicationsListVersion];
  if (v19)
  {

    MEMORY[0x28223BE20](v20);
    v21 = sub_2588BD7E8();
    MEMORY[0x28223BE20](v21);
    v22 = v15;
    sub_2588BBAB8();
    v23 = sub_2588BD8B8();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = sub_2588BD9A8();
  v27 = HKUIJoinStringsForAutomationIdentifier();

  if (v27)
  {
    v28 = sub_2588BD8A8();
    v30 = v29;
  }

  else
  {
    v30 = 0xEC0000007365746FLL;
    v28 = 0x4E6C61636964654DLL;
  }

  result = sub_25887C218(a1);
  *a4 = v16;
  a4[1] = v18;
  a4[2] = v36;
  a4[3] = v35;
  a4[4] = a2;
  a4[5] = a3;
  a4[6] = v33;
  a4[7] = v34;
  a4[8] = v23;
  a4[9] = v25;
  a4[10] = v28;
  a4[11] = v30;
  return result;
}

double sub_25887C984@<D0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v32 = a2;
  *(&v32 + 1) = a3;
  v5 = [*a1 medicalNotes];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2588BD8A8();
    v29 = v8;
    v30 = v7;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  if (qword_27F95D150 != -1)
  {
    swift_once();
  }

  v9 = qword_27F9698F8;
  v10 = qword_27F969900;
  v11 = sub_2588BD858();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);

  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v13 = qword_27F95DA88;
  v14 = sub_2588BBAC8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v13;
  sub_2588BBAB8();
  v17 = sub_2588BD8B8();
  v19 = v18;
  v20 = sub_2588BD9A8();
  v21 = HKUIJoinStringsForAutomationIdentifier();

  if (v21)
  {
    v22 = sub_2588BD8A8();
    v24 = v23;
  }

  else
  {
    v24 = 0xEC0000007365746FLL;
    v22 = 0x4E6C61636964654DLL;
  }

  sub_25887C218(a1);
  *&v34 = v17;
  *(&v34 + 1) = v19;
  *&v35 = v30;
  *(&v35 + 1) = v29;
  v36 = v32;
  *&v37 = v9;
  *(&v37 + 1) = v10;
  v38 = 0uLL;
  *&v39 = v22;
  *(&v39 + 1) = v24;
  v40[0] = v17;
  v40[1] = v19;
  v40[2] = v30;
  v40[3] = v29;
  v41 = v32;
  v42 = v9;
  v43 = v10;
  v44 = 0;
  v45 = 0;
  v46 = v22;
  v47 = v24;
  sub_25887CC48(&v34, &v33);
  sub_25887CC80(v40);
  v25 = v37;
  a4[2] = v36;
  a4[3] = v25;
  v26 = v39;
  a4[4] = v38;
  a4[5] = v26;
  result = *&v34;
  v28 = v35;
  *a4 = v34;
  a4[1] = v28;
  return result;
}

uint64_t type metadata accessor for MedicalIDMedicalNotesCellView()
{
  result = qword_27F960CE8;
  if (!qword_27F960CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25887CD34()
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel();
  if (v1 <= 0x3F)
  {
    result = sub_2587B2F78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_25887CDDC@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27F95D150 != -1)
  {
    swift_once();
  }

  v4 = qword_27F9698F8;
  v3 = qword_27F969900;
  v5 = *v1;

  v6 = [v5 medicalNotes];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2588BD8A8();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for MedicalIDMedicalNotesCellView();
  v14 = *(v13 + 20);
  v15 = (v1 + *(v13 + 24));
  *&v18 = v4;
  *(&v18 + 1) = v3;
  LOBYTE(v19) = v12;
  BYTE1(v19) = 2;
  *(&v19 + 1) = *(v1 + v14);
  *&v20 = *(v1 + v14 + 8);
  *(&v20 + 1) = *v15;
  *&v21 = v15[1];
  *(&v21 + 1) = 0x4018000000000000;
  LOBYTE(v22[0]) = 1;

  sub_25887CF44(v1, v22 + 8);
  v16 = v22[1];
  a1[4] = v22[0];
  a1[5] = v16;
  a1[6] = v23[0];
  *(a1 + 105) = *(v23 + 9);
  *a1 = v18;
  a1[1] = v19;
  result = *&v20;
  a1[2] = v20;
  a1[3] = v21;
  return result;
}

double sub_25887CF44@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = [*a1 medicalNotes];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = sub_2588BD8A8();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 && (v11 = [v4 medicalNotes]) != 0)
  {
    v12 = v11;
    sub_2588BD8A8();

    v13 = (a1 + *(type metadata accessor for MedicalIDMedicalNotesCellView() + 24));
    v24 = *v13;
    v25 = v13[1];
  }

  else
  {
LABEL_7:
    v14 = sub_2588BD858();
    v15 = *(*(v14 - 8) + 64);
    MEMORY[0x28223BE20](v14 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }

    v16 = qword_27F95DA88;
    v17 = sub_2588BBAC8();
    v18 = *(*(v17 - 8) + 64);
    MEMORY[0x28223BE20](v17 - 8);
    v19 = v16;
    sub_2588BBAB8();
    sub_2588BD8B8();
    v20 = (a1 + *(type metadata accessor for MedicalIDMedicalNotesCellView() + 24));
    v22 = *v20;
    v23 = v20[1];
  }

  sub_258872EBC();
  sub_2587E836C();

  sub_2588BC778();
  result = *&v26;
  *a2 = v26;
  *(a2 + 16) = v27;
  *(a2 + 32) = v28;
  *(a2 + 48) = v29;
  return result;
}

uint64_t static LoadState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  State = type metadata accessor for LoadState();
  v10 = *(State - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](State);
  v33 = &v28 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v28 - v17;
  v19 = *(v16 + 48);
  v31 = v10;
  v20 = *(v10 + 16);
  v20(&v28 - v17, v32, State);
  v20(&v18[v19], a2, State);
  v32 = v5;
  v21 = *(v5 + 48);
  if (v21(v18, 1, a3) == 1)
  {
    v22 = 1;
    if (v21(&v18[v19], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v20(v33, v18, State);
    if (v21(&v18[v19], 1, a3) != 1)
    {
      v23 = v32;
      v24 = v29;
      (*(v32 + 32))(v29, &v18[v19], a3);
      v25 = v33;
      v22 = sub_2588BD7D8();
      v26 = *(v23 + 8);
      v26(v24, a3);
      v26(v25, a3);
LABEL_8:
      v14 = v31;
      goto LABEL_9;
    }

    (*(v32 + 8))(v33, a3);
  }

  v22 = 0;
  State = TupleTypeMetadata2;
LABEL_9:
  (*(v14 + 8))(v18, State);
  return v22 & 1;
}

uint64_t sub_25887D53C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_25887D598(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_25887D718(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

uint64_t MedicalIDDataManager.__allocating_init(medicalIDDataPublisher:medicalIDEmergencyContactProvider:shouldSaveDataToHealthDetails:saveDataToHealthStore:saveDataToMedicalIDStore:deleteDataFromMedicalIDStore:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = a2[3];
  v16 = a2[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a2, v17);
  v19 = sub_258881CDC(a1, v18, a3, a4, a5, a6, a7, a8, a9, a10, v10, v17, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v19;
}

uint64_t MedicalIDDataManager.medicalIDData.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v3 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  return sub_258881E58(v5 + v3, a1);
}

uint64_t LoadState<>.loadedValue.getter@<X0>(uint64_t a1@<X8>)
{
  sub_2587B63B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258881E58(v1, v6);
  v7 = type metadata accessor for MedicalIDData();
  if ((*(*(v7 - 1) + 48))(v6, 1, v7) != 1)
  {
    return sub_258881FC4(v6, a1);
  }

  sub_258882028(v6, sub_2587B63B8);
  v34 = MEMORY[0x28220BFC8];
  sub_258881F04(0, &qword_27F95D880, MEMORY[0x28220BFC8]);
  v36 = &v28;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = &v28 - v10;
  v11 = sub_2588BB9B8();
  v12 = *(*(v11 - 8) + 56);
  v13 = (v12)(&v28 - v10, 1, 1, v11);
  v35 = &v28;
  MEMORY[0x28223BE20](v13);
  v30 = &v28 - v10;
  v12();
  v32 = MEMORY[0x28220B6D8];
  sub_258881F04(0, &qword_27F95DA80, MEMORY[0x28220B6D8]);
  v33 = &v28;
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  v29 = &v28 - v16;
  v18 = sub_2588BB818();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  (v12)(a1 + v7[21], 1, 1, v11);
  v20 = v7[13];
  (v12)(a1 + v20, 1, 1, v11);
  v21 = v7[14];
  (v12)(a1 + v21, 1, 1, v11);
  v22 = (a1 + v7[15]);
  v23 = a1 + v7[18];
  v28 = xmmword_2588C0670;
  *v23 = xmmword_2588C0670;
  v24 = v7[19];
  v19((a1 + v24), 1, 1, v18);
  v25 = v7[20];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v26 = v34;
  sub_258881F58(v31, a1 + v20, &qword_27F95D880, v34);
  sub_258881F58(v30, a1 + v21, &qword_27F95D880, v26);
  *v22 = 0;
  v22[1] = 0;
  *(a1 + v7[16]) = 0;
  *(a1 + v7[17]) = 0;
  sub_2587C4E98(*v23, *(v23 + 8));
  *v23 = v28;
  result = sub_258881F58(v29, a1 + v24, &qword_27F95DA80, v32);
  *(a1 + v25) = 0;
  return result;
}

uint64_t _s11MedicalIDUI0A13IDDataManagerC6updateyyyAA0aC0VzScMYccYaAC11UpdateErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = v3;
  v4[10] = a3;
  v4[7] = a1;
  v4[8] = a2;
  sub_2587B63B8();
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v7 = *(*(type metadata accessor for MedicalIDData() - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  sub_2588BDA78();
  v4[13] = sub_2588BDA68();
  v9 = sub_2588BDA28();
  v4[14] = v9;
  v4[15] = v8;

  return MEMORY[0x2822009F8](sub_25887DFD4, v9, v8);
}

uint64_t sub_25887DFD4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  swift_getKeyPath();
  v0[5] = v4;
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258881E58(v4 + v6, v2);
  LoadState<>.loadedValue.getter(v1);
  sub_258882028(v2, sub_2587B63B8);
  v5(v1);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_25887E164;
  v8 = v0[12];
  v9 = v0[9];

  return sub_258880280(v8, (v0 + 6));
}

uint64_t sub_25887E164()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v8 = *v1;

  v4 = *(v2 + 112);
  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_25887E308;
  }

  else
  {
    v6 = sub_25887E274;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25887E274()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  sub_258882028(v2, type metadata accessor for MedicalIDData);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25887E308()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];

  sub_258882028(v2, type metadata accessor for MedicalIDData);
  *v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t MedicalIDDataManager.delete()()
{
  v1[3] = v0;
  v1[4] = *v0;
  sub_2588BDA78();
  v1[5] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_25887E46C, v3, v2);
}

uint64_t sub_25887E46C()
{
  v17 = v0;
  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v1 = sub_2588BBC98();
  v0[8] = __swift_project_value_buffer(v1, qword_27F969938);
  v2 = sub_2588BBC78();
  v3 = sub_2588BDBB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = sub_2588BE0E8();
    v9 = sub_258790224(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_25878B000, v2, v3, "[%s]: Removing medical id data", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C8DBE0](v6, -1, -1);
    MEMORY[0x259C8DBE0](v5, -1, -1);
  }

  v10 = (v0[3] + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_deleteDataFromMedicalIDStore);
  v11 = v10[1];
  v15 = (*v10 + **v10);
  v12 = (*v10)[1];
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_25887E694;

  return v15();
}

uint64_t sub_25887E694(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = *(v4 + 48);
    v8 = *(v4 + 56);
    v9 = sub_25887EA80;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v7 = *(v4 + 48);
    v8 = *(v4 + 56);
    v9 = sub_25887E7C0;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_25887E7C0()
{
  v28 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);

  v3 = *(v0 + 64);
  if (v1 == 1)
  {
    v4 = sub_2588BBC78();
    v5 = sub_2588BDBB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27 = v8;
      *v7 = 136315138;
      v9 = sub_2588BE0E8();
      v11 = sub_258790224(v9, v10, &v27);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_25878B000, v4, v5, "[%s]: Removed medical id data", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x259C8DBE0](v8, -1, -1);
      MEMORY[0x259C8DBE0](v7, -1, -1);
    }
  }

  else
  {
    v12 = 0;
    v13 = sub_2588BBC78();
    v14 = sub_2588BDBD8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v16 = 136315394;
      v18 = sub_2588BE0E8();
      v20 = sub_258790224(v18, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v0 + 16) = 0;
      v21 = 0;
      sub_258881F04(0, &qword_27F960D90, sub_25878D8F4);
      v22 = sub_2588BD8C8();
      v24 = sub_258790224(v22, v23, &v27);

      *(v16 + 14) = v24;
      _os_log_impl(&dword_25878B000, v13, v14, "[%s]: Failed to remove medical id data: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C8DBE0](v17, -1, -1);
      MEMORY[0x259C8DBE0](v16, -1, -1);
    }

    else
    {
    }
  }

  v25 = *(v0 + 8);

  return v25(v1);
}

uint64_t sub_25887EA80()
{
  v20 = v0;
  v1 = v0[10];
  v2 = v0[5];

  v3 = v0[8];
  v4 = v1;
  v5 = sub_2588BBC78();
  v6 = sub_2588BDBD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v10 = sub_2588BE0E8();
    v12 = sub_258790224(v10, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[2] = v1;
    v13 = v1;
    sub_258881F04(0, &qword_27F960D90, sub_25878D8F4);
    v14 = sub_2588BD8C8();
    v16 = sub_258790224(v14, v15, &v19);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_25878B000, v5, v6, "[%s]: Failed to remove medical id data: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v9, -1, -1);
    MEMORY[0x259C8DBE0](v8, -1, -1);
  }

  else
  {
  }

  v17 = v0[1];

  return v17(0);
}

id MedicalIDDataManager.hkMedicalIDData.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25887ECB0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;

  return sub_25887ED14(v5);
}

uint64_t sub_25887ED14(void *a1)
{
  sub_258881F04(0, &qword_27F95D830, MEMORY[0x277D85720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v126 = v95 - v5;
  sub_2587B63B8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = v1;
  v10 = *(v1 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider + 24);
  v11 = *(v1 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider), v10);
  v125 = (*(v11 + 8))(a1, v10, v11);
  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    v14 = sub_2588BD8A8();
    v123 = v15;
    v124 = v14;
  }

  else
  {
    v123 = 0;
    v124 = 0;
  }

  v16 = [a1 medicalConditions];
  if (v16)
  {
    v17 = v16;
    v18 = sub_2588BD8A8();
    v121 = v19;
    v122 = v18;
  }

  else
  {
    v121 = 0;
    v122 = 0;
  }

  v20 = [a1 allergyInfo];
  if (v20)
  {
    v21 = v20;
    v22 = sub_2588BD8A8();
    v119 = v23;
    v120 = v22;
  }

  else
  {
    v119 = 0;
    v120 = 0;
  }

  v24 = [a1 medicalNotes];
  if (v24)
  {
    v25 = v24;
    v26 = sub_2588BD8A8();
    v117 = v27;
    v118 = v26;
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  v28 = [a1 medicationInfo];
  if (v28)
  {
    v29 = v28;
    v30 = sub_2588BD8A8();
    v115 = v31;
    v116 = v30;
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v113 = [a1 bloodType];
  v112 = [a1 height];
  v111 = [a1 weight];
  v32 = [a1 pregnancyStartDate];
  sub_258881F04(0, &qword_27F95D880, MEMORY[0x28220BFC8]);
  v114 = v95;
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = v95 - v35;
  if (v32)
  {
    sub_2588BB988();

    v37 = sub_2588BB9B8();
    (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  }

  else
  {
    v38 = sub_2588BB9B8();
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
  }

  v39 = [a1 pregnancyEstimatedDueDate];
  v109 = v95;
  v40 = MEMORY[0x28223BE20](v39);
  if (v40)
  {
    v41 = v40;
    sub_2588BB988();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = sub_2588BB9B8();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v105 = v44 + 56;
  v45(v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v42, 1, v43);
  v46 = [a1 primaryLanguageCode];
  if (v46)
  {
    v47 = v46;
    v107 = sub_2588BD8A8();
    v106 = v48;
  }

  else
  {
    v107 = 0;
    v106 = 0;
  }

  v104 = [a1 isDisabled];
  v103 = [a1 shareDuringEmergency];
  v49 = [a1 pictureData];
  if (v49)
  {
    v50 = v49;
    v102 = sub_2588BB908();
    v101 = v51;
  }

  else
  {
    v102 = 0;
    v101 = 0xF000000000000000;
  }

  v52 = [a1 gregorianBirthday];
  sub_258881F04(0, &qword_27F95DA80, MEMORY[0x28220B6D8]);
  v100 = v95;
  v54 = (*(*(v53 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53 - 8);
  v56 = v95 - v55;
  v110 = v36;
  if (v52)
  {
    sub_2588BB778();

    v57 = 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = sub_2588BB818();
  v59 = *(v58 - 8);
  v60 = *(v59 + 56);
  v61 = 1;
  v99 = v56;
  v96 = v60;
  v95[1] = v59 + 56;
  v60(v56, v57, 1, v58);
  v98 = [a1 isOrganDonor];
  v62 = [a1 dateSaved];
  v97 = v95;
  v63 = MEMORY[0x28223BE20](v62);
  v64 = v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v64;
  if (v63)
  {
    sub_2588BB988();

    v61 = 0;
  }

  v45(v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v61, 1, v43);
  v65 = type metadata accessor for MedicalIDData();
  v66 = v65[13];
  v45(v9 + v66, 1, 1, v43);
  v67 = v45;
  v68 = v65[14];
  v67(v9 + v68, 1, 1, v43);
  v69 = (v9 + v65[15]);
  v70 = v9 + v65[18];
  *v70 = xmmword_2588C0670;
  v71 = v65[19];
  v96(v9 + v71, 1, 1, v58);
  v105 = v65[20];
  v72 = v123;
  *v9 = v124;
  v9[1] = v72;
  v74 = v121;
  v73 = v122;
  v9[2] = v125;
  v9[3] = v73;
  v76 = v119;
  v75 = v120;
  v9[4] = v74;
  v9[5] = v75;
  v78 = v117;
  v77 = v118;
  v9[6] = v76;
  v9[7] = v77;
  v80 = v115;
  v79 = v116;
  v9[8] = v78;
  v9[9] = v79;
  v82 = v112;
  v81 = v113;
  v9[10] = v80;
  v9[11] = v81;
  v83 = v110;
  v84 = v111;
  v9[12] = v82;
  v9[13] = v84;
  v85 = MEMORY[0x28220BFC8];
  sub_258881F58(v83, v9 + v66, &qword_27F95D880, MEMORY[0x28220BFC8]);
  sub_258881F58(v108, v9 + v68, &qword_27F95D880, v85);
  v86 = v106;
  *v69 = v107;
  v69[1] = v86;
  *(v9 + v65[16]) = v104;
  *(v9 + v65[17]) = v103;
  sub_2587C4E98(*v70, *(v70 + 1));
  v87 = v101;
  *v70 = v102;
  *(v70 + 1) = v87;
  sub_258881F58(v99, v9 + v71, &qword_27F95DA80, MEMORY[0x28220B6D8]);
  *(v9 + v105) = v98;
  sub_2587E8EE8(v64, v9 + v65[21]);
  (*(*(v65 - 1) + 56))(v9, 0, 1, v65);
  v88 = v127;
  sub_25887F7D4(v9);
  v89 = sub_2588BDAA8();
  v90 = v126;
  (*(*(v89 - 8) + 56))(v126, 1, 1, v89);
  sub_2588BDA78();

  v91 = sub_2588BDA68();
  v92 = swift_allocObject();
  v93 = MEMORY[0x277D85700];
  v92[2] = v91;
  v92[3] = v93;
  v92[4] = v88;
  sub_2587AC0D4(0, 0, v90, &unk_2588C7558, v92);
}

uint64_t sub_25887F680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  return sub_258881E58(v3 + v4, a2);
}

uint64_t sub_25887F748(uint64_t a1, uint64_t *a2)
{
  sub_2587B63B8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258881E58(a1, v7);
  v8 = *a2;
  return sub_25887F7D4(v7);
}

uint64_t sub_25887F7D4(uint64_t a1)
{
  sub_2587B63B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258881E58(v1 + v7, v6);
  v8 = sub_258882344(v6, a1);
  sub_258882028(v6, sub_2587B63B8);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    sub_2588BBB88();
  }

  else
  {
    swift_beginAccess();
    sub_2588825E0(a1, v1 + v7);
    swift_endAccess();
  }

  return sub_258882028(a1, sub_2587B63B8);
}

uint64_t sub_25887F9B0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_2588825E0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_25887FA1C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v1 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_25887FADC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_25887FBA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_258881728(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
    sub_2588BBB88();
  }
}

uint64_t sub_25887FCF4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

uint64_t MedicalIDDataManager.init(medicalIDDataPublisher:medicalIDEmergencyContactProvider:shouldSaveDataToHealthDetails:saveDataToHealthStore:saveDataToMedicalIDStore:deleteDataFromMedicalIDStore:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25 = a5;
  v26 = a7;
  v24[0] = a3;
  v16 = a2[3];
  v15 = a2[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a2, v16);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_258881B20(a1, v20, v24[0], a4, v25, a6, v26, a8, a9, a10, v24[1], v16, v15);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v22;
}

uint64_t sub_25887FED4(uint64_t a1)
{
  v2 = v1;
  sub_2588826C4();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  sub_258882758();
  sub_258881EBC(&qword_27F960DE8, sub_258882758);
  v12 = sub_2588BBD98();
  sub_258881EBC(&qword_27F95D820, sub_2587AAC58);
  sub_2588BBDA8();

  sub_258881EBC(&qword_27F960DF0, sub_2588826C4);

  sub_2588BBDB8();

  (*(v6 + 8))(v9, v5);
  swift_getKeyPath();
  v12 = v2;
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v12 = v2;
  swift_getKeyPath();
  sub_2588BBBB8();

  swift_beginAccess();
  sub_2588BBCE8();
  swift_endAccess();

  v12 = v2;
  swift_getKeyPath();
  sub_2588BBBA8();
}

void sub_2588801D0(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    if (v3 == 1)
    {
      return;
    }

    v4 = *a1;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CCDDF0]) init];
  }

  swift_beginAccess();
  v5 = *(a2 + 16);
  *(a2 + 16) = v4;
  sub_2587AE658(v3);
  sub_2587AE658(v3);
  v6 = v4;

  sub_25887ED14(v6);
  sub_2588827E4(v3);
}

uint64_t sub_258880280(uint64_t a1, uint64_t a2)
{
  v3[7] = v2;
  v3[8] = a2;
  v3[6] = a1;
  v3[9] = *v2;
  sub_2588BDA78();
  v3[10] = sub_2588BDA68();
  v5 = sub_2588BDA28();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_258880344, v5, v4);
}

uint64_t sub_258880344()
{
  v1 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = _HKMedicalIDData.typedCopy.getter();
  v0[13] = v4;

  v5 = v1[1];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = *v1;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    v8 = sub_2588BD868();
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

  v9 = v0[6];
  [v4 setName_];

  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v78 = MEMORY[0x277D84F90];
    sub_2588BDE68();
    v12 = (v10 + 32);
    do
    {
      v83 = v12[4];
      v84 = v12[5];
      v85 = v12[6];
      v86 = v12[7];
      v79 = *v12;
      v80 = v12[1];
      v81 = v12[2];
      v82 = v12[3];
      v13 = sub_2587D294C();
      sub_2588BDE38();
      v14 = *(v78 + 16);
      sub_2588BDE78();
      sub_2588BDE88();
      sub_2588BDE48();
      v12 += 8;
      --v11;
    }

    while (v11);
  }

  v15 = v0[6];
  sub_25878E130(0, &qword_280C0DE00, 0x277CCDDA0);
  v16 = sub_2588BD9A8();

  [v4 setEmergencyContacts_];

  if (*(v15 + 32))
  {
    v17 = *(v0[6] + 24);
    v18 = sub_2588BD868();
  }

  else
  {
    v18 = 0;
  }

  v19 = v0[6];
  [v4 setMedicalConditions_];

  v20 = *(v19 + 48);
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = *(v19 + 40);
  v22 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v22 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    v23 = sub_2588BD868();
  }

  else
  {
LABEL_18:
    v23 = 0;
  }

  v24 = v0[6];
  [v4 setAllergyInfo_];

  v25 = *(v24 + 64);
  if (!v25)
  {
    goto LABEL_24;
  }

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(v24 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = *(v24 + 64);

    v28 = sub_2588BD868();
  }

  else
  {
LABEL_24:
    v28 = 0;
  }

  v29 = v0[6];
  [v4 setMedicalNotes_];

  v30 = *(v29 + 80);
  v75 = v2;
  if (!v30)
  {
    goto LABEL_30;
  }

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(v29 + 72) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {

    v32 = sub_2588BD868();
  }

  else
  {
LABEL_30:
    v32 = 0;
  }

  v33 = v0[6];
  [v4 setMedicationInfo_];

  [v4 setBloodType_];
  [v4 setHeight_];
  v77 = v4;
  [v4 setWeight_];
  v34 = type metadata accessor for MedicalIDData();
  v35 = v34[13];
  v36 = MEMORY[0x28220BFC8];
  sub_258881F04(0, &qword_27F95D880, MEMORY[0x28220BFC8]);
  v38 = *(*(v37 - 8) + 64) + 15;
  v39 = swift_task_alloc();
  sub_2588827F4(v33 + v35, v39, &qword_27F95D880, v36);
  v40 = sub_2588BB9B8();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = 0;
  if (v42(v39, 1, v40) != 1)
  {
    v43 = sub_2588BB958();
    (*(v41 + 8))(v39, v40);
  }

  v44 = v0[6];

  [v77 setPregnancyStartDate_];

  v45 = v34[14];
  v46 = swift_task_alloc();
  sub_2588827F4(v44 + v45, v46, &qword_27F95D880, MEMORY[0x28220BFC8]);
  if (v42(v46, 1, v40) == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = sub_2588BB958();
    (*(v41 + 8))(v46, v40);
  }

  v48 = v0[6];

  [v77 setPregnancyEstimatedDueDate_];

  v49 = (v48 + v34[15]);
  if (v49[1])
  {
    v50 = *v49;
    v51 = sub_2588BD868();
  }

  else
  {
    v51 = 0;
  }

  v52 = v0[6];
  [v77 setPrimaryLanguageCode_];

  [v77 setIsDisabled_];
  [v77 setShareDuringEmergency_];
  v53 = (v52 + v34[18]);
  if (v53[1] >> 60 == 15)
  {
    v54 = 0;
  }

  else
  {
    v55 = *v53;
    v54 = sub_2588BB8F8();
  }

  v56 = v0[6];
  [v77 setPictureData_];

  v57 = v34[19];
  v58 = MEMORY[0x28220B6D8];
  sub_258881F04(0, &qword_27F95DA80, MEMORY[0x28220B6D8]);
  v60 = *(*(v59 - 8) + 64) + 15;
  v61 = swift_task_alloc();
  sub_2588827F4(v56 + v57, v61, &qword_27F95DA80, v58);
  v62 = sub_2588BB818();
  v63 = *(v62 - 8);
  v64 = 0;
  if ((*(v63 + 48))(v61, 1, v62) != 1)
  {
    v64 = sub_2588BB758();
    (*(v63 + 8))(v61, v62);
  }

  v65 = v0[6];

  [v77 setGregorianBirthday_];

  [v77 setIsOrganDonor_];
  sub_25878E130(0, &qword_27F95D878, 0x277D82BB8);
  v66 = *(v75 + 16);
  v67 = sub_2588BDCD8();

  if (v67)
  {
    v68 = v0[10];

    v69 = v0[1];

    return v69();
  }

  else
  {
    v71 = (v0[7] + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToMedicalIDStore);
    v72 = v71[1];
    v76 = (*v71 + **v71);
    v73 = (*v71)[1];
    v74 = swift_task_alloc();
    v0[14] = v74;
    *v74 = v0;
    v74[1] = sub_258880B9C;

    return v76(v77);
  }
}

uint64_t sub_258880B9C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = *(v4 + 88);
    v8 = *(v4 + 96);
    v9 = sub_258880F1C;
  }

  else
  {
    *(v4 + 128) = a1 & 1;
    v7 = *(v4 + 88);
    v8 = *(v4 + 96);
    v9 = sub_258880CC8;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_258880CC8()
{
  v26 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);

  if (v1 == 1)
  {
    v4 = *(v0 + 56) + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_shouldSaveDataToHealthDetails;
    v5 = *(v4 + 8);
    if ((*v4)(v3))
    {
      v6 = *(v0 + 56) + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToHealthStore;
      v7 = *(v6 + 8);
      (*v6)(*(v0 + 104));
    }

    v8 = *(v0 + 104);
    v9 = *(v0 + 56);
    v10 = *(v9 + 16);
    *(v9 + 16) = v8;
    v11 = v8;

    sub_25887ED14(v11);
  }

  else
  {
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v12 = sub_2588BBC98();
    __swift_project_value_buffer(v12, qword_27F969938);
    v13 = 0;
    v14 = sub_2588BBC78();
    v15 = sub_2588BDBD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 72);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v17 = 136315394;
      v20 = sub_2588BE0E8();
      v22 = sub_258790224(v20, v21, &v25);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      *(v17 + 14) = 0;
      *v18 = 0;
      _os_log_impl(&dword_25878B000, v14, v15, "[%s]: failed to save medical id data due to: %@", v17, 0x16u);
      sub_2587F2B40(v18);
      MEMORY[0x259C8DBE0](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x259C8DBE0](v19, -1, -1);
      MEMORY[0x259C8DBE0](v17, -1, -1);
    }

    v11 = *(v0 + 104);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_258880F1C()
{
  v22 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);

  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v3 = sub_2588BBC98();
  __swift_project_value_buffer(v3, qword_27F969938);
  v4 = v1;
  v5 = sub_2588BBC78();
  v6 = sub_2588BDBD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315394;
    v11 = sub_2588BE0E8();
    v13 = sub_258790224(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    if (v1)
    {
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v8 + 14) = v15;
    *v9 = v16;
    _os_log_impl(&dword_25878B000, v5, v6, "[%s]: failed to save medical id data due to: %@", v8, 0x16u);
    sub_2587F2B40(v9);
    MEMORY[0x259C8DBE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x259C8DBE0](v10, -1, -1);
    MEMORY[0x259C8DBE0](v8, -1, -1);
  }

  if (v1)
  {
    v17 = *(v0 + 104);
    **(v0 + 64) = v1;
    *(v0 + 40) = v1;
    v18 = v1;
    sub_2587CE078();
    swift_willThrowTypedImpl();
  }

  else
  {
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t MedicalIDDataManager.deinit()
{
  sub_258882028(v0 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData, sub_2587B63B8);
  v1 = *(v0 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider));
  v2 = *(v0 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_shouldSaveDataToHealthDetails + 8);

  v3 = *(v0 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToMedicalIDStore + 8);

  v4 = *(v0 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToHealthStore + 8);

  v5 = *(v0 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_deleteDataFromMedicalIDStore + 8);

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager___observationRegistrar;
  v7 = sub_2588BBBD8();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t MedicalIDDataManager.__deallocating_deinit()
{
  MedicalIDDataManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2588812D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  v5 = *(*(type metadata accessor for MedicalIDData() - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  sub_2587B63B8();
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_2588BDA78();
  v4[11] = sub_2588BDA68();
  v9 = sub_2588BDA28();
  v4[12] = v9;
  v4[13] = v8;

  return MEMORY[0x2822009F8](sub_2588813C4, v9, v8);
}

uint64_t sub_2588813C4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  swift_getKeyPath();
  v0[5] = v3;
  sub_258881EBC(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager);
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258881E58(v3 + v4, v1);
  LoadState<>.loadedValue.getter(v2);
  sub_258882028(v1, sub_2587B63B8);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_258881534;
  v7 = v0[8];
  v6 = v0[9];

  return sub_258880280(v6, (v0 + 6));
}

uint64_t sub_258881534()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(v2 + 120) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
  }

  sub_258882028(v5, type metadata accessor for MedicalIDData);
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);

  return MEMORY[0x2822009F8](sub_2588816A4, v6, v7);
}

uint64_t sub_2588816A4()
{
  v1 = *(v0 + 88);

  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  **(v0 + 56) = *(v0 + 120) != 0;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_258881728(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_2588BBCF8();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_27F960DF8;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_258881EBC(&qword_27F960DF8, MEMORY[0x277CBCDA8]);

          v22 = sub_2588BD788();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_258881EBC(qword_27F960E00, MEMORY[0x277CBCDA8]);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (sub_2588BD7D8())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &qword_27F960DF8;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_258881A1C(v8, v7);
}

uint64_t sub_258881A1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_2588BDD68();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_2588BDD88();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258881B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29[3] = a12;
  v29[4] = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a2, a12);
  *(a11 + 16) = [objc_allocWithZone(MEMORY[0x277CCDDF0]) init];
  *(a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__subscriptions) = MEMORY[0x277D84FA0];
  sub_2588BBBC8();
  sub_2587B6C14(v29, a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_medicalIDEmergencyContactProvider);
  v20 = (a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_shouldSaveDataToHealthDetails);
  *v20 = a3;
  v20[1] = a4;
  v21 = (a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToHealthStore);
  *v21 = a5;
  v21[1] = a6;
  v22 = (a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_saveDataToMedicalIDStore);
  *v22 = a7;
  v22[1] = a8;
  v23 = (a11 + OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager_deleteDataFromMedicalIDStore);
  *v23 = a9;
  v23[1] = a10;
  v24 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  v25 = type metadata accessor for MedicalIDData();
  (*(*(v25 - 8) + 56))(a11 + v24, 1, 1, v25);

  sub_25887FED4(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return a11;
}

uint64_t sub_258881CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a7;
  v30 = a8;
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v16 = *(a12 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](a11);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 48);
  v22 = *(v18 + 52);
  v23 = swift_allocObject();
  (*(v16 + 16))(v20, a2, a12);
  return sub_258881B20(a1, v20, a3, v26, v27, v28, v29, v30, a9, a10, v23, a12, a13);
}

uint64_t type metadata accessor for MedicalIDDataManager()
{
  result = qword_27F960DC0;
  if (!qword_27F960DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258881E58(uint64_t a1, uint64_t a2)
{
  sub_2587B63B8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258881EBC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258881F04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_258881F58(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_258881F04(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_258881FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258882028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258882090()
{
  sub_2587B63B8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_2588BBBD8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2588821D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_258882230(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_258882290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2587AE310;

  return sub_2588812D4(a1, v4, v5, v6);
}

uint64_t sub_258882344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDData();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587B63B8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258882660();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 56);
  sub_258881E58(a1, v17);
  sub_258881E58(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_258881E58(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_258881FC4(&v17[v18], v8);
      v21 = _s11MedicalIDUI0A6IDDataV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_258882028(v8, type metadata accessor for MedicalIDData);
      sub_258882028(v12, type metadata accessor for MedicalIDData);
      sub_258882028(v17, sub_2587B63B8);
      v20 = !v21;
      return v20 & 1;
    }

    sub_258882028(v12, type metadata accessor for MedicalIDData);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_258882028(v17, sub_258882660);
    v20 = 1;
    return v20 & 1;
  }

  sub_258882028(v17, sub_2587B63B8);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2588825E0(uint64_t a1, uint64_t a2)
{
  sub_2587B63B8();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_258882660()
{
  if (!qword_27F960DD0)
  {
    sub_2587B63B8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960DD0);
    }
  }
}

void sub_2588826C4()
{
  if (!qword_27F960DD8)
  {
    sub_258882758();
    sub_258881EBC(&qword_27F960DE8, sub_258882758);
    v0 = sub_2588BBCA8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960DD8);
    }
  }
}

void sub_258882758()
{
  if (!qword_27F960DE0)
  {
    sub_2587AAC58();
    v0 = sub_2588BBCD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960DE0);
    }
  }
}

void sub_2588827E4(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_2588827F4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_258881F04(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_258882868(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_2588BDA08();
  if (v2 <= 0x3F)
  {
    sub_2588BD488();
    if (v3 <= 0x3F)
    {
      sub_2588BDCE8();
      if (v4 <= 0x3F)
      {
        sub_258883224(319, &qword_27F960E88, sub_2587AA704, MEMORY[0x277CDF468]);
        if (v5 <= 0x3F)
        {
          sub_258883224(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
          if (v6 <= 0x3F)
          {
            sub_258883224(319, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);
            if (v7 <= 0x3F)
            {
              sub_258888BC8(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v8 <= 0x3F)
              {
                sub_2587B2F78();
                if (v9 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_258882A48(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7)
  {
    v9 = v7 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2588BB9F8();
  if (v7 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(v6 + 64);
  if (v7)
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = v12 + 1;
  }

  v14 = *(v10 - 8);
  if (v9 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v9;
  }

  v16 = *(v10 - 8);
  v17 = *(v6 + 80);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (*(v14 + 84) <= v15)
  {
    v20 = v15;
  }

  else
  {
    v20 = *(v14 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v21 = v17 | 7;
  v22 = ((v17 + 16) & ~v17) + v12 + v17;
  v23 = v13 + v17;
  v24 = v18 & 0xF8 | 7;
  if (v20 < a2)
  {
    v25 = ((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + ((v24 + ((v13 + ((v23 + ((v22 + ((v17 + 40) & ~v21)) & ~v17)) & ~v17) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v24) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
    if (v25 <= 3)
    {
      v26 = ((a2 - v20 + 255) >> 8) + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *&a1[v25];
        if (*&a1[v25])
        {
          goto LABEL_35;
        }
      }

      else
      {
        v29 = *&a1[v25];
        if (v29)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v28)
    {
      v29 = a1[v25];
      if (a1[v25])
      {
LABEL_35:
        v30 = (v29 - 1) << (8 * v25);
        if (v25 <= 3)
        {
          v31 = *a1;
        }

        else
        {
          v30 = 0;
          v31 = *a1;
        }

        return v20 + (v31 | v30) + 1;
      }
    }
  }

  if ((v20 & 0x80000000) == 0)
  {
    v32 = *(a1 + 1);
    if (v32 >= 0xFFFFFFFF)
    {
      LODWORD(v32) = -1;
    }

    return (v32 + 1);
  }

  v34 = ~v17;
  v35 = (((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v21 + 8) & ~v21;
  if (v7 == v20)
  {
    v36 = *(v6 + 48);

    return v36((v17 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v34, v7, v5);
  }

  v37 = (v22 + v35) & v34;
  if (v9 == v20)
  {
    if (v7 >= 2)
    {
      v40 = (*(v6 + 48))(v37, v7, v5, v16);
      if (v40 >= 2)
      {
        return v40 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v38 = *(v16 + 48);
  v39 = (v24 + ((v13 + ((v23 + v37) & v34) + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v24;

  return v38(v39);
}

void sub_258882DBC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v46 = *(a4 + 16);
  v7 = *(v46 - 8);
  v47 = v7;
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_2588BB9F8();
  v12 = 0;
  if (v8 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v9;
  }

  v14 = *(v7 + 64);
  if (v8)
  {
    v15 = *(v7 + 64);
  }

  else
  {
    v15 = v14 + 1;
  }

  v16 = *(v11 - 8);
  if (v10 <= v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = v10;
  }

  v18 = *(v11 - 8);
  v19 = *(v7 + 80);
  v20 = *(v16 + 80);
  v21 = *(v16 + 64);
  if (*(v16 + 84) <= 0x7FFFFFFEu)
  {
    v22 = 2147483646;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  if (v17 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v17;
  }

  v24 = v19 | 7;
  v25 = ((v19 + 16) & ~v19) + v14;
  v26 = v20 & 0xF8 | 7;
  v27 = (v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = ((v27 + ((v26 + ((v15 + ((v15 + v19 + ((v25 + v19 + ((v19 + 40) & ~(v19 | 7))) & ~v19)) & ~v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 31) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v23 < a3)
  {
    if (v28 <= 3)
    {
      v29 = ((a3 - v23 + 255) >> 8) + 1;
    }

    else
    {
      v29 = 2;
    }

    if (v29 >= 0x10000)
    {
      v30 = 4;
    }

    else
    {
      v30 = 2;
    }

    if (v29 < 0x100)
    {
      v30 = 1;
    }

    if (v29 >= 2)
    {
      v12 = v30;
    }

    else
    {
      v12 = 0;
    }
  }

  if (v23 >= a2)
  {
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        *(a1 + v28) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_52;
      }

      *(a1 + v28) = 0;
    }

    else if (v12)
    {
      *(a1 + v28) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_52;
    }

    if (!a2)
    {
      return;
    }

LABEL_52:
    if ((v23 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }

    v33 = ~v19;
    v34 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + v24 + 8) & ~v24;
    if (v8 == v23)
    {
      if (v9 < a2)
      {
        if (v25 <= 3)
        {
          v36 = ~(-1 << (8 * v25));
        }

        else
        {
          v36 = -1;
        }

        if (v25)
        {
          v37 = v36 & (~v9 + a2);
          if (v25 <= 3)
          {
            v38 = v25;
          }

          else
          {
            v38 = 4;
          }

          bzero(((v34 + v24 + 8) & ~v24), v25);
          if (v38 > 2)
          {
            if (v38 == 3)
            {
              *v35 = v37;
              *(v35 + 2) = BYTE2(v37);
            }

            else
            {
              *v35 = v37;
            }
          }

          else if (v38 == 1)
          {
            *v35 = v37;
          }

          else
          {
            *v35 = v37;
          }
        }

        return;
      }

      v40 = *(v47 + 56);
      v39 = (v19 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v33;
      v41 = a2;
    }

    else
    {
      v39 = (v25 + v19 + v35) & v33;
      if (v10 != v23)
      {
        v42 = ((v26 + ((v15 + ((v15 + v19 + v39) & v33) + 7) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v26);
        if (v22 >= a2)
        {
          v45 = *(v18 + 56);

          v45(v42, a2);
        }

        else if (v27 != -8)
        {
          v43 = ~v22 + a2;
          v44 = v42;
          bzero(v42, (v27 + 8));
          *v44 = v43;
        }

        return;
      }

      if (v8 < 2)
      {
        return;
      }

      v40 = *(v47 + 56);
      v41 = (a2 + 1);
    }

    v40(v39, v41, v8, v46);
    return;
  }

  v31 = ~v23 + a2;
  bzero(a1, ((v27 + ((v26 + ((v15 + ((v15 + v19 + ((v25 + v19 + ((v19 + 40) & ~(v19 | 7))) & ~v19)) & ~v19) + 31) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v26) + 31) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v28 <= 3)
  {
    v32 = (v31 >> 8) + 1;
  }

  else
  {
    v32 = 1;
  }

  if (v28 <= 3)
  {
    *a1 = v31;
    if (v12 > 1)
    {
LABEL_40:
      if (v12 == 2)
      {
        *(a1 + v28) = v32;
      }

      else
      {
        *(a1 + v28) = v32;
      }

      return;
    }
  }

  else
  {
    *a1 = v31;
    if (v12 > 1)
    {
      goto LABEL_40;
    }
  }

  if (v12)
  {
    *(a1 + v28) = v32;
  }
}

void sub_258883224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258883288(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t (*sub_2588832CC(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 72));
  v9 = *v8;
  LODWORD(v8) = *(v8 + 16);
  v10 = v9;
  v14 = v9;
  if (v8 == 1)
  {
    sub_2587B2344(v9);
    v11 = v14;
    if (v14)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v11;
      return sub_2587AA688;
    }
  }

  else
  {

    sub_2588BDBE8();
    v13 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();
    sub_2588882FC(v10, *(&v14 + 1), 0);
    (*(v4 + 8))(v7, v3);
    v11 = v15;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_258883490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v66 = a1;
  v69 = *(a1 - 8);
  v70 = *(v69 + 64);
  v3 = MEMORY[0x28223BE20](a1);
  v68 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(v3 + 16);
  v5 = sub_2588BDA08();
  v60 = *(a1 + 32);
  v6 = *(v60 + 8);
  v7 = MEMORY[0x277CE0BD8];
  v81 = MEMORY[0x277CE0BD8];
  v82 = v72;
  v8 = MEMORY[0x277CE0BC8];
  v83 = MEMORY[0x277CE0BC8];
  v84 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_2588BCA98();
  v9 = sub_2588BC1E8();
  WitnessTable = swift_getWitnessTable();
  v81 = v5;
  v82 = v72;
  v83 = v9;
  v84 = WitnessTable;
  v85 = v6;
  v11 = sub_2588BD4D8();
  v81 = v7;
  v82 = v72;
  v83 = v8;
  v84 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470]);
  v88 = OpaqueTypeConformance2;
  v89 = v13;
  v87 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v81 = v7;
  v82 = v72;
  v83 = v11;
  v84 = v8;
  v85 = v6;
  v86 = v14;
  sub_2588BD3B8();
  v15 = sub_2588BC1E8();
  v16 = sub_2588BC318();
  v79 = swift_getWitnessTable();
  v80 = v13;
  v17 = swift_getWitnessTable();
  v81 = v15;
  v82 = v16;
  v18 = MEMORY[0x277CDDB70];
  v83 = v17;
  v84 = MEMORY[0x277CDDB70];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = sub_2588BB9F8();
  v81 = v15;
  v82 = v16;
  v83 = v17;
  v84 = v18;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_2587B2C84();
  v81 = OpaqueTypeMetadata2;
  v82 = v20;
  v83 = v21;
  v84 = v22;
  sub_2588BD378();
  sub_2588BDCE8();
  swift_getTupleTypeMetadata2();
  sub_2588BD658();
  sub_2588BD238();
  sub_258837EEC();
  v23 = sub_2588BC1E8();
  v59 = swift_getWitnessTable();
  v78 = v59;
  v24 = swift_getWitnessTable();
  v58 = v24;
  v25 = sub_25888829C(qword_27F95FA28, sub_258837EEC);
  v76 = v24;
  v77 = v25;
  v62 = swift_getWitnessTable();
  v81 = v23;
  v82 = v62;
  v63 = MEMORY[0x277CE0CA8];
  v64 = swift_getOpaqueTypeMetadata2();
  v65 = *(v64 - 8);
  v26 = *(v65 + 64);
  v27 = MEMORY[0x28223BE20](v64);
  v61 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v56 = &v56 - v29;
  v30 = swift_checkMetadataState();
  v57 = *(v30 - 8);
  v31 = *(v57 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v56 - v32;
  v34 = swift_checkMetadataState();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v56 - v37;
  v39 = v66;
  v40 = *(v66 + 40);
  v41 = v60;
  *&v42 = v60;
  *(&v42 + 1) = v40;
  v73 = v72;
  v74 = v42;
  v43 = v67;
  v75 = v67;
  swift_checkMetadataState();
  sub_2588BD228();
  sub_2587A7B40();
  sub_2588BCEB8();
  (*(v35 + 8))(v38, v34);
  v44 = v69;
  v45 = v68;
  (*(v69 + 16))(v68, v43, v39);
  v46 = v44;
  v47 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v72;
  *(v48 + 32) = v41;
  *(v48 + 40) = v40;
  (*(v46 + 32))(v48 + v47, v45, v39);
  v49 = v56;
  v50 = v62;
  sub_2588BCED8();

  (*(v57 + 8))(v33, v30);
  v81 = v30;
  v82 = v50;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v61;
  v53 = v64;
  sub_2587DCF7C(v49, v64, v51);
  v54 = *(v65 + 8);
  v54(v49, v53);
  sub_2587DCF7C(v52, v53, v51);
  return (v54)(v52, v53);
}

void sub_258883CFC(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v167 = a5;
  v170 = a4;
  v168 = a3;
  v166 = a1;
  v152 = a6;
  v8 = sub_2588BC318();
  v161 = v8;
  v146 = *(v8 - 8);
  v9 = *(v146 + 64);
  MEMORY[0x28223BE20](v8);
  v145 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2588BD488();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v151 = &v127 - v13;
  v14 = sub_2588BDA08();
  v15 = a4[1];
  v16 = MEMORY[0x277CE0BD8];
  v180 = MEMORY[0x277CE0BD8];
  v181 = a2;
  v17 = MEMORY[0x277CE0BC8];
  v182 = MEMORY[0x277CE0BC8];
  v183 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_2588BCA98();
  v18 = sub_2588BC1E8();
  WitnessTable = swift_getWitnessTable();
  v180 = v14;
  v181 = a2;
  v182 = v18;
  v183 = WitnessTable;
  v184 = v15;
  v20 = sub_2588BD4D8();
  v180 = v16;
  v181 = a2;
  v182 = v17;
  v183 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470]);
  v187 = OpaqueTypeConformance2;
  v188 = v22;
  v186 = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  v180 = v16;
  v181 = a2;
  v148 = v20;
  v182 = v20;
  v183 = v17;
  v150 = v15;
  v184 = v15;
  v185 = v23;
  v147 = v23;
  v24 = sub_2588BD3B8();
  v140 = *(v24 - 8);
  v25 = *(v140 + 64);
  MEMORY[0x28223BE20](v24);
  v149 = &v127 - v26;
  v27 = sub_2588BC1E8();
  v142 = *(v27 - 8);
  v28 = *(v142 + 64);
  MEMORY[0x28223BE20](v27);
  v139 = &v127 - v29;
  v143 = v24;
  v138 = swift_getWitnessTable();
  v179[2] = v138;
  v179[3] = v22;
  v159 = v27;
  v158 = swift_getWitnessTable();
  v180 = v27;
  v181 = v8;
  v182 = v158;
  v183 = MEMORY[0x277CDDB70];
  v157 = MEMORY[0x277CDE6E8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v144 = *(OpaqueTypeMetadata2 - 8);
  v30 = *(v144 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v141 = &v127 - v31;
  v169 = a2;
  v32 = v168;
  v180 = a2;
  v181 = v168;
  v182 = v170;
  v183 = v167;
  v33 = type metadata accessor for ExpandableWheelPickerView();
  v34 = *(v33 - 1);
  v153 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v127 - v35;
  sub_25888859C();
  v156 = v37;
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v155 = (&v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = *(v32 - 1);
  v41 = *(v163 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v165 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v164 = &v127 - v44;
  v154 = *(v34 + 16);
  v45 = v166;
  v154(v36, v166, v33);
  v46 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v47 = swift_allocObject();
  *(v47 + 2) = v169;
  *(v47 + 3) = v32;
  v48 = v167;
  *(v47 + 4) = v170;
  *(v47 + 5) = v48;
  v49 = *(v34 + 32);
  v49(v47 + v46, v36, v33);
  v162 = v33;
  v154(v36, v45, v33);
  v50 = v168;
  v51 = swift_allocObject();
  *(v51 + 2) = v169;
  *(v51 + 3) = v50;
  *(v51 + 4) = v170;
  *(v51 + 5) = v48;
  v49(v51 + v46, v36, v33);
  KeyPath = swift_getKeyPath();
  v53 = v155;
  *v155 = KeyPath;
  sub_258883224(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  v54 = v53;
  swift_storeEnumTagMultiPayload();
  v55 = v156;
  v56 = *(v156 + 52);
  v57 = *MEMORY[0x277CDF988];
  v58 = sub_2588BC1C8();
  (*(*(v58 - 8) + 104))(v54 + v56, v57, v58);
  v59 = (v54 + *(v55 + 56));
  *v59 = sub_258888AA0;
  v59[1] = v47;
  v60 = (v54 + *(v55 + 60));
  *v60 = sub_258888AB8;
  v60[1] = v51;
  v171 = v169;
  v172 = v50;
  v173 = v170;
  v174 = v48;
  v61 = v166;
  v175 = v166;
  sub_25888829C(&qword_27F960F30, sub_25888859C);
  v62 = v165;
  sub_25888F518(sub_258888B88);
  sub_258889168(v54, sub_25888859C);
  sub_2587DCF7C(v62, v50, v48);
  v63 = v163 + 8;
  v156 = *(v163 + 8);
  (v156)(v62, v50);
  v64 = sub_2588BB9F8();
  v180 = v159;
  v181 = v161;
  v182 = v158;
  v183 = MEMORY[0x277CDDB70];
  v65 = swift_getOpaqueTypeConformance2();
  v66 = sub_2587B2C84();
  v180 = OpaqueTypeMetadata2;
  v181 = v64;
  v155 = v65;
  v182 = v65;
  v183 = v66;
  v154 = v66;
  v67 = sub_2588BD378();
  v68 = sub_2588BDCE8();
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v72 = &v127 - v71;
  v73 = (v61 + *(v162 + 21));
  v74 = *v73;
  v75 = *(v73 + 1);
  LOBYTE(v180) = v74;
  v181 = v75;
  sub_258888BC8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  v76 = sub_2588BD2C8();
  v157 = v67;
  if (LOBYTE(v179[0]) != 1)
  {
    MEMORY[0x28223BE20](v76);
    v114 = &v127 - v71;
    (*(*(v67 - 8) + 56))(v114, 1, 1, v67);
    swift_getWitnessTable();
    sub_25889F124(v114, v72);
    v115 = v70;
    v116 = *(v69 + 8);
    v116(v114, v68);
LABEL_5:
    v117 = v165;
    v118 = v164;
    v119 = v168;
    v120 = (*(v163 + 16))(v165, v164, v168);
    v170 = &v127;
    v180 = v117;
    MEMORY[0x28223BE20](v120);
    v121 = &v127 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v69 + 16))(v121, v72, v68);
    v181 = v121;
    v179[0] = v119;
    v179[1] = v68;
    v177 = v167;
    v176 = swift_getWitnessTable();
    v178 = swift_getWitnessTable();
    sub_25881C7E0(&v180, 2uLL, v179);
    v116(v72, v68);
    v122 = v118;
    v123 = v156;
    (v156)(v122, v119);
    v116(v121, v68);
    v123(v117, v119);
    return;
  }

  v134 = v64;
  v136 = v69;
  v133 = &v127 - v71;
  v137 = v68;
  v153 = v63;
  v135 = &v127;
  v132 = *(v67 - 8);
  v77 = *(v132 + 64);
  v78 = MEMORY[0x28223BE20](v76);
  v128 = &v127 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = &v127;
  v131 = v79;
  MEMORY[0x28223BE20](v78);
  v130 = v80;
  v81 = &v127 - v80;
  sub_2588BC688();
  v82 = v166;
  v83 = sub_258886564(v162, v151);
  MEMORY[0x28223BE20](v83);
  v84 = v168;
  *(&v127 - 6) = v169;
  *(&v127 - 5) = v84;
  v126 = v147;
  v125 = v150;
  v124 = v148;
  v85 = v149;
  sub_2588BD398();
  sub_258888BC8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_2588BFF50;
  v87 = *(v82 + 24);
  *(v86 + 32) = *(v82 + 16);
  *(v86 + 40) = v87;
  *(v86 + 48) = 0x72656B636950;
  *(v86 + 56) = 0xE600000000000000;

  v88 = sub_2588BD9A8();

  v89 = HKUIJoinStringsForAutomationIdentifier();

  if (v89)
  {
    sub_2588BD8A8();

    v90 = v139;
    v91 = v143;
    sub_2588BCFB8();

    (*(v140 + 8))(v85, v91);
    v92 = v145;
    sub_2588BC308();
    v93 = v141;
    v94 = v159;
    v95 = v161;
    sub_2588BCE88();
    (*(v146 + 8))(v92, v95);
    v96 = (*(v142 + 8))(v90, v94);
    v97 = v134;
    v98 = *(v134 - 8);
    v99 = *(v98 + 64);
    MEMORY[0x28223BE20](v96);
    v101 = &v127 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
    v102 = *(v162 + 20);
    sub_258883224(0, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);
    sub_2588BD2C8();
    v103 = OpaqueTypeMetadata2;
    sub_2588BD018();
    (*(v98 + 8))(v101, v97);
    (*(v144 + 8))(v93, v103);
    v104 = v157;
    v105 = swift_getWitnessTable();
    v106 = v128;
    sub_2587DCF7C(v81, v104, v105);
    v107 = v132;
    v108 = *(v132 + 8);
    v109 = v108(v81, v104);
    MEMORY[0x28223BE20](v109);
    v110 = &v127 - v130;
    sub_2587DCF7C(v106, v104, v105);
    v111 = v108(v106, v104);
    MEMORY[0x28223BE20](v111);
    v112 = &v127 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v107 + 32))(v112, v110, v104);
    (*(v107 + 56))(v112, 0, 1, v104);
    v72 = v133;
    sub_25889F124(v112, v133);
    v69 = v136;
    v115 = v70;
    v116 = *(v136 + 8);
    v113 = v112;
    v68 = v137;
    v116(v113, v137);
    goto LABEL_5;
  }

  __break(1u);
}

void sub_258885080(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v83 = a5;
  v85 = a4;
  v81 = a3;
  v75 = a6;
  v84 = *(a2 - 8);
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258857D8C();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v76 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = &v74 - v15;
  sub_2587DFBD0();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v74 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v88 = &v74 - v20;
  v21 = a1[1];
  v89 = *a1;
  v90 = v21;
  v22 = sub_25878F648();

  v23 = MEMORY[0x277D837D0];
  v77 = v22;
  v24 = sub_2588BCDF8();
  v26 = v25;
  v89 = v24;
  v90 = v25;
  v28 = v27 & 1;
  LOBYTE(v91) = v27 & 1;
  v92 = v29;
  sub_258888BC8(0, &qword_280C0DDD0, v23, MEMORY[0x277D84560]);
  v82 = v30;
  v31 = swift_allocObject();
  v80 = xmmword_2588BFF50;
  *(v31 + 16) = xmmword_2588BFF50;
  v33 = a1[2];
  v32 = a1[3];
  v87 = a1;
  v78 = v32;
  v79 = v33;
  *(v31 + 32) = v33;
  *(v31 + 40) = v32;
  *(v31 + 48) = 0x656C746954;
  *(v31 + 56) = 0xE500000000000000;
  swift_bridgeObjectRetain_n();
  v34 = sub_2588BD9A8();

  v35 = HKUIJoinStringsForAutomationIdentifier();

  if (v35)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v24, v26, v28);

    v89 = a2;
    v90 = v81;
    v36 = v85;
    v91 = v85;
    v92 = v83;
    v37 = type metadata accessor for ExpandableWheelPickerView();
    v38 = *(v37 + 60);
    v83 = v37;
    v39 = *(v37 + 16);
    v40 = sub_2588BD488();
    MEMORY[0x259C8C5A0](v40);
    v41 = (*(v36 + 24))(a2, v36);
    v43 = v42;
    (*(v84 + 8))(v10, a2);
    v89 = v41;
    v90 = v43;
    v44 = sub_2588BCDF8();
    v46 = v45;
    v48 = v47;
    v89 = sub_2588BD158();
    v49 = sub_2588BCD98();
    v51 = v50;
    LOBYTE(v38) = v52;
    v54 = v53;
    sub_2587B1CF8(v44, v46, v48 & 1);

    KeyPath = swift_getKeyPath();
    v89 = v49;
    v90 = v51;
    v56 = v38 & 1;
    LOBYTE(v91) = v38 & 1;
    v92 = v54;
    v93 = KeyPath;
    v94 = 2;
    v57 = swift_allocObject();
    *(v57 + 16) = v80;
    v58 = v78;
    *(v57 + 32) = v79;
    *(v57 + 40) = v58;
    *(v57 + 48) = 0x7470697263736544;
    *(v57 + 56) = 0xEB000000006E6F69;
    v59 = sub_2588BD9A8();

    v60 = HKUIJoinStringsForAutomationIdentifier();

    if (v60)
    {
      sub_2588BD8A8();

      sub_2587E5DE8();
      sub_2587E65C8();
      v61 = v86;
      sub_2588BCFB8();

      sub_2587B1CF8(v49, v51, v56);

      sub_2588856F0(v83, &v89);
      v62 = v89;
      v63 = v90;
      v64 = v91;
      v65 = v92;
      v66 = v88;
      v67 = v74;
      sub_258889100(v88, v74, sub_2587DFBD0);
      v68 = v76;
      sub_258889100(v61, v76, sub_258857D8C);
      v69 = v75;
      sub_258889100(v67, v75, sub_2587DFBD0);
      sub_258888750();
      v71 = v70;
      v72 = v69 + *(v70 + 48);
      *v72 = 0;
      *(v72 + 8) = 1;
      sub_258889100(v68, v69 + *(v70 + 64), sub_258857D8C);
      v73 = (v69 + *(v71 + 80));
      *v73 = v62;
      v73[1] = v63;
      v73[2] = v64;
      v73[3] = v65;
      sub_2588477DC(v62, v63);
      sub_258889168(v86, sub_258857D8C);
      sub_258889168(v66, sub_2587DFBD0);
      sub_258847820(v62, v63);
      sub_258889168(v68, sub_258857D8C);
      sub_258889168(v67, sub_2587DFBD0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2588856F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1 - 8;
  v43 = *(a1 - 8);
  v44 = a1;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](a1);
  v41 = v6;
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  v8 = sub_2588BDCE8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  v14 = *(v7 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v21 = &v41 - v20;
  if (*(v2 + *(v4 + 100)) == 1)
  {
    (*(v9 + 16))(v13, v2 + *(v44 + 68), v8);
    if ((*(v14 + 48))(v13, 1, v7) == 1)
    {
      result = (*(v9 + 8))(v13, v8);
    }

    else
    {
      (*(v14 + 32))(v21, v13, v7);
      v22 = v44;
      v23 = *(v44 + 60);
      v24 = sub_2588BD488();
      v25 = v2;
      MEMORY[0x259C8C5A0](v24);
      v26 = *(v22 + 32);
      v27 = *(*(v26 + 8) + 8);
      v28 = sub_2588BD7D8();
      v29 = *(v14 + 8);
      v29(v18, v7);
      result = (v29)(v21, v7);
      if ((v28 & 1) == 0)
      {
        v34 = v25;
        v30 = *(v25 + 16);
        v31 = *(v34 + 24);
        v36 = v42;
        v35 = v43;
        v37 = v44;
        (*(v43 + 16))(v42);
        v38 = (*(v35 + 80) + 48) & ~*(v35 + 80);
        v33 = swift_allocObject();
        v39 = *(v37 + 24);
        *(v33 + 2) = v7;
        *(v33 + 3) = v39;
        v40 = *(v37 + 40);
        *(v33 + 4) = v26;
        *(v33 + 5) = v40;
        (*(v35 + 32))(&v33[v38], v36, v37);

        v32 = sub_258889450;
        goto LABEL_6;
      }
    }
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
LABEL_6:
  *a2 = v30;
  a2[1] = v31;
  a2[2] = v32;
  a2[3] = v33;
  return result;
}

uint64_t sub_258885ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void)@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X7>, uint64_t a9@<X8>)
{
  *a9 = a6();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v17 = a9 + *(a7(0) + 44);
  return a8(a1, a2, a3, a4, a5);
}

void sub_258885B54(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v42 = a6;
  sub_25888893C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  sub_2587DFBD0();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v41 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - v17;
  v19 = a1[1];
  v44 = *a1;
  v45 = v19;
  sub_25878F648();

  v20 = MEMORY[0x277D837D0];
  v21 = sub_2588BCDF8();
  v23 = v22;
  v44 = v21;
  v45 = v22;
  v25 = v24 & 1;
  v46 = v24 & 1;
  v47 = v26;
  sub_258888BC8(0, &qword_280C0DDD0, v20, MEMORY[0x277D84560]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2588BFF50;
  v28 = a1[3];
  *(v27 + 32) = a1[2];
  *(v27 + 40) = v28;
  *(v27 + 48) = 0x656C746954;
  *(v27 + 56) = 0xE500000000000000;

  v29 = sub_2588BD9A8();

  v30 = HKUIJoinStringsForAutomationIdentifier();

  if (v30)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v21, v23, v25);

    *v12 = sub_2588BC608();
    *(v12 + 1) = 0;
    v12[16] = 1;
    sub_2588895A0(0, &qword_27F960F40, sub_2588889D0);
    sub_258885EEC(a1, v37, v38, v39, v40, &v12[*(v31 + 44)]);
    v32 = v41;
    sub_258889100(v18, v41, sub_2587DFBD0);
    v33 = v43;
    sub_258889100(v12, v43, sub_25888893C);
    v34 = v42;
    sub_258889100(v32, v42, sub_2587DFBD0);
    sub_2588888CC();
    sub_258889100(v33, v34 + *(v35 + 48), sub_25888893C);
    sub_258889168(v12, sub_25888893C);
    sub_258889168(v18, sub_2587DFBD0);
    sub_258889168(v33, sub_25888893C);
    sub_258889168(v32, sub_2587DFBD0);
  }

  else
  {
    __break(1u);
  }
}

void sub_258885EEC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a6;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258857D8C();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v58 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v57 = v54 - v19;
  v60 = a2;
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v20 = type metadata accessor for ExpandableWheelPickerView();
  v21 = *(v20 + 60);
  v55 = v20;
  v22 = *(v20 + 16);
  v23 = sub_2588BD488();
  MEMORY[0x259C8C5A0](v23);
  v24 = (*(a4 + 24))(a2, a4);
  v26 = v25;
  (*(v11 + 8))(v14, a2);
  v60 = v24;
  v61 = v26;
  sub_25878F648();
  v27 = sub_2588BCDF8();
  v29 = v28;
  LOBYTE(v11) = v30;
  v60 = sub_2588BD158();
  v31 = sub_2588BCD98();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_2587B1CF8(v27, v29, v11 & 1);

  KeyPath = swift_getKeyPath();
  v60 = v31;
  v61 = v33;
  LOBYTE(v62) = v35 & 1;
  v54[1] = v37;
  v63 = v37;
  v64 = KeyPath;
  v65 = 2;
  sub_258888BC8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2588BFF50;
  v41 = *(a1 + 16);
  v40 = *(a1 + 24);
  v56 = a1;
  *(v39 + 32) = v41;
  *(v39 + 40) = v40;
  *(v39 + 48) = 0x7470697263736544;
  *(v39 + 56) = 0xEB000000006E6F69;

  v42 = sub_2588BD9A8();

  v43 = HKUIJoinStringsForAutomationIdentifier();

  if (v43)
  {
    sub_2588BD8A8();

    sub_2587E5DE8();
    sub_2587E65C8();
    v44 = v57;
    sub_2588BCFB8();

    sub_2587B1CF8(v31, v33, v35 & 1);

    sub_2588856F0(v55, &v60);
    v45 = v60;
    v46 = v61;
    v47 = v62;
    v48 = v63;
    v49 = v58;
    sub_258889100(v44, v58, sub_258857D8C);
    v50 = v59;
    sub_258889100(v49, v59, sub_258857D8C);
    sub_258888A04();
    v52 = v50 + *(v51 + 48);
    *v52 = 0;
    *(v52 + 8) = 1;
    v53 = (v50 + *(v51 + 64));
    *v53 = v45;
    v53[1] = v46;
    v53[2] = v47;
    v53[3] = v48;
    sub_2588477DC(v45, v46);
    sub_258889168(v44, sub_258857D8C);
    sub_258847820(v45, v46);
    sub_258889168(v49, sub_258857D8C);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258886340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29[0] = a1;
  v29[1] = a7;
  sub_25888859C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v29 - v22;
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = a5;
  v29[5] = a6;
  v24 = a2 + *(type metadata accessor for ExpandableWheelPickerView() + 88);
  v26 = *v24;
  v25 = *(v24 + 8);
  sub_258889100(v29[0], v16, sub_25888859C);
  sub_25888829C(&qword_27F960F30, sub_25888859C);
  sub_2588BD418();
  v26();

  sub_2587DCF7C(v21, a4, a6);
  v27 = *(v17 + 8);
  v27(v21, a4);
  sub_2587DCF7C(v23, a4, a6);
  return (v27)(v23, a4);
}

uint64_t sub_258886564@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = *(a1 - 1);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v29 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v27 = *(v3 + 16);
  v27(&v23 - v6);
  sub_2588BDA78();
  v8 = sub_2588BDA68();
  v9 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 2) = v8;
  *(v10 + 3) = v11;
  v12 = a1[3];
  v25 = a1[2];
  v26 = v12;
  *(v10 + 4) = v25;
  *(v10 + 5) = v12;
  v13 = a1[4];
  v23 = a1[5];
  v14 = v23;
  v24 = v13;
  *(v10 + 6) = v13;
  *(v10 + 7) = v14;
  v15 = *(v3 + 32);
  v15(&v10[v9], v7, a1);
  v16 = v29;
  (v27)(v29, v28, a1);
  v17 = sub_2588BDA68();
  v18 = swift_allocObject();
  *(v18 + 2) = v17;
  v19 = v25;
  *(v18 + 3) = MEMORY[0x277D85700];
  *(v18 + 4) = v19;
  v20 = v23;
  v21 = v24;
  *(v18 + 5) = v26;
  *(v18 + 6) = v21;
  *(v18 + 7) = v20;
  v15(&v18[v9], v16, a1);
  return sub_2588BD468();
}

uint64_t sub_258886794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a5;
  v49 = a6;
  v58 = a2;
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v43 = type metadata accessor for ExpandableWheelPickerView();
  v10 = *(v43 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v43);
  v38 = v37 - v12;
  v13 = sub_2588BDA08();
  v14 = *(a4 + 8);
  v58 = MEMORY[0x277CE0BD8];
  v59 = a2;
  v60 = MEMORY[0x277CE0BC8];
  v61 = v14;
  v15 = v14;
  v37[0] = v14;
  v42 = &unk_2588CBCBC;
  swift_getOpaqueTypeMetadata2();
  sub_2588BCA98();
  v16 = sub_2588BC1E8();
  v44 = v16;
  v47 = v13;
  WitnessTable = swift_getWitnessTable();
  v58 = v13;
  v59 = a2;
  v60 = v16;
  v61 = WitnessTable;
  v62 = v15;
  v40 = sub_2588BD4D8();
  v48 = *(v40 - 8);
  v17 = *(v48 + 64);
  v18 = MEMORY[0x28223BE20](v40);
  v39 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v45 = v37 - v20;
  v57 = *(a1 + 32);
  v50 = a2;
  v51 = a3;
  v21 = a4;
  v52 = a4;
  v22 = v41;
  v53 = v41;
  v37[1] = swift_getKeyPath();
  v23 = v38;
  v24 = a1;
  v25 = v43;
  (*(v10 + 16))(v38, v24, v43);
  v26 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = a2;
  *(v27 + 3) = a3;
  *(v27 + 4) = v21;
  *(v27 + 5) = v22;
  (*(v10 + 32))(&v27[v26], v23, v25);

  v58 = MEMORY[0x277CE0BD8];
  v59 = a2;
  v60 = MEMORY[0x277CE0BC8];
  v61 = v37[0];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470]);
  v55 = OpaqueTypeConformance2;
  v56 = v29;
  v36 = swift_getWitnessTable();
  v30 = v39;
  sub_2588BD4B8();
  v54 = v36;
  v31 = v40;
  v32 = swift_getWitnessTable();
  v33 = v45;
  sub_2587DCF7C(v30, v31, v32);
  v34 = *(v48 + 8);
  v34(v30, v31);
  sub_2587DCF7C(v33, v31, v32);
  return (v34)(v33, v31);
}

void sub_258886BFC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v49 = a2;
  v46 = a5;
  v8 = *(a4 + 8);
  v52 = MEMORY[0x277CE0BD8];
  v53 = a3;
  v54 = MEMORY[0x277CE0BC8];
  v55 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = &v38 - v11;
  sub_2588BCA98();
  v44 = OpaqueTypeMetadata2;
  v39 = sub_2588BC1E8();
  v45 = *(v39 - 8);
  v13 = *(v45 + 64);
  v14 = MEMORY[0x28223BE20](v39);
  v42 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v43 = &v38 - v16;
  v47 = *(a4 + 24);
  v48 = a4;
  v52 = v47(a3, a4);
  v53 = v17;
  sub_25878F648();
  v18 = sub_2588BCDF8();
  v20 = v19;
  v52 = v18;
  v53 = v19;
  v22 = v21 & 1;
  LOBYTE(v54) = v21 & 1;
  v55 = v23;
  v38 = v12;
  v40 = v8;
  sub_2587A8F0C(a1, 1, MEMORY[0x277CE0BD8], a3, MEMORY[0x277CE0BC8]);
  sub_2587B1CF8(v18, v20, v22);

  sub_258888BC8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2588C61B0;
  v25 = *(v49 + 24);
  *(v24 + 32) = *(v49 + 16);
  *(v24 + 40) = v25;
  *(v24 + 48) = 0x72656B636950;
  *(v24 + 56) = 0xE600000000000000;
  *(v24 + 64) = 0x6E6F6974704FLL;
  *(v24 + 72) = 0xE600000000000000;

  *(v24 + 80) = v47(a3, v48);
  *(v24 + 88) = v26;
  v27 = sub_2588BD9A8();

  v28 = HKUIJoinStringsForAutomationIdentifier();

  if (v28)
  {
    sub_2588BD8A8();

    v52 = MEMORY[0x277CE0BD8];
    v53 = a3;
    v54 = MEMORY[0x277CE0BC8];
    v55 = v40;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v42;
    v31 = v44;
    v32 = v38;
    sub_2588BCFB8();

    (*(v41 + 8))(v32, v31);
    v33 = sub_25888829C(&qword_27F95D9D8, MEMORY[0x277CDE470]);
    v50 = OpaqueTypeConformance2;
    v51 = v33;
    v34 = v39;
    WitnessTable = swift_getWitnessTable();
    v36 = v43;
    sub_2587DCF7C(v30, v34, WitnessTable);
    v37 = *(v45 + 8);
    v37(v30, v34);
    sub_2587DCF7C(v36, v34, WitnessTable);
    v37(v36, v34);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25888708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2588BC9A8();
  v29 = *(v10 - 8);
  v30 = v10;
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v27 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a5;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v13 = type metadata accessor for ExpandableWheelPickerView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v26 - v17;
  v19 = a1 + *(v16 + 76);
  if (*v19)
  {
    v20 = *(v19 + 8);
    v16 = (*v19)();
  }

  v26 = &v26;
  MEMORY[0x28223BE20](v16);
  *(&v26 - 6) = a2;
  *(&v26 - 5) = a3;
  v21 = v28;
  *(&v26 - 4) = a4;
  *(&v26 - 3) = v21;
  *(&v26 - 2) = a1;
  (*(v14 + 16))(v18, a1, v13);
  v22 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  *(v23 + 4) = a4;
  *(v23 + 5) = v21;
  (*(v14 + 32))(&v23[v22], v18, v13);
  sub_2588BD5F8();
  v24 = v27;
  sub_2588BC998();
  sub_2588BC0C8();

  return (*(v29 + 8))(v24, v30);
}

uint64_t sub_25888732C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5)
{
  v48 = a4;
  v49 = a5;
  v46 = a2;
  v47 = a3;
  v42 = a1;
  v52 = sub_2588BD6A8();
  v55 = *(v52 - 8);
  v10 = *(v55 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2588BD6D8();
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v50 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v58 = a3;
  v59 = a4;
  v60 = a5;
  v15 = type metadata accessor for ExpandableWheelPickerView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v44 = &v41 - v18;
  v43 = sub_2588BD6F8();
  v56 = *(v43 - 8);
  v19 = *(v56 + 64);
  v20 = MEMORY[0x28223BE20](v43);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v45 = &v41 - v23;
  v24 = a1 + *(v15 + 84);
  v26 = *(v24 + 8);
  LOBYTE(aBlock) = *v24;
  v25 = aBlock;
  v58 = v26;
  sub_258888BC8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_2588BD2C8();
  LOBYTE(v63) = v25;
  v64 = v26;
  v65 = (v66 & 1) == 0;
  sub_2588BD2D8();

  sub_25888843C();
  v27 = sub_2588BDC38();
  sub_2588BD6E8();
  sub_2588BD708();
  v28 = *(v56 + 8);
  v56 += 8;
  v29 = v43;
  v28(v22, v43);
  v30 = v44;
  (*(v16 + 16))(v44, v42, v15);
  v31 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v32 = swift_allocObject();
  v33 = v47;
  *(v32 + 2) = v46;
  *(v32 + 3) = v33;
  v34 = v49;
  *(v32 + 4) = v48;
  *(v32 + 5) = v34;
  (*(v16 + 32))(&v32[v31], v30, v15);
  v61 = sub_258888488;
  v62 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_25888E4AC;
  v60 = &block_descriptor_6;
  v35 = _Block_copy(&aBlock);
  v36 = v50;
  sub_2588BD6B8();
  v63 = MEMORY[0x277D84F90];
  sub_25888829C(&qword_27F960EA0, MEMORY[0x277D85198]);
  sub_258888540(0);
  sub_25888829C(&qword_27F960EB0, sub_258888540);
  v38 = v51;
  v37 = v52;
  sub_2588BDD48();
  v39 = v45;
  MEMORY[0x259C8CD90](v45, v36, v38, v35);
  _Block_release(v35);

  (*(v55 + 8))(v38, v37);
  (*(v53 + 8))(v36, v54);
  v28(v39, v29);
}

uint64_t (*sub_2588878B4(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = sub_2588832CC(a1);
  if (result)
  {
    v3 = MEMORY[0x28223BE20](result);
    v5 = *(a1 + 16);
    v6 = *(a1 + 32);
    v4 = v3;
    sub_2588BD5F8();
    sub_2588BC0D8();

    return sub_2587A6038(v4);
  }

  return result;
}

uint64_t sub_25888797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v8 = type metadata accessor for ExpandableWheelPickerView();
  v9 = (a1 + *(v8 + 84));
  v12 = *v9;
  v13 = *(v9 + 1);
  sub_258888BC8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  result = sub_2588BD2C8();
  if (v11 == 1)
  {
    return a6(v8);
  }

  return result;
}

uint64_t sub_258887A34(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_2588BDCE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v41 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = *(v3 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v9);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v38 = &v34 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  v39 = v1;
  v40 = a1;
  v21 = *(v5 + 16);
  v22 = v1 + *(a1 + 64);
  v23 = v18;
  v21(v11, v22, v18);
  v24 = v12[6];
  if (v24(v11, 1, v3) == 1)
  {
    return (*(v5 + 8))(v11, v23);
  }

  v36 = v12;
  v35 = v12[4];
  v35(v20, v11, v3);
  v26 = v41;
  v21(v41, v39 + *(v40 + 68), v23);
  if (v24(v26, 1, v3) == 1)
  {
    (v36[1])(v20, v3);
    return (*(v5 + 8))(v41, v23);
  }

  else
  {
    v27 = v38;
    v35(v38, v41, v3);
    v28 = v40;
    v29 = *(v40 + 60);
    v30 = sub_2588BD488();
    v31 = v37;
    MEMORY[0x259C8C5A0](v30);
    v32 = *(*(*(v28 + 32) + 8) + 8);
    LOBYTE(v29) = sub_2588BD7D8();
    v33 = v36[1];
    v33(v31, v3);
    if (v29)
    {
      sub_258888364(v20, v28);
    }

    v33(v27, v3);
    return (v33)(v20, v3);
  }
}

uint64_t sub_258887D9C(uint64_t a1)
{
  v2 = type metadata accessor for ExpandableWheelPickerView();
  v6 = a1 + *(v2 + 76);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v8 = v2;
    (*v6)(v2, v3, v4, v5);
    v2 = v8;
  }

  return sub_258887E0C(v2);
}

uint64_t sub_258887E0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_2588BDCE8();
  v21 = *(v5 - 8);
  v22 = v5;
  v6 = *(v21 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v1 + *(a1 + 76);
  if (*v15)
  {
    v16 = *(v15 + 8);
    v12 = (*v15)(v12);
  }

  MEMORY[0x28223BE20](v12);
  *(&v20 - 6) = v4;
  *(&v20 - 5) = *(a1 + 24);
  *(&v20 - 3) = *(a1 + 40);
  *(&v20 - 2) = v2;
  sub_2588BD5F8();
  sub_2588BC0D8();

  v18 = v21;
  v17 = v22;
  (*(v21 + 16))(v9, v2 + *(a1 + 68), v22);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v18 + 8))(v9, v17);
  }

  (*(v10 + 32))(v14, v9, v4);
  sub_258888364(v14, a1);
  return (*(v10 + 8))(v14, v4);
}

uint64_t sub_258888084(void (*a1)(uint64_t *, uint64_t, uint64_t, void))
{
  v6[3] = sub_2588BB9F8();
  v6[4] = sub_2587B2C84();
  __swift_allocate_boxed_opaque_existential_1(v6);
  v2 = *(type metadata accessor for ExpandableWheelPickerView() + 80);
  sub_258883224(0, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  sub_2588BD678();
  a1(v6, v3, v4, 0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_258888184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ExpandableWheelPickerView();
  v10 = v6;
  v11 = a4 + *(v6 + 76);
  if (*v11)
  {
    v12 = *(v11 + 8);
    (*v11)(v6, v7, v8, v9);
  }

  return sub_258888364(a1, v10);
}

uint64_t sub_2588881FC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ExpandableWheelPickerView() + 84));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_258888BC8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

uint64_t sub_25888829C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2588882FC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_2587A6038(result);
  }

  else
  {
  }
}

uint64_t sub_258888364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = *(v5 + 60);
  (*(v7 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v2);
  sub_2588BD488();
  return sub_2588BD438();
}

unint64_t sub_25888843C()
{
  result = qword_27F960E98;
  if (!qword_27F960E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F960E98);
  }

  return result;
}

uint64_t sub_2588884A0(uint64_t (*a1)(uint64_t))
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for ExpandableWheelPickerView() - 8);
  return sub_25888797C(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_258888574()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  return sub_258888084(*(v0 + 48));
}

void sub_25888859C()
{
  if (!qword_27F960EB8)
  {
    sub_258888688();
    sub_258888804();
    sub_25888829C(&qword_27F960F20, sub_258888688);
    sub_25888829C(&qword_27F960F28, sub_258888804);
    v0 = type metadata accessor for MedicalIDAXLayoutView();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960EB8);
    }
  }
}

void sub_258888688()
{
  if (!qword_27F960EC0)
  {
    sub_25888871C(255);
    sub_25888829C(&qword_27F960ED8, sub_25888871C);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960EC0);
    }
  }
}

void sub_258888750()
{
  if (!qword_27F960ED0)
  {
    sub_2587DFBD0();
    sub_258857D8C();
    sub_258888BC8(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_27F960ED0);
    }
  }
}

void sub_258888804()
{
  if (!qword_27F960EE0)
  {
    sub_258888898(255);
    sub_25888829C(&qword_27F960F18, sub_258888898);
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960EE0);
    }
  }
}

void sub_2588888CC()
{
  if (!qword_27F960EF0)
  {
    sub_2587DFBD0();
    sub_25888893C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F960EF0);
    }
  }
}

void sub_25888893C()
{
  if (!qword_27F960EF8)
  {
    sub_2588889D0(255);
    sub_25888829C(&qword_27F960F10, sub_2588889D0);
    v0 = sub_2588BD368();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960EF8);
    }
  }
}

void sub_258888A04()
{
  if (!qword_27F960F08)
  {
    sub_258857D8C();
    sub_258888BC8(255, &qword_27F95FD48, &type metadata for ClearButtonView, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F960F08);
    }
  }
}

uint64_t sub_258888AD0(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for ExpandableWheelPickerView() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

void sub_258888BC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258888C18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[4];
  v9 = v2[3];
  v10 = v2[5];
  v7 = *(type metadata accessor for ExpandableWheelPickerView() - 8);
  v8 = v2 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_258886BFC(a1, v8, v5, v6, a2);
}

uint64_t sub_258888CD4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(type metadata accessor for ExpandableWheelPickerView() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = type metadata accessor for ExpandableWheelPickerView();
  v8 = v0 + *(v7 + 60);
  v9 = *(v7 + 16);
  v10 = sub_2588BD488();
  return MEMORY[0x259C8C5A0](v10);
}

uint64_t objectdestroy_24Tm()
{
  v26 = *(v0 + 32);
  v28 = *(v0 + 48);
  v1 = type metadata accessor for ExpandableWheelPickerView();
  v2 = *(*(v1 - 1) + 80);
  v27 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);
  swift_unknownObjectRelease();
  v4 = (v0 + ((v2 + 64) & ~v2));
  v5 = *(v4 + 1);

  v6 = *(v4 + 3);

  v7 = *(v4 + 4);

  v8 = &v4[v1[15]];
  v9 = *v8;

  v10 = v8[1];

  v11 = *(sub_2588BD488() + 32);
  v12 = *(v26 - 8);
  v13 = *(v12 + 8);
  v13(v8 + v11, v26);
  v14 = v1[16];
  v15 = *(v12 + 48);
  if (!v15(&v4[v14], 1, v26))
  {
    v13(&v4[v14], v26);
  }

  v16 = v1[17];
  if (!v15(&v4[v16], 1, v26))
  {
    v13(&v4[v16], v26);
  }

  sub_2588882FC(*&v4[v1[18]], *&v4[v1[18] + 8], v4[v1[18] + 16]);
  v17 = &v4[v1[19]];
  if (*v17)
  {
    v18 = *(v17 + 1);
  }

  v19 = &v4[v1[20]];
  v20 = sub_2588BB9F8();
  (*(*(v20 - 8) + 8))(v19, v20);
  sub_258883224(0, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);
  v22 = *&v19[*(v21 + 28)];

  v23 = *&v4[v1[21] + 8];

  v24 = *&v4[v1[22] + 8];

  return swift_deallocObject();
}

uint64_t sub_258889020(uint64_t a1)
{
  v3 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v4 = *(type metadata accessor for ExpandableWheelPickerView() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_258888184(a1, v5, v6, v7);
}

uint64_t sub_258889100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258889168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_27()
{
  v24 = *(v0 + 16);
  v26 = *(v0 + 32);
  v1 = type metadata accessor for ExpandableWheelPickerView();
  v25 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80)));
  v3 = *(v2 + 1);

  v4 = *(v2 + 3);

  v5 = *(v2 + 4);

  v6 = &v2[v1[15]];
  v7 = *v6;

  v8 = v6[1];

  v9 = *(sub_2588BD488() + 32);
  v10 = *(v24 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v9, v24);
  v12 = v1[16];
  v13 = *(v10 + 48);
  if (!v13(&v2[v12], 1, v24))
  {
    v11(&v2[v12], v24);
  }

  v14 = v1[17];
  if (!v13(&v2[v14], 1, v24))
  {
    v11(&v2[v14], v24);
  }

  sub_2588882FC(*&v2[v1[18]], *&v2[v1[18] + 8], v2[v1[18] + 16]);
  v15 = &v2[v1[19]];
  if (*v15)
  {
    v16 = *(v15 + 1);
  }

  v17 = &v2[v1[20]];
  v18 = sub_2588BB9F8();
  (*(*(v18 - 8) + 8))(v17, v18);
  sub_258883224(0, &qword_27F960E90, MEMORY[0x28220C040], MEMORY[0x277CE10B8]);
  v20 = *&v17[*(v19 + 28)];

  v21 = *&v2[v1[21] + 8];

  v22 = *&v2[v1[22] + 8];

  return swift_deallocObject();
}

uint64_t sub_258889468(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for ExpandableWheelPickerView() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

void sub_2588895A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BC0B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258889638(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  sub_258889DC4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258889E1C();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2588BD858();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v11 = qword_27F95DA88;
  v12 = sub_2588BBAC8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v11;
  sub_2588BBAB8();
  v15 = sub_2588BD8B8();
  v58 = v16;
  v17 = v1[4];
  v18 = v1[5];
  v19 = *v1;
  v20 = v1[1];
  v82 = *(v1 + 1);
  v83[0] = v19;
  sub_2588BDA78();
  swift_bridgeObjectRetain_n();

  sub_258889E9C(v83, v79);
  sub_258827FF8(&v82, v79);
  v21 = sub_2588BDA68();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v21;
  *(v22 + 24) = v23;
  v24 = *(v1 + 1);
  *(v22 + 32) = *v1;
  *(v22 + 48) = v24;
  *(v22 + 64) = *(v1 + 2);

  sub_258889E9C(v83, v79);
  sub_258827FF8(&v82, v79);
  v25 = sub_2588BDA68();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v23;
  v27 = v2[1];
  *(v26 + 32) = *v2;
  *(v26 + 48) = v27;
  *(v26 + 64) = v2[2];
  sub_2588BD468();
  v29 = v81[6];
  v28 = v81[7];
  v69 = v81[9];
  v70 = v81[8];
  v30 = sub_2588BBE78();
  v59 = v31;
  v60 = v30;
  v61 = v32;
  sub_25878E384(0, &qword_280C0DDD0, MEMORY[0x277D84560]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2588BFF50;
  *(v33 + 32) = v17;
  *(v33 + 40) = v18;
  v62 = v15;
  *(v33 + 48) = v15;
  v34 = v58;
  *(v33 + 56) = v58;

  v35 = sub_2588BD9A8();

  v36 = HKUIJoinStringsForAutomationIdentifier();

  if (v36)
  {
    v63 = sub_2588BD8A8();
    v38 = v37;

    v18 = v38;
  }

  else
  {
    v63 = v17;
  }

  v81[2] = v29;
  v81[3] = v28;
  v39 = v28;
  v81[4] = v70;
  v81[5] = v69;
  sub_25878E384(0, &qword_27F95F990, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](v81);
  v41 = v81[0];
  v40 = v81[1];
  v42 = type metadata accessor for Model();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  *(v45 + 48) = 0;
  sub_2588BBBC8();
  *(v45 + 16) = v41;
  *(v45 + 24) = v40;
  if (*(v45 + 48))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v58 - 3) = 0;
    *(&v58 - 2) = 0;
    *(&v58 - 4) = v45;
    *&v79[0] = v45;
    sub_25888A0E4();
    sub_2588BBB88();
  }

  else
  {
    *(v45 + 40) = 0;
    *(v45 + 48) = 0;
  }

  *&v71 = v62;
  *(&v71 + 1) = v34;
  LOBYTE(v72) = v60 & 1;
  *(&v72 + 1) = v61;
  LOBYTE(v73) = v59 & 1;
  *(&v73 + 1) = v45;
  *&v74 = 0;
  *(&v74 + 1) = v29;
  *&v75 = v39;
  *(&v75 + 1) = v70;
  v76 = v69;
  *&v77 = 0;
  v47 = v64;
  *(&v77 + 1) = v63;
  v78 = v18;
  sub_2588BC9B8();
  v48 = sub_2588BC9C8();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  sub_25883C3A8();
  v49 = v65;
  sub_2588BCFE8();
  sub_258889F68(v47);
  v79[4] = v75;
  v79[5] = v76;
  v79[6] = v77;
  v80 = v78;
  v79[0] = v71;
  v79[1] = v72;
  v79[2] = v73;
  v79[3] = v74;
  sub_25883C78C(v79);
  v50 = *MEMORY[0x277D76FF0];
  v51 = swift_getKeyPath();
  v52 = sub_2588BD8A8();
  v54 = v53;
  v55 = v68;
  (*(v66 + 32))(v68, v49, v67);
  sub_258889FC4();
  v57 = (v55 + *(v56 + 36));
  *v57 = v51;
  v57[1] = v52;
  v57[2] = v54;
}

void *sub_258889CCC@<X0>(__int128 *a1@<X2>, void *a2@<X8>)
{
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  sub_25888A048(0, &qword_27F960F70, MEMORY[0x277CE11F8]);
  result = MEMORY[0x259C8C5A0](&v7);
  v5 = v7;
  v6 = v8;
  if (!v8)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_258889D44(uint64_t *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v7 = *a4;
  v8 = a4[1];
  v5 = *a1;
  v6 = a1[1];
  sub_25888A048(0, &qword_27F960F70, MEMORY[0x277CE11F8]);

  return sub_2588BD438();
}

void sub_258889DC4()
{
  if (!qword_27F960F50)
  {
    sub_2588BC9C8();
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960F50);
    }
  }
}

void sub_258889E1C()
{
  if (!qword_27F960F58)
  {
    sub_25883C3A8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F960F58);
    }
  }
}

void *sub_258889EF8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_258889CCC((v1 + 32), a1);
}

uint64_t objectdestroyTm_28()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return swift_deallocObject();
}

uint64_t sub_258889F68(uint64_t a1)
{
  sub_258889DC4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_258889FC4()
{
  if (!qword_27F960F60)
  {
    sub_258889E1C();
    sub_25888A048(255, &qword_27F960F68, MEMORY[0x277CE0860]);
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960F60);
    }
  }
}

void sub_25888A048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_25878E384(255, &qword_27F95D458, MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25888A0E4()
{
  result = qword_27F95F850;
  if (!qword_27F95F850)
  {
    type metadata accessor for Model();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95F850);
  }

  return result;
}

unint64_t sub_25888A13C()
{
  result = qword_27F960F78;
  if (!qword_27F960F78)
  {
    sub_258889FC4();
    sub_25883C3A8();
    swift_getOpaqueTypeConformance2();
    sub_25888A1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960F78);
  }

  return result;
}

unint64_t sub_25888A1E8()
{
  result = qword_27F960F80;
  if (!qword_27F960F80)
  {
    sub_25888A048(255, &qword_27F960F68, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960F80);
  }

  return result;
}

id MedicalIDBiometricsViewModel.init(medicalIDData:locale:heightFormatter:weightFormatter:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v66 = a4;
  v69 = a3;
  v70 = a2;
  v71 = a5;
  v6 = MEMORY[0x277D83D88];
  sub_25888D07C(0, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter, MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = v59 - v9;
  v65 = type metadata accessor for MedicalIDWeightFormatter();
  v68 = *(v65 - 8);
  v10 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25888D07C(0, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter, v6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v59 - v14;
  v16 = type metadata accessor for MedicalIDHeightFormatter();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2588BD9A8();
  v22 = HKUIJoinStringsForAutomationIdentifier();

  v62 = v20;
  if (v22)
  {
    v23 = sub_2588BD8A8();
    v25 = v24;
  }

  else
  {
    v25 = 0xEA00000000007363;
    v23 = 0x697274656D6F6942;
  }

  v26 = v71;
  *v71 = v23;
  v26[1] = v25;
  v27 = type metadata accessor for MedicalIDBiometricsViewModel();
  v28 = v26 + *(v27 + 20);
  v61 = a1;
  sub_25888D0E0(a1, v28, type metadata accessor for MedicalIDData);
  v67 = v27;
  v29 = *(v27 + 24);
  v30 = sub_2588BBAC8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 16);
  v33 = v26 + v29;
  v34 = v70;
  v32(v33, v70, v30);
  sub_25888B708(v69, v15, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
  v35 = *(v17 + 48);
  v36 = v35(v15, 1, v16);
  v60 = v32;
  if (v36 == 1)
  {
    v59[1] = v59;
    v37 = *(v31 + 64);
    MEMORY[0x28223BE20](v36);
    v39 = v59 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32(v39, v34, v30);
    v40 = v62;
    v32(v62, v39, v30);
    v41 = sub_2587F28D4(v39, 2);
    (*(v31 + 8))(v39, v30);
    *(v40 + *(v16 + 20)) = v41;
    v42 = v35(v15, 1, v16);
    v43 = v63;
    if (v42 != 1)
    {
      sub_25888CB1C(v15, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    }
  }

  else
  {
    v40 = v62;
    sub_25888CEA8(v15, v62, type metadata accessor for MedicalIDHeightFormatter);
    v43 = v63;
  }

  sub_25888CEA8(v40, v71 + *(v67 + 28), type metadata accessor for MedicalIDHeightFormatter);
  v44 = v66;
  v45 = v64;
  sub_25888B708(v66, v64, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
  v47 = v68 + 48;
  v46 = *(v68 + 48);
  v48 = v46(v45, 1, v65);
  if (v48 != 1)
  {
    sub_25888CB1C(v44, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_25888CB1C(v69, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    (*(v31 + 8))(v70, v30);
    sub_25888CB8C(v61, type metadata accessor for MedicalIDData);
    sub_25888CEA8(v45, v43, type metadata accessor for MedicalIDWeightFormatter);
    return sub_25888CEA8(v43, v71 + *(v67 + 32), type metadata accessor for MedicalIDWeightFormatter);
  }

  v68 = v47;
  v63 = v59;
  v49 = *(v31 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v70;
  v53 = v60;
  v60(v51, v70, v30);
  result = [objc_opt_self() sharedFormatter];
  if (result)
  {
    v55 = result;
    v53(v43, v51, v30);
    v56 = v65;
    *(v43 + *(v65 + 20)) = v55;
    v57 = sub_25884DC0C(v51, 2);
    sub_25888CB1C(v66, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    sub_25888CB1C(v69, &qword_27F95DA40, type metadata accessor for MedicalIDHeightFormatter);
    v58 = *(v31 + 8);
    v58(v52, v30);
    sub_25888CB8C(v61, type metadata accessor for MedicalIDData);
    v58(v51, v30);
    *(v43 + *(v56 + 24)) = v57;
    if (v46(v45, 1, v56) != 1)
    {
      sub_25888CB1C(v45, &qword_27F95DA38, type metadata accessor for MedicalIDWeightFormatter);
    }

    return sub_25888CEA8(v43, v71 + *(v67 + 32), type metadata accessor for MedicalIDWeightFormatter);
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall MedicalIDBiometricsViewModel.localizedHeightDescription()()
{
  sub_25888CBEC(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B518]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  v6 = &v19 - v5;
  sub_25888CCB0(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MedicalIDBiometricsViewModel();
  v12 = *(v11 + 28);
  sub_2587F1E14(*(v0 + *(v11 + 20) + 96), v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25888CC54(v10, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v15 = sub_2587F21C4(v6);
    v17 = v16;
    (*(v3 + 8))(v6, v2);
    v14 = v17;
    v13 = v15;
  }

  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

Swift::String_optional __swiftcall MedicalIDBiometricsViewModel.localizedWeightDescription()()
{
  v1 = v0;
  v2 = type metadata accessor for MedicalIDBiometricsViewModel();
  v3 = v0 + *(v2 + 32);
  v4 = *(v1 + *(v2 + 20) + 104);
  sub_25888CBEC(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B518]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  sub_25888CCB0(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  sub_25884D544(v4, &v22 - v13);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    sub_25888CC54(v14, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    (*(v7 + 32))(v10, v14, v6);
    v17 = *(v3 + *(type metadata accessor for MedicalIDWeightFormatter() + 24));
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    v18 = sub_2588BDC68();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v16 = v20;
    v15 = v18;
  }

  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

Swift::String __swiftcall MedicalIDBiometricsViewModel.localizedBloodTypeDescription()()
{
  v1 = *(v0 + *(type metadata accessor for MedicalIDBiometricsViewModel() + 20) + 88);
  v2 = HKStringForBloodType();
  v3 = sub_2588BD8A8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

id MedicalIDBiometricsViewModel.formattedWeightText(for:)(uint64_t a1)
{
  v2 = *(type metadata accessor for MedicalIDBiometricsViewModel() + 32);
  sub_25888CBEC(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B518]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v20 - v7;
  sub_25888CCB0(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v20 - v11;
  sub_25888CD18(a1, v20 - v11, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_25888CC54(v12, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    return 0;
  }

  v13 = v20[1] + v2;
  (*(v5 + 32))(v8, v12, v4);
  sub_2588BB688();
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  result = [*(v13 + *(type metadata accessor for MedicalIDWeightFormatter() + 24)) numberFormatter];
  if (result)
  {
    v17 = result;
    v18 = [result stringFromNumber_];

    if (v18)
    {
      v19 = sub_2588BD8A8();

      (*(v5 + 8))(v8, v4);
      return v19;
    }

    (*(v5 + 8))(v8, v4);
    return 0;
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall MedicalIDBiometricsViewModel.localizedWeightUnitDescription()()
{
  v1 = type metadata accessor for MedicalIDBiometricsViewModel();
  v2 = sub_25884DC0C(v0 + *(v1 + 32), 1);
  v3 = sub_25884D888();
  v4 = [v2 stringFromUnit_];

  v5 = sub_2588BD8A8();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

id sub_25888B21C(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for HealthDemographicData();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25888D07C(0, &qword_27F95D8C8, type metadata accessor for HealthDemographicData, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v26 - v12;
  if ([a1 suggestHealthData])
  {
    v14 = type metadata accessor for MedicalIDBiometricsViewModel();
    if (!*(v2 + *(v14 + 20) + 104))
    {
      v15 = v14;
      swift_getKeyPath();
      v26[1] = a2;
      sub_2587AFCE0();
      sub_2588BBB98();

      v16 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
      swift_beginAccess();
      sub_25888B708(a2 + v16, v13, &qword_27F95D8C8, type metadata accessor for HealthDemographicData);
      if (!(*(v6 + 48))(v13, 1, v5))
      {
        sub_25888D0E0(v13, v9, type metadata accessor for HealthDemographicData);
        sub_25888CB1C(v13, &qword_27F95D8C8, type metadata accessor for HealthDemographicData);
        v18 = *&v9[*(v5 + 32)];
        sub_25888CB8C(v9, type metadata accessor for HealthDemographicData);
        sub_25888CCB0(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
        v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v19 - 8);
        v22 = v26 - v21;
        v23 = *(v15 + 32);
        v24 = v18;
        sub_25884D544(v18, v22);

        v25 = MedicalIDBiometricsViewModel.formattedWeightText(for:)(v22);
        sub_25888CC54(v22, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
        return v25;
      }

      sub_25888CB1C(v13, &qword_27F95D8C8, type metadata accessor for HealthDemographicData);
    }
  }

  return 0;
}

uint64_t MedicalIDBiometricsViewModel.weightMeasurement(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MedicalIDBiometricsViewModel();
  if (!a2)
  {
    goto LABEL_7;
  }

  v7 = a2;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 && (v9 = *(v6 + 32), sub_25888CA24(a1, v7)))
  {
    sub_25884D888();
    sub_25878E130(0, &qword_27F95F430, 0x277CCAE28);
    sub_2588BB678();
    v10 = 0;
  }

  else
  {
LABEL_7:
    v10 = 1;
  }

  sub_25888CBEC(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B518]);
  return (*(*(v11 - 8) + 56))(a3, v10, 1, v11);
}

uint64_t type metadata accessor for MedicalIDBiometricsViewModel()
{
  result = qword_27F960FB8;
  if (!qword_27F960FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25888B708(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25888D07C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void MedicalIDBiometricsViewModel.heightMeasurement()(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MedicalIDBiometricsViewModel();
  v4 = *(v1 + *(v3 + 20) + 96);
  v5 = v1 + *(v3 + 28);
  sub_2587F1E14(v4, a1);
}

Swift::String __swiftcall MedicalIDBiometricsViewModel.localizedHeightUnitDescription()()
{
  v1 = *(type metadata accessor for MedicalIDBiometricsViewModel() + 28);
  v2 = sub_2587F28D4(v0 + v1, 1);
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  v3 = sub_2588BBAC8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + v1);
  sub_25888CBEC(0, &qword_27F95E848, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220BCD0]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_2588BB8A8();
  v9 = sub_2588BDBA8();
  v10 = [v2 stringFromUnit_];

  v11 = sub_2588BD8A8();
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result._object = v15;
  result._countAndFlagsBits = v14;
  return result;
}

uint64_t MedicalIDBiometricsViewModel.formattedHeightForPickers(with:)(uint64_t a1)
{
  v28 = a1;
  sub_25888CBEC(0, &qword_27F960F88, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B4E0]);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - v4;
  sub_25888CBEC(0, &qword_27F960F90, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B4C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v25 - v10;
  sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
  sub_2588BB698();
  sub_25888D07C(0, &qword_27F960F98, sub_25888CD8C, MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - v14;
  sub_25888CD8C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_25888CBEC(0, &qword_27F95E848, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220BCD0]);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v25 - v21;
  sub_2588BB898();
  sub_2588BB648();
  (*(v19 + 8))(v22, v18);
  sub_25888CB1C(v15, &qword_27F960F98, sub_25888CD8C);
  (*(v8 + 8))(v11, v7);
  sub_25888CBEC(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B518]);
  sub_25888CE3C();
  v23 = v26;
  sub_2588BB6C8();
  (*(v27 + 8))(v5, v23);
  return v29;
}

void MedicalIDBiometricsViewModel.weightMeasurement()(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MedicalIDBiometricsViewModel();
  v4 = *(v1 + *(v3 + 20) + 104);
  v5 = v1 + *(v3 + 32);
  sub_25884D544(v4, a1);
}

void MedicalIDBiometricsViewModel.validationResult(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BasicAlertModel.Action();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 104);
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 gramUnitWithMetricPrefix_];
  [v11 doubleValueForUnit_];
  v14 = v13;

  [objc_opt_self() maximumWeightInKilograms];
  if (v14 <= v15)
  {

LABEL_7:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return;
  }

  v46 = v4;
  v47 = v5;
  v48 = v11;
  v16 = sub_2588BD858();
  v42 = v41;
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v43 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v18 = qword_27F95DA88;
  v19 = sub_2588BBAC8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v18;
  sub_2588BBAB8();
  v22 = v21;
  v23 = sub_2588BD8B8();
  v44 = v24;
  v45 = v23;
  v41[1] = v41;
  MEMORY[0x28223BE20](v23);
  v25 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v25);
  sub_2588BBAB8();
  v42 = sub_2588BD8B8();
  v27 = v26;
  MEMORY[0x28223BE20](v42);
  v28 = sub_2588BD7E8();
  MEMORY[0x28223BE20](v28);
  sub_2588BBAB8();
  v29 = sub_2588BD8B8();
  v31 = v30;
  v32 = v46;
  v33 = *(v46 + 24);
  sub_2588BBDD8();
  v34 = sub_2588BBDE8();
  (*(*(v34 - 8) + 56))(&v8[v33], 0, 1, v34);
  sub_2588BB9E8();
  v35 = &v8[*(v32 + 20)];
  *v35 = v29;
  v35[1] = v31;
  v36 = &v8[*(v32 + 28)];
  sub_25888D07C(0, &qword_27F95D9E8, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D84560]);
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = *(v47 + 72);
  v38 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2588C00B0;
  sub_25888CEA8(v8, v39 + v38, type metadata accessor for BasicAlertModel.Action);

  v40 = v44;
  *a2 = v45;
  *(a2 + 8) = v40;
  *(a2 + 16) = v42;
  *(a2 + 24) = v27;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = v39;
}

void MedicalIDBiometricsViewModel.update(medicalIDData:heightMeasurement:weightMeasurement:bloodType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = a4;
  v6 = sub_25888C468(a2);

  *(a1 + 96) = v6;
  v7 = sub_25888C744(a3);

  *(a1 + 104) = v7;
}

id sub_25888C468(uint64_t a1)
{
  sub_25888CBEC(0, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B518]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v19 = &v18 - v5;
  sub_25888CCB0(0, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  sub_25888CD18(a1, &v18 - v8, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_25888CC54(v9, &qword_27F95D478, &qword_27F95D480, &qword_27F95D488, 0x277CCAE20);
    return 0;
  }

  else
  {
    v11 = v19;
    v12 = (*(v4 + 32))(v19, v9, v3);
    MEMORY[0x28223BE20](v12);
    v13 = [objc_opt_self() meters];
    sub_2588BB6B8();

    v14 = [objc_opt_self() meterUnit];
    sub_2588BB688();
    v16 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v15];

    v17 = *(v4 + 8);
    v17(&v18 - v5, v3);
    v17(v11, v3);
    return v16;
  }
}

id sub_25888C744(uint64_t a1)
{
  sub_25888CBEC(0, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28, MEMORY[0x28220B518]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v19 = &v18 - v5;
  sub_25888CCB0(0, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  sub_25888CD18(a1, &v18 - v8, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_25888CC54(v9, &qword_27F95F438, &qword_27F95F428, &qword_27F95F430, 0x277CCAE28);
    return 0;
  }

  else
  {
    v11 = v19;
    v12 = (*(v4 + 32))(v19, v9, v3);
    MEMORY[0x28223BE20](v12);
    v13 = [objc_opt_self() kilograms];
    sub_2588BB6B8();

    v14 = [objc_opt_self() gramUnitWithMetricPrefix_];
    sub_2588BB688();
    v16 = [objc_opt_self() quantityWithUnit:v14 doubleValue:v15];

    v17 = *(v4 + 8);
    v17(&v18 - v5, v3);
    v17(v11, v3);
    return v16;
  }
}

BOOL sub_25888CA24(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_2588BDDE8();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_25888CB1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25888D07C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25888CB8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25888CBEC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_25878E130(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_25888CC54(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  sub_25888CCB0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_25888CCB0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_25888CBEC(255, a3, a4, a5, MEMORY[0x28220B518]);
    v6 = sub_2588BDCE8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_25888CD18(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_25888CCB0(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_25888CD8C()
{
  if (!qword_27F960FA0)
  {
    sub_25888CDE8();
    v0 = sub_2588BB888();
    if (!v1)
    {
      atomic_store(v0, &qword_27F960FA0);
    }
  }
}

unint64_t sub_25888CDE8()
{
  result = qword_27F960FA8;
  if (!qword_27F960FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960FA8);
  }

  return result;
}

unint64_t sub_25888CE3C()
{
  result = qword_27F960FB0;
  if (!qword_27F960FB0)
  {
    sub_25888CBEC(255, &qword_27F960F88, &qword_27F95D488, 0x277CCAE20, MEMORY[0x28220B4E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960FB0);
  }

  return result;
}

uint64_t sub_25888CEA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25888CF38()
{
  result = type metadata accessor for MedicalIDData();
  if (v1 <= 0x3F)
  {
    result = sub_2588BBAC8();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MedicalIDHeightFormatter();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for MedicalIDWeightFormatter();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

_BYTE *sub_25888CFFC@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_25888D07C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25888D0E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25888D148()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_healthStore) profileIdentifier];
  v2 = [v1 type];

  if (v2 == 3 && *(v0 + OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_displayName + 8))
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MedicalIDUI31MedicalIDNavigationBarViewModel_displayName);
    v4 = sub_2588BD838();
    v5 = *(*(v4 - 8) + 64);
    MEMORY[0x28223BE20](v4 - 8);
    sub_2588BD828();
    sub_2588BD818();
    sub_2588BD808();
    sub_2588BD818();
    v6 = sub_2588BD858();
    v7 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v6 - 8);
    sub_2588BD848();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v8 = sub_2588BD858();
    v9 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v8 - 8);
    sub_2588BD7E8();
    if (qword_27F95D000 != -1)
    {
      swift_once();
    }
  }

  v10 = qword_27F95DA88;
  v11 = sub_2588BBAC8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v10;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

id MedicalIDNavigationBarViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MedicalIDNavigationBarViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedicalIDNavigationBarViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MedicalIDNavigationBarViewModel()
{
  result = qword_27F960FD8;
  if (!qword_27F960FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25888D640()
{
  sub_2587AFFC8(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_2588BBAC8();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_25888D73C(uint64_t *a1)
{
  v2 = v1;
  v99[1] = *MEMORY[0x277D85DE8];
  v4 = sub_2588BB818();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 gregorianBirthday];
  if (v8)
  {
    v9 = v8;
    sub_2588BB778();

    v10 = sub_2588BB758();
    v99[0] = 0;
    v11 = [v2 _setDateOfBirthComponents_error_];

    if (v11)
    {
      v12 = *(v5 + 8);
      v13 = v99[0];
      v12(&v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    }

    else
    {
      v14 = v99[0];
      v15 = sub_2588BB878();

      swift_willThrow();
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v16 = sub_2588BBC98();
      v17 = __swift_project_value_buffer(v16, qword_27F969938);
      MEMORY[0x28223BE20](v17);
      v18 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v5 + 16))(v18, v18, v4);
      v19 = v15;
      v20 = sub_2588BBC78();
      v21 = sub_2588BDBD8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v95 = v21;
        v23 = v22;
        v96 = swift_slowAlloc();
        v99[0] = v96;
        *v23 = 136315394;
        sub_25888E288();
        v94 = v20;
        v24 = sub_2588BDF78();
        v98 = &v93;
        v25 = v2;
        v26 = a1;
        v28 = v27;
        v97 = *(v5 + 8);
        v97(v18, v4);
        v29 = sub_258790224(v24, v28, v99);
        a1 = v26;
        v2 = v25;

        *(v23 + 4) = v29;
        *(v23 + 12) = 2080;
        swift_getErrorValue();
        v30 = sub_2588BDFD8();
        v32 = sub_258790224(v30, v31, v99);

        *(v23 + 14) = v32;
        v33 = v94;
        _os_log_impl(&dword_25878B000, v94, v95, "Failed to persist Medical ID birthday %s to Health profile, Error: %s", v23, 0x16u);
        v34 = v96;
        swift_arrayDestroy();
        MEMORY[0x259C8DBE0](v34, -1, -1);
        MEMORY[0x259C8DBE0](v23, -1, -1);

        v97(v7, v4);
      }

      else
      {

        v35 = *(v5 + 8);
        v35(v18, v4);
        v35(v7, v4);
      }
    }
  }

  v36 = [a1 weight];
  if (v36)
  {
    v37 = v36;
    v99[0] = 0;
    if ([v2 _setBodyMassCharacteristicQuantity_error_])
    {
      v38 = v99[0];
    }

    else
    {
      v39 = v99[0];
      v40 = sub_2588BB878();

      swift_willThrow();
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v41 = sub_2588BBC98();
      __swift_project_value_buffer(v41, qword_27F969938);
      v42 = v37;
      v43 = v40;
      v44 = sub_2588BBC78();
      v45 = sub_2588BDBD8();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v98 = a1;
        v48 = v47;
        v49 = swift_slowAlloc();
        v97 = v2;
        v50 = v49;
        v99[0] = v49;
        *v46 = 138412546;
        *(v46 + 4) = v42;
        *v48 = v37;
        *(v46 + 12) = 2080;
        swift_getErrorValue();
        v51 = v42;
        v52 = sub_2588BDFD8();
        v54 = sub_258790224(v52, v53, v99);

        *(v46 + 14) = v54;
        _os_log_impl(&dword_25878B000, v44, v45, "Failed to persist Medical ID weight %@ to Health profile, Error: %s", v46, 0x16u);
        sub_2587F2B40(v48);
        v55 = v48;
        a1 = v98;
        MEMORY[0x259C8DBE0](v55, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        v56 = v50;
        v2 = v97;
        MEMORY[0x259C8DBE0](v56, -1, -1);
        MEMORY[0x259C8DBE0](v46, -1, -1);
      }

      else
      {
      }
    }
  }

  v57 = [a1 height];
  if (v57)
  {
    v58 = v57;
    v99[0] = 0;
    if ([v2 _setHeightCharacteristicQuantity_error_])
    {
      v59 = v99[0];
    }

    else
    {
      v60 = v99[0];
      v61 = sub_2588BB878();

      swift_willThrow();
      if (qword_27F95D170 != -1)
      {
        swift_once();
      }

      v62 = sub_2588BBC98();
      __swift_project_value_buffer(v62, qword_27F969938);
      v63 = v58;
      v64 = v61;
      v65 = sub_2588BBC78();
      v66 = sub_2588BDBD8();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v98 = a1;
        v69 = v68;
        v70 = swift_slowAlloc();
        v97 = v2;
        v71 = v70;
        v99[0] = v70;
        *v67 = 138412546;
        *(v67 + 4) = v63;
        *v69 = v58;
        *(v67 + 12) = 2080;
        swift_getErrorValue();
        v72 = v63;
        v73 = sub_2588BDFD8();
        v75 = sub_258790224(v73, v74, v99);

        *(v67 + 14) = v75;
        _os_log_impl(&dword_25878B000, v65, v66, "Failed to persist Medical ID height %@ to Health profile, Error: %s", v67, 0x16u);
        sub_2587F2B40(v69);
        v76 = v69;
        a1 = v98;
        MEMORY[0x259C8DBE0](v76, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        v77 = v71;
        v2 = v97;
        MEMORY[0x259C8DBE0](v77, -1, -1);
        MEMORY[0x259C8DBE0](v67, -1, -1);
      }

      else
      {
      }
    }
  }

  if (![a1 bloodType])
  {
    goto LABEL_35;
  }

  v78 = [a1 bloodType];
  v99[0] = 0;
  if (![v2 _setBloodType_error_])
  {
    v98 = v99[0];
    v80 = v99[0];
    v81 = sub_2588BB878();

    swift_willThrow();
    if (qword_27F95D170 != -1)
    {
      swift_once();
    }

    v82 = sub_2588BBC98();
    __swift_project_value_buffer(v82, qword_27F969938);
    v83 = a1;
    v84 = v81;
    v85 = sub_2588BBC78();
    v86 = sub_2588BDBD8();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v99[0] = v88;
      *v87 = 134218242;
      *(v87 + 4) = [v83 bloodType];

      *(v87 + 12) = 2080;
      swift_getErrorValue();
      v89 = sub_2588BDFD8();
      v91 = sub_258790224(v89, v90, v99);

      *(v87 + 14) = v91;
      _os_log_impl(&dword_25878B000, v85, v86, "Failed to persist Medical ID blood type %ld to Health profile, Error: %s", v87, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v88);
      MEMORY[0x259C8DBE0](v88, -1, -1);
      MEMORY[0x259C8DBE0](v87, -1, -1);
    }

    else
    {
    }

LABEL_35:
    v92 = *MEMORY[0x277D85DE8];
    return;
  }

  v79 = *MEMORY[0x277D85DE8];

  MEMORY[0x2821F9840]();
}

uint64_t sub_25888E1D0@<X0>(uint64_t *a1@<X8>)
{
  sub_25878E130(0, &qword_27F95D360, 0x277CCD4D8);
  result = sub_2588BBD18();
  *a1 = result;
  return result;
}

void sub_25888E220()
{
  if (!qword_27F95D870)
  {
    sub_25878E130(255, &qword_27F95D878, 0x277D82BB8);
    v0 = sub_2588BDCE8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95D870);
    }
  }
}

unint64_t sub_25888E288()
{
  result = qword_27F960FE8;
  if (!qword_27F960FE8)
  {
    sub_2588BB818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F960FE8);
  }

  return result;
}

uint64_t MedicalIDSettingsProvider.medicalIDSettingsViewModel(data:healthStore:profileFirstName:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v10 = type metadata accessor for MedicalIDData();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 24);
  os_unfair_lock_lock((v14 + 20));
  HIDWORD(v27) = *(v14 + 16);
  os_unfair_lock_unlock((v14 + 20));
  sub_2587B94F8(a1, v13);
  v15 = [objc_opt_self() hasPairedWatch];
  v16 = sub_2588BD9A8();
  v17 = HKUIJoinStringsForAutomationIdentifier();

  if (v17)
  {
    v18 = sub_2588BD8A8();
    v20 = v19;
  }

  else
  {
    v20 = 0x80000002588C90D0;
    v18 = 0xD000000000000011;
  }

  v21 = type metadata accessor for MedicalIDSettingsViewModel(0);
  v22 = (a5 + v21[11]);
  *v22 = v18;
  v22[1] = v20;
  sub_2587B94F8(v13, a5);
  *(a5 + v21[5]) = a2;
  v23 = (a5 + v21[6]);
  *v23 = v28;
  v23[1] = a4;
  *(a5 + v21[9]) = (v13[*(v10 + 64)] & 1) == 0;
  v24 = v13[*(v10 + 68)];

  v25 = a2;
  result = sub_2587B955C(v13);
  *(a5 + v21[10]) = v24;
  *(a5 + v21[7]) = v15;
  *(a5 + v21[8]) = BYTE4(v27) & 1;
  return result;
}

uint64_t sub_25888E4AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void *sub_25888E4F0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_2588BDC28();
  v24 = *(v3 - 8);
  v25 = v3;
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3);
  v23 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2588BDC08();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_2588BD6D8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_25888F404();
  v10 = swift_allocObject();
  *(v10 + 20) = 0;
  *(v10 + 16) = 2;
  v0[3] = v10;
  v0[4] = 0xD000000000000021;
  v0[5] = 0x80000002588CB500;
  sub_2588BBBC8();
  v22 = sub_25888843C();
  v26 = sub_2588BE0E8();
  v27 = v11;
  MEMORY[0x259C8CAA0](95, 0xE100000000000000);
  v12 = sub_2588BB9F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BB9E8();
  v17 = sub_2588BB9C8();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  MEMORY[0x259C8CAA0](v17, v19);

  sub_2588BD6C8();
  v26 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D85230];
  sub_25888F47C(&qword_27F961020, MEMORY[0x277D85230]);
  sub_25888F4C4(0, &qword_27F961028, v20);
  sub_25888F0F4(&qword_27F961030, &qword_27F961028, v20);
  sub_2588BDD48();
  (*(v24 + 104))(v23, *MEMORY[0x277D85260], v25);
  v1[2] = sub_2588BDC58();
  MedicalIDSettingsProvider.fetchAvailabilityStatus()();
  return v1;
}

Swift::Void __swiftcall MedicalIDSettingsProvider.fetchAvailabilityStatus()()
{
  v1 = sub_2588BD6A8();
  v14 = *(v1 - 8);
  v2 = *(v14 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2588BD6D8();
  v5 = *(v13 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_25888F0EC;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25888E4AC;
  aBlock[3] = &block_descriptor_7;
  v10 = _Block_copy(aBlock);

  sub_2588BD6B8();
  v15 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D85198];
  sub_25888F47C(&qword_27F960EA0, MEMORY[0x277D85198]);
  sub_25888F4C4(0, &qword_27F960EA8, v11);
  sub_25888F0F4(&qword_27F960EB0, &qword_27F960EA8, v11);
  sub_2588BDD48();
  MEMORY[0x259C8CDC0](0, v8, v4, v10);
  _Block_release(v10);
  (*(v14 + 8))(v4, v1);
  (*(v5 + 8))(v8, v13);
}

void *sub_25888EB70()
{
  if (qword_27F95D170 != -1)
  {
    swift_once();
  }

  v0 = sub_2588BBC98();
  __swift_project_value_buffer(v0, qword_27F969938);
  v1 = sub_2588BBC78();
  v2 = sub_2588BDBB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v22 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_258790224(0xD000000000000019, 0x80000002588CB530, &v22);
    _os_log_impl(&dword_25878B000, v1, v2, "[EED %s] fetching EED status", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x259C8DBE0](v4, -1, -1);
    MEMORY[0x259C8DBE0](v3, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = sub_25888EFB0();
    if (v5 != 2)
    {
      LOBYTE(v8) = v5;
      v16 = sub_2588BBC78();
      v17 = sub_2588BDBB8();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21[0] = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_258790224(0xD000000000000019, 0x80000002588CB530, v21);
        _os_log_impl(&dword_25878B000, v16, v17, "[EED %s] overridden by default to enabled", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x259C8DBE0](v19, -1, -1);
        MEMORY[0x259C8DBE0](v18, -1, -1);
      }

      goto LABEL_21;
    }
  }

  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result supportsEED];

  v9 = sub_2588BBC78();
  v10 = sub_2588BDBB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_258790224(0xD000000000000019, 0x80000002588CB530, v21);
    *(v11 + 12) = 2080;
    if (v8)
    {
      v13 = 0x6C62616C69617661;
    }

    else
    {
      v13 = 0x6961766120746F6ELL;
    }

    if (v8)
    {
      v14 = 0xE900000000000065;
    }

    else
    {
      v14 = 0xED0000656C62616CLL;
    }

    v15 = sub_258790224(v13, v14, v21);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_25878B000, v9, v10, "[EED %s] returned availability of:%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C8DBE0](v12, -1, -1);
    MEMORY[0x259C8DBE0](v11, -1, -1);
  }

LABEL_21:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result[3];

    os_unfair_lock_lock((v20 + 20));
    *(v20 + 16) = v8 & 1;
    os_unfair_lock_unlock((v20 + 20));
  }

  return result;
}

uint64_t sub_25888EFB0()
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    v4 = sub_2588BD868();
    v5 = [v1 objectForKey_];

    if (v5)
    {
      sub_2588BDD38();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
      sub_25888F394(v10);
    }
  }

  return 2;
}

uint64_t sub_25888F0F4(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25888F4C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MedicalIDSettingsProvider.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC11MedicalIDUI25MedicalIDSettingsProvider___observationRegistrar;
  v4 = sub_2588BBBD8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t MedicalIDSettingsProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC11MedicalIDUI25MedicalIDSettingsProvider___observationRegistrar;
  v4 = sub_2588BBBD8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MedicalIDSettingsProvider()
{
  result = qword_27F960FF8;
  if (!qword_27F960FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25888F2C4()
{
  result = sub_2588BBBD8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25888F394(uint64_t a1)
{
  sub_2587FC7CC(0, &qword_27F961008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25888F404()
{
  if (!qword_27F961010)
  {
    sub_2587FC7CC(255, &qword_27F961018);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_2588BDE18();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961010);
    }
  }
}

uint64_t sub_25888F47C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_25888F4C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BDA08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

MedicalIDUI::OrganDonationStatus_optional __swiftcall OrganDonationStatus.init(medicalIDValue:)(NSNumber_optional medicalIDValue)
{
  v2 = v1;
  if (medicalIDValue.value.super.super.isa)
  {
    isa = medicalIDValue.value.super.super.isa;
    v4 = [(objc_class *)medicalIDValue.value.super.super.isa integerValue];

    if (v4 > 2)
    {
      LOBYTE(v5) = 4;
    }

    else
    {
      v5 = 0x30102u >> (8 * v4);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  *v2 = v5;
  return medicalIDValue.value.super.super.isa;
}

uint64_t OrganDonationStatus.medicalIDValue.getter()
{
  result = *v0;
  if (*v0 > 1u || *v0)
  {
    sub_2587AEC74();
    return sub_2588BDCC8();
  }

  return result;
}

MedicalIDUI::OrganDonationStatus_optional __swiftcall OrganDonationStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OrganDonationStatus.rawValue.getter()
{
  v1 = 0x746553746F6ELL;
  v2 = 0x726F6E6F44746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x694C6574616E6F64;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25888F728()
{
  result = qword_27F961038;
  if (!qword_27F961038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961038);
  }

  return result;
}

uint64_t sub_25888F77C()
{
  v1 = *v0;
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_25888F844()
{
  *v0;
  *v0;
  *v0;
  sub_2588BD908();
}

uint64_t sub_25888F8F8()
{
  v1 = *v0;
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

void sub_25888F9C8(unint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x746553746F6ELL;
  v4 = 0xE800000000000000;
  v5 = 0x726F6E6F44746F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x694C6574616E6F64;
    v4 = 0xEA00000000006566;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000002588C8C60;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_25888FA50()
{
  result = qword_27F961040;
  if (!qword_27F961040)
  {
    sub_25888FAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F961040);
  }

  return result;
}

void sub_25888FAA8()
{
  if (!qword_27F961048)
  {
    v0 = sub_2588BDA08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F961048);
    }
  }
}

uint64_t sub_25888FB1C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for EditHeightCellView() + 56);
  sub_258890F00(0, &qword_27F95DB20, MEMORY[0x28220C188], MEMORY[0x277CDF458]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_25883CF5C(v1 + v8, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2588BBAC8();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2588BDBE8();
    v16 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_25888FD24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v106 = a4;
  v107 = a5;
  v105 = a3;
  v118 = a2;
  v113 = a1;
  v7 = type metadata accessor for EditHeightCellView();
  v8 = a6 + *(v7 + 40);
  v117 = a6;
  v122 = 0;
  sub_2588BD2B8();
  v9 = v121;
  *v8 = v120;
  *(v8 + 8) = v9;
  v10 = *(v7 + 44);
  v11 = v7;
  v116 = v7;
  v102 = (a6 + v10);
  v12 = MEMORY[0x277D83D88];
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v109 = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
  v110 = v16;
  v108 = *(v16 - 8);
  v17 = v108 + 56;
  v119 = *(v108 + 56);
  v18 = v119(&v99 - v15, 1, 1, v16);
  MEMORY[0x28223BE20](v18);
  v114 = sub_25889A568;
  sub_258890E1C(&v99 - v15, &v99 - v15, &qword_27F95D478, v12, sub_25889A568);
  sub_2588BD2B8();
  v111 = sub_25889A568;
  v19 = sub_258890E8C(&v99 - v15, &qword_27F95D478, v12, sub_25889A568);
  v20 = *(v11 + 48);
  v21 = v117;
  v22 = v117 + v20;
  v115 = v14;
  MEMORY[0x28223BE20](v19);
  v23 = v110;
  v24 = v119(&v99 - v15, 1, 1, v110);
  MEMORY[0x28223BE20](v24);
  sub_258890E1C(&v99 - v15, &v99 - v15, &qword_27F95D478, v12, v114);
  v103 = v22;
  sub_2588BD2B8();
  v25 = v111;
  v26 = sub_258890E8C(&v99 - v15, &qword_27F95D478, v12, v111);
  v27 = v116;
  v28 = v21 + v116[13];
  MEMORY[0x28223BE20](v26);
  v100 = v15;
  v112 = v17;
  v29 = v119(&v99 - v15, 1, 1, v23);
  MEMORY[0x28223BE20](v29);
  v101 = v12;
  sub_258890E1C(&v99 - v15, &v99 - v15, &qword_27F95D478, v12, v114);
  v104 = v28;
  sub_2588BD2B8();
  sub_258890E8C(&v99 - v15, &qword_27F95D478, v12, v25);
  v30 = v27[14];
  *(v21 + v30) = swift_getKeyPath();
  sub_258890F00(0, &qword_27F95DB20, MEMORY[0x28220C188], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v31 = (v21 + v27[15]);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  *v31 = sub_2588BC358();
  v31[1] = v32;
  sub_258890D38(v113, v21 + v27[5], type metadata accessor for MedicalIDBiometricsViewModel);
  v33 = sub_2588BBAC8();
  v34 = *(v33 - 8);
  v35 = v34[8];
  MEMORY[0x28223BE20](v33);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_2588BBAB8();
  v37 = type metadata accessor for HeightDataProvider();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  v40 = swift_allocObject();
  MEMORY[0x28223BE20](v40);
  v41 = v34[2];
  v41(&v99 - v36, &v99 - v36, v33);
  v42 = swift_beginAccess();
  MEMORY[0x28223BE20](v42);
  v41(&v99 - v36, &v99 - v36, v33);
  sub_2588BBD68();
  v43 = v34[1];
  v43(&v99 - v36, v33);
  swift_endAccess();
  v44 = (v43)(&v99 - v36, v33);
  v45 = (v117 + v116[9]);
  *v45 = v40;
  v45[1] = 0;
  v46 = MEMORY[0x28223BE20](v44);
  v47 = v100;
  MEMORY[0x28223BE20](v46);
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  v49 = v48;

  MEMORY[0x259C8C5A0](v49);
  sub_2587BA828(&v99 - v47, 1, &v99 - v47);
  v50 = v101;
  sub_258890E8C(&v99 - v47, &qword_27F95D478, v101, v111);
  v51 = MEMORY[0x277CE10B8];
  v52 = v102;
  sub_258890E8C(v102, &qword_27F961058, MEMORY[0x277CE10B8], sub_258890DA0);
  sub_258890DA0(0, &qword_27F961058, v51);
  v111 = v53;
  *(v52 + *(v53 + 28)) = 0;
  v54 = sub_25889B00C(&v99 - v47, v52, &qword_27F95D478, v50, sub_25889A568);
  v55 = MEMORY[0x28223BE20](v54);
  MEMORY[0x28223BE20](v55);
  v102 = v49;
  v56 = MEMORY[0x259C8C5A0](v49);
  MEMORY[0x28223BE20](v56);
  v109 = v40;
  v57 = sub_2587BA828(&v99 - v47, 1, &v99 - v47);
  v58 = v110;
  MEMORY[0x28223BE20](v57);
  v59 = v50;
  v60 = v108;
  sub_258890E1C(&v99 - v47, &v99 - v47, &qword_27F95D478, v59, v114);
  v114 = *(v60 + 48);
  if ((v114)(&v99 - v47, 1, v58) == 1)
  {
    v61 = MEMORY[0x277D83D88];
    sub_258890E8C(&v99 - v47, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890E8C(&v99 - v47, &qword_27F95D478, v61, sub_25889A568);
    sub_258890E8C(&v99 - v47, &qword_27F95D478, v61, sub_25889A568);
    v62 = 1;
  }

  else
  {
    sub_2588BB688();
    v64 = v63;
    (*(v60 + 8))(&v99 - v47, v58);
    fmod(v64, 12.0);
    v65 = [objc_opt_self() inches];
    sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
    sub_2588BB678();
    v66 = MEMORY[0x277D83D88];
    sub_258890E8C(&v99 - v47, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890E8C(&v99 - v47, &qword_27F95D478, v66, sub_25889A568);
    v62 = 0;
  }

  v119(&v99 - v47, v62, 1, v58);
  v67 = v103;
  sub_258890E8C(v103, &qword_27F961058, MEMORY[0x277CE10B8], sub_258890DA0);
  *(v67 + *(v111 + 7)) = 0;
  v68 = MEMORY[0x277D83D88];
  v69 = sub_25889B00C(&v99 - v47, v67, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
  v103 = &v99;
  v70 = v115;
  v71 = MEMORY[0x28223BE20](v69);
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = &v99 - v72;
  v101 = &v99;
  MEMORY[0x28223BE20](v71);
  v74 = &v99 - v72;
  v75 = MEMORY[0x259C8C5A0](v102);
  v102 = &v99;
  MEMORY[0x28223BE20](v75);
  v76 = &v99 - v72;
  sub_2587BA828(&v99 - v72, 1, &v99 - v72);

  MEMORY[0x28223BE20](v77);
  v78 = &v99 - v72;
  sub_258890E1C(&v99 - v72, &v99 - v72, &qword_27F95D478, v68, sub_25889A568);
  if ((v114)(&v99 - v72, 1, v58) == 1)
  {
    v79 = v58;
    v80 = MEMORY[0x277D83D88];
    sub_258890E8C(v76, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890E8C(v74, &qword_27F95D478, v80, sub_25889A568);
    v81 = v118;
    sub_258890E8C(v78, &qword_27F95D478, v80, sub_25889A568);
    v82 = 1;
    v83 = v117;
  }

  else
  {
    sub_2588BB688();
    (*(v108 + 8))(&v99 - v72, v58);
    v84 = [objc_opt_self() feet];
    sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
    sub_2588BB678();
    v85 = MEMORY[0x277D83D88];
    v79 = v58;
    sub_258890E8C(v76, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890E8C(v74, &qword_27F95D478, v85, sub_25889A568);
    v82 = 0;
    v83 = v117;
    v81 = v118;
  }

  v119(v73, v82, 1, v79);
  v86 = v104;
  sub_258890E8C(v104, &qword_27F961058, MEMORY[0x277CE10B8], sub_258890DA0);
  *(v86 + *(v111 + 7)) = 0;
  sub_25889B00C(v73, v86, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
  v87 = v116;
  sub_258890E1C(v81, v83 + v116[6], &qword_27F961050, MEMORY[0x277CE11F8], sub_258890DA0);
  *(v83 + v87[7]) = v105;
  v88 = v107;
  *v83 = v106;
  v83[1] = v88;
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_2588BFF50;
  v90 = v113;
  v91 = *v113;
  v92 = v113[1];
  *(v89 + 32) = *v113;
  *(v89 + 40) = v92;
  *(v89 + 48) = 0x746867696548;
  *(v89 + 56) = 0xE600000000000000;

  v93 = v81;
  v94 = sub_2588BD9A8();

  v95 = HKUIJoinStringsForAutomationIdentifier();

  if (v95)
  {
    v91 = sub_2588BD8A8();
    v92 = v96;

    sub_258890E8C(v93, &qword_27F961050, MEMORY[0x277CE11F8], sub_258890DA0);
  }

  else
  {
    sub_258890E8C(v93, &qword_27F961050, MEMORY[0x277CE11F8], sub_258890DA0);
  }

  result = sub_25889B0C4(v90, type metadata accessor for MedicalIDBiometricsViewModel);
  v98 = (v83 + v87[8]);
  *v98 = v91;
  v98[1] = v92;
  return result;
}

uint64_t type metadata accessor for EditHeightCellView()
{
  result = qword_27F961060;
  if (!qword_27F961060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258890CC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25878E130(255, &qword_27F95D488, 0x277CCAE20);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258890D38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_258890DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_258890E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_258890E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_258890F00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258890F78()
{
  sub_258890F00(319, &qword_27F95DA10, sub_2587B2F78, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for MedicalIDBiometricsViewModel();
    if (v1 <= 0x3F)
    {
      sub_258890DA0(319, &qword_27F961050, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for HealthDemographicDataProvider();
        if (v3 <= 0x3F)
        {
          sub_258890F00(319, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_2588996F8(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_258890DA0(319, &qword_27F961058, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_258890F00(319, &qword_27F95DAC0, MEMORY[0x28220C188], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  sub_2587BC234();
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2588911B0@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v129 = a1;
  v3 = type metadata accessor for EditHeightCellView();
  v4 = *(v3 - 8);
  v125 = (v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v7;
  MEMORY[0x28223BE20](v6);
  v11 = (&v118 - v10);
  sub_258899288();
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258899B2C();
  v127 = *(v17 - 8);
  v128 = v17;
  v18 = *(v127 + 64);
  MEMORY[0x28223BE20](v17);
  v126 = v19;
  v134 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258899C20();
  v21 = *(v20 - 1);
  v123 = v20;
  v124 = v21;
  v22 = *(v21 + 8);
  MEMORY[0x28223BE20](v20);
  v133 = &v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v1;
  v131 = type metadata accessor for EditHeightCellView;
  sub_258890D38(v1, v11, type metadata accessor for EditHeightCellView);
  v24 = *(v4 + 80);
  v25 = (v24 + 16) & ~v24;
  v132 = v9;
  v130 = v24;
  v26 = swift_allocObject();
  sub_258899E1C(v11, v26 + v25);
  sub_258890D38(v2, v8, type metadata accessor for EditHeightCellView);
  v27 = swift_allocObject();
  sub_258899E1C(v8, v27 + v25);
  *v16 = swift_getKeyPath();
  sub_258890F00(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_258899328();
  v29 = v28;
  v30 = *(v28 + 52);
  v31 = *MEMORY[0x277CDF988];
  v32 = sub_2588BC1C8();
  (*(*(v32 - 8) + 104))(v16 + v30, v31, v32);
  v33 = (v16 + *(v29 + 56));
  *v33 = sub_258899E80;
  v33[1] = v26;
  v34 = (v16 + *(v29 + 60));
  *v34 = sub_258899EF0;
  v34[1] = v27;
  v35 = v13;
  *(v16 + *(v13 + 36)) = 0;
  v36 = sub_2588BBAC8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v120 = v39;
  v119 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = &v118 - v119;
  v41 = v135;
  sub_25888FB1C(&v118 - v119);
  v122 = v11;
  sub_258890D38(v41, v11, v131);
  v42 = swift_allocObject();
  sub_258899E1C(v11, v42 + v25);
  v43 = sub_258899CDC();
  v44 = sub_25889AA78(&qword_27F95FB38, MEMORY[0x28220C160]);
  sub_2588BD118();

  v45 = *(v37 + 8);
  v121 = v37 + 8;
  v118 = v45;
  v45(v40, v36);
  sub_25889B0C4(v16, sub_258899288);
  v46 = v135;
  v47 = v122;
  sub_258890D38(v135, v122, v131);
  v48 = swift_allocObject();
  sub_258899E1C(v47, v48 + v25);
  v137 = v35;
  v138 = v36;
  v139 = v43;
  v140 = v44;
  swift_getOpaqueTypeConformance2();
  v49 = v133;
  v50 = v123;
  sub_2588BCED8();
  v51 = v46;

  v124[1](v49, v50);
  sub_258899F84();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52 - 8);
  v54 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v51 + *(v125 + 12);
  v56 = *v55;
  v57 = *(v55 + 8);
  LOBYTE(v137) = v56;
  v138 = v57;
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  LODWORD(v49) = v136;
  sub_25889A230(0, &qword_27F961160, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0338]);
  v59 = *(v58 - 1);
  if (v49 == 1)
  {
    v131 = v58;
    v132 = v53;
    v133 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    v125 = &v118;
    v130 = v59;
    v60 = *(v59 + 64);
    v61 = MEMORY[0x28223BE20](v58);
    v124 = (&v118 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
    v123 = &v118;
    MEMORY[0x28223BE20](v61);
    v63 = &v118 - v119;
    sub_25888FB1C(&v118 - v119);
    v64 = sub_2588BBA58();
    v122 = &v118;
    v65 = *(v64 - 8);
    v66 = *(v65 + 64);
    MEMORY[0x28223BE20](v64);
    v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_2588BBA68();
    v68 = v118(v63, v36);
    MEMORY[0x28223BE20](v68);
    sub_2588BBA38();
    sub_25889AA78(&qword_27F95DAB0, MEMORY[0x28220C100]);
    v69 = sub_2588BD7D8();
    v70 = *(v65 + 8);
    v71 = v70(&v118 - v67, v64);
    if (v69)
    {
      v70(&v118 - v67, v64);
    }

    else
    {
      MEMORY[0x28223BE20](v71);
      sub_2588BBA28();
      v73 = sub_2588BD7D8();
      v70(&v118 - v67, v64);
      v70(&v118 - v67, v64);
      if ((v73 & 1) == 0)
      {
        sub_25889A0FC();
        v90 = v89;
        v91 = *(v89 - 8);
        v92 = *(v91 + 64);
        MEMORY[0x28223BE20](v89);
        v94 = &v118 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_258894238(v94);
        sub_25889A230(0, &qword_27F9611F8, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0330]);
        v96 = (*(*(v95 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v95);
        (*(v91 + 16))(&v118 - v97, v94, v90);
        swift_storeEnumTagMultiPayload();
        sub_25889A020(0);
        v135 = v98;
        sub_25889B07C(&qword_27F961200, sub_25889A020);
        sub_25889A1E8(255);
        v100 = v99;
        sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
        v102 = v101;
        v103 = sub_25889A830();
        v104 = sub_25889A960(&qword_27F9611D8, &qword_27F9611E0);
        v137 = v100;
        v138 = v102;
        v139 = v103;
        v140 = v104;
        swift_getOpaqueTypeConformance2();
        v88 = v124;
        sub_2588BC778();
        (*(v91 + 8))(v94, v90);
        goto LABEL_8;
      }
    }

    sub_25889A020(0);
    v75 = *(*(v74 - 8) + 64);
    MEMORY[0x28223BE20](v74);
    v77 = &v118 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v77 = sub_2588BC608();
    *(v77 + 1) = 0;
    v77[16] = 1;
    sub_25889B124(0, &qword_27F961208, sub_25889A05C);
    sub_2588949A4(v135, &v77[*(v78 + 44)]);
    sub_25889A230(0, &qword_27F9611F8, sub_25889A020, sub_25889A0FC, MEMORY[0x277CE0330]);
    v80 = (*(*(v79 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v79);
    sub_25889AAC0(v77, &v118 - v81, sub_25889A020);
    swift_storeEnumTagMultiPayload();
    sub_25889A0FC();
    sub_25889B07C(&qword_27F961200, sub_25889A020);
    sub_25889A1E8(255);
    v83 = v82;
    sub_25889A568(255, &qword_27F95D478, MEMORY[0x277D83D88]);
    v85 = v84;
    v86 = sub_25889A830();
    v87 = sub_25889A960(&qword_27F9611D8, &qword_27F9611E0);
    v137 = v83;
    v138 = v85;
    v139 = v86;
    v140 = v87;
    swift_getOpaqueTypeConformance2();
    v88 = v124;
    sub_2588BC778();
    sub_25889AB30(v77, sub_25889A020);
LABEL_8:
    v54 = v133;
    sub_2587A3E40(v88, v133);
    v72 = (*(v130 + 56))(v54, 0, 1, v131);
    v53 = v132;
    goto LABEL_9;
  }

  v72 = (*(v59 + 56))(&v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), 1, 1, v58);
LABEL_9:
  v135 = &v118;
  MEMORY[0x28223BE20](v72);
  v106 = &v118 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v127;
  v107 = v128;
  v109 = *(v127 + 16);
  v110 = v134;
  v111 = v109(v106, v134, v128);
  v133 = &v118;
  MEMORY[0x28223BE20](v111);
  v112 = &v118 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889AAC0(v54, v112, sub_258899F84);
  v113 = v54;
  v114 = v129;
  v109(v129, v106, v107);
  sub_25889AA08();
  sub_25889AAC0(v112, &v114[*(v115 + 48)], sub_258899F84);
  sub_25889AB30(v113, sub_258899F84);
  v116 = *(v108 + 8);
  v116(v110, v107);
  sub_25889AB30(v112, sub_258899F84);
  return (v116)(v106, v107);
}

uint64_t sub_2588921B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2588BC608();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_25889B124(0, &qword_27F961230, sub_258899464);
  return sub_258897708(a1, a2 + *(v4 + 44));
}

void sub_258892228()
{
  v1 = v0;
  sub_258899748();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = sub_2588BC6F8();
  *(v5 + 1) = 0;
  v5[16] = 1;
  sub_25889B124(0, &qword_27F961210, sub_2588997DC);
  sub_258898840(v1, &v5[*(v6 + 44)]);
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2588BFF50;
  v8 = (v1 + *(type metadata accessor for EditHeightCellView() + 32));
  v9 = v8[1];
  *(v7 + 32) = *v8;
  *(v7 + 40) = v9;
  *(v7 + 48) = 0x56746E65746E6F43;
  *(v7 + 56) = 0xEB00000000776569;

  v10 = sub_2588BD9A8();

  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    sub_2588BD8A8();

    sub_25889B07C(&qword_27F961130, sub_258899748);
    sub_2588BCFB8();

    sub_25889B0C4(v5, sub_258899748);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258892444(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditHeightCellView() + 36));
  v3 = *v1;
  v2 = v1[1];
  v10[2] = v3;
  v10[3] = v2;
  sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v4 = sub_2588BBAC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_25888FB1C(v10 - v7);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  (*(v5 + 16))(v10 - v7, v10 - v7, v4);
  sub_2588BBD88();
  return (*(v5 + 8))(v10 - v7, v4);
}

uint64_t sub_2588925F4(uint64_t a1)
{
  v2 = sub_2588BC9A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for EditHeightCellView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  if (*a1)
  {
    v11 = *(a1 + 8);
    v10 = (*a1)(v10);
  }

  MEMORY[0x28223BE20](v10);
  *&v15[-16] = a1;
  sub_258890D38(a1, &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for EditHeightCellView);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_258899E1C(&v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  sub_2588BD5F8();
  sub_2588BC998();
  sub_2588BC0C8();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_258892838(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EditHeightCellView() + 40));
  v2 = *v1;
  v3 = *(v1 + 1);
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_2588BD2C8();
  sub_2588BD2D8();
}

uint64_t sub_258892910(uint64_t a1)
{
  v2 = type metadata accessor for EditHeightCellView();
  v3 = (a1 + *(v2 + 40));
  v4 = *v3;
  v5 = *(v3 + 1);
  v14[16] = v4;
  v15 = v5;
  sub_2588996F8(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  result = sub_2588BD2C8();
  if (v14[15] == 1)
  {
    v7 = MEMORY[0x277D83D88];
    sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
    v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v8 - 8);
    v11 = &v14[-v10];
    v12 = *(v2 + 24);
    sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
    MEMORY[0x259C8C5A0]();
    sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
    LODWORD(v12) = (*(*(v13 - 8) + 48))(v11, 1, v13);
    result = sub_258890E8C(v11, &qword_27F95D478, v7, sub_25889A568);
    if (v12 == 1)
    {
      return sub_258892ADC();
    }
  }

  return result;
}

uint64_t sub_258892ADC()
{
  v1 = type metadata accessor for HealthDemographicData();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587AF908();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EditHeightCellView();
  v11 = v0 + v10[15];
  if (*v11)
  {
    v12 = [*v11 suggestHealthData];
    v146 = v10;
    v147 = v0;
    if (v12)
    {
      v13 = v0;
      v14 = *(v0 + v10[7]);
      swift_getKeyPath();
      v148 = v14;
      sub_25889B07C(&qword_27F95D8D0, type metadata accessor for HealthDemographicDataProvider);
      sub_2588BBB98();

      v15 = OBJC_IVAR____TtC11MedicalIDUI29HealthDemographicDataProvider__data;
      swift_beginAccess();
      sub_258890D38(v14 + v15, v9, sub_2587AF908);
      if (!(*(v2 + 48))(v9, 1, v1))
      {
        sub_258890D38(v9, v5, type metadata accessor for HealthDemographicData);
        sub_25889B0C4(v9, sub_2587AF908);
        v61 = *&v5[*(v1 + 28)];
        sub_25889B0C4(v5, type metadata accessor for HealthDemographicData);
        sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
        v145 = &v131;
        v143 = *(*(v62 - 8) + 64);
        MEMORY[0x28223BE20](v62 - 8);
        v64 = &v131 - v63;
        v65 = v13 + v10[5];
        v66 = *(type metadata accessor for MedicalIDBiometricsViewModel() + 28);
        v67 = v61;
        v144 = v64;
        sub_2587F1E14(v61, v64);
        v142 = v67;

        v68 = sub_2588BBAC8();
        v141 = &v131;
        v69 = *(v68 - 8);
        v70 = *(v69 + 64);
        MEMORY[0x28223BE20](v68);
        v72 = &v131 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_25888FB1C(v72);
        v73 = sub_2588BBA58();
        v140 = &v131;
        v74 = *(v73 - 8);
        v75 = *(v74 + 64);
        MEMORY[0x28223BE20](v73);
        v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
        sub_2588BBA68();
        v77 = (*(v69 + 8))(v72, v68);
        MEMORY[0x28223BE20](v77);
        sub_2588BBA38();
        sub_25889AA78(&qword_27F95DAB0, MEMORY[0x28220C100]);
        LOBYTE(v65) = sub_2588BD7D8();
        v78 = *(v74 + 8);
        v79 = v78(&v131 - v76, v73);
        if (v65)
        {
          v80 = v78(&v131 - v76, v73);
        }

        else
        {
          MEMORY[0x28223BE20](v79);
          sub_2588BBA28();
          v81 = sub_2588BD7D8();
          v78(&v131 - v76, v73);
          v80 = v78(&v131 - v76, v73);
          if ((v81 & 1) == 0)
          {
            v120 = v143;
            MEMORY[0x28223BE20](v80);
            v121 = &v131 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
            v122 = v146;
            v123 = (v147 + v146[9]);
            v125 = *v123;
            v124 = v123[1];
            v149 = v125;
            v150 = v124;
            sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
            sub_2588BD2C8();
            v126 = v144;
            sub_2587BA828(v144, 1, v121);

            v128 = v122[11];
            MEMORY[0x28223BE20](v127);
            v129 = MEMORY[0x277D83D88];
            sub_258890E1C(v121, v121, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
            sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
            sub_2588BD2D8();

            sub_258890E8C(v121, &qword_27F95D478, v129, sub_25889A568);
            sub_258890E8C(v126, &qword_27F95D478, v129, sub_25889A568);
            return sub_258895CA8();
          }
        }

        v140 = &v131;
        v82 = v143;
        MEMORY[0x28223BE20](v80);
        v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF0;
        v84 = &v131 - v83;
        v85 = (v147 + v146[9]);
        v86 = *v85;
        v138 = v85[1];
        v139 = v86;
        v149 = v86;
        v150 = v138;
        sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
        v87 = sub_2588BD2C8();
        v141 = &v131;
        MEMORY[0x28223BE20](v87);
        v88 = &v131 - v83;
        v89 = sub_2587BA828(v144, 1, &v131 - v83);
        MEMORY[0x28223BE20](v89);
        v90 = &v131 - v83;
        sub_258890E1C(&v131 - v83, &v131 - v83, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
        sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
        v92 = v91;
        v93 = *(v91 - 1);
        v94 = *(v93 + 48);
        v137 = (v93 + 48);
        v135 = v94;
        if (v94(&v131 - v83, 1, v91) == 1)
        {

          v95 = MEMORY[0x277D83D88];
          sub_258890E8C(v88, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
          sub_258890E8C(v90, &qword_27F95D478, v95, sub_25889A568);
          v96 = 1;
        }

        else
        {
          sub_2588BB688();
          (*(v93 + 8))(&v131 - v83, v92);
          v97 = [objc_opt_self() feet];
          sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
          sub_2588BB678();

          sub_258890E8C(v88, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
          v96 = 0;
        }

        v98 = *(v93 + 56);
        v136 = (v93 + 56);
        v134 = v98;
        v99 = v98(v84, v96, 1, v92);
        v132 = v93;
        v100 = v146[13];
        v141 = v92;
        v101 = v143;
        MEMORY[0x28223BE20](v99);
        v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF0;
        v103 = MEMORY[0x277D83D88];
        sub_258890E1C(v84, &v131 - v102, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
        sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
        v133 = v104;
        sub_2588BD2D8();
        v105 = sub_258890E8C(v84, &qword_27F95D478, v103, sub_25889A568);
        v140 = &v131;
        MEMORY[0x28223BE20](v105);
        v106 = &v131 - v102;
        v149 = v139;
        v150 = v138;
        v107 = sub_2588BD2C8();
        v139 = &v131;
        MEMORY[0x28223BE20](v107);
        v108 = sub_2587BA828(v144, 1, &v131 - v102);
        v109 = v141;
        MEMORY[0x28223BE20](v108);
        sub_258890E1C(&v131 - v102, &v131 - v102, &qword_27F95D478, v103, sub_25889A568);
        if (v135(&v131 - v102, 1, v109) == 1)
        {

          v110 = MEMORY[0x277D83D88];
          sub_258890E8C(&v131 - v102, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
          sub_258890E8C(&v131 - v102, &qword_27F95D478, v110, sub_25889A568);
          v111 = 1;
        }

        else
        {
          sub_2588BB688();
          v113 = v112;
          (*(v132 + 8))(&v131 - v102, v109);
          fmod(v113, 12.0);
          v114 = [objc_opt_self() inches];
          sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
          sub_2588BB678();

          sub_258890E8C(&v131 - v102, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
          v111 = 0;
        }

        v115 = v134(v106, v111, 1, v109);
        v116 = v146[12];
        MEMORY[0x28223BE20](v115);
        v118 = MEMORY[0x277D83D88];
        sub_258890E1C(v106, &v131 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
        sub_2588BD2D8();

        sub_258890E8C(v106, &qword_27F95D478, v118, sub_25889A568);
        sub_258890E8C(v144, &qword_27F95D478, v118, sub_25889A568);
        return sub_258895CA8();
      }

      sub_25889B0C4(v9, sub_2587AF908);
    }

    v16 = sub_2588BBAC8();
    v145 = &v131;
    v17 = *(v16 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v16);
    v20 = &v131 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_25888FB1C(v20);
    v21 = sub_2588BBA58();
    v144 = &v131;
    v22 = *(v21 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF0;
    sub_2588BBA68();
    v25 = (*(v17 + 8))(v20, v16);
    MEMORY[0x28223BE20](v25);
    sub_2588BBA38();
    sub_25889AA78(&qword_27F95DAB0, MEMORY[0x28220C100]);
    v26 = sub_2588BD7D8();
    v27 = *(v22 + 8);
    v28 = v27(&v131 - v24, v21);
    if (v26)
    {
      v27(&v131 - v24, v21);
    }

    else
    {
      MEMORY[0x28223BE20](v28);
      sub_2588BBA28();
      v29 = sub_2588BD7D8();
      v27(&v131 - v24, v21);
      v27(&v131 - v24, v21);
      if ((v29 & 1) == 0)
      {
        sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
        v50 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v49 - 8);
        v51 = v146;
        v52 = (v147 + v146[9]);
        v54 = *v52;
        v53 = v52[1];
        v149 = v54;
        v150 = v53;
        sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
        sub_2588BD2C8();

        if (qword_27F95D038 != -1)
        {
          swift_once();
        }

        sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
        v56 = v55;
        __swift_project_value_buffer(v55, qword_27F969718);
        v57 = [objc_opt_self() centimeters];
        sub_2588BB6B8();

        v58 = (*(*(v56 - 8) + 56))(&v131 - v50, 0, 1, v56);
        v59 = v51[11];
        MEMORY[0x28223BE20](v58);
        v60 = MEMORY[0x277D83D88];
        sub_258890E1C(&v131 - v50, &v131 - v50, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
        sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
        sub_2588BD2D8();
        sub_258890E8C(&v131 - v50, &qword_27F95D478, v60, sub_25889A568);
        return sub_258895CA8();
      }
    }

    sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
    v145 = &v131;
    v31 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v30 - 8);
    v32 = v146;
    v33 = (v147 + v146[9]);
    v34 = *v33;
    v143 = v33[1];
    v144 = v34;
    v149 = v34;
    v150 = v143;
    sub_258890F00(0, &qword_27F961070, type metadata accessor for HeightDataProvider, MEMORY[0x277CE10B8]);
    v142 = v35;
    sub_2588BD2C8();
    if (qword_27F95D020 != -1)
    {
      swift_once();
    }

    sub_258890CC8(0, &qword_27F95D480, MEMORY[0x28220B528]);
    v37 = v36;
    v141 = __swift_project_value_buffer(v36, qword_27F9696D0);
    sub_2588BB688();
    v140 = objc_opt_self();
    v38 = [v140 feet];
    v139 = sub_25878E130(0, &qword_27F95D488, 0x277CCAE20);
    sub_2588BB678();
    v39 = *(v37 - 8);
    v137 = *(v39 + 56);
    v138 = (v39 + 56);
    v137(&v131 - v31, 0, 1, v37);

    v41 = v32[13];
    MEMORY[0x28223BE20](v40);
    v42 = MEMORY[0x277D83D88];
    v136 = sub_25889A568;
    sub_258890E1C(&v131 - v31, &v131 - v31, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
    v135 = v43;
    sub_2588BD2D8();
    v44 = sub_258890E8C(&v131 - v31, &qword_27F95D478, v42, sub_25889A568);
    MEMORY[0x28223BE20](v44);
    v149 = v144;
    v150 = v143;
    sub_2588BD2C8();

    sub_2588BB688();
    fmod(v45, 12.0);
    v46 = [v140 inches];
    sub_2588BB678();
    v47 = (v137)(&v131 - v31, 0, 1, v37);
    v48 = v146[12];
    MEMORY[0x28223BE20](v47);
    sub_258890E1C(&v131 - v31, &v131 - v31, &qword_27F95D478, v42, v136);
    sub_2588BD2D8();
    sub_258890E8C(&v131 - v31, &qword_27F95D478, v42, sub_25889A568);
    return sub_258895CA8();
  }

  v130 = *(v11 + 8);
  sub_25878E130(0, &qword_27F95D3C0, off_2798A65E8);
  sub_2587BC2A8();
  result = sub_2588BC348();
  __break(1u);
  return result;
}

void sub_258894238(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for EditHeightCellView();
  v3 = v2 - 8;
  v59 = *(v2 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v2);
  v60 = v5;
  v62 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2588BC318();
  v7 = *(v6 - 8);
  v70 = v6;
  v71 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889A1E8(0);
  v61 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v63 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889A2B4();
  v58 = v14;
  v57 = *(v14 - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25889A388();
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2588BC688();
  v67 = v25;
  v68 = v24;
  v65 = v26;
  v66 = v27;
  sub_258890DA0(0, &qword_27F961050, MEMORY[0x277CE11F8]);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = *(v3 + 52);
  sub_258890DA0(0, &qword_27F961058, MEMORY[0x277CE10B8]);
  v69 = v1;
  v56[2] = v30;
  v56[1] = v31;
  sub_2588BD2E8();
  v72 = v1;
  sub_25889A568(0, &qword_27F95D478, MEMORY[0x277D83D88]);
  v33 = v32;
  sub_25889A470();
  sub_25889A960(&qword_27F95D490, &qword_27F95D498);
  sub_25889A72C();
  v34 = v17;
  sub_2588BD398();
  sub_2588BC308();
  v35 = sub_25889B07C(&qword_27F9611C8, sub_25889A388);
  v36 = v70;
  sub_2588BCE88();
  v37 = v10;
  v38 = v36;
  (*(v71 + 8))(v37, v36);
  (*(v20 + 8))(v23, v19);
  sub_2588996F8(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_2588BFF50;
  v40 = *(v3 + 40);
  v41 = v69;
  v42 = (v69 + v40);
  v43 = v42[1];
  *(v39 + 32) = *v42;
  *(v39 + 40) = v43;
  *(v39 + 48) = 0x72656B636950;
  *(v39 + 56) = 0xE600000000000000;

  v44 = sub_2588BD9A8();

  v45 = HKUIJoinStringsForAutomationIdentifier();

  if (v45)
  {
    sub_2588BD8A8();

    v73 = v19;
    v74 = v38;
    v75 = v35;
    v76 = MEMORY[0x277CDDB70];
    swift_getOpaqueTypeConformance2();
    v46 = v63;
    v47 = v58;
    sub_2588BCFB8();

    v48 = (*(v57 + 8))(v34, v47);
    v49 = *(*(v33 - 8) + 64);
    MEMORY[0x28223BE20](v48);
    v51 = v56 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BD2C8();
    v52 = v41;
    v53 = v62;
    sub_258890D38(v52, v62, type metadata accessor for EditHeightCellView);
    v54 = (*(v59 + 80) + 16) & ~*(v59 + 80);
    v55 = swift_allocObject();
    sub_258899E1C(v53, v55 + v54);
    sub_25889A830();
    sub_25889A960(&qword_27F9611D8, &qword_27F9611E0);
    sub_2588BD118();

    sub_258890E8C(v51, &qword_27F95D478, MEMORY[0x277D83D88], sub_25889A568);
    sub_25889AB30(v46, sub_25889A1E8);
  }

  else
  {
    __break(1u);
  }
}