uint64_t sub_214C2EAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v22 = a1;
  v23 = sub_214C301F0;
  v32 = sub_214C301F0;
  v40 = MEMORY[0x277CE0E40];
  v61 = 0;
  v60 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v28 = a2;
  v29 = a3;
  v31 = a4;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374A8);
  v41 = *(v47 - 8);
  v42 = v47 - 8;
  v21 = *(v41 + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v45 = &v19 - v20;
  MEMORY[0x28223BE20](v5);
  v46 = &v19 - v6;
  v61 = &v19 - v6;
  v60 = v22;
  v57 = v28;
  v30 = 1;
  LOBYTE(v58) = v7 & 1;
  v59 = v8;
  MEMORY[0x277D82BE0](v8);
  v25 = v56;
  v56[0] = v31;

  MEMORY[0x277D82BE0](v31);
  v26 = 40;
  v27 = 7;
  v9 = swift_allocObject();
  v10 = v29;
  v11 = v30;
  v12 = v31;
  *(v9 + 16) = v28;
  *(v9 + 24) = v10 & 1 & v11;
  *(v9 + 32) = v12;
  v24 = v9;
  sub_214C163EC();
  sub_214CCEDA4();
  sub_214A6B584(v23);
  sub_214A671E8(v25);
  v35 = v55;
  v55[0] = v56[1];
  v55[1] = v56[2];
  v55[2] = v56[3];
  v55[3] = v56[4];
  v55[4] = v56[5];
  sub_214CCE1D4();
  v33 = &v54;
  v54 = v13;

  MEMORY[0x277D82BE0](v31);
  v14 = swift_allocObject();
  v15 = v29;
  v16 = v30;
  v17 = v31;
  v34 = v14;
  *(v14 + 16) = v28;
  *(v14 + 24) = v15 & 1 & v16;
  *(v14 + 32) = v17;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA374B0);
  v38 = sub_214C2F7F0();
  v39 = sub_214C2F894();
  v37 = MEMORY[0x277D85048];
  sub_214B28CB0();
  sub_214CCEDC4();

  sub_214C30228(v35);
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v53 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_214B061F0(v45, v47, v46);
  v49 = *(v41 + 8);
  v48 = v41 + 8;
  v49(v45, v47);
  (*(v41 + 16))(v45, v46, v47);
  sub_214B061F0(v45, v47, v43);
  v49(v45, v47);
  return (v49)(v46, v47);
}

uint64_t sub_214C2F050()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA373E8);
  sub_214CCE124();

  sub_214C3B62C();
}

unint64_t sub_214C2F16C()
{
  v2 = qword_27CA37428;
  if (!qword_27CA37428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37420);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37428);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2F1F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);

  *a2 = v4;
  *(a2 + 8) = v5 & 1;
  v6 = a1[2];
  MEMORY[0x277D82BE0](v6);
  result = a2;
  *(a2 + 16) = v6;
  return result;
}

unint64_t sub_214C2F270()
{
  v2 = qword_27CA37430;
  if (!qword_27CA37430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA373F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2F2F8()
{
  v2 = qword_27CA37438;
  if (!qword_27CA37438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37438);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2F374(uint64_t a1)
{

  MEMORY[0x277D82BD8](*(a1 + 16));
  return a1;
}

unint64_t sub_214C2F3B4()
{
  v2 = qword_27CA37468;
  if (!qword_27CA37468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37400);
    sub_214C2F270();
    sub_214C2F45C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2F45C()
{
  v2 = qword_27CA37470;
  if (!qword_27CA37470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37478);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37470);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2F4E4()
{
  v2 = qword_27CA37480;
  if (!qword_27CA37480)
  {
    sub_214CCE7B4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37480);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2F564(uint64_t a1)
{
  v3 = *(sub_214CCE7B4() + 20);
  v1 = sub_214CCE4D4();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_214C2F5E0()
{
  v2 = qword_27CA37488;
  if (!qword_27CA37488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37408);
    sub_214C2F3B4();
    sub_214C2F688();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37488);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2F688()
{
  v2 = qword_27CA37490;
  if (!qword_27CA37490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37498);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37490);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2F710()
{
  v2 = qword_27CA374A0;
  if (!qword_27CA374A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37410);
    sub_214C2F5E0();
    sub_214B0B870();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA374A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2F7F0()
{
  v2 = qword_27CA374B8;
  if (!qword_27CA374B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA374B0);
    sub_214C163EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA374B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2F894()
{
  v2 = qword_27CA374C0;
  if (!qword_27CA374C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA374C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C2F90C()
{
  v2 = qword_27CA374D0;
  if (!qword_27CA374D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA374C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA374D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C2F9DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 64))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
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

uint64_t sub_214C2FB1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_214C2FD40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 48)))
      {
        v3 = *(a1 + 48);
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

uint64_t sub_214C2FE58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_214C300F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v14 = sub_214CCE434();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v14);
  v13 = v8 - v9;
  (*(v11 + 16))(v8 - v9, v2);
  sub_214CCE3E4();
  v3 = v11;
  v4 = v13;
  v5 = v14;
  *v10 = v6;
  return (*(v3 + 8))(v4, v5);
}

void *sub_214C30228(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  if (a1[1])
  {
  }

  if (a1[3])
  {
  }

  return a1;
}

unint64_t sub_214C3029C()
{
  v2 = qword_27CA374F8;
  if (!qword_27CA374F8)
  {
    type metadata accessor for MUIHighlightedMessagesHeaderView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA374F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C3031C(uint64_t a1)
{

  v3 = *(type metadata accessor for MUIHighlightedMessagesHeaderView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36E70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE514();
    (*(*(v1 - 8) + 8))(a1 + v3);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_214C303E4()
{
  v2 = qword_27CA37500;
  if (!qword_27CA37500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37450);
    type metadata accessor for MUIHighlightedMessagesHeaderView();
    sub_214C3029C();
    swift_getOpaqueTypeConformance2();
    sub_214B0B870();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C304DC()
{
  v2 = qword_27CA37510;
  if (!qword_27CA37510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37508);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C30564()
{
  v2 = qword_27CA37518;
  if (!qword_27CA37518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA374D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37518);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C305EC()
{
  v2 = qword_27CA37520;
  if (!qword_27CA37520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA374E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA374D8);
    sub_214CCE284();
    sub_214C30564();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C30714()
{
  v2 = qword_27CA37538;
  if (!qword_27CA37538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37538);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C3079C()
{
  v2 = qword_27CA37540;
  if (!qword_27CA37540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37548);
    sub_214C30894();
    swift_getOpaqueTypeConformance2();
    sub_214C1FEA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C30894()
{
  v2 = qword_27CA37550;
  if (!qword_27CA37550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37548);
    type metadata accessor for MUIHighlightedMessagesRowView();
    sub_214C30984();
    swift_getOpaqueTypeConformance2();
    sub_214C30A04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37550);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C30984()
{
  v2 = qword_27CA37558;
  if (!qword_27CA37558)
  {
    type metadata accessor for MUIHighlightedMessagesRowView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37558);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C30A04()
{
  v2 = qword_27CA37560;
  if (!qword_27CA37560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37568);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37560);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C30A8C()
{
  v2 = qword_27CA37570;
  if (!qword_27CA37570)
  {
    type metadata accessor for MUIHighlightedMessage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C30B0C()
{
  v2 = qword_27CA37578;
  if (!qword_27CA37578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37528);
    sub_214C3079C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C30BA4()
{
  v2 = qword_27CA37580;
  if (!qword_27CA37580)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37580);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C30C1C()
{
  v2 = qword_27CA37590;
  if (!qword_27CA37590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37588);
    sub_214C30BA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37590);
    return WitnessTable;
  }

  return v2;
}

char *sub_214C30CB4(char *a1)
{
  MEMORY[0x277D82BD8](*a1);

  v3 = *(type metadata accessor for MUIHighlightedMessagesRowView() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_214CCE6E4();
    (*(*(v1 - 8) + 8))(&a1[v3]);
  }

  else
  {
  }

  return a1;
}

unint64_t sub_214C30D90()
{
  v2 = qword_27CA375A8;
  if (!qword_27CA375A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA375A8);
    return WitnessTable;
  }

  return v2;
}

id sub_214C30E18(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v20 = "Fatal error";
  v21 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v22 = "MailUI/MUIHighlightedMessagesViewControllerFactory.swift";
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v30 = 0;
  v23 = (*(*(sub_214CCE874() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v32 = &v17 - v23;
  v43 = v6;
  v42 = v7;
  v41 = v8;
  v40 = v9;
  v39 = v10;
  v38 = v5;
  type metadata accessor for MUIHighlightedMessagesViewModel();

  MEMORY[0x277D82BE0](v26);
  MEMORY[0x277D82BE0](v27);
  swift_unknownObjectRetain();
  v11 = sub_214C311AC();
  v29 = sub_214C33494(v24, v25, v26, v27, v30, v28, v11, v12, v13, v14);
  v37 = v29;

  v31 = v44;
  sub_214C2B7C8(v29, v44);
  type metadata accessor for HighlightedMessageViewController();
  sub_214C31238(v31, v36);
  v33 = sub_214C31348(v31);
  v35 = v33;
  MEMORY[0x277D82BE0](v33);
  sub_214CCE864();
  sub_214CCE584();
  MEMORY[0x277D82BD8](v33);
  *&v15 = MEMORY[0x277D82BE0](v33).n128_u64[0];
  v34 = [v33 view];
  MEMORY[0x277D82BD8](v33);
  if (v34)
  {
    v19 = v34;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v18 = v19;
  v17 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor_];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  sub_214C31384(v44);

  return v33;
}

uint64_t type metadata accessor for HighlightedMessageViewController()
{
  v1 = qword_280C7D3A8;
  if (!qword_280C7D3A8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_214C31238(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];
  v5 = *(a1 + 16);

  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = a1[3];
  v7 = *(a1 + 32);
  sub_214C2B1A8(v6, v7 & 1);
  *(a2 + 24) = v6;
  *(a2 + 32) = v7 & 1;
  v9 = a1[5];
  v10 = *(a1 + 48);

  *(a2 + 40) = v9;
  *(a2 + 48) = v10 & 1;
  v11 = a1[7];
  MEMORY[0x277D82BE0](v11);
  result = a2;
  *(a2 + 56) = v11;
  return result;
}

uint64_t sub_214C31384(uint64_t a1)
{

  sub_214C2B698(*(a1 + 24), *(a1 + 32) & 1);

  MEMORY[0x277D82BD8](*(a1 + 56));
  return a1;
}

double sub_214C3154C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  __dst[8] = 0;
  v14 = 0;
  *&__dst[10] = a2;
  *&__dst[11] = a3;
  *&__dst[12] = a4;
  *&__dst[13] = a5;
  __dst[9] = a1;
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA375D0);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v6 = v12;
  }

  else
  {
    *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
    v6 = 0;
  }

  if (v6)
  {
    v14 = v6;
    sub_214CCE5C4();
    memcpy(__dst, v13, 0x40uLL);

    sub_214C39118(a2, a3, a4, a5);

    sub_214C31384(__dst);
    *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  return result;
}

double sub_214C3175C(uint64_t a1, uint64_t a2, void *a3)
{
  v13[8] = 0;
  v11 = 0;
  v13[11] = a1;
  v13[10] = a2;
  v13[9] = a3;
  MEMORY[0x277D82BE0](a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA375D0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v4 = v8;
  }

  else
  {
    *&result = MEMORY[0x277D82BD8](a3).n128_u64[0];
    v4 = 0;
  }

  if (v4)
  {
    v11 = v4;
    sub_214CCE5C4();
    memcpy(__dst, v10, sizeof(__dst));

    sub_214C339E4(a1);

    sub_214C31384(__dst);
    sub_214CCE5C4();
    memcpy(v13, v9, 0x40uLL);

    sub_214C34218(a2);

    sub_214C31384(v13);
    swift_getObjectType();
    [a3 shimmerIfRequired];
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  return result;
}

double sub_214C31A24(uint64_t a1)
{
  __dst[8] = 0;
  v6 = 0;
  __dst[9] = a1;
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA375D0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v2 = v4;
  }

  else
  {
    *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
    v2 = 0;
  }

  if (v2)
  {
    v6 = v2;
    sub_214CCE5C4();
    memcpy(__dst, v5, 0x40uLL);

    sub_214C34A38(0);

    sub_214C31384(__dst);
    *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  }

  return result;
}

void sub_214C31BBC(uint64_t a1)
{
  v6 = 0;
  v11 = 0;
  v12 = a1;
  v4 = [objc_opt_self() defaultCenter];
  v5 = *sub_214C33528();
  v1 = v5;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v3 = 0;
  [v4 postNotificationName:v5 object:{0, v2}];
  swift_unknownObjectRelease();
}

id MUIHighlightedMessagesViewControllerFactory.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = MUIHighlightedMessagesViewControllerFactory;
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

uint64_t sub_214C31EB0()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA375B0);
  __swift_project_value_buffer(v1, qword_27CA375B0);
  type metadata accessor for HighlightedMessageViewController();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_214C31F18()
{
  if (qword_27CA34070 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA375B0);
}

uint64_t sub_214C31F84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C31F18();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void sub_214C31FF0()
{
  v4 = (v0 + qword_27CA375D8);
  swift_beginAccess();
  v6 = *v4;
  swift_endAccess();
  (MEMORY[0x277D82BE0])();
  if (v6)
  {
    v1 = (v5 + qword_27CA375E0);
    swift_beginAccess();
    v2 = *v1;
    swift_endAccess();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  (MEMORY[0x277D82BD8])();
  if (v3)
  {
    sub_214C32104();
  }
}

uint64_t sub_214C32104()
{
  v60 = v73;
  v83 = 0;
  v55 = 0;
  v56 = sub_214CCDA74();
  v57 = *(v56 - 8);
  v58 = v57;
  MEMORY[0x28223BE20](v56 - 8);
  v59 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v0;
  v2 = v0;
  sub_214CCE5C4();
  v3 = v60;
  v4 = v79;
  v5 = v80;
  v6 = v81;
  v60[21] = v82;
  v3[20] = v6;
  v3[19] = v5;
  v3[18] = v4;
  v62 = v85[0];

  v63 = sub_214C39564();

  sub_214C31384(v85);
  if (v63)
  {
    v52 = &v61[qword_27CA375D8];
    v53 = v75;
    swift_beginAccess();
    v54 = *v52;
    swift_endAccess();
    if (v54 == 1 && (sub_214C327A4() & 1) != 0)
    {
      v7 = v61;
      v47 = &v61[qword_27CA375E0];
      v48 = &v72;
      swift_beginAccess();
      *v47 = 0;
      swift_endAccess();
      v8 = v7;
      sub_214CCE5C4();
      v9 = v60;
      v10 = v61;
      v11 = v68;
      v12 = v69;
      v13 = v70;
      v60[17] = v71;
      v9[16] = v13;
      v9[15] = v12;
      v9[14] = v11;

      v49 = &v84;
      sub_214C2B6CC();
      v14 = v61;
      sub_214C31384(v49);
      v15 = v14;
      sub_214CCE5C4();
      v16 = v60;
      v17 = v64;
      v18 = v65;
      v19 = v66;
      v60[3] = v67;
      v16[2] = v19;
      v16[1] = v18;
      *v16 = v17;
      v50 = v73[0];

      sub_214C3A10C();

      sub_214C31384(v73);
      return v55;
    }

    else
    {
      v45 = &v61[qword_27CA375E0];
      v46 = &v74;
      swift_beginAccess();
      *v45 = 1;
      swift_endAccess();
      return v55;
    }
  }

  else
  {
    v20 = v59;
    v21 = sub_214C31F18();
    (*(v58 + 16))(v20, v21, v56);
    v43 = sub_214CCDA54();
    v40 = v43;
    v42 = sub_214CCFBB4();
    v41 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v44 = sub_214CD03C4();
    if (os_log_type_enabled(v43, v42))
    {
      v22 = v55;
      v31 = sub_214CCFF24();
      v27 = v31;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v29 = 0;
      v32 = sub_214A632C4(0);
      v30 = v32;
      v33 = sub_214A632C4(v29);
      v78 = v31;
      v77 = v32;
      v76 = v33;
      v34 = 0;
      v35 = &v78;
      sub_214A6627C(0, &v78);
      sub_214A6627C(v34, v35);
      v75[4] = v44;
      v36 = v25;
      MEMORY[0x28223BE20](v25);
      v37 = &v25[-6];
      v25[-4] = v23;
      v25[-3] = &v77;
      v25[-2] = &v76;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v39 = v22;
      if (v22)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v40, v41, "Did not add any new priority emails. Skipping shimmer.", v27, 2u);
        v25[1] = 0;
        sub_214A669DC(v30);
        sub_214A669DC(v33);
        sub_214CCFF04();

        v26 = v39;
      }
    }

    else
    {

      v26 = v55;
    }

    v25[0] = v26;

    (*(v58 + 8))(v59, v56);
    return v25[0];
  }
}

uint64_t sub_214C326C4()
{
  v2 = (v0 + qword_27CA375D8);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

void sub_214C3272C(char a1)
{
  v2 = (v1 + qword_27CA375D8);
  swift_beginAccess();
  *v2 = a1;
  swift_endAccess();
  sub_214C31FF0();
}

uint64_t sub_214C327C0()
{
  v2 = (v0 + qword_27CA375E0);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214C32828(char a1)
{
  v3 = (v1 + qword_27CA375E0);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_214C3289C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  sub_214C32104();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C328EC(uint64_t *a1)
{
  v7 = 0;
  v6 = a1;
  *qword_27CA375D8 = 0;
  *(v7 + qword_27CA375E0) = 0;
  sub_214C31238(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  v3 = sub_214CCE5B4();
  MEMORY[0x277D82BE0](v3);
  v7 = v3;
  sub_214C31384(a1);
  MEMORY[0x277D82BD8](v7);
  return v3;
}

uint64_t sub_214C329F4(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v10 = a1;
  v9 = a2;
  *qword_27CA375D8 = 0;
  *(v11 + qword_27CA375E0) = 0;
  MEMORY[0x277D82BE0](a1);
  sub_214C31238(a2, v8);
  memcpy(__dst, a2, sizeof(__dst));
  v6 = sub_214CCE594();
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v11 = v6;
    sub_214C31384(a2);
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v11);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    sub_214C31384(a2);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

_BYTE *sub_214C32B34(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  v1[qword_27CA375D8] = 0;
  v9[qword_27CA375E0] = 0;
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, sel_initWithCoder_);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v9 = v6;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v9);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

unint64_t type metadata accessor for MUIHighlightedMessagesViewControllerFactory()
{
  v2 = qword_27CA375F0;
  if (!qword_27CA375F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA375F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C32D88()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

uint64_t sub_214C32E2C()
{
  v16 = 0;
  v11 = sub_214CD0364();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v12 = &v3 - v5;
  v6 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v3 - v5);
  v8 = &v3 - v6;
  v16 = v0;
  v7 = sub_214C33170() * 0.85;
  v13 = MEMORY[0x277D84678];
  (*(v9 + 104))(v8, *MEMORY[0x277D84678], v11);
  v15 = v7;
  (*(v9 + 16))(v12, v8, v11);
  result = (*(v9 + 88))(v12, v11);
  v14 = result;
  if (result == *v13)
  {
    v15 = round(v7);
    goto LABEL_15;
  }

  if (v14 == *MEMORY[0x277D84670])
  {
    v15 = rint(v7);
    goto LABEL_15;
  }

  if (v14 == *MEMORY[0x277D84680])
  {
    goto LABEL_13;
  }

  if (v14 == *MEMORY[0x277D84688])
  {
LABEL_14:
    v15 = floor(v7);
    goto LABEL_15;
  }

  if (v14 == *MEMORY[0x277D84660])
  {
    v15 = trunc(v7);
    goto LABEL_15;
  }

  if (v14 != *MEMORY[0x277D84668])
  {
    sub_214CCF9C4();
    (*(v9 + 8))(v12, v11);
LABEL_15:
    v3 = v15;
    return (*(v9 + 8))(v8, v11);
  }

  v4 = *&v7 >> 63;
  if (v7 >= 0.0)
  {
LABEL_13:
    v15 = ceil(v7);
    goto LABEL_15;
  }

  if (v4 == 1)
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

double sub_214C331D4()
{
  v3 = *v0;
  [*v0 horizontalSpacing];
  v4 = v1;
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t sub_214C332F0@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214C3CD0C();
}

uint64_t sub_214C3334C(uint64_t *a1)
{
  v2 = *a1;

  sub_214C3CD64(v2);
}

uint64_t sub_214C333A4@<X0>(char *a1@<X8>)
{
  v6 = a1;
  v11 = 0;
  v2 = sub_214CCE4D4();
  v5 = *(v2 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v9 = &v4 - v4;
  v11 = v1;
  v7 = *(v1 + 40);
  v8 = *(v1 + 40);
  (*(v5 + 104))();
  v10 = sub_214B154C0();
  sub_214B154C0();
  return sub_214C420E0(v9, v6);
}

uint64_t *sub_214C33528()
{
  if (qword_280C7CAF8 != -1)
  {
    swift_once();
  }

  return &qword_280C83690;
}

uint64_t sub_214C33588@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_logger;
  v2 = sub_214CCDA74();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_214C33620()
{
  sub_214C38170(0, 0);
  sub_214C382F8(0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37680);
  sub_214CD03C4();
  sub_214BE4D58();
  sub_214B5B098();
  v0 = sub_214CCF344();
  return sub_214C38484(v0);
}

uint64_t sub_214C336D0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__messages);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C33738(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__messages);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
  sub_214C33620();
}

uint64_t (*sub_214C337C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C33830;
}

uint64_t sub_214C33830(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_214C33620();
}

uint64_t sub_214C33880@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
}

uint64_t sub_214C338C8()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C336D0();
}

uint64_t sub_214C33920@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214C338C8();
}

uint64_t sub_214C3397C(uint64_t *a1)
{
  sub_214B1C04C(a1, &v3);
  v2 = v3;

  sub_214C339E4(v2);
}

uint64_t sub_214C339E4(uint64_t a1)
{
  v13 = a1;
  v18[1] = 0;
  v11 = 0;
  v18[2] = a1;
  v18[0] = sub_214C336D0();
  v17 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  sub_214C42184();
  v15 = v18;
  v16 = sub_214B14920();
  sub_214A62278();
  if (v16)
  {
    v1 = v12;
    v2 = v11;
    KeyPath = swift_getKeyPath();
    v7[1] = KeyPath;

    v9 = v7;
    MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v6[3] = v3;
    sub_214C41A70(v4, sub_214C4229C, v6, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v10 = v2;

    v7[0] = v10;
  }

  else
  {

    sub_214C33738(v13);
    v7[0] = v11;
  }
}

void (*sub_214C33C00(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C337C0(v8);
  return sub_214C33DAC;
}

void sub_214C33DAC(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C33E68(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C33E68(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C33E68(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214C33FA4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__mailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C3400C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__mailboxes);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C340FC()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C33FA4();
}

uint64_t sub_214C34154@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214C340FC();
}

uint64_t sub_214C341B0(uint64_t *a1)
{
  sub_214B1C04C(a1, &v3);
  v2 = v3;

  sub_214C34218(v2);
}

uint64_t sub_214C34218(uint64_t a1)
{
  v13 = a1;
  v18[1] = 0;
  v11 = 0;
  v18[2] = a1;
  v18[0] = sub_214C33FA4();
  v17 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36150);
  sub_214B8AB78();
  v15 = v18;
  v16 = sub_214B14920();
  sub_214A62278();
  if (v16)
  {
    v1 = v12;
    v2 = v11;
    KeyPath = swift_getKeyPath();
    v7[1] = KeyPath;

    v9 = v7;
    MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v6[3] = v3;
    sub_214C41A70(v4, sub_214C4233C, v6, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v10 = v2;

    v7[0] = v10;
  }

  else
  {

    sub_214C3400C(v13);
    v7[0] = v11;
  }
}

void (*sub_214C34434(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C34090();
  return sub_214C345E0;
}

void sub_214C345E0(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C3469C(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C3469C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C3469C(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214C347D8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__showBelowLineMessages);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214C34840(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__showBelowLineMessages);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214C34920()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C347D8() & 1;
}

uint64_t sub_214C3497C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = sub_214C34920() & 1;
}

uint64_t sub_214C349DC(char *a1)
{
  v2 = *a1;

  sub_214C34A38(v2 & 1);
}

uint64_t sub_214C34A38(int a1)
{
  v17 = a1;
  v14 = a1;
  v20 = 0;
  v15 = 0;
  v21 = a1;
  v19 = sub_214C347D8() & 1;
  v18 = v17;
  if (sub_214B14920())
  {
    v1 = v16;
    v2 = v15;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v8;
    MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v7 = v3 & 1;
    sub_214C41A70(v4, sub_214C42368, v6, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v13 = v2;

    return v13;
  }

  else
  {
    sub_214C34840(v14 & 1);
    return v15;
  }
}

void (*sub_214C34C10(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C348B4();
  return sub_214C34DBC;
}

void sub_214C34DBC(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C34E78(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C34E78(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C34E78(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

void *sub_214C34FB4@<X0>(void *a1@<X8>)
{
  v6 = 0;
  __src = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__layoutValues);
  swift_beginAccess();
  memcpy(__dst, __src, sizeof(__dst));
  sub_214C42398(__dst, v5);
  swift_endAccess();
  return memcpy(a1, __dst, 0xA0uLL);
}

void *sub_214C3504C(uint64_t *a1)
{
  v6 = 0;
  v7 = a1;
  sub_214C42398(a1, v5);
  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__layoutValues);
  swift_beginAccess();
  sub_214C42494(a1, v3);
  swift_endAccess();
  return sub_214C14F3C(a1);
}

void *sub_214C35138@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = a1;
  sub_214C42398(a1, v5);
  memcpy(a2, a1, 0xA0uLL);
  return sub_214C14F3C(a1);
}

void *sub_214C3518C@<X0>(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  sub_214C34FB4(v4);
  return memcpy(a1, v4, 0xA0uLL);
}

uint64_t sub_214C35204@<X0>(void *a1@<X8>)
{

  sub_214C3518C(v3);
  memcpy(a1, v3, 0xA0uLL);
}

uint64_t sub_214C35270(uint64_t *a1)
{
  sub_214C42398(a1, v2);
  memcpy(__dst, v2, sizeof(__dst));

  sub_214C352EC(__dst);
}

void *sub_214C352EC(uint64_t *a1)
{
  v28 = v33;
  v27 = a1;
  v35 = 0;
  v25 = 0;
  v1 = *a1;
  v38 = *(a1 + 1);
  v37 = v1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v42 = *(a1 + 5);
  v41 = v4;
  v40 = v3;
  v39 = v2;
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v7 = *(a1 + 8);
  v46 = *(a1 + 9);
  v45 = v7;
  v44 = v6;
  v43 = v5;
  v48 = v38;
  v47 = v37;
  v52 = v42;
  v51 = v41;
  v50 = v40;
  v49 = v39;
  v56 = v46;
  v55 = v7;
  v54 = v6;
  v53 = v5;
  sub_214C34FB4(v36);
  v34[1] = v36[1];
  v34[0] = v36[0];
  v34[5] = v36[5];
  v34[4] = v36[4];
  v34[3] = v36[3];
  v34[2] = v36[2];
  v34[9] = v36[9];
  v34[8] = v36[8];
  v34[7] = v36[7];
  v34[6] = v36[6];
  v8 = *v27;
  v33[1] = *(v27 + 1);
  v33[0] = v8;
  v9 = *(v27 + 2);
  v10 = *(v27 + 3);
  v11 = *(v27 + 4);
  v33[5] = *(v27 + 5);
  v33[4] = v11;
  v33[3] = v10;
  v33[2] = v9;
  v12 = *(v27 + 6);
  v13 = *(v27 + 7);
  v14 = *(v27 + 8);
  v33[9] = *(v27 + 9);
  v33[8] = v14;
  v33[7] = v13;
  v33[6] = v12;
  v29 = v34;
  v30 = sub_214B148F0();
  sub_214C14F3C(v34);
  if ((v30 & 1) == 0)
  {
    sub_214C42398(v27, &v32);
    sub_214C3504C(v27);
    v21[0] = v25;
    return sub_214C14F3C(v27);
  }

  v15 = v26;
  v16 = v25;
  KeyPath = swift_getKeyPath();
  v21[1] = KeyPath;

  sub_214C42398(v27, &v31);
  v23 = v21;
  MEMORY[0x28223BE20](KeyPath);
  v20[2] = v15;
  v20[3] = v17;
  sub_214C41A70(v18, sub_214C425B0, v20, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  v24 = v16;
  if (!v16)
  {

    sub_214C14F3C(v27);

    v21[0] = v24;
    return sub_214C14F3C(v27);
  }

  result = sub_214C14F3C(v27);
  __break(1u);
  return result;
}

void *sub_214C355D8(uint64_t a1, uint64_t *a2)
{
  v6 = a1;
  v5 = a2;
  sub_214C42398(a2, v4);
  return sub_214C3504C(a2);
}

void (*sub_214C35638(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C350CC();
  return sub_214C357E4;
}

void sub_214C357E4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C358A0(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C358A0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C358A0(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214C359DC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__contactPhotoPreferenceIsVisible);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214C35A44(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__contactPhotoPreferenceIsVisible);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214C35B24()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C359DC() & 1;
}

uint64_t sub_214C35B80@<X0>(_BYTE *a1@<X8>)
{

  *a1 = sub_214C35B24() & 1;
}

uint64_t sub_214C35BE0(char *a1)
{
  v2 = *a1;

  sub_214C35C3C(v2 & 1);
}

uint64_t sub_214C35C3C(int a1)
{
  v17 = a1;
  v14 = a1;
  v20 = 0;
  v15 = 0;
  v21 = a1;
  v19 = sub_214C359DC() & 1;
  v18 = v17;
  if (sub_214B14920())
  {
    v1 = v16;
    v2 = v15;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v12 = &v8;
    MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v7 = v3 & 1;
    sub_214C41A70(v4, sub_214C425DC, v6, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v13 = v2;

    return v13;
  }

  else
  {
    sub_214C35A44(v14 & 1);
    return v15;
  }
}

void (*sub_214C35E14(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C35AB8();
  return sub_214C35FC0;
}

void sub_214C35FC0(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C3607C(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C3607C(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C3607C(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214C361B8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__messageListFont);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C36228(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__messageListFont);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C36330()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C361B8();
}

uint64_t sub_214C36388@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214C36330();
}

uint64_t sub_214C363E4(void *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  sub_214C36460(v2);
}

void sub_214C36460(void *a1)
{
  v17 = a1;
  v16 = 0;
  v21 = 0;
  v14 = 0;
  v22 = a1;
  v19 = sub_214C361B8();
  v18 = sub_214BD1F48();
  sub_214C4260C();
  v20 = sub_214B14FDC();

  if (v20)
  {
    v1 = v15;
    v2 = v14;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v3 = v17;
    v12 = &v8;
    MEMORY[0x28223BE20](KeyPath);
    v7[2] = v1;
    v7[3] = v4;
    sub_214C41A70(v5, sub_214C4268C, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v13 = v2;

    v9 = v13;
  }

  else
  {
    v6 = v17;
    sub_214C36228(v17);
    v9 = v14;
  }
}

void (*sub_214C36670(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C362C4();
  return sub_214C3681C;
}

void sub_214C3681C(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C368D8(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C368D8(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C368D8(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214C36A14()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__headerTextFont);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C36A84(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__headerTextFont);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C36B8C()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C36A14();
}

uint64_t sub_214C36BE4@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214C36B8C();
}

uint64_t sub_214C36C40(void *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  sub_214C36CBC(v2);
}

void sub_214C36CBC(void *a1)
{
  v17 = a1;
  v16 = 0;
  v21 = 0;
  v14 = 0;
  v22 = a1;
  v19 = sub_214C36A14();
  v18 = sub_214BD1F48();
  sub_214C4260C();
  v20 = sub_214B14FDC();

  if (v20)
  {
    v1 = v15;
    v2 = v14;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v3 = v17;
    v12 = &v8;
    MEMORY[0x28223BE20](KeyPath);
    v7[2] = v1;
    v7[3] = v4;
    sub_214C41A70(v5, sub_214C426B8, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v13 = v2;

    v9 = v13;
  }

  else
  {
    v6 = v17;
    sub_214C36A84(v17);
    v9 = v14;
  }
}

void (*sub_214C36ECC(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C36B20();
  return sub_214C37078;
}

void sub_214C37078(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C37134(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C37134(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C37134(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214C37270()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__footerTextFont);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C372E0(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__footerTextFont);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C373E8()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C37270();
}

uint64_t sub_214C37440@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214C373E8();
}

uint64_t sub_214C3749C(void *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  sub_214C37518(v2);
}

void sub_214C37518(void *a1)
{
  v17 = a1;
  v16 = 0;
  v21 = 0;
  v14 = 0;
  v22 = a1;
  v19 = sub_214C37270();
  v18 = sub_214BD1F48();
  sub_214C4260C();
  v20 = sub_214B14FDC();

  if (v20)
  {
    v1 = v15;
    v2 = v14;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v3 = v17;
    v12 = &v8;
    MEMORY[0x28223BE20](KeyPath);
    v7[2] = v1;
    v7[3] = v4;
    sub_214C41A70(v5, sub_214C426E4, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v13 = v2;

    v9 = v13;
  }

  else
  {
    v6 = v17;
    sub_214C372E0(v17);
    v9 = v14;
  }
}

void (*sub_214C37728(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C3737C();
  return sub_214C378D4;
}

void sub_214C378D4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C37990(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C37990(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C37990(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214C37ACC()
{
  v8 = "Title that appears at the top of the box of highlighted messages in the message list";
  v21 = 0;
  v10 = 0;
  v6 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v6 - v6;
  v1 = sub_214CCF534();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v9 = &v6 - v7;
  v21 = v0;
  sub_214CCF614();
  sub_214CCF4C4();
  v11 = [objc_opt_self() mui_MailUIBundle];
  sub_214B1CFBC();
  v18 = v8;
  v19 = 84;
  v20 = 2;
  v2 = sub_214CCF5A4();
  v13 = v3;
  v16 = v2;
  v17 = v3;
  sub_214B075A0();
  v14 = sub_214CCFFC4();
  v15 = v4;

  return v14;
}

uint64_t sub_214C37CBC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_delegate);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_214C37D24(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_delegate);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214C37E10()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_contactStore);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C37E80(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_contactStore);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C37F88()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_avatarGenerator);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C37FF8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_avatarGenerator);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214C380FC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_cachedBelowLineMessagesSummary);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C38170(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_cachedBelowLineMessagesSummary);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_214C38278()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_cachedBelowLineMessagesWithAddresses);
  swift_beginAccess();
  v3 = *v2;
  sub_214C42710(*v2, v2[1]);
  swift_endAccess();
  return v3;
}

uint64_t sub_214C382F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_214C42710(a1, a2);
  v7 = (v3 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_cachedBelowLineMessagesWithAddresses);
  swift_beginAccess();
  v4 = *v7;
  v5 = v7[1];
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  sub_214C42764(v4, v5);
  swift_endAccess();
  return sub_214C42764(a1, a2);
}

uint64_t sub_214C3841C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_contactsByCollectionItemID);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C38484(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_contactsByCollectionItemID);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C38590(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  v78 = a6;
  v84 = a5;
  v80 = a4;
  v89 = a10;
  v88 = a9;
  v87 = a8;
  v86 = a7;
  v90 = a3;
  v75 = a2;
  v71 = a1;
  v93 = 0;
  v106[3] = 0;
  v106[13] = a1;
  v106[12] = a2;
  v106[11] = a3;
  *&v106[7] = a7;
  *&v106[8] = a8;
  *&v106[9] = a9;
  *&v106[10] = a10;
  v106[6] = a4;
  v106[5] = a5;
  v106[4] = a6;
  v49 = v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_logger;
  v50 = type metadata accessor for MUIHighlightedMessagesViewModel();
  static Logger.mailUILogger<A>(for:)();
  v51 = type metadata accessor for MUIHighlightedMessage();
  v11 = sub_214CD03C4();
  v68 = &qword_280C7D000;
  sub_214C33880(v11, (v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__messages));
  v52 = sub_214A63684();
  v12 = sub_214CD03C4();
  v72 = &unk_27CA37000;
  sub_214C33880(v12, (v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__mailboxes));
  sub_214B83854(0, v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__showBelowLineMessages);
  sub_214B83854(1, v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__contactPhotoPreferenceIsVisible);
  v59 = 0x277D74000uLL;
  v53 = objc_opt_self();
  v54 = *MEMORY[0x277D769D0];
  v13 = v54;
  v61 = 0x1FB334000uLL;
  v55 = [v53 0x1FB3343F8];

  sub_214B8412C(v55, (v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__messageListFont));
  v56 = objc_opt_self();
  v60 = MEMORY[0x277D76968];
  v57 = *MEMORY[0x277D76968];
  v14 = v57;
  v58 = [v56 0x1FB3343F8];

  sub_214B8412C(v58, (v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__headerTextFont));
  v62 = objc_opt_self();
  v63 = *v60;
  v15 = v63;
  v64 = [v62 0x1FB3343F8];

  sub_214B8412C(v64, (v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__footerTextFont));
  v76 = &qword_280C7D000;
  *(v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_delegate) = 0;
  v81 = &unk_27CA37000;
  *(v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_avatarGenerator) = 0;
  v16 = (v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_cachedBelowLineMessagesSummary);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_cachedBelowLineMessagesWithAddresses);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  v67 = OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_contactsByCollectionItemID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37680);
  v66 = sub_214CD03C4();
  v65 = sub_214BE4D58();
  sub_214B5B098();
  v18 = sub_214CCF344();
  v19 = v93;
  *(v10 + v67) = v18;
  *(v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__selectedObjectID) = v19;
  sub_214CCD454();

  v70 = *v10;
  v69 = (v10 + v68[299]);
  sub_214A62278();
  sub_214C33880(v71, v69);

  v74 = *v10;
  v73 = (v10 + v72[213]);
  sub_214A62278();
  sub_214C33880(v75, v73);
  v20 = v90;
  sub_214B8412C(v90, (v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__cellLayoutValues));
  swift_unknownObjectRetain();
  v77 = (v10 + v76[300]);
  v82 = 33;
  v79 = v106;
  swift_beginAccess();
  *v77 = v78;
  swift_unknownObjectRelease();
  swift_endAccess();
  v21 = v80;
  v22 = v84;
  *(v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_contactStore) = v80;
  v23 = v22;
  v83 = (v10 + v81[220]);
  v85 = &v105;
  swift_beginAccess();
  v24 = *v83;
  *v83 = v84;

  swift_endAccess();
  sub_214C390E0((v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__containerInsets), v86, v87, v88, v89);
  v25 = v90;
  v26 = sub_214C38574();
  v91 = v107;
  sub_214C39308(v90, v107, v26, v27, v28, v29);
  sub_214C35138(v107, v10 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__layoutValues);
  v92 = [objc_opt_self() defaultCenter];
  v94 = *sub_214C33528();
  v30 = v94;
  v95 = v94;
  v103[0] = v93;
  v103[1] = v93;
  v103[2] = v93;
  v104 = v93;
  if (v93)
  {
    v42 = v104;
    v45 = v103;
    __swift_project_boxed_opaque_existential_0(v103, v104);
    v40 = *(v42 - 8);
    v41 = v40;
    v44 = &v34;
    v31 = MEMORY[0x28223BE20](&v34);
    v43 = &v34 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v31);
    v46 = sub_214CD03D4();
    (*(v41 + 8))(v43, v42);
    __swift_destroy_boxed_opaque_existential_0(v45);
    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  v38 = v47;
  v37 = [objc_opt_self() mainQueue];
  v35 = swift_allocObject();
  v34 = v35 + 16;

  swift_weakInit();

  v101 = sub_214C427B8;
  v102 = v35;
  v96 = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v98 = 0;
  v99 = sub_214B3F008;
  v100 = &block_descriptor_16;
  v36 = _Block_copy(&v96);

  v39 = [v92 addObserverForName:v95 object:v38 queue:v37 usingBlock:v36];
  _Block_release(v36);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v48;
}

void sub_214C38F34(void *a1)
{
  v17 = a1;
  v16 = 0;
  v21 = 0;
  v14 = 0;
  v22 = a1;
  v19 = sub_214C40A34();
  v18 = sub_214C427C0();
  sub_214C42824();
  v20 = sub_214B14FDC();

  if (v20)
  {
    v1 = v15;
    v2 = v14;
    KeyPath = swift_getKeyPath();
    v10 = KeyPath;

    v3 = v17;
    v12 = &v8;
    MEMORY[0x28223BE20](KeyPath);
    v7[2] = v1;
    v7[3] = v4;
    sub_214C41A70(v5, sub_214C428A4, v7, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v13 = v2;

    v9 = v13;
  }

  else
  {
    v6 = v17;
    sub_214C40AA4(v17);
    v9 = v14;
  }
}

void sub_214C390E0(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

uint64_t sub_214C39118(double a1, double a2, double a3, double a4)
{
  v28 = a4;
  v27 = a3;
  v26 = a2;
  v25 = a1;
  v24 = 0;
  v38 = 0;
  v22 = 0;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v34 = sub_214C3B77C();
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v29 = type metadata accessor for NSDirectionalEdgeInsets();
  sub_214C428D0();
  if (sub_214B14920())
  {
    v7 = v23;
    v8 = v22;
    KeyPath = swift_getKeyPath();
    v18 = KeyPath;

    v20 = &v16;
    v9 = MEMORY[0x28223BE20](KeyPath);
    v15[2] = v7;
    v15[3] = v10;
    v15[4] = v11;
    v15[5] = v12;
    *&v15[6] = v9;
    sub_214C41A70(v13, sub_214C42950, v15, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v21 = v8;

    return v21;
  }

  else
  {
    sub_214C3B804(v25, v26, v27, v28);
    return v22;
  }
}

void *sub_214C39308@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *&v7 = a3;
  *(&v7 + 1) = a4;
  *&v8 = a5;
  *(&v8 + 1) = a6;
  memset(__b, 0, sizeof(__b));
  v14 = a1;
  v12 = v7;
  v13 = v8;
  MEMORY[0x277D82BE0](a1);
  __b[0] = a1;
  *&__b[1] = v7;
  *&__b[3] = v8;
  MEMORY[0x277D82BE0](a1);
  sub_214C41FE8(a1, v16, *&v7, *(&v7 + 1), *&v8, *(&v8 + 1));
  memcpy(&__b[5], v16, 0x50uLL);
  MEMORY[0x277D82BE0](a1);
  sub_214C42084(a1, v17, *&v7, *(&v7 + 1), *&v8, *(&v8 + 1));
  memcpy(&__b[15], v17, 0x28uLL);
  memcpy(__dst, __b, sizeof(__dst));
  sub_214C42398(__dst, v11);
  MEMORY[0x277D82BD8](a1);
  sub_214C14F3C(__b);
  return memcpy(a2, __dst, 0xA0uLL);
}

uint64_t sub_214C394A8()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_214A75F80();
    swift_endAccess();
    sub_214C3CD64(0);
  }

  else
  {
    sub_214A75F80();
    return swift_endAccess();
  }
}

uint64_t sub_214C39564()
{
  v87 = 0;
  v123 = 0;
  v121 = 0;
  v119 = 0;
  v117 = 0;
  v110 = 0;
  v106 = 0;
  v105 = 0;
  v104 = 0;
  v100 = 0;
  v99 = 0;
  v83 = sub_214CCDA74();
  v84 = *(v83 - 8);
  v85 = v84;
  MEMORY[0x28223BE20](v83 - 8);
  v86 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v123 = v0;
  v122 = sub_214C338C8();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37710);
  sub_214C42988();
  v2 = sub_214CCF6F4();
  v90 = 0;
  v91 = v2;
  v79 = v2;
  sub_214A62278();
  v121 = v79;
  v120 = v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FF0);
  v80 = v81;
  sub_214A80F28();
  if (sub_214CCFA94())
  {

    v14 = 0;
    v15 = v90;
    return v14 & 1;
  }

  v3 = v90;
  v119 = 0;
  v118 = v79;
  sub_214C42A10();
  v4 = sub_214CCF6F4();
  v77 = v3;
  v78 = v4;
  if (!v3)
  {
    v75 = v78;
    v117 = v78;
    v76 = [objc_opt_self() em_userDefaults];
    if (v76)
    {
      v74 = v76;
      v72 = v76;
      v68 = *MEMORY[0x277D06CB0];
      v5 = v68;
      sub_214AFD2F4(v68);
      v69 = v6;
      v70 = sub_214CCF544();

      v73 = [v72 valueForKey_];
      v71 = v73;

      if (v73)
      {
        v67 = v71;
        v66 = v71;
        v65 = &v92;
        sub_214CD0054();
        sub_214B11A4C(v65, &v93);
        swift_unknownObjectRelease();
      }

      else
      {
        v93 = 0uLL;
        v94 = 0uLL;
      }

      v116 = v94;
      v115 = v93;
    }

    else
    {
      v115 = 0uLL;
      v116 = 0uLL;
    }

    if (*(&v116 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37770);
      if (swift_dynamicCast())
      {
        v64 = v95;
      }

      else
      {
        v64 = 0;
      }

      v63 = v64;
    }

    else
    {
      sub_214A7D24C(&v115);
      v63 = 0;
    }

    v62 = v63;
    if (v63)
    {
      v61 = v62;
      v52 = v62;
      v110 = v62;
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37728);
      v53 = v59;
      v108 = sub_214CCF364();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37730);
      v54 = sub_214C42D20();
      v56 = sub_214C42DA8();
      sub_214CCF794();
      v107 = v109;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37748);
      sub_214C42E30();
      v58 = sub_214CCF8F4();
      v106 = v58;

      v103 = v75;
      sub_214C42EB8();
      sub_214CCFAC4();
      for (i = v77; ; i = v40)
      {
        v49 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37760);
        sub_214CD01B4();
        v50 = v101;
        v51 = v102;
        if (v102 >> 60 == 15)
        {
          break;
        }

        v47 = v50;
        v48 = v51;
        v44 = v51;
        v43 = v50;
        v99 = v50;
        v100 = v51;
        v98 = v58;
        v96 = v50;
        v97 = v51;
        sub_214C42F40();
        v7 = sub_214CCF784();
        v45 = v43;
        v46 = v44;
        if ((v7 & 1) == 0)
        {
          v41 = 1;
          v119 = 1;
          sub_214AF83FC(v45, v46);
          v42 = v41;
          goto LABEL_20;
        }

        v40 = v49;
        sub_214AF83FC(v43, v44);
      }

      v42 = 0;
LABEL_20:
      v37 = v42;
      sub_214A62278();

      v38 = v37;
      v39 = v49;
    }

    else
    {
      (*(v85 + 16))(v86, v82 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_logger, v83);
      v35 = sub_214CCDA54();
      v32 = v35;
      v34 = sub_214CCFBB4();
      v33 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      v36 = sub_214CD03C4();
      if (os_log_type_enabled(v35, v34))
      {
        v8 = v77;
        v23 = sub_214CCFF24();
        v19 = v23;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v21 = 0;
        v24 = sub_214A632C4(0);
        v22 = v24;
        v25 = sub_214A632C4(v21);
        v114 = v23;
        v113 = v24;
        v112 = v25;
        v26 = 0;
        v27 = &v114;
        sub_214A6627C(0, &v114);
        sub_214A6627C(v26, v27);
        v111 = v36;
        v28 = v11;
        MEMORY[0x28223BE20](v11);
        v29 = &v11[-48];
        *&v11[-32] = v9;
        *&v11[-24] = &v113;
        *&v11[-16] = &v112;
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
        sub_214A810E0();
        sub_214CCF764();
        v31 = v8;
        if (v8)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_214A5E000, v32, v33, "Did not find any existing previously viewed priority emails.", v19, 2u);
          v17 = 0;
          sub_214A669DC(v22);
          sub_214A669DC(v25);
          sub_214CCFF04();

          v18 = v31;
        }
      }

      else
      {

        v18 = v77;
      }

      v16 = v18;

      (*(v85 + 8))(v86, v83);
      v119 = 1;
      v38 = 1;
      v39 = v16;
    }

    v13 = v39;
    v12 = v38;

    v14 = v12;
    v15 = v13;
    return v14 & 1;
  }

  result = 0;
  __break(1u);
  return result;
}

id sub_214C39ED4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 messageListItem];
  swift_getObjectType();
  v5 = [v3 itemID];
  swift_unknownObjectRelease();
  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_214C39F58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v14 = *a1;
  v15 = 0;
  v10 = objc_opt_self();
  swift_unknownObjectRetain();
  swift_getObjectType();
  v13 = 0;
  v12 = [v10 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v13];
  v11 = v13;
  MEMORY[0x277D82BE0](v13);
  v2 = v15;
  v15 = v11;
  MEMORY[0x277D82BD8](v2);
  swift_unknownObjectRelease();
  if (v12)
  {
    *a2 = sub_214CCD184();
    a2[1] = v3;
    MEMORY[0x277D82BD8](v12);
    return v9;
  }

  else
  {
    v5 = v15;
    v6 = sub_214CCD084();
    MEMORY[0x277D82BD8](v5);
    swift_willThrow();

    *a2 = 0;
    a2[1] = 0xF000000000000000;
    return 0;
  }
}

uint64_t sub_214C3A10C()
{
  v151 = sub_214C3B440;
  v152 = sub_214A7E9D4;
  v153 = sub_214C43048;
  v154 = sub_214A7E854;
  v155 = sub_214B21C04;
  v156 = sub_214A7E854;
  v157 = sub_214A662DC;
  v158 = sub_214A662DC;
  v159 = sub_214A7E40C;
  v160 = sub_214A662DC;
  v161 = sub_214A662DC;
  v162 = sub_214A7E40C;
  v163 = sub_214C42FB8;
  v164 = sub_214A7E700;
  v165 = sub_214A7E854;
  v166 = sub_214A662DC;
  v167 = sub_214A662DC;
  v168 = sub_214A7E40C;
  v204 = 0;
  v169 = 0;
  v197 = 0;
  v198 = 0;
  v195 = 0;
  v194 = 0;
  v189 = 0;
  v170 = sub_214CCDA74();
  v171 = *(v170 - 8);
  v172 = v170 - 8;
  v173 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v170);
  v174 = v51 - v173;
  v175 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51 - v173);
  v176 = v51 - v175;
  v204 = v0;
  v178 = sub_214C340FC();
  v203[2] = v178;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36150);
  sub_214A7C404();
  sub_214CCFA74();
  v179 = v203[1];

  if (v179)
  {
    v149 = v179;
    v143 = v179;
    v144 = [v179 bucketBarConfigurationIdentifier];
    v145 = sub_214CCF564();
    v146 = v3;
    MEMORY[0x277D82BD8](v143);
    v2 = MEMORY[0x277D82BD8](v144);
    v147 = v145;
    v148 = v146;
  }

  else
  {
    v147 = 0;
    v148 = 0;
  }

  v141 = v148;
  v142 = v147;
  if (v148)
  {
    v139 = v142;
    v140 = v141;
    v4 = v169;
    v134 = v141;
    v135 = v142;
    v197 = v142;
    v198 = v141;
    v196 = sub_214C338C8();
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
    sub_214C42988();
    result = sub_214CCF6F4();
    v137 = v4;
    v138 = result;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      v6 = v176;
      v112 = v138;
      sub_214A62278();
      v195 = v112;
      (*(v171 + 16))(v6, v150 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_logger, v170);

      v120 = 7;
      v113 = swift_allocObject();
      *(v113 + 16) = v112;

      v119 = 32;
      v7 = swift_allocObject();
      v8 = v113;
      v114 = v7;
      *(v7 + 16) = v152;
      *(v7 + 24) = v8;

      v9 = swift_allocObject();
      v10 = v134;
      v121 = v9;
      *(v9 + 16) = v135;
      *(v9 + 24) = v10;
      v132 = sub_214CCDA54();
      v133 = sub_214CCFBB4();
      v117 = 17;
      v123 = swift_allocObject();
      v116 = 32;
      *(v123 + 16) = 32;
      v124 = swift_allocObject();
      v118 = 8;
      *(v124 + 16) = 8;
      v11 = swift_allocObject();
      v12 = v114;
      v115 = v11;
      *(v11 + 16) = v153;
      *(v11 + 24) = v12;
      v13 = swift_allocObject();
      v14 = v115;
      v125 = v13;
      *(v13 + 16) = v154;
      *(v13 + 24) = v14;
      v126 = swift_allocObject();
      *(v126 + 16) = v116;
      v127 = swift_allocObject();
      *(v127 + 16) = v118;
      v15 = swift_allocObject();
      v16 = v121;
      v122 = v15;
      *(v15 + 16) = v155;
      *(v15 + 24) = v16;
      v17 = swift_allocObject();
      v18 = v122;
      v129 = v17;
      *(v17 + 16) = v156;
      *(v17 + 24) = v18;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      v128 = sub_214CD03C4();
      v130 = v19;

      v20 = v123;
      v21 = v130;
      *v130 = v157;
      v21[1] = v20;

      v22 = v124;
      v23 = v130;
      v130[2] = v158;
      v23[3] = v22;

      v24 = v125;
      v25 = v130;
      v130[4] = v159;
      v25[5] = v24;

      v26 = v126;
      v27 = v130;
      v130[6] = v160;
      v27[7] = v26;

      v28 = v127;
      v29 = v130;
      v130[8] = v161;
      v29[9] = v28;

      v30 = v129;
      v31 = v130;
      v130[10] = v162;
      v31[11] = v30;
      sub_214A63280();

      if (os_log_type_enabled(v132, v133))
      {
        v32 = v137;
        v104 = sub_214CCFF24();
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v105 = sub_214A632C4(0);
        v106 = sub_214A632C4(2);
        v108 = &v184;
        v184 = v104;
        v109 = &v183;
        v183 = v105;
        v110 = &v182;
        v182 = v106;
        v107 = 2;
        sub_214A6627C(2, &v184);
        sub_214A6627C(v107, v108);
        v180 = v157;
        v181 = v123;
        sub_214A66290(&v180, v108, v109, v110);
        v111 = v32;
        if (v32)
        {

          __break(1u);
        }

        else
        {
          v180 = v158;
          v181 = v124;
          sub_214A66290(&v180, &v184, &v183, &v182);
          v102 = 0;
          v180 = v159;
          v181 = v125;
          sub_214A66290(&v180, &v184, &v183, &v182);
          v101 = 0;
          v180 = v160;
          v181 = v126;
          sub_214A66290(&v180, &v184, &v183, &v182);
          v100 = 0;
          v180 = v161;
          v181 = v127;
          sub_214A66290(&v180, &v184, &v183, &v182);
          v99 = 0;
          v180 = v162;
          v181 = v129;
          sub_214A66290(&v180, &v184, &v183, &v182);
          _os_log_impl(&dword_214A5E000, v132, v133, "Updating shimmered messages: %s for mailbox: %s", v104, 0x16u);
          sub_214A669DC(v105);
          sub_214A669DC(v106);
          sub_214CCFF04();
        }
      }

      else
      {
      }

      v33 = MEMORY[0x277D82BD8](v132);
      (*(v171 + 8))(v176, v170, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37790);
      v96 = sub_214CD03C4();
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37728);
      v194 = sub_214CCF344();
      v98 = [objc_opt_self() em_userDefaults];
      if (v98)
      {
        v95 = v98;
        v93 = v98;
        v90 = *MEMORY[0x277D06CB0];
        MEMORY[0x277D82BE0](v90);
        sub_214AFD2F4(v90);
        v91 = v34;
        v92 = sub_214CCF544();
        MEMORY[0x277D82BD8](v90);

        v94 = [v93 valueForKey_];
        MEMORY[0x277D82BD8](v92);
        MEMORY[0x277D82BD8](v93);
        if (v94)
        {
          v89 = v94;
          v88 = v94;
          v87 = &v185;
          sub_214CD0054();
          sub_214B11A4C(v87, &v186);
          swift_unknownObjectRelease();
        }

        else
        {
          v186 = 0uLL;
          v187 = 0uLL;
        }

        v192 = v186;
        v193 = v187;
      }

      else
      {
        v192 = 0uLL;
        v193 = 0uLL;
      }

      if (*(&v193 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37770);
        if (swift_dynamicCast())
        {
          v86 = v188;
        }

        else
        {
          v86 = 0;
        }

        v85 = v86;
      }

      else
      {
        sub_214A7D24C(&v192);
        v85 = 0;
      }

      v84 = v85;
      if (v85)
      {
        v83 = v84;
        v82 = v84;
        v189 = v84;

        v194 = v82;
      }

      v80 = &v191;
      v191 = v112;
      v79 = v190;
      v190[0] = v135;
      v190[1] = v134;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37770);
      sub_214CCF3E4();
      v81 = [objc_opt_self() em_userDefaults];
      if (v81)
      {
        v78 = v81;
        v77 = v81;
        v72 = v194;

        v76 = sub_214CCF304();

        v73 = *MEMORY[0x277D06CB0];
        MEMORY[0x277D82BE0](v73);
        sub_214AFD2F4(v73);
        v74 = v35;
        v75 = sub_214CCF544();
        MEMORY[0x277D82BD8](v73);

        [v77 setObject:v76 forKey:v75];
        MEMORY[0x277D82BD8](v75);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BD8](v77);
      }

      sub_214A62278();
    }
  }

  else
  {
    (*(v171 + 16))(v174, v150 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_logger, v170, v2);

    v60 = 32;
    v61 = 7;
    v36 = swift_allocObject();
    v37 = v150;
    v62 = v36;
    *(v36 + 16) = v163;
    *(v36 + 24) = v37;

    v70 = sub_214CCDA54();
    v71 = sub_214CCFBA4();
    v59 = 17;
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    *(v65 + 16) = 8;
    v38 = swift_allocObject();
    v39 = v62;
    v63 = v38;
    *(v38 + 16) = v164;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v63;
    v67 = v40;
    *(v40 + 16) = v165;
    *(v40 + 24) = v41;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v66 = sub_214CD03C4();
    v68 = v42;

    v43 = v64;
    v44 = v68;
    *v68 = v166;
    v44[1] = v43;

    v45 = v65;
    v46 = v68;
    v68[2] = v167;
    v46[3] = v45;

    v47 = v67;
    v48 = v68;
    v68[4] = v168;
    v48[5] = v47;
    sub_214A63280();

    if (os_log_type_enabled(v70, v71))
    {
      v49 = v169;
      v52 = sub_214CCFF24();
      v51[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v53 = sub_214A632C4(0);
      v54 = sub_214A632C4(1);
      v55 = v203;
      v203[0] = v52;
      v56 = &v202;
      v202 = v53;
      v57 = &v201;
      v201 = v54;
      sub_214A6627C(2, v203);
      sub_214A6627C(1, v55);
      v199 = v166;
      v200 = v64;
      sub_214A66290(&v199, v55, v56, v57);
      v58 = v49;
      if (v49)
      {

        __break(1u);
      }

      else
      {
        v199 = v167;
        v200 = v65;
        sub_214A66290(&v199, v203, &v202, &v201);
        v51[1] = 0;
        v199 = v168;
        v200 = v67;
        sub_214A66290(&v199, v203, &v202, &v201);
        _os_log_impl(&dword_214A5E000, v70, v71, "Unable to update shimmered messages for mailbox: %s", v52, 0xCu);
        sub_214A669DC(v53);
        sub_214A669DC(v54);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v50 = MEMORY[0x277D82BD8](v70);
    return (*(v171 + 8))(v174, v170, v50);
  }

  return result;
}

uint64_t sub_214C3B408@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214C340FC();
  *a1 = result;
  return result;
}

uint64_t sub_214C3B440@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v16 = *a1;
  v17 = 0;
  v11 = objc_opt_self();
  v10 = [v16 messageListItem];
  swift_getObjectType();
  v13 = [v10 itemID];
  swift_getObjectType();
  swift_unknownObjectRelease();
  v15 = 0;
  v14 = [v11 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v15];
  v12 = v15;
  MEMORY[0x277D82BE0](v15);
  v2 = v17;
  v17 = v12;
  MEMORY[0x277D82BD8](v2);
  swift_unknownObjectRelease();
  if (v14)
  {
    *a2 = sub_214CCD184();
    a2[1] = v3;
    MEMORY[0x277D82BD8](v14);
    return v9;
  }

  else
  {
    v5 = v17;
    v6 = sub_214CCD084();
    MEMORY[0x277D82BD8](v5);
    swift_willThrow();

    *a2 = 0;
    a2[1] = 0xF000000000000000;
    return 0;
  }
}

void sub_214C3B62C()
{
  v0 = sub_214C37CBC();
  if (v0)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_getObjectType();
    [v0 highlightedMessagesViewDidChangeHeight];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
  }
}

void *sub_214C3B71C()
{
  v5 = sub_214C40BB4();
  v0 = sub_214C3B96C();
  sub_214C39308(v5, v6, v0, v1, v2, v3);
  return sub_214C352EC(v6);
}

double sub_214C3B77C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__containerInsets);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void *sub_214C3B804(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__containerInsets);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  swift_endAccess();
  return sub_214C3B71C();
}

void *(*sub_214C3B8AC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C3B91C;
}

void *sub_214C3B91C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  return sub_214C3B71C();
}

double sub_214C3B96C()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C3B77C();
}

uint64_t sub_214C3B9C4@<X0>(uint64_t a1@<X8>)
{

  *a1 = sub_214C3B96C();
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

uint64_t sub_214C3BA28(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];

  sub_214C39118(v2, v3, v4, v5);
}

void (*sub_214C3BB00(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C3B8AC(v8);
  return sub_214C3BCAC;
}

void sub_214C3BCAC(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C3BD68(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C3BD68(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C3BD68(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

double sub_214C3BEA4()
{
  v85 = sub_214C43138;
  v66 = sub_214C43164;
  v67 = sub_214B21624;
  v68 = sub_214B1DA88;
  v69 = sub_214B21624;
  v70 = sub_214A662DC;
  v71 = sub_214A662DC;
  v72 = sub_214B217B4;
  v73 = sub_214A662DC;
  v74 = sub_214A662DC;
  v75 = sub_214B217B4;
  v99 = 0;
  v98 = 0;
  v95 = 0;
  v76 = sub_214CCDA74();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76);
  v80 = v27 - v79;
  v99 = v0;
  v82 = sub_214C3CD0C();
  v98 = v82;
  v96 = sub_214C338C8();
  v83 = &v87;
  v88 = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  sub_214C42988();
  sub_214CCF724();
  v86 = 0;
  sub_214A62278();
  v65 = v97;
  if (v97)
  {
    v64 = v65;
    v43 = v65;
    v95 = v65;
    (*(v77 + 16))(v80, v81 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_logger, v76);
    MEMORY[0x277D82BE0](v43);
    v42 = 24;
    v50 = 7;
    v2 = swift_allocObject();
    v3 = v43;
    v44 = v2;
    *(v2 + 16) = v43;
    MEMORY[0x277D82BE0](v3);
    v51 = swift_allocObject();
    *(v51 + 16) = v43;
    v62 = sub_214CCDA54();
    v63 = sub_214CCFBB4();
    v47 = 17;
    v53 = swift_allocObject();
    v46 = 66;
    *(v53 + 16) = 66;
    v54 = swift_allocObject();
    v48 = 8;
    *(v54 + 16) = 8;
    v49 = 32;
    v4 = swift_allocObject();
    v5 = v44;
    v45 = v4;
    *(v4 + 16) = v66;
    *(v4 + 24) = v5;
    v6 = swift_allocObject();
    v7 = v45;
    v55 = v6;
    *(v6 + 16) = v67;
    *(v6 + 24) = v7;
    v56 = swift_allocObject();
    *(v56 + 16) = v46;
    v57 = swift_allocObject();
    *(v57 + 16) = v48;
    v8 = swift_allocObject();
    v9 = v51;
    v52 = v8;
    *(v8 + 16) = v68;
    *(v8 + 24) = v9;
    v10 = swift_allocObject();
    v11 = v52;
    v59 = v10;
    *(v10 + 16) = v69;
    *(v10 + 24) = v11;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v58 = sub_214CD03C4();
    v60 = v12;

    v13 = v53;
    v14 = v60;
    *v60 = v70;
    v14[1] = v13;

    v15 = v54;
    v16 = v60;
    v60[2] = v71;
    v16[3] = v15;

    v17 = v55;
    v18 = v60;
    v60[4] = v72;
    v18[5] = v17;

    v19 = v56;
    v20 = v60;
    v60[6] = v73;
    v20[7] = v19;

    v21 = v57;
    v22 = v60;
    v60[8] = v74;
    v22[9] = v21;

    v23 = v59;
    v24 = v60;
    v60[10] = v75;
    v24[11] = v23;
    sub_214A63280();

    if (os_log_type_enabled(v62, v63))
    {
      v25 = v86;
      v34 = sub_214CCFF24();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v35 = sub_214A632C4(2);
      v36 = sub_214A632C4(0);
      v38 = &v93;
      v93 = v34;
      v39 = &v92;
      v92 = v35;
      v40 = &v91;
      v91 = v36;
      v37 = 2;
      sub_214A6627C(2, &v93);
      sub_214A6627C(v37, v38);
      v89 = v70;
      v90 = v53;
      sub_214A66290(&v89, v38, v39, v40);
      v41 = v25;
      if (v25)
      {

        __break(1u);
      }

      else
      {
        v89 = v71;
        v90 = v54;
        sub_214A66290(&v89, &v93, &v92, &v91);
        v32 = 0;
        v89 = v72;
        v90 = v55;
        sub_214A66290(&v89, &v93, &v92, &v91);
        v31 = 0;
        v89 = v73;
        v90 = v56;
        sub_214A66290(&v89, &v93, &v92, &v91);
        v30 = 0;
        v89 = v74;
        v90 = v57;
        sub_214A66290(&v89, &v93, &v92, &v91);
        v29 = 0;
        v89 = v75;
        v90 = v59;
        sub_214A66290(&v89, &v93, &v92, &v91);
        _os_log_impl(&dword_214A5E000, v62, v63, "Selected objectID: %{public}@ message: %{public}@", v34, 0x16u);
        sub_214A669DC(v35);
        sub_214A669DC(v36);
        sub_214CCFF04();
      }
    }

    else
    {
    }

    v26 = MEMORY[0x277D82BD8](v62);
    (*(v77 + 8))(v80, v76, v26);
    v94 = sub_214C37CBC();
    if (v94)
    {
      v27[1] = &v94;
      v28 = v94;
      swift_unknownObjectRetain();
      sub_214A759F4();
      swift_getObjectType();
      [v28 highlightedMessagesViewDidSelectMessage_];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_214A759F4();
    }

    *&result = MEMORY[0x277D82BD8](v43).n128_u64[0];
  }

  return result;
}

BOOL sub_214C3CA50(uint64_t a1, uint64_t a2)
{
  v5 = MUIHighlightedMessage.id.getter();
  if (!v5)
  {
    return !a2;
  }

  if (!a2)
  {
    return 0;
  }

  return v5 == a2;
}

id sub_214C3CB14(void *a1)
{
  v2 = [a1 messageListItem];
  swift_getObjectType();
  v3 = [v2 objectID];
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_214C3CB78()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__selectedObjectID);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

double sub_214C3CBDC(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__selectedObjectID);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return sub_214C3BEA4();
}

void (*sub_214C3CC4C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C3CCBC;
}

void sub_214C3CCBC(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214C3BEA4();
  }
}

uint64_t sub_214C3CD0C()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C3CB78();
}

uint64_t sub_214C3CD64(uint64_t a1)
{
  v13 = a1;
  v17 = 0;
  v11 = 0;
  v18 = a1;
  v16 = sub_214C3CB78();
  v15 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37798);
  sub_214C4316C();
  if (sub_214B14920())
  {
    v1 = v12;
    v2 = v11;
    KeyPath = swift_getKeyPath();
    v7[1] = KeyPath;

    v9 = v7;
    MEMORY[0x28223BE20](KeyPath);
    v6[2] = v1;
    v6[3] = v3;
    sub_214C41A70(v4, sub_214C43200, v6, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
    v10 = v2;

    v7[0] = v10;
  }

  else
  {
    sub_214C3CBDC(v13);
    v7[0] = v11;
  }

  return v7[0];
}

void (*sub_214C3CF30(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C3CC4C(v8);
  return sub_214C3D0DC;
}

void sub_214C3D0DC(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C3D198(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C3D198(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C3D198(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214C3D2D4()
{
  v43 = sub_214C3DAE8;
  v44 = "String that shows in the footer";
  v75 = 0;
  v45 = 0;
  v70 = 0;
  v71 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v48 = 0;
  v46 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v47 = v16 - v46;
  v49 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48);
  v50 = v16 - v49;
  v51 = sub_214CCF514();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51);
  v55 = v16 - v54;
  v56 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v54);
  v57 = v16 - v56;
  v58 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v56);
  v59 = v16 - v58;
  v75 = v0;
  v60 = sub_214C380FC();
  v61 = v3;
  if (v3)
  {
    v41 = v60;
    v42 = v61;
    v62 = v60;
    v63 = v61;
    v39 = v60;
    v40 = v61;
    return v39;
  }

  v4 = v45;
  v30 = sub_214C40140();
  v31 = v5;
  v32 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
  v37 = MEMORY[0x277D837D0];
  v33 = sub_214CCD5A4();
  v34 = v7;

  v72[6] = v33;
  v72[7] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA377B0);
  sub_214C4322C();
  sub_214CCFA84();
  v72[2] = v72[8];
  v72[3] = v72[9];
  v72[4] = v72[10];
  v72[5] = v72[11];
  v8 = sub_214CCF614();
  v38 = v72;
  v72[0] = v8;
  v72[1] = v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA377C0);
  sub_214C432B4();
  result = sub_214CCF744();
  if (!v4)
  {
    sub_214A61B48();
    sub_214A75F10();
    v21 = v73;
    v27 = v74;
    v70 = v73;
    v71 = v74;
    v19 = 11;
    sub_214CCF504();
    v22 = "";
    v25 = 0;
    v23 = 1;
    sub_214CCF614();
    v16[1] = v11;
    sub_214CCF4F4();

    v16[2] = sub_214C408DC();
    type metadata accessor for MUIHighlightedMessage();
    v17 = sub_214CCF854();

    v69 = v17;
    sub_214A63208();
    sub_214CD0014();
    v18 = v12;
    sub_214CCF4E4();

    sub_214CCF614();
    v20 = v13;
    sub_214CCF4F4();

    sub_214CCF4E4();
    sub_214CCF614();
    v24 = v14;
    sub_214CCF4F4();

    (*(v52 + 16))(v57, v59, v51);
    (*(v52 + 32))(v55, v57, v51);
    (*(v52 + 8))(v59, v51);
    sub_214CCF524();
    v26 = [objc_opt_self() mui_MailUIBundle];
    sub_214B1CFBC();
    v66 = v44;
    v67 = 31;
    v68 = 2;
    v28 = sub_214CCF5A4();
    v29 = v15;
    v64 = v28;
    v65 = v15;

    sub_214C38170(v28, v29);

    v39 = v28;
    v40 = v29;
    return v39;
  }

  __break(1u);
  return result;
}

uint64_t sub_214C3DAE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v14 = *a1;
  v15 = a1[1];
  v16 = *a2;
  v17 = a2[1];
  if (sub_214CCF664())
  {

    v11 = v16;
    v12 = v17;
  }

  else
  {
    v3 = sub_214CCF614();
    v7 = MEMORY[0x21605D8B0](v14, v15, v3);
    v8 = v4;

    v9 = MEMORY[0x21605D8B0](v7, v8, v16, v17);
    v10 = v5;

    result = v9;
    v11 = v9;
    v12 = v10;
  }

  *a3 = v11;
  a3[1] = v12;
  return result;
}

void sub_214C3DC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a1;
  v68 = a2;
  v72 = a3;
  v69 = sub_214B59DF0;
  v73 = sub_214B59DF0;
  v75 = sub_214C43164;
  v77 = sub_214B21624;
  v79 = sub_214C4333C;
  v81 = sub_214A7E854;
  v86 = sub_214A7E578;
  v90 = sub_214A7E854;
  v92 = sub_214A662DC;
  v94 = sub_214A662DC;
  v96 = sub_214B217B4;
  v98 = sub_214A662DC;
  v100 = sub_214A662DC;
  v102 = sub_214A7E40C;
  v104 = sub_214A662DC;
  v106 = sub_214A662DC;
  v109 = sub_214A7E40C;
  v124 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v61 = 0;
  v62 = sub_214CCDA74();
  v65 = *(v62 - 8);
  v63 = v62 - 8;
  v3 = MEMORY[0x28223BE20](v67);
  v66 = &v44 - v4;
  v124 = v5;
  v123 = v6;
  v122 = v72;
  v121 = v64;
  (*(v65 + 16))(&v44 - v4, v64 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_logger, v3);
  MEMORY[0x277D82BE0](v67);
  v71 = 24;
  v88 = 7;
  v76 = swift_allocObject();
  *(v76 + 16) = v67;
  v70 = swift_allocObject();
  *(v70 + 16) = v68;

  v87 = 32;
  v7 = swift_allocObject();
  v8 = v70;
  v80 = v7;
  *(v7 + 16) = v69;
  *(v7 + 24) = v8;

  v74 = swift_allocObject();
  *(v74 + 16) = v72;

  v9 = swift_allocObject();
  v10 = v74;
  v89 = v9;
  *(v9 + 16) = v73;
  *(v9 + 24) = v10;

  v113 = sub_214CCDA54();
  v114 = sub_214CCFBB4();
  v84 = 17;
  v93 = swift_allocObject();
  *(v93 + 16) = 64;
  v95 = swift_allocObject();
  v85 = 8;
  *(v95 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v76;
  v78 = v11;
  *(v11 + 16) = v75;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v78;
  v97 = v13;
  *(v13 + 16) = v77;
  *(v13 + 24) = v14;
  v99 = swift_allocObject();
  v83 = 32;
  *(v99 + 16) = 32;
  v101 = swift_allocObject();
  *(v101 + 16) = v85;
  v15 = swift_allocObject();
  v16 = v80;
  v82 = v15;
  *(v15 + 16) = v79;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v82;
  v103 = v17;
  *(v17 + 16) = v81;
  *(v17 + 24) = v18;
  v105 = swift_allocObject();
  *(v105 + 16) = v83;
  v107 = swift_allocObject();
  *(v107 + 16) = v85;
  v19 = swift_allocObject();
  v20 = v89;
  v91 = v19;
  *(v19 + 16) = v86;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v91;
  v110 = v21;
  *(v21 + 16) = v90;
  *(v21 + 24) = v22;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v108 = sub_214CD03C4();
  v111 = v23;

  v24 = v93;
  v25 = v111;
  *v111 = v92;
  v25[1] = v24;

  v26 = v95;
  v27 = v111;
  v111[2] = v94;
  v27[3] = v26;

  v28 = v97;
  v29 = v111;
  v111[4] = v96;
  v29[5] = v28;

  v30 = v99;
  v31 = v111;
  v111[6] = v98;
  v31[7] = v30;

  v32 = v101;
  v33 = v111;
  v111[8] = v100;
  v33[9] = v32;

  v34 = v103;
  v35 = v111;
  v111[10] = v102;
  v35[11] = v34;

  v36 = v105;
  v37 = v111;
  v111[12] = v104;
  v37[13] = v36;

  v38 = v107;
  v39 = v111;
  v111[14] = v106;
  v39[15] = v38;

  v40 = v110;
  v41 = v111;
  v111[16] = v109;
  v41[17] = v40;
  sub_214A63280();

  if (os_log_type_enabled(v113, v114))
  {
    v42 = v61;
    v54 = sub_214CCFF24();
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v55 = sub_214A632C4(1);
    v56 = sub_214A632C4(2);
    v57 = &v119;
    v119 = v54;
    v58 = &v118;
    v118 = v55;
    v59 = &v117;
    v117 = v56;
    sub_214A6627C(2, &v119);
    sub_214A6627C(3, v57);
    v115 = v92;
    v116 = v93;
    sub_214A66290(&v115, v57, v58, v59);
    v60 = v42;
    if (v42)
    {

      __break(1u);
    }

    else
    {
      v115 = v94;
      v116 = v95;
      sub_214A66290(&v115, &v119, &v118, &v117);
      v52 = 0;
      v115 = v96;
      v116 = v97;
      sub_214A66290(&v115, &v119, &v118, &v117);
      v51 = 0;
      v115 = v98;
      v116 = v99;
      sub_214A66290(&v115, &v119, &v118, &v117);
      v50 = 0;
      v115 = v100;
      v116 = v101;
      sub_214A66290(&v115, &v119, &v118, &v117);
      v49 = 0;
      v115 = v102;
      v116 = v103;
      sub_214A66290(&v115, &v119, &v118, &v117);
      v48 = 0;
      v115 = v104;
      v116 = v105;
      sub_214A66290(&v115, &v119, &v118, &v117);
      v47 = 0;
      v115 = v106;
      v116 = v107;
      sub_214A66290(&v115, &v119, &v118, &v117);
      v46 = 0;
      v115 = v109;
      v116 = v110;
      sub_214A66290(&v115, &v119, &v118, &v117);
      _os_log_impl(&dword_214A5E000, v113, v114, "Providing highlights feedback for objectID: %@, type: %s, feature: %s", v54, 0x20u);
      sub_214A669DC(v55);
      sub_214A669DC(v56);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v43 = MEMORY[0x277D82BD8](v113);
  (*(v65 + 8))(v66, v62, v43);
  v120 = sub_214C37CBC();
  if (v120)
  {
    v44 = &v120;
    v45 = v120;
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_getObjectType();
    [v45 highlightedMessagesViewDidProvideFeedbackForMessage:v67 feedbackType:v68 feedbackFeature:v72];
    swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
  }
}

id sub_214C3EA58(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_214C40080())
  {

    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = sub_214C3FD58(a1, sub_214C43418, v8);

    return v9;
  }

  else
  {
    v4 = [a1 messageListItem];
    swift_getObjectType();
    v6 = [v4 senderList];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
    v5 = sub_214CCF7E4();
    swift_unknownObjectRelease();
    v7 = sub_214C3EFB0(v5, a2, a3);

    MEMORY[0x277D82BD8](v6);
    return v7;
  }
}

double sub_214C3EBEC(uint64_t a1, void (*a2)(void))
{
  MEMORY[0x277D82BE0](a1);

  sub_214BE4D58();
  sub_214CD03C4();
  if (a1)
  {
    v4 = v2;
    MEMORY[0x277D82BE0](a1);
    *v4 = a1;
    sub_214A63280();
    a2();

    *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  }

  else
  {
    a2();
  }

  return result;
}

id sub_214C3ED40(void (*a1)(void), uint64_t a2)
{
  if (sub_214C40080())
  {
    return sub_214C3F5C8(a1, a2);
  }

  sub_214C40140();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
  sub_214CCD5B4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA377E8);
  sub_214C43424();
  sub_214CCFA84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA377F8);
  sub_214C434AC();
  v4 = sub_214CCF8F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EB0);
  sub_214B110B8();
  if (sub_214CCFA94())
  {

    sub_214BE4D58();
    sub_214CD03C4();
    a1();

    return 0;
  }

  else
  {
    v3 = sub_214C3EFB0(v4, a1, a2);

    return v3;
  }
}

id sub_214C3EFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v36 = a2;
  v37 = a3;
  v35 = v3;
  v8 = sub_214C37E10();
  v12 = [v8 cnStore];
  MEMORY[0x277D82BD8](v8);
  v11 = [objc_opt_self() globalAsyncSchedulerWithQualityOfService_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
  v10 = sub_214CCF7D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37808);
  sub_214CD03C4();
  *v4 = [objc_opt_self() descriptorForRequiredKeys];
  sub_214A63280();
  v9 = sub_214CCF7D4();

  v19 = [v12 em:v11 contactsFutureOnScheduler:v10 forEmailAddresses:v9 keysToFetch:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v12);
  v34 = v19;
  v14 = [objc_opt_self() 0x1FB5BCEF8];

  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v32 = sub_214C43534;
  v33 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v28 = 1107296256;
  v29 = 0;
  v30 = sub_214B100BC;
  v31 = &block_descriptor_211;
  v13 = _Block_copy(&aBlock);

  [v19 onScheduler:v14 addSuccessBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
  v18 = [objc_opt_self() 0x1FB5BCEF8];

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v25 = sub_214C435A4;
  v26 = v6;
  v20 = MEMORY[0x277D85DD0];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_214C18604;
  v24 = &block_descriptor_217;
  v17 = _Block_copy(&v20);

  [v19 onScheduler:v18 addFailureBlock:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_214C3F3B4(uint64_t a1, void (*a2)(void))
{
  MEMORY[0x277D82BE0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37870);
  MEMORY[0x277D82BE0](a1);
  sub_214C442FC();
  sub_214CD04A4();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](a1);
  if (v6)
  {
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    (a2)(v3);
  }

  else
  {
    sub_214BE4D58();
    sub_214CD03C4();
    a2();
  }
}

uint64_t sub_214C3F53C(uint64_t a1, void (*a2)(void))
{

  sub_214BE4D58();
  sub_214CD03C4();
  a2();
}

id sub_214C3F5C8(void (*a1)(void), uint64_t a2)
{
  v25 = 0;
  v26 = a1;
  v27 = a2;
  sub_214C408DC();
  v12 = sub_214C40538();

  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  sub_214C43614();
  sub_214CCFA84();
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  type metadata accessor for MUIHighlightedMessage();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37818);
  sub_214C4369C();
  v15 = sub_214CCF8F4();
  v14[1] = v15;
  if (sub_214CCFA94())
  {

    sub_214BE4D58();
    sub_214CD03C4();
    a1();

    return 0;
  }

  else
  {
    v14[0] = sub_214C37F88();
    v9 = v14[0] != 0;
    sub_214A671E8(v14);
    if (v9)
    {
      sub_214C43724();
      v2 = sub_214CCF614();
      v8 = sub_214C3FA00(v2, v3);

      sub_214CCFAC4();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37830);
        sub_214CD01B4();
        if (!v13)
        {
          break;
        }

        v7 = swift_allocObject();

        swift_weakInit();

        (MEMORY[0x277D82BE0])();
        v6 = swift_allocObject();
        v6[2] = v7;
        v6[3] = a1;
        v6[4] = a2;
        v6[5] = v13;
        sub_214C3FD58(v13, sub_214C43788, v6);

        [v8 addCancelable_];
        swift_unknownObjectRelease();
        (MEMORY[0x277D82BD8])();
      }

      sub_214A62278();

      return v8;
    }

    else
    {

      sub_214BE4D58();
      sub_214CD03C4();
      a1();

      return 0;
    }
  }
}

uint64_t sub_214C3FA48(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v17 = 0;
  v16 = 0;
  v22 = a1;
  v21 = a2 + 16;
  v19 = a3;
  v20 = a4;
  v18 = a5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v17 = Strong;
    *&v6 = MEMORY[0x277D82BE0](a1).n128_u64[0];
    if (a1)
    {
      v16 = a1;
      v7 = [a5 messageListItem];
      swift_getObjectType();
      v8 = [v7 itemID];
      swift_unknownObjectRelease();
      CollectionItemID.init(itemID:)(v8, &v15);
      swift_unknownObjectRetain();
      MEMORY[0x277D82BE0](a1);
      v9 = sub_214C38508();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37858);
      sub_214CCF3E4();
      v9();

      sub_214C3841C();
      sub_214BE4D58();
      sub_214B5B098();
      sub_214CCF364();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37860);
      sub_214C44274();
      v10 = sub_214CCF8F4();

      (a3)(v10);

      swift_unknownObjectRelease();
      MEMORY[0x277D82BD8](a1);
    }

    else
    {

      sub_214BE4D58();
      sub_214CD03C4();
      a3();
    }
  }

  return result;
}

uint64_t sub_214C3FD58(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = 0;
  v21 = 0;
  v26 = a1;
  v24 = a2;
  v25 = a3;
  v23 = v3;
  v13 = sub_214C37F88();
  if (v13)
  {
    v22 = v13;
    sub_214C4379C();
    v4 = [a1 messageListItem];
    v8 = sub_214C3FFA0();
    v21 = v8;

    v5 = swift_allocObject();
    *(v5 + 16) = a2;
    *(v5 + 24) = a3;
    v19 = sub_214C43800;
    v20 = v5;
    aBlock = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = 0;
    v17 = sub_214B673A0;
    v18 = &block_descriptor_227;
    v7 = _Block_copy(&aBlock);

    v9 = [v13 contactForContext:v8 handler:v7];
    _Block_release(v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v13);
    return v9;
  }

  else
  {
    sub_214CCF614();
    result = sub_214CD0204();
    __break(1u);
  }

  return result;
}

uint64_t sub_214C3FFE0(void *a1, uint64_t a2, void (*a3)(void))
{

  v6 = [a1 contact];
  a3();
  MEMORY[0x277D82BD8](v6);
}

BOOL sub_214C40080()
{
  v4[1] = 0;
  IsFeatureEnabled = EMBlackPearlIsFeatureEnabled();

  if (IsFeatureEnabled)
  {
    v4[0] = sub_214C37F88();
    v2 = v4[0] != 0;
    sub_214A671E8(v4);
    v1 = v2;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_214C40140()
{
  v8 = sub_214C38278();
  if (v0)
  {
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35CB0);
  v11 = sub_214CCD5C4();
  v12 = v1;
  v13 = v2;
  sub_214C408DC();
  sub_214C40538();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  sub_214C43614();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37830);
    sub_214CD01B4();
    if (!v10)
    {
      break;
    }

    v6 = [v10 messageListItem];
    swift_getObjectType();
    v5 = [v6 senderList];
    sub_214CCF7E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EB0);
    sub_214B110B8();
    sub_214CCFA74();

    if (v9)
    {
      v4 = [v10 sender];
      sub_214CCF564();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37840);
      sub_214CCD5D4();
      MEMORY[0x277D82BD8](v4);
      swift_unknownObjectRelease();
    }

    else
    {
      MEMORY[0x277D82BD8](v5);
    }

    (MEMORY[0x277D82BD8])();
  }

  sub_214A62278();

  sub_214C382F8(v11, v12, v13);

  sub_214B0B504();
  return v11;
}

uint64_t sub_214C40538()
{
  sub_214CCF2D4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  sub_214C4389C();
  v1 = sub_214CD0154();
  sub_214A62278();
  return v1;
}

uint64_t sub_214C40630(id *a1)
{
  v4 = *a1;

  v5 = [v4 sender];
  sub_214CCF564();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B22E9C();
  v6 = sub_214CCF784();
  sub_214A61B48();
  MEMORY[0x277D82BD8](v5);
  sub_214A62278();
  if (v6)
  {
    v3 = 0;
  }

  else
  {
    v2 = [v4 sender];
    sub_214CCF564();
    sub_214CCF884();
    MEMORY[0x277D82BD8](v2);
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_214C407A0()
{
  if (sub_214C34920())
  {
    return sub_214C338C8();
  }

  else
  {
    return sub_214C410EC();
  }
}

uint64_t sub_214C40804()
{
  if (sub_214C34920())
  {
    return 0;
  }

  sub_214C338C8();
  type metadata accessor for MUIHighlightedMessage();
  v3 = sub_214CCF854();

  result = v3;
  if (!__OFSUB__(v3, 4))
  {
    if (v3 - 4 < 0)
    {
      return 0;
    }

    else
    {
      return v3 - 4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214C408DC()
{
  sub_214C338C8();
  type metadata accessor for MUIHighlightedMessage();
  v3 = sub_214CCF854();

  result = v3;
  if (__OFSUB__(v3, 4))
  {
    __break(1u);
  }

  else
  {
    if (v3 - 4 <= 0)
    {
      return sub_214CD03C4();
    }

    sub_214C338C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
    sub_214C43614();
    sub_214CCFAA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37818);
    sub_214C4369C();
    return sub_214CCF8F4();
  }

  return result;
}

uint64_t sub_214C40A34()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__cellLayoutValues);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214C40AA4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__cellLayoutValues);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  sub_214C3B71C();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

void *(*sub_214C40B44(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214C3B91C;
}

uint64_t sub_214C40BB4()
{
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  return sub_214C40A34();
}

uint64_t sub_214C40C0C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_214C40BB4();
}

uint64_t sub_214C40C68(void *a1)
{
  v2 = *a1;
  MEMORY[0x277D82BE0](*a1);

  sub_214C38F34(v2);
}

void (*sub_214C40D48(void *a1))(uint64_t *a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v8;
  v8[5] = v1;
  v7 = sub_214CCD464();
  v5 = *(v7 - 8);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v8[6] = v6;
  KeyPath = swift_getKeyPath();
  sub_214C41900(KeyPath);

  (*(v5 + 16))(v6, v4 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v7);
  v8[4] = v4;
  swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD444();

  (*(v5 + 8))(v6, v7);
  v8[7] = sub_214C40B44(v8);
  return sub_214C40EF4;
}

void sub_214C40EF4(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C40FB0(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_214C40FB0(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_214C40FB0(uint64_t a1)
{
  v5 = a1;
  v13 = 0;
  v11 = sub_214CCD464();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x28223BE20](v11);
  v10 = &v3 - v4;
  v13 = v5;
  (*(v8 + 16))(&v3 - v4, v5 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v6 = &v12;
  v12 = v5;
  KeyPath = swift_getKeyPath();
  sub_214C2B5B8();
  sub_214CCD434();

  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_214C410EC()
{
  sub_214C338C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37690);
  sub_214C43614();
  sub_214CCFA84();
  type metadata accessor for MUIHighlightedMessage();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37818);
  sub_214C4369C();
  return sub_214CCF8F4();
}

BOOL sub_214C411C0(uint64_t a1)
{
  v6 = a1;
  v13 = 0;
  v12 = 0;
  v9 = sub_214CCE514();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v10 = &v4 - v5;
  v13 = v6;
  v12 = v1;
  (*(v7 + 104))(v2);
  v11 = sub_214C412D4(v6, v10);
  (*(v7 + 8))(v10, v9);
  return v11;
}

BOOL sub_214C412D4(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  v19 = sub_214CCE514();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v12 = *(v17 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v13 = &v4 - v11;
  v14 = v11;
  v2 = MEMORY[0x28223BE20](&v4 - v11);
  v20 = &v4 - v14;
  v15 = *(v17 + 16);
  v16 = v17 + 16;
  v15(v2);
  v21 = *(v17 + 88);
  v22 = v17 + 88;
  v23 = v21(v20, v19);
  if (v23 == *MEMORY[0x277CE0268])
  {
    v8 = 0;
  }

  else if (v23 == *MEMORY[0x277CE0298])
  {
    v8 = 1;
  }

  else if (v23 == *MEMORY[0x277CE02A0])
  {
    v8 = 2;
  }

  else if (v23 == *MEMORY[0x277CE0290])
  {
    v8 = 3;
  }

  else if (v23 == *MEMORY[0x277CE0260])
  {
    v8 = 4;
  }

  else if (v23 == *MEMORY[0x277CE0270])
  {
    v8 = 5;
  }

  else if (v23 == *MEMORY[0x277CE0248])
  {
    v8 = 6;
  }

  else if (v23 == *MEMORY[0x277CE0280])
  {
    v8 = 7;
  }

  else if (v23 == *MEMORY[0x277CE0278])
  {
    v8 = 8;
  }

  else if (v23 == *MEMORY[0x277CE0288])
  {
    v8 = 9;
  }

  else if (v23 == *MEMORY[0x277CE0250])
  {
    v8 = 10;
  }

  else if (v23 == *MEMORY[0x277CE0258])
  {
    v8 = 11;
  }

  else
  {
    (*(v17 + 8))(v20, v19);
    v8 = 3;
  }

  v6 = v8;
  (v15)(v13, v9, v19);
  v7 = v21(v13, v19);
  if (v7 == *MEMORY[0x277CE0268])
  {
    v5 = 0;
  }

  else if (v7 == *MEMORY[0x277CE0298])
  {
    v5 = 1;
  }

  else if (v7 == *MEMORY[0x277CE02A0])
  {
    v5 = 2;
  }

  else if (v7 == *MEMORY[0x277CE0290])
  {
    v5 = 3;
  }

  else if (v7 == *MEMORY[0x277CE0260])
  {
    v5 = 4;
  }

  else if (v7 == *MEMORY[0x277CE0270])
  {
    v5 = 5;
  }

  else if (v7 == *MEMORY[0x277CE0248])
  {
    v5 = 6;
  }

  else if (v7 == *MEMORY[0x277CE0280])
  {
    v5 = 7;
  }

  else if (v7 == *MEMORY[0x277CE0278])
  {
    v5 = 8;
  }

  else if (v7 == *MEMORY[0x277CE0288])
  {
    v5 = 9;
  }

  else if (v7 == *MEMORY[0x277CE0250])
  {
    v5 = 10;
  }

  else if (v7 == *MEMORY[0x277CE0258])
  {
    v5 = 11;
  }

  else
  {
    (*(v17 + 8))(v13, v19);
    v5 = 3;
  }

  return v6 < v5;
}

uint64_t sub_214C4188C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar;
  v2 = sub_214CCD464();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_214C41900(void *a1)
{
  v7 = a1;
  v16 = 0;
  v14 = 0;
  v5 = *a1;
  v12 = sub_214CCD464();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v1 = MEMORY[0x28223BE20](v7);
  v11 = &v5 - v2;
  v16 = v3;
  v15 = *(v5 + *MEMORY[0x277D84DE8] + 8);
  v14 = v6;
  (*(v9 + 16))(&v5 - v2, v6 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v1);
  v8 = &v13;
  v13 = v6;
  sub_214C2B5B8();
  sub_214CCD424();
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_214C41A70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v33 = a4;
  v14 = *a1;
  v12 = sub_214CCD464();
  v15 = *(v12 - 8);
  v13 = v12 - 8;
  v5 = MEMORY[0x28223BE20](v19);
  v16 = v11 - v6;
  v32 = v7;
  v31 = *(v14 + *MEMORY[0x277D84DE8] + 8);
  v29 = v8;
  v30 = v21;
  v28 = v17;
  (*(v15 + 16))(v11 - v6, v17 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar, v5);
  v24 = &v27;
  v27 = v17;
  sub_214C2B5B8();
  v9 = v23;
  sub_214CCD414();
  v25 = v9;
  v26 = v9;
  if (v9)
  {
    v11[1] = v26;
  }

  return (*(v15 + 8))(v16, v12);
}

uint64_t MUIHighlightedMessagesViewModel.deinit()
{
  v4 = OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_logger;
  v1 = sub_214CCDA74();
  (*(*(v1 - 8) + 8))(v0 + v4);
  sub_214A62278();
  sub_214A62278();
  sub_214C14F3C((v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__layoutValues));
  MEMORY[0x277D82BD8](*(v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__messageListFont));
  MEMORY[0x277D82BD8](*(v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__headerTextFont));
  MEMORY[0x277D82BD8](*(v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__footerTextFont));
  sub_214A759F4();
  MEMORY[0x277D82BD8](*(v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_contactStore));
  sub_214A671E8((v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_avatarGenerator));
  sub_214A61B48();
  sub_214C43924(v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel_cachedBelowLineMessagesWithAddresses);
  sub_214A62278();
  MEMORY[0x277D82BD8](*(v0 + OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel__cellLayoutValues));
  v5 = OBJC_IVAR____TtC6MailUI31MUIHighlightedMessagesViewModel___observationRegistrar;
  v2 = sub_214CCD464();
  (*(*(v2 - 8) + 8))(v0 + v5);
  return v6;
}

uint64_t sub_214C41ECC()
{
  sub_214CCF614();

  v1 = sub_214CCF544();
  MEMORY[0x277D82BE0](v1);

  MEMORY[0x277D82BD8](v1);
  result = v1;
  qword_280C83690 = v1;
  return result;
}

uint64_t sub_214C41F5C()
{
  v0 = sub_214C33528();
  v2 = *v0;
  MEMORY[0x277D82BE0](*v0);
  return v2;
}

void *sub_214C41FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  __src[0] = a1;
  *&__src[1] = a3;
  *&__src[2] = a4;
  *&__src[3] = a5;
  *&__src[4] = a6;
  __src[5] = 28.0;
  __src[6] = sub_214CCEEA4();
  __src[7] = 10.0;
  __src[8] = 13.0;
  __src[9] = 0;
  return memcpy(a2, __src, 0x50uLL);
}

uint64_t sub_214C42084@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t sub_214C420A4()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_214C420E0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_214CCE6F4();
  *a2 = v2;
  *(a2 + 1) = v3;
  *(a2 + 2) = v4;
  *(a2 + 3) = v5;
  v9 = *(sub_214CCE7B4() + 20);
  v6 = sub_214CCE4D4();
  return (*(*(v6 - 8) + 32))(&a2[v9], a1);
}

unint64_t sub_214C42184()
{
  v2 = qword_27CA37698;
  if (!qword_27CA37698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37690);
    sub_214C4221C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C4221C()
{
  v2 = qword_27CA376A0;
  if (!qword_27CA376A0)
  {
    type metadata accessor for MUIHighlightedMessage();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA376A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for MUIHighlightedMessagesViewModel()
{
  v1 = qword_280C7D938;
  if (!qword_280C7D938)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

__n128 sub_214C42398(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v3;
  *(a2 + 8) = *(a1 + 1);
  *(a2 + 24) = *(a1 + 3);
  v4 = a1[5];
  MEMORY[0x277D82BE0](v4);
  *(a2 + 40) = v4;
  *(a2 + 48) = *(a1 + 3);
  *(a2 + 64) = *(a1 + 4);
  *(a2 + 80) = a1[10];
  v5 = a1[11];

  *(a2 + 88) = v5;
  *(a2 + 96) = a1[12];
  *(a2 + 104) = a1[13];
  *(a2 + 112) = a1[14];
  v6 = a1[15];
  MEMORY[0x277D82BE0](v6);
  *(a2 + 120) = v6;
  *(a2 + 128) = *(a1 + 8);
  result = *(a1 + 9);
  *(a2 + 144) = result;
  return result;
}

double sub_214C42494(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = v2;
  MEMORY[0x277D82BD8](v3);
  a2[1] = a1[1];
  a2[2] = a1[2];
  a2[3] = a1[3];
  a2[4] = a1[4];
  v4 = *(a2 + 5);
  a2[5] = a1[5];
  MEMORY[0x277D82BD8](v4);
  a2[6] = a1[6];
  a2[7] = a1[7];
  a2[8] = a1[8];
  a2[9] = a1[9];
  a2[10] = a1[10];
  a2[11] = a1[11];

  a2[12] = a1[12];
  a2[13] = a1[13];
  a2[14] = a1[14];
  v5 = *(a2 + 15);
  a2[15] = a1[15];
  MEMORY[0x277D82BD8](v5);
  a2[16] = a1[16];
  a2[17] = a1[17];
  a2[18] = a1[18];
  result = a1[19];
  a2[19] = result;
  return result;
}

unint64_t sub_214C4260C()
{
  v2 = qword_27CA376C8;
  if (!qword_27CA376C8)
  {
    sub_214BD1F48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA376C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C42710(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_214C42764(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_214C427C0()
{
  v2 = qword_27CA376F8;
  if (!qword_27CA376F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA376F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C42824()
{
  v2 = qword_27CA37700;
  if (!qword_27CA37700)
  {
    sub_214C427C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C428D0()
{
  v2 = qword_27CA37708;
  if (!qword_27CA37708)
  {
    type metadata accessor for NSDirectionalEdgeInsets();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37708);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C42988()
{
  v2 = qword_280C7CE08;
  if (!qword_280C7CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C42A10()
{
  v2 = qword_27CA37720;
  if (!qword_27CA37720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA36FF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37720);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C42AA0()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA37660);
  __swift_project_value_buffer(v1, qword_27CA37660);
  return sub_214C42AEC();
}

uint64_t sub_214C42AEC()
{
  sub_214A619A8();

  sub_214CCF614();
  return sub_214CCDA64();
}

uint64_t sub_214C42B58()
{
  if (qword_27CA34080 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA37660);
}

uint64_t static Logger.highlightedMessagesLogger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C42B58();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

id sub_214C42C28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = sub_214CCF544();

    v2 = [v7 initWithLabel_];
  }

  else
  {
    v2 = [v7 initWithLabel_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id sub_214C42CD8()
{
  v2 = [v0 initWithMessageListItem_];
  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_214C42D20()
{
  v2 = qword_27CA37738;
  if (!qword_27CA37738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37730);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C42DA8()
{
  v2 = qword_27CA37740;
  if (!qword_27CA37740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37728);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37740);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C42E30()
{
  v2 = qword_27CA37750;
  if (!qword_27CA37750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37748);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37750);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C42EB8()
{
  v2 = qword_27CA37758;
  if (!qword_27CA37758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37728);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C42F40()
{
  v2 = qword_27CA37768;
  if (!qword_27CA37768)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C42FC0()
{
  v2 = qword_27CA37780;
  if (!qword_27CA37780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37780);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C43048()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37728);
  v1 = sub_214C430B0();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

unint64_t sub_214C430B0()
{
  v2 = qword_27CA37788;
  if (!qword_27CA37788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37728);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C4316C()
{
  v2 = qword_27CA377A0;
  if (!qword_27CA377A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37798);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA377A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C4322C()
{
  v2 = qword_27CA377B8;
  if (!qword_27CA377B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA377B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA377B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C432B4()
{
  v2 = qword_27CA377C8;
  if (!qword_27CA377C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA377C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA377C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C4333C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for MUICatchUpFeedbackType();
  v1 = sub_214C43398();

  return sub_214A7E8F0(v5, v3, v4, v1);
}

unint64_t sub_214C43398()
{
  v2 = qword_27CA377D8;
  if (!qword_27CA377D8)
  {
    type metadata accessor for MUICatchUpFeedbackType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA377D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C43424()
{
  v2 = qword_27CA377F0;
  if (!qword_27CA377F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA377E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA377F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C434AC()
{
  v2 = qword_27CA37800;
  if (!qword_27CA37800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA377F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37800);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_209(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_215(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214C43614()
{
  v2 = qword_27CA37810;
  if (!qword_27CA37810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37810);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C4369C()
{
  v2 = qword_27CA37820;
  if (!qword_27CA37820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37818);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C43724()
{
  v2 = qword_27CA37828;
  if (!qword_27CA37828)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA37828);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214C4379C()
{
  v2 = qword_27CA37838;
  if (!qword_27CA37838)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA37838);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_225(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214C4389C()
{
  v2 = qword_27CA37848;
  if (!qword_27CA37848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37848);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C43924(uint64_t a1)
{
  if (*(a1 + 8))
  {
  }

  return a1;
}

uint64_t sub_214C43998()
{
  updated = sub_214CCDA74();
  if (v0 <= 0x3F)
  {
    updated = sub_214CCD464();
    if (v1 <= 0x3F)
    {
      updated = swift_updateClassMetadata2();
      if (!updated)
      {
        return 0;
      }
    }
  }

  return updated;
}

uint64_t sub_214C43BF4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
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

void *sub_214C43D0C(void *result, int a2, int a3)
{
  v3 = result + 20;
  if (a2 < 0)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *result = (a2 - 1);
    }
  }

  return result;
}

uint64_t sub_214C43F4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
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

uint64_t sub_214C44064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_214C44274()
{
  v2 = qword_27CA37868;
  if (!qword_27CA37868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37860);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37868);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214C442FC()
{
  v2 = qword_27CA37878;
  if (!qword_27CA37878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA37870);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37878);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C44384()
{
  v2 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C443EC(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214C444B4()
{
  if (EMMailCleanupIsFeatureEnabled())
  {
    sub_214CCD6D4();
    v1 = sub_214CCD5F4();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL sub_214C44620(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_214C44874()
{
  v2 = qword_27CA37888;
  if (!qword_27CA37888)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37888);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C4497C()
{
  v1 = sub_214CCDA74();
  __swift_allocate_value_buffer(v1, qword_27CA3EF58);
  __swift_project_value_buffer(v1, qword_27CA3EF58);
  type metadata accessor for MUIiCloudMailCleanupService();
  return static Logger.mailUILogger<A>(for:)();
}

unint64_t type metadata accessor for MUIiCloudMailCleanupService()
{
  v2 = qword_27CA378B0;
  if (!qword_27CA378B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA378B0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_214C44A48()
{
  if (qword_27CA34088 != -1)
  {
    swift_once();
  }

  v0 = sub_214CCDA74();
  return __swift_project_value_buffer(v0, qword_27CA3EF58);
}

uint64_t sub_214C44AB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_214C44A48();
  v1 = sub_214CCDA74();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_214C44B20()
{
  result = sub_214CCF614();
  qword_27CA3EF70 = result;
  qword_27CA3EF78 = v1;
  return result;
}

uint64_t *sub_214C44B64()
{
  if (qword_27CA34090 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EF70;
}

uint64_t sub_214C44BC4()
{
  v1 = *sub_214C44B64();

  return v1;
}

uint64_t sub_214C44C08()
{
  result = sub_214CCF614();
  qword_27CA3EF80 = result;
  qword_27CA3EF88 = v1;
  return result;
}

uint64_t *sub_214C44C4C()
{
  if (qword_27CA34098 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EF80;
}

uint64_t sub_214C44CAC()
{
  v1 = *sub_214C44C4C();

  return v1;
}

char *sub_214C44D1C()
{
  swift_getObjectType();
  v20 = v0;
  *&v0[OBJC_IVAR___MUIiCloudMailCleanupService_provider] = 0;
  v18 = [objc_opt_self() defaultStore];
  if (!v18)
  {
    goto LABEL_17;
  }

  v1 = [objc_opt_self() defaultStore];
  if (v1)
  {
    v17 = v1;
  }

  else
  {
    LOBYTE(v5) = 2;
    v6 = 53;
    LODWORD(v7) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v16 = [v17 aa_primaryAppleAccount];
  MEMORY[0x277D82BD8](v17);
  if (!v16)
  {
    MEMORY[0x277D82BD8](v18);
LABEL_17:
    v9 = &v20[OBJC_IVAR___MUIiCloudMailCleanupService_provider];
    swift_beginAccess();
    *v9 = 0;

    swift_endAccess();
    goto LABEL_18;
  }

  v14 = *MEMORY[0x277CB89C8];
  v15 = [v16 isEnabledForDataclass_];
  MEMORY[0x277D82BD8](v14);
  v2 = [swift_getObjCClassFromMetadata() isFeatureAvailable];
  if (v2)
  {
    v13 = v15;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    sub_214CCD6D4();
    MEMORY[0x277D82BE0](v16);
    MEMORY[0x277D82BE0](v18);
    v12 = sub_214CCD634();
    v11 = &v20[OBJC_IVAR___MUIiCloudMailCleanupService_provider];
    swift_beginAccess();
    *v11 = v12;
  }

  else
  {
    v10 = &v20[OBJC_IVAR___MUIiCloudMailCleanupService_provider];
    swift_beginAccess();
    *v10 = 0;
  }

  swift_endAccess();
  MEMORY[0x277D82BD8](v16);
  *&v3 = MEMORY[0x277D82BD8](v18).n128_u64[0];
LABEL_18:
  v19.receiver = v20;
  v19.super_class = MUIiCloudMailCleanupService;
  v8 = objc_msgSendSuper2(&v19, sel_init, v3);
  MEMORY[0x277D82BE0](v8);
  v20 = v8;
  MEMORY[0x277D82BD8](v8);
  return v8;
}

char *MUIiCloudMailCleanupService.init(provider:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  MEMORY[0x277D82BE0](v4);

  v2 = &v4[OBJC_IVAR___MUIiCloudMailCleanupService_provider];
  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();

  MEMORY[0x277D82BD8](v4);
  return v4;
}

Swift::Void __swiftcall MUIiCloudMailCleanupService.prepare()()
{
  v12 = 0;
  v11 = &unk_214CF49F0;
  v20 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v13 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v14 = &v6 - v13;
  v20 = v0;
  v15 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  v16 = &v19;
  swift_beginAccess();
  v17 = *v15;

  swift_endAccess();
  v18 = v17;
  v9 = v17 != 0;
  v8 = v9;
  sub_214A75F80();
  if (v8)
  {
    v6 = 0;
    v2 = sub_214CCF994();
    (*(*(v2 - 8) + 56))(v14, 1);
    MEMORY[0x277D82BE0](v10);
    v3 = swift_allocObject();
    v4 = v10;
    v7 = v3;
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36FB0);
    sub_214B88C30(v6, v6, v14, v11, v7, v5);
  }
}

uint64_t sub_214C453DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v4[7] = a1;
  v4[5] = v4;
  v4[6] = 0;
  v4[6] = a4;
  return MEMORY[0x2822009F8](sub_214C4541C, 0);
}

uint64_t sub_214C4541C()
{
  v7 = *(v0 + 64);
  *(v0 + 40) = v0;
  v8 = OBJC_IVAR___MUIiCloudMailCleanupService_provider;
  v9 = (v7 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  if (*v9)
  {
    v6[9] = *(v7 + v8);

    swift_endAccess();
    v4 = (MEMORY[0x277D7F208] + *MEMORY[0x277D7F208]);
    v2 = swift_task_alloc();
    v1 = v4;
    v6[10] = v2;
    *v2 = v6[5];
    v2[1] = sub_214C455C8;
  }

  else
  {
    v5 = v6[7];
    swift_endAccess();
    *v5 = 1;
    v1 = *(v6[5] + 8);
  }

  return v1();
}

uint64_t sub_214C455C8()
{
  *(*v0 + 40) = *v0;

  return MEMORY[0x2822009F8](sub_214C45700, 0);
}

uint64_t sub_214C45700()
{
  v1 = *(v0 + 56);
  *(v0 + 40) = v0;
  *v1 = 0;
  return (*(*(v0 + 40) + 8))();
}

uint64_t sub_214C45758(uint64_t a1)
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

  return sub_214C453DC(a1, v6, v7, v8);
}

uint64_t sub_214C458F8()
{
  v5 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  if (*v5)
  {

    swift_endAccess();
    v3 = sub_214CCD6A4();

    v4 = v3 & 1;
  }

  else
  {
    swift_endAccess();
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

uint64_t sub_214C45AA4()
{
  v7 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  if (*v7)
  {

    swift_endAccess();
    v3 = sub_214CCD614();
    v4 = v1;

    v5 = v3;
    v6 = v4;
  }

  else
  {
    swift_endAccess();
    v5 = 0;
    v6 = 0;
  }

  if (v6)
  {
    return v5;
  }

  else
  {
    return sub_214CCF614();
  }
}

char *MUIiCloudMailCleanupService.tip(forMailboxType:bucket:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v43 = a2;
  v44 = a3;
  v64 = 0;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v38 = sub_214CCD724();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v38);
  v42 = &v17 - v41;
  v64 = &v17 - v41;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37890) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v45);
  v47 = &v17 - v46;
  v48 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v49 = &v17 - v48;
  v63 = &v17 - v48;
  v61 = v6;
  v62 = v7;
  v60 = v8;
  v59 = v3;
  v50 = (v3 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  v51 = &v58;
  swift_beginAccess();
  v52 = *v50;

  swift_endAccess();
  if (!v52)
  {
    return 0;
  }

  v37 = v52;
  v34 = v52;
  v57 = v52;
  v36 = MUIStringFromBucket(v44);
  sub_214CCF564();
  v35 = v9;
  sub_214CCD694();

  MEMORY[0x277D82BD8](v36);
  sub_214C46114(v49, v47);
  if ((*(v39 + 48))(v47, 1, v38) == 1)
  {
    sub_214C4623C(v47);
LABEL_10:
    sub_214C4623C(v49);

    return 0;
  }

  (*(v39 + 32))(v42, v47, v38);
  v32 = sub_214CCD714();
  v33 = v10;
  if (!v10)
  {
    (*(v39 + 8))(v42, v38);
    goto LABEL_10;
  }

  v30 = v32;
  v31 = v33;
  v26 = v33;
  v27 = v32;
  v55 = v32;
  v56 = v33;
  v11 = sub_214CCD6E4();
  v28 = v11;
  v29 = v12;
  if (!v12)
  {

    (*(v39 + 8))(v42, v38);
    goto LABEL_10;
  }

  v24 = v28;
  v25 = v29;
  v19 = v29;
  v18 = v28;
  v53 = v28;
  v54 = v29;
  v17 = type metadata accessor for MUIMailCleanupTip();
  v20 = sub_214CCD6F4();
  v21 = v13;
  v14 = sub_214CCD704();
  v22 = MUIMailCleanupTip.__allocating_init(tipId:title:message:submitButtonLabel:)(v20, v21, v14, v15, v27, v26, v18, v19);
  (*(v39 + 8))(v42, v38);
  sub_214C4623C(v49);

  return v22;
}

void *sub_214C46114(const void *a1, void *a2)
{
  v6 = sub_214CCD724();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA37890);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214C4623C(uint64_t a1)
{
  v3 = sub_214CCD724();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t MUIiCloudMailCleanupService.acceptTip(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v38 = a3;
  v42 = a2;
  v41 = a1;
  v40 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v37 = 0;
  v52 = 0;
  v43 = sub_214CCDA74();
  v44 = *(v43 - 8);
  v45 = v44;
  v46 = *(v44 + 64);
  MEMORY[0x28223BE20](v41);
  v47 = v14 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v5;
  v62 = v6;
  v59 = v7;
  v60 = v8;
  v58 = v4;
  v48 = (v4 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  v50 = &v57;
  swift_beginAccess();
  v51 = *v48;
  v49 = v51;

  swift_endAccess();
  if (v51)
  {
    v36 = v49;
    v34 = v49;
    v52 = v49;

    sub_214CCD6C4();
    sub_214A6B584(v38);

    return v37;
  }

  else
  {
    v9 = v47;
    v10 = sub_214C44A48();
    (*(v45 + 16))(v9, v10, v43);
    v32 = sub_214CCDA54();
    v29 = v32;
    v31 = sub_214CCFBA4();
    v30 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v33 = sub_214CD03C4();
    if (os_log_type_enabled(v32, v31))
    {
      v11 = v37;
      v20 = sub_214CCFF24();
      v16 = v20;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v18 = 0;
      v21 = sub_214A632C4(0);
      v19 = v21;
      v22 = sub_214A632C4(v18);
      v56 = v20;
      v55 = v21;
      v54 = v22;
      v23 = 0;
      v24 = &v56;
      sub_214A6627C(0, &v56);
      sub_214A6627C(v23, v24);
      v53 = v33;
      v25 = v14;
      MEMORY[0x28223BE20](v14);
      v26 = &v14[-6];
      v14[-4] = v12;
      v14[-3] = &v55;
      v14[-2] = &v54;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v28 = v11;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v29, v30, "[MUIiCloudMailCleanupService] acceptTip - provider is not set", v16, 2u);
        v14[1] = 0;
        sub_214A669DC(v19);
        sub_214A669DC(v22);
        sub_214CCFF04();

        v15 = v28;
      }
    }

    else
    {

      v15 = v37;
    }

    v14[0] = v15;

    (*(v45 + 8))(v47, v43);
    return v14[0];
  }
}

Swift::Void __swiftcall MUIiCloudMailCleanupService.dismissTip(_:)(Swift::String a1)
{
  v34 = a1;
  v33 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v32 = 0;
  v43 = 0;
  v35 = sub_214CCDA74();
  v36 = *(v35 - 8);
  v37 = v36;
  MEMORY[0x28223BE20](v34._countAndFlagsBits);
  v38 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v3;
  v51 = v4;
  v49 = v1;
  v39 = (v1 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  v41 = &v48;
  swift_beginAccess();
  v42 = *v39;
  v40 = v42;

  swift_endAccess();
  if (v42)
  {
    v31 = v40;
    v29 = v40;
    v43 = v40;
    sub_214CCD604();

    v30 = v32;
  }

  else
  {
    v5 = v38;
    v6 = sub_214C44A48();
    (*(v37 + 16))(v5, v6, v35);
    v27 = sub_214CCDA54();
    v24 = v27;
    v26 = sub_214CCFBA4();
    v25 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v28 = sub_214CD03C4();
    if (os_log_type_enabled(v27, v26))
    {
      v7 = v32;
      v15 = sub_214CCFF24();
      v11 = v15;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v13 = 0;
      v16 = sub_214A632C4(0);
      v14 = v16;
      v17 = sub_214A632C4(v13);
      v47 = v15;
      v46 = v16;
      v45 = v17;
      v18 = 0;
      v19 = &v47;
      sub_214A6627C(0, &v47);
      sub_214A6627C(v18, v19);
      v44 = v28;
      v20 = v9;
      MEMORY[0x28223BE20](v9);
      v21 = &v9[-6];
      v9[-4] = v8;
      v9[-3] = &v46;
      v9[-2] = &v45;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v23 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v24, v25, "[MUIiCloudMailCleanupService] dismissTip - provider is nil", v11, 2u);
        v9[2] = 0;
        sub_214A669DC(v14);
        sub_214A669DC(v17);
        sub_214CCFF04();

        v10 = v23;
      }
    }

    else
    {

      v10 = v32;
    }

    v9[1] = v10;

    (*(v37 + 8))(v38, v35);
  }
}

Swift::Void __swiftcall MUIiCloudMailCleanupService.onAppearTip(_:)(Swift::String a1)
{
  v34 = a1;
  v33 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v32 = 0;
  v43 = 0;
  v35 = sub_214CCDA74();
  v36 = *(v35 - 8);
  v37 = v36;
  MEMORY[0x28223BE20](v34._countAndFlagsBits);
  v38 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v3;
  v51 = v4;
  v49 = v1;
  v39 = (v1 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  v41 = &v48;
  swift_beginAccess();
  v42 = *v39;
  v40 = v42;

  swift_endAccess();
  if (v42)
  {
    v31 = v40;
    v29 = v40;
    v43 = v40;
    sub_214CCD624();

    v30 = v32;
  }

  else
  {
    v5 = v38;
    v6 = sub_214C44A48();
    (*(v37 + 16))(v5, v6, v35);
    v27 = sub_214CCDA54();
    v24 = v27;
    v26 = sub_214CCFBA4();
    v25 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v28 = sub_214CD03C4();
    if (os_log_type_enabled(v27, v26))
    {
      v7 = v32;
      v15 = sub_214CCFF24();
      v11 = v15;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v13 = 0;
      v16 = sub_214A632C4(0);
      v14 = v16;
      v17 = sub_214A632C4(v13);
      v47 = v15;
      v46 = v16;
      v45 = v17;
      v18 = 0;
      v19 = &v47;
      sub_214A6627C(0, &v47);
      sub_214A6627C(v18, v19);
      v44 = v28;
      v20 = v9;
      MEMORY[0x28223BE20](v9);
      v21 = &v9[-6];
      v9[-4] = v8;
      v9[-3] = &v46;
      v9[-2] = &v45;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v23 = v7;
      if (v7)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v24, v25, "[MUIiCloudMailCleanupService] onAppearTip - provider is nil", v11, 2u);
        v9[2] = 0;
        sub_214A669DC(v14);
        sub_214A669DC(v17);
        sub_214CCFF04();

        v10 = v23;
      }
    }

    else
    {

      v10 = v32;
    }

    v9[1] = v10;

    (*(v37 + 8))(v38, v35);
  }
}

uint64_t MUIiCloudMailCleanupService.isSenderEmailAddressBlocked(_:)(void *a1)
{
  v8 = (v1 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  if (*v8)
  {

    swift_endAccess();
    swift_getObjectType();
    swift_unknownObjectRetain();
    v4 = [a1 stringValue];
    sub_214CCF564();
    swift_unknownObjectRelease();
    v5 = sub_214CCD684();

    MEMORY[0x277D82BD8](v4);

    v6 = v5 & 1;
  }

  else
  {
    swift_endAccess();
    v6 = 2;
  }

  if (v6 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v6;
  }

  return v3 & 1;
}

Swift::Void __swiftcall MUIiCloudMailCleanupService.updatePrimaryAccountCategoriesHidden(_:)(Swift::Bool a1)
{
  v26 = a1;
  v20 = "Fatal error";
  v21 = "Double value cannot be converted to Int64 because it is either infinite or NaN";
  v22 = "Swift/IntegerTypes.swift";
  v23 = "Double value cannot be converted to Int64 because the result would be less than Int64.min";
  v24 = "Double value cannot be converted to Int64 because the result would be greater than Int64.max";
  v25 = "MailUI/MUIiCloudMailCleanupService-BocceBall.swift";
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v27 = sub_214CCD254();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v31 = v6 - v30;
  v37 = v2 & 1;
  v36 = v1;
  v32 = [objc_opt_self() em_userDefaults];
  if (v32)
  {
    v19 = v32;
    v18 = v32;
    v35 = v32;
    if (v26)
    {
      sub_214CCD244();
      sub_214CCD204();
      v17 = v3;
      (*(v28 + 8))(v31, v27);
      if (((*&v17 >> 52) & 0x7FFLL) == 0x7FF)
      {
        sub_214CD01F4();
        __break(1u);
      }

      if (v17 <= -9.22337204e18)
      {
        sub_214CD01F4();
        __break(1u);
      }

      if (v17 >= 9.22337204e18)
      {
        sub_214CD01F4();
        __break(1u);
      }

      v15 = v17;
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 1;
    }

    v14 = v15;
    v33 = v15;
    v34 = v16 & 1;
    if (v16)
    {
      v12 = 0;
    }

    else
    {
      v13 = v14;
      v12 = sub_214CD0534();
    }

    v8 = v12;
    v4 = sub_214C44B64();
    v6[1] = *v4;
    v6[2] = v4[1];

    v7 = sub_214CCF544();

    [v18 setObject:v8 forKey:v7];
    MEMORY[0x277D82BD8](v7);
    swift_unknownObjectRelease();
    v5 = sub_214C44C4C();
    v9 = *v5;
    v10 = v5[1];

    v11 = sub_214CCF544();

    [v18 setBool:v26 forKey:v11];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v18);
  }

  else
  {
    sub_214CCF614();
    sub_214CD0204();
    __break(1u);
  }
}

uint64_t MUIiCloudMailCleanupService.blockSender(withSenderEmailAddress:entryPoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = v3;
  v4[18] = a3;
  v4[17] = a2;
  v4[16] = a1;
  v4[11] = v4;
  v4[12] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[13] = 0;
  v4[14] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[15] = 0;
  v5 = sub_214CCDA74();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[12] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[13] = v3;

  return MEMORY[0x2822009F8](sub_214C47D48, 0);
}

uint64_t sub_214C47D48()
{
  v56 = v0;
  v1 = v0[19];
  v0[11] = v0;
  v47 = (v1 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  v48 = *v47;
  v0[23] = *v47;

  swift_endAccess();
  if (v48)
  {
    v46[14] = v48;
    if (sub_214CCD644())
    {
      v44 = v46[16];
      v43 = objc_opt_self();
      swift_unknownObjectRetain();
      v45 = [v43 ec:v44 partiallyRedactedStringForAddress:?];
      swift_unknownObjectRelease();
      if (v45)
      {
        sub_214CCF564();
        v41 = v2;
        MEMORY[0x277D82BD8](v45);
        v42 = v41;
      }

      else
      {
        v42 = 0;
      }

      if (v42)
      {
        v37 = String.partiallyRedactedString.getter();
        v38 = v3;

        v39 = v37;
        v40 = v38;
      }

      else
      {
        v39 = 0;
        v40 = 0;
      }

      v46[7] = v39;
      v46[8] = v40;
      if (v46[8])
      {
        v49 = v46[7];
        v50 = v46[8];
      }

      else
      {
        v49 = sub_214CCF614();
        v50 = v4;
        if (v46[8])
        {
          sub_214A61B48();
        }
      }

      v5 = v46[22];
      v28 = v46[20];
      v27 = v46[21];
      v46[24] = v50;
      v46[9] = v49;
      v46[10] = v50;
      v6 = sub_214C44A48();
      (*(v27 + 16))(v5, v6, v28);

      v29 = swift_allocObject();
      *(v29 + 16) = v49;
      *(v29 + 24) = v50;
      oslog = sub_214CCDA54();
      v36 = sub_214CCFBB4();
      v31 = swift_allocObject();
      *(v31 + 16) = 32;
      v32 = swift_allocObject();
      *(v32 + 16) = 8;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_214B21C04;
      *(v30 + 24) = v29;
      v33 = swift_allocObject();
      *(v33 + 16) = sub_214A7E854;
      *(v33 + 24) = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      sub_214CD03C4();
      v34 = v7;

      *v34 = sub_214A662DC;
      v34[1] = v31;

      v34[2] = sub_214A662DC;
      v34[3] = v32;

      v34[4] = sub_214A7E40C;
      v34[5] = v33;
      sub_214A63280();

      if (os_log_type_enabled(oslog, v36))
      {
        buf = sub_214CCFF24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v25 = sub_214A632C4(0);
        v26 = sub_214A632C4(1);
        v51 = buf;
        v52 = v25;
        v53 = v26;
        sub_214A6627C(2, &v51);
        sub_214A6627C(1, &v51);
        v54 = sub_214A662DC;
        v55 = v31;
        sub_214A66290(&v54, &v51, &v52, &v53);
        v54 = sub_214A662DC;
        v55 = v32;
        sub_214A66290(&v54, &v51, &v52, &v53);
        v54 = sub_214A7E40C;
        v55 = v33;
        sub_214A66290(&v54, &v51, &v52, &v53);
        _os_log_impl(&dword_214A5E000, oslog, v36, "[MUIiCloudMailCleanupService] blockSenderWithSenderEmailAddress - Attempting block on %s", buf, 0xCu);
        sub_214A669DC(v25);
        sub_214A669DC(v26);
        sub_214CCFF04();
      }

      else
      {
      }

      v18 = v46[22];
      v19 = v46[20];
      v20 = v46[16];
      v17 = v46[21];
      v8 = MEMORY[0x277D82BD8](oslog);
      (*(v17 + 8))(v18, v19, v8);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v46[25] = [v20 stringValue];
      v23 = sub_214CCF564();
      v21 = v9;
      v46[26] = v9;
      swift_unknownObjectRelease();
      v22 = (MEMORY[0x277D7F1F8] + *MEMORY[0x277D7F1F8]);
      v10 = swift_task_alloc();
      v46[27] = v10;
      *v10 = v46[11];
      v10[1] = sub_214C4889C;
      v11 = v46[18];
      v12 = v46[17];

      return v22(v23, v21, v12, v11, 0);
    }

    sub_214C4C710();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  else
  {
    sub_214C4C710();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }

  v16 = *(v46[11] + 8);

  return v16();
}

uint64_t sub_214C4889C()
{
  v5 = *v1;
  v5[11] = *v1;
  v5[28] = v0;

  if (v0)
  {
    v2 = sub_214C48AE8;
  }

  else
  {
    v4 = v5[25];

    v2 = sub_214C48A28;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214C48A28()
{
  *(v0 + 88) = v0;

  v1 = *(*(v0 + 88) + 8);

  return v1();
}

uint64_t sub_214C48AE8()
{
  v6 = v0[28];
  v5 = v0[25];
  v0[11] = v0;

  MEMORY[0x277D82BD8](v5);
  v1 = v6;
  v0[15] = v6;
  sub_214C4C710();
  swift_allocError();
  *v2 = 2;
  swift_willThrow();

  v3 = *(v0[11] + 8);

  return v3();
}

uint64_t sub_214C48D1C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[4] = a4;
  v4[3] = a1;
  v4[2] = v4;
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a2);
  v4[5] = _Block_copy(a3);
  MEMORY[0x277D82BE0](a4);
  v15 = 0;
  v16 = 0;
  if (a2)
  {
    v8 = sub_214CCF564();
    v9 = v5;
    MEMORY[0x277D82BD8](a2);
    v15 = v8;
    v16 = v9;
  }

  v10[6] = v16;
  v6 = swift_task_alloc();
  v10[7] = v6;
  *v6 = v10[2];
  v6[1] = sub_214C48E90;

  return MUIiCloudMailCleanupService.blockSender(withSenderEmailAddress:entryPoint:)(a1, v15, v16);
}

uint64_t sub_214C48E90()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v9 = v2 + 16;
  v10 = v2 + 16;

  if (v0)
  {
    if (*(v9 + 24))
    {
      v6 = *(v9 + 24);
      v7 = sub_214CCD074();
      (*(v6 + 16))();
    }

    _Block_release(*(v9 + 24));
  }

  else
  {
    if (*(v9 + 24))
    {
      (*(*(v9 + 24) + 16))();
    }

    _Block_release(*(v9 + 24));
  }

  v5 = *(v9 + 16);

  swift_unknownObjectRelease();
  v3 = *(*v10 + 8);

  return v3();
}

uint64_t sub_214C49094(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v24 = &unk_214CF4B78;
  v27 = &unk_214CF4B88;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v26 = &v17 - v17;
  v25 = 0;
  v3 = sub_214CCF994();
  (*(*(v3 - 8) + 56))(v26, 1);
  v20 = 48;
  v21 = 7;
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  v28 = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v7;
  v6[5] = v5;
  v22 = v6[2];
  v23 = v6[3];
  swift_unknownObjectRetain();
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v8;
  v15 = v28;
  v14[2] = v22;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v15;
  sub_214C4C9A4(v11, v11, v12, v13, v14);
}

uint64_t MUIiCloudMailCleanupService.unblockSender(withSenderEmailAddress:)(uint64_t a1)
{
  v2[15] = v1;
  v2[14] = a1;
  v2[9] = v2;
  v2[10] = 0;
  v2[11] = 0;
  v2[12] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[13] = 0;
  v3 = sub_214CCDA74();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[10] = a1;
  v2[11] = v1;

  return MEMORY[0x2822009F8](sub_214C4935C, 0);
}

uint64_t sub_214C4935C()
{
  v54 = v0;
  v1 = v0[15];
  v0[9] = v0;
  v45 = (v1 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  v46 = *v45;
  v0[19] = *v45;

  swift_endAccess();
  if (v46)
  {
    v44[12] = v46;
    if (sub_214CCD644())
    {
      v42 = v44[14];
      v41 = objc_opt_self();
      swift_unknownObjectRetain();
      v43 = [v41 ec:v42 partiallyRedactedStringForAddress:?];
      swift_unknownObjectRelease();
      if (v43)
      {
        sub_214CCF564();
        v39 = v2;
        MEMORY[0x277D82BD8](v43);
        v40 = v39;
      }

      else
      {
        v40 = 0;
      }

      if (v40)
      {
        v35 = String.partiallyRedactedString.getter();
        v36 = v3;

        v37 = v35;
        v38 = v36;
      }

      else
      {
        v37 = 0;
        v38 = 0;
      }

      v44[5] = v37;
      v44[6] = v38;
      if (v44[6])
      {
        v47 = v44[5];
        v48 = v44[6];
      }

      else
      {
        v47 = sub_214CCF614();
        v48 = v4;
        if (v44[6])
        {
          sub_214A61B48();
        }
      }

      v5 = v44[18];
      v26 = v44[16];
      v25 = v44[17];
      v44[20] = v48;
      v44[7] = v47;
      v44[8] = v48;
      v6 = sub_214C44A48();
      (*(v25 + 16))(v5, v6, v26);

      v27 = swift_allocObject();
      *(v27 + 16) = v47;
      *(v27 + 24) = v48;
      oslog = sub_214CCDA54();
      v34 = sub_214CCFBB4();
      v29 = swift_allocObject();
      *(v29 + 16) = 32;
      v30 = swift_allocObject();
      *(v30 + 16) = 8;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_214B21C04;
      *(v28 + 24) = v27;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_214A7E854;
      *(v31 + 24) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
      sub_214CD03C4();
      v32 = v7;

      *v32 = sub_214A662DC;
      v32[1] = v29;

      v32[2] = sub_214A662DC;
      v32[3] = v30;

      v32[4] = sub_214A7E40C;
      v32[5] = v31;
      sub_214A63280();

      if (os_log_type_enabled(oslog, v34))
      {
        buf = sub_214CCFF24();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
        v23 = sub_214A632C4(0);
        v24 = sub_214A632C4(1);
        v49 = buf;
        v50 = v23;
        v51 = v24;
        sub_214A6627C(2, &v49);
        sub_214A6627C(1, &v49);
        v52 = sub_214A662DC;
        v53 = v29;
        sub_214A66290(&v52, &v49, &v50, &v51);
        v52 = sub_214A662DC;
        v53 = v30;
        sub_214A66290(&v52, &v49, &v50, &v51);
        v52 = sub_214A7E40C;
        v53 = v31;
        sub_214A66290(&v52, &v49, &v50, &v51);
        _os_log_impl(&dword_214A5E000, oslog, v34, "[MUIiCloudMailCleanupService] unblockSenderWithSenderEmailAddress - Attempting unblock on %s", buf, 0xCu);
        sub_214A669DC(v23);
        sub_214A669DC(v24);
        sub_214CCFF04();
      }

      else
      {
      }

      v16 = v44[18];
      v17 = v44[16];
      v18 = v44[14];
      v15 = v44[17];
      v8 = MEMORY[0x277D82BD8](oslog);
      (*(v15 + 8))(v16, v17, v8);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v44[21] = [v18 stringValue];
      v21 = sub_214CCF564();
      v19 = v9;
      v44[22] = v9;
      swift_unknownObjectRelease();
      v20 = (MEMORY[0x277D7F200] + *MEMORY[0x277D7F200]);
      v10 = swift_task_alloc();
      v44[23] = v10;
      *v10 = v44[9];
      v10[1] = sub_214C49E38;

      return v20(v21, v19);
    }

    sub_214C4C710();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  else
  {
    sub_214C4C710();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  v14 = *(v44[9] + 8);

  return v14();
}

uint64_t sub_214C49E38()
{
  v5 = *v1;
  v5[9] = *v1;
  v5[24] = v0;

  if (v0)
  {
    v2 = sub_214C4A080;
  }

  else
  {
    v4 = v5[21];

    v2 = sub_214C49FC4;
  }

  return MEMORY[0x2822009F8](v2, 0);
}

uint64_t sub_214C49FC4()
{
  *(v0 + 72) = v0;

  v1 = *(*(v0 + 72) + 8);

  return v1();
}

uint64_t sub_214C4A080()
{
  v6 = v0[24];
  v5 = v0[21];
  v0[9] = v0;

  MEMORY[0x277D82BD8](v5);
  v1 = v6;
  v0[13] = v6;
  sub_214C4C710();
  swift_allocError();
  *v2 = 3;
  swift_willThrow();

  v3 = *(v0[9] + 8);

  return v3();
}

uint64_t sub_214C4A28C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  swift_unknownObjectRetain();
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_214C4A374;

  return MUIiCloudMailCleanupService.unblockSender(withSenderEmailAddress:)(a1);
}

uint64_t sub_214C4A374()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v8 = v2 + 16;
  v9 = v2 + 16;

  if (v0)
  {
    if (*(v8 + 24))
    {
      v5 = *(v8 + 24);
      v6 = sub_214CCD074();
      (*(v5 + 16))();
    }

    _Block_release(*(v8 + 24));
  }

  else
  {
    if (*(v8 + 24))
    {
      (*(*(v8 + 24) + 16))();
    }

    _Block_release(*(v8 + 24));
  }

  swift_unknownObjectRelease();
  v3 = *(*v9 + 8);

  return v3();
}

Swift::Bool __swiftcall MUIiCloudMailCleanupService.isConsentAccepted()()
{
  v5 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  if (*v5)
  {

    swift_endAccess();
    v3 = sub_214CCD644();

    v4 = v3 & 1;
  }

  else
  {
    swift_endAccess();
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

Swift::Bool __swiftcall MUIiCloudMailCleanupService.isUnsubscribeEnabled()()
{
  v5 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  if (*v5)
  {

    swift_endAccess();
    v3 = sub_214CCD654();

    v4 = v3 & 1;
  }

  else
  {
    swift_endAccess();
    v4 = 2;
  }

  if (v4 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v4;
  }

  return v2 & 1;
}

Swift::Bool __swiftcall MUIiCloudMailCleanupService.shouldShowICloudUnsubscribe()()
{
  v6 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    v4 = [v5 isUnsubscribeEnabled];

    if (v4)
    {
      v3 = sub_214CCD644();
    }

    else
    {
      v3 = 0;
    }

    v2 = v3;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

Swift::Bool __swiftcall MUIiCloudMailCleanupService.shouldShowConsent()()
{
  v33 = 0;
  v48 = 0;
  v32 = 0;
  v42 = 0;
  v34 = sub_214CCDA74();
  v35 = *(v34 - 8);
  v36 = v35;
  MEMORY[0x28223BE20](v34 - 8);
  v37 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v0;
  v38 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  v40 = &v47;
  swift_beginAccess();
  v41 = *v38;
  v39 = v41;

  swift_endAccess();
  if (v41)
  {
    v31 = v39;
    v27 = v39;
    v42 = v39;
    v28 = sub_214CCD5E4();

    v29 = v28;
    v30 = v32;
  }

  else
  {
    v2 = v37;
    v3 = sub_214C44A48();
    (*(v36 + 16))(v2, v3, v34);
    v25 = sub_214CCDA54();
    v22 = v25;
    v24 = sub_214CCFBA4();
    v23 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v26 = sub_214CD03C4();
    if (os_log_type_enabled(v25, v24))
    {
      v4 = v32;
      v13 = sub_214CCFF24();
      v9 = v13;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v11 = 0;
      v14 = sub_214A632C4(0);
      v12 = v14;
      v15 = sub_214A632C4(v11);
      v46 = v13;
      v45 = v14;
      v44 = v15;
      v16 = 0;
      v17 = &v46;
      sub_214A6627C(0, &v46);
      sub_214A6627C(v16, v17);
      v43 = v26;
      v18 = v7;
      MEMORY[0x28223BE20](v7);
      v19 = &v7[-6];
      v7[-4] = v5;
      v7[-3] = &v45;
      v7[-2] = &v44;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v21 = v4;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v22, v23, "[MUIiCloudMailCleanupService] shouldShowConsent - provider is not set", v9, 2u);
        v7[1] = 0;
        sub_214A669DC(v12);
        sub_214A669DC(v15);
        sub_214CCFF04();

        v8 = v21;
      }
    }

    else
    {

      v8 = v32;
    }

    v7[0] = v8;

    (*(v36 + 8))(v37, v34);
    v29 = 0;
    v30 = v7[0];
  }

  return v29 & 1;
}

Swift::Void __swiftcall MUIiCloudMailCleanupService.forceSync()()
{
  v41 = 0;
  v54 = 0;
  v36 = 0;
  v48 = 0;
  v37 = sub_214CCDA74();
  v38 = *(v37 - 8);
  v39 = v38;
  MEMORY[0x28223BE20](v37 - 8);
  v40 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30);
  v42 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2 - 8);
  v43 = v12 - v42;
  v54 = v0;
  v44 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  v46 = &v53;
  swift_beginAccess();
  v47 = *v44;
  v45 = v47;

  swift_endAccess();
  if (v47)
  {
    v35 = v45;
    v33 = v45;
    v48 = v45;
    v32 = 0;
    v3 = sub_214CCF994();
    (*(*(v3 - 8) + 56))(v43, 1);

    v4 = swift_allocObject();
    v5 = v32;
    v6 = v43;
    v7 = v33;
    v4[2] = v32;
    v4[3] = v5;
    v4[4] = v7;
    sub_214B88C30(v5, v5, v6, &unk_214CF4A50, v4, MEMORY[0x277D84F78] + 8);

    v34 = v36;
  }

  else
  {
    v8 = v40;
    v9 = sub_214C44A48();
    (*(v39 + 16))(v8, v9, v37);
    v30 = sub_214CCDA54();
    v27 = v30;
    v29 = sub_214CCFBA4();
    v28 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v31 = sub_214CD03C4();
    if (os_log_type_enabled(v30, v29))
    {
      v10 = v36;
      v18 = sub_214CCFF24();
      v14 = v18;
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v16 = 0;
      v19 = sub_214A632C4(0);
      v17 = v19;
      v20 = sub_214A632C4(v16);
      v52 = v18;
      v51 = v19;
      v50 = v20;
      v21 = 0;
      v22 = &v52;
      sub_214A6627C(0, &v52);
      sub_214A6627C(v21, v22);
      v49 = v31;
      v23 = v12;
      MEMORY[0x28223BE20](v12);
      v24 = &v12[-6];
      v12[-4] = v11;
      v12[-3] = &v51;
      v12[-2] = &v50;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v26 = v10;
      if (v10)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v27, v28, "[MUIiCloudMailCleanupService] clearCache - provider is not set", v14, 2u);
        v12[1] = 0;
        sub_214A669DC(v17);
        sub_214A669DC(v20);
        sub_214CCFF04();

        v13 = v26;
      }
    }

    else
    {

      v13 = v36;
    }

    v12[0] = v13;

    (*(v39 + 8))(v40, v37);
  }
}

uint64_t sub_214C4B4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D7F210];
  *(v4 + 16) = v4;
  *(v4 + 24) = 0;
  *(v4 + 24) = a4;
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v8 + 32) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_214C4B588;

  return v9();
}

uint64_t sub_214C4B588()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

Swift::Void __swiftcall MUIiCloudMailCleanupService.setProviderDelegate(_:)(UIViewController *a1)
{
  v3 = (v1 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  v4 = *v3;

  swift_endAccess();
  if (v4)
  {
    MEMORY[0x277D82BE0](a1);
    sub_214CCD6B4();
  }
}

void __swiftcall MUIiCloudMailCleanupService.getDashboardViewController()(UIViewController_optional *__return_ptr retstr)
{
  v33 = 0;
  v49 = 0;
  v32 = 0;
  v43 = 0;
  v42 = 0;
  v34 = sub_214CCDA74();
  v35 = *(v34 - 8);
  v36 = v35;
  MEMORY[0x28223BE20](v34 - 8);
  v37 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v1;
  v38 = (v1 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  v40 = &v48;
  swift_beginAccess();
  v41 = *v38;
  v39 = v41;

  swift_endAccess();
  if (v41)
  {
    v31 = v39;
    v27 = v39;
    v43 = v39;
    v42 = EMBlackPearlIsFeatureEnabled() ^ 1;
    v28 = sub_214CCD664();

    v29 = v28;
    v30 = v32;
  }

  else
  {
    v3 = v37;
    v4 = sub_214C44A48();
    (*(v36 + 16))(v3, v4, v34);
    v25 = sub_214CCDA54();
    v22 = v25;
    v24 = sub_214CCFBA4();
    v23 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v26 = sub_214CD03C4();
    if (os_log_type_enabled(v25, v24))
    {
      v5 = v32;
      v13 = sub_214CCFF24();
      v9 = v13;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v11 = 0;
      v14 = sub_214A632C4(0);
      v12 = v14;
      v15 = sub_214A632C4(v11);
      v47 = v13;
      v46 = v14;
      v45 = v15;
      v16 = 0;
      v17 = &v47;
      sub_214A6627C(0, &v47);
      sub_214A6627C(v16, v17);
      v44 = v26;
      v18 = v7;
      MEMORY[0x28223BE20](v7);
      v19 = &v7[-6];
      v7[-4] = v6;
      v7[-3] = &v46;
      v7[-2] = &v45;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v21 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v22, v23, "[MUIiCloudMailCleanupService] getDashboardViewController - provider is not set", v9, 2u);
        v7[1] = 0;
        sub_214A669DC(v12);
        sub_214A669DC(v15);
        sub_214CCFF04();

        v8 = v21;
      }
    }

    else
    {

      v8 = v32;
    }

    v7[0] = v8;

    (*(v36 + 8))(v37, v34);
  }
}

void __swiftcall MUIiCloudMailCleanupService.getConsentViewController()(UIViewController_optional *__return_ptr retstr)
{
  v33 = 0;
  v48 = 0;
  v32 = 0;
  v42 = 0;
  v34 = sub_214CCDA74();
  v35 = *(v34 - 8);
  v36 = v35;
  MEMORY[0x28223BE20](v34 - 8);
  v37 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1;
  v38 = (v1 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  v40 = &v47;
  swift_beginAccess();
  v41 = *v38;
  v39 = v41;

  swift_endAccess();
  if (v41)
  {
    v31 = v39;
    v27 = v39;
    v42 = v39;
    v28 = sub_214CCD674();

    v29 = v28;
    v30 = v32;
  }

  else
  {
    v3 = v37;
    v4 = sub_214C44A48();
    (*(v36 + 16))(v3, v4, v34);
    v25 = sub_214CCDA54();
    v22 = v25;
    v24 = sub_214CCFBA4();
    v23 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v26 = sub_214CD03C4();
    if (os_log_type_enabled(v25, v24))
    {
      v5 = v32;
      v13 = sub_214CCFF24();
      v9 = v13;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v11 = 0;
      v14 = sub_214A632C4(0);
      v12 = v14;
      v15 = sub_214A632C4(v11);
      v46 = v13;
      v45 = v14;
      v44 = v15;
      v16 = 0;
      v17 = &v46;
      sub_214A6627C(0, &v46);
      sub_214A6627C(v16, v17);
      v43 = v26;
      v18 = v7;
      MEMORY[0x28223BE20](v7);
      v19 = &v7[-6];
      v7[-4] = v6;
      v7[-3] = &v45;
      v7[-2] = &v44;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();
      v21 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_214A5E000, v22, v23, "[MUIiCloudMailCleanupService] getConsentViewController - provider is not set", v9, 2u);
        v7[2] = 0;
        sub_214A669DC(v12);
        sub_214A669DC(v15);
        sub_214CCFF04();

        v8 = v21;
      }
    }

    else
    {

      v8 = v32;
    }

    v7[1] = v8;

    (*(v36 + 8))(v37, v34);
  }
}

uint64_t MUIiCloudMailCleanupService.getProvider()()
{
  v2 = (v0 + OBJC_IVAR___MUIiCloudMailCleanupService_provider);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214C4C330(uint64_t a1)
{
  v28 = 0;
  v37 = 0;
  v36 = 0;
  v20 = 0;
  v38 = a1;
  v21 = sub_214CCDA74();
  v22 = *(v21 - 8);
  v23 = v22;
  v24 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v25 = &v5 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v25;
  v36 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378A0);
  static Logger.mailUILogger<A>(for:)();
  v30 = sub_214CCDA54();
  v26 = v30;
  v29 = sub_214CCFBA4();
  v27 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v31 = sub_214CD03C4();
  if (os_log_type_enabled(v30, v29))
  {
    v2 = v20;
    v11 = sub_214CCFF24();
    v7 = v11;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v9 = 0;
    v12 = sub_214A632C4(0);
    v10 = v12;
    v13 = sub_214A632C4(v9);
    v35 = v11;
    v34 = v12;
    v33 = v13;
    v14 = 0;
    v15 = &v35;
    sub_214A6627C(0, &v35);
    sub_214A6627C(v14, v15);
    v32 = v31;
    v16 = &v5;
    MEMORY[0x28223BE20](&v5);
    v17 = &v5 - 6;
    *(&v5 - 4) = v3;
    *(&v5 - 3) = &v34;
    *(&v5 - 2) = &v33;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
    sub_214A810E0();
    sub_214CCF764();
    v19 = v2;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_214A5E000, v26, v27, "[MUIiCloudMailCleanupService] isConsentAccepted - fallback API (returns false)", v7, 2u);
      v5 = 0;
      sub_214A669DC(v10);
      sub_214A669DC(v13);
      sub_214CCFF04();

      v6 = v19;
    }
  }

  else
  {

    v6 = v20;
  }

  (*(v23 + 8))(v25, v21);
  return 0;
}

unint64_t sub_214C4C710()
{
  v2 = qword_27CA37898;
  if (!qword_27CA37898)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA37898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C4C78C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v7 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_214A82860;

  return v7();
}

uint64_t sub_214C4C898(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v8 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_214A82860;

  return v8();
}

uint64_t sub_214C4C9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v49 = &unk_214CF4BA0;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_214CF4B98;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v56 = v16 - v55;
  sub_214B8B4C8(v5, v16 - v55);
  v57 = sub_214CCF994();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_214A81D1C(v56);
    v44 = 0;
  }

  else
  {
    v43 = sub_214CCF984();
    (*(v58 + 8))(v56, v57);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v48 + 16);
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();
  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_214CCF924();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v22 = v46;
    v23 = sub_214CCF5E4();

    v24 = v23 + 32;

    v7 = swift_allocObject();
    v8 = v48;
    v9 = v31;
    v10 = v30;
    v25 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v26 = 0;
    if (v9 != 0 || v10 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v31;
      v63[3] = v30;
      v26 = v63;
    }

    v60 = 7;
    v61 = v26;
    v62 = v24;
    v21 = swift_task_create();

    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v20 = v27;
  if (v27)
  {
    v16[1] = v20;
    v16[0] = v20;
    sub_214A81D1C(v54);

    return v16[0];
  }

  else
  {

    sub_214A81D1C(v54);
    v11 = swift_allocObject();
    v12 = v48;
    v13 = v31;
    v14 = v30;
    v18 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v19 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v31;
      v64[3] = v30;
      v19 = v64;
    }

    return swift_task_create();
  }
}

uint64_t sub_214C4CFC4()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214A82860;

  return sub_214C48D1C(v8, v5, v6, v7);
}

uint64_t sub_214C4D0BC()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214A82860;

  return sub_214C4A28C(v7, v5, v6);
}

uint64_t sub_214C4D1A8(uint64_t a1)
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

  return sub_214C4B4B8(a1, v6, v7, v8);
}

unint64_t sub_214C4D2AC()
{
  v2 = qword_27CA378B8;
  if (!qword_27CA378B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA378B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214C4D328()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_214A82860;

  return sub_214C4C78C(v7, v5, v6);
}

uint64_t sub_214C4D420(uint64_t a1)
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

  return sub_214C4C898(a1, v6, v7, v8);
}

uint64_t sub_214C4D520(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214A80840(a1, v6);
}

uint64_t MUILastSeenBucketHelper.lastSelectedDate(for:)()
{
  swift_beginAccess();
  type metadata accessor for MUIBucket();
  sub_214CCD254();
  sub_214A69344();
  sub_214CCF3D4();
  return swift_endAccess();
}

uint64_t MUILastSeenBucketHelper.updateSessionLastSeenDates(for:)(uint64_t a1)
{
  v9 = a1;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v14 = sub_214CCD254();
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v7 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v9);
  v12 = &v6 - v7;
  v20 = &v6 - v7;
  v8 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v2);
  v13 = &v6 - v8;
  v19 = &v6 - v8;
  v18 = v4;
  v17 = v1;
  MUILastSeenBucketHelper.lastSeenDate(for:)(v4, &v6 - v8);
  MUILastSeenBucketHelper.lastSeenDisplayDate(for:)(v9, v12);
  MUILastSeenBucketHelper.updateSessionLastSeenDates(for:lastSeenDate:lastSeenDisplayDate:)(v9, v13, v12);
  v16 = *(v10 + 8);
  v15 = v10 + 8;
  v16(v12, v14);
  return (v16)(v13, v14);
}

uint64_t MUILastSeenBucketHelper.unseenPredicates(for:usingCurrentLastSeenDates:)(uint64_t a1, int a2)
{
  v43 = a1;
  v42 = a2;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v44 = sub_214CCD254();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (v45[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v43);
  v48 = &v18 - v47;
  v49 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3);
  v50 = &v18 - v49;
  v51 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v5);
  v52 = &v18 - v51;
  v60 = &v18 - v51;
  v53 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v7);
  v54 = &v18 - v53;
  v59 = &v18 - v53;
  v58 = v9;
  v57 = v10 & 1;
  v56 = v2;
  if (v10)
  {
    MUILastSeenBucketHelper.lastSeenDate(for:)(v43, v50);
    v41 = v45[4];
    v40 = v45 + 4;
    v41(v54, v50, v44);
    MUILastSeenBucketHelper.lastSeenDisplayDate(for:)(v43, v50);
    v41(v52, v50, v44);
  }

  else
  {
    MUILastSeenBucketHelper.sessionLastSeenDates(for:)(v50, v48, v43);
    v39 = v45[4];
    v38 = v45 + 4;
    v39(v54, v50, v44);
    v39(v52, v48, v44);
  }

  v11 = v50;
  v18 = 0;
  v25 = sub_214B10198();
  v32 = sub_214A7C550();
  v30 = sub_214CD03C4();
  v29 = v12;
  v22 = 0x277D06000uLL;
  v19 = objc_opt_self();
  v24 = v45[2];
  v23 = v45 + 2;
  v24(v11, v54, v44);
  v13 = sub_214CCD1C4();
  v14 = v50;
  v20 = v13;
  v36 = v45[1];
  v35 = v45 + 1;
  v36(v50, v44);
  v21 = [v19 predicateForMessagesNewerThanDate_];
  MEMORY[0x277D82BD8](v20);
  *v29 = v21;
  v26 = objc_opt_self();
  v24(v14, v52, v44);
  v27 = sub_214CCD1C4();
  v36(v50, v44);
  v28 = [v26 predicateForMessagesNewerThanDisplayDate_];
  MEMORY[0x277D82BD8](v27);
  v29[1] = v28;
  sub_214A63280();
  v34 = sub_214C50438();
  v55 = v34;
  v33 = sub_214CD03C4();
  v31 = v15;
  MEMORY[0x277D82BE0](v34);
  v16 = v33;
  *v31 = v34;
  sub_214A63280();
  v37 = v16;
  MEMORY[0x277D82BD8](v34);
  v36(v52, v44);
  v36(v54, v44);
  return v37;
}

Swift::Void __swiftcall MUILastSeenBucketHelper.updateSessionLastSeenDates()()
{
  v12 = v0;
  (MEMORY[0x277D82BE0])();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;

  v3 = swift_allocObject();
  *(v3 + 16) = sub_214C54650;
  *(v3 + 24) = v1;

  v10 = sub_214C54658;
  v11 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v6 = 1107296256;
  v7 = 0;
  v8 = sub_214C52350;
  v9 = &block_descriptor_17;
  v2 = _Block_copy(&aBlock);

  MUIBucketEnumerateAllBuckets(v2);
  _Block_release(v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

Swift::Void __swiftcall MUILastSeenBucketHelper.updateUnseenCountQueries()()
{
  v1 = (v0 + OBJC_IVAR____TtC6MailUI23MUILastSeenBucketHelper_mailboxes);
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  sub_214C5197C(v2);
}

void MUILastSeenBucketHelper.setlastSeenDates(_:for:)(void *a1, uint64_t a2)
{
  v96 = a1;
  v94 = a2;
  v97 = sub_214B4C108;
  v99 = sub_214A7E854;
  v101 = sub_214C56D14;
  v108 = sub_214C56D14;
  v110 = sub_214A662DC;
  v112 = sub_214A662DC;
  v114 = sub_214A7E40C;
  v116 = sub_214A662DC;
  v118 = sub_214A662DC;
  v120 = sub_214B217B4;
  v122 = sub_214A662DC;
  v124 = sub_214A662DC;
  v127 = sub_214B217B4;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v141 = 0;
  v140 = 0;
  v78 = 0;
  v86 = 0;
  v79 = sub_214CCD254();
  v80 = *(v79 - 8);
  v81 = v79 - 8;
  v82 = (*(v80 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v79);
  v83 = v42 - v82;
  v84 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v42 - v82);
  v85 = v42 - v84;
  v87 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA378D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v88 = v42 - v87;
  v93 = sub_214CCDA74();
  v91 = *(v93 - 8);
  v92 = v93 - 8;
  v89 = (*(v91 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v96);
  v3 = v42 - v89;
  v90 = v42 - v89;
  v146 = v4;
  v145 = v5;
  v144 = v6;
  v7 = sub_214C50524();
  (*(v91 + 16))(v3, v7, v93);
  v95 = 24;
  v107 = 7;
  v8 = swift_allocObject();
  v9 = v96;
  v98 = v8;
  *(v8 + 16) = v94;
  MEMORY[0x277D82BE0](v9);
  v102 = swift_allocObject();
  *(v102 + 16) = v96;
  sub_214B1C228();

  MEMORY[0x277D82BE0](v96);
  v109 = swift_allocObject();
  *(v109 + 16) = v96;
  sub_214B1C228();

  v131 = sub_214CCDA54();
  v132 = sub_214CCFBB4();
  v104 = 17;
  v111 = swift_allocObject();
  *(v111 + 16) = 32;
  v113 = swift_allocObject();
  v105 = 8;
  *(v113 + 16) = 8;
  v106 = 32;
  v10 = swift_allocObject();
  v11 = v98;
  v100 = v10;
  *(v10 + 16) = v97;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v100;
  v115 = v12;
  *(v12 + 16) = v99;
  *(v12 + 24) = v13;
  v117 = swift_allocObject();
  v103 = 64;
  *(v117 + 16) = 64;
  v119 = swift_allocObject();
  *(v119 + 16) = v105;
  v14 = swift_allocObject();
  v15 = v102;
  v121 = v14;
  *(v14 + 16) = v101;
  *(v14 + 24) = v15;
  v123 = swift_allocObject();
  *(v123 + 16) = v103;
  v125 = swift_allocObject();
  *(v125 + 16) = v105;
  v16 = swift_allocObject();
  v17 = v109;
  v128 = v16;
  *(v16 + 16) = v108;
  *(v16 + 24) = v17;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
  v126 = sub_214CD03C4();
  v129 = v18;

  v19 = v111;
  v20 = v129;
  *v129 = v110;
  v20[1] = v19;

  v21 = v113;
  v22 = v129;
  v129[2] = v112;
  v22[3] = v21;

  v23 = v115;
  v24 = v129;
  v129[4] = v114;
  v24[5] = v23;

  v25 = v117;
  v26 = v129;
  v129[6] = v116;
  v26[7] = v25;

  v27 = v119;
  v28 = v129;
  v129[8] = v118;
  v28[9] = v27;

  v29 = v121;
  v30 = v129;
  v129[10] = v120;
  v30[11] = v29;

  v31 = v123;
  v32 = v129;
  v129[12] = v122;
  v32[13] = v31;

  v33 = v125;
  v34 = v129;
  v129[14] = v124;
  v34[15] = v33;

  v35 = v128;
  v36 = v129;
  v129[16] = v127;
  v36[17] = v35;
  sub_214A63280();

  if (os_log_type_enabled(v131, v132))
  {
    v37 = v78;
    v71 = sub_214CCFF24();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
    v72 = sub_214A632C4(2);
    v73 = sub_214A632C4(1);
    v74 = &v137;
    v137 = v71;
    v75 = &v136;
    v136 = v72;
    v76 = &v135;
    v135 = v73;
    sub_214A6627C(2, &v137);
    sub_214A6627C(3, v74);
    v133 = v110;
    v134 = v111;
    sub_214A66290(&v133, v74, v75, v76);
    v77 = v37;
    if (v37)
    {

      __break(1u);
    }

    else
    {
      v133 = v112;
      v134 = v113;
      sub_214A66290(&v133, &v137, &v136, &v135);
      v69 = 0;
      v133 = v114;
      v134 = v115;
      sub_214A66290(&v133, &v137, &v136, &v135);
      v68 = 0;
      v133 = v116;
      v134 = v117;
      sub_214A66290(&v133, &v137, &v136, &v135);
      v67 = 0;
      v133 = v118;
      v134 = v119;
      sub_214A66290(&v133, &v137, &v136, &v135);
      v66 = 0;
      v133 = v120;
      v134 = v121;
      sub_214A66290(&v133, &v137, &v136, &v135);
      v65 = 0;
      v133 = v122;
      v134 = v123;
      sub_214A66290(&v133, &v137, &v136, &v135);
      v64 = 0;
      v133 = v124;
      v134 = v125;
      sub_214A66290(&v133, &v137, &v136, &v135);
      v63 = 0;
      v133 = v127;
      v134 = v128;
      sub_214A66290(&v133, &v137, &v136, &v135);
      _os_log_impl(&dword_214A5E000, v131, v132, "set last presented dates for bucket %s to %@, %@", v71, 0x20u);
      sub_214A669DC(v72);
      sub_214A669DC(v73);
      sub_214CCFF04();
    }
  }

  else
  {
  }

  v38 = MEMORY[0x277D82BD8](v131);
  (*(v91 + 8))(v90, v93, v38);
  *&v39 = MEMORY[0x277D82BE0](v96).n128_u64[0];
  if (v96)
  {
    v62 = v96;
    v59 = v96;
    v60 = [v96 first];
    MEMORY[0x277D82BD8](v59);
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  v58 = v61;
  if (v61)
  {
    v57 = v58;
    v56 = v58;
    v141 = v58;
    *&v40 = MEMORY[0x277D82BE0](v96).n128_u64[0];
    if (v96)
    {
      v55 = v96;
      v52 = v96;
      v53 = [v96 second];
      MEMORY[0x277D82BD8](v52);
      v54 = v53;
    }

    else
    {
      v54 = 0;
    }

    v51 = v54;
    if (v54)
    {
      v50 = v51;
      v49 = v51;
      v140 = v51;
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0);
      v43 = &v88[*(v46 + 48)];
      MEMORY[0x277D82BE0](v56);
      sub_214CCD224();
      v45 = *(v80 + 32);
      v44 = v80 + 32;
      v45(v88, v85, v79);
      MEMORY[0x277D82BE0](v49);
      sub_214CCD224();
      v45(v43, v83, v79);
      (*(*(v46 - 8) + 56))(v88, 0, 1);
      v47 = &v139;
      v139 = v94;
      v48 = &v138;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E8);
      sub_214CCF3E4();
      swift_endAccess();
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v56);
      return;
    }

    MEMORY[0x277D82BD8](v56);
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E0);
  (*(*(v41 - 8) + 56))(v88, 1);
  v42[0] = &v143;
  v143 = v94;
  v42[1] = &v142;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA378E8);
  sub_214CCF3E4();
  swift_endAccess();
}