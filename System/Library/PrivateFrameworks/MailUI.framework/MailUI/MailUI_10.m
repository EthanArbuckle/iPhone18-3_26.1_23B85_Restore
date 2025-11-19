uint64_t MUICatchUpFeedbackFeature.title.getter(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      sub_214CCF614();
      v2 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v3 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v2);

      return v3;
    }

    else if (a1 == 2)
    {
      sub_214CCF614();
      v6 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      v7 = sub_214CCCF54();

      MEMORY[0x277D82BD8](v6);

      return v7;
    }

    else
    {
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
    }
  }

  else
  {
    sub_214CCF614();
    v4 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614();
    sub_214B1C228();
    v5 = sub_214CCCF54();

    MEMORY[0x277D82BD8](v4);

    return v5;
  }

  return v8;
}

uint64_t MUICatchUpFeedbackFeature.imageName.getter(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      MEMORY[0x277D82BE0](@"text.line.3.summary");
      v2 = sub_214CCF564();
      MEMORY[0x277D82BD8](@"text.line.3.summary");
      return v2;
    }

    else if (a1 == 2)
    {
      MEMORY[0x277D82BE0](@"apple.intelligence");
      v4 = sub_214CCF564();
      MEMORY[0x277D82BD8](@"apple.intelligence");
      return v4;
    }

    else
    {
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
    }
  }

  else
  {
    MEMORY[0x277D82BE0](@"text.line.2.summary");
    v3 = sub_214CCF564();
    MEMORY[0x277D82BD8](@"text.line.2.summary");
    return v3;
  }

  return v5;
}

uint64_t sub_214C0B8B4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 2)
  {
    v5 = *MEMORY[0x277D424B0];
    v4 = sub_214CCDA34();
    return (*(*(v4 - 8) + 104))(a2, v5);
  }

  else if (a1 == 2)
  {
    v6 = *MEMORY[0x277D424A8];
    v2 = sub_214CCDA34();
    return (*(*(v2 - 8) + 104))(a2, v6);
  }

  else
  {
    sub_214B11080();
    result = sub_214CD0204();
    __break(1u);
  }

  return result;
}

uint64_t sub_214C0BA2C()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA36DC0);
  __swift_project_value_buffer(v1, qword_27CA36DC0);
  type metadata accessor for MUIExternalSummarizationOnboardingViewController();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t type metadata accessor for MUIExternalSummarizationOnboardingViewController()
{
  v1 = qword_27CA36E08;
  if (!qword_27CA36E08)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_214C0BB08()
{
  if (qword_27CA34068 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA36DC0);
}

uint64_t sub_214C0BB74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C0BB08();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

double sub_214C0BBE0@<D0>(void *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v8 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v9 = sub_214C0BE70();
  v10 = v2;
  if (v9)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v9;
    *(v3 + 24) = v10;
    v5 = sub_214C0FE3C;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v6;
  *&result = MEMORY[0x277D82BD8](v8).n128_u64[0];
  return result;
}

double sub_214C0BD1C(uint64_t *a1, void *a2)
{
  sub_214B78A8C(a1, v10);
  v8 = v10[0];
  v9 = v10[1];
  if (v10[0])
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v8;
    *(v2 + 24) = v9;
    v5 = sub_214C0FE30;
    v6 = v2;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  sub_214C0BEE4(v5, v6);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t sub_214C0BE70()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI);
  swift_beginAccess();
  v3 = *v2;
  sub_214B5188C(*v2);
  swift_endAccess();
  return v3;
}

uint64_t sub_214C0BEE4(uint64_t a1, uint64_t a2)
{
  sub_214B5188C(a1);
  v5 = (v2 + OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI);
  swift_beginAccess();
  v3 = *v5;
  *v5 = a1;
  v5[1] = a2;
  sub_214A6B584(v3);
  swift_endAccess();
  return sub_214A6B584(a1);
}

uint64_t sub_214C0BFEC@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView);
  swift_beginAccess();
  sub_214C0C050(v3, a1);
  return swift_endAccess();
}

void *sub_214C0C050(const void *a1, void *a2)
{
  v6 = sub_214CCD7B4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214C0C178(uint64_t a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = &v4 - v4;
  v11 = v2;
  v10 = v1;
  sub_214C0C050(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView);
  v7 = &v9;
  swift_beginAccess();
  sub_214C0C25C(v5, v6);
  swift_endAccess();
  return sub_214C0C484(v8);
}

void *sub_214C0C25C(const void *a1, void *a2)
{
  v7 = sub_214CCD7B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_214C0C484(uint64_t a1)
{
  v3 = sub_214CCD7B4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

char *sub_214C0C554()
{
  v6 = 0;
  v0 = OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI;
  *OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI = 0;
  *(v0 + 8) = 0;
  v3 = OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView;
  v1 = sub_214CCD7B4();
  (*(*(v1 - 8) + 56))(&v6[v3], 1);
  v5.receiver = v6;
  v5.super_class = type metadata accessor for MUIExternalSummarizationOnboardingViewController();
  v4 = objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0);
  MEMORY[0x277D82BE0](v4);
  v6 = v4;
  MEMORY[0x277D82BD8](v4);
  return v4;
}

id MUIExternalSummarizationOnboardingViewController.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void MUIExternalSummarizationOnboardingViewController.init(coder:)()
{
  v0 = OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI;
  *OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_didDismissOnboardingUI = 0;
  *(v0 + 8) = 0;
  v2 = OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView;
  v1 = sub_214CCD7B4();
  (*(*(v1 - 8) + 56))(v2, 1);
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

double sub_214C0C820()
{
  v27 = "Fatal error";
  v28 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v29 = "MailUI/MUIExternalSummarizationOnboarding.swift";
  v49 = 0;
  v44 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DE8);
  v30 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v40 = &v13 - v30;
  v49 = v0;
  MEMORY[0x277D82BE0](v0);
  v33 = 0;
  v31 = type metadata accessor for MUIExternalSummarizationOnboardingViewController();
  v48.receiver = v0;
  v48.super_class = v31;
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  MEMORY[0x277D82BD8](v0);
  MEMORY[0x277D82BE0](v0);
  v32 = v47;
  v47[3] = v31;
  v47[4] = sub_214C0CF70();
  v47[0] = v0;
  sub_214CCD7A4();
  v2 = sub_214CCD7B4();
  (*(*(v2 - 8) + 56))(v40, 0, 1);
  v36 = &qword_27CA36000;
  v34 = &v0[OBJC_IVAR____TtC6MailUI48MUIExternalSummarizationOnboardingViewController_onboardingView];
  v35 = &v46;
  v37 = 0;
  swift_beginAccess();
  sub_214C0C25C(v40, v34);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36DF8);
  v38 = &v42[v36[444]];
  v39 = &v45;
  swift_beginAccess();
  sub_214C0C050(v38, v40);
  swift_endAccess();
  v41 = sub_214CCE5A4();
  v44 = v41;
  [v42 addChildViewController_];
  *&v3 = MEMORY[0x277D82BE0](v42).n128_u64[0];
  v43 = [v42 view];
  MEMORY[0x277D82BD8](v42);
  if (v43)
  {
    v26 = v43;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v24 = v26;
  *&v4 = MEMORY[0x277D82BE0](v41).n128_u64[0];
  v25 = [v41 view];
  *&v5 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  if (v25)
  {
    v23 = v25;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v21 = v23;
  [v24 addSubview_];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v24);
  *&v6 = MEMORY[0x277D82BE0](v41).n128_u64[0];
  v22 = [v41 view];
  *&v7 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  if (v22)
  {
    v20 = v22;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v18 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v18);
  *&v8 = MEMORY[0x277D82BE0](v41).n128_u64[0];
  v19 = [v41 view];
  MEMORY[0x277D82BD8](v41);
  if (v19)
  {
    v17 = v19;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v15 = v17;
  *&v9 = MEMORY[0x277D82BE0](v42).n128_u64[0];
  v16 = [v42 view];
  *&v10 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v16)
  {
    v14 = v16;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  [v15 mf:v10 pinToView:v14 usingLayoutMargins:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v15);
  *&v11 = MEMORY[0x277D82BE0](v42).n128_u64[0];
  [v41 didMoveToParentViewController_];
  MEMORY[0x277D82BD8](v42);
  *&result = MEMORY[0x277D82BD8](v41).n128_u64[0];
  return result;
}

unint64_t sub_214C0CF70()
{
  v2 = qword_27CA36DF0;
  if (!qword_27CA36DF0)
  {
    type metadata accessor for MUIExternalSummarizationOnboardingViewController();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36DF0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214C0D040(uint64_t a1, uint64_t a2)
{
  v240 = a1;
  v225 = a2;
  v254 = sub_214C0F650;
  v258 = sub_214A7E854;
  v260 = sub_214A662DC;
  v262 = sub_214A662DC;
  v265 = sub_214A7E40C;
  v186 = sub_214C0F650;
  v187 = sub_214A7E854;
  v188 = sub_214A662DC;
  v189 = sub_214A662DC;
  v190 = sub_214A7E40C;
  v191 = sub_214C0FA48;
  v192 = sub_214A7E63C;
  v193 = sub_214A7E854;
  v194 = sub_214A662DC;
  v195 = sub_214A662DC;
  v196 = sub_214A7E40C;
  v197 = sub_214BC6620;
  v198 = sub_214BC6628;
  v199 = sub_214B21624;
  v200 = sub_214A662DC;
  v201 = sub_214A662DC;
  v202 = sub_214B217B4;
  v203 = "Fatal error";
  v204 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v205 = "MailUI/MUIExternalSummarizationOnboarding.swift";
  v300 = *MEMORY[0x277D85DE8];
  v288 = 0;
  v287 = 0;
  v286 = 0;
  v285 = 0;
  v206 = 0;
  v280 = 0;
  v221 = 0;
  v207 = sub_214CCD7D4();
  v208 = *(v207 - 8);
  v209 = v207 - 8;
  v210 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v211 = v83 - v210;
  v212 = sub_214CCD154();
  v214 = *(v212 - 8);
  v213 = v212 - 8;
  v215 = v214;
  v216 = *(v214 + 64);
  v217 = (v216 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v221);
  v218 = v83 - v217;
  v219 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v220 = v83 - v219;
  v288 = v83 - v219;
  v250 = sub_214CCD804();
  v246 = *(v250 - 8);
  v247 = v250 - 8;
  v243 = v246;
  v244 = *(v246 + 64);
  v222 = (v244 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v221);
  v223 = v83 - v222;
  v224 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v249 = v83 - v224;
  v237 = sub_214CCDA74();
  v235 = *(v237 - 8);
  v236 = v237 - 8;
  v231 = v235[8];
  v226 = (v231 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v240);
  v227 = v83 - v226;
  v228 = (v231 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v229 = v83 - v228;
  v230 = (v231 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v232 = v83 - v230;
  v233 = (v231 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v9 = v83 - v233;
  v234 = v83 - v233;
  v287 = v10;
  v286 = v11;
  v285 = v12;
  v13 = sub_214C0BB08();
  v238 = v235[2];
  v239 = v235 + 2;
  v238(v9, v13, v237);
  v241 = *(v246 + 16);
  v242 = v246 + 16;
  v241(v249, v240, v250);
  v245 = *(v243 + 80);
  v248 = (v245 + 16) & ~v245;
  v256 = 7;
  v257 = swift_allocObject();
  v251 = *(v246 + 32);
  v252 = v246 + 32;
  v251(v257 + v248, v249, v250);
  v269 = sub_214CCDA54();
  v270 = sub_214CCFBB4();
  v253 = 17;
  v261 = swift_allocObject();
  *(v261 + 16) = 32;
  v263 = swift_allocObject();
  *(v263 + 16) = 8;
  v255 = 32;
  v14 = swift_allocObject();
  v15 = v257;
  v259 = v14;
  *(v14 + 16) = v254;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v259;
  v266 = v16;
  *(v16 + 16) = v258;
  *(v16 + 24) = v17;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v264 = sub_214CD03C4();
  v267 = v18;

  v19 = v261;
  v20 = v267;
  *v267 = v260;
  v20[1] = v19;

  v21 = v263;
  v22 = v267;
  v267[2] = v262;
  v22[3] = v21;

  v23 = v266;
  v24 = v267;
  v267[4] = v265;
  v24[5] = v23;
  sub_214A63280();

  if (os_log_type_enabled(v269, v270))
  {
    v25 = v206;
    v179 = sub_214CCFF24();
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v180 = sub_214A632C4(0);
    v181 = sub_214A632C4(1);
    v182 = &v273;
    v273 = v179;
    v183 = &v290;
    v290 = v180;
    v184 = &v289;
    v289 = v181;
    sub_214A6627C(2, &v273);
    sub_214A6627C(1, v182);
    v271 = v260;
    v272 = v261;
    sub_214A66290(&v271, v182, v183, v184);
    v185 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v271 = v262;
      v272 = v263;
      sub_214A66290(&v271, &v273, &v290, &v289);
      v176 = 0;
      v271 = v265;
      v272 = v266;
      sub_214A66290(&v271, &v273, &v290, &v289);
      v175 = 0;
      _os_log_impl(&dword_214A5E000, v269, v270, "Dismissed onboarding view with dismissType: %s", v179, 0xCu);
      sub_214A669DC(v180);
      sub_214A669DC(v181);
      sub_214CCFF04();

      v177 = v175;
    }
  }

  else
  {
    v26 = v206;

    v177 = v26;
  }

  v171 = v177;
  v27 = MEMORY[0x277D82BD8](v269);
  v172 = v235[1];
  v173 = v235 + 1;
  v172(v234, v237, v27);
  v241(v223, v240, v250);
  v174 = (*(v246 + 88))(v223, v250);
  if (v174 == *MEMORY[0x277D0D7F0])
  {
    (*(v208 + 104))(v211, *MEMORY[0x277D0D758], v207);
    sub_214CCD7C4();
    v28 = v232;
    (*(v208 + 8))(v211, v207);
    v29 = sub_214C0BB08();
    v238(v28, v29, v237);
    v156 = v215;
    v154 = *(v214 + 16);
    v155 = v214 + 16;
    v154(v218, v220, v212);
    v157 = (*(v156 + 80) + 16) & ~*(v156 + 80);
    v161 = 7;
    v158 = swift_allocObject();
    (*(v214 + 32))(v158 + v157, v218, v212);

    v160 = 32;
    v30 = swift_allocObject();
    v31 = v158;
    v162 = v30;
    *(v30 + 16) = v191;
    *(v30 + 24) = v31;

    v169 = sub_214CCDA54();
    v170 = sub_214CCFBB4();
    v159 = 17;
    v164 = swift_allocObject();
    *(v164 + 16) = 32;
    v165 = swift_allocObject();
    *(v165 + 16) = 8;
    v32 = swift_allocObject();
    v33 = v162;
    v163 = v32;
    *(v32 + 16) = v192;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v163;
    v167 = v34;
    *(v34 + 16) = v193;
    *(v34 + 24) = v35;
    v166 = sub_214CD03C4();
    v168 = v36;

    v37 = v164;
    v38 = v168;
    *v168 = v194;
    v38[1] = v37;

    v39 = v165;
    v40 = v168;
    v168[2] = v195;
    v40[3] = v39;

    v41 = v167;
    v42 = v168;
    v168[4] = v196;
    v42[5] = v41;
    sub_214A63280();

    if (os_log_type_enabled(v169, v170))
    {
      v43 = v171;
      v147 = sub_214CCFF24();
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v148 = sub_214A632C4(0);
      v149 = sub_214A632C4(1);
      v150 = &v276;
      v276 = v147;
      v151 = &v292;
      v292 = v148;
      v152 = &v291;
      v291 = v149;
      sub_214A6627C(2, &v276);
      sub_214A6627C(1, v150);
      v274 = v194;
      v275 = v164;
      sub_214A66290(&v274, v150, v151, v152);
      v153 = v43;
      if (v43)
      {

        __break(1u);
      }

      else
      {
        v274 = v195;
        v275 = v165;
        sub_214A66290(&v274, &v276, &v292, &v291);
        v145 = 0;
        v274 = v196;
        v275 = v167;
        sub_214A66290(&v274, &v276, &v292, &v291);
        _os_log_impl(&dword_214A5E000, v169, v170, "Opening onboarding sign-in url: %s", v147, 0xCu);
        sub_214A669DC(v148);
        sub_214A669DC(v149);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v44 = MEMORY[0x277D82BD8](v169);
    v172(v232, v237, v44);
    v295 = 0;
    v144 = [objc_opt_self() defaultWorkspace];
    if (v144)
    {
      v143 = v144;
    }

    else
    {
      sub_214CD01F4();
      __break(1u);
    }

    v141 = v143;
    v154(v218, v220, v212);
    v140 = sub_214CCD104();
    v132 = *(v214 + 8);
    v133 = v214 + 8;
    v132(v218, v212);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352E0);
    sub_214CD03C4();
    v134 = MEMORY[0x277D837D0];
    v135 = MEMORY[0x277D84F70] + 8;
    v136 = MEMORY[0x277D837E0];
    v137 = sub_214CCF344();
    v139 = sub_214CCF304();

    v281 = v295;
    v142 = [v141 openSensitiveURL:v140 withOptions:v139 error:&v281];
    v138 = v281;
    MEMORY[0x277D82BE0](v281);
    v45 = v295;
    v295 = v138;
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v140);
    v46 = MEMORY[0x277D82BD8](v141);
    if ((v142 & 1) == 0)
    {
      v91 = v295;
      v93 = sub_214CCD084();
      MEMORY[0x277D82BD8](v91);
      swift_willThrow();
      v64 = v227;
      v92 = 0;
      v65 = v93;
      v280 = v93;
      v66 = sub_214C0BB08();
      v238(v64, v66, v237);
      v67 = v93;
      v97 = 7;
      v95 = swift_allocObject();
      *(v95 + 16) = v93;
      sub_214B1C228();

      v105 = sub_214CCDA54();
      v106 = sub_214CCFBA4();
      v94 = 17;
      v100 = swift_allocObject();
      *(v100 + 16) = 64;
      v101 = swift_allocObject();
      *(v101 + 16) = 8;
      v96 = 32;
      v68 = swift_allocObject();
      v69 = v95;
      v98 = v68;
      *(v68 + 16) = v197;
      *(v68 + 24) = v69;
      v70 = swift_allocObject();
      v71 = v98;
      v99 = v70;
      *(v70 + 16) = v198;
      *(v70 + 24) = v71;
      v72 = swift_allocObject();
      v73 = v99;
      v103 = v72;
      *(v72 + 16) = v199;
      *(v72 + 24) = v73;
      v102 = sub_214CD03C4();
      v104 = v74;

      v75 = v100;
      v76 = v104;
      *v104 = v200;
      v76[1] = v75;

      v77 = v101;
      v78 = v104;
      v104[2] = v201;
      v78[3] = v77;

      v79 = v103;
      v80 = v104;
      v104[4] = v202;
      v80[5] = v79;
      sub_214A63280();

      if (os_log_type_enabled(v105, v106))
      {
        v81 = v92;
        v84 = sub_214CCFF24();
        v83[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v85 = sub_214A632C4(1);
        v86 = sub_214A632C4(0);
        v87 = &v279;
        v279 = v84;
        v88 = &v294;
        v294 = v85;
        v89 = &v293;
        v293 = v86;
        sub_214A6627C(2, &v279);
        sub_214A6627C(1, v87);
        v277 = v200;
        v278 = v100;
        sub_214A66290(&v277, v87, v88, v89);
        v90 = v81;
        if (v81)
        {

          __break(1u);
        }

        else
        {
          v277 = v201;
          v278 = v101;
          sub_214A66290(&v277, &v279, &v294, &v293);
          v83[1] = 0;
          v277 = v202;
          v278 = v103;
          sub_214A66290(&v277, &v279, &v294, &v293);
          _os_log_impl(&dword_214A5E000, v105, v106, "Failed to open onboarding url, error: %@", v84, 0xCu);
          sub_214A669DC(v85);
          sub_214A669DC(v86);
          sub_214CCFF04();
        }
      }

      else
      {
      }

      v82 = MEMORY[0x277D82BD8](v105);
      v172(v227, v237, v82);
    }

    (v132)(v220, v212, v46);
  }

  else if (v174 == *MEMORY[0x277D0D808])
  {
    sub_214CCD7F4();
    sub_214CCD7E4();
  }

  else
  {
    v47 = v229;
    v48 = sub_214C0BB08();
    v238(v47, v48, v237);
    v241(v249, v240, v250);
    v119 = (v245 + 16) & ~v245;
    v122 = 7;
    v123 = swift_allocObject();
    v251(v123 + v119, v249, v250);
    v130 = sub_214CCDA54();
    v131 = sub_214CCFBB4();
    v120 = 17;
    v125 = swift_allocObject();
    *(v125 + 16) = 32;
    v126 = swift_allocObject();
    *(v126 + 16) = 8;
    v121 = 32;
    v49 = swift_allocObject();
    v50 = v123;
    v124 = v49;
    *(v49 + 16) = v186;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v124;
    v128 = v51;
    *(v51 + 16) = v187;
    *(v51 + 24) = v52;
    v127 = sub_214CD03C4();
    v129 = v53;

    v54 = v125;
    v55 = v129;
    *v129 = v188;
    v55[1] = v54;

    v56 = v126;
    v57 = v129;
    v129[2] = v189;
    v57[3] = v56;

    v58 = v128;
    v59 = v129;
    v129[4] = v190;
    v59[5] = v58;
    sub_214A63280();

    if (os_log_type_enabled(v130, v131))
    {
      v60 = v171;
      v112 = sub_214CCFF24();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v113 = sub_214A632C4(0);
      v114 = sub_214A632C4(1);
      v115 = &v284;
      v284 = v112;
      v116 = &v297;
      v297 = v113;
      v117 = &v296;
      v296 = v114;
      sub_214A6627C(2, &v284);
      sub_214A6627C(1, v115);
      v282 = v188;
      v283 = v125;
      sub_214A66290(&v282, v115, v116, v117);
      v118 = v60;
      if (v60)
      {

        __break(1u);
      }

      else
      {
        v282 = v189;
        v283 = v126;
        sub_214A66290(&v282, &v284, &v297, &v296);
        v110 = 0;
        v282 = v190;
        v283 = v128;
        sub_214A66290(&v282, &v284, &v297, &v296);
        _os_log_impl(&dword_214A5E000, v130, v131, "Unhandled dismissal with type:  %s", v112, 0xCu);
        sub_214A669DC(v113);
        sub_214A669DC(v114);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v61 = MEMORY[0x277D82BD8](v130);
    v172(v229, v237, v61);
    (*(v246 + 8))(v223, v250);
  }

  v298 = sub_214C0BE70();
  v299 = v62;
  if (!v298)
  {
    return sub_214B86488(&v298);
  }

  v107 = &v298;
  v108 = v298;
  v109 = v299;

  sub_214B86488(v107);
  v108(v240);
}

uint64_t sub_214C0F59C(uint64_t a1)
{
  v3[1] = a1;
  v6 = sub_214CCD804();
  v5 = *(v6 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v6);
  v7 = v3 - v4;
  (*(v5 + 16))(v1);
  return sub_214CCF5B4();
}

uint64_t sub_214C0F650()
{
  v1 = *(sub_214CCD804() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_214C0F59C(v2);
}

id MUIExternalSummarizationOnboardingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_214CCF544();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id MUIExternalSummarizationOnboardingViewController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUIExternalSummarizationOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214C0F9F8(void (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_214C0FA48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_214CCD154();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_214C0F6B4(v3, a1);
}

unint64_t sub_214C0FABC()
{
  v2 = qword_27CA36E00;
  if (!qword_27CA36E00)
  {
    sub_214CCD154();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36E00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C0FB58()
{
  updated = sub_214C0FD94();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_214C0FD94()
{
  v4 = qword_27CA36E18;
  if (!qword_27CA36E18)
  {
    sub_214CCD7B4();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27CA36E18);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214C0FEBC()
{
  v2 = *(v0 + OBJC_IVAR___MUIHighlightedMessage_topLine);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214C0FF78()
{
  v2 = *(v0 + OBJC_IVAR___MUIHighlightedMessage_messageListItem);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_214C100E4()
{
  v8 = (v0 + OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  swift_endAccess();
  if (v10)
  {
    return v9;
  }

  v4 = sub_214C1032C(v7);
  v5 = v1;

  v3 = &v7[OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender];
  swift_beginAccess();
  *v3 = v4;
  v3[1] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_214C10290(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_214C1032C(void *a1)
{
  v42 = [a1 messageListItem];
  swift_getObjectType();
  v41 = [v42 senderList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
  sub_214CCF7E4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EB0);
  sub_214B110B8();
  sub_214CCFA74();
  if (!v43)
  {

    MEMORY[0x277D82BD8](v41);
    v37 = [objc_opt_self() noSenderPlaceholder];
    v38 = sub_214CCF564();
    MEMORY[0x277D82BD8](v37);
    return v38;
  }

  MEMORY[0x277D82BD8](v41);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v1 = [v43 emailAddressValue];
  v36 = v1;
  if (v1)
  {
    swift_unknownObjectRelease();
    v28 = MSSharedContactStore();
    MEMORY[0x277D82BE0](v36);
    v46 = 0;
    objc_storeStrong(&v46, v36);
    v29 = [v46 emailAddressValue];
    v4 = [v29 simpleAddress];
    v30 = v4;
    v44 = 0;
    if (v4)
    {
      MEMORY[0x277D82BE0](v4);
    }

    else
    {
      v45 = [v46 stringValue];
      v44 = 1;
      MEMORY[0x277D82BE0](v45);
    }

    v47 = v5;
    if (v44)
    {
      MEMORY[0x277D82BD8](v45);
    }

    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v29);
    objc_storeStrong(&v46, 0);
    v25 = v47;
    v6 = v47;
    v26 = v25;
    swift_unknownObjectRelease();
    sub_214CCF564();
    v27 = [v36 displayName];
    if (v27)
    {
      sub_214CCF564();
      v23 = v8;
      *&v7 = MEMORY[0x277D82BD8](v27).n128_u64[0];
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v21 = [a1 messageListItem];
    swift_getObjectType();
    v22 = [v21 category];
    if (v22)
    {
      swift_unknownObjectRelease();
      [v22 state];
      type metadata accessor for EMCategorizationState();
      sub_214C11834();
      v9 = sub_214CCF4A4();
      if ((v9 & 1) == 0)
      {
        [v22 state];
        if ((sub_214CCF4A4() & 1) == 0)
        {
          [v22 subtype];
          type metadata accessor for EMCategorySubtype();
          sub_214C118B4();
          if (sub_214CD03F4())
          {
            MEMORY[0x277D82BE0](v28);

            v20 = sub_214CCF544();

            if (v24)
            {
              v18 = sub_214CCF544();

              v19 = v18;
            }

            else
            {
              v19 = 0;
            }

            v16 = MSPreferredAbbreviatedNameForAddressAndDisplayName();
            MEMORY[0x277D82BD8](v19);
            MEMORY[0x277D82BD8](v20);
            MEMORY[0x277D82BD8](v28);
            v17 = sub_214CCF564();
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](v22);

            MEMORY[0x277D82BD8](v28);
            MEMORY[0x277D82BD8](v36);
            swift_unknownObjectRelease();
            return v17;
          }
        }
      }

      MEMORY[0x277D82BD8](v22);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    MEMORY[0x277D82BE0](v28);

    v15 = sub_214CCF544();

    if (v24)
    {
      v13 = sub_214CCF544();

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v11 = MSPreferredCompositeNameForAddressAndDisplayName();
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v28);
    v12 = sub_214CCF564();
    MEMORY[0x277D82BD8](v11);

    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v36);
    swift_unknownObjectRelease();
    return v12;
  }

  else
  {
    swift_unknownObjectRelease();
    location = 0;
    objc_storeStrong(&location, v43);
    v34 = [location emailAddressValue];
    v35 = [v34 simpleAddress];
    v48 = 0;
    if (v35)
    {
      MEMORY[0x277D82BE0](v35);
    }

    else
    {
      v49 = [location stringValue];
      v48 = 1;
      MEMORY[0x277D82BE0](v49);
    }

    v51 = v2;
    if (v48)
    {
      MEMORY[0x277D82BD8](v49);
    }

    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v34);
    objc_storeStrong(&location, 0);
    v31 = v51;
    v3 = v51;
    v32 = v31;
    v33 = sub_214CCF564();
    MEMORY[0x277D82BD8](v32);
    swift_unknownObjectRelease();
    return v33;
  }
}

id sub_214C10D00(uint64_t a1, char a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTopLine:a1 isGeneratedSummary:a2 & 1 messageListItem:a3];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v5;
}

_BYTE *sub_214C10D74(uint64_t a1, char a2, uint64_t a3)
{
  v13 = 0;
  v12 = a1;
  v11 = a2 & 1;
  v10 = a3;
  v3 = OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender;
  *OBJC_IVAR___MUIHighlightedMessage____lazy_storage___sender = 0;
  *(v3 + 8) = 0;
  MEMORY[0x277D82BE0](a1);
  *&v13[OBJC_IVAR___MUIHighlightedMessage_topLine] = a1;
  v13[OBJC_IVAR___MUIHighlightedMessage_isGeneratedSummary] = a2;
  swift_unknownObjectRetain();
  *&v13[OBJC_IVAR___MUIHighlightedMessage_messageListItem] = a3;
  v9.receiver = v13;
  v9.super_class = MUIHighlightedMessage;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  MEMORY[0x277D82BE0](v8);
  v13 = v8;
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v13);
  return v8;
}

BOOL sub_214C10F1C(void *a1, void *a2)
{
  sub_214A77084();
  v6 = [a1 0x1FC7216F0];
  swift_getObjectType();
  v9 = [v6 0x1FB1036F8];
  swift_unknownObjectRelease();
  v7 = [a2 0x1FC7216F0];
  swift_getObjectType();
  v8 = [v7 0x1FB1036F8];
  swift_unknownObjectRelease();
  v12 = sub_214CCFD64();
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BE0](a1);
  *&v2 = MEMORY[0x277D82BE0](a2).n128_u64[0];
  if (v12)
  {
    v4 = [a1 0x1FCB4630ELL];
    v5 = v4 == [a2 0x1FCB4630ELL];
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](a2);
  return v5;
}

id MUIHighlightedMessage.hash.getter()
{
  v2 = [v0 messageListItem];
  swift_getObjectType();
  v3 = [v2 hash];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t MUIHighlightedMessage.description.getter()
{
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 isInternal];
  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    v13 = objc_opt_self();
    v11 = [v16 topLine];
    v12 = [v11 string];
    sub_214CCF564();
    v14 = sub_214CCF544();
    MEMORY[0x277D82BD8](v11);

    v15 = [v13 ec:v14 partiallyRedactedStringForSubjectOrSummary:MEMORY[0x277D82BD8](v12).n128_f64[0]];
    MEMORY[0x277D82BD8](v14);
    sub_214CCF564();
    MEMORY[0x277D82BD8](v15);
  }

  else
  {
    v8 = objc_opt_self();
    v6 = [v16 topLine];
    v7 = [v6 string];
    sub_214CCF564();
    v9 = sub_214CCF544();
    MEMORY[0x277D82BD8](v6);

    v10 = [v8 fullyRedactedStringForString_];
    MEMORY[0x277D82BD8](v9);
    sub_214CCF564();
    MEMORY[0x277D82BD8](v10);
  }

  sub_214CD03B4();
  v0 = sub_214CCF614();
  MEMORY[0x21605E650](v0);

  sub_214CD0394();
  v1 = sub_214CCF614();
  MEMORY[0x21605E650](v1);

  [v16 isGeneratedSummary];
  sub_214CD0384();
  v2 = sub_214CCF614();
  MEMORY[0x21605E650](v2);

  [v16 messageListItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80);
  sub_214CD0374();
  swift_unknownObjectRelease();
  v3 = sub_214CCF614();
  MEMORY[0x21605E650](v3);

  sub_214A61B48();
  v5 = sub_214CCF5F4();

  return v5;
}

uint64_t MUIHighlightedMessage.id.getter()
{
  v2 = [v0 messageListItem];
  swift_getObjectType();
  [v2 objectID];
  swift_unknownObjectRelease();
  return sub_214CCF494();
}

uint64_t sub_214C117F0@<X0>(uint64_t *a1@<X8>)
{
  result = MUIHighlightedMessage.id.getter();
  *a1 = result;
  return result;
}

unint64_t sub_214C11834()
{
  v2 = qword_27CA36E48;
  if (!qword_27CA36E48)
  {
    type metadata accessor for EMCategorizationState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36E48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C118B4()
{
  v2 = qword_27CA36E50;
  if (!qword_27CA36E50)
  {
    type metadata accessor for EMCategorySubtype();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36E50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C11AE0()
{
  v2 = qword_27CA36E60;
  if (!qword_27CA36E60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36E60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C11BC8@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3[1]);
  v7 = v3 - v4;
  sub_214C11C7C(v1, (v3 - v4));
  sub_214CCE124();
  return sub_214C11D50(v7);
}

void *sub_214C11C7C(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE514();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214C11D50(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_214C11E0C(uint64_t a1)
{
  v5 = a1;
  v3[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v4 = v3 - v3[0];
  sub_214C11C7C(v1, (v3 - v3[0]));
  sub_214C11EB0(v4, v3[1]);
  return sub_214C11D50(v5);
}

void *sub_214C11EB0(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_214C11D50(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_214CCE514();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_214C11F9C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37870);
  sub_214CCEFB4();

  return v1;
}

uint64_t sub_214C12020()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80);
  sub_214CCEFC4();

  return v1;
}

uint64_t type metadata accessor for MUIHighlightedMessagesAvatarView()
{
  v1 = qword_27CA36F20;
  if (!qword_27CA36F20)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_214C12130()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80);
  sub_214CCEFD4();
  sub_214C12204();
}

uint64_t sub_214C1223C()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80);
  sub_214CCEFE4();

  return v1;
}

uint64_t sub_214C122F0()
{
  v2 = *(v0 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 20));

  return v2;
}

uint64_t sub_214C12340(uint64_t a1, uint64_t a2)
{

  v3 = (v2 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 20));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_214C123B8()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36118);
  sub_214CCEFB4();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_214C12438()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView();
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90);
  sub_214CCEFC4();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_214C124D4()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView();
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90);
  sub_214CCEFD4();
  sub_214C125A8();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_214C125E0()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView();
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90);
  sub_214CCEFE4();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_214C12694()
{
  v2 = *(v0 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 24));
  swift_unknownObjectRetain();

  return v2;
}

uint64_t sub_214C126E4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();

  v3 = (v2 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 24));
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_214C1275C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v32 = a4;
  v34 = a1;
  v28 = a2;
  v33 = a3;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v29 = 0;
  v30 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v25 = (*(*(v30 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v35 = (&v24 - v25);
  v39 = &v24 - v25;
  v38 = v4;
  v27 = 1;
  v37 = v5 & 1;
  v36 = v6;
  swift_getKeyPath();
  sub_214CCE144();
  v26 = v30[6];
  v7 = sub_214C123B8();
  v8 = v29;
  v9 = v30;
  v10 = v35;
  v11 = v7;
  v12 = v34;
  v13 = (v35 + v26);
  *v13 = v11;
  v13[1] = v14;
  *(v10 + v9[7]) = v8;
  *(v10 + v9[8]) = 0;
  MEMORY[0x277D82BE0](v12);
  v15 = (v35 + v30[7]);
  v16 = *v15;
  *v15 = v34;
  MEMORY[0x277D82BD8](v16);
  *(v35 + v30[8]) = v28 & v27;

  *(v35 + v30[9]) = v33;
  sub_214BE4D58();
  sub_214CD03C4();
  v31 = v30[5];
  v17 = sub_214C11F9C();
  v18 = v35;
  v20 = v19;
  v21 = v32;
  v22 = (v35 + v31);
  *v22 = v17;
  v22[1] = v20;
  sub_214C14BB4(v18, v21);

  MEMORY[0x277D82BD8](v34);
  return sub_214C14DC0(v35);
}

uint64_t sub_214C12964()
{
  v2 = *(v0 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 28));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double sub_214C129A4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 28));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C12A34(unsigned int a1)
{
  v2 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  result = a1;
  *(v1 + *(v2 + 32)) = a1 & 1;
  return result;
}

uint64_t sub_214C12A70()
{
  v2 = *(v0 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 36));

  return v2;
}

uint64_t sub_214C12AA8(uint64_t a1)
{

  *(v1 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 36)) = a1;
}

double sub_214C12AF4()
{
  v11 = v0;
  if (sub_214C12C80())
  {
    return 0.0;
  }

  v6 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  if (sub_214C11958(*(v8 + *(v6 + 32)) & 1, 1))
  {

    sub_214C3518C(v12);

    memcpy(__dst, v13, sizeof(__dst));
    sub_214C14EE4(__dst, v9);
    sub_214C14F3C(v12);
    sub_214C32E2C();
    v4 = v1;
    sub_214A671E8(__dst);
    return v4;
  }

  else
  {

    sub_214C3518C(v14);

    memcpy(v17, v15, sizeof(v17));
    sub_214C14EE4(v17, v10);
    sub_214C14F3C(v14);
    v3 = sub_214C33170();
    sub_214A671E8(v17);
    return v3;
  }
}

BOOL sub_214C12C80()
{
  v16 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68);
  v4 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v0 = (&v3 - v4);
  v9 = &v3 - v4;
  v5 = 0;
  v12 = sub_214CCE514();
  v10 = *(v12 - 8);
  v11 = v12 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v13 = &v3 - v6;
  v16 = v1;
  v14 = *(v7 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 36));

  sub_214C11C7C(v7, v0);
  sub_214CCE124();
  sub_214C11D50(v9);
  v15 = sub_214C411C0(v13);
  (*(v10 + 8))(v13, v12);

  return v15;
}

double sub_214C12E10()
{
  v5 = v0;
  if (sub_214C12C80())
  {
    return 0.0;
  }

  type metadata accessor for MUIHighlightedMessagesAvatarView();

  sub_214C3518C(v6);

  memcpy(__dst, v7, sizeof(__dst));
  sub_214C14EE4(__dst, v4);
  sub_214C14F3C(v6);
  v2 = sub_214C33170();
  sub_214A671E8(__dst);
  return v2;
}

uint64_t sub_214C12EE4@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v79 = sub_214C14FA4;
  v56 = MEMORY[0x277D85700];
  v57 = &unk_214CF2F28;
  v58 = &unk_214D091BC;
  v118 = 0;
  v117 = 0;
  v87 = 0;
  v59 = sub_214CCF994();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v63 = v16 - v62;
  v64 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v65 = *(v64 - 8);
  v66 = v65;
  v67 = *(v65 + 64);
  v68 = (v67 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v69 = v16 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EA0);
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70);
  v74 = v16 - v73;
  v75 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v73);
  v76 = v16 - v75;
  v77 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v75);
  v78 = v16 - v77;
  v118 = v16 - v77;
  v117 = v1;
  v80 = &v102;
  v103 = v1;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EA8);
  v82 = sub_214C14FAC();
  sub_214C11934();
  v83 = &v113;
  v88 = 1;
  sub_214CCF024();
  v84 = v125;
  v85 = 104;
  memcpy(v125, v83, sizeof(v125));
  v92 = v112;
  memcpy(v112, v125, sizeof(v112));
  v86 = sub_214C12E10();
  v89 = sub_214CCF194();
  v90 = v4;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EC0);
  sub_214C150CC();
  v93 = &v114;
  sub_214CCED04();
  sub_214C15154(v92);
  v94 = __dst;
  v95 = 152;
  memcpy(__dst, v93, sizeof(__dst));
  memcpy(v111, __dst, sizeof(v111));
  v97 = sub_214CD03C4();
  v96 = v5;
  v6 = sub_214CCE8D4();
  v7 = v97;
  *v96 = v6;
  sub_214A63280();
  v98 = v7;
  v99 = sub_214C151AC();
  sub_214CD0084();
  v101 = v110[47];
  if (sub_214C12C80())
  {
    v50 = *(v100 + *(v64 + 36));

    v51 = v119;
    sub_214C3518C(v119);

    v52 = v123;
    memcpy(v123, v51 + 15, sizeof(v123));
    sub_214C14EE4(v123, v104);
    sub_214C14F3C(v51);
    v53 = sub_214C33190();
    sub_214A671E8(v52);
    v54 = v53;
  }

  else
  {
    v46 = *(v100 + *(v64 + 36));

    v47 = v120;
    sub_214C3518C(v120);

    v48 = v124;
    memcpy(v124, v47 + 15, sizeof(v124));
    sub_214C14EE4(v124, v110);
    sub_214C14F3C(v47);
    v49 = sub_214C331BC();
    sub_214A671E8(v48);
    v54 = v49;
  }

  *&v16[1] = v54;
  v16[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36ED8);
  sub_214C15224();
  v18 = &v115;
  v27 = 0;
  v17 = v111;
  sub_214CCED64();
  sub_214C15154(v17);
  v19 = v108;
  v20 = 193;
  memcpy(v108, v18, 0xC1uLL);
  v30 = v107;
  memcpy(v107, v108, 0xC1uLL);
  v22 = sub_214CD03C4();
  v21 = v8;
  *v8 = sub_214CCE8B4();
  v21[1] = sub_214CCE8C4();
  sub_214A63280();
  sub_214CD0084();
  v29 = v106[47];
  v23 = *(v100 + *(v64 + 36));

  v24 = v121;
  sub_214C3518C(v121);

  v25 = v122;
  memcpy(v122, v24 + 15, sizeof(v122));
  sub_214C14EE4(v122, v106);
  sub_214C14F3C(v24);
  v26 = sub_214C331D4();
  sub_214A671E8(v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EE8);
  sub_214C152C8();
  v31 = &v116;
  sub_214CCED64();
  sub_214C15154(v30);
  v32 = v109;
  v33 = 241;
  memcpy(v109, v31, 0xF1uLL);
  v40 = v105;
  memcpy(v105, v109, 0xF1uLL);
  v37 = sub_214CCF614();
  v39 = v9;
  sub_214C14BB4(v100, v69);
  v36 = 0;
  sub_214CCF964();
  v34 = sub_214CCF954();
  v35 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v10 = swift_allocObject();
  v11 = v56;
  v12 = v35;
  v13 = v10;
  v14 = v69;
  v38 = v13;
  *(v13 + 16) = v34;
  *(v13 + 24) = v11;
  sub_214C1536C(v14, (v13 + v12));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EF8);
  v42 = sub_214C155BC();
  sub_214AF8F7C();
  sub_214AF8FA0(v36, v36, v63, v37, v39, 60, v57, v38, v76, v41, v42);
  (*(v60 + 8))(v63, v59);

  sub_214C15154(v40);
  v104[5] = v41;
  v104[6] = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v76, v70, v78);
  v45 = *(v71 + 8);
  v44 = v71 + 8;
  v45(v76, v70);
  (*(v71 + 16))(v74, v78, v70);
  sub_214B061F0(v74, v70, v55);
  v45(v74, v70);
  return (v45)(v78, v70);
}

uint64_t sub_214C1381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v2 = (a1 + *(type metadata accessor for MUIHighlightedMessagesAvatarView() + 20));
  v7 = *v2;
  v8 = v2[1];

  v14[7] = v7;
  v14[8] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80);
  sub_214CCEFE4();

  sub_214C13A44();
  v14[0] = v14[4];
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  sub_214C12AF4();
  sub_214C12AF4();
  sub_214C15050();
  sub_214B68808();
  sub_214CCED04();
  sub_214C1600C(v14);
  memcpy(__dst, v15, sizeof(__dst));
  memcpy(v13, __dst, sizeof(v13));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36EA8);
  sub_214C14FAC();
  sub_214B061F0(v13, v10, v16);
  sub_214C1600C(v13);
  memcpy(v19, v16, sizeof(v19));
  sub_214C16064(v19, v12);
  memcpy(v11, v19, sizeof(v11));
  sub_214B061F0(v11, v10, a2);
  sub_214C1600C(v11);
  return sub_214C1600C(v16);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214C13A44()
{
  sub_214BE4CF4();
  sub_214BE4D58();
  sub_214CD03C4();
  sub_214BE26C4();
}

uint64_t sub_214C13AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a3;
  v3[6] = v3;
  v3[7] = 0;
  v3[8] = 0;
  v4 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v3[12] = v4;
  v7 = *(v4 - 8);
  v3[13] = v7;
  v3[14] = *(v7 + 64);
  v3[15] = swift_task_alloc();
  v3[7] = a3;
  sub_214CCF964();
  v3[16] = sub_214CCF954();
  v5 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C13BE4, v5);
}

uint64_t sub_214C13BE4()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[6] = v0;
  if (sub_214C11958(*(v2 + *(v1 + 32)) & 1, 1))
  {
    v19 = v26[15];
    v21 = v26[12];
    v22 = v26[11];
    v17 = v26[13];

    sub_214C14BB4(v22, v19);
    v18 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v20 = swift_allocObject();
    sub_214C1536C(v19, (v20 + v18));
    v25 = sub_214C3ED40(sub_214C15F94, v20);

    v3 = (v22 + *(v21 + 24));
    v23 = *v3;
    v24 = v3[1];
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v26[4] = v23;
    v26[5] = v24;
    swift_unknownObjectRetain();
    v26[10] = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90);
    sub_214CCEFD4();
    sub_214C125A8();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    v16 = *(v26[11] + *(v26[12] + 28));
    MEMORY[0x277D82BE0](v16);
    if (v16)
    {
      v9 = v26[15];
      v11 = v26[12];
      v12 = v26[11];
      v7 = v26[13];
      v26[8] = v16;

      sub_214C14BB4(v12, v9);
      v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v10 = swift_allocObject();
      sub_214C1536C(v9, (v10 + v8));
      v15 = sub_214C3EA58(v16, sub_214C15F94, v10);

      v4 = *(v11 + 24);
      v13 = *(v12 + v4);
      v14 = *(v12 + v4 + 8);
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      v26[2] = v13;
      v26[3] = v14;
      swift_unknownObjectRetain();
      v26[9] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E90);
      sub_214CCEFD4();
      sub_214C125A8();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](v16);
    }
  }

  v5 = *(v26[6] + 8);

  return v5();
}

uint64_t sub_214C14064()
{

  type metadata accessor for MUIHighlightedMessagesAvatarView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E80);
  sub_214CCEFD4();
  sub_214C12204();
}

uint64_t sub_214C14170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = a4;

  v10[1] = a1;
  v10[2] = a2;
  v10[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36F08);
  MEMORY[0x21605D330](v10, v4);
  v9 = v10[0];

  return v9;
}

uint64_t sub_214C1422C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36F08);
  sub_214CCF094();
  sub_214C15660();
}

uint64_t sub_214C14338()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36F08);
  sub_214CCF0A4();

  return v1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214C1440C()
{
}

uint64_t sub_214C14454(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

id sub_214C1451C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  MEMORY[0x277D82BE0](a5);
  sub_214C14170(a2, a3, a4, a5);
  sub_214BE4D58();
  v9 = sub_214CCF7D4();

  [a5 updateContacts_];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](a5);
  v11 = [a5 view];
  MEMORY[0x277D82BD8](a5);
  return v11;
}

id sub_214C14638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  MEMORY[0x277D82BE0](a6);
  sub_214C14170(a3, a4, a5, a6);
  sub_214BE4D58();
  v10 = sub_214CCF7D4();

  [a6 updateContacts_];
  MEMORY[0x277D82BD8](v10);
  return [a1 sizeToFit];
}

void sub_214C14944()
{
  sub_214C156A4();
  sub_214CCE664();
  __break(1u);
}

uint64_t sub_214C1496C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_214CCE514();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_214CCE434();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_214CCE3F4();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_214C14AFC(uint64_t a1)
{
  v4 = a1;
  v1 = sub_214CCE514();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_214CCE404();
}

void *sub_214C14BB4(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE514();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v17 = *a1;

    *a2 = v17;
  }

  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v6 = (a2 + v14[5]);
  v5 = (a1 + v14[5]);
  v4 = *v5;

  *v6 = v4;
  v7 = v5[1];

  v6[1] = v7;
  v10 = (a2 + v14[6]);
  v9 = (a1 + v14[6]);
  v8 = *v9;
  swift_unknownObjectRetain();
  *v10 = v8;
  v11 = v9[1];

  v10[1] = v11;
  v12 = v14[7];
  v13 = *(a1 + v12);
  MEMORY[0x277D82BE0](v13);
  *(a2 + v12) = v13;
  *(a2 + v14[8]) = *(a1 + v14[8]);
  v15 = v14[9];
  v16 = *(a1 + v15);

  result = a2;
  *(a2 + v15) = v16;
  return result;
}

uint64_t sub_214C14DC0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v3 = type metadata accessor for MUIHighlightedMessagesAvatarView();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + *(v3 + 28)));

  return a1;
}

__n128 sub_214C14EE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  *(a2 + 8) = *(a1 + 1);
  result = *(a1 + 3);
  *(a2 + 24) = result;
  return result;
}

void *sub_214C14F3C(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[5]);

  MEMORY[0x277D82BD8](a1[15]);
  return a1;
}

unint64_t sub_214C14FAC()
{
  v2 = qword_27CA36EB0;
  if (!qword_27CA36EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36EA8);
    sub_214C15050();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C15050()
{
  v2 = qword_27CA36EB8;
  if (!qword_27CA36EB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C150CC()
{
  v2 = qword_27CA36EC8;
  if (!qword_27CA36EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36EC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C15154(uint64_t a1)
{

  MEMORY[0x277D82BD8](*(a1 + 48));
  return a1;
}

unint64_t sub_214C151AC()
{
  v2 = qword_27CA36ED0;
  if (!qword_27CA36ED0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36ED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C15224()
{
  v2 = qword_27CA36EE0;
  if (!qword_27CA36EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36ED8);
    sub_214C150CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C152C8()
{
  v2 = qword_27CA36EF0;
  if (!qword_27CA36EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36EE8);
    sub_214C15224();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36EF0);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_214C1536C(char *a1, char *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE514();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  v3 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  *&a2[v3[5]] = *&a1[v3[5]];
  result = *&a1[v3[6]];
  *&a2[v3[6]] = result;
  *&a2[v3[7]] = *&a1[v3[7]];
  a2[v3[8]] = a1[v3[8]] & 1;
  *&a2[v3[9]] = *&a1[v3[9]];
  return result;
}

uint64_t sub_214C154B0()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *(type metadata accessor for MUIHighlightedMessagesAvatarView() - 8);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = *(v0 + 16);
  v6 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C13AAC(v8, v6, v0 + v7);
}

unint64_t sub_214C155BC()
{
  v2 = qword_27CA36F00;
  if (!qword_27CA36F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36EF8);
    sub_214C152C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F00);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214C15660()
{
}

unint64_t sub_214C156A4()
{
  v2 = qword_27CA36F10;
  if (!qword_27CA36F10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C15770()
{
  v6 = sub_214C158F0();
  if (v0 <= 0x3F)
  {
    v6 = sub_214C1598C();
    if (v1 <= 0x3F)
    {
      v6 = sub_214C15A30();
      if (v2 <= 0x3F)
      {
        v6 = sub_214C15AD4();
        if (v3 <= 0x3F)
        {
          v6 = type metadata accessor for MUIHighlightedMessagesViewModel();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_214C158F0()
{
  v4 = qword_27CA36F30;
  if (!qword_27CA36F30)
  {
    sub_214CCE514();
    v3 = sub_214CCE134();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27CA36F30);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214C1598C()
{
  v4 = qword_27CA36F38;
  if (!qword_27CA36F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37870);
    v3 = sub_214CCEFF4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27CA36F38);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214C15A30()
{
  v4 = qword_27CA36F40;
  if (!qword_27CA36F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36118);
    v3 = sub_214CCEFF4();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27CA36F40);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214C15AD4()
{
  v4 = qword_27CA36F48;
  if (!qword_27CA36F48)
  {
    type metadata accessor for MUIHighlightedMessage();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27CA36F48);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214C15B84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214C15CC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_214C15F18()
{
  v2 = qword_27CA36F58;
  if (!qword_27CA36F58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C15F94()
{
  type metadata accessor for MUIHighlightedMessagesAvatarView();

  return sub_214C14064();
}

uint64_t sub_214C1600C(uint64_t a1)
{

  MEMORY[0x277D82BD8](*(a1 + 24));
  return a1;
}

void *sub_214C16064(uint64_t *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  a2[1] = v4;
  v5 = a1[2];

  a2[2] = v5;
  v6 = a1[3];
  MEMORY[0x277D82BE0](v6);
  a2[3] = v6;
  memcpy(a2 + 4, a1 + 4, 0x30uLL);
  return a2;
}

void *sub_214C16118(uint64_t a1, void *a2)
{
  MEMORY[0x277D82BE0](a2);
  v3 = [objc_opt_self() clearColor];
  [a2 setMui_backgroundColor_];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BE0](a2);
  return a2;
}

id sub_214C161F0()
{
  v2 = 0;
  sub_214A7802C();
  v1 = sub_214A61730();
  MEMORY[0x277D82BE0](v1);
  v2 = v1;
  sub_214A671E8(&v2);
  return v1;
}

unint64_t sub_214C162D4()
{
  v2 = qword_27CA36F70;
  if (!qword_27CA36F70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F70);
    return WitnessTable;
  }

  return v2;
}

void sub_214C16398()
{
  sub_214C162D4();
  sub_214CCE664();
  __break(1u);
}

unint64_t sub_214C163EC()
{
  v2 = qword_27CA36F78;
  if (!qword_27CA36F78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36F78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C16468@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214A660E0();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214C1653C()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

double sub_214C1662C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadDebouncer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214C16734(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController____lazy_storage___reloadWithEmptyUpdateDebouncer);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214C167CC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRepository:a1 delegate:a2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v4;
}

uint64_t sub_214C16834()
{
  v6 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v7 = (v0 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v7)
  {
    v2 = *(v5 + v6);

    swift_endAccess();
    v3 = *(v2 + 112);
    MEMORY[0x277D82BE0](v3);

    return v3;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_214C1696C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[4] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  sub_214CCF964();
  v4[6] = sub_214CCF954();
  v5 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C16A24, v5);
}

uint64_t sub_214C16A24()
{
  v1 = *(v0 + 40);
  *(v0 + 16) = v0;
  v8 = [v1 delegate];
  if (v8)
  {
    v4 = v7[5];
    v6 = v7[4];
    swift_getObjectType();
    type metadata accessor for MUIHighlightedMessage();
    sub_214CD03C4();
    v5 = sub_214CCF7D4();

    [v8 highlightedMessagesController:v4 didFindMessages:v5];
    MEMORY[0x277D82BD8](v5);
    *v6 = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    *v7[4] = 1;
  }

  v2 = *(v7[2] + 8);

  return v2();
}

double sub_214C16BAC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v18 = a2;
  v16 = MEMORY[0x277D85700];
  v19 = 0;
  v17 = &unk_214CF34C8;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v10 - v21;
  v29 = MEMORY[0x28223BE20](v20);
  v23 = v2 + 16;
  v28 = v2 + 16;
  v24 = &v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v15 = Strong;
    v14 = Strong;
    v26 = Strong;
    v12 = 0;
    v4 = sub_214CCF994();
    (*(*(v4 - 8) + 56))(v22, 1);
    MEMORY[0x277D82BE0](v14);

    sub_214CCF964();
    v11 = sub_214CCF954();
    v5 = swift_allocObject();
    v6 = v16;
    v7 = v20;
    v8 = v14;
    v13 = v5;
    v5[2] = v11;
    v5[3] = v6;
    v5[4] = v8;
    v5[5] = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
    sub_214B88C30(v12, v12, v22, v17, v13, v9);

    *&result = MEMORY[0x277D82BD8](v14).n128_u64[0];
  }

  return result;
}

uint64_t sub_214C16DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[6] = a4;
  v5[5] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  sub_214CCF964();
  v5[8] = sub_214CCF954();
  v6 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C16EAC, v6);
}

uint64_t sub_214C16EAC()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v0;
  v8 = [v1 delegate];
  if (v8)
  {
    v4 = v7[6];
    v6 = v7[5];
    swift_getObjectType();

    type metadata accessor for MUIHighlightedMessage();
    v5 = sub_214CCF7D4();

    [v8 highlightedMessagesController:v4 didFindMessages:v5];
    MEMORY[0x277D82BD8](v5);
    *v6 = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    *v7[5] = 1;
  }

  v2 = *(v7[2] + 8);

  return v2();
}

uint64_t sub_214C17040()
{
  v2 = (v0 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C170A8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C171E8()
{
  v2 = *(v0 + 112);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214C1721C()
{
  v2 = *(v0 + 120);

  return v2;
}

uint64_t sub_214C17254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  sub_214CCF964();
  v5[7] = sub_214CCF954();
  v6 = sub_214CCF924();

  return MEMORY[0x2822009F8](sub_214C1731C, v6);
}

uint64_t sub_214C1731C()
{
  v4 = v0[6];
  v1 = v0[5];
  v0[2] = v0;
  v5 = *(v1 + 120);

  v5(v4);

  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_214C173F0()
{
  swift_beginAccess();
  v2 = *(v0 + 136);

  swift_endAccess();
  return v2;
}

uint64_t (*sub_214C1744C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C174B4;
}

uint64_t sub_214C174B4(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_214A81AFC();
}

uint64_t *sub_214C17504@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  return CollectionItemID.init(itemID:)(v3, a2);
}

uint64_t sub_214C1754C(uint64_t a1, uint64_t a2)
{
  v8[3] = 0;
  v8[5] = a1;
  v8[4] = a2;
  v8[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0);
  v2 = sub_214A80F28();
  v8[1] = sub_214A6E4F4(sub_214C17504, 0, v5, &type metadata for CollectionItemID, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v6);
  swift_unknownObjectRetain();
  CollectionItemID.init(itemID:)(a2, v8);
  if (!v8[0])
  {
    goto LABEL_7;
  }

  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000);
  sub_214A817A8();
  sub_214B5B214();
  sub_214CCFAB4();
  sub_214A62278();
  if (v7)
  {
    swift_unknownObjectRelease();
LABEL_7:

    swift_beginAccess();

    swift_endAccess();
    sub_214CCF7F4();

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000);
    sub_214C1DAD8();
    sub_214A817A8();
    sub_214CCFAF4();
    swift_endAccess();
    goto LABEL_8;
  }

  swift_beginAccess();

  swift_endAccess();
  sub_214CCF864();

  swift_beginAccess();
  sub_214C1DAD8();
  sub_214CCFAF4();
  swift_endAccess();
  swift_unknownObjectRelease();
LABEL_8:
  sub_214A8121C();
}

uint64_t sub_214C17A04(uint64_t a1, int a2)
{
  v11 = a2;
  v12 = 0;
  v18 = 0;
  v20 = a1;
  v19 = a2;
  v17 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0);
  v2 = sub_214A80F28();
  v14 = 0;
  v15 = sub_214A6E4F4(sub_214C17504, 0, v13, &type metadata for CollectionItemID, MEMORY[0x277D84A98], v2, MEMORY[0x277D84AC0], v3);
  v7 = v15;
  v16 = v15;

  v6 = &v6;
  MEMORY[0x28223BE20](&v6);
  v8 = v5;
  v5[2] = v7;
  swift_beginAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000);
  v10 = sub_214C1DB8C();
  sub_214C1DAD8();
  sub_214CCFB24();
  swift_endAccess();

  if (v11)
  {
    sub_214A8121C();
  }
}

uint64_t sub_214C17BF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000);
  sub_214A8118C();
  sub_214B5B214();
  return sub_214CCF784() & 1;
}

uint64_t sub_214C17C84(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  swift_unknownObjectRetain();
  CollectionItemID.init(itemID:)(a1, &v11);
  v10[1] = v11;
  swift_unknownObjectRetain();
  CollectionItemID.init(itemID:)(a2, v10);
  v8 = v10[0];
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000);
  sub_214A817A8();
  sub_214B5B214();
  sub_214CCFAB4();
  sub_214A62278();
  if ((v9 & 1) == 0)
  {
    swift_unknownObjectRetain();
    swift_beginAccess();
    v5 = sub_214CCF904();
    *v3 = v8;
    swift_unknownObjectRelease();
    v5();
    swift_endAccess();
  }

  sub_214A8121C();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_214C17E78()
{
  swift_beginAccess();
  v2 = *(v0 + 144);

  swift_endAccess();
  return v2;
}

uint64_t sub_214C17EC8(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 144) = a1;

  swift_endAccess();
}

uint64_t sub_214C17F90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = swift_unknownObjectRetain();
  *a2 = v4;
  return result;
}

uint64_t sub_214C17FD4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v18 = a2;
  v19 = 0;
  v17 = &unk_214CF34B8;
  v30 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v22 = &v13 - v21;
  v30 = v2;
  v23 = v3 + 16;
  v29 = v3 + 16;
  v24 = &v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v16 = Strong;
    v15 = Strong;
    v27 = Strong;
    MEMORY[0x277D82BE0](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80);
    v14 = sub_214CCF814();
    v26 = v14;
    v13 = 0;
    v5 = sub_214CCF994();
    (*(*(v5 - 8) + 56))(v22, 1);

    v6 = swift_allocObject();
    v7 = v13;
    v8 = v22;
    v9 = v17;
    v10 = v15;
    v11 = v6;
    v12 = v14;
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v10;
    v11[5] = v12;
    sub_214B88C30(v7, v7, v8, v9, v11, MEMORY[0x277D84F78] + 8);
  }

  return result;
}

uint64_t sub_214C181FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return MEMORY[0x2822009F8](sub_214C18248, a4);
}

uint64_t sub_214C18248()
{
  *(v0 + 16) = v0;
  sub_214A819AC();
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_214C182DC(uint64_t a1, uint64_t a2)
{
  v17 = a1;
  v15 = a2;
  v16 = 0;
  v14 = &unk_214CF34A8;
  v26 = 0;
  v25 = 0;
  v23 = 0;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v19 = &v11 - v18;
  v26 = v2;
  v20 = v3 + 16;
  v25 = v3 + 16;
  v21 = &v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v13 = Strong;
    v12 = Strong;
    v23 = Strong;
    v11 = 0;
    v5 = sub_214CCF994();
    (*(*(v5 - 8) + 56))(v19, 1);

    v6 = swift_allocObject();
    v7 = v11;
    v8 = v19;
    v9 = v14;
    v10 = v12;
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v10;
    sub_214B88C30(v7, v7, v8, v9, v6, MEMORY[0x277D84F78] + 8);
  }

  return result;
}

uint64_t sub_214C184B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  return MEMORY[0x2822009F8](sub_214C184EC, 0);
}

uint64_t sub_214C184EC()
{
  v2 = v0[4];
  v0[2] = v0;
  v0[5] = sub_214A818B8();

  return MEMORY[0x2822009F8](sub_214C18568, v2);
}

uint64_t sub_214C18568()
{
  *(v0 + 16) = v0;
  sub_214A819AC();

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_214C18604(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);

  v2 = MEMORY[0x277D82BE0](a2);
  v4(a2, v2);
}

void sub_214C18674(void **a1@<X0>, id *a2@<X8>)
{
  v10 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = [v10 generatedSummary];
  swift_unknownObjectRelease();
  if (v11)
  {
    v7 = [v11 topLine];
    MEMORY[0x277D82BD8](v11);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    type metadata accessor for MUIHighlightedMessage();
    MEMORY[0x277D82BE0](v8);
    swift_unknownObjectRetain();
    *a2 = sub_214C18984(v8, 1);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v6 = [v10 subject];
    swift_unknownObjectRelease();
    if (v6)
    {
      v3 = [v6 subjectString];
      sub_214CCF564();
      v4 = v2;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v3);
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      sub_214AF7FCC();

      v12 = sub_214BC9508();
      type metadata accessor for MUIHighlightedMessage();
      MEMORY[0x277D82BE0](v12);
      swift_unknownObjectRetain();
      *a2 = sub_214C18984(v12, 0);
      MEMORY[0x277D82BD8](v12);
    }

    else
    {
      *a2 = 0;
    }
  }
}

uint64_t MUIHighlightedMessagesController.collection(_:addedItemIDs:after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v69 = a2;
  v73 = a3;
  v70 = sub_214A7E9D4;
  v74 = sub_214A7E698;
  v76 = sub_214A7E854;
  v81 = sub_214A800FC;
  v85 = sub_214A7E854;
  v87 = sub_214A662DC;
  v89 = sub_214A662DC;
  v91 = sub_214A7E40C;
  v93 = sub_214A662DC;
  v95 = sub_214A662DC;
  v98 = sub_214A7E40C;
  v58 = &unk_214CF3358;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v59 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v60 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = &v42 - v60;
  v68 = sub_214CCDA74();
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v64 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v4 = &v42 - v64;
  v65 = &v42 - v64;
  v112 = v5;
  v111 = v6;
  v110 = v7;
  v109 = v8;
  v9 = sub_214A660E0();
  (*(v66 + 16))(v4, v9, v68);

  v72 = 24;
  v83 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v69;

  v82 = 32;
  v10 = swift_allocObject();
  v11 = v71;
  v75 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;

  swift_unknownObjectRetain();
  v84 = swift_allocObject();
  *(v84 + 16) = v73;
  v102 = sub_214CCDA54();
  v103 = sub_214CCFBB4();
  v79 = 17;
  v88 = swift_allocObject();
  v78 = 32;
  *(v88 + 16) = 32;
  v90 = swift_allocObject();
  v80 = 8;
  *(v90 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v75;
  v77 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v77;
  v92 = v14;
  *(v14 + 16) = v76;
  *(v14 + 24) = v15;
  v94 = swift_allocObject();
  *(v94 + 16) = v78;
  v96 = swift_allocObject();
  *(v96 + 16) = v80;
  v16 = swift_allocObject();
  v17 = v84;
  v86 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v86;
  v99 = v18;
  *(v18 + 16) = v85;
  *(v18 + 24) = v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v97 = sub_214CD03C4();
  v100 = v20;

  v21 = v88;
  v22 = v100;
  *v100 = v87;
  v22[1] = v21;

  v23 = v90;
  v24 = v100;
  v100[2] = v89;
  v24[3] = v23;

  v25 = v92;
  v26 = v100;
  v100[4] = v91;
  v26[5] = v25;

  v27 = v94;
  v28 = v100;
  v100[6] = v93;
  v28[7] = v27;

  v29 = v96;
  v30 = v100;
  v100[8] = v95;
  v30[9] = v29;

  v31 = v99;
  v32 = v100;
  v100[10] = v98;
  v32[11] = v31;
  sub_214A63280();

  if (os_log_type_enabled(v102, v103))
  {
    v33 = v59;
    v50 = sub_214CCFF24();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v51 = sub_214A632C4(0);
    v52 = sub_214A632C4(2);
    v54 = &v108;
    v108 = v50;
    v55 = &v107;
    v107 = v51;
    v56 = &v106;
    v106 = v52;
    v53 = 2;
    sub_214A6627C(2, &v108);
    sub_214A6627C(v53, v54);
    v104 = v87;
    v105 = v88;
    sub_214A66290(&v104, v54, v55, v56);
    v57 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v104 = v89;
      v105 = v90;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v48 = 0;
      v104 = v91;
      v105 = v92;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v47 = 0;
      v104 = v93;
      v105 = v94;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v46 = 0;
      v104 = v95;
      v105 = v96;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v45 = 0;
      v104 = v98;
      v105 = v99;
      sub_214A66290(&v104, &v108, &v107, &v106);
      _os_log_impl(&dword_214A5E000, v102, v103, "addedItemIDs %s after %s", v50, 0x16u);
      sub_214A669DC(v51);
      sub_214A669DC(v52);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v34 = MEMORY[0x277D82BD8](v102);
  (*(v66 + 8))(v65, v68, v34);
  v43 = 0;
  v35 = sub_214CCF994();
  (*(*(v35 - 8) + 56))(v61, 1);
  MEMORY[0x277D82BE0](v62);

  swift_unknownObjectRetain();
  v36 = swift_allocObject();
  v37 = v62;
  v38 = v69;
  v39 = v73;
  v44 = v36;
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v37;
  v36[5] = v38;
  v36[6] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
  sub_214B88C30(v43, v43, v61, v58, v44, v40);
}

uint64_t sub_214C195B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[9] = a1;
  v6[5] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  return MEMORY[0x2822009F8](sub_214C19614, 0);
}

uint64_t sub_214C19614()
{
  v6 = *(v0 + 80);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    v5[13] = v3;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214C19790, v3);
  }

  else
  {
    v4 = v5[9];
    swift_endAccess();
    *v4 = 1;
    v1 = *(v5[5] + 8);

    return v1();
  }
}

uint64_t sub_214C19790()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[5] = v0;
  sub_214C1754C(v2, v1);

  return MEMORY[0x2822009F8](sub_214A827F8, 0);
}

uint64_t MUIHighlightedMessagesController.collection(_:movedItemIDs:before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v69 = a2;
  v73 = a3;
  v70 = sub_214A7E9D4;
  v74 = sub_214A7E698;
  v76 = sub_214A7E854;
  v81 = sub_214A800FC;
  v85 = sub_214A7E854;
  v87 = sub_214A662DC;
  v89 = sub_214A662DC;
  v91 = sub_214A7E40C;
  v93 = sub_214A662DC;
  v95 = sub_214A662DC;
  v98 = sub_214A7E40C;
  v58 = &unk_214CF3368;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v59 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v60 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = &v42 - v60;
  v68 = sub_214CCDA74();
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v64 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v4 = &v42 - v64;
  v65 = &v42 - v64;
  v112 = v5;
  v111 = v6;
  v110 = v7;
  v109 = v8;
  v9 = sub_214A660E0();
  (*(v66 + 16))(v4, v9, v68);

  v72 = 24;
  v83 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v69;

  v82 = 32;
  v10 = swift_allocObject();
  v11 = v71;
  v75 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;

  swift_unknownObjectRetain();
  v84 = swift_allocObject();
  *(v84 + 16) = v73;
  v102 = sub_214CCDA54();
  v103 = sub_214CCFBB4();
  v79 = 17;
  v88 = swift_allocObject();
  v78 = 32;
  *(v88 + 16) = 32;
  v90 = swift_allocObject();
  v80 = 8;
  *(v90 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v75;
  v77 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v77;
  v92 = v14;
  *(v14 + 16) = v76;
  *(v14 + 24) = v15;
  v94 = swift_allocObject();
  *(v94 + 16) = v78;
  v96 = swift_allocObject();
  *(v96 + 16) = v80;
  v16 = swift_allocObject();
  v17 = v84;
  v86 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v86;
  v99 = v18;
  *(v18 + 16) = v85;
  *(v18 + 24) = v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v97 = sub_214CD03C4();
  v100 = v20;

  v21 = v88;
  v22 = v100;
  *v100 = v87;
  v22[1] = v21;

  v23 = v90;
  v24 = v100;
  v100[2] = v89;
  v24[3] = v23;

  v25 = v92;
  v26 = v100;
  v100[4] = v91;
  v26[5] = v25;

  v27 = v94;
  v28 = v100;
  v100[6] = v93;
  v28[7] = v27;

  v29 = v96;
  v30 = v100;
  v100[8] = v95;
  v30[9] = v29;

  v31 = v99;
  v32 = v100;
  v100[10] = v98;
  v32[11] = v31;
  sub_214A63280();

  if (os_log_type_enabled(v102, v103))
  {
    v33 = v59;
    v50 = sub_214CCFF24();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v51 = sub_214A632C4(0);
    v52 = sub_214A632C4(2);
    v54 = &v108;
    v108 = v50;
    v55 = &v107;
    v107 = v51;
    v56 = &v106;
    v106 = v52;
    v53 = 2;
    sub_214A6627C(2, &v108);
    sub_214A6627C(v53, v54);
    v104 = v87;
    v105 = v88;
    sub_214A66290(&v104, v54, v55, v56);
    v57 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v104 = v89;
      v105 = v90;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v48 = 0;
      v104 = v91;
      v105 = v92;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v47 = 0;
      v104 = v93;
      v105 = v94;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v46 = 0;
      v104 = v95;
      v105 = v96;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v45 = 0;
      v104 = v98;
      v105 = v99;
      sub_214A66290(&v104, &v108, &v107, &v106);
      _os_log_impl(&dword_214A5E000, v102, v103, "movedItemIDs %s before %s", v50, 0x16u);
      sub_214A669DC(v51);
      sub_214A669DC(v52);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v34 = MEMORY[0x277D82BD8](v102);
  (*(v66 + 8))(v65, v68, v34);
  v43 = 0;
  v35 = sub_214CCF994();
  (*(*(v35 - 8) + 56))(v61, 1);
  MEMORY[0x277D82BE0](v62);

  swift_unknownObjectRetain();
  v36 = swift_allocObject();
  v37 = v62;
  v38 = v69;
  v39 = v73;
  v44 = v36;
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v37;
  v36[5] = v38;
  v36[6] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
  sub_214B88C30(v43, v43, v61, v58, v44, v40);
}

uint64_t sub_214C1A484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[9] = a1;
  v6[5] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  return MEMORY[0x2822009F8](sub_214C1A4E8, 0);
}

uint64_t sub_214C1A4E8()
{
  v6 = *(v0 + 80);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    v5[13] = v3;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214C1A664, v3);
  }

  else
  {
    v4 = v5[9];
    swift_endAccess();
    *v4 = 1;
    v1 = *(v5[5] + 8);

    return v1();
  }
}

uint64_t sub_214C1A664()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[5] = v0;
  sub_214C1792C(v2, v1);

  return MEMORY[0x2822009F8](sub_214A827F8, 0);
}

uint64_t MUIHighlightedMessagesController.collection(_:movedItemIDs:after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v69 = a2;
  v73 = a3;
  v70 = sub_214A7E9D4;
  v74 = sub_214A7E698;
  v76 = sub_214A7E854;
  v81 = sub_214A800FC;
  v85 = sub_214A7E854;
  v87 = sub_214A662DC;
  v89 = sub_214A662DC;
  v91 = sub_214A7E40C;
  v93 = sub_214A662DC;
  v95 = sub_214A662DC;
  v98 = sub_214A7E40C;
  v58 = &unk_214CF3378;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v59 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v60 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v61 = &v42 - v60;
  v68 = sub_214CCDA74();
  v66 = *(v68 - 8);
  v67 = v68 - 8;
  v64 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v63);
  v4 = &v42 - v64;
  v65 = &v42 - v64;
  v112 = v5;
  v111 = v6;
  v110 = v7;
  v109 = v8;
  v9 = sub_214A660E0();
  (*(v66 + 16))(v4, v9, v68);

  v72 = 24;
  v83 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v69;

  v82 = 32;
  v10 = swift_allocObject();
  v11 = v71;
  v75 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;

  swift_unknownObjectRetain();
  v84 = swift_allocObject();
  *(v84 + 16) = v73;
  v102 = sub_214CCDA54();
  v103 = sub_214CCFBB4();
  v79 = 17;
  v88 = swift_allocObject();
  v78 = 32;
  *(v88 + 16) = 32;
  v90 = swift_allocObject();
  v80 = 8;
  *(v90 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v75;
  v77 = v12;
  *(v12 + 16) = v74;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v77;
  v92 = v14;
  *(v14 + 16) = v76;
  *(v14 + 24) = v15;
  v94 = swift_allocObject();
  *(v94 + 16) = v78;
  v96 = swift_allocObject();
  *(v96 + 16) = v80;
  v16 = swift_allocObject();
  v17 = v84;
  v86 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v86;
  v99 = v18;
  *(v18 + 16) = v85;
  *(v18 + 24) = v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v97 = sub_214CD03C4();
  v100 = v20;

  v21 = v88;
  v22 = v100;
  *v100 = v87;
  v22[1] = v21;

  v23 = v90;
  v24 = v100;
  v100[2] = v89;
  v24[3] = v23;

  v25 = v92;
  v26 = v100;
  v100[4] = v91;
  v26[5] = v25;

  v27 = v94;
  v28 = v100;
  v100[6] = v93;
  v28[7] = v27;

  v29 = v96;
  v30 = v100;
  v100[8] = v95;
  v30[9] = v29;

  v31 = v99;
  v32 = v100;
  v100[10] = v98;
  v32[11] = v31;
  sub_214A63280();

  if (os_log_type_enabled(v102, v103))
  {
    v33 = v59;
    v50 = sub_214CCFF24();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v51 = sub_214A632C4(0);
    v52 = sub_214A632C4(2);
    v54 = &v108;
    v108 = v50;
    v55 = &v107;
    v107 = v51;
    v56 = &v106;
    v106 = v52;
    v53 = 2;
    sub_214A6627C(2, &v108);
    sub_214A6627C(v53, v54);
    v104 = v87;
    v105 = v88;
    sub_214A66290(&v104, v54, v55, v56);
    v57 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v104 = v89;
      v105 = v90;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v48 = 0;
      v104 = v91;
      v105 = v92;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v47 = 0;
      v104 = v93;
      v105 = v94;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v46 = 0;
      v104 = v95;
      v105 = v96;
      sub_214A66290(&v104, &v108, &v107, &v106);
      v45 = 0;
      v104 = v98;
      v105 = v99;
      sub_214A66290(&v104, &v108, &v107, &v106);
      _os_log_impl(&dword_214A5E000, v102, v103, "movedItemIDs %s after %s", v50, 0x16u);
      sub_214A669DC(v51);
      sub_214A669DC(v52);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v34 = MEMORY[0x277D82BD8](v102);
  (*(v66 + 8))(v65, v68, v34);
  v43 = 0;
  v35 = sub_214CCF994();
  (*(*(v35 - 8) + 56))(v61, 1);
  MEMORY[0x277D82BE0](v62);

  swift_unknownObjectRetain();
  v36 = swift_allocObject();
  v37 = v62;
  v38 = v69;
  v39 = v73;
  v44 = v36;
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v37;
  v36[5] = v38;
  v36[6] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
  sub_214B88C30(v43, v43, v61, v58, v44, v40);
}

uint64_t sub_214C1B358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[9] = a1;
  v6[5] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  return MEMORY[0x2822009F8](sub_214C1B3BC, 0);
}

uint64_t sub_214C1B3BC()
{
  v6 = *(v0 + 80);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    v5[13] = v3;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214C1B538, v3);
  }

  else
  {
    v4 = v5[9];
    swift_endAccess();
    *v4 = 1;
    v1 = *(v5[5] + 8);

    return v1();
  }
}

uint64_t sub_214C1B538()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[5] = v0;
  sub_214C17998(v2, v1);

  return MEMORY[0x2822009F8](sub_214A827F8, 0);
}

uint64_t MUIHighlightedMessagesController.collection(_:changedItemIDs:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v38 = a2;
  v39 = sub_214A7E9D4;
  v42 = sub_214A7E698;
  v46 = sub_214A7E854;
  v48 = sub_214A662DC;
  v50 = sub_214A662DC;
  v53 = sub_214A7E40C;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v31 = 0;
  v37 = sub_214CCDA74();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v33 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v2 = v23 - v33;
  v34 = v23 - v33;
  v66 = v3;
  v65 = v4;
  v64 = v5;
  v6 = sub_214A660E0();
  (*(v35 + 16))(v2, v6, v37);

  v44 = 7;
  v40 = swift_allocObject();
  *(v40 + 16) = v38;

  v43 = 32;
  v7 = swift_allocObject();
  v8 = v40;
  v45 = v7;
  *(v7 + 16) = v39;
  *(v7 + 24) = v8;

  v57 = sub_214CCDA54();
  v58 = sub_214CCFBB4();
  v41 = 17;
  v49 = swift_allocObject();
  *(v49 + 16) = 32;
  v51 = swift_allocObject();
  *(v51 + 16) = 8;
  v9 = swift_allocObject();
  v10 = v45;
  v47 = v9;
  *(v9 + 16) = v42;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v47;
  v54 = v11;
  *(v11 + 16) = v46;
  *(v11 + 24) = v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v52 = sub_214CD03C4();
  v55 = v13;

  v14 = v49;
  v15 = v55;
  *v55 = v48;
  v15[1] = v14;

  v16 = v51;
  v17 = v55;
  v55[2] = v50;
  v17[3] = v16;

  v18 = v54;
  v19 = v55;
  v55[4] = v53;
  v19[5] = v18;
  sub_214A63280();

  if (os_log_type_enabled(v57, v58))
  {
    v20 = v31;
    v24 = sub_214CCFF24();
    v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v25 = sub_214A632C4(0);
    v26 = sub_214A632C4(1);
    v27 = &v63;
    v63 = v24;
    v28 = &v62;
    v62 = v25;
    v29 = &v61;
    v61 = v26;
    sub_214A6627C(2, &v63);
    sub_214A6627C(1, v27);
    v59 = v48;
    v60 = v49;
    sub_214A66290(&v59, v27, v28, v29);
    v30 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      v59 = v50;
      v60 = v51;
      sub_214A66290(&v59, &v63, &v62, &v61);
      v23[1] = 0;
      v59 = v53;
      v60 = v54;
      sub_214A66290(&v59, &v63, &v62, &v61);
      _os_log_impl(&dword_214A5E000, v57, v58, "changedItemIDs %s", v24, 0xCu);
      sub_214A669DC(v25);
      sub_214A669DC(v26);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v21 = MEMORY[0x277D82BD8](v57);
  return (*(v35 + 8))(v34, v37, v21);
}

uint64_t MUIHighlightedMessagesController.collection(_:deletedItemIDs:)(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v51 = a2;
  v52 = sub_214A7E9D4;
  v55 = sub_214A7E698;
  v59 = sub_214A7E854;
  v61 = sub_214A662DC;
  v63 = sub_214A662DC;
  v66 = sub_214A7E40C;
  v40 = &unk_214CF3388;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v41 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v42 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v43 = &v29 - v42;
  v50 = sub_214CCDA74();
  v48 = *(v50 - 8);
  v49 = v50 - 8;
  v46 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v3 = &v29 - v46;
  v47 = &v29 - v46;
  v79 = v4;
  v78 = v5;
  v77 = v6;
  v7 = sub_214A660E0();
  (*(v48 + 16))(v3, v7, v50);

  v57 = 7;
  v53 = swift_allocObject();
  *(v53 + 16) = v51;

  v56 = 32;
  v8 = swift_allocObject();
  v9 = v53;
  v58 = v8;
  *(v8 + 16) = v52;
  *(v8 + 24) = v9;

  v70 = sub_214CCDA54();
  v71 = sub_214CCFBB4();
  v54 = 17;
  v62 = swift_allocObject();
  *(v62 + 16) = 32;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v10 = swift_allocObject();
  v11 = v58;
  v60 = v10;
  *(v10 + 16) = v55;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v60;
  v67 = v12;
  *(v12 + 16) = v59;
  *(v12 + 24) = v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v65 = sub_214CD03C4();
  v68 = v14;

  v15 = v62;
  v16 = v68;
  *v68 = v61;
  v16[1] = v15;

  v17 = v64;
  v18 = v68;
  v68[2] = v63;
  v18[3] = v17;

  v19 = v67;
  v20 = v68;
  v68[4] = v66;
  v20[5] = v19;
  sub_214A63280();

  if (os_log_type_enabled(v70, v71))
  {
    v21 = v41;
    v33 = sub_214CCFF24();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v34 = sub_214A632C4(0);
    v35 = sub_214A632C4(1);
    v36 = &v76;
    v76 = v33;
    v37 = &v75;
    v75 = v34;
    v38 = &v74;
    v74 = v35;
    sub_214A6627C(2, &v76);
    sub_214A6627C(1, v36);
    v72 = v61;
    v73 = v62;
    sub_214A66290(&v72, v36, v37, v38);
    v39 = v21;
    if (v21)
    {

      __break(1u);
    }

    else
    {
      v72 = v63;
      v73 = v64;
      sub_214A66290(&v72, &v76, &v75, &v74);
      v31 = 0;
      v72 = v66;
      v73 = v67;
      sub_214A66290(&v72, &v76, &v75, &v74);
      _os_log_impl(&dword_214A5E000, v70, v71, "deletedItemIDs %s", v33, 0xCu);
      sub_214A669DC(v34);
      sub_214A669DC(v35);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v22 = MEMORY[0x277D82BD8](v70);
  (*(v48 + 8))(v47, v50, v22);
  v29 = 0;
  v23 = sub_214CCF994();
  (*(*(v23 - 8) + 56))(v43, 1);
  MEMORY[0x277D82BE0](v44);

  v24 = swift_allocObject();
  v25 = v44;
  v26 = v51;
  v30 = v24;
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v25;
  v24[5] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
  sub_214B88C30(v29, v29, v43, v40, v30, v27);
}

uint64_t sub_214C1C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a5;
  v5[9] = a4;
  v5[8] = a1;
  v5[5] = v5;
  v5[6] = 0;
  v5[7] = 0;
  v5[6] = a4;
  v5[7] = a5;
  return MEMORY[0x2822009F8](sub_214C1C610, 0);
}

uint64_t sub_214C1C610()
{
  v6 = *(v0 + 72);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    *(v5 + 88) = v3;

    swift_endAccess();
    *(v5 + 96) = _swift_stdlib_has_malloc_size() & 1;

    return MEMORY[0x2822009F8](sub_214C1C790, v3);
  }

  else
  {
    v4 = *(v5 + 64);
    swift_endAccess();
    *v4 = 1;
    v1 = *(*(v5 + 40) + 8);

    return v1();
  }
}

uint64_t sub_214C1C790()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  *(v0 + 40) = v0;
  sub_214C17A04(v2, v1 & 1);

  return MEMORY[0x2822009F8](sub_214C1C81C, 0);
}

uint64_t sub_214C1C81C()
{
  v1 = *(v0 + 64);
  *(v0 + 40) = v0;
  *v1 = 0;
  return (*(*(v0 + 40) + 8))();
}

uint64_t MUIHighlightedMessagesController.collection(_:replacedExisting:withNewItemID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v67 = a2;
  v69 = a3;
  v70 = sub_214C1E03C;
  v72 = sub_214A7E854;
  v77 = sub_214C1E03C;
  v81 = sub_214A7E854;
  v83 = sub_214A662DC;
  v85 = sub_214A662DC;
  v87 = sub_214A7E40C;
  v89 = sub_214A662DC;
  v91 = sub_214A662DC;
  v94 = sub_214A7E40C;
  v56 = &unk_214CF3398;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v57 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v58 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v59 = &v40 - v58;
  v66 = sub_214CCDA74();
  v64 = *(v66 - 8);
  v65 = v66 - 8;
  v62 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v4 = &v40 - v62;
  v63 = &v40 - v62;
  v108 = v5;
  v107 = v6;
  v106 = v7;
  v105 = v8;
  v9 = sub_214A660E0();
  (*(v64 + 16))(v4, v9, v66);
  swift_unknownObjectRetain();
  v68 = 24;
  v79 = 7;
  v71 = swift_allocObject();
  *(v71 + 16) = v67;
  swift_unknownObjectRetain();
  v80 = swift_allocObject();
  *(v80 + 16) = v69;
  v98 = sub_214CCDA54();
  v99 = sub_214CCFBB4();
  v75 = 17;
  v84 = swift_allocObject();
  v74 = 32;
  *(v84 + 16) = 32;
  v86 = swift_allocObject();
  v76 = 8;
  *(v86 + 16) = 8;
  v78 = 32;
  v10 = swift_allocObject();
  v11 = v71;
  v73 = v10;
  *(v10 + 16) = v70;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v73;
  v88 = v12;
  *(v12 + 16) = v72;
  *(v12 + 24) = v13;
  v90 = swift_allocObject();
  *(v90 + 16) = v74;
  v92 = swift_allocObject();
  *(v92 + 16) = v76;
  v14 = swift_allocObject();
  v15 = v80;
  v82 = v14;
  *(v14 + 16) = v77;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v82;
  v95 = v16;
  *(v16 + 16) = v81;
  *(v16 + 24) = v17;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v93 = sub_214CD03C4();
  v96 = v18;

  v19 = v84;
  v20 = v96;
  *v96 = v83;
  v20[1] = v19;

  v21 = v86;
  v22 = v96;
  v96[2] = v85;
  v22[3] = v21;

  v23 = v88;
  v24 = v96;
  v96[4] = v87;
  v24[5] = v23;

  v25 = v90;
  v26 = v96;
  v96[6] = v89;
  v26[7] = v25;

  v27 = v92;
  v28 = v96;
  v96[8] = v91;
  v28[9] = v27;

  v29 = v95;
  v30 = v96;
  v96[10] = v94;
  v30[11] = v29;
  sub_214A63280();

  if (os_log_type_enabled(v98, v99))
  {
    v31 = v57;
    v48 = sub_214CCFF24();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v49 = sub_214A632C4(0);
    v50 = sub_214A632C4(2);
    v52 = &v104;
    v104 = v48;
    v53 = &v103;
    v103 = v49;
    v54 = &v102;
    v102 = v50;
    v51 = 2;
    sub_214A6627C(2, &v104);
    sub_214A6627C(v51, v52);
    v100 = v83;
    v101 = v84;
    sub_214A66290(&v100, v52, v53, v54);
    v55 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v100 = v85;
      v101 = v86;
      sub_214A66290(&v100, &v104, &v103, &v102);
      v46 = 0;
      v100 = v87;
      v101 = v88;
      sub_214A66290(&v100, &v104, &v103, &v102);
      v45 = 0;
      v100 = v89;
      v101 = v90;
      sub_214A66290(&v100, &v104, &v103, &v102);
      v44 = 0;
      v100 = v91;
      v101 = v92;
      sub_214A66290(&v100, &v104, &v103, &v102);
      v43 = 0;
      v100 = v94;
      v101 = v95;
      sub_214A66290(&v100, &v104, &v103, &v102);
      _os_log_impl(&dword_214A5E000, v98, v99, "replacedExisting itemID %s withNewItemID %s", v48, 0x16u);
      sub_214A669DC(v49);
      sub_214A669DC(v50);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v32 = MEMORY[0x277D82BD8](v98);
  (*(v64 + 8))(v63, v66, v32);
  v41 = 0;
  v33 = sub_214CCF994();
  (*(*(v33 - 8) + 56))(v59, 1);
  MEMORY[0x277D82BE0](v60);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v34 = swift_allocObject();
  v35 = v60;
  v36 = v67;
  v37 = v69;
  v42 = v34;
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v35;
  v34[5] = v36;
  v34[6] = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
  sub_214B88C30(v41, v41, v59, v56, v42, v38);
}

uint64_t sub_214C1D46C()
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  return sub_214CCF5B4();
}

uint64_t sub_214C1D4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a6;
  v6[11] = a5;
  v6[10] = a4;
  v6[9] = a1;
  v6[5] = v6;
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = 0;
  v6[6] = a4;
  v6[7] = a5;
  v6[8] = a6;
  return MEMORY[0x2822009F8](sub_214C1D528, 0);
}

uint64_t sub_214C1D528()
{
  v6 = *(v0 + 80);
  *(v0 + 40) = v0;
  v7 = OBJC_IVAR___MUIHighlightedMessagesController_model;
  v8 = (v6 + OBJC_IVAR___MUIHighlightedMessagesController_model);
  swift_beginAccess();
  if (*v8)
  {
    v3 = *(v6 + v7);
    v5[13] = v3;

    swift_endAccess();

    return MEMORY[0x2822009F8](sub_214C1D6A4, v3);
  }

  else
  {
    v4 = v5[9];
    swift_endAccess();
    *v4 = 1;
    v1 = *(v5[5] + 8);

    return v1();
  }
}

uint64_t sub_214C1D6A4()
{
  v1 = v0[12];
  v2 = v0[11];
  v0[5] = v0;
  sub_214C17C84(v2, v1);

  return MEMORY[0x2822009F8](sub_214A827F8, 0);
}

id sub_214C1D7D4(uint64_t a1, char a2)
{
  v5 = [v2 initWithTopLine:a1 isGeneratedSummary:a2 & 1 messageListItem:?];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](a1);
  return v5;
}

uint64_t sub_214C1D83C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C1696C(a1, v6, v7, v8);
}

uint64_t sub_214C1D91C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C1696C(a1, v6, v7, v8);
}

uint64_t sub_214C1D9F4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C17254(a1, v6, v7, v8, v9);
}

unint64_t sub_214C1DAD8()
{
  v2 = qword_27CA37010;
  if (!qword_27CA37010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37010);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1DB8C()
{
  v2 = qword_27CA37018;
  if (!qword_27CA37018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37018);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_214C1DC88(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C195B0(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_214C1DD78(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C1A484(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_214C1DE68(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C1B358(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_214C1DF58(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C1C5BC(a1, v6, v7, v8, v9);
}

uint64_t sub_214C1E044(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C1D4C0(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_214C1E148()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37000);
  v1 = sub_214A831E0();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

uint64_t sub_214C1E1B0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C184B0(a1, v6, v7, v8);
}

uint64_t sub_214C1E288(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C181FC(a1, v6, v7, v8, v9);
}

uint64_t block_copy_helper_380(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_214C1E3D0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214C16DE0(a1, v6, v7, v8, v9);
}

uint64_t sub_214C1E4B4()
{

  v1 = sub_214C3D2D4();

  return v1;
}

uint64_t sub_214C1E514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v53 = a1;
  v22 = sub_214C1F754;
  v36 = MEMORY[0x277CDE8F8];
  v52 = sub_214C2004C;
  v57 = MEMORY[0x277CE0CA8];
  v74 = 0;
  v73 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370A8);
  v13 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v27 = &v13 - v13;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370B0);
  v14 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v31 = &v13 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370B8);
  v15 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v32 = &v13 - v15;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370C0);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v16 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v40 = &v13 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370C8);
  v17 = (*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42);
  v46 = &v13 - v17;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370D0);
  v18 = (*(*(v47 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v51 = &v13 - v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370D8);
  v19 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v54 = &v13 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370E0);
  v59 = *(v65 - 8);
  v60 = v65 - 8;
  v20 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v53);
  v63 = &v13 - v20;
  v21 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v64 = &v13 - v21;
  v74 = &v13 - v21;
  v73 = v4;

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370E8);
  v24 = sub_214C1F75C();
  sub_214C11934();
  v29 = 0;
  v33 = 0;
  sub_214CCF024();

  v5 = [objc_opt_self() clearColor];
  v6 = sub_214CCEE54();
  v26 = &v72;
  v72 = v6;
  sub_214C1F7E4();
  sub_214CCEC34();
  sub_214A75F80();
  sub_214C1F86C(v27);
  v30 = sub_214C1FA10();
  sub_214B68808();
  sub_214CCED14();
  sub_214C1FB40(v31);
  v35 = sub_214C1FD08();
  sub_214C1F6C8();
  sub_214CCEC24();
  sub_214C1FB40(v32);
  sub_214CCE044();
  v37 = v75;
  v75[0] = v7;
  v75[1] = v8;
  v75[2] = v9;
  v75[3] = v10;
  v76 = v33 & 1;
  v70 = v34;
  v71 = v35;
  v58 = 1;
  swift_getOpaqueTypeConformance2();
  sub_214CCEBA4();
  (*(v38 + 8))(v40, v41);
  v45 = *MEMORY[0x277D258F0];
  MEMORY[0x277D82BE0](v45);
  v43 = sub_214CCF564();
  v44 = v11;
  sub_214C1FDAC();
  sub_214CCECC4();

  MEMORY[0x277D82BD8](v45);
  sub_214A9E5F4(v46);
  sub_214CCF1D4();
  v49 = sub_214C1FF2C();
  v50 = sub_214C1FFD4();
  v48 = MEMORY[0x277CE14A8];
  sub_214B28CB0();
  sub_214CCEB74();
  sub_214A9E65C(v51);

  v56 = sub_214C20054();
  sub_214B61150();
  sub_214CCEB94();

  sub_214A9E65C(v54);
  v68 = v55;
  v69 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v63, v65, v64);
  v67 = *(v59 + 8);
  v66 = v59 + 8;
  v67(v63, v65);
  (*(v59 + 16))(v63, v64, v65);
  sub_214B061F0(v63, v65, v61);
  v67(v63, v65);
  return (v67)(v64, v65);
}

uint64_t sub_214C1EEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v72 = a1;
  v144 = 0;
  v143 = 0;
  v50 = 0;
  v85 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v25 = (*(*(v85 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v85);
  v93 = (&v25 - v25);
  v26 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v25 - v25);
  v95 = (&v25 - v26);
  v144 = &v25 - v26;
  v143 = a1;

  v49 = 1;
  v51 = 1;
  sub_214C1275C(v50, 1, a1, v93);
  v87 = sub_214C201CC();
  sub_214B061F0(v93, v85, v95);
  sub_214C14DC0(v93);
  v4 = sub_214C1E4B4();
  v27 = v138;
  v138[0] = v4;
  v138[1] = v5;
  sub_214B075A0();
  v134 = sub_214CCEA74();
  v135 = v6;
  v136 = v7;
  v137 = v8;
  v30 = v134;
  v31 = v6;
  v32 = v7;
  v33 = v8;

  v28 = sub_214C373E8();

  v29 = sub_214CCE9B4();
  v130 = v30;
  v131 = v31;
  v132 = v32 & 1;
  v133 = v33;
  v126 = sub_214CCEA34();
  v127 = v9;
  v128 = v10;
  v129 = v11;
  v36 = v126;
  v37 = v9;
  v35 = v10;
  v38 = v11;

  sub_214B072EC(v30, v31, v32 & 1);

  sub_214C26DAC();
  v34 = v12;

  v122 = v36;
  v123 = v37;
  v124 = v35 & 1 & v51;
  v125 = v38;
  v77 = 0;
  v118 = sub_214CCE9E4();
  v119 = v13;
  v120 = v14;
  v121 = v15;
  v43 = v118;
  v41 = v13;
  v42 = v14;
  v44 = v15;
  sub_214B072EC(v36, v37, v35 & 1);

  v39 = sub_214BC6F18();

  v16 = sub_214CCEE54();
  v40 = &v117;
  v117 = v16;
  v113 = v43;
  v114 = v41;
  v115 = v42 & 1 & v51;
  v116 = v44;
  v109 = sub_214CCEA04();
  v110 = v17;
  v111 = v18;
  v112 = v19;
  v45 = v109;
  v46 = v17;
  v47 = v18;
  v48 = v19;
  sub_214A75F80();
  sub_214B072EC(v43, v41, v42 & 1);

  v52 = v106;
  v106[0] = v45;
  v106[1] = v46;
  v107 = v47 & 1 & v51;
  v108 = v48;
  sub_214CCF1A4();
  v53 = &v139;
  sub_214CCED14();
  sub_214B07618(v52);
  v54 = v149;
  v55 = 144;
  memcpy(v149, v53, sizeof(v149));
  v65 = v105;
  memcpy(v105, v149, sizeof(v105));
  v64 = MEMORY[0x277CE0910];
  v57 = sub_214CD03C4();
  v56 = v20;
  v21 = sub_214CCE8D4();
  v22 = v57;
  *v56 = v21;
  sub_214A63280();
  v58 = v22;
  v71 = sub_214C151AC();
  sub_214CD0084();
  v63 = v104[47];

  v59 = v145;
  sub_214C3518C(v145);

  v60 = v148;
  v73 = 40;
  memcpy(v148, v59 + 15, sizeof(v148));
  sub_214C14EE4(v148, v104);
  sub_214C14F3C(v59);
  v61 = sub_214C33238();
  sub_214A671E8(v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B38);
  sub_214BF0760();
  v66 = &v140;
  sub_214CCED64();
  sub_214B07618(v65);
  v67 = v150;
  v68 = 185;
  memcpy(v150, v66, 0xB9uLL);
  v80 = v103;
  memcpy(v103, v150, 0xB9uLL);
  v90 = 2;
  v70 = sub_214CD03C4();
  v69 = v23;
  *v23 = sub_214CCE8B4();
  v69[1] = sub_214CCE8C4();
  sub_214A63280();
  sub_214CD0084();
  v79 = v102[47];

  v74 = v146;
  sub_214C3518C(v146);

  v75 = v147;
  memcpy(v147, v74 + 15, v73);
  sub_214C14EE4(v147, v102);
  sub_214C14F3C(v74);
  v76 = sub_214C331D4();
  sub_214A671E8(v75);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B48);
  sub_214BF0800();
  v81 = &v141;
  sub_214CCED64();
  sub_214B07618(v80);
  v82 = v151;
  v83 = 233;
  memcpy(v151, v81, 0xE9uLL);
  v84 = v101;
  memcpy(v101, v151, 0xE9uLL);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36B58);
  v88 = sub_214BF08A4();
  v94 = v142;
  sub_214B061F0(v84, v86, v142);
  sub_214B07618(v84);
  sub_214C14BB4(v95, v93);
  v91 = v100;
  v100[0] = v93;
  v92 = v99;
  sub_214C2024C(v94, v99);
  v100[1] = v92;
  v98[0] = v85;
  v98[1] = v86;
  v96 = v87;
  v97 = v88;
  sub_214C663A4(v91, v90, v98, v89);
  sub_214B07618(v92);
  sub_214C14DC0(v93);
  sub_214B07618(v94);
  return sub_214C14DC0(v95);
}

uint64_t sub_214C1F6EC()
{

  sub_214C3B6B4();
}

unint64_t sub_214C1F75C()
{
  v2 = qword_27CA370F0;
  if (!qword_27CA370F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA370F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1F7E4()
{
  v2 = qword_27CA370F8;
  if (!qword_27CA370F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA370F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C1F86C(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37100) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v5);
  }

  else
  {
  }

  v3 = type metadata accessor for MUIHighlightedMessagesAvatarView();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v5 + *(v3 + 28)));

  v4 = a1 + v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37108) + 48);
  sub_214B072EC(*v4, *(v4 + 8), *(v4 + 16) & 1);

  return a1;
}

unint64_t sub_214C1FA10()
{
  v2 = qword_27CA37110;
  if (!qword_27CA37110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370B0);
    sub_214C1F7E4();
    sub_214C1FAB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37110);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FAB8()
{
  v2 = qword_27CA37118;
  if (!qword_27CA37118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37118);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C1FB40(uint64_t a1)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37100) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v5);
  }

  else
  {
  }

  v3 = type metadata accessor for MUIHighlightedMessagesAvatarView();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v5 + *(v3 + 28)));

  v4 = a1 + v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37108) + 48);
  sub_214B072EC(*v4, *(v4 + 8), *(v4 + 16) & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA370B0);

  return a1;
}

unint64_t sub_214C1FD08()
{
  v2 = qword_27CA37128;
  if (!qword_27CA37128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370B8);
    sub_214C1FA10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FDAC()
{
  v2 = qword_27CA37130;
  if (!qword_27CA37130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370B8);
    sub_214C1FD08();
    swift_getOpaqueTypeConformance2();
    sub_214C1FEA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FEA4()
{
  v2 = qword_27CA37138;
  if (!qword_27CA37138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37138);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FF2C()
{
  v2 = qword_27CA37148;
  if (!qword_27CA37148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370D0);
    sub_214C1FDAC();
    sub_214B0B870();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C1FFD4()
{
  v2 = qword_27CA37D30;
  if (!qword_27CA37D30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37D30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C20054()
{
  v2 = qword_27CA37150;
  if (!qword_27CA37150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA370D8);
    sub_214C1FF2C();
    sub_214C200FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37150);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C200FC()
{
  v2 = qword_27CA37158;
  if (!qword_27CA37158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA37CA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37158);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C201CC()
{
  v2 = qword_27CA37160;
  if (!qword_27CA37160)
  {
    type metadata accessor for MUIHighlightedMessagesAvatarView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37160);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2024C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_214B0755C(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);

  *(a2 + 24) = v6;
  memcpy((a2 + 32), (a1 + 32), 0x70uLL);
  memcpy((a2 + 144), (a1 + 144), 0x29uLL);
  memcpy((a2 + 192), (a1 + 192), 0x29uLL);
  return a2;
}

uint64_t sub_214C20328()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_214C20354@<X0>(uint64_t a1@<X8>)
{
  v7 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68);
  v5 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v1 = (&v4 - v5);
  v9 = &v4 - v5;
  v2 = type metadata accessor for MUIHighlightedMessagesHeaderView();
  sub_214C11C7C((v6 + *(v2 + 20)), v1);
  sub_214CCE124();
  return sub_214C11D50(v9);
}

uint64_t type metadata accessor for MUIHighlightedMessagesHeaderView()
{
  v1 = qword_27CA37240;
  if (!qword_27CA37240)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_214C204C0(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36E68) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_214C11C7C(v2, (&v5 - v6));
  v3 = type metadata accessor for MUIHighlightedMessagesHeaderView();
  sub_214C11EB0(v7, (v1 + *(v3 + 20)));
  return sub_214C11D50(v8);
}

uint64_t sub_214C20570@<X0>(uint64_t a1@<X8>)
{
  v16 = v1;
  sub_214CCE454();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37168);
  sub_214C20D54();
  sub_214CCF024();
  memcpy(__dst, v12, sizeof(__dst));
  memcpy(v11, __dst, sizeof(v11));
  sub_214CCE8B4();

  sub_214C3518C(v17);

  memcpy(v22, v18, sizeof(v22));
  sub_214C21934(v22, v10);
  sub_214C14F3C(v17);
  sub_214C219C8(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37178);
  sub_214C21A08();
  sub_214CCED64();
  sub_214C21A90(v11);
  memcpy(v24, v13, sizeof(v24));
  memcpy(v9, v24, 0x69uLL);
  sub_214CCE8C4();

  sub_214C3518C(v19);

  memcpy(v21, v20, sizeof(v21));
  sub_214C21934(v21, v8);
  sub_214C14F3C(v19);
  sub_214C219C8(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37188);
  sub_214C21AE0();
  sub_214CCED64();
  sub_214C21A90(v9);
  memcpy(v25, v14, sizeof(v25));
  memcpy(v7, v25, 0x99uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37198);
  sub_214C21B84();
  sub_214B061F0(v7, v4, v15);
  sub_214C21A90(v7);
  memcpy(v26, v15, 0x99uLL);
  sub_214C21C28(v26, v6);
  memcpy(v5, v26, 0x99uLL);
  sub_214B061F0(v5, v4, a1);
  sub_214C21A90(v5);
  return sub_214C21A90(v15);
}

uint64_t *sub_214C208B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74[0] = 0;
  memset(v72, 0, sizeof(v72));
  v74[1] = a1;
  v16 = *a1;

  v73 = nullsub_1(v16);
  sub_214C22D0C();
  sub_214B061F0(&v73, &unk_2826E98E8, v74);
  sub_214A75F80();

  v17 = sub_214C37ACC();
  v18 = v2;

  v70 = v17;
  v71 = v18;
  sub_214B075A0();
  v66 = sub_214CCEA74();
  v67 = v3;
  v68 = v4;
  v69 = v5;
  v19 = v3;
  v20 = v4;
  v21 = v5;

  sub_214C36B8C();

  sub_214CCE9B4();
  v62 = v66;
  v63 = v19;
  v64 = v20 & 1;
  v65 = v21;
  v58 = sub_214CCEA34();
  v59 = v6;
  v60 = v7;
  v61 = v8;
  v23 = v6;
  v22 = v7;
  v24 = v8;

  sub_214B072EC(v66, v19, v20 & 1);

  sub_214C26DAC();

  v54 = v58;
  v55 = v23;
  v56 = v22 & 1;
  v57 = v24;
  v50 = sub_214CCE9E4();
  v51 = v9;
  v52 = v10;
  v53 = v11;
  v27 = v9;
  v26 = v10;
  v28 = v11;
  sub_214B072EC(v58, v23, v22 & 1);

  v25 = sub_214C37C94();

  v49 = v25;
  v45 = v50;
  v46 = v27;
  v47 = v26 & 1;
  v48 = v28;
  v41 = sub_214CCEA04();
  v42 = v12;
  v43 = v13;
  v44 = v14;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  sub_214B072EC(v50, v27, v26 & 1);

  v38[0] = v41;
  v38[1] = v29;
  v39 = v30 & 1;
  v40 = v31;
  v32 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v38, MEMORY[0x277CE0BD8], v72);
  sub_214B07618(v38);
  sub_214A75F48(v74, &v36);
  v37[0] = &v36;
  sub_214B0C408(v72, v35);
  v37[1] = v35;
  v34[0] = &unk_2826E98E8;
  v34[1] = v32;
  sub_214C663A4(v37, 2uLL, v34, a2);
  sub_214B07618(v35);
  sub_214A75F80();
  sub_214B07618(v72);
  result = v74;
  sub_214A75F80();
  return result;
}

unint64_t sub_214C20D54()
{
  v2 = qword_27CA37170;
  if (!qword_27CA37170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37168);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37170);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C20DDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for MUIHighlightedMessagesHeaderView();
  swift_getKeyPath();
  return sub_214CCE144();
}

uint64_t sub_214C20E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v58 = a1;
  v78 = 0;
  v77 = 0;
  v40 = 0;
  v37 = sub_214CCEF74();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v14 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v36 = &v13 - v14;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371A8);
  v15 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v27 = &v13 - v15;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0);
  v16 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v32 = &v13 - v16;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B8);
  v17 = (*(*(v33 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v33);
  v38 = &v13 - v17;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C0);
  v18 = (*(*(v44 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v44);
  v45 = &v13 - v18;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C8);
  v19 = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v50);
  v53 = &v13 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371D0);
  v20 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v63 = &v13 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371D8);
  v21 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58);
  v67 = &v13 - v21;
  v22 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v68 = (&v13 - v22);
  v78 = &v13 - v22;
  v77 = v5;
  v23 = @"apple.intelligence";
  MEMORY[0x277D82BE0](@"apple.intelligence");
  sub_214CCF564();
  v24 = sub_214CCEF54();
  MEMORY[0x277D82BD8](v23);
  v25 = v74;
  v74[0] = v24;
  v41 = 1;
  v60 = 0;
  sub_214CCEB14();
  sub_214A75F80();
  v28 = v71;
  v71[0] = v74[1];
  v71[1] = v74[2];
  v72 = v75 & 1 & v41;
  v73 = v76;
  sub_214CCE564();
  v6 = sub_214CCE574();
  (*(*(v6 - 8) + 56))(v27, v60, v41);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371E0);
  sub_214C21D10();
  sub_214CCEC54();
  sub_214C21DB0(v27);
  sub_214A75F80();

  v29 = sub_214C36B8C();

  v31 = sub_214CCE9B4();
  sub_214C21E58();
  sub_214CCECF4();

  sub_214C21F88(v32);
  (*(v34 + 104))(v36, *MEMORY[0x277CE1048], v37);
  sub_214C220A0();
  sub_214CCEAF4();
  (*(v34 + 8))(v36, v37);
  sub_214C22148(v38);
  v39 = sub_214C21744(v58);
  v42 = sub_214CCF194();
  v43 = v7;
  sub_214C22298();
  sub_214CCED04();
  sub_214C223C8(v45);
  v54 = 1;
  v52 = MEMORY[0x277CE0910];
  v47 = sub_214CD03C4();
  v46 = v8;
  v9 = sub_214CCE8D4();
  v10 = v47;
  *v46 = v9;
  sub_214A63280();
  v48 = v10;
  v57 = sub_214C151AC();
  sub_214CD0084();
  v51 = v70;
  v49 = sub_214C217E0(v58);
  sub_214C225A0();
  sub_214CCED64();
  sub_214C223C8(v53);
  v56 = sub_214CD03C4();
  v55 = v11;
  *v11 = sub_214CCE8E4();
  sub_214A63280();
  sub_214CD0084();
  v62 = v69;
  v59 = sub_214C2187C(v58);
  sub_214C22644();
  sub_214CCED64();
  sub_214C223C8(v63);
  v66 = sub_214C226E8();
  sub_214B061F0(v67, v65, v68);
  sub_214C223C8(v67);
  sub_214C2278C(v68, v67);
  sub_214B061F0(v67, v65, v64);
  sub_214C223C8(v67);
  return sub_214C223C8(v68);
}

double sub_214C21744(uint64_t a1)
{
  v4 = a1;

  sub_214C3518C(v5);

  memcpy(__dst, v6, sizeof(__dst));
  sub_214C14EE4(__dst, v3);
  sub_214C14F3C(v5);
  v2 = sub_214C33250();
  sub_214A671E8(__dst);
  return v2;
}

double sub_214C217E0(uint64_t a1)
{
  v4 = a1;

  sub_214C3518C(v5);

  memcpy(__dst, v6, sizeof(__dst));
  sub_214C14EE4(__dst, v3);
  sub_214C14F3C(v5);
  v2 = sub_214C33268();
  sub_214A671E8(__dst);
  return v2;
}

double sub_214C2187C(uint64_t a1)
{
  v4 = a1;

  sub_214C3518C(v5);

  memcpy(__dst, v6, sizeof(__dst));
  sub_214C14EE4(__dst, v3);
  sub_214C14F3C(v5);
  v2 = sub_214C33280();
  sub_214A671E8(__dst);
  return v2;
}

uint64_t sub_214C21934(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  *(a2 + 40) = a1[5];
  v5 = a1[6];

  result = a2;
  *(a2 + 48) = v5;
  *(a2 + 56) = a1[7];
  *(a2 + 64) = a1[8];
  *(a2 + 72) = a1[9];
  return result;
}

unint64_t sub_214C21A08()
{
  v2 = qword_27CA37180;
  if (!qword_27CA37180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37178);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37180);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C21A90(uint64_t a1)
{

  sub_214B072EC(*(a1 + 32), *(a1 + 40), *(a1 + 48) & 1);

  return a1;
}

unint64_t sub_214C21AE0()
{
  v2 = qword_27CA37190;
  if (!qword_27CA37190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37188);
    sub_214C21A08();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C21B84()
{
  v2 = qword_27CA371A0;
  if (!qword_27CA371A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37198);
    sub_214C21AE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA371A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C21C28(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);

  *(a2 + 24) = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  sub_214B0755C(v4, v5, v6 & 1);
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6 & 1;
  v7 = *(a1 + 56);

  *(a2 + 56) = v7;
  memcpy((a2 + 64), (a1 + 64), 0x29uLL);
  memcpy((a2 + 112), (a1 + 112), 0x29uLL);
  return a2;
}

unint64_t sub_214C21D10()
{
  v2 = qword_27CA371E8;
  if (!qword_27CA371E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA371E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C21DB0(uint64_t a1)
{
  v3 = sub_214CCE574();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214C21E58()
{
  v2 = qword_27CA371F0;
  if (!qword_27CA371F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371B0);
    sub_214C21D10();
    sub_214C21F00();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA371F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C21F00()
{
  v2 = qword_27CA371F8;
  if (!qword_27CA371F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37200);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA371F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C21F88(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37200) + 28);
  v5 = sub_214CCE574();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3 + v4, 1))
  {
    (*(v6 + 8))(a1 + v3 + v4, v5);
  }

  return a1;
}

unint64_t sub_214C220A0()
{
  v2 = qword_27CA37208;
  if (!qword_27CA37208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371B8);
    sub_214C21E58();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37208);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C22148(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0) + 36);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37200) + 28);
  v5 = sub_214CCE574();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v3 + v4, 1))
  {
    (*(v6 + 8))(a1 + v3 + v4, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B8);

  return a1;
}

unint64_t sub_214C22298()
{
  v2 = qword_27CA37210;
  if (!qword_27CA37210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371C0);
    sub_214C220A0();
    sub_214C22340();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C22340()
{
  v2 = qword_27CA37218;
  if (!qword_27CA37218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37220);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37218);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C223C8(uint64_t a1)
{

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37200) + 28);
  v8 = sub_214CCE574();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v6 + v7, 1))
  {
    (*(v9 + 8))(a1 + v6 + v7, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B8);

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C0) + 36);

  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v1 = sub_214CCEF74();
  (*(*(v1 - 8) + 8))(v4);
  return a1;
}

unint64_t sub_214C225A0()
{
  v2 = qword_27CA37228;
  if (!qword_27CA37228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371C8);
    sub_214C22298();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C22644()
{
  v2 = qword_27CA37230;
  if (!qword_27CA37230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371D0);
    sub_214C225A0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C226E8()
{
  v2 = qword_27CA37238;
  if (!qword_27CA37238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA371D8);
    sub_214C22644();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2278C(uint64_t *a1, uint64_t a2)
{
  v20 = *a1;

  *a2 = v20;
  *(a2 + 8) = a1[1];
  *(a2 + 16) = *(a1 + 8);
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B0) + 36);
  v24 = *(a1 + v22);

  *(a2 + v22) = v24;
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37200) + 28);
  v26 = sub_214CCE574();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(a1 + v22 + v25, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371A8);
    memcpy((a2 + v22 + v25), a1 + v22 + v25, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v27 + 16))();
    (*(v27 + 56))(a2 + v22 + v25, 0, 1, v26);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371B8);
  v13 = (a2 + *(v3 + 36));
  v12 = (a1 + *(v3 + 36));
  v11 = *v12;

  *v13 = v11;
  v14 = v12[1];

  v13[1] = v14;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C0);
  v16 = (a2 + *(v4 + 36));
  v17 = (a1 + *(v4 + 36));
  v15 = *v17;

  *v16 = v15;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220);
  v19 = v16 + *(v5 + 28);
  v18 = v17 + *(v5 + 28);
  v6 = sub_214CCEF74();
  (*(*(v6 - 8) + 16))(v19, v18);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371C8);
  memcpy((a2 + *(v7 + 36)), a1 + *(v7 + 36), 0x30uLL);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371D0);
  memcpy((a2 + *(v8 + 36)), a1 + *(v8 + 36), 0x29uLL);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA371D8);
  memcpy((a2 + *(v9 + 36)), a1 + *(v9 + 36), 0x29uLL);
  return a2;
}

uint64_t sub_214C22BC4()
{
  v3 = type metadata accessor for MUIHighlightedMessagesViewModel();
  if (v0 <= 0x3F)
  {
    v3 = sub_214C158F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

unint64_t sub_214C22D0C()
{
  v2 = qword_27CA37250;
  if (!qword_27CA37250)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37250);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C22DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9[1] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_214CCE694();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v11);
  v13 = v9 - v10;
  (*(*(v7 - 8) + 16))(v6);
  swift_storeEnumTagMultiPayload();
  return sub_214CCE6A4();
}

uint64_t sub_214C22E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a6;
  v9[1] = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v19 = a2;
  v18 = a3;
  v11 = sub_214CCE694();
  v10 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v11);
  v13 = v9 - v10;
  (*(*(v7 - 8) + 16))(v6);
  swift_storeEnumTagMultiPayload();
  return sub_214CCE6A4();
}

uint64_t sub_214C22F90()
{
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

uint64_t sub_214C22FD0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = *v1;
  *v1 = a1;
  MEMORY[0x277D82BD8](v2);
  return MEMORY[0x277D82BD8](a1);
}

uint64_t sub_214C2303C()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t sub_214C23074@<X0>(uint64_t a1@<X8>)
{
  v5[2] = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37258);
  v5[0] = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v1 = (v5 - v5[0]);
  v7 = v5 - v5[0];
  v8 = v2;
  v3 = type metadata accessor for MUIHighlightedMessagesRowView();
  sub_214C231B4((v5[1] + *(v3 + 24)), v1);
  sub_214CCE124();
  return sub_214C23288(v7);
}

uint64_t type metadata accessor for MUIHighlightedMessagesRowView()
{
  v1 = qword_27CA37348;
  if (!qword_27CA37348)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_214C231B4(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE6E4();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214C23288(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE6E4();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_214C23364(uint64_t a1)
{
  v8 = a1;
  v10 = 0;
  v9 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37258) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  v10 = v2;
  v9 = v1;
  sub_214C231B4(v2, (&v5 - v6));
  v3 = type metadata accessor for MUIHighlightedMessagesRowView();
  sub_214C23428(v7, (v1 + *(v3 + 24)));
  return sub_214C23288(v8);
}

void *sub_214C23428(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_214C23288(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_214CCE6E4();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t MUIHighlightedMessagesRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = v88;
  v29 = a1;
  v67 = 0;
  v87 = 0;
  v86 = 0;
  v30 = sub_214CCE504();
  v31 = *(v30 - 8);
  v32 = v31;
  MEMORY[0x28223BE20](0);
  v33 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_214CCE6E4();
  v34 = *(v75 - 8);
  v72 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  v73 = v18 - v36;
  MEMORY[0x28223BE20](v18 - v36);
  v74 = v18 - v36;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37268);
  v37 = (*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65 - 8);
  v71 = v18 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37270);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38 - 8);
  v66 = v18 - v39;
  v40 = v18 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37278);
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41 - 8);
  v43 = v18 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37280);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  v46 = v18 - v47;
  MEMORY[0x28223BE20](v18 - v47);
  v48 = v18 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37288);
  v50 = *(v49 - 8);
  v51 = v50;
  v53 = *(v50 + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = v18 - v55;
  MEMORY[0x28223BE20](v18 - v55);
  v54 = v18 - v55;
  MEMORY[0x28223BE20](v18 - v55);
  v56 = v18 - v55;
  v87 = v18 - v55;
  v86 = v1;
  v79 = v1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37290);
  v58 = sub_214C24804();
  sub_214C11934();
  v69 = 0;
  sub_214CCF024();
  v59 = *(v1 + 8);

  v61 = v88;
  sub_214C3518C(v88);

  v3 = *(v60 + 120);
  v4 = *(v60 + 136);
  v91 = v89;
  v90[1] = v4;
  v90[0] = v3;
  v62 = v90;
  sub_214C14EE4(v90, &v85);
  sub_214C14F3C(v61);
  v63 = sub_214C33298();
  sub_214A671E8(v62);
  v68 = v63;
  v64 = sub_214C28520();
  v5 = sub_214B68808();
  v70 = &v11;
  v17 = v64;
  v16 = v65;
  v15[1] = v6;
  v15[0] = v5;
  v14 = 1;
  v13 = v67;
  v12 = 1;
  v11 = v67;
  sub_214CCED14();
  sub_214C285A8(v71);
  sub_214C23074(v74);
  sub_214CCE6D4();
  v78 = sub_214CCE6B4();
  v77 = *(v72 + 8);
  v76 = v72 + 8;
  v77(v73, v75);
  v77(v74, v75);
  if (v78)
  {
    v28 = sub_214CCEE64();
  }

  else
  {
    v28 = sub_214CCEEA4();
  }

  v84 = v28;
  sub_214C2893C();
  v18[1] = &v84;
  sub_214CCEC34();
  sub_214A75F80();
  sub_214C285A8(v40);
  sub_214CCE4E4();
  sub_214C289E0();
  sub_214CCECA4();
  (*(v32 + 8))(v33, v30);
  sub_214C28A88(v43);
  v19 = *MEMORY[0x277D258E8];
  v7 = v19;
  sub_214CCF564();
  v18[2] = v8;
  sub_214CCE2E4();

  sub_214C28DCC(v46);
  v21 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v15;
  v16 = v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372E0);
  v23 = sub_214C2915C();
  v24 = sub_214C29204();
  sub_214CCEB44();
  sub_214C28DCC(v48);
  v80 = v44;
  v81 = v22;
  v82 = v23;
  v83 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v54, v49, v56);
  v27 = *(v51 + 8);
  v26 = v51 + 8;
  v27(v54, v49);
  (*(v51 + 16))(v52, v56, v49);
  sub_214B061F0(v52, v49, v29);
  v27(v52, v49);
  return (v27)(v56, v49);
}

uint64_t sub_214C23D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v81 = a1;
  v111 = 0;
  v110 = 0;
  v109 = 0;
  v29 = 0;
  v50 = sub_214CCEF74();
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v21 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v49 = &v20 - v21;
  v22 = (*(*(sub_214CCCF24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v44 = &v20 - v22;
  v23 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v43 = &v20 - v23;
  v46 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  v24 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v51 = &v20 - v24;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0);
  v25 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v56 = &v20 - v25;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8);
  v26 = (*(*(v64 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v66 = &v20 - v26;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37388);
  v27 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v74);
  v77 = &v20 - v27;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37390);
  v28 = (*(*(v88 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88);
  v90 = &v20 - v28;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37398);
  v30 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v98 = &v20 - v30;
  v31 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v100 = &v20 - v31;
  v111 = &v20 - v31;
  v38 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v32 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v6 = (&v20 - v32);
  v39 = &v20 - v32;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0);
  v33 = (*(*(v91 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v99 = (&v20 - v33);
  v34 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v101 = (&v20 - v34);
  v110 = &v20 - v34;
  v109 = v9;
  v36 = *v9;
  MEMORY[0x277D82BE0](v36);
  v35 = *(v81 + 8);

  v10 = sub_214B348E4();
  v37 = 1;
  sub_214C1275C(v36, v10 & 1, v35, v6);
  sub_214C201CC();
  sub_214CCEC44();
  sub_214C14DC0(v39);
  v93 = sub_214C2A0A0();
  sub_214B061F0(v99, v91, v101);
  sub_214C2A148(v99);
  sub_214C2488C(v43);
  v11 = v51;
  v40 = *v81;
  *&v12 = MEMORY[0x277D82BE0](v40).n128_u64[0];
  v41 = [v40 topLine];
  MEMORY[0x277D82BD8](v40);
  sub_214CCCF44();
  v42 = *v81;
  *&v13 = MEMORY[0x277D82BE0](v42).n128_u64[0];
  v45 = [v42 isGeneratedSummary];
  MEMORY[0x277D82BD8](v42);
  sub_214C24D2C(v43, v44, v45, v11);
  (*(v47 + 104))(v49, *MEMORY[0x277CE1050], v50);
  sub_214C2A2D0();
  sub_214CCEAF4();
  (*(v47 + 8))(v49, v50);
  sub_214C2A350(v51);
  v52 = *(v81 + 8);

  v53 = sub_214C36330();

  v55 = sub_214CCE9B4();
  sub_214C2A3EC();
  sub_214CCECF4();

  sub_214C2A494(v56);
  v67 = 1;
  v76 = MEMORY[0x277CE0910];
  v58 = sub_214CD03C4();
  v57 = v14;
  v15 = sub_214CCE8D4();
  v16 = v58;
  *v57 = v15;
  sub_214A63280();
  v59 = v16;
  v80 = sub_214C151AC();
  sub_214CD0084();
  v65 = v108[47];
  v60 = *(v81 + 8);

  v61 = v112;
  sub_214C3518C(v112);

  v62 = __dst;
  v83 = 40;
  memcpy(__dst, v61 + 15, sizeof(__dst));
  sub_214C14EE4(__dst, v108);
  sub_214C14F3C(v61);
  v63 = sub_214C33238();
  sub_214A671E8(v62);
  sub_214C2A5C0();
  v87 = 0;
  sub_214CCED64();
  sub_214C2A668(v66);
  v69 = sub_214CD03C4();
  v68 = v17;
  *v17 = sub_214CCE8E4();
  sub_214A63280();
  sub_214CD0084();
  v75 = v107[47];
  v70 = *(v81 + 8);

  v71 = v113;
  sub_214C3518C(v113);

  v72 = v116;
  memcpy(v116, v71 + 15, v83);
  sub_214C14EE4(v116, v107);
  sub_214C14F3C(v71);
  v73 = sub_214C331BC();
  sub_214A671E8(v72);
  sub_214C2A7D0();
  sub_214CCED64();
  sub_214C2A668(v77);
  v96 = 2;
  v79 = sub_214CD03C4();
  v78 = v18;
  *v18 = sub_214CCE8B4();
  v78[1] = sub_214CCE8C4();
  sub_214A63280();
  sub_214CD0084();
  v89 = v106[47];
  v82 = *(v81 + 8);

  v84 = v114;
  sub_214C3518C(v114);

  v85 = v115;
  memcpy(v115, v84 + 15, v83);
  sub_214C14EE4(v115, v106);
  sub_214C14F3C(v84);
  v86 = sub_214C331D4();
  sub_214A671E8(v85);
  sub_214C2A874();
  sub_214CCED64();
  sub_214C2A668(v90);
  v94 = sub_214C2A918();
  sub_214B061F0(v98, v92, v100);
  sub_214C2A668(v98);
  sub_214C2A9BC(v101, v99);
  v97 = v105;
  v105[0] = v99;
  sub_214C2AC44(v100, v98);
  v105[1] = v98;
  v104[0] = v91;
  v104[1] = v92;
  v102 = v93;
  v103 = v94;
  sub_214C663A4(v97, v96, v104, v95);
  sub_214C2A668(v98);
  sub_214C2A148(v99);
  sub_214C2A668(v100);
  return sub_214C2A148(v101);
}

unint64_t sub_214C24804()
{
  v2 = qword_27CA37298;
  if (!qword_27CA37298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37290);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37298);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2488C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v33 = "The sender of a message";
  v47 = 0;
  v42 = 0;
  v43 = 0;
  v35 = 0;
  v11 = (*(*(sub_214CCCFA4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v41 = &v10 - v11;
  v12 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v37 = &v10 - v12;
  v13 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v34 = &v10 - v13;
  v30 = sub_214CCF514();
  v28 = *(v30 - 8);
  v29 = v30 - 8;
  v16 = *(v28 + 64);
  v14 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v32 = &v10 - v14;
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v27 = &v10 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v31 = &v10 - v17;
  v47 = v3;
  sub_214CCF504();
  v24 = "";
  v25 = 1;
  sub_214CCF614();
  v18 = v4;
  sub_214CCF4F4();

  v20 = *v19;
  *&v5 = MEMORY[0x277D82BE0](v20).n128_u64[0];
  v23 = [v20 sender];
  v21 = sub_214CCF564();
  v22 = v6;
  MEMORY[0x277D82BD8](v20);
  sub_214CCF4E4();

  MEMORY[0x277D82BD8](v23);
  sub_214CCF614();
  v26 = v7;
  sub_214CCF4F4();

  (*(v28 + 16))(v27, v31, v30);
  (*(v28 + 32))(v32, v27, v30);
  (*(v28 + 8))(v31, v30);
  sub_214CCF524();
  v36 = [objc_opt_self() mui_MailUIBundle];
  sub_214B1CFBC();
  v44 = v33;
  v45 = 23;
  v46 = 2;
  v39 = sub_214CCF5A4();
  v40 = v8;
  v42 = v39;
  v43 = v8;
  sub_214C26C20();
  return sub_214CCCF34();
}

uint64_t sub_214C24D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = sub_214CCCF24();
  v7 = *(*(v6 - 8) + 32);
  v7(a4, a1);
  v11 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  (v7)(a4 + *(v11 + 20), a2, v6);
  result = v11;
  *(a4 + *(v11 + 24)) = a3;
  return result;
}

uint64_t sub_214C24DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v37 = a2;
  v46 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v69 = 0;
  v63 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37320);
  v39 = *(v38 - 8);
  v40 = v39;
  v42 = *(v39 + 64);
  MEMORY[0x28223BE20](0);
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = &v17 - v44;
  MEMORY[0x28223BE20](v2);
  v43 = &v17 - v44;
  MEMORY[0x28223BE20](v3);
  v45 = &v17 - v44;
  v78 = &v17 - v44;
  sub_214CCD2D4();
  MEMORY[0x28223BE20](v46);
  v47 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_214CCF534();
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37300);
  v50 = *(v49 - 8);
  v51 = v50;
  v53 = *(v50 + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v55 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  v52 = &v17 - v55;
  MEMORY[0x28223BE20](&v17 - v55);
  v54 = &v17 - v55;
  MEMORY[0x28223BE20](v7);
  v56 = &v17 - v55;
  v77 = &v17 - v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372E0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v60 = &v17 - v61;
  MEMORY[0x28223BE20](v8);
  v62 = &v17 - v61;
  v76 = &v17 - v61;
  v75 = v9;
  if ([objc_opt_self() isFeedbackRestricted])
  {
    sub_214CCF614();
    sub_214CCF4C4();
    v29 = [objc_opt_self() mui_MailUIBundle];
    sub_214B1CFBC();
    v66 = "Header title that appears in a context menu for reporting a concern for a priority mail";
    v67 = 87;
    v68 = 2;
    v64 = sub_214CCF5A4();
    v65 = v10;
    v33 = &v17;
    MEMORY[0x28223BE20](&v17);
    v30 = &v17 - 4;
    *(&v17 - 2) = v11;
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37310);
    v32 = sub_214C2935C();
    sub_214B075A0();
    sub_214CCF104();
    v34 = sub_214C292AC();
    sub_214B061F0(v54, v49, v56);
    v35 = *(v51 + 8);
    v36 = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v54, v49);
    v63 = v54;
    v28 = *(v51 + 16);
    v27 = v51 + 16;
    v28(v52, v56, v49);
    sub_214B061F0(v52, v49, v54);
    v35(v52, v49);
    v28(v52, v54, v49);
    v12 = sub_214C293E4();
    sub_214C22DA0(v52, v49, v38, v34, v12, v60);
    v35(v52, v49);
    sub_214C29D00(v60, v62);
    v35(v54, v49);
    v35(v56, v49);
  }

  else
  {
    sub_214CCF614();
    sub_214CCF4C4();
    v19 = [objc_opt_self() mui_MailUIBundle];
    sub_214B1CFBC();
    v72 = "Header title that appears in a context menu for sharing feedback for a priority mail";
    v73 = 84;
    v74 = 2;
    v70 = sub_214CCF5A4();
    v71 = v13;
    v23 = &v17;
    MEMORY[0x28223BE20](&v17);
    v20 = &v17 - 4;
    *(&v17 - 2) = v14;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37330);
    v22 = sub_214C29494();
    sub_214B075A0();
    sub_214CCF104();
    v24 = sub_214C293E4();
    sub_214B061F0(v43, v38, v45);
    v25 = *(v40 + 8);
    v26 = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v43, v38);
    v69 = v43;
    v18 = *(v40 + 16);
    v17 = v40 + 16;
    v18(v41, v45, v38);
    sub_214B061F0(v41, v38, v43);
    v25(v41, v38);
    v18(v41, v43, v38);
    v15 = sub_214C292AC();
    sub_214C22E98(v41, v49, v38, v15, v24, v60);
    v25(v41, v38);
    sub_214C29D00(v60, v62);
    v25(v43, v38);
    v25(v45, v38);
  }

  sub_214C29E10(v62, v60);
  sub_214C29204();
  sub_214B061F0(v60, v58, v37);
  sub_214C29F20(v60);
  return sub_214C29F20(v62);
}

uint64_t sub_214C25830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FE0);
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v19 = v23[8];
  v14 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v15 = &v8 - v14;
  v16 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v14);
  v17 = &v8 - v16;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v16);
  v28 = &v8 - v18;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v21 = &v8 - v20;
  v35 = &v8 - v20;
  v34 = a1;
  sub_214C25B60(2, 2, v6);
  v22 = sub_214B1AB04();
  sub_214B061F0(v28, v25, v21);
  v26 = v23[1];
  v27 = v23 + 1;
  v26(v28, v25);
  v33 = v28;
  v10 = 2;
  sub_214C25B60(2, 0, v17);
  sub_214B061F0(v17, v25, v28);
  v26(v17, v25);
  v9 = v23[2];
  v8 = v23 + 2;
  v9(v17, v21, v25);
  v11 = v32;
  v32[0] = v17;
  v9(v15, v28, v25);
  v32[1] = v15;
  v31[0] = v25;
  v31[1] = v25;
  v29 = v22;
  v30 = v22;
  sub_214C663A4(v11, v10, v31, v12);
  v26(v15, v25);
  v26(v17, v25);
  v26(v28, v25);
  return (v26)(v21, v25);
}

uint64_t sub_214C25B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v17 = a1;
  v19 = a2;
  v25 = sub_214C29794;
  v22 = sub_214C29840;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v10 = *(type metadata accessor for MUIHighlightedMessagesRowView() - 8);
  v12 = v10;
  v13 = *(v10 + 64);
  v11 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9[1]);
  v15 = (v9 - v11);
  v30 = v17;
  v29 = v3;
  v28 = v4;
  sub_214C2951C(v4, (v9 - v11));
  v14 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v14 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_214C2966C(v15, (v21 + v14));
  v5 = v18;
  v6 = v19;
  v7 = v21;
  *(v21 + v16) = v17;
  *(v7 + v5) = v6;
  v23 = &v26;
  v27 = v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0);
  sub_214B1AC20();
  return sub_214CCF004();
}

uint64_t sub_214C25D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a1;
  v9 = a2;
  v23 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37378);
  v11 = v31;
  v12 = *(v31 - 8);
  v30 = v12;
  v13 = v12;
  v16 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v18 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v7 - v18;
  MEMORY[0x28223BE20](v2);
  v15 = v7 - v18;
  MEMORY[0x28223BE20](v3);
  v34 = v7 - v18;
  v17 = v7 - v18;
  MEMORY[0x28223BE20](v4);
  v28 = v7 - v18;
  v19 = v7 - v18;
  v42 = v7 - v18;
  v41 = v5;
  v35 = v5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0);
  v20 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37310);
  v21 = v25;
  v26 = sub_214B1AC20();
  v22 = v26;
  v27 = sub_214C2935C();
  sub_214CCE9D4();
  v29 = sub_214C2A010();
  sub_214B061F0(v34, v31, v28);
  v32 = *(v30 + 8);
  v33 = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v34, v31);
  v40 = v34;
  v7[1] = v7;
  MEMORY[0x28223BE20](v7);
  v7[-2] = v10;
  sub_214CCE9D4();
  sub_214B061F0(v15, v11, v17);
  v32(v15, v11);
  v8 = *(v13 + 16);
  v7[2] = v13 + 16;
  v8(v15, v19, v11);
  v39[0] = v15;
  v8(v14, v17, v11);
  v39[1] = v14;
  v38[0] = v11;
  v38[1] = v11;
  v36 = v29;
  v37 = v29;
  sub_214C663A4(v39, 2uLL, v38, v9);
  v32(v14, v11);
  v32(v15, v11);
  v32(v17, v11);
  return (v32)(v19, v11);
}

uint64_t sub_214C261D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v12 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FE0);
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v18 = v22[8];
  v13 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v14 = v8 - v13;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v13);
  v16 = v8 - v15;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v15);
  v27 = v8 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v20 = v8 - v19;
  v34 = v8 - v19;
  v33 = a1;
  sub_214C25B60(0, 2, v6);
  v21 = sub_214B1AB04();
  sub_214B061F0(v27, v24, v20);
  v25 = v22[1];
  v26 = v22 + 1;
  v25(v27, v24);
  v32 = v27;
  sub_214C25B60(0, 0, v16);
  sub_214B061F0(v16, v24, v27);
  v25(v16, v24);
  v9 = v22[2];
  v8[1] = v22 + 2;
  v9(v16, v20, v24);
  v10 = v31;
  v31[0] = v16;
  v9(v14, v27, v24);
  v31[1] = v14;
  v30[0] = v24;
  v30[1] = v24;
  v28 = v21;
  v29 = v21;
  sub_214C663A4(v10, 2uLL, v30, v11);
  v25(v14, v24);
  v25(v16, v24);
  v25(v27, v24);
  return (v25)(v20, v24);
}

uint64_t sub_214C26500@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v21 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0);
  v11 = *(v17 - 8);
  v12 = v17 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v15 = &v6 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v6);
  v16 = &v6 - v7;
  v21 = &v6 - v7;
  v8 = 0;
  v2 = MUICatchUpFeedbackType.title.getter(0);
  v10 = v20;
  v20[0] = v2;
  v20[1] = v3;
  v4 = sub_214A6BC90();
  v9 = MUICatchUpFeedbackType.imageName(selected:)(v4 & 1);
  sub_214B075A0();
  sub_214CCEFA4();
  v14 = sub_214B1AC20();
  sub_214B061F0(v15, v17, v16);
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v15, v17);
  (*(v11 + 16))(v15, v16, v17);
  sub_214B061F0(v15, v17, v13);
  v19(v15, v17);
  return (v19)(v16, v17);
}

uint64_t sub_214C266F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v12 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FE0);
  v22 = *(v24 - 8);
  v23 = v24 - 8;
  v18 = v22[8];
  v13 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v24);
  v14 = v8 - v13;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v13);
  v16 = v8 - v15;
  v17 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8 - v15);
  v27 = v8 - v17;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v20 = v8 - v19;
  v34 = v8 - v19;
  v33 = a1;
  sub_214C25B60(1, 2, v6);
  v21 = sub_214B1AB04();
  sub_214B061F0(v27, v24, v20);
  v25 = v22[1];
  v26 = v22 + 1;
  v25(v27, v24);
  v32 = v27;
  sub_214C25B60(1, 0, v16);
  sub_214B061F0(v16, v24, v27);
  v25(v16, v24);
  v9 = v22[2];
  v8[1] = v22 + 2;
  v9(v16, v20, v24);
  v10 = v31;
  v31[0] = v16;
  v9(v14, v27, v24);
  v31[1] = v14;
  v30[0] = v24;
  v30[1] = v24;
  v28 = v21;
  v29 = v21;
  sub_214C663A4(v10, 2uLL, v30, v11);
  v25(v14, v24);
  v25(v16, v24);
  v25(v27, v24);
  return (v25)(v20, v24);
}

uint64_t sub_214C26A28@<X0>(uint64_t a1@<X8>)
{
  v13 = a1;
  v21 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0);
  v11 = *(v17 - 8);
  v12 = v17 - 8;
  v6 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v15 = &v6 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v6 - v6);
  v16 = &v6 - v7;
  v21 = &v6 - v7;
  v8 = 1;
  v2 = MUICatchUpFeedbackType.title.getter(1);
  v10 = v20;
  v20[0] = v2;
  v20[1] = v3;
  v4 = sub_214A6BC90();
  v9 = MUICatchUpFeedbackType.imageName(selected:)(v4 & 1);
  sub_214B075A0();
  sub_214CCEFA4();
  v14 = sub_214B1AC20();
  sub_214B061F0(v15, v17, v16);
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v19(v15, v17);
  (*(v11 + 16))(v15, v16, v17);
  sub_214B061F0(v15, v17, v13);
  v19(v15, v17);
  return (v19)(v16, v17);
}

uint64_t sub_214C26C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for MUIHighlightedMessagesRowView();
  swift_getKeyPath();
  return sub_214CCE144();
}

uint64_t sub_214C26D08@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView() + 20);
  v2 = sub_214CCCF24();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_214C26DD4@<X0>(uint64_t a1@<X8>)
{
  v52 = &v268;
  v132 = a1;
  v270 = 0;
  v136 = &v268;
  v268 = 0u;
  v269 = 0u;
  v90 = 0;
  v100 = sub_214CCCF24();
  v54 = *(v100 - 8);
  v53 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v100);
  v103 = &v52 - v53;
  v270 = v1;
  v102 = *(v54 + 16);
  v101 = v54 + 16;
  v102(v2);
  v264 = sub_214CCEA64();
  v265 = v3;
  v266 = v4;
  v267 = v5;
  v56 = v264;
  v57 = v3;
  v55 = v4;
  v58 = v5;
  sub_214C26DAC();
  v6 = v71;
  v260 = v56;
  v261 = v57;
  v130 = 1;
  v262 = v55 & 1;
  v263 = v58;
  v110 = 0;
  v256 = sub_214CCE9E4();
  v257 = v7;
  v258 = v8;
  v259 = v9;
  v60 = v256;
  v61 = v7;
  v59 = v8;
  v62 = v9;
  sub_214B072EC(v56, v57, v55 & 1);

  nullsub_1(v10);
  v105 = sub_214C29848();
  v252 = v60;
  v253 = v61;
  v254 = v59 & 1 & v130;
  v255 = v62;
  v104 = &unk_2826E9938;
  v248 = sub_214CCEA04();
  v249 = v11;
  v250 = v12;
  v251 = v13;
  v67 = v248;
  v68 = v11;
  v69 = v12;
  v70 = v13;
  sub_214B072EC(v60, v61, v59 & 1);

  v88 = " ";
  v89 = 1;
  sub_214CCF614();
  sub_214CCE4B4();
  v244 = 0;
  v245 = 0;
  v246 = 0;
  v247 = v130 & 1;
  v240 = sub_214CCEA54();
  v241 = v14;
  v242 = v15;
  v243 = v16;
  v64 = v240;
  v65 = v14;
  v63 = v15;
  v66 = v16;
  v236 = v67;
  v237 = v68;
  v238 = v69 & 1 & v130;
  v239 = v70;
  v232 = v240;
  v233 = v14;
  v234 = v15 & 1 & v130;
  v235 = v16;
  v228 = sub_214CCEA24();
  v229 = v17;
  v230 = v18;
  v231 = v19;
  v84 = v228;
  v85 = v17;
  v86 = v18;
  v87 = v19;
  sub_214B072EC(v64, v65, v63 & 1);

  sub_214B072EC(v67, v68, v69 & 1);

  v99 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  v224 = sub_214C27958(*(v6 + *(v99 + 24)) & 1);
  v225 = v20;
  v226 = v21;
  v227 = v22;
  v73 = v224;
  v74 = v20;
  v72 = v21;
  v75 = v22;
  sub_214C26DAC();
  v23 = v71;
  v220 = v73;
  v221 = v74;
  v222 = v72 & 1 & v130;
  v223 = v75;
  v216 = sub_214CCE9E4();
  v217 = v24;
  v218 = v25;
  v219 = v26;
  v77 = v216;
  v78 = v24;
  v76 = v25;
  v79 = v26;
  sub_214B072EC(v73, v74, v72 & 1);

  v215 = sub_214C22D88();
  v211 = v77;
  v212 = v78;
  v213 = v76 & 1 & v130;
  v214 = v79;
  v207 = sub_214CCEA04();
  v208 = v27;
  v209 = v28;
  v210 = v29;
  v81 = v207;
  v82 = v27;
  v80 = v28;
  v83 = v29;
  sub_214B072EC(v77, v78, v76 & 1);

  v203 = v84;
  v204 = v85;
  v205 = v86 & 1 & v130;
  v206 = v87;
  v199 = v81;
  v200 = v82;
  v201 = v80 & 1 & v130;
  v202 = v83;
  v195 = sub_214CCEA24();
  v196 = v30;
  v197 = v31;
  v198 = v32;
  v95 = v195;
  v96 = v30;
  v97 = v31;
  v98 = v32;
  sub_214B072EC(v81, v82, v80 & 1);

  sub_214B072EC(v84, v85, v86 & 1);

  sub_214CCF614();
  sub_214CCE4B4();
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v194 = v130 & 1;
  v187 = sub_214CCEA54();
  v188 = v33;
  v189 = v34;
  v190 = v35;
  v92 = v187;
  v93 = v33;
  v91 = v34;
  v94 = v35;
  v183 = v95;
  v184 = v96;
  v185 = v97 & 1 & v130;
  v186 = v98;
  v179 = v187;
  v180 = v33;
  v181 = v34 & 1 & v130;
  v182 = v35;
  v175 = sub_214CCEA24();
  v176 = v36;
  v177 = v37;
  v178 = v38;
  v119 = v175;
  v120 = v36;
  v121 = v37;
  v122 = v38;
  sub_214B072EC(v92, v93, v91 & 1);

  sub_214B072EC(v95, v96, v97 & 1);

  (v102)(v103, v23 + *(v99 + 20), v100);
  v171 = sub_214CCEA64();
  v172 = v39;
  v173 = v40;
  v174 = v41;
  v107 = v171;
  v108 = v39;
  v106 = v40;
  v109 = v41;
  nullsub_1(v171);
  v167 = v107;
  v168 = v108;
  v169 = v106 & 1 & v130;
  v170 = v109;
  v163 = sub_214CCEA04();
  v164 = v42;
  v165 = v43;
  v166 = v44;
  v112 = v163;
  v113 = v42;
  v111 = v43;
  v114 = v44;
  sub_214B072EC(v107, v108, v106 & 1);

  sub_214CCE954();
  v159 = v112;
  v160 = v113;
  v161 = v111 & 1 & v130;
  v162 = v114;
  v155 = sub_214CCE9E4();
  v156 = v45;
  v157 = v46;
  v158 = v47;
  v116 = v155;
  v117 = v45;
  v115 = v46;
  v118 = v47;
  sub_214B072EC(v112, v113, v111 & 1);

  v151 = v119;
  v152 = v120;
  v153 = v121 & 1 & v130;
  v154 = v122;
  v147 = v116;
  v148 = v117;
  v149 = v115 & 1 & v130;
  v150 = v118;
  v143 = sub_214CCEA24();
  v144 = v48;
  v145 = v49;
  v146 = v50;
  v123 = v143;
  v124 = v48;
  v125 = v49;
  v126 = v50;
  sub_214B072EC(v116, v117, v115 & 1);

  sub_214B072EC(v119, v120, v121 & 1);

  v127 = v140;
  v140[0] = v123;
  v140[1] = v124;
  v141 = v125 & 1 & v130;
  v142 = v126;
  v133 = MEMORY[0x277CE0BD8];
  v134 = MEMORY[0x277CE0BC8];
  sub_214B061F0(v140, MEMORY[0x277CE0BD8], v136);
  sub_214B07618(v127);
  v128 = v268;
  v129 = v269;
  v131 = *(&v269 + 1);
  sub_214B0755C(v268, *(&v268 + 1), v269 & 1);

  v135 = &v137;
  v137 = v128;
  v138 = v129 & 1 & v130;
  v139 = v131;
  sub_214B061F0(&v137, v133, v132);
  sub_214B07618(v135);
  return sub_214B07618(v136);
}

uint64_t sub_214C27958(char a1)
{
  if (a1)
  {
    MEMORY[0x277D82BE0](@"text.line.2.summary");
    sub_214CCF564();
    sub_214CCEF54();
    MEMORY[0x277D82BD8](@"text.line.2.summary");
    v10 = sub_214CCEA84();
    v6 = v1;
    v7 = v2;
    sub_214CCF614();
    v5 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614();
    sub_214B1C228();
    sub_214CCCF54();

    MEMORY[0x277D82BD8](v5);

    sub_214B075A0();
    v8 = sub_214CCEA14();
    sub_214A61B48();
    sub_214B072EC(v10, v6, v7 & 1);

    return v8;
  }

  else
  {
    sub_214CCF614();
    sub_214CCE4B4();
    v3 = [objc_opt_self() mui_MailUIBundle];
    return sub_214CCEA54();
  }
}

uint64_t sub_214C27D20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v13 = a2;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v22 = sub_214CCE6E4();
  v20 = *(v22 - 8);
  v21 = v22 - 8;
  v14 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v23 = &v12 - v14;
  v15 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v14);
  v19 = &v12 - v15;
  v31 = &v12 - v15;
  v16 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v18 = &v12 - v16;
  v30 = a1;
  v17 = sub_214CCEEC4();
  v29 = v17;
  sub_214CCE414();
  (*(v20 + 16))(v19, v18, v22);
  sub_214CCE6D4();
  sub_214C298C4();
  v26 = sub_214CCF4A4();
  v24 = *(v20 + 8);
  v25 = v20 + 8;
  v24(v23, v22);
  if (v26)
  {
    v24(v19, v22);

    v27 = v17;
  }

  else
  {
    v24(v19, v22);
    v28 = sub_214CCEEE4();
  }

  v6 = sub_214CCE1C4();
  v7 = v22;
  v8 = v24;
  v9 = v6;
  v10 = v18;
  *v13 = v9;
  v8(v10, v7);
}

uint64_t sub_214C28054(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  v7 = *a1;
  MEMORY[0x277D82BE0](*a1);
  sub_214C3DC18(v7, a2, a3);
  MEMORY[0x277D82BD8](v7);
}

uint64_t sub_214C280F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v8 = a1;
  v4[2] = sub_214C29CE8;
  v4[1] = sub_214C29CF0;
  v21 = 0;
  v20 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34FF0);
  v9 = *(v15 - 8);
  v10 = v15 - 8;
  v6 = *(v9 + 64);
  v5 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](sub_214C29CE8);
  v13 = v4 - v5;
  v7 = v5;
  MEMORY[0x28223BE20](v2);
  v14 = v4 - v7;
  v21 = v4 - v7;
  v20 = v8;
  v19 = v8;
  v18 = v8;
  sub_214CCEF84();
  v12 = sub_214B1AC20();
  sub_214B061F0(v13, v15, v14);
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v13, v15);
  (*(v9 + 16))(v13, v14, v15);
  sub_214B061F0(v13, v15, v11);
  v17(v13, v15);
  return (v17)(v14, v15);
}

uint64_t sub_214C2830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  v26 = a1;
  v22 = MUICatchUpFeedbackFeature.title.getter(a1);
  v23 = v2;
  sub_214B075A0();
  v18 = sub_214CCEA74();
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v15[0] = v18;
  v15[1] = v3;
  v16 = v4 & 1;
  v17 = v5;
  v11 = MEMORY[0x277CE0BD8];
  sub_214B061F0(v15, MEMORY[0x277CE0BD8], &v24);
  sub_214B07618(v15);
  v7 = v24;
  v8 = v25;
  v9 = *(&v25 + 1);
  sub_214B0755C(v24, *(&v24 + 1), v25 & 1);

  v12 = v7;
  v13 = v8 & 1;
  v14 = v9;
  sub_214B061F0(&v12, v11, a2);
  sub_214B07618(&v12);
  return sub_214B07618(&v24);
}

void *sub_214C28470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8[0] = 0;
  v8[1] = a1;
  MUICatchUpFeedbackFeature.imageName.getter(a1);
  v7 = sub_214CCEF54();
  v5 = MEMORY[0x277CE1088];
  sub_214B061F0(&v7, MEMORY[0x277CE1088], v8);
  sub_214A75F80();
  v3 = v8[0];

  v6 = v3;
  sub_214B061F0(&v6, v5, a2);
  sub_214A75F80();
  result = v8;
  sub_214A75F80();
  return result;
}

unint64_t sub_214C28520()
{
  v2 = qword_27CA372A0;
  if (!qword_27CA372A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37268);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C285A8(uint64_t a1)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372A8) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v13);
  }

  else
  {
  }

  v6 = type metadata accessor for MUIHighlightedMessagesAvatarView();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v13 + *(v6 + 28)));

  v7 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(v7);
  v12 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B8) + 48);
  v9 = sub_214CCCF24();
  v8 = *(*(v9 - 8) + 8);
  v8(v12);
  v3 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  (v8)(v12 + *(v3 + 20), v9);
  v10 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0) + 36);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v4 = sub_214CCEF74();
  (*(*(v4 - 8) + 8))(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8);

  return a1;
}

uint64_t type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView()
{
  v1 = qword_27CA37360;
  if (!qword_27CA37360)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_214C2893C()
{
  v2 = qword_27CA372D0;
  if (!qword_27CA372D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37270);
    sub_214C28520();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C289E0()
{
  v2 = qword_27CA372D8;
  if (!qword_27CA372D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37278);
    sub_214C2893C();
    sub_214C1FAB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C28A88(uint64_t a1)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372A8) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v13);
  }

  else
  {
  }

  v6 = type metadata accessor for MUIHighlightedMessagesAvatarView();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v13 + *(v6 + 28)));

  v7 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(v7);
  v12 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B8) + 48);
  v9 = sub_214CCCF24();
  v8 = *(*(v9 - 8) + 8);
  v8(v12);
  v3 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  (v8)(v12 + *(v3 + 20), v9);
  v10 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0) + 36);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v4 = sub_214CCEF74();
  (*(*(v4 - 8) + 8))(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37278);

  return a1;
}

uint64_t sub_214C28DCC(uint64_t a1)
{
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372A8) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v15);
  }

  else
  {
  }

  v6 = type metadata accessor for MUIHighlightedMessagesAvatarView();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + v15 + *(v6 + 28)));

  v7 = a1 + v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0) + 36);
  v13 = sub_214CCE854();
  v14 = *(*(v13 - 8) + 8);
  v14(v7);
  v12 = a1 + v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B8) + 48);
  v9 = sub_214CCCF24();
  v8 = *(*(v9 - 8) + 8);
  v8(v12);
  v2 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  (v8)(v12 + *(v2 + 20), v9);
  v10 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0) + 36);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v3 = sub_214CCEF74();
  (*(*(v3 - 8) + 8))(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37278);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37280);
  (v14)(a1 + *(v4 + 36), v13);
  return a1;
}

unint64_t sub_214C2915C()
{
  v2 = qword_27CA372E8;
  if (!qword_27CA372E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37280);
    sub_214C289E0();
    sub_214B0B870();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C29204()
{
  v2 = qword_27CA372F0;
  if (!qword_27CA372F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA372E0);
    sub_214C292AC();
    sub_214C293E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C292AC()
{
  v2 = qword_27CA372F8;
  if (!qword_27CA372F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37300);
    sub_214C2935C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA372F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2935C()
{
  v2 = qword_27CA37308;
  if (!qword_27CA37308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37310);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37308);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C293E4()
{
  v2 = qword_27CA37318;
  if (!qword_27CA37318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37320);
    sub_214C29494();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37318);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C29494()
{
  v2 = qword_27CA37328;
  if (!qword_27CA37328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37330);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37328);
    return WitnessTable;
  }

  return v2;
}

void *sub_214C2951C(void *a1, void *a2)
{
  v5 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v5;
  v7 = a1[1];

  a2[1] = v7;
  v8 = *(type metadata accessor for MUIHighlightedMessagesRowView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE6E4();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v4 = *(a1 + v8);

    *(a2 + v8) = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

void *sub_214C2966C(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  v5 = *(type metadata accessor for MUIHighlightedMessagesRowView() + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE6E4();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v5, a1 + v5, *(*(v7 - 8) + 64));
  }

  return a2;
}

uint64_t sub_214C29794()
{
  v6 = *(type metadata accessor for MUIHighlightedMessagesRowView() - 8);
  v1 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v2 = (v1 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = *(v0 + v2);
  v4 = *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_214C28054((v0 + v1), v3, v4);
}

unint64_t sub_214C29848()
{
  v2 = qword_27CA37338;
  if (!qword_27CA37338)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37338);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C298C4()
{
  v2 = qword_27CA37340;
  if (!qword_27CA37340)
  {
    sub_214CCE6E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C299C8()
{
  v4 = type metadata accessor for MUIHighlightedMessage();
  if (v0 <= 0x3F)
  {
    v4 = type metadata accessor for MUIHighlightedMessagesViewModel();
    if (v1 <= 0x3F)
    {
      v4 = sub_214C29ACC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_214C29ACC()
{
  v4 = qword_27CA37358;
  if (!qword_27CA37358)
  {
    sub_214CCE6E4();
    v3 = sub_214CCE134();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_27CA37358);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214C29BB8()
{
  v2 = sub_214CCCF24();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_214C29D00(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37320);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37300);
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214C29E10(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37320);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37300);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_214C29F20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37320);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37300);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_214C2A010()
{
  v2 = qword_27CA37380;
  if (!qword_27CA37380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37378);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37380);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2A0A0()
{
  v2 = qword_27CA373A0;
  if (!qword_27CA373A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA372B0);
    sub_214C201CC();
    sub_214B0B870();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2A148(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v4 = type metadata accessor for MUIHighlightedMessagesAvatarView();

  swift_unknownObjectRelease();

  MEMORY[0x277D82BD8](*(a1 + *(v4 + 28)));

  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0) + 36);
  v2 = sub_214CCE854();
  (*(*(v2 - 8) + 8))(v5);
  return a1;
}

unint64_t sub_214C2A2D0()
{
  v2 = qword_27CA373A8;
  if (!qword_27CA373A8)
  {
    type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2A350(uint64_t a1)
{
  v4 = sub_214CCCF24();
  v3 = *(*(v4 - 8) + 8);
  v3(a1);
  v1 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  (v3)(a1 + *(v1 + 20), v4);
  return a1;
}

unint64_t sub_214C2A3EC()
{
  v2 = qword_27CA373B0;
  if (!qword_27CA373B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA372C0);
    sub_214C2A2D0();
    sub_214C22340();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2A494(uint64_t a1)
{
  v5 = sub_214CCCF24();
  v4 = *(*(v5 - 8) + 8);
  v4(a1);
  v1 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  (v4)(a1 + *(v1 + 20), v5);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v2 = sub_214CCEF74();
  (*(*(v2 - 8) + 8))(v6 + v7);
  return a1;
}

unint64_t sub_214C2A5C0()
{
  v2 = qword_27CA373B8;
  if (!qword_27CA373B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA372C8);
    sub_214C2A3EC();
    sub_214B0B47C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2A668(uint64_t a1)
{
  v5 = sub_214CCCF24();
  v4 = *(*(v5 - 8) + 8);
  v4(a1);
  v1 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  (v4)(a1 + *(v1 + 20), v5);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0) + 36);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v2 = sub_214CCEF74();
  (*(*(v2 - 8) + 8))(v6 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8);

  return a1;
}

unint64_t sub_214C2A7D0()
{
  v2 = qword_27CA373C0;
  if (!qword_27CA373C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37388);
    sub_214C2A5C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2A874()
{
  v2 = qword_27CA373C8;
  if (!qword_27CA373C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37390);
    sub_214C2A7D0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2A918()
{
  v2 = qword_27CA373D0;
  if (!qword_27CA373D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37398);
    sub_214C2A874();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373D0);
    return WitnessTable;
  }

  return v2;
}

void *sub_214C2A9BC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_214CCE514();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v21 = *a1;

    *a2 = v21;
  }

  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for MUIHighlightedMessagesAvatarView();
  v8 = (a2 + v16[5]);
  v7 = (a1 + v16[5]);
  v6 = *v7;

  *v8 = v6;
  v9 = v7[1];

  v8[1] = v9;
  v12 = (a2 + v16[6]);
  v11 = (a1 + v16[6]);
  v10 = *v11;
  swift_unknownObjectRetain();
  *v12 = v10;
  v13 = v11[1];

  v12[1] = v13;
  v14 = v16[7];
  v15 = *(a1 + v14);
  MEMORY[0x277D82BE0](v15);
  *(a2 + v14) = v15;
  *(a2 + v16[8]) = *(a1 + v16[8]);
  v17 = v16[9];
  v18 = *(a1 + v17);

  *(a2 + v17) = v18;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372B0);
  v20 = a2 + *(v3 + 36);
  v19 = a1 + *(v3 + 36);
  v4 = sub_214CCE854();
  (*(*(v4 - 8) + 16))(v20, v19);
  return a2;
}

uint64_t sub_214C2AC44(uint64_t a1, uint64_t a2)
{
  v7 = sub_214CCCF24();
  v8 = *(*(v7 - 8) + 16);
  v8(a2, a1);
  v9 = type metadata accessor for MUIHighlightedMessagesRowView.SenderAndTopLineView();
  (v8)(a2 + *(v9 + 20), a1 + *(v9 + 20), v7);
  *(a2 + *(v9 + 24)) = *(a1 + *(v9 + 24));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C0) + 36);
  v11 = *(a1 + v10);

  *(a2 + v10) = v11;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37220) + 28);
  v2 = sub_214CCEF74();
  (*(*(v2 - 8) + 16))(a2 + v10 + v12, a1 + v10 + v12);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA372C8) + 36);
  v14 = *(a1 + v13);

  *(a2 + v13) = v14;
  v15 = *(a1 + v13 + 8);

  *(a2 + v13 + 8) = v15;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37388);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37390);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37398);
  memcpy((a2 + *(v5 + 36)), (a1 + *(v5 + 36)), 0x29uLL);
  return a2;
}

uint64_t sub_214C2AF00@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  type metadata accessor for MUIHighlightedMessagesViewModel();
  sub_214C2B5B8();
  v9 = sub_214CCE154();
  v5 = v1;

  __b[0] = v9;
  LOBYTE(__b[1]) = v5 & 1;
  swift_getKeyPath();
  sub_214CCE144();
  sub_214C2B1A8(v11, v12 & 1);
  __b[2] = v11;
  LOBYTE(__b[3]) = v12 & 1;
  v10 = sub_214C2BAEC();
  v6 = v2;
  v8 = v3;

  MEMORY[0x277D82BE0](v8);
  __b[4] = v10;
  LOBYTE(__b[5]) = v6 & 1;
  __b[6] = v8;
  sub_214C2B638(__b);
  result = v9;
  *a1 = v9;
  *(a1 + 8) = v5 & 1;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12 & 1;
  *(a1 + 32) = v10;
  *(a1 + 40) = v6 & 1;
  *(a1 + 48) = v8;
  return result;
}

uint64_t sub_214C2B0B0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);

  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  v5 = a1[2];
  v6 = *(a1 + 24);
  sub_214C2B1A8(v5, v6 & 1);
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;
  v8 = a1[4];
  v9 = *(a1 + 40);

  *(a2 + 32) = v8;
  *(a2 + 40) = v9 & 1;
  v10 = a1[6];
  MEMORY[0x277D82BE0](v10);
  result = a2;
  *(a2 + 48) = v10;
  return result;
}

uint64_t sub_214C2B1A8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_214C2B1DC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v15 = MEMORY[0x277CE0C50];
  v32 = 0;
  v31 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373D8);
  v16 = *(v22 - 8);
  v17 = v22 - 8;
  v4 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v20 = &v4 - v4;
  v5 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v4);
  v21 = &v4 - v5;
  v32 = &v4 - v5;
  v31 = v1;
  v6 = __dst;
  v7 = 56;
  memcpy(__dst, (v1 + 8), sizeof(__dst));
  sub_214C2B0B0(__dst, v30);
  v10 = v29;
  memcpy(v29, v6, v7);
  v9 = *v8;

  v12 = type metadata accessor for MUIHighlightedMessagesViewModel();
  v13 = sub_214C2B53C();
  v14 = sub_214C2B5B8();
  v11 = &unk_2826E9A58;
  sub_214CCEB54();

  sub_214C2B638(v10);
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v20, v22, v21);
  v24 = *(v16 + 8);
  v23 = v16 + 8;
  v24(v20, v22);
  (*(v16 + 16))(v20, v21, v22);
  sub_214B061F0(v20, v22, v18);
  v24(v20, v22);
  return (v24)(v21, v22);
}

unint64_t sub_214C2B53C()
{
  v2 = qword_27CA373E0;
  if (!qword_27CA373E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA373E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2B5B8()
{
  v2 = qword_280C7D950;
  if (!qword_280C7D950)
  {
    type metadata accessor for MUIHighlightedMessagesViewModel();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2B638(uint64_t a1)
{

  sub_214C2B698(*(a1 + 16), *(a1 + 24) & 1);

  MEMORY[0x277D82BD8](*(a1 + 48));
  return a1;
}

uint64_t sub_214C2B698(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_214C2B6CC()
{
  v3 = 0;
  memcpy(__dst, (v0 + 8), sizeof(__dst));
  sub_214C2B0B0(__dst, v2);
  sub_214C2B72C();
  return sub_214C2B638(__dst);
}

double sub_214C2B72C()
{
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);

  MEMORY[0x277D82BE0](v4);
  sub_214C2E5EC(v3, v2 & 1, v4);

  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

void *sub_214C2B7C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_214C2AF00(&v5);
  __src[0] = a1;
  __src[1] = v5;
  LOBYTE(__src[2]) = v6 & 1;
  __src[3] = v7;
  LOBYTE(__src[4]) = v8 & 1;
  __src[5] = v9;
  LOBYTE(__src[6]) = v10 & 1;
  __src[7] = v11;
  return memcpy(a2, __src, 0x40uLL);
}

uint64_t sub_214C2B8AC()
{
  v4 = *v0;
  v5 = *(v0 + 8);
  sub_214C2E668(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373E8);
  sub_214CCE124();
  sub_214A75F80();
  return v2;
}

uint64_t sub_214C2B934()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_214C2B970(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

double sub_214C2B9C0()
{
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  sub_214C2E6BC(&v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373F0);
  sub_214CCE124();
  sub_214C2E714(&v4);
  return v2;
}

uint64_t sub_214C2BA48()
{
  v2 = *(v0 + 16);
  sub_214C2B1A8(v2, *(v0 + 24) & 1);
  return v2;
}

uint64_t sub_214C2BA88(uint64_t a1, char a2)
{
  sub_214C2B1A8(a1, a2 & 1);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  sub_214C2B698(v3, v4 & 1);
  return sub_214C2B698(a1, a2 & 1);
}

uint64_t sub_214C2BAEC()
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  type metadata accessor for MUIHighlightedMessagesViewModel();
  sub_214C2B5B8();
  v2 = sub_214CCE154();
  v3 = v0;

  v5 = v2;
  LOBYTE(v6) = v3 & 1;
  v4 = sub_214C161F0();
  MEMORY[0x277D82BE0](v4);
  v7 = v4;
  sub_214C2F374(&v5);
  return v2;
}

uint64_t sub_214C2BBBC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);

  MEMORY[0x277D82BE0](v3);
  return v2;
}

uint64_t sub_214C2BC30@<X0>(uint64_t a1@<X8>)
{
  v33 = v69;
  v56 = a1;
  v29 = sub_214C2F164;
  memset(&v70[16], 0, 24);
  v21 = 0;
  v46 = sub_214CCE7B4();
  v14 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v49 = &v13 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373F8);
  v15 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34);
  v40 = &v13 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37400);
  v16 = (*(*(v45 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v50 = &v13 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37408);
  v17 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v55 = &v13 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37410);
  v18 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v59 = &v13 - v18;
  v19 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v13 - v18);
  v3 = v33;
  v60 = &v13 - v19;
  *(v33 + 7) = &v13 - v19;
  *(v3 + 6) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418);
  v4 = swift_allocBox();
  v5 = v33;
  v61 = v4;
  v22 = v6;
  *(v33 + 5) = v6;
  v7 = *v1;
  v20 = &v76;
  *(v5 + 72) = v7;
  v77 = *(v1 + 8);
  sub_214C2E668(&v76, v70);
  *(v33 + 1) = *(v33 + 72);
  v69[16] = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373E8);
  sub_214CCE124();
  v24 = *v33;
  sub_214A75F80();
  v23 = type metadata accessor for MUIHighlightedMessagesViewModel();
  sub_214C2B5B8();
  sub_214CCF144();
  v31 = sub_214CCE534();
  v25 = sub_214C2C3B4(v61);
  v26 = v71;
  sub_214C3518C(v71);

  v27 = __dst;
  v42 = 80;
  memcpy(__dst, v26 + 5, sizeof(__dst));
  sub_214C21934(__dst, &v68);
  sub_214C14F3C(v26);
  v28 = *(v33 + 71);
  sub_214C219C8(v27);

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37420);
  sub_214C2F16C();
  sub_214CCF064();

  v8 = v32;
  v9 = v33;
  *(v33 + 29) = *(v32 + 32);
  *(v9 + 60) = *(v8 + 48);
  sub_214C2F1F4(v74, &v67);
  v10 = *(v33 + 29);
  v39 = &v65;
  v65 = v10;
  v66 = *(v33 + 60);
  v36 = sub_214C2F270();
  v37 = sub_214C2F2F8();
  v35 = &unk_2826E9AE0;
  v38 = sub_214C2E5C4();
  sub_214CCEAD4();
  sub_214C2F374(v39);
  sub_214A9F0F0(v40);
  v41 = sub_214C2C3B4(v61);
  v43 = v72;
  sub_214C3518C(v72);

  v44 = v73;
  memcpy(v73, v43 + 5, v42);
  sub_214C21934(v73, &v64);
  sub_214C14F3C(v43);
  sub_214C333A4(v49);
  sub_214C219C8(v44);
  v47 = sub_214C2F3B4();
  v48 = sub_214C2F4E4();
  v63 = sub_214B07A90();
  v62 = v63;
  sub_214CCEE04();
  sub_214C2F564(v49);
  sub_214A9F244(v50);
  v54 = *MEMORY[0x277D258E0];
  MEMORY[0x277D82BE0](v54);
  v52 = sub_214CCF564();
  v53 = v11;
  sub_214C2F5E0();
  sub_214CCECC4();

  MEMORY[0x277D82BD8](v54);
  sub_214A9F3DC(v55);
  v58 = sub_214C2F710();
  sub_214B061F0(v59, v57, v60);
  sub_214A9F5F4(v59);
  sub_214A9F854(v60, v59);
  sub_214B061F0(v59, v57, v56);
  sub_214A9F5F4(v59);
  sub_214A9F5F4(v60);
}

uint64_t sub_214C2C294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a2;
  v4 = a1;
  v11 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418);
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v2 = &v4 - v5;
  v9 = &v4 - v5;
  v11 = swift_projectBox();
  (*(v7 + 16))(v2, v11, v10);
  sub_214CCF134();
  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_214C2C3B4(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v1 = &v3 - v5;
  v8 = &v3 - v5;
  v12 = swift_projectBox();
  (*(v6 + 16))(v1, v12, v9);
  sub_214CCF114();
  v10 = v11;
  (*(v6 + 8))(v8, v9);
  return v10;
}

uint64_t sub_214C2C4DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418);
  swift_projectBox();

  swift_beginAccess();
  sub_214CCF124();
  swift_endAccess();
}

uint64_t sub_214C2C594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v52 = a1;
  v33 = MEMORY[0x277CDEAE8];
  v49 = sub_214C304D4;
  v64 = MEMORY[0x277CDEF88];
  v72 = MEMORY[0x277CDEB28];
  v78 = MEMORY[0x277CDEC30];
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v20 = 0;
  v61 = sub_214CCE284();
  v54 = *(v61 - 8);
  v55 = v61 - 8;
  v11 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61);
  v56 = &v10 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418);
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v12 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v44 = &v10 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374D8);
  v57 = *(v60 - 8);
  v58 = v60 - 8;
  v13 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v59 = &v10 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374E0);
  v65 = *(v68 - 8);
  v66 = v68 - 8;
  v14 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v68);
  v67 = &v10 - v14;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374E8);
  v15 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70);
  v69 = &v10 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374F0);
  v73 = *(v76 - 8);
  v74 = v76 - 8;
  v16 = (*(v73 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v75 = &v10 - v16;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37460);
  v80 = *(v89 - 8);
  v81 = v89 - 8;
  v17 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v87 = &v10 - v17;
  v18 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v92 = &v10 - v18;
  v101 = &v10 - v18;
  v37 = sub_214CCE504();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v19 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v36 = &v10 - v19;
  v29 = sub_214CCE834();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v21 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20);
  v28 = &v10 - v21;
  v31 = type metadata accessor for MUIHighlightedMessagesHeaderView();
  v22 = (*(*(v31 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v4 = (&v10 - v22);
  v30 = &v10 - v22;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37448);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v23 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v41);
  v40 = &v10 - v23;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37450);
  v24 = (*(*(v82 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v88 = &v10 - v24;
  v25 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v93 = &v10 - v25;
  v100 = &v10 - v25;
  v99 = swift_projectBox();
  v7 = sub_214C2C3B4(v52);
  sub_214C20DDC(v7, v4);
  sub_214CCE824();
  v32 = sub_214C3029C();
  sub_214CCEC64();
  (*(v26 + 8))(v28, v29);
  sub_214C3031C(v30);
  sub_214CCE4F4();
  v98[6] = v31;
  v98[7] = v32;
  v79 = 1;
  swift_getOpaqueTypeConformance2();
  sub_214CCECA4();
  v8 = v44;
  (*(v34 + 8))(v36, v37);
  (*(v38 + 8))(v40, v41);
  v83 = sub_214C303E4();
  sub_214B061F0(v88, v82, v93);
  sub_214A9FD90(v88);
  sub_214C2C294(v52, v8);
  KeyPath = swift_getKeyPath();
  sub_214CCF154();
  v46 = v98[3];
  v47 = v98[4];
  v48 = v98[5];
  (*(v42 + 8))(v44, v45);
  v51 = v98;
  v98[0] = v46;
  v98[1] = v47;
  v98[2] = v48;

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37508);
  sub_214C304DC();
  sub_214CCE9C4();

  sub_214C2E5AC();
  v62 = sub_214C30564();
  v63 = MEMORY[0x277CDD980];
  sub_214CCEE34();
  (*(v54 + 8))(v56, v61);
  (*(v57 + 8))(v59, v60);
  v97[6] = v60;
  v97[7] = v61;
  v97[8] = v62;
  v97[9] = v63;
  swift_getOpaqueTypeConformance2();
  sub_214CCEE14();
  (*(v65 + 8))(v67, v68);
  v71 = sub_214C305EC();
  sub_214CCEC74();
  sub_214A9FE84(v69);
  v97[4] = v70;
  v97[5] = v71;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214CCECD4();
  (*(v73 + 8))(v75, v76);
  v97[2] = v76;
  v97[3] = OpaqueTypeConformance2;
  v84 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v87, v89, v92);
  v91 = *(v80 + 8);
  v90 = v80 + 8;
  v91(v87, v89);
  sub_214A9FEEC(v93, v88);
  v86 = v97;
  v97[0] = v88;
  (*(v80 + 16))(v87, v92, v89);
  v97[1] = v87;
  v96[0] = v82;
  v96[1] = v89;
  v94 = v83;
  v95 = v84;
  sub_214C663A4(v86, 2uLL, v96, v85);
  v91(v87, v89);
  sub_214A9FD90(v88);
  v91(v92, v89);
  return sub_214A9FD90(v93);
}

uint64_t sub_214C2D3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v33 = a1;
  v34 = sub_214C30704;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v55 = 0;
  v53 = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37528);
  v43 = *(v46 - 8);
  v44 = v46 - 8;
  v27 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v46);
  v45 = &v8 - v27;
  v28 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v8 - v27);
  v41 = &v8 - v28;
  v66 = &v8 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418);
  v65 = swift_projectBox();
  v29 = sub_214C2C3B4(v33);
  v30 = sub_214C40804();

  v49 = v30 > 0;
  v64 = v30 > 0;
  v31 = sub_214C2C3B4(v33);
  v32 = sub_214C407A0();

  v40 = &v63;
  v63 = v32;

  v3 = swift_allocObject();
  v4 = v49;
  v35 = v3;
  *(v3 + 16) = v33;
  *(v3 + 24) = v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37530);
  v38 = sub_214C30714();
  v39 = sub_214C3079C();
  sub_214C30A8C();
  sub_214CCF0E4();
  v42 = sub_214C30B0C();
  sub_214B061F0(v45, v46, v41);
  v47 = *(v43 + 8);
  v48 = v43 + 8;
  v47(v45, v46);
  if (v49)
  {
    v5 = sub_214C2C3B4(v33);
    v6 = nullsub_1(v5);
    v15 = &v54;
    v54 = v6;
    v20 = sub_214C30BA4();
    v23 = &v55;
    v19 = &unk_2826E98C0;
    sub_214B061F0(v15, &unk_2826E98C0, &v55);
    sub_214A75F80();
    v16 = v55;

    v17 = &v52;
    v52 = v16;
    v22 = &v53;
    sub_214B061F0(&v52, v19, &v53);
    sub_214A75F80();
    v18 = v53;

    v21 = &v50;
    v50 = v18;
    sub_214C66600(&v50, v19, &v51);
    sub_214A75F80();
    v24 = v51;

    v62 = v24;
    sub_214A75F80();
    sub_214A75F80();
    v25 = v24;
  }

  else
  {
    v13 = &v60;
    v60 = 0;
    sub_214C30BA4();
    sub_214C66600(v13, &unk_2826E98C0, &v61);
    v14 = v61;

    v62 = v14;
    v25 = v14;
  }

  v8 = v25;
  (*(v43 + 16))(v45, v41, v46);
  v11 = v59;
  v59[0] = v45;
  v12 = &v58;
  v58 = v8;
  v59[1] = &v58;
  v9 = v57;
  v57[0] = v46;
  v57[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37588);
  v10 = v56;
  v56[0] = v42;
  v56[1] = sub_214C30C1C();
  sub_214C663A4(v11, 2uLL, v9, v26);
  sub_214A75F80();
  v47(v45, v46);
  sub_214A75F80();
  return (v47)(v41, v46);
}

uint64_t sub_214C2D9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v65 = a1;
  v74 = a2;
  v73 = a3;
  v36 = MEMORY[0x277CDEAE8];
  v37 = MEMORY[0x277CDE8F8];
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v91 = 0;
  v90 = 0;
  v43 = 0;
  v38 = sub_214CCE6E4();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v42 = v17 - v41;
  v44 = sub_214CCE834();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43);
  v48 = v17 - v47;
  v49 = type metadata accessor for MUIHighlightedMessagesRowView();
  v50 = (*(*(v49 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v51 = v17 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37598);
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v56 = v17 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37548);
  v58 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v57);
  v59 = v17 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA375A0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v64 = v17 - v63;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37530);
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v68 = v17 - v67;
  v69 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v70 = v17 - v69;
  v71 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v72 = v17 - v71;
  v97 = v17 - v71;
  v75 = *v8;
  v96 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37418);
  v95 = swift_projectBox();
  v94 = v73 & 1;
  v76 = sub_214C2C3B4(v74);
  v77 = sub_214C3CD0C();

  v9 = MUIHighlightedMessage.id.getter();
  v92 = v77;
  v93 = v9;
  if (v77)
  {
    v78 = v77;
    if (v93)
    {
      v34 = v78 == v93;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v93)
  {
LABEL_9:
    v34 = 0;
    goto LABEL_7;
  }

  v34 = 1;
LABEL_7:
  v33 = v34;
  v91 = v34;
  MEMORY[0x277D82BE0](v75);

  if (v73)
  {
    v26 = 0;
    goto LABEL_20;
  }

  MEMORY[0x277D82BE0](v75);
  MEMORY[0x277D82BE0](v75);
  v29 = sub_214C2C3B4(v74);
  v31 = sub_214C407A0();

  v85 = v31;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  sub_214C30D90();
  sub_214CCF434();
  v32 = v84;

  MEMORY[0x277D82BE0](v32);
  v82 = v75;
  v83 = v32;
  if (!v75)
  {
    if (!v83)
    {
      sub_214A671E8(&v82);
      v28 = 1;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  sub_214A671A8(&v82, &v81);
  if (!v83)
  {
    MEMORY[0x277D82BD8](v81);
LABEL_18:
    sub_214A68120(&v82);
    v28 = 0;
    goto LABEL_17;
  }

  v80 = v81;
  v79 = v83;
  type metadata accessor for MUIHighlightedMessage();
  v27 = sub_214CCFD64();
  MEMORY[0x277D82BD8](v79);
  MEMORY[0x277D82BD8](v80);
  sub_214A671E8(&v82);
  v28 = v27;
LABEL_17:
  v25 = v28;
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v75);
  v26 = v25;
LABEL_20:
  v10 = v51;
  v22 = v26;
  MEMORY[0x277D82BD8](v75);

  v90 = v22 & 1;
  MEMORY[0x277D82BE0](v75);
  v11 = sub_214C2C3B4(v74);
  sub_214C26C38(v75, v11, v10);
  sub_214CCE824();
  v23 = sub_214C30984();
  sub_214CCEC64();
  (*(v45 + 8))(v48, v44);
  sub_214C30CB4(v51);
  KeyPath = swift_getKeyPath();
  if (v33)
  {
    sub_214CCE6D4();
  }

  else
  {
    sub_214CCE6C4();
  }

  v88 = v49;
  v89 = v23;
  swift_getOpaqueTypeConformance2();
  sub_214CCEB64();
  (*(v39 + 8))(v42, v38);

  (*(v53 + 8))(v56, v52);
  if (v22)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  v17[3] = v21;
  v17[2] = sub_214CCE194();
  v18 = sub_214C30894();
  sub_214CCEC24();
  sub_214AA003C(v59);
  sub_214CCE044();
  v19 = v98;
  v98[0] = v12;
  v98[1] = v13;
  v98[2] = v14;
  v98[3] = v15;
  v99 = 0;
  v86 = v57;
  v87 = v18;
  swift_getOpaqueTypeConformance2();
  sub_214CCEBA4();
  (*(v61 + 8))(v64, v60);
  v20 = sub_214C3079C();
  sub_214B061F0(v70, v66, v72);
  sub_214AA0130(v70);
  sub_214AA0198(v72, v68);
  sub_214B061F0(v68, v66, v35);
  sub_214AA0130(v68);
  return sub_214AA0130(v72);
}

double sub_214C2E5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x277D82BE0](a3);
  sub_214BD61B0();
  *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
  return result;
}

uint64_t sub_214C2E668(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);

  result = a2;
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_214C2E6BC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  sub_214C2B1A8(*a1, v4 & 1);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_214C2E794()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373E8);
  sub_214CCE124();

  return v1;
}

uint64_t *sub_214C2E8AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = 0;
  v20 = 0;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v21 = a1;
  v22 = a2 & 1;
  v23 = a3;

  MEMORY[0x277D82BE0](a3);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2 & 1;
  *(v12 + 32) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374A8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA374B0);
  v11 = sub_214C2F7F0();
  v4 = sub_214C2F894();
  v18[2] = v10;
  v18[3] = MEMORY[0x277D85048];
  v18[4] = v11;
  v18[5] = v4;
  swift_getOpaqueTypeConformance2();
  v18[0] = sub_214CCE244();
  v18[1] = v5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374C8);
  sub_214C2F90C();
  sub_214B061F0(v18, v16, &v19);
  sub_214AA8B50();
  v13 = v19;
  v14 = v20;

  v17[0] = v13;
  v17[1] = v14;
  sub_214B061F0(v17, v16, a4);
  sub_214AA8B50();
  result = &v19;
  sub_214AA8B50();
  return result;
}