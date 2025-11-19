uint64_t sub_214BC3E74()
{
  *(v0 + 16) = v0;
  sub_214CCF614();
  sub_214CCCF14();
  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_214BC3F30(uint64_t a1)
{
  v16 = a1;
  v15 = &unk_214CF1D58;
  v18 = 0;
  v17 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v14 = &v11 - v12;
  v18 = v2;
  v17 = v1;
  v13 = 0;
  v3 = sub_214CCF994();
  (*(*(v3 - 8) + 56))(v14, 1);
  MEMORY[0x277D82BE0](v1);
  v4 = swift_allocObject();
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v4;
  v9 = v16;
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v9;
  sub_214B88C30(v5, v5, v6, v7, v8, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_214BC4090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a5;
  v5[10] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[9] = 0;
  v6 = sub_214CCDA74();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8);
  v5[15] = swift_task_alloc();
  v7 = sub_214CCD8D4();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0);
  v5[19] = swift_task_alloc();
  v8 = sub_214CCD874();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  v5[3] = a4;
  v5[4] = a5;

  return MEMORY[0x2822009F8](sub_214BC42FC, 0);
}

uint64_t sub_214BC42FC()
{
  v30 = v0[21];
  v32 = v0[20];
  v1 = v0[19];
  v31 = v1;
  v0[2] = v0;
  sub_214BBC098(v1);
  if ((*(v30 + 48))(v31, 1, v32) == 1)
  {
    sub_214BBC530(*(v29 + 152));
LABEL_10:
    (*(*(v29 + 104) + 16))(*(v29 + 112), *(v29 + 80) + OBJC_IVAR____TtC6MailUI23ManualSummaryController_logger, *(v29 + 96));
    v17 = sub_214CCDA54();
    v16 = sub_214CCFBA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA351D0);
    v18 = sub_214CD03C4();
    if (os_log_type_enabled(v17, v16))
    {
      buf = sub_214CCFF24();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35540);
      v13 = sub_214A632C4(0);
      v14 = sub_214A632C4(0);
      *(v29 + 40) = buf;
      *(v29 + 48) = v13;
      *(v29 + 56) = v14;
      sub_214A6627C(0, (v29 + 40));
      sub_214A6627C(0, (v29 + 40));
      *(v29 + 64) = v18;
      v15 = swift_task_alloc();
      v15[2] = v29 + 40;
      v15[3] = v29 + 48;
      v15[4] = v29 + 56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA37030);
      sub_214A810E0();
      sub_214CCF764();

      _os_log_impl(&dword_214A5E000, v17, v16, "Unable to provide summarization feedback", buf, 2u);
      sub_214A669DC(v13);
      sub_214A669DC(v14);
      sub_214CCFF04();
    }

    v10 = *(v29 + 112);
    v11 = *(v29 + 96);
    v9 = *(v29 + 104);
    v7 = MEMORY[0x277D82BD8](v17);
    (*(v9 + 8))(v10, v11, v7);

    v8 = *(*(v29 + 16) + 8);

    return v8();
  }

  v28 = *(v29 + 128);
  v27 = *(v29 + 120);
  v26 = *(v29 + 136);
  (*(*(v29 + 168) + 32))(*(v29 + 176), *(v29 + 152), *(v29 + 160));
  sub_214BBC7F8(v27);
  if ((*(v26 + 48))(v27, 1, v28) == 1)
  {
    v25 = *(v29 + 176);
    v24 = *(v29 + 160);
    v23 = *(v29 + 168);
    sub_214BBCC90(*(v29 + 120));
    (*(v23 + 8))(v25, v24);
    goto LABEL_10;
  }

  (*(*(v29 + 136) + 32))(*(v29 + 144), *(v29 + 120), *(v29 + 128));
  v22 = sub_214BBBD38();
  *(v29 + 184) = v22;
  if (!v22)
  {
    v20 = *(v29 + 176);
    v21 = *(v29 + 160);
    v19 = *(v29 + 168);
    (*(*(v29 + 136) + 8))(*(v29 + 144), *(v29 + 128));
    (*(v19 + 8))(v20, v21);
    goto LABEL_10;
  }

  *(v29 + 72) = v22;
  type metadata accessor for CatchUpFeedbackController();
  v2 = swift_task_alloc();
  *(v29 + 192) = v2;
  *v2 = *(v29 + 16);
  v2[1] = sub_214BC4988;
  v3 = *(v29 + 176);
  v4 = *(v29 + 144);
  v5 = *(v29 + 88);

  return sub_214B527DC(v5, v3, v4, v22);
}

uint64_t sub_214BC4988()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x2822009F8](sub_214BC4AA0, 0);
}

uint64_t sub_214BC4AA0()
{
  v1 = v0[23];
  v9 = v0[22];
  v8 = v0[21];
  v10 = v0[20];
  v6 = v0[18];
  v5 = v0[17];
  v7 = v0[16];
  v0[2] = v0;
  v2 = MEMORY[0x277D82BD8](v1);
  (*(v5 + 8))(v6, v7, v2);
  (*(v8 + 8))(v9, v10);

  v3 = *(v0[2] + 8);

  return v3();
}

uint64_t sub_214BC4C04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v27 = a1;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v37 = 0;
  v36 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364D8);
  v26 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v33 = &v13 - v26;
  v32 = sub_214CCD924();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v28 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v29 = &v13 - v28;
  v42 = &v13 - v28;
  v41 = v4;
  v40 = v2;
  sub_214BC5744(v4, v5);
  if ((*(v30 + 48))(v33, 1, v32) == 1)
  {
    result = sub_214BC586C(v33);
LABEL_13:
    v12 = v25;
    *v25 = 3;
    v12[1] = 0;
    *(v12 + 16) = 2;
    return result;
  }

  (*(v30 + 32))(v29, v33, v32);
  v7 = sub_214CCD914();
  v23 = &v39;
  v39 = v7;
  v21 = 0;
  v22 = sub_214BC5914();
  v24 = type metadata accessor for SummarizationClientError();
  if (swift_dynamicCast())
  {
    v20 = v38;
  }

  else
  {
    v20 = 0;
  }

  v19 = v20;
  if (!v20)
  {
    result = (*(v30 + 8))(v29, v32);
    goto LABEL_13;
  }

  v18 = v19;
  v14 = v19;
  v37 = v19;
  v36 = 0;
  v35[2] = v19;
  sub_214B010E8();
  sub_214CCD024();
  v17 = v35;
  v35[0] = v35[1];
  v15 = &v34;
  v34 = 3;
  v16 = type metadata accessor for Code();
  sub_214B03520();
  v8 = sub_214CD03F4();
  if (v8)
  {
    v9 = v14;
    v10 = v25;
    *v25 = 4;
  }

  else
  {
    v9 = v14;
    v10 = v25;
    *v25 = 3;
  }

  v10[1] = 0;
  *(v10 + 16) = 2;
  v11 = MEMORY[0x277D82BD8](v9);
  return (*(v30 + 8))(v29, v32, v11);
}

id ManualSummaryController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManualSummaryController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static ManualSummaryController.externalIntelligenceProviderName.getter()
{
  sub_214CCF614();
  v1 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614();
  sub_214B1C228();
  v2 = sub_214CCCF54();

  MEMORY[0x277D82BD8](v1);

  return v2;
}

uint64_t static ManualSummaryController.externalIntelligenceProviderIconSymbolName.getter()
{
  MEMORY[0x277D82BE0](@"text.line.3.summary");
  v1 = sub_214CCF564();
  MEMORY[0x277D82BD8](@"text.line.3.summary");
  return v1;
}

uint64_t static ManualSummaryController.== infix(_:_:)()
{
  sub_214BBBBE0();
  sub_214BBBBE0();
  sub_214B71394();
  sub_214BC5978();
  v1 = sub_214CCF8E4();

  return v1 & 1;
}

id sub_214BC53F8(uint64_t a1, char a2, char a3)
{
  v6 = [v3 initWithSummary:a1 requiresConfirmation:a2 & 1 isExternalSummary:a3 & 1];
  MEMORY[0x277D82BD8](a1);
  return v6;
}

unint64_t sub_214BC5458()
{
  v2 = qword_27CA364C8;
  if (!qword_27CA364C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA364C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA364C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BC54E0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_214A82860;

  return sub_214BBE1E0(a1, v6, v7, v8, v9, v10, v11 & 1);
}

unint64_t sub_214BC55E0()
{
  v2 = qword_27CA364D0;
  if (!qword_27CA364D0)
  {
    sub_214CCD964();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA364D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BC5660(uint64_t a1)
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

  return sub_214BC4090(a1, v6, v7, v8, v9);
}

void *sub_214BC5744(const void *a1, void *a2)
{
  v6 = sub_214CCD924();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364D8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214BC586C(uint64_t a1)
{
  v3 = sub_214CCD924();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214BC5914()
{
  v2 = qword_280C7EC20;
  if (!qword_280C7EC20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7EC20);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BC5978()
{
  v2 = qword_27CA364E0;
  if (!qword_27CA364E0)
  {
    sub_214B71394();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA364E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BC5A10()
{
  v2 = qword_27CA364E8;
  if (!qword_27CA364E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA364E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_6MailUI18ManualSummaryErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3u) < 2)
  {
    return *(a1 + 16) & 3;
  }

  else
  {
    return *a1 + 2;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  return result;
}

uint64_t sub_214BC5ABC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_214BC5BB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 16) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_214BC5D6C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = a2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 2;
  }

  return result;
}

uint64_t sub_214BC5DF0()
{
  updated = sub_214CCDA74();
  if (v0 <= 0x3F)
  {
    updated = sub_214BC6298();
    if (v1 <= 0x3F)
    {
      updated = sub_214BC6334();
      if (v2 <= 0x3F)
      {
        updated = swift_updateClassMetadata2();
        if (!updated)
        {
          return 0;
        }
      }
    }
  }

  return updated;
}

uint64_t sub_214BC6298()
{
  v4 = qword_280C7EA88;
  if (!qword_280C7EA88)
  {
    sub_214CCD874();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7EA88);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214BC6334()
{
  v4 = qword_280C7EA80;
  if (!qword_280C7EA80)
  {
    sub_214CCD8D4();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7EA80);
      return v1;
    }
  }

  return v4;
}

void *sub_214BC63D0(const void *a1, void *a2)
{
  v6 = sub_214CCD8D4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_214BC64F8(const void *a1, void *a2)
{
  v6 = sub_214CCD874();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA364B0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_214BC6634()
{
  v2 = qword_27CA364F0;
  if (!qword_27CA364F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA381C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA364F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BC66BC()
{
  v2 = qword_27CA36500;
  if (!qword_27CA36500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA364F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BC6744()
{
  v2 = qword_27CA36508;
  if (!qword_27CA36508)
  {
    sub_214CCD834();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36508);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BC67C4()
{
  sub_214CCD8D4();

  return sub_214BC373C();
}

uint64_t sub_214BC6828(uint64_t a1)
{
  if (*(a1 + 16) != 255)
  {
    sub_214BBAA50(*a1, *(a1 + 8), *(a1 + 16));
  }

  return a1;
}

unint64_t sub_214BC6874()
{
  v2 = qword_27CA36510;
  if (!qword_27CA36510)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA36510);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BC68D8()
{
  v2 = qword_27CA38210;
  if (!qword_27CA38210)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA38210);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BC693C()
{
  v2 = qword_27CA36518;
  if (!qword_27CA36518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36238);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36518);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BC69DC()
{
  sub_214BD27E8(0);
  sub_214CCF224();
  sub_214BD2AD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36608);
  sub_214BD2B50();
  return sub_214CD0104();
}

double sub_214BC6A7C@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = v3 + OBJC_IVAR___MUIManualSummaryView_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v4 + 8);
  swift_endAccess();
  *a2 = Strong;
  a2[1] = v7;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BC6B30(uint64_t *a1, void *a2)
{
  sub_214B31A8C(a1, v7);
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  v6 = v4 + OBJC_IVAR___MUIManualSummaryView_delegate;
  swift_beginAccess();
  *(v6 + 8) = v5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t ManualSummaryView.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t ManualSummaryView.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v5 = v2 + OBJC_IVAR___MUIManualSummaryView_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ManualSummaryView.delegate.modify(void *a1))(void **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[5] = v1;
  v2 = OBJC_IVAR___MUIManualSummaryView_delegate;
  v7[6] = OBJC_IVAR___MUIManualSummaryView_delegate;
  v6 = v1 + v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v6 + 8);
  v7[3] = Strong;
  v7[4] = v4;
  return sub_214B2E918;
}

uint64_t ManualSummaryView.viewModel.getter()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC7000@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  v6 = *v4;
  MEMORY[0x277D82BE0](*v4);
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BC70A8(uint64_t *a1, void *a2)
{
  sub_214A671A8(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  ManualSummaryView.viewModel.setter(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

double ManualSummaryView.viewModel.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  sub_214BC71BC();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BC71E8()
{
  v7 = sub_214BD01AC;
  v26 = 0;
  v8 = 0;
  v12 = sub_214CCF224();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = &v4 - v4;
  v16 = sub_214CCF254();
  v13 = *(v16 - 8);
  v14 = v16 - 8;
  v5 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v15 = &v4 - v5;
  v26 = v0;
  sub_214B51A38();
  v18 = sub_214CCFC44();
  MEMORY[0x277D82BE0](v6);
  v1 = swift_allocObject();
  v2 = v7;
  *(v1 + 16) = v6;
  v24 = v2;
  v25 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = 0;
  v22 = sub_214A746A8;
  v23 = &block_descriptor_10;
  v17 = _Block_copy(&aBlock);

  sub_214BC69C4();
  sub_214BC69DC();
  MEMORY[0x21605DF00](v8, v15, v11, v17);
  (*(v9 + 8))(v11, v12);
  (*(v13 + 8))(v15, v16);
  _Block_release(v17);
  *&result = MEMORY[0x277D82BD8](v18).n128_u64[0];
  return result;
}

void (*ManualSummaryView.viewModel.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214BC74C0;
}

void sub_214BC74C0(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214BC71BC();
  }
}

uint64_t sub_214BC7510()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_titleLabelTopConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC7580(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_titleLabelTopConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BC7618()
{
  v7 = (v0 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___titleLabel);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BC7724();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___titleLabel);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BC7724()
{
  sub_214A73F68();
  v3 = sub_214C8C41C();
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v3);
  v1 = sub_214BC6F18();
  [v3 setTextColor_];
  MEMORY[0x277D82BD8](v1);
  sub_214BD1F48();
  v2 = static UIFont.manualSummaryTitle.getter();
  [v3 setFont_];
  [v3 setAdjustsFontForContentSizeCategory_];
  return v3;
}

double sub_214BC7838(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___titleLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BC78D0()
{
  v9 = (v0 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  v10 = *v9;
  MEMORY[0x277D82BE0](*v9);
  swift_endAccess();
  if (v10)
  {
    v1 = [v10 isInlineSummary];
    if (v1)
    {
      v6 = *&v8[OBJC_IVAR___MUIManualSummaryView_inlineTopPadding];
      MEMORY[0x277D82BD8](v10);
      return v6;
    }

    MEMORY[0x277D82BD8](v10);
  }

  v4 = [v8 traitCollection];
  v5 = [v4 mf_hasCompactDimension];
  MEMORY[0x277D82BD8](v4);
  if (v5)
  {
    return *&v8[OBJC_IVAR___MUIManualSummaryView_topPaddingForCompactWidth];
  }

  else
  {
    return *&v8[OBJC_IVAR___MUIManualSummaryView_topPaddingForRegularWidth];
  }
}

uint64_t sub_214BC7A7C()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_buttonBaselineConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC7AEC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_buttonBaselineConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BC7B84()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_buttonCenterYConstaint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC7BF4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_buttonCenterYConstaint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BC7C8C()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_buttonTrailingConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC7CFC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_buttonTrailingConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BC7D94()
{
  v7 = (v0 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___button);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BC7EA0(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___button);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BC7EA0(uint64_t a1)
{
  v6 = a1;
  v8 = sub_214BD2A64;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v12 = 0;
  v5 = (*(*(sub_214CCFEA4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v13 = &v5 - v5;
  v18 = v1;
  sub_214BD1DB0();
  v11 = swift_allocObject();
  MEMORY[0x277D82BE0](v6);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v6);

  v10 = sub_214B1C228();
  v9 = v2;
  v7 = sub_214BD2BD8();
  sub_214A73344();
  v14 = sub_214CCFD84();

  v16 = v14;
  sub_214BD2A6C();
  sub_214CCFE74();
  MEMORY[0x277D82BE0](v14);
  v15 = sub_214CCFEB4();
  MEMORY[0x277D82BE0](v15);
  v17 = v15;
  *&v3 = MEMORY[0x277D82BE0](v15).n128_u64[0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v17);
  return v15;
}

double sub_214BC80E0(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  v4[4] = a2 + 16;
  swift_beginAccess();
  v4[0] = swift_unknownObjectWeakLoadStrong();
  if (v4[0])
  {
    v3 = v4[0];
    MEMORY[0x277D82BE0](v4[0]);
    sub_214A671E8(v4);
    swift_endAccess();
    sub_214BC81A8();
    *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  else
  {
    sub_214A671E8(v4);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_214BC81A8()
{
  sub_214CCDA94();
  v11 = sub_214CCDA84();
  v12 = v0;
  v13 = OBJC_IVAR___MUIManualSummaryView_viewModel;
  v14 = (v10 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  if (*v14)
  {
    v6 = *(v10 + v13);
    MEMORY[0x277D82BE0](v6);
    swift_endAccess();
    v7 = [v6 state];
    MEMORY[0x277D82BD8](v6);
    v8 = v7;
    v9 = 0;
  }

  else
  {
    swift_endAccess();
    v8 = 0;
    v9 = 1;
  }

  if ((v9 & 1) != 0 || v8 || (v11 & 1) == 0)
  {
    v4 = v10 + OBJC_IVAR___MUIManualSummaryView_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v18 = *(v4 + 8);
    if (Strong)
    {
      swift_unknownObjectRetain();
      sub_214A759F4();
      swift_endAccess();
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(v10, ObjectType);
      swift_unknownObjectRelease();
    }

LABEL_13:
    sub_214A759F4();
    swift_endAccess();
  }

  v5 = v10 + OBJC_IVAR___MUIManualSummaryView_delegate;
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  v16 = *(v5 + 8);
  if (!v15)
  {
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  sub_214A759F4();
  swift_endAccess();
  v1 = swift_getObjectType();
  (*(v16 + 24))(v10, v12, v1);
  swift_unknownObjectRelease();
}

double sub_214BC84A8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___button);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BC8540()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_textViewShowingLoadingAnimation);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214BC85A8(char a1)
{
  v3 = (v1 + OBJC_IVAR___MUIManualSummaryView_textViewShowingLoadingAnimation);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214BC861C()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_textViewHeightConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC868C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_textViewHeightConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BC8724()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_textViewTopConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC8794(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_textViewTopConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BC882C()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_textViewBottomConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC889C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_textViewBottomConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BC8934()
{
  v7 = (v0 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___textView);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BC8A40(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___textView);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BC8A40(uint64_t a1)
{
  sub_214BD2A00();
  v8 = sub_214A61730();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v8);
  sub_214A65CE0();
  v4 = static UIColor.platformLabel.getter();
  [v8 setTextColor_];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BE0](v8);
  v5 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];
  MEMORY[0x277D82BD8](v5);
  [v8 setEditable_];
  [v8 setSelectable_];
  sub_214BD1F48();
  v6 = static UIFont.manualSummaryTextView.getter();
  [v8 setFont_];
  MEMORY[0x277D82BD8](v6);
  sub_214C8D44C(*(a1 + OBJC_IVAR___MUIManualSummaryView_textViewLineFragmentPadding));
  [v8 setScrollEnabled_];
  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 frame];
  [v8 setFrame_];
  MEMORY[0x277D82BD8](v8);
  return v8;
}

double sub_214BC8CC8(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___textView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BC8D60()
{
  v4 = *(v0 + OBJC_IVAR___MUIManualSummaryView_bottomPadding);
  v2 = sub_214BC8934();
  v3 = sub_214C8D4C4();
  MEMORY[0x277D82BD8](v2);
  return -(v4 - v3 / 2.0);
}

double sub_214BC8DDC()
{
  v4 = *(v0 + OBJC_IVAR___MUIManualSummaryView_bottomPadding);
  v2 = sub_214BC8934();
  v3 = sub_214C8D4C4();
  MEMORY[0x277D82BD8](v2);
  return v4 - v3 / 2.0;
}

uint64_t sub_214BC8E54()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelZeroHeightConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC8EC4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelZeroHeightConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BC8F5C()
{
  v2 = (v0 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelBottomConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BC8FCC(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelBottomConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BC9064()
{
  v7 = (v0 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___externalIntelligenceLabel);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BC9170(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___externalIntelligenceLabel);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BC9170(uint64_t a1)
{
  v13 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v12 = 0;
  v9 = (*(*(sub_214CCCF24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v21 = &v8 - v9;
  v31 = v1;
  sub_214A73F68();
  v28 = sub_214C8C41C();
  v30 = v28;
  *&v2 = MEMORY[0x277D82BE0](v28).n128_u64[0];
  v20 = 1;
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v28);
  v10 = sub_214BC6F54();
  [v28 setTextColor_];
  MEMORY[0x277D82BD8](v10);
  sub_214BD1F48();
  v11 = static UIFont.manualSummaryExternalIntelligenceLabel.getter();
  [v28 setFont_];
  MEMORY[0x277D82BD8](v11);
  *&v3 = MEMORY[0x277D82BE0](v28).n128_u64[0];
  [v28 setHidden_];
  *&v4 = MEMORY[0x277D82BD8](v28).n128_u64[0];
  [v28 setAdjustsFontForContentSizeCategory_];
  sub_214BD299C();
  sub_214CCF614();
  sub_214CCCF14();
  v27 = sub_214CCFC84();
  v29 = v27;
  v24 = sub_214AF7FCC();
  v15 = objc_opt_self();
  v22 = type metadata accessor for ManualSummaryController();
  static ManualSummaryController.externalIntelligenceProviderIconSymbolName.getter();
  v14 = v5;
  v17 = sub_214CCF544();

  v16 = sub_214BC6F54();
  v18 = [v15 mui:v17 textAttachmentWithSystemImage:? systemImageColor:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v19 = sub_214BF1960(v18);
  v25 = 0x1FB92B000uLL;
  [v27 0x1FB92B19BLL];
  MEMORY[0x277D82BD8](v19);
  sub_214CCF614();
  sub_214CCCF14();
  v23 = sub_214CCFC84();
  [v27 (v25 + 411)];
  MEMORY[0x277D82BD8](v23);
  static ManualSummaryController.externalIntelligenceProviderName.getter();
  v26 = sub_214BC9508();
  [v27 (v25 + 411)];
  MEMORY[0x277D82BD8](v26);
  *&v6 = MEMORY[0x277D82BE0](v27).n128_u64[0];
  [v28 setAttributedText_];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v27);
  return v28;
}

double sub_214BC9550(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___externalIntelligenceLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

_BYTE *ManualSummaryView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  *&v9 = a3;
  *(&v9 + 1) = a4;
  ObjectType = swift_getObjectType();
  v12 = v8;
  v13 = v9;
  v14 = v4;
  *&v4[OBJC_IVAR___MUIManualSummaryView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v14[OBJC_IVAR___MUIManualSummaryView_inlineTopPadding] = 17.0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_buttonImagePadding] = 2.0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_topPaddingForRegularWidth] = 22.0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_topPaddingForCompactWidth] = 12.0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_leadingMargin] = -7.0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_trailingMargin] = 7.0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_textViewTopPadding] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_bottomPadding] = 10.0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_textViewLoadingBottomPadding] = 12.0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_textViewLineFragmentPadding] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_viewModel] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_titleLabelTopConstraint] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView____lazy_storage___titleLabel] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_buttonBaselineConstraint] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_buttonCenterYConstaint] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_buttonTrailingConstraint] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView____lazy_storage___button] = 0;
  v14[OBJC_IVAR___MUIManualSummaryView_textViewShowingLoadingAnimation] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_textViewHeightConstraint] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_textViewTopConstraint] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_textViewBottomConstraint] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView____lazy_storage___textView] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelZeroHeightConstraint] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelBottomConstraint] = 0;
  *&v14[OBJC_IVAR___MUIManualSummaryView____lazy_storage___externalIntelligenceLabel] = 0;
  v5 = &v14[OBJC_IVAR___MUIManualSummaryView____lazy_storage___showSummaryButtonTitle];
  *v5 = 0;
  v5[1] = 0;
  v11.receiver = v14;
  v11.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v11, sel_initWithFrame_, v8, v9);
  MEMORY[0x277D82BE0](v10);
  v14 = v10;
  sub_214BC993C();
  MEMORY[0x277D82BD8](v14);
  return v10;
}

double sub_214BC993C()
{
  [v0 setMui:0 clipsToBounds:MEMORY[0x277D82BE0](v0).n128_f64[0]];
  MEMORY[0x277D82BD8](v0);
  [v0 setPreservesSuperviewLayoutMargins_];
  MEMORY[0x277D82BD8](v0);
  v21 = sub_214BC7618();
  [v105 0x1FAB997F8];
  MEMORY[0x277D82BD8](v21);
  v22 = sub_214BC8934();
  [v105 0x1FAB997F8];
  MEMORY[0x277D82BD8](v22);
  v23 = sub_214BC7D94();
  [v105 0x1FAB997F8];
  MEMORY[0x277D82BD8](v23);
  v24 = sub_214BC9064();
  [v105 0x1FAB997F8];
  MEMORY[0x277D82BD8](v24);
  v25 = sub_214BC8934();
  v26 = [v25 0x1FBB445BALL];
  MEMORY[0x277D82BD8](v25);
  v28 = [v26 0x1FBB28FF1];
  MEMORY[0x277D82BD8](v26);
  v27 = &v105[OBJC_IVAR___MUIManualSummaryView_textViewHeightConstraint];
  swift_beginAccess();
  v1 = *v27;
  *v27 = v28;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  v29 = sub_214BC8934();
  v32 = [v29 0x1FBBB4950];
  MEMORY[0x277D82BD8](v29);
  v30 = sub_214BC7618();
  v31 = [v30 0x1FBB20D25];
  MEMORY[0x277D82BD8](v30);
  v34 = [v32 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  v33 = &v105[OBJC_IVAR___MUIManualSummaryView_textViewTopConstraint];
  swift_beginAccess();
  v2 = *v33;
  *v33 = v34;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  v35 = sub_214BC8934();
  v38 = [v35 0x1FBB20D25];
  MEMORY[0x277D82BD8](v35);
  v36 = sub_214BC9064();
  v37 = [v36 0x1FBBB4950];
  MEMORY[0x277D82BD8](v36);
  v40 = [v38 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  v39 = &v105[OBJC_IVAR___MUIManualSummaryView_textViewBottomConstraint];
  swift_beginAccess();
  v3 = *v39;
  *v39 = v40;
  MEMORY[0x277D82BD8](v3);
  swift_endAccess();
  v41 = sub_214BC7618();
  v43 = [v41 0x1FBBB4950];
  MEMORY[0x277D82BD8](v41);
  v42 = [v105 0x1FBBB4950];
  (MEMORY[0x277D82BD8])();
  v45 = [v43 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  v44 = &v105[OBJC_IVAR___MUIManualSummaryView_titleLabelTopConstraint];
  swift_beginAccess();
  v4 = *v44;
  *v44 = v45;
  MEMORY[0x277D82BD8](v4);
  swift_endAccess();
  v46 = sub_214BC7D94();
  v49 = [v46 0x1FBB3EC28];
  MEMORY[0x277D82BD8](v46);
  v47 = sub_214BC7618();
  v48 = [v47 0x1FBB3EC28];
  v51 = [v49 0x1FBB28F65];
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  v50 = &v105[OBJC_IVAR___MUIManualSummaryView_buttonBaselineConstraint];
  swift_beginAccess();
  v5 = *v50;
  *v50 = v51;
  MEMORY[0x277D82BD8](v5);
  swift_endAccess();
  v52 = sub_214BC7D94();
  v55 = [v52 0x1FBB23FE0];
  MEMORY[0x277D82BD8](v52);
  v53 = sub_214BC7618();
  v54 = [v53 0x1FBB23FE0];
  v57 = [v55 0x1FBB28F65];
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  v56 = &v105[OBJC_IVAR___MUIManualSummaryView_buttonCenterYConstaint];
  swift_beginAccess();
  v6 = *v56;
  *v56 = v57;
  MEMORY[0x277D82BD8](v6);
  swift_endAccess();
  v58 = sub_214BC9064();
  v60 = [v58 0x1FBB20D25];
  MEMORY[0x277D82BD8](v58);
  v59 = [v105 0x1FBB20D25];
  (MEMORY[0x277D82BD8])();
  v62 = [v60 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  v61 = &v105[OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelBottomConstraint];
  swift_beginAccess();
  v7 = *v61;
  *v61 = v62;
  MEMORY[0x277D82BD8](v7);
  swift_endAccess();
  v63 = sub_214BC9064();
  v64 = [v63 0x1FBB445BALL];
  MEMORY[0x277D82BD8](v63);
  v66 = [v64 0x1FBB28FF1];
  MEMORY[0x277D82BD8](v64);
  v65 = &v105[OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelZeroHeightConstraint];
  swift_beginAccess();
  v8 = *v65;
  *v65 = v66;
  MEMORY[0x277D82BD8](v8);
  swift_endAccess();
  v67 = sub_214BC7D94();
  v70 = [v67 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v67);
  v68 = [v105 0x1FBB5C2A9];
  v69 = [v68 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v68);
  v72 = [v70 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v70);
  v71 = &v105[OBJC_IVAR___MUIManualSummaryView_buttonTrailingConstraint];
  swift_beginAccess();
  v9 = *v71;
  *v71 = v72;
  MEMORY[0x277D82BD8](v9);
  swift_endAccess();
  v73 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36598);
  sub_214CD03C4();
  v113 = v10;
  v74 = sub_214BC7618();
  v77 = [v74 0x1FBB5C529];
  MEMORY[0x277D82BD8](v74);
  v75 = [v105 0x1FBB5C2A9];
  v76 = [v75 0x1FBB5C529];
  MEMORY[0x277D82BD8](v75);
  v78 = [v77 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  *v113 = v78;
  v79 = sub_214BC7618();
  v82 = [v79 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v79);
  v80 = sub_214BC7D94();
  v81 = [v80 0x1FBB5C529];
  v83 = [v82 constraintLessThanOrEqualToAnchor_];
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  v113[1] = v83;
  v84 = &v105[OBJC_IVAR___MUIManualSummaryView_titleLabelTopConstraint];
  swift_beginAccess();
  sub_214A671A8(v84, v113 + 2);
  swift_endAccess();
  v85 = &v105[OBJC_IVAR___MUIManualSummaryView_buttonTrailingConstraint];
  swift_beginAccess();
  sub_214A671A8(v85, v113 + 3);
  swift_endAccess();
  v86 = &v105[OBJC_IVAR___MUIManualSummaryView_buttonBaselineConstraint];
  swift_beginAccess();
  sub_214A671A8(v86, v113 + 4);
  swift_endAccess();
  v87 = &v105[OBJC_IVAR___MUIManualSummaryView_textViewHeightConstraint];
  swift_beginAccess();
  sub_214A671A8(v87, v113 + 5);
  swift_endAccess();
  v88 = sub_214BC8934();
  v91 = [v88 0x1FBB5C529];
  MEMORY[0x277D82BD8](v88);
  v89 = sub_214BC7618();
  v90 = [v89 0x1FBB5C529];
  v92 = [v91 0x1FBB28F65];
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  v113[6] = v92;
  v93 = sub_214BC8934();
  v96 = [v93 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v93);
  v94 = [v105 0x1FBB5C2A9];
  v95 = [v94 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v94);
  v97 = [v96 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  v113[7] = v97;
  v98 = &v105[OBJC_IVAR___MUIManualSummaryView_textViewTopConstraint];
  swift_beginAccess();
  sub_214A671A8(v98, v113 + 8);
  swift_endAccess();
  v99 = &v105[OBJC_IVAR___MUIManualSummaryView_textViewBottomConstraint];
  swift_beginAccess();
  sub_214A671A8(v99, v113 + 9);
  swift_endAccess();
  v100 = sub_214BC9064();
  v103 = [v100 0x1FBB5C529];
  MEMORY[0x277D82BD8](v100);
  v101 = sub_214BC7618();
  v102 = [v101 0x1FBB5C529];
  v104 = [v103 0x1FBB28F65];
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](v103);
  v113[10] = v104;
  v106 = sub_214BC9064();
  v109 = [v106 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v106);
  v107 = [v105 0x1FBB5C2A9];
  v108 = [v107 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v107);
  v110 = [v109 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v108);
  MEMORY[0x277D82BD8](v109);
  v113[11] = v110;
  v111 = &v105[OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelBottomConstraint];
  swift_beginAccess();
  sub_214A671A8(v111, v113 + 12);
  swift_endAccess();
  v112 = &v105[OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelZeroHeightConstraint];
  swift_beginAccess();
  sub_214A671A8(v112, v113 + 13);
  swift_endAccess();
  sub_214A63280();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A0);
  sub_214A6F394();
  sub_214BD01B4();
  sub_214CCF6F4();
  sub_214A62278();
  v16 = sub_214CCF7D4();

  [v73 activateConstraints_];
  MEMORY[0x277D82BD8](v16);
  v17 = sub_214BC7618();
  LODWORD(v11) = 1148846080;
  [v17 0x1FBB8328ELL];
  MEMORY[0x277D82BD8](v17);
  v18 = sub_214BC8934();
  LODWORD(v12) = 1148846080;
  [v18 0x1FBB8328ELL];
  MEMORY[0x277D82BD8](v18);
  v19 = sub_214BC7D94();
  LODWORD(v13) = 1148846080;
  [v19 setContentHuggingPriority:0 forAxis:v13];
  MEMORY[0x277D82BD8](v19);
  v20 = sub_214BC7D94();
  LODWORD(v14) = 1148846080;
  [v20 0x1FBB8328ELL];
  MEMORY[0x277D82BD8](v20);
  return sub_214BC71E8();
}

void sub_214BCAD88()
{
  *(OBJC_IVAR___MUIManualSummaryView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR___MUIManualSummaryView_inlineTopPadding = 17.0;
  *OBJC_IVAR___MUIManualSummaryView_buttonImagePadding = 2.0;
  *OBJC_IVAR___MUIManualSummaryView_topPaddingForRegularWidth = 22.0;
  *OBJC_IVAR___MUIManualSummaryView_topPaddingForCompactWidth = 12.0;
  *OBJC_IVAR___MUIManualSummaryView_leadingMargin = -7.0;
  *OBJC_IVAR___MUIManualSummaryView_trailingMargin = 7.0;
  *OBJC_IVAR___MUIManualSummaryView_textViewTopPadding = 0;
  *OBJC_IVAR___MUIManualSummaryView_bottomPadding = 10.0;
  *OBJC_IVAR___MUIManualSummaryView_textViewLoadingBottomPadding = 12.0;
  *OBJC_IVAR___MUIManualSummaryView_textViewLineFragmentPadding = 0;
  *OBJC_IVAR___MUIManualSummaryView_viewModel = 0;
  *OBJC_IVAR___MUIManualSummaryView_titleLabelTopConstraint = 0;
  *OBJC_IVAR___MUIManualSummaryView____lazy_storage___titleLabel = 0;
  *OBJC_IVAR___MUIManualSummaryView_buttonBaselineConstraint = 0;
  *OBJC_IVAR___MUIManualSummaryView_buttonCenterYConstaint = 0;
  *OBJC_IVAR___MUIManualSummaryView_buttonTrailingConstraint = 0;
  *OBJC_IVAR___MUIManualSummaryView____lazy_storage___button = 0;
  *OBJC_IVAR___MUIManualSummaryView_textViewShowingLoadingAnimation = 0;
  *OBJC_IVAR___MUIManualSummaryView_textViewHeightConstraint = 0;
  *OBJC_IVAR___MUIManualSummaryView_textViewTopConstraint = 0;
  *OBJC_IVAR___MUIManualSummaryView_textViewBottomConstraint = 0;
  *OBJC_IVAR___MUIManualSummaryView____lazy_storage___textView = 0;
  *OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelZeroHeightConstraint = 0;
  *OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelBottomConstraint = 0;
  *OBJC_IVAR___MUIManualSummaryView____lazy_storage___externalIntelligenceLabel = 0;
  v0 = OBJC_IVAR___MUIManualSummaryView____lazy_storage___showSummaryButtonTitle;
  *OBJC_IVAR___MUIManualSummaryView____lazy_storage___showSummaryButtonTitle = 0;
  *(v0 + 8) = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

Swift::Void __swiftcall ManualSummaryView.updateConstraints()()
{
  v7.super_class = swift_getObjectType();
  v13 = v0;
  v8 = OBJC_IVAR___MUIManualSummaryView_viewModel;
  v9 = (v0 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  if (*v9)
  {
    v3 = *(v7.receiver + v8);
    MEMORY[0x277D82BE0](v3);
    swift_endAccess();
    v4 = [v3 state];
    MEMORY[0x277D82BD8](v3);
    v5 = v4;
    v6 = 0;
  }

  else
  {
    swift_endAccess();
    v5 = 0;
    v6 = 1;
  }

  v11 = v5;
  v12 = v6 & 1;
  if (v6)
  {
    v2 = 0;
  }

  else
  {
    v2 = v11;
  }

  sub_214BCB1E4(v2);
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v10 = v7;
  objc_msgSendSuper2(&v10, sel_updateConstraints, v1);
  (MEMORY[0x277D82BD8])();
}

void sub_214BCB1E4(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1 && a1 != 2 && a1 != 3)
    {
      sub_214B11080();
      sub_214CD0204();
      __break(1u);
      goto LABEL_63;
    }

    v24 = sub_214BD023C(a1, v40);
    v25 = (v40 + OBJC_IVAR___MUIManualSummaryView_textViewTopConstraint);
    swift_beginAccess();
    if (*v25)
    {
      v23 = *v25;
      MEMORY[0x277D82BE0](*v25);
      swift_endAccess();
      [v23 setConstant_];
      MEMORY[0x277D82BD8](v23);
    }

    else
    {
      swift_endAccess();
    }

    v22 = (v40 + OBJC_IVAR___MUIManualSummaryView_textViewBottomConstraint);
    swift_beginAccess();
    if (*v22)
    {
      v21 = *v22;
      MEMORY[0x277D82BE0](*v22);
      swift_endAccess();
      [v21 setConstant_];
      MEMORY[0x277D82BD8](v21);
    }

    else
    {
      swift_endAccess();
    }

    v20 = sub_214BCFAF8(v24);
    type metadata accessor for MUIManualSummaryViewModelState();
    sub_214B04718();
    if (sub_214CD03F4())
    {
      v19 = v20 + *(v40 + OBJC_IVAR___MUIManualSummaryView_textViewLoadingBottomPadding);
    }

    else
    {
      v19 = v20;
    }

    v18 = (v40 + OBJC_IVAR___MUIManualSummaryView_textViewHeightConstraint);
    swift_beginAccess();
    if (*v18)
    {
      v17 = *v18;
      MEMORY[0x277D82BE0](*v18);
      swift_endAccess();
      [v17 setConstant_];
      MEMORY[0x277D82BD8](v17);
    }

    else
    {
      swift_endAccess();
    }

    v16 = (v40 + OBJC_IVAR___MUIManualSummaryView_buttonBaselineConstraint);
    swift_beginAccess();
    if (*v16)
    {
      v15 = *v16;
      MEMORY[0x277D82BE0](*v16);
      swift_endAccess();
      [v15 setActive_];
      MEMORY[0x277D82BD8](v15);
    }

    else
    {
      swift_endAccess();
    }

    v14 = (v40 + OBJC_IVAR___MUIManualSummaryView_buttonCenterYConstaint);
    swift_beginAccess();
    if (*v14)
    {
      v13 = *v14;
      MEMORY[0x277D82BE0](*v14);
      swift_endAccess();
      [v13 setActive_];
      MEMORY[0x277D82BD8](v13);
    }

    else
    {
      swift_endAccess();
    }

    if (sub_214CD03F4() & 1) == 0 || (v11 = sub_214BC9064(), v12 = [v11 isHidden], MEMORY[0x277D82BD8](v11), (v12))
    {
      v6 = (v40 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelBottomConstraint);
      swift_beginAccess();
      if (*v6)
      {
        v5 = *v6;
        MEMORY[0x277D82BE0](*v6);
        swift_endAccess();
        [v5 setConstant_];
        MEMORY[0x277D82BD8](v5);
      }

      else
      {
        swift_endAccess();
      }

      v4 = (v40 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelZeroHeightConstraint);
      swift_beginAccess();
      if (*v4)
      {
        v3 = *v4;
        MEMORY[0x277D82BE0](*v4);
        swift_endAccess();
        [v3 setActive_];
        MEMORY[0x277D82BD8](v3);
        goto LABEL_57;
      }
    }

    else
    {
      v10 = (v40 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelBottomConstraint);
      swift_beginAccess();
      if (*v10)
      {
        v9 = *v10;
        MEMORY[0x277D82BE0](*v10);
        swift_endAccess();
        [v9 setConstant_];
        MEMORY[0x277D82BD8](v9);
      }

      else
      {
        swift_endAccess();
      }

      v8 = (v40 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelZeroHeightConstraint);
      swift_beginAccess();
      if (*v8)
      {
        v7 = *v8;
        MEMORY[0x277D82BE0](*v8);
        swift_endAccess();
        [v7 setActive_];
        MEMORY[0x277D82BD8](v7);
LABEL_57:
        MEMORY[0x277D82BD8](v24);
        goto LABEL_63;
      }
    }

    swift_endAccess();
    goto LABEL_57;
  }

  v39 = (v40 + OBJC_IVAR___MUIManualSummaryView_textViewHeightConstraint);
  swift_beginAccess();
  if (*v39)
  {
    v38 = *v39;
    MEMORY[0x277D82BE0](*v39);
    swift_endAccess();
    [v38 setConstant_];
    MEMORY[0x277D82BD8](v38);
  }

  else
  {
    swift_endAccess();
  }

  v37 = (v40 + OBJC_IVAR___MUIManualSummaryView_textViewTopConstraint);
  swift_beginAccess();
  if (*v37)
  {
    v36 = *v37;
    MEMORY[0x277D82BE0](*v37);
    swift_endAccess();
    [v36 setConstant_];
    MEMORY[0x277D82BD8](v36);
  }

  else
  {
    swift_endAccess();
  }

  v35 = (v40 + OBJC_IVAR___MUIManualSummaryView_textViewBottomConstraint);
  swift_beginAccess();
  if (*v35)
  {
    v34 = *v35;
    MEMORY[0x277D82BE0](*v35);
    swift_endAccess();
    if (MUISolariumFeatureEnabled())
    {
      [v34 setConstant_];
    }

    else
    {
      [v34 setConstant_];
    }

    MEMORY[0x277D82BD8](v34);
  }

  else
  {
    swift_endAccess();
  }

  v33 = (v40 + OBJC_IVAR___MUIManualSummaryView_buttonBaselineConstraint);
  swift_beginAccess();
  if (*v33)
  {
    v32 = *v33;
    MEMORY[0x277D82BE0](*v33);
    swift_endAccess();
    [v32 setActive_];
    MEMORY[0x277D82BD8](v32);
  }

  else
  {
    swift_endAccess();
  }

  v31 = (v40 + OBJC_IVAR___MUIManualSummaryView_buttonCenterYConstaint);
  swift_beginAccess();
  if (*v31)
  {
    v30 = *v31;
    MEMORY[0x277D82BE0](*v31);
    swift_endAccess();
    [v30 setActive_];
    MEMORY[0x277D82BD8](v30);
  }

  else
  {
    swift_endAccess();
  }

  v29 = (v40 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelBottomConstraint);
  swift_beginAccess();
  if (*v29)
  {
    v28 = *v29;
    MEMORY[0x277D82BE0](*v29);
    swift_endAccess();
    [v28 setConstant_];
    MEMORY[0x277D82BD8](v28);
  }

  else
  {
    swift_endAccess();
  }

  v27 = (v40 + OBJC_IVAR___MUIManualSummaryView_externalIntelligenceLabelZeroHeightConstraint);
  swift_beginAccess();
  if (*v27)
  {
    v26 = *v27;
    MEMORY[0x277D82BE0](*v27);
    swift_endAccess();
    [v26 setActive_];
    MEMORY[0x277D82BD8](v26);
  }

  else
  {
    swift_endAccess();
  }

LABEL_63:
  v2 = (v40 + OBJC_IVAR___MUIManualSummaryView_titleLabelTopConstraint);
  swift_beginAccess();
  if (*v2)
  {
    v1 = *v2;
    MEMORY[0x277D82BE0](*v2);
    swift_endAccess();
    [v1 setConstant_];
    MEMORY[0x277D82BD8](v1);
  }

  else
  {
    swift_endAccess();
  }
}

double sub_214BCBE74()
{
  v24 = (v0 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  v25 = *v24;
  MEMORY[0x277D82BE0](*v24);
  swift_endAccess();
  if (v25)
  {
    v23 = [v25 summarizableMessageCount];
    if (v23 <= 0 || v23 == sub_214CCCE14())
    {
      *&result = MEMORY[0x277D82BD8](v25).n128_u64[0];
    }

    else
    {
      if ([v25 isInlineSummary] == 1)
      {
        sub_214CCF614();
        sub_214CCF614();
        v18 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614();
        v17 = v2;
        sub_214B1C228();
        v8 = v17;
        v19 = sub_214CCCF54();
        v20 = v3;

        MEMORY[0x277D82BD8](v18);

        v21 = v19;
        v22 = v20;
      }

      else
      {
        sub_214CCF614();
        sub_214CCF614();
        v14 = [objc_opt_self() mui_MailUIBundle];
        sub_214CCF614();
        v13 = v4;
        sub_214B1C228();
        v8 = v13;
        v15 = sub_214CCCF54();
        v16 = v5;

        MEMORY[0x277D82BD8](v14);

        v21 = v15;
        v22 = v16;
      }

      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270);
      v6 = sub_214CD03C4();
      v7[3] = MEMORY[0x277D83B88];
      v7[4] = MEMORY[0x277D83C10];
      *v7 = v23;
      sub_214A63280();
      v10 = v6;
      sub_214CCF554();

      v12 = sub_214BC7618();

      v11 = sub_214CCF544();

      [v12 setText_];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);

      sub_214A61B48();
      *&result = MEMORY[0x277D82BD8](v25).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_214BCC334()
{
  v8 = (v0 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___showSummaryButtonTitle);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];

  swift_endAccess();
  if (v10)
  {
    return v9;
  }

  v4 = sub_214BCC458();
  v5 = v1;

  v3 = (v7 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___showSummaryButtonTitle);
  swift_beginAccess();
  *v3 = v4;
  v3[1] = v5;

  swift_endAccess();
  return v4;
}

uint64_t sub_214BCC458()
{
  sub_214CCF614();
  v1 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614();
  sub_214B1C228();
  v2 = sub_214CCCF54();

  MEMORY[0x277D82BD8](v1);

  return v2;
}

uint64_t sub_214BCC558(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR___MUIManualSummaryView____lazy_storage___showSummaryButtonTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_214BCC5F4()
{
  v70 = "Fatal error";
  v71 = "MailUI/ManualSummaryView.swift";
  v93 = 0;
  v72 = sub_214BD1E78;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v104 = 0;
  v105 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8);
  v73 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v74 = &v19 - v73;
  v80 = 0;
  v75 = sub_214CCFDB4();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v78 = (*(v76 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80);
  v79 = &v19 - v78;
  v81 = sub_214CCFE44();
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v80);
  v85 = &v19 - v84;
  v86 = sub_214CCFEA4();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v86);
  v90 = &v19 - v89;
  v91 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v19 - v89);
  v92 = &v19 - v91;
  v108 = &v19 - v91;
  v107 = v0;
  sub_214CCFE74();
  v94 = OBJC_IVAR___MUIManualSummaryView_viewModel;
  v95 = (v0 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  if (!*v95)
  {
    goto LABEL_14;
  }

  v65 = *(v69 + v94);
  MEMORY[0x277D82BE0](v65);
  swift_endAccess();
  v66 = [v65 state];
  MEMORY[0x277D82BD8](v65);
  v67 = v66;
  for (i = 0; ; i = 1)
  {
    v64 = v67;
    if ((i & 1) != 0 || (v63 = v64, (v62 = v63) == 0))
    {
      sub_214CCFDD4();
      (*(v82 + 104))(v85, *MEMORY[0x277D75028], v81);
      sub_214CCFDA4();
      sub_214CCFDE4();
      v54 = v3;
      sub_214CCFDE4();
      sub_214CCFDF4();
      v4 = [objc_opt_self() systemBlueColor];
      sub_214CCFE24();
      v57 = 0;
      sub_214A731BC();
      v55 = @"text.line.3.summary";
      MEMORY[0x277D82BE0](@"text.line.3.summary");
      v5 = sub_214CCF564();
      v56 = sub_214A73284(v5, v6);
      MEMORY[0x277D82BD8](v55);
      sub_214CCFE64();
      sub_214A74030();
      v60 = 1;
      sub_214BCD550(1);
      sub_214CCFD94();
      v58 = sub_214BC7D94();
      [v58 setMenu_];
      MEMORY[0x277D82BD8](v58);
      v59 = sub_214BC7D94();
      [v59 setHidden_];
      MEMORY[0x277D82BD8](v59);
      v61 = sub_214BC7D94();
      [v61 setRole_];
      MEMORY[0x277D82BD8](v61);
      goto LABEL_15;
    }

    if (v62 == 1)
    {
      v52 = sub_214BC7D94();
      [v52 setHidden_];
      MEMORY[0x277D82BD8](v52);
      v53 = sub_214BC7D94();
      [v53 setMenu_];
      MEMORY[0x277D82BD8](v53);
      goto LABEL_15;
    }

    if (v62 == 2 || v62 == 3)
    {
      break;
    }

    sub_214B11080();
    sub_214CD0204();
    __break(1u);
LABEL_14:
    swift_endAccess();
    v67 = 0;
  }

  v7 = v92;
  sub_214CCFE54();
  (*(v87 + 40))(v7, v90, v86);
  (*(v82 + 104))(v85, *MEMORY[0x277D75028], v81);
  sub_214CCFDA4();
  (*(v76 + 104))(v79, *MEMORY[0x277D74FD8], v75);
  sub_214CCFDC4();
  v31 = 0x277D75000uLL;
  v8 = [objc_opt_self() quaternarySystemFillColor];
  sub_214CCFE14();
  v9 = [objc_opt_self() secondaryLabelColor];
  sub_214CCFE24();
  v42 = 0;
  sub_214CCFE84();
  sub_214A731BC();
  v32 = @"ellipsis";
  MEMORY[0x277D82BE0](@"ellipsis");
  sub_214CCF564();
  v33 = sub_214B4D9C8();
  MEMORY[0x277D82BD8](v32);
  sub_214CCFE64();
  sub_214A74030();
  sub_214BCD550(1);
  sub_214CCFD94();
  v51 = sub_214BCD59C(v69);
  v106 = v51;
  v47 = 1;
  v35 = sub_214CCF614();
  v39 = v10;
  v38 = [objc_opt_self() mui_MailUIBundle];
  v34 = sub_214CCF614();
  v37 = v11;
  sub_214B1C228();
  v36 = v12;
  v44 = sub_214CCCF54();
  v50 = v13;

  MEMORY[0x277D82BD8](v38);

  v104 = v44;
  v105 = v50;
  v46 = sub_214BC7D94();
  sub_214BD1D4C();

  v40 = sub_214BD1DB0();
  sub_214BD1E14();
  v41 = sub_214CD01A4();
  v43 = sub_214BCDCAC();
  sub_214BCDCDC();
  v45 = sub_214CCFD44();

  [v46 setMenu_];
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  v48 = sub_214BC7D94();
  [v48 setShowsMenuAsPrimaryAction_];
  MEMORY[0x277D82BD8](v48);
  v49 = sub_214BC7D94();
  [v49 setHidden_];
  MEMORY[0x277D82BD8](v49);

LABEL_15:
  v19 = sub_214BC7D94();
  (*(v87 + 16))(v74, v92, v86);
  (*(v87 + 56))(v74, 0, 1, v86);
  sub_214CCFED4();
  v14 = v69;
  MEMORY[0x277D82BD8](v19);
  v20 = (v14 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  v21 = &v103;
  swift_beginAccess();
  v22 = *v20;
  MEMORY[0x277D82BE0](v22);
  swift_endAccess();
  sub_214BCDD30(v22);
  MEMORY[0x277D82BD8](v22);
  v15 = sub_214BC7D94();
  v16 = v69;
  v27 = v15;
  v25 = swift_allocObject();
  v23 = v25 + 16;
  MEMORY[0x277D82BE0](v16);
  v24 = v16;
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v24);

  v101 = v72;
  v102 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v97 = 1107296256;
  v98 = 0;
  v99 = sub_214B100BC;
  v100 = &block_descriptor_6_1;
  v26 = _Block_copy(&aBlock);

  [v27 setConfigurationUpdateHandler_];
  _Block_release(v26);
  MEMORY[0x277D82BD8](v27);
  v28 = sub_214BC7D94();
  [v28 setNeedsLayout];
  MEMORY[0x277D82BD8](v28);
  v29 = sub_214BC7D94();
  [v29 layoutIfNeeded];
  MEMORY[0x277D82BD8](v29);
  v30 = sub_214BC7D94();
  [v30 setNeedsUpdateConfiguration];
  v17 = MEMORY[0x277D82BD8](v30);
  return (*(v87 + 8))(v92, v86, v17);
}

id sub_214BCD550(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() configurationWithScale_];

  return v1;
}

uint64_t sub_214BCD59C(uint64_t a1)
{
  if ([objc_opt_self() isFeedbackRestricted])
  {
    sub_214BD1DB0();
    MUICatchUpFeedbackType.title.getter(2);
    MUICatchUpFeedbackType.image.getter();
    MEMORY[0x277D82BE0](a1);
    *(swift_allocObject() + 16) = a1;
    sub_214BD2BD8();
    sub_214A73344();
    v10 = sub_214CCFD84();
    v7 = sub_214CD03C4();
    v6 = v1;
    MEMORY[0x277D82BE0](v10);
    *v6 = v10;
    sub_214A63280();
    MEMORY[0x277D82BD8](v10);
    return v7;
  }

  else
  {
    sub_214BD1DB0();
    MUICatchUpFeedbackType.title.getter(0);
    MUICatchUpFeedbackType.image.getter();
    MEMORY[0x277D82BE0](a1);
    *(swift_allocObject() + 16) = a1;
    sub_214BD2BD8();
    sub_214A73344();
    v12 = sub_214CCFD84();
    MUICatchUpFeedbackType.title.getter(1);
    MUICatchUpFeedbackType.image.getter();
    MEMORY[0x277D82BE0](a1);
    *(swift_allocObject() + 16) = a1;
    sub_214BD2BD8();
    sub_214A73344();
    v11 = sub_214CCFD84();
    v5 = sub_214CD03C4();
    v4 = v2;
    MEMORY[0x277D82BE0](v12);
    *v4 = v12;
    MEMORY[0x277D82BE0](v11);
    v4[1] = v11;
    sub_214A63280();
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    return v5;
  }
}

uint64_t sub_214BCD9B0(uint64_t a1, uint64_t a2)
{
  v5 = a2 + OBJC_IVAR___MUIManualSummaryView_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a2, 2, ObjectType);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
    return swift_endAccess();
  }
}

uint64_t sub_214BCDAB0(uint64_t a1, uint64_t a2)
{
  v5 = a2 + OBJC_IVAR___MUIManualSummaryView_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a2, 0, ObjectType);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
    return swift_endAccess();
  }
}

uint64_t sub_214BCDBAC(uint64_t a1, uint64_t a2)
{
  v5 = a2 + OBJC_IVAR___MUIManualSummaryView_delegate;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  if (Strong)
  {
    swift_unknownObjectRetain();
    sub_214A759F4();
    swift_endAccess();
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a2, 1, ObjectType);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_214A759F4();
    return swift_endAccess();
  }
}

uint64_t sub_214BCDCAC()
{
  sub_214BD28D8(0);

  return 0;
}

uint64_t sub_214BCDCDC()
{
  if (sub_214AFE80C(17, 0, 0))
  {
    return -1;
  }

  else
  {
    return 2;
  }
}

double sub_214BCDD30(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    v3 = sub_214BC7D94();
    [a1 state];
    type metadata accessor for MUIManualSummaryViewModelState();
    sub_214B04718();
    [v3 setEnabled_];
    MEMORY[0x277D82BD8](v3);
    *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  }

  else
  {
    v2 = sub_214BC7D94();
    [v2 setEnabled_];
    *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  }

  return result;
}

void sub_214BCDE7C(void *a1, uint64_t a2)
{
  v66 = a2;
  v65 = a1;
  v64 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA34250);
  v53 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2 - 8);
  v54 = v22 - v53;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8);
  v55 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v57 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v22 - v57;
  MEMORY[0x28223BE20](v22 - v57);
  v58 = v22 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365F8);
  v60 = *(v59 - 8);
  v61 = v60;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64);
  v63 = v22 - v62;
  v67 = sub_214CCCFA4();
  v68 = *(v67 - 8);
  v69 = v68;
  v70 = *(v68 + 64);
  MEMORY[0x28223BE20](v65);
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF0;
  v71 = v22 - v72;
  MEMORY[0x28223BE20](v4);
  v73 = v22 - v72;
  v98 = v22 - v72;
  v97 = v5;
  v74 = v6 + 16;
  v96 = v6 + 16;
  v75 = &v95;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v76 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return;
  }

  v52 = v76;
  v49 = v76;
  v94 = v76;
  v51 = &v76[OBJC_IVAR___MUIManualSummaryView_viewModel];
  v50 = &v76[OBJC_IVAR___MUIManualSummaryView_viewModel];
  swift_beginAccess();
  if (*v51)
  {
    v45 = *v50;
    v7 = v45;
    swift_endAccess();
    v46 = [v45 state];

    v47 = v46;
    v48 = 0;
  }

  else
  {
    swift_endAccess();
    v47 = 0;
    v48 = 1;
  }

  v42 = v48;
  v43 = v47;
  v44 = &v92;
  v90 = v47;
  v91 = v48 & 1;
  v92 = 0;
  v93 = 0;
  if (v48)
  {
    if (v44[1])
    {
      v41 = 1;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v80 = v43;
  v81 = v42 & 1;
  if (v44[1])
  {
LABEL_15:
    v41 = 0;
    goto LABEL_13;
  }

  v79 = v80;
  v78 = *v44;
  v40 = type metadata accessor for MUIManualSummaryViewModelState();
  sub_214BD2768();
  v41 = sub_214CCF4A4();
LABEL_13:
  v39 = v41;
  v8 = v49;
  if (v39)
  {
    v38 = 1;
  }

  else
  {
    v37 = &v49[OBJC_IVAR___MUIManualSummaryView_viewModel];
    v36 = &v49[OBJC_IVAR___MUIManualSummaryView_viewModel];
    swift_beginAccess();
    if (*v37)
    {
      v32 = *v36;
      v9 = v32;
      swift_endAccess();
      v33 = [v32 state];

      v34 = v33;
      v35 = 0;
    }

    else
    {
      swift_endAccess();
      v34 = 0;
      v35 = 1;
    }

    v88 = v34;
    v89 = v35 & 1;
    v31 = (v35 & 1) != 0;
    v38 = v31;
  }

  v30 = v38;

  if (v30)
  {
    KeyPath = swift_getKeyPath();
    v22[3] = v22;
    v22[5] = 8;
    MEMORY[0x28223BE20](KeyPath);
    v22[-2] = v11;
    v22[4] = swift_getKeyPath();
    sub_214BD24A8();
    sub_214CCCF74();
    v28 = 0;
    sub_214BD1F48();
    v87 = static UIFont.manualSummaryButton.getter();
    sub_214CCCF84();

    (*(v61 + 8))(v63, v59);

    v12 = swift_getKeyPath();
    v22[6] = v22;
    MEMORY[0x28223BE20](v12);
    v22[-2] = v13;
    v27 = swift_getKeyPath();
    v14 = v65;
    [v65 bounds];
    v86 = v15;
    v85 = v16;
    v84 = v17;
    v83 = v18;
    v26 = v15;
    v25 = v16;
    v24 = v17;
    v23 = v18;

    v82 = sub_214BCEB9C(v23, v24, v25, v26);
    sub_214BD2520();
    sub_214CCCF64();
    sub_214CCFEC4();
    v19 = sub_214CCFEA4();
    if ((*(*(v19 - 8) + 48))(v58, 1) == 0)
    {
      v22[2] = sub_214BCC334();
      v22[1] = v20;
      (*(v69 + 16))(v71, v73, v67);
      sub_214CCCF34();
      v21 = sub_214CCCF24();
      (*(*(v21 - 8) + 56))(v54, 0, 1);
      sub_214CCFE04();
      sub_214CCFED4();
    }

    else
    {
      sub_214BD2598(v58, v56);
      sub_214CCFED4();
      sub_214BD26C0(v58);
    }

    (*(v69 + 8))(v73, v67);
  }

  else
  {
  }
}

BOOL sub_214BCE9A0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36600);
  v1 = sub_214CCF4A4();

  return (v1 & 1) != 0;
}

void sub_214BCEAC4()
{

  sub_214BD2520();
  sub_214CCD064();
  __break(1u);
}

void sub_214BCEAF8(uint64_t a1)
{
  v3[1] = a1;
  v1 = sub_214CCCEE4();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  (*(v5 + 16))(v3 - v4, v2);
  sub_214CCCEC4();
  __break(1u);
}

id sub_214BCEB9C(double a1, double a2, double a3, double a4)
{
  sub_214A731BC();
  sub_214BD1EE4();
  v11 = sub_214CD03C4();
  v10 = v4;
  sub_214A65CE0();
  v5 = sub_214BCFC4C();
  *v10 = sub_214BCFCA4(v5);
  v6 = sub_214BCFC4C();
  v10[1] = sub_214BCFCA4(v6);
  v7 = sub_214BCFC4C();
  v10[2] = sub_214BCFCA4(v7);
  v8 = sub_214BCFC4C();
  v10[3] = sub_214BCFCA4(v8);
  sub_214A63280();
  v16 = static UIImage.gradientImage(with:bounds:)(v11, a1, a2, a3, a4);

  return sub_214BCFCEC(v16);
}

uint64_t sub_214BCED7C()
{
  v29 = v0;
  MEMORY[0x277D82BE0](v0);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v0);
  v26 = OBJC_IVAR___MUIManualSummaryView_viewModel;
  v27 = (v0 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  if (!*v27)
  {
    goto LABEL_20;
  }

  v21 = *(v25 + v26);
  MEMORY[0x277D82BE0](v21);
  swift_endAccess();
  v22 = [v21 state];
  MEMORY[0x277D82BD8](v21);
  v23 = v22;
  for (i = 0; (i & 1) == 0 && v23; i = 1)
  {
    if (v23 == 1)
    {
      v10 = sub_214BC8934();
      [v10 setAttributedText_];
      MEMORY[0x277D82BD8](v10);
      v11 = sub_214BC8934();
      [v11 setHidden_];
      MEMORY[0x277D82BD8](v11);
      v12 = (v25 + OBJC_IVAR___MUIManualSummaryView_textViewShowingLoadingAnimation);
      swift_beginAccess();
      *v12 = 1;
      swift_endAccess();
      v13 = sub_214BC8934();
      sub_214C8D5A4();
      MEMORY[0x277D82BD8](v13);
      v14 = sub_214BC8934();
      sub_214C8D5E4();
      v1 = MEMORY[0x277D82BD8](v14);
      return MEMORY[0x21605FA30](v28, v1);
    }

    if (v23 == 2)
    {
      v9 = (v25 + OBJC_IVAR___MUIManualSummaryView_viewModel);
      swift_beginAccess();
      if (*v9)
      {
        v6 = *v9;
        MEMORY[0x277D82BE0](*v9);
        swift_endAccess();
        v7 = [v6 summary];
        v1 = MEMORY[0x277D82BD8](v6);
        v8 = v7;
      }

      else
      {
        swift_endAccess();
        v8 = 0;
      }

      if (v8)
      {
        sub_214BCF2EC(v8);
        v1 = MEMORY[0x277D82BD8](v8);
      }

      return MEMORY[0x21605FA30](v28, v1);
    }

    if (v23 == 3)
    {
      v3 = (v25 + OBJC_IVAR___MUIManualSummaryView_viewModel);
      swift_beginAccess();
      v4 = *v3;
      MEMORY[0x277D82BE0](*v3);
      swift_endAccess();
      v5 = sub_214BCF648(v4);
      MEMORY[0x277D82BD8](v4);
      sub_214BCF2EC(v5);
      v1 = MEMORY[0x277D82BD8](v5);
      return MEMORY[0x21605FA30](v28, v1);
    }

    sub_214B11080();
    sub_214CD0204();
    __break(1u);
LABEL_20:
    swift_endAccess();
    v23 = 0;
  }

  v19 = (v25 + OBJC_IVAR___MUIManualSummaryView_textViewShowingLoadingAnimation);
  swift_beginAccess();
  v20 = *v19;
  swift_endAccess();
  if (v20)
  {
    v17 = sub_214BC8934();
    sub_214C8D5A4();
    MEMORY[0x277D82BD8](v17);
    v18 = (v25 + OBJC_IVAR___MUIManualSummaryView_textViewShowingLoadingAnimation);
    swift_beginAccess();
    *v18 = 0;
    swift_endAccess();
  }

  v15 = sub_214BC8934();
  [v15 setAttributedText_];
  MEMORY[0x277D82BD8](v15);
  v16 = sub_214BC8934();
  [v16 setHidden_];
  v1 = MEMORY[0x277D82BD8](v16);
  return MEMORY[0x21605FA30](v28, v1);
}

double sub_214BCF2EC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v8 = sub_214BC8934();
    [v8 setHidden_];
    MEMORY[0x277D82BD8](v8);
    v12 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365F0);
    sub_214CD03C4();
    v11 = v2;
    sub_214A671A8(MEMORY[0x277D740C0], v2);
    v9 = sub_214A65CE0();
    v3 = static UIColor.platformLabel.getter();
    v11[4] = v9;
    v11[1] = v3;
    sub_214A671A8(MEMORY[0x277D740A8], v11 + 5);
    v10 = sub_214BD1F48();
    v4 = static UIFont.manualSummaryTextView.getter();
    v11[9] = v10;
    v11[6] = v4;
    sub_214A63280();
    type metadata accessor for Key();
    sub_214B04398();
    sub_214CCF344();
    v13 = sub_214CCF304();

    v14 = [v12 mui:a1 attributedStringWithAttributedString:v13 attributes:?];
    MEMORY[0x277D82BD8](v13);
    v15 = (Strong + OBJC_IVAR___MUIManualSummaryView_textViewShowingLoadingAnimation);
    swift_beginAccess();
    v16 = *v15;
    swift_endAccess();
    if (v16)
    {
      v6 = sub_214BC8934();
      sub_214C8D554(v14);
      MEMORY[0x277D82BD8](v6);
      v7 = (Strong + OBJC_IVAR___MUIManualSummaryView_textViewShowingLoadingAnimation);
      swift_beginAccess();
      *v7 = 0;
      swift_endAccess();
    }

    else
    {
      v5 = sub_214BC8934();
      [v5 setAttributedText_];
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v5);
    }

    MEMORY[0x277D82BD8](v14);
    *&result = MEMORY[0x277D82BD8](Strong).n128_u64[0];
  }

  return result;
}

id sub_214BCF648(void *a1)
{
  v23 = 0;
  v21 = 0;
  v20 = 0;
  v24 = a1;
  sub_214AF7FCC();
  sub_214CCF614();
  v14 = [objc_opt_self() mui_MailUIBundle];
  sub_214CCF614();
  v13 = v1;
  sub_214B1C228();
  sub_214CCCF54();

  MEMORY[0x277D82BD8](v14);

  v15 = sub_214BC9508();
  v22 = v15;
  *&v2 = MEMORY[0x277D82BE0](a1).n128_u64[0];
  if (!a1)
  {
    return v15;
  }

  v21 = a1;
  v12 = [a1 error];
  if (v12)
  {
    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C0);
    sub_214BC5914();
    if (swift_dynamicCast())
    {
      v10 = v17;
    }

    else
    {
      v10 = 0;
    }

    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v20 = v9;
  MEMORY[0x277D82BE0](v9);
  ManualSummaryError.init(from:)(v9, v18);
  v6 = v18[0];
  v7 = v18[1];
  v8 = v19;
  if (v19 == 255)
  {
    MEMORY[0x277D82BD8](v9);
LABEL_17:
    MEMORY[0x277D82BD8](a1);
    return v15;
  }

  v4 = sub_214BD04A0([a1 summarizableMessageCount], objc_msgSend(a1, sel_isInlineSummary), v15);
  sub_214BBAA50(v6, v7, v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v15);
  return v4;
}

double sub_214BCFA88()
{
  if (MUISolariumFeatureEnabled())
  {
    [v1 setBackgroundColor_];
    *&result = (MEMORY[0x277D82BD8])().n128_u64[0];
  }

  return result;
}

double sub_214BCFAF8(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  if (!a1)
  {
    return 0.0;
  }

  v4 = sub_214BC8934();
  [v4 frame];
  v5 = v1;
  MEMORY[0x277D82BD8](v4);
  sub_214BD1F48();
  v6 = static UIFont.manualSummaryTextView.getter();
  [a1 mui:v5 boundingHeightForWidth:? font:?];
  v9 = v2;
  MEMORY[0x277D82BD8](v6);
  v7 = sub_214BC8934();
  v8 = sub_214C8D4C4();
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](a1);
  return v9 + v8;
}

double sub_214BCFD2C()
{
  v12 = OBJC_IVAR___MUIManualSummaryView_viewModel;
  v13 = (v0 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  if (!*v13)
  {
    goto LABEL_16;
  }

  v7 = *(v11 + v12);
  MEMORY[0x277D82BE0](v7);
  swift_endAccess();
  v8 = [v7 state];
  MEMORY[0x277D82BD8](v7);
  v9 = v8;
  for (i = 0; ; i = 1)
  {
    if ((i & 1) != 0 || v9 < 2)
    {
LABEL_8:
      v6 = sub_214BC9064();
      [v6 setHidden_];
      *&result = MEMORY[0x277D82BD8](v6).n128_u64[0];
      return result;
    }

    if (v9 == 2)
    {
      break;
    }

    if (v9 == 3)
    {
      goto LABEL_8;
    }

    sub_214B11080();
    sub_214CD0204();
    __break(1u);
LABEL_16:
    swift_endAccess();
    v9 = 0;
  }

  v4 = (v11 + OBJC_IVAR___MUIManualSummaryView_viewModel);
  swift_beginAccess();
  v5 = *v4;
  MEMORY[0x277D82BE0](*v4);
  swift_endAccess();
  if (v5)
  {
    v2 = [v5 isExternalSummary];
    if (v2)
    {
      v3 = sub_214BC9064();
      [v3 setHidden_];
      MEMORY[0x277D82BD8](v3);
      sub_214BCB1E4(2);
    }

    *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  return result;
}

id sub_214BD0010(char *a1)
{
  sub_214BCBE74();
  sub_214BCC5F4();
  [a1 updateTextView];
  sub_214BCFA88();
  sub_214BCFD2C();
  v8 = OBJC_IVAR___MUIManualSummaryView_viewModel;
  v9 = &a1[OBJC_IVAR___MUIManualSummaryView_viewModel];
  swift_beginAccess();
  if (*v9)
  {
    v3 = *&a1[v8];
    MEMORY[0x277D82BE0](v3);
    swift_endAccess();
    v4 = [v3 state];
    MEMORY[0x277D82BD8](v3);
    v5 = v4;
    v6 = 0;
  }

  else
  {
    swift_endAccess();
    v5 = 0;
    v6 = 1;
  }

  if (v6)
  {
    v2 = 0;
  }

  else
  {
    v2 = v5;
  }

  sub_214BCB1E4(v2);
  [a1 mui_setNeedsLayout];
  return [a1 mui_layoutIfNeeded];
}

unint64_t sub_214BD01B4()
{
  v2 = qword_280C7CE20;
  if (!qword_280C7CE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA365A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE20);
    return WitnessTable;
  }

  return v2;
}

id sub_214BD023C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MUIManualSummaryViewModelState();
  sub_214B04718();
  if (sub_214CD03F4())
  {
    v12 = (a2 + OBJC_IVAR___MUIManualSummaryView_viewModel);
    swift_beginAccess();
    if (*v12)
    {
      v9 = *v12;
      MEMORY[0x277D82BE0](*v12);
      swift_endAccess();
      v10 = [v9 summary];
      MEMORY[0x277D82BD8](v9);
      v11 = v10;
    }

    else
    {
      swift_endAccess();
      v11 = 0;
    }

    if (v11)
    {
      return v11;
    }
  }

  if (sub_214CD03F4())
  {
    v5 = (a2 + OBJC_IVAR___MUIManualSummaryView_viewModel);
    swift_beginAccess();
    v6 = *v5;
    MEMORY[0x277D82BE0](*v5);
    swift_endAccess();
    v7 = sub_214BCF648(v6);
    MEMORY[0x277D82BD8](v6);
    return v7;
  }

  else
  {
    v3 = sub_214BC8934();
    v4 = [v3 attributedText];
    MEMORY[0x277D82BD8](v3);
    return v4;
  }
}

id sub_214BD04A0(uint64_t a1, char a2, uint64_t a3)
{
  if (*(v3 + 16))
  {
    if (*(v3 + 16) == 2 && *v3 == 4 && !*(v3 + 8))
    {
      sub_214AF7FCC();
      sub_214CCF614();
      v19 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v19);

      return sub_214BC9508();
    }

    else if (a1 == 1)
    {
      sub_214AF7FCC();
      sub_214CCF614();
      v18 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      sub_214B1C228();
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v18);

      return sub_214BC9508();
    }

    else if ((a2 & 1) != 0 && a1 > 1)
    {
      sub_214CCF614();
      v9 = [objc_opt_self() mui_MailUIBundle];
      sub_214CCF614();
      v8 = v4;
      sub_214B1C228();
      sub_214CCCF54();

      MEMORY[0x277D82BD8](v9);

      v10 = objc_opt_self();
      sub_214A69284();
      v11 = sub_214BD1BBC(a1);
      v12 = [v10 localizedStringFromNumber:v8 numberStyle:?];
      MEMORY[0x277D82BD8](v11);
      v13 = sub_214CCF564();
      v15 = v5;
      MEMORY[0x277D82BD8](v12);
      sub_214AF7FCC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270);
      sub_214CD03C4();
      v14 = v6;

      v14[3] = MEMORY[0x277D837D0];
      v14[4] = sub_214BD1FAC();
      *v14 = v13;
      v14[1] = v15;
      sub_214A63280();
      sub_214CCF554();

      v16 = sub_214BC9508();

      return v16;
    }

    else
    {
      MEMORY[0x277D82BE0](a3);
      return a3;
    }
  }

  else
  {

    sub_214AF7FCC();
    return sub_214BC9508();
  }
}

id ManualSummaryView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214BD0C40()
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C8);
  v10 = sub_214CD03C4();
  v6 = v0;
  v5 = *(v11 + 48);
  v4 = *MEMORY[0x277D0DFC0];
  v7 = *(*(sub_214CCD554() - 8) + 104);
  (v7)(v6, v4);
  v1 = v6 + v5;
  *v1 = 7;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  v8 = *(v11 + 48);
  v9 = v6 + *(*(v11 - 8) + 72);
  v7();
  result = v10;
  v3 = v9 + v8;
  *v3 = 10;
  *(v3 + 8) = 0;
  *(v3 + 16) = 2;
  sub_214A63280();
  qword_27CA3EF50 = v10;
  return result;
}

uint64_t *sub_214BD0DA4()
{
  if (qword_27CA34058 != -1)
  {
    swift_once();
  }

  return &qword_27CA3EF50;
}

uint64_t sub_214BD0E04()
{
  v1 = *sub_214BD0DA4();

  return v1;
}

uint64_t sub_214BD0E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v12 = a1;
  v17 = sub_214BD2024;
  v9 = sub_214BD1130;
  v30 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365D0);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v14 = &v5 - v11;
  v30 = v2;
  v13 = *sub_214BD0DA4();

  v24 = v13;
  v15 = &v19;
  v20 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365D8);
  sub_214BD2050();
  sub_214CCF724();
  v18 = 0;
  sub_214A62278();
  sub_214BD123C(v9, 0, v10, MEMORY[0x277D84A98], &type metadata for ManualSummaryError, v7, v25);
  sub_214BD20D8(v14);
  v21 = v25[0];
  v22 = v25[1];
  v23 = v26;
  if (v26 == 255)
  {
    v27 = sub_214BD1578(v12);
    v28 = v3;
    v29 = 0;
    if (v23 != 255)
    {
      sub_214BC6828(&v21);
    }
  }

  else
  {
    v27 = v21;
    v28 = v22;
    v29 = v23;
  }

  v6 = v31;
  v31[0] = v27;
  v31[1] = v28;
  v32 = v29;
  sub_214BBA960(v31, v8);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return sub_214BBAA18(v6);
}

uint64_t sub_214BD1090(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C8);
  sub_214BD21AC();
  return sub_214CCF784() & 1;
}

uint64_t sub_214BD1130@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v10 = a1;
  v15 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C8);
  v11 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v14 = &v9 - v11;
  v15 = v2;
  sub_214BD23DC(v2, &v9 - v11);
  v3 = v12;
  v4 = &v14[*(v13 + 48)];
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v4) = v4[16];
  *v12 = v5;
  v3[1] = v6;
  *(v3 + 16) = v4;
  v7 = sub_214CCD554();
  return (*(*(v7 - 8) + 8))(v14);
}

uint64_t sub_214BD123C@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v29 = v17 - v28;
  v35 = *(v8 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v31 = v17 - v30;
  v32 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v36 = v17 - v32;
  sub_214BD22CC(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t sub_214BD1578(void *a1)
{
  v52 = a1;
  v67 = 0;
  v62 = sub_214CCD554();
  v60 = *(v62 - 8);
  v61 = v62 - 8;
  v53 = (v60[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52);
  v63 = v16 - v53;
  v67 = v1;
  v57 = v1[3];
  v56 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v57);
  v2 = *MEMORY[0x277D0DFD8];
  v54 = v60[13];
  v55 = v60 + 13;
  v54(v63, v2, v62);
  v58 = *(v56 + 8);
  v59 = sub_214BD21AC();
  v66 = sub_214CCF784();
  v64 = v60[1];
  v65 = v60 + 1;
  v64(v63, v62);
  if (v66)
  {
    v51 = 1;
  }

  else
  {
    v49 = v52[3];
    v48 = v52[4];
    __swift_project_boxed_opaque_existential_0(v52, v49);
    v54(v63, *MEMORY[0x277D0E008], v62);
    v50 = sub_214CCF784();
    v64(v63, v62);
    v51 = v50;
  }

  if (v51)
  {
    v37 = 1;
    v39 = sub_214CCF614();
    v43 = v3;
    v42 = [objc_opt_self() mui_MailUIBundle];
    v38 = sub_214CCF614();
    v41 = v4;
    sub_214B1C228();
    v40 = v5;
    v44 = sub_214CCCF54();
    v45 = v6;

    MEMORY[0x277D82BD8](v42);

    v46 = v44;
    v47 = v45;
  }

  else
  {
    v35 = v52[3];
    v34 = v52[4];
    __swift_project_boxed_opaque_existential_0(v52, v35);
    v54(v63, *MEMORY[0x277D0DFC8], v62);
    v36 = sub_214CCF784();
    v64(v63, v62);
    if (v36)
    {
      v25 = 1;
      v27 = sub_214CCF614();
      v31 = v7;
      v30 = [objc_opt_self() mui_MailUIBundle];
      v26 = sub_214CCF614();
      v29 = v8;
      sub_214B1C228();
      v28 = v9;
      v32 = sub_214CCCF54();
      v33 = v10;

      MEMORY[0x277D82BD8](v30);

      v46 = v32;
      v47 = v33;
    }

    else
    {
      v16[1] = 1;
      v18 = sub_214CCF614();
      v22 = v11;
      v21 = [objc_opt_self() mui_MailUIBundle];
      v17 = sub_214CCF614();
      v20 = v12;
      sub_214B1C228();
      v19 = v13;
      v23 = sub_214CCCF54();
      v24 = v14;

      MEMORY[0x277D82BD8](v21);

      v46 = v23;
      v47 = v24;
    }
  }

  return v46;
}

id sub_214BD1BFC()
{
  v2 = sub_214CCF544();
  v3 = [v1 initWithString_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

id sub_214BD1C84(uint64_t a1)
{
  v4 = [v1 initWithColor_location_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id sub_214BD1CD4(uint64_t a1)
{
  v4 = [v1 initWithPatternImage_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

unint64_t sub_214BD1D4C()
{
  v2 = qword_27CA365B0;
  if (!qword_27CA365B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA365B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BD1DB0()
{
  v2 = qword_280C7C520;
  if (!qword_280C7C520)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C520);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BD1E14()
{
  v2 = qword_27CA365B8;
  if (!qword_27CA365B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA365B8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_4_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_214BD1EE4()
{
  v2 = qword_280C7CC20;
  if (!qword_280C7CC20)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CC20);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BD1F48()
{
  v2 = qword_280C7C5E0;
  if (!qword_280C7C5E0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C5E0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BD1FAC()
{
  v2 = qword_280C7D030;
  if (!qword_280C7D030)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BD2050()
{
  v2 = qword_27CA365E0;
  if (!qword_27CA365E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA365D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA365E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BD20D8(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C8);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_214CCD554();
    (*(*(v1 - 8) + 8))(a1);
    sub_214BBAA50(*(a1 + *(v4 + 48)), *(a1 + *(v4 + 48) + 8), *(a1 + *(v4 + 48) + 16));
  }

  return a1;
}

unint64_t sub_214BD21AC()
{
  v2 = qword_27CA365E8;
  if (!qword_27CA365E8)
  {
    sub_214CCD554();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA365E8);
    return WitnessTable;
  }

  return v2;
}

void *sub_214BD22CC(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_214BD23DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_214CCD554();
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365C8) + 48);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  sub_214BBA9BC(v7, v8, v9);
  result = a2;
  v4 = a2 + v6;
  *v4 = v7;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  return result;
}

unint64_t sub_214BD24A8()
{
  v2 = qword_280C7EB10;
  if (!qword_280C7EB10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EB10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BD2520()
{
  v2 = qword_280C7EB18;
  if (!qword_280C7EB18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EB18);
    return WitnessTable;
  }

  return v2;
}

void *sub_214BD2598(const void *a1, void *a2)
{
  v6 = sub_214CCFEA4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_214BD26C0(uint64_t a1)
{
  v3 = sub_214CCFEA4();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_214BD2768()
{
  v2 = qword_280C7C788;
  if (!qword_280C7C788)
  {
    type metadata accessor for MUIManualSummaryViewModelState();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C788);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BD27E8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_214CCF224();
      v1 = sub_214CCF834();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_214CCF224();
    return v2;
  }

  return result;
}

uint64_t sub_214BD28D8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    _s3__C7OptionsVMa_2();
    v1 = sub_214CCF834();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_214BD299C()
{
  v2 = qword_280C7C8C0;
  if (!qword_280C7C8C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C8C0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BD2A00()
{
  v2 = qword_280C7CD48;
  if (!qword_280C7CD48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD48);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BD2A6C()
{
  v2 = qword_280C7C518;
  if (!qword_280C7C518)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C518);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BD2AD0()
{
  v2 = qword_280C7D070;
  if (!qword_280C7D070)
  {
    sub_214CCF224();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BD2B50()
{
  v2 = qword_280C7CEE8;
  if (!qword_280C7CEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CEE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BD2BD8()
{
  sub_214BD696C(0);

  return 0;
}

BOOL MessageListSortOption.init(rawValue:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  return a1 == 1;
}

BOOL sub_214BD2DC8@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MessageListSortOption.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t MessageListCollectionHeaderView.layoutValuesHelper.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_layoutValuesHelper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double MessageListCollectionHeaderView.layoutValuesHelper.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_layoutValuesHelper);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  sub_214BD316C();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

double sub_214BD304C@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_layoutValuesHelper);
  swift_beginAccess();
  v6 = *v4;
  MEMORY[0x277D82BE0](*v4);
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BD30F4(uint64_t *a1, void *a2)
{
  sub_214A671A8(a1, &v6);
  v5 = v6;
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  MessageListCollectionHeaderView.layoutValuesHelper.setter(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

double sub_214BD316C()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_layoutValuesHelper);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  if (v3)
  {
    sub_214BD322C(v3);
    *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  return result;
}

double sub_214BD322C(void *a1)
{
  [v1 directionalLayoutMargins];
  v14 = v2;
  MEMORY[0x277D82BD8](v1);
  v15 = sub_214BD5868();
  v17 = sub_214BD5868();
  v18 = &v16[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_useSplitViewStyling];
  swift_beginAccess();
  v19 = *v18;
  swift_endAccess();
  if (v19)
  {
    [a1 systemLayoutMargins];
    v11 = v3;
    v9 = [a1 defaultLayoutValues];
    [v9 leadingPadding];
    v10 = v4;
    MEMORY[0x277D82BD8](v9);
    v12 = v11 + v10;
  }

  else
  {
    v7 = [a1 defaultLayoutValues];
    [v7 leadingPadding];
    v8 = v5;
    MEMORY[0x277D82BD8](v7);
    v12 = v8;
  }

  (MEMORY[0x277D82BE0])();
  [v16 setDirectionalLayoutMargins_];
  *&result = (MEMORY[0x277D82BD8])().n128_u64[0];
  return result;
}

void (*MessageListCollectionHeaderView.layoutValuesHelper.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214BD34DC;
}

void sub_214BD34DC(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_214BD316C();
  }
}

uint64_t MessageListCollectionHeaderView.useSplitViewStyling.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_useSplitViewStyling);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

double MessageListCollectionHeaderView.useSplitViewStyling.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_useSplitViewStyling);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  return sub_214BD316C();
}

double sub_214BD36D4@<D0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v4 = (v3 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_useSplitViewStyling);
  swift_beginAccess();
  v6 = *v4;
  swift_endAccess();
  *a2 = v6;
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BD3770(char *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  MessageListCollectionHeaderView.useSplitViewStyling.setter(v4 & 1);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void (*MessageListCollectionHeaderView.useSplitViewStyling.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_214BD34DC;
}

uint64_t MessageListCollectionHeaderView.title.getter()
{
  v4 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel);
  v5 = [v4 text];
  if (v5)
  {
    v2 = sub_214CCF564();
    MEMORY[0x277D82BD8](v5);
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x277D82BD8](v4);
  return v3;
}

uint64_t MessageListCollectionHeaderView.title.setter(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel);
  MEMORY[0x277D82BE0](v6);

  if (a2)
  {
    v5 = sub_214CCF544();

    [v6 setText_];
  }

  else
  {
    [v6 setText_];
  }

  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v6);
}

double sub_214BD3BD0@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = MessageListCollectionHeaderView.title.getter();
  a2[1] = v2;
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

double sub_214BD3C40(void *a1, void *a2)
{
  sub_214A61AD0(a1, v7);
  v6 = v7[0];
  v5 = v7[1];
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  MessageListCollectionHeaderView.title.setter(v6, v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t (*MessageListCollectionHeaderView.title.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MessageListCollectionHeaderView.title.getter();
  a1[1] = v2;
  return sub_214BD3D28;
}

uint64_t sub_214BD3D28(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MessageListCollectionHeaderView.title.setter(*a1, a1[1]);
  }

  v3 = *a1;
  v4 = a1[1];

  MessageListCollectionHeaderView.title.setter(v3, v4);
  result = a1;
  sub_214A61B48();
  return result;
}

id sub_214BD3DA4()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  v3 = [v2 image];
  MEMORY[0x277D82BD8](v2);
  return v3;
}

double sub_214BD3E1C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  [v3 setImage_];
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

Swift::Void __swiftcall MessageListCollectionHeaderView.apply(image:hasAvatars:)(UIImage image, Swift::Bool hasAvatars)
{
  v17 = 0;
  v14 = 0;
  isa = image.super.isa;
  v18 = hasAvatars;
  v10 = sub_214BD3DA4();
  MEMORY[0x277D82BE0](v10);
  MEMORY[0x277D82BE0](image.super.isa);
  MEMORY[0x277D82BE0](image.super.isa);
  v15 = v10;
  v16 = image.super.isa;
  if (v10)
  {
    sub_214A671A8(&v15, &v13);
    if (v16)
    {
      v12 = v16;
      sub_214A731BC();
      v6 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      sub_214A671E8(&v15);
      v7 = v6;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v13);
    goto LABEL_9;
  }

  if (v16)
  {
LABEL_9:
    sub_214A68120(&v15);
    v7 = 0;
    goto LABEL_7;
  }

  sub_214A671E8(&v15);
  v7 = 1;
LABEL_7:
  MEMORY[0x277D82BD8](image.super.isa);
  MEMORY[0x277D82BD8](v10);
  (MEMORY[0x277D82BE0])();
  if (v7)
  {
    v3 = (v9 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_hasAvatars);
    swift_beginAccess();
    v4 = *v3;
    swift_endAccess();
    v5 = (v4 & 1) != hasAvatars;
  }

  else
  {
    v5 = 1;
  }

  (MEMORY[0x277D82BD8])();
  v14 = v5;
  MEMORY[0x277D82BE0](image.super.isa);
  sub_214BD3E1C(image.super.isa);
  v2 = (v9 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_hasAvatars);
  swift_beginAccess();
  *v2 = hasAvatars;
  swift_endAccess();
  if (v5)
  {
    sub_214BD4158();
  }
}

double sub_214BD4158()
{
  v31 = v0;
  v27 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  MEMORY[0x277D82BE0](v27);
  v30 = sub_214BD3DA4();
  v25 = v30 == 0;
  sub_214A671E8(&v30);
  [v27 setHidden_];
  MEMORY[0x277D82BD8](v27);
  v23 = *&v26[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView];
  v24 = [v23 isHidden];
  *&result = MEMORY[0x277D82BD8](v23).n128_u64[0];
  if ((v24 & 1) == 0)
  {
    [v26 directionalLayoutMargins];
    v14 = v2;
    v15 = v3;
    (MEMORY[0x277D82BD8])();
    v28 = sub_214BD5868();
    v29 = sub_214BD5868();
    (MEMORY[0x277D82BE0])();
    [v26 setDirectionalLayoutMargins_];
    (MEMORY[0x277D82BD8])();
    v19 = objc_opt_self();
    sub_214A6F394();
    sub_214CD03C4();
    v17 = v4;
    v16 = &v26[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageViewCenterXConstraint];
    swift_beginAccess();
    v18 = *v16;
    MEMORY[0x277D82BE0](*v16);
    *v17 = v18;
    swift_endAccess();
    sub_214A63280();
    v20 = sub_214CCF7D4();

    [v19 deactivateConstraints_];
    MEMORY[0x277D82BD8](v20);
    v21 = &v26[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_hasAvatars];
    swift_beginAccess();
    v22 = *v21;
    swift_endAccess();
    if (v22)
    {
      v7 = sub_214BD61C4();
      v8 = &v26[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageViewCenterXConstraint];
      swift_beginAccess();
      v5 = *v8;
      *v8 = v7;
      MEMORY[0x277D82BD8](v5);
      swift_endAccess();
      v12 = objc_opt_self();
      sub_214CD03C4();
      v10 = v6;
      v9 = &v26[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageViewCenterXConstraint];
      swift_beginAccess();
      v11 = *v9;
      MEMORY[0x277D82BE0](*v9);
      *v10 = v11;
      swift_endAccess();
      sub_214A63280();
      v13 = sub_214CCF7D4();

      [v12 activateConstraints_];
      *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_214BD4648()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_hasAvatars);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214BD46B0(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_hasAvatars);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214BD4724()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BD476C()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BD47B4()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BD47FC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageViewCenterXConstraint);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BD486C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageViewCenterXConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

id sub_214BD4908()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView____lazy_storage___sortButton);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BD4A10();
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView____lazy_storage___sortButton);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

id sub_214BD4A10()
{
  v22 = 0;
  v21 = 0;
  v15 = 0;
  v11 = sub_214CCFDB4();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  v4 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v12 = &v3 - v4;
  v19 = sub_214CCFEA4();
  v16 = *(v19 - 8);
  v17 = v19 - 8;
  v5 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v14 = &v3 - v5;
  v6 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v3 - v5);
  v18 = &v3 - v6;
  v22 = &v3 - v6;
  sub_214CCFE54();
  sub_214A731BC();
  v7 = @"arrow.up.arrow.down";
  MEMORY[0x277D82BE0](@"arrow.up.arrow.down");
  sub_214CCF564();
  v8 = sub_214B4D9C8();
  MEMORY[0x277D82BD8](v7);
  sub_214CCFE64();
  (*(v9 + 104))(v12, *MEMORY[0x277D74FD8], v11);
  sub_214CCFDC4();
  sub_214A74030();
  v13 = *MEMORY[0x277D76968];
  MEMORY[0x277D82BE0](v13);
  sub_214BD4CC4(v13, -1);
  sub_214CCFD94();
  sub_214BD2A6C();
  (*(v16 + 16))(v14, v18, v19);
  v20 = sub_214CCFEB4();
  v21 = v20;
  LODWORD(v1) = 1148846080;
  [v20 setContentHuggingPriority:v15 forAxis:v1];
  (*(v16 + 8))(v18, v19);
  return v20;
}

id sub_214BD4CC4(uint64_t a1, uint64_t a2)
{
  v4 = [swift_getObjCClassFromMetadata() configurationWithTextStyle:a1 scale:a2];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

double sub_214BD4D28(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView____lazy_storage___sortButton);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

_BYTE *sub_214BD4DC0(double a1, double a2, double a3, double a4)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  *&v12 = a3;
  *(&v12 + 1) = a4;
  ObjectType = swift_getObjectType();
  v15 = v11;
  v16 = v12;
  v17 = v4;
  *&v4[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_layoutValuesHelper] = 0;
  v17[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_useSplitViewStyling] = 0;
  v17[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_hasAvatars] = 0;
  v6 = OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView;
  sub_214A73FCC();
  *&v17[v6] = sub_214A61730();
  v7 = OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel;
  sub_214A73F68();
  *&v17[v7] = sub_214A61730();
  v8 = OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView;
  sub_214A73F04();
  *&v17[v8] = sub_214A61730();
  v9 = OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageViewCenterXConstraint;
  sub_214A6F394();
  *&v17[v9] = sub_214A61730();
  *&v17[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView____lazy_storage___sortButton] = 0;
  v14.receiver = v17;
  v14.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v14, sel_initWithFrame_, v11, v12);
  MEMORY[0x277D82BE0](v13);
  v17 = v13;
  sub_214BD4FD4();
  MEMORY[0x277D82BD8](v17);
  return v13;
}

double sub_214BD4FD4()
{
  v7 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel);
  MEMORY[0x277D82BE0](v7);
  v6 = [objc_opt_self() secondaryLabelColor];
  [v7 setTextColor_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v11 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel);
  MEMORY[0x277D82BE0](v11);
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D76968];
  MEMORY[0x277D82BE0](*MEMORY[0x277D76968]);
  v10 = [v8 _preferredFontForTextStyle_weight_];
  [v11 setFont_];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v12 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel);
  v1 = MEMORY[0x277D82BE0](v12);
  v1.n128_u32[0] = 1132068864;
  [v12 0x1FBB8335CLL];
  MEMORY[0x277D82BD8](v12);
  v13 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel);
  [v13 setNumberOfLines_];
  MEMORY[0x277D82BD8](v13);
  v14 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel);
  [v14 setAdjustsFontForContentSizeCategory_];
  MEMORY[0x277D82BD8](v14);
  v15 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  [v15 setContentMode_];
  MEMORY[0x277D82BD8](v15);
  v16 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  v2 = MEMORY[0x277D82BE0](v16);
  v2.n128_u32[0] = 1148846080;
  [v16 0x1FBB8335CLL];
  MEMORY[0x277D82BD8](v16);
  v17 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  [v17 0x1FAECA5BALL];
  MEMORY[0x277D82BD8](v17);
  v22 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView);
  MEMORY[0x277D82BE0](v22);
  sub_214A7802C();
  sub_214CD03C4();
  v19 = v3;
  v18 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  MEMORY[0x277D82BE0](v18);
  *v19 = v18;
  v20 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel);
  MEMORY[0x277D82BE0](v20);
  v19[1] = v20;
  sub_214A63280();
  v21 = sub_214CCF7D4();

  [v22 mf:v21 addArrangedSubviews:?];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  v24 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView);
  MEMORY[0x277D82BE0](v24);
  v23 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  MEMORY[0x277D82BE0](v23);
  [v24 setCustomSpacing:v23 afterView:8.0];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  sub_214BD4158();
  v25 = *&v28[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView];
  [v25 0x1FAECA5BALL];
  MEMORY[0x277D82BD8](v25);
  v26 = *&v28[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView];
  [v28 addSubview_];
  MEMORY[0x277D82BD8](v26);
  [v28 directionalLayoutMargins];
  v27 = v4;
  (MEMORY[0x277D82BD8])();
  v30 = sub_214BD5868();
  v31 = sub_214BD5868();
  (MEMORY[0x277D82BE0])();
  [v28 setDirectionalLayoutMargins_];
  (MEMORY[0x277D82BD8])();
  v29 = *&v28[OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView];
  [v29 mf:v28 pinToView:1 usingLayoutMargins:MEMORY[0x277D82BE0](v29).n128_f64[0]];
  *&result = MEMORY[0x277D82BD8](v29).n128_u64[0];
  return result;
}

void sub_214BD566C()
{
  *OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_layoutValuesHelper = 0;
  *OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_useSplitViewStyling = 0;
  *OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_hasAvatars = 0;
  v0 = OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView;
  sub_214A73FCC();
  *v0 = sub_214A61730();
  v1 = OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_titleLabel;
  sub_214A73F68();
  *v1 = sub_214A61730();
  v2 = OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView;
  sub_214A73F04();
  *v2 = sub_214A61730();
  v3 = OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageViewCenterXConstraint;
  sub_214A6F394();
  *v3 = sub_214A61730();
  *OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView____lazy_storage___sortButton = 0;
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

double sub_214BD5868()
{
  v3 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  v4 = [v3 isHidden];
  MEMORY[0x277D82BD8](v3);
  if (v4)
  {
    return 6.0;
  }

  else
  {
    return 10.0;
  }
}

Swift::Void __swiftcall MessageListCollectionHeaderView.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v4 = v0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  objc_msgSendSuper2(&v3, sel_prepareForReuse, v1);
  (MEMORY[0x277D82BD8])();
  MessageListCollectionHeaderView.showSortButton(isHidden:selectedOption:)(1, 0);
}

double MessageListCollectionHeaderView.showSortButton(isHidden:selectedOption:)(char a1, uint64_t a2)
{
  v14[1] = 0;
  v15 = a1 & 1;
  v14[2] = a2;
  if (a1)
  {
    v10 = sub_214BD4908();
    [v10 setHidden_];
    *&result = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  else
  {
    v7 = sub_214BD4908();
    [v7 setHidden_];
    MEMORY[0x277D82BD8](v7);
    v8 = sub_214BD4908();
    v9 = [v8 superview];
    MEMORY[0x277D82BD8](v8);
    v14[0] = v9;
    sub_214A671E8(v14);
    if (!v9)
    {
      v6 = *(v13 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView);
      MEMORY[0x277D82BE0](v6);
      v5 = sub_214BD4908();
      [v6 addArrangedSubview_];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    v4 = sub_214BD4908();
    v3 = sub_214BD5BC8(a2);
    [v4 setMenu_];
    MEMORY[0x277D82BD8](v3);
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  return result;
}

uint64_t sub_214BD5BC8(uint64_t a1)
{
  v38 = a1;
  v34 = sub_214BD61B0;
  v26 = sub_214BD61B0;
  v57 = 0;
  v56 = 0;
  v51 = 0;
  v45 = 0;
  v36 = 0;
  v27 = (*(*(sub_214CCD2D4() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v32 = v10 - v27;
  v28 = (*(*(sub_214CCF534() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36);
  v31 = v10 - v28;
  v57 = v2;
  v56 = v1;
  v29 = sub_214BD1DB0();
  v30 = 1;
  sub_214CCF614();
  sub_214CCF4C4();
  sub_214B1CFBC();
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = v30 & 1;
  v37 = sub_214CCF5A4();
  v35 = v3;
  v33 = sub_214BD2BD8();
  sub_214A73344();
  v39 = sub_214CCFD84();
  v51 = v39;
  v41 = &v50;
  v50 = v38;
  v40 = &v49;
  v49 = 0;
  v42 = sub_214BD62D8();
  v25 = (sub_214CD03F4() & 1) != 0;
  [v39 setState_];
  *&v19[1] = 1;
  sub_214CCF614();
  sub_214CCF4C4();
  sub_214B1CFBC();
  v22 = 0;
  v46 = 0;
  v47 = 0;
  v48 = *v19 & 0x100;
  v23 = sub_214CCF5A4();
  v21 = v4;
  v20 = sub_214BD2BD8();
  sub_214A73344();
  v24 = sub_214CCFD84();
  v45 = v24;
  v44 = v38;
  v43 = 1;
  v18 = (sub_214CD03F4() & 1) != 0;
  [v24 setState_];
  v14 = 0;
  sub_214BD1D4C();
  v10[1] = sub_214BD1E14();
  v11 = sub_214CD03C4();
  v10[0] = v5;
  MEMORY[0x277D82BE0](v39);
  v6 = v24;
  *v10[0] = v39;
  MEMORY[0x277D82BE0](v6);
  v7 = v11;
  *(v10[0] + 8) = v24;
  sub_214A63280();
  v12 = v7;
  v16 = sub_214B1C228();
  v13 = v8;
  v15 = sub_214BCDCAC();
  sub_214BCDCDC();
  v17 = sub_214CCFD44();
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v39);
  return v17;
}

id sub_214BD61C4()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_imageView);
  v5 = [v2 centerXAnchor];
  MEMORY[0x277D82BD8](v2);
  v3 = *(v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_stackView);
  v4 = [v3 leadingAnchor];
  MEMORY[0x277D82BD8](v3);
  v6 = [v5 constraintEqualToAnchor:v4 constant:sub_214BD6354() / 2.0];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return v6;
}

unint64_t sub_214BD62D8()
{
  v2 = qword_27CA36650;
  if (!qword_27CA36650)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36650);
    return WitnessTable;
  }

  return v2;
}

double sub_214BD6354()
{
  v6 = (v0 + OBJC_IVAR____TtC6MailUI31MessageListCollectionHeaderView_layoutValuesHelper);
  swift_beginAccess();
  v7 = *v6;
  MEMORY[0x277D82BE0](*v6);
  swift_endAccess();
  if (!v7)
  {
    return 0.0;
  }

  v3 = [v7 defaultLayoutValues];
  [v3 standardAvatarSize];
  v4 = v1;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v7);
  return v4;
}

double MessageListCollectionHeaderView.updateConfiguration(using:)(uint64_t a1)
{
  v9 = a1;
  v20 = 0;
  v19 = 0;
  v8 = 0;
  v15 = sub_214CCDCB4();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v6 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v12 = &v5 - v6;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v16 = &v5 - v7;
  v20 = v1;
  v19 = v2;
  MEMORY[0x277D82BE0](v2);
  sub_214CCDC44();
  v10 = sub_214CCDB84();
  v11 = v18;
  v18[3] = v10;
  v18[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v9);
  sub_214CCDC94();
  __swift_destroy_boxed_opaque_existential_0(v11);
  (*(v13 + 8))(v12, v15);
  (*(v13 + 56))(v16, 0, 1, v15);
  MEMORY[0x21605DF80](v16);
  *&result = MEMORY[0x277D82BD8](v17).n128_u64[0];
  return result;
}

id MessageListCollectionHeaderView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_214BD68A0()
{
  v2 = qword_27CA36658;
  if (!qword_27CA36658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36658);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BD696C(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for Attributes();
    v1 = sub_214CCF834();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t MessageListGroupedSenderCollectionViewCell.itemID.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_itemID);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t MessageListGroupedSenderCollectionViewCell.itemID.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_itemID);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t MessageListGroupedSenderCollectionViewCell.messageListItem.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItem);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t MessageListGroupedSenderCollectionViewCell.messageListItem.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItem);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t MessageListGroupedSenderCollectionViewCell.messageListItemFuture.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFuture);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double MessageListGroupedSenderCollectionViewCell.messageListItemFuture.setter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFuture);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t MessageListGroupedSenderCollectionViewCell.messageListItemFetchTimeoutCancelable.getter()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFetchTimeoutCancelable);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t MessageListGroupedSenderCollectionViewCell.messageListItemFetchTimeoutCancelable.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFetchTimeoutCancelable);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_214BD72C0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_avatarResult);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BD7330(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_avatarResult);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BD73C8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_maximumPreviewLines);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_214BD743C(uint64_t a1, char a2)
{
  v6 = v2 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_maximumPreviewLines;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return swift_endAccess();
}

uint64_t sub_214BD74D8()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_hideAvatar);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_214BD7540(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_hideAvatar);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214BD75B4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_displayName);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BD7628(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_displayName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

Swift::Void __swiftcall MessageListGroupedSenderCollectionViewCell.prepareForReuse()()
{
  ObjectType = swift_getObjectType();
  v18 = v0;
  *&v1 = (MEMORY[0x277D82BE0])().n128_u64[0];
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_prepareForReuse, v1);
  (MEMORY[0x277D82BD8])();
  v11 = &v0[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_itemID];
  swift_beginAccess();
  *v11 = 0;
  swift_unknownObjectRelease();
  swift_endAccess();
  v12 = &v0[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItem];
  swift_beginAccess();
  *v12 = 0;
  swift_unknownObjectRelease();
  swift_endAccess();
  v13 = &v0[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_avatarResult];
  swift_beginAccess();
  v2 = *v13;
  *v13 = 0;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  v14 = &v0[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_hideAvatar];
  swift_beginAccess();
  *v14 = 0;
  swift_endAccess();
  v15 = OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFuture;
  v16 = &v0[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFuture];
  swift_beginAccess();
  if (*v16)
  {
    v8 = *(v9 + v15);
    MEMORY[0x277D82BE0](v8);
    swift_endAccess();
    [v8 cancel];
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    swift_endAccess();
  }

  v6 = (v9 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFuture);
  swift_beginAccess();
  v3 = *v6;
  *v6 = 0;
  MEMORY[0x277D82BD8](v3);
  swift_endAccess();
  v7 = (v9 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFetchTimeoutCancelable);
  swift_beginAccess();
  if (*v7)
  {
    v5 = *v7;
    swift_unknownObjectRetain();
    swift_endAccess();
    swift_getObjectType();
    [v5 cancel];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_endAccess();
  }

  v4 = (v9 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFetchTimeoutCancelable);
  swift_beginAccess();
  *v4 = 0;
  swift_unknownObjectRelease();
  swift_endAccess();
}

id MessageListGroupedSenderCollectionViewCell.update(messageListItem:avatarResult:maximumPreviewLines:hideAvatar:displayName:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = [a1 itemID];
  swift_unknownObjectRelease();
  v10 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_itemID);
  swift_beginAccess();
  *v10 = v11;
  swift_unknownObjectRelease();
  swift_endAccess();
  swift_unknownObjectRetain();
  v12 = (v6 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItem);
  swift_beginAccess();
  *v12 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E00);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80);
  v15 = sub_214BD7D5C(a1);
  v14 = &v25[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFuture];
  swift_beginAccess();
  v7 = *v14;
  *v14 = v15;
  MEMORY[0x277D82BD8](v7);
  swift_endAccess();
  MEMORY[0x277D82BE0](a2);
  v16 = &v25[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_avatarResult];
  swift_beginAccess();
  v8 = *v16;
  *v16 = a2;
  MEMORY[0x277D82BD8](v8);
  swift_endAccess();
  v19 = &v25[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_maximumPreviewLines];
  swift_beginAccess();
  *v19 = a3;
  v19[8] = 0;
  swift_endAccess();
  v20 = &v25[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_hideAvatar];
  swift_beginAccess();
  *v20 = a4;
  swift_endAccess();

  v23 = &v25[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_displayName];
  swift_beginAccess();
  *v23 = a5;
  *(v23 + 1) = a6;

  swift_endAccess();
  return [v25 setNeedsUpdateConfiguration];
}

id sub_214BD7D5C(uint64_t a1)
{
  v2 = [swift_getObjCClassFromMetadata() futureWithResult_];
  swift_unknownObjectRelease();
  return v2;
}

char *MessageListGroupedSenderCollectionViewCell.updateConfiguration(using:)(uint64_t a1)
{
  v229 = a1;
  v228 = 0;
  v177 = sub_214BD97DC;
  v178 = sub_214BDA0AC;
  v179 = "Fatal error";
  v180 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v181 = "MailUI/MessageListGroupedSenderCollectionViewCell.swift";
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v272 = 0;
  v270 = 0;
  v268 = 0;
  v269 = 0;
  v261 = 0;
  v254 = 0;
  v252 = 0;
  v249 = 0;
  v250 = 0;
  v246 = 0;
  v244 = 0;
  v225 = 0;
  v182 = sub_214CCDAF4();
  v183 = *(v182 - 8);
  v184 = v182 - 8;
  v185 = (*(v183 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v186 = v60 - v185;
  v187 = sub_214CCDAC4();
  v188 = *(v187 - 8);
  v189 = v187 - 8;
  v190 = (*(v188 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v187);
  v191 = v60 - v190;
  v192 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v225);
  v193 = v60 - v192;
  v194 = sub_214CCDCB4();
  v195 = *(v194 - 8);
  v196 = v194 - 8;
  v197 = (*(v195 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v225);
  v198 = v60 - v197;
  v199 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v200 = v60 - v199;
  v276 = v60 - v199;
  v201 = sub_214CCDD24();
  v202 = *(v201 - 8);
  v203 = v201 - 8;
  v204 = (*(v202 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v225);
  v205 = v60 - v204;
  v206 = sub_214CCDCF4();
  v207 = *(v206 - 8);
  v208 = v206 - 8;
  v209 = (*(v207 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v206);
  v210 = v60 - v209;
  v211 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v225);
  v212 = v60 - v211;
  v213 = sub_214CCDD84();
  v214 = *(v213 - 8);
  v215 = v213 - 8;
  v216 = (*(v214 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v225);
  v217 = v60 - v216;
  v218 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v219 = v60 - v218;
  v275 = v60 - v218;
  v220 = sub_214CCD254();
  v221 = *(v220 - 8);
  v222 = v220 - 8;
  v223 = (*(v221 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v220);
  v224 = v60 - v223;
  v226 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v225);
  v227 = v60 - v226;
  v230 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v231 = (*(*(v230 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v229);
  v232 = v60 - v231;
  v233 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v234 = (v60 - v233);
  v274 = v60 - v233;
  v273 = v8;
  v272 = v1;
  v235 = MEMORY[0x277D76620];
  v236 = &v271;
  swift_beginAccess();
  v237 = *v235;
  MEMORY[0x277D82BE0](v237);
  swift_endAccess();
  if (v237)
  {
    v175 = v237;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  v9 = v232;
  v164 = v175;
  v165 = [v175 preferredContentSizeCategory];
  MEMORY[0x277D82BD8](v164);
  v166 = sub_214CCFD14();
  v270 = v166 & 1;
  MEMORY[0x277D82BD8](v165);
  v268 = v177;
  v171 = 0;
  v269 = 0;
  sub_214BD9AA0(v9);
  v167 = sub_214CCDB84();
  v170 = v267;
  v267[3] = v167;
  v267[4] = MEMORY[0x277D74BA8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v267);
  v11 = *(v167 - 8);
  v168 = *(v11 + 16);
  v169 = v11 + 16;
  v168(boxed_opaque_existential_1, v229);
  sub_214BD9CA4(v234);
  __swift_destroy_boxed_opaque_existential_0(v170);
  sub_214BD9CEC(v232);
  v172 = (v176 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItem);
  v173 = &v266;
  swift_beginAccess();
  v174 = *v172;
  swift_unknownObjectRetain();
  swift_endAccess();
  if (v174)
  {
    v163 = v174;
    v161 = v174;
    objc_opt_self();
    v162 = swift_dynamicCastObjCClass();
    if (v162)
    {
      v160 = v162;
    }

    else
    {
      swift_unknownObjectRelease();
      v160 = 0;
    }

    v159 = v160;
  }

  else
  {
    v159 = 0;
  }

  v158 = v159;
  if (!v159)
  {
    goto LABEL_43;
  }

  v157 = v158;
  v148 = v158;
  v261 = v158;
  v149 = (v176 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_avatarResult);
  v150 = &v260;
  v152 = 32;
  v153 = 0;
  swift_beginAccess();
  v151 = *v149;
  MEMORY[0x277D82BE0](v151);
  swift_endAccess();
  v12 = *v234;
  *v234 = v151;
  MEMORY[0x277D82BD8](v12);
  v154 = (v176 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_hideAvatar);
  v155 = &v259;
  swift_beginAccess();
  v156 = *v154;
  swift_endAccess();
  if (v156)
  {
    v147 = 1;
  }

  else
  {
    v147 = v166;
  }

  v13 = v148;
  *(v234 + 8) = v147 & 1;
  *&v14 = MEMORY[0x277D82BE0](v13).n128_u64[0];
  v146 = [v148 displayDate];
  if (v146)
  {
    v145 = v146;
    v144 = v146;
    sub_214CCD224();
    (*(v221 + 32))(v227, v224, v220);
    (*(v221 + 56))(v227, 0, 1, v220);
    MEMORY[0x277D82BD8](v144);
  }

  else
  {
    (*(v221 + 56))(v227, 1, 1, v220);
  }

  MEMORY[0x277D82BD8](v148);
  sub_214A87954(v227, v234 + v230[8]);
  v134 = (v176 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_displayName);
  v135 = &v258;
  v138 = 32;
  v139 = 0;
  swift_beginAccess();
  v136 = *v134;
  v137 = v134[1];

  swift_endAccess();
  v15 = v234;
  v16 = v137;
  v234[2] = v136;
  v15[3] = v16;

  v140 = v176 + OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_maximumPreviewLines;
  v141 = &v257;
  swift_beginAccess();
  v142 = *v140;
  v143 = *(v140 + 8);
  swift_endAccess();
  v255 = v142;
  v256 = v143 & 1;
  if (v143)
  {
    v133 = 0;
  }

  else
  {
    v133 = v255;
  }

  v132 = v133;
  v254 = v133;
  *(v234 + v230[10]) = v133;
  if ([objc_opt_self() preferenceEnabled_])
  {
    v17 = sub_214CD03B4();
    v129 = &v240;
    v240 = v17;
    v241 = v18;
    v127 = 1;
    v19 = sub_214CCF614();
    v120 = v20;
    MEMORY[0x21605E650](v19);

    *&v21 = MEMORY[0x277D82BE0](v148).n128_u64[0];
    v121 = [v148 businessID];
    MEMORY[0x277D82BD8](v148);
    v239[2] = v121;
    sub_214CD0384();
    v22 = sub_214CCF614();
    v122 = v23;
    MEMORY[0x21605E650](v22);

    v123 = v234[2];
    v124 = v234[3];

    v125 = v239;
    v239[0] = v123;
    v239[1] = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
    v24 = sub_214CCF5B4();
    v126 = v238;
    v238[0] = v24;
    v238[1] = v25;
    sub_214CD0394();
    sub_214A61B48();
    v26 = sub_214CCF614();
    v128 = v27;
    MEMORY[0x21605E650](v26);

    v131 = v240;
    v130 = v241;

    sub_214A61B48();
    v28 = sub_214CCF5F4();
    v29 = v234;
    v234[2] = v28;
    v29[3] = v30;
  }

  *&v31 = MEMORY[0x277D82BE0](v148).n128_u64[0];
  v119 = [v148 groupedSenderMessageListItems];
  if (v119)
  {
    v118 = v119;
    v115 = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80);
    v116 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v115);
    v117 = v116;
  }

  else
  {
    v117 = 0;
  }

  v114 = v117;
  if (v117)
  {
    v113 = v114;
    v110 = v114;
    v252 = v114;
    MEMORY[0x277D82BD8](v148);
    v251 = v110;
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E90);
    v112 = sub_214B107E0();
    v32 = sub_214CCFA94();
    if ((v32 & 1) == 0)
    {

      v248 = v110;
      sub_214CCFAC4();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EA0);
        sub_214CD01B4();
        v109 = v247;
        if (!v247)
        {
          break;
        }

        v108 = v109;
        v105 = v109;
        v246 = v109;
        v106 = v234[4];

        v107 = sub_214CCF854();

        if (v107 < v132)
        {
          v102 = v234[4];

          v245 = v102;
          v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
          sub_214B50C54();
          v103 = sub_214CCFA94();
          v244 = v103 & 1;

          swift_getObjectType();
          swift_unknownObjectRetain();
          v104 = [v105 subject];
          swift_unknownObjectRelease();
          if (v104)
          {
            v100 = v104;
            v94 = v104;
            v95 = [v104 subjectString];
            v96 = sub_214CCF564();
            v97 = v33;
            MEMORY[0x277D82BD8](v94);
            MEMORY[0x277D82BD8](v95);
            v98 = v96;
            v99 = v97;
          }

          else
          {
            v98 = 0;
            v99 = 0;
          }

          v91 = v99;
          v92 = sub_214BD97DC(v98, v99, v103 & 1);
          v93 = v34;

          v242 = v92;
          v243 = v93;
          sub_214CCF884();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      sub_214A62278();

      goto LABEL_41;
    }
  }

  else
  {
    MEMORY[0x277D82BD8](v148);
  }

  v81 = 1;
  v83 = sub_214CCF614();
  v87 = v35;
  v86 = [objc_opt_self() mui_MailUIBundle];
  v82 = sub_214CCF614();
  v85 = v36;
  sub_214B1C228();
  v84 = v37;
  v88 = sub_214CCCF54();
  v89 = v38;

  MEMORY[0x277D82BD8](v86);

  v90 = v253;
  v253[0] = v88;
  v253[1] = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214CCF884();
LABEL_41:
  *&v39 = MEMORY[0x277D82BE0](v148).n128_u64[0];
  v79 = [v148 flags];
  *&v40 = MEMORY[0x277D82BD8](v148).n128_u64[0];
  v80 = [v79 read];
  MEMORY[0x277D82BD8](v79);
  v41 = v148;
  *(v234 + v230[9]) = v80;
  MEMORY[0x277D82BD8](v41);
LABEL_43:
  sub_214CCDD64();
  v61 = v265;
  v265[3] = v167;
  v75 = MEMORY[0x277D74BA8];
  v265[4] = MEMORY[0x277D74BA8];
  v42 = __swift_allocate_boxed_opaque_existential_1(v265);
  (v168)(v42, v229, v167);
  sub_214CCDD74();
  __swift_destroy_boxed_opaque_existential_0(v61);
  v62 = *(v214 + 8);
  v63 = v214 + 8;
  v62(v217, v213);
  v65 = swift_allocObject();
  v64 = v65 + 16;
  MEMORY[0x277D82BE0](v176);
  swift_unknownObjectWeakInit();
  MEMORY[0x277D82BD8](v176);

  sub_214CCDE84();

  v43 = *(*(sub_214CCDE74() - 8) + 56);
  v67 = 0;
  v43(v212);
  v66 = &v264;
  v68 = sub_214CCDD44();
  sub_214CCDCE4();
  v68();
  sub_214CCDD04();
  v69 = sub_214CCDCD4();
  v71 = *(v207 + 8);
  v70 = v207 + 8;
  v71(v210, v206);
  v44 = (v234 + v230[11]);
  v45 = *v44;
  *v44 = v69;
  MEMORY[0x277D82BD8](v45);
  sub_214CCDD54();
  v72 = sub_214CCDCD4();
  v71(v210, v206);
  v46 = (v234 + v230[12]);
  v47 = *v46;
  *v46 = v72;
  MEMORY[0x277D82BD8](v47);
  sub_214CCDD34();
  v48 = sub_214CCDD14();
  v49 = v176;
  v73 = v48;
  (*(v202 + 8))(v205, v201);
  v50 = (v234 + v230[13]);
  v51 = *v50;
  *v50 = v73;
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BE0](v49);
  v74 = v263;
  v263[3] = v230;
  v263[4] = sub_214BDA0B4();
  v52 = __swift_allocate_boxed_opaque_existential_1(v74);
  sub_214BDA134(v234, v52);
  MEMORY[0x21605DF70](v74);
  v53 = MEMORY[0x277D82BD8](v176);
  MEMORY[0x21605DF90](v53);
  v76 = v262;
  v262[3] = v167;
  v262[4] = v75;
  v54 = __swift_allocate_boxed_opaque_existential_1(v262);
  (v168)(v54, v229, v167);
  sub_214CCDC94();
  __swift_destroy_boxed_opaque_existential_0(v76);
  v77 = *(v195 + 8);
  v78 = v195 + 8;
  v77(v198, v194);
  if (MUISolariumFeatureEnabled())
  {
    sub_214CCDBD4();
  }

  v55 = MEMORY[0x277D82BE0](v176);
  (*(v195 + 16))(v193, v200, v194, v55);
  (*(v195 + 56))(v193, 0, 1, v194);
  MEMORY[0x21605DF80](v193);
  v56 = v176;
  MEMORY[0x277D82BD8](v176);
  MEMORY[0x277D82BE0](v56);
  v60[3] = sub_214CCDB04();
  v60[2] = sub_214CD03C4();
  v60[1] = v57;
  (*(v188 + 104))(v191, *MEMORY[0x277D74A88], v187);
  sub_214BDA3E8(v186);
  sub_214CCDAB4();
  (*(v183 + 8))(v186, v182);
  (*(v188 + 8))(v191, v187);
  sub_214A63280();
  sub_214CCFD24();
  v58 = MEMORY[0x277D82BD8](v176);
  (v77)(v200, v194, v58);
  v62(v219, v213);
  return sub_214BD9CEC(v234);
}

uint64_t type metadata accessor for MessageListGroupedSenderContentConfiguration()
{
  v1 = qword_280C7D138;
  if (!qword_280C7D138)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_214BD97DC(uint64_t a1, uint64_t a2, char a3)
{

  if (a2)
  {
    sub_214CCF614();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36270);
    sub_214CD03C4();
    v8 = v3;

    v8[3] = MEMORY[0x277D837D0];
    v8[4] = sub_214BD1FAC();
    *v8 = a1;
    v8[1] = a2;
    sub_214A63280();
    v9 = sub_214CCF554();

    return v9;
  }

  else
  {
    if ((a3 & 1) == 0)
    {
      return sub_214CCF614();
    }

    sub_214CCF614();
    v5 = [objc_opt_self() mui_MailUIBundle];
    sub_214CCF614();
    sub_214B1C228();
    v6 = sub_214CCCF54();

    MEMORY[0x277D82BD8](v5);

    return v6;
  }
}

uint64_t sub_214BD9AA0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v30 = 0;
  v27 = 0;
  v26 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v18 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v29 = &v18 - v18;
  v30 = &v18 - v18;
  *v29 = 0;
  v1 = sub_214BDB318();
  v2 = v29;
  v21 = 1;
  v20 = 1;
  v29[8] = v1 & 1;
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  v3 = sub_214CD03C4();
  v4 = v26;
  *(v29 + 4) = v3;
  v19 = *(v4 + 32);
  v5 = sub_214CCD254();
  (*(*(v5 - 8) + 56))(&v29[v19], v20);
  v6 = v26;
  v29[*(v26 + 36)] = v21;
  v22 = *(v6 + 40);
  v7 = [objc_opt_self() em_linesOfPreview];
  v8 = v26;
  *&v29[v22] = v7;
  v23 = *(v8 + 44);
  v24 = 0x277D75000uLL;
  v9 = [objc_opt_self() labelColor];
  v10 = v26;
  *&v29[v23] = v9;
  v25 = *(v10 + 48);
  v11 = [objc_opt_self() secondaryLabelColor];
  v12 = v26;
  v13 = v27;
  v14 = v28;
  v15 = v11;
  v16 = v29;
  *&v29[v25] = v15;
  *(v16 + *(v12 + 52)) = v13;
  return sub_214BDAB6C(v16, v14);
}

char *sub_214BD9CEC(char *a1)
{
  MEMORY[0x277D82BD8](*a1);

  v2 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v3 = v2[8];
  v5 = sub_214CCD254();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(&a1[v3], 1))
  {
    (*(v6 + 8))(&a1[v3], v5);
  }

  MEMORY[0x277D82BD8](*&a1[v2[11]]);
  MEMORY[0x277D82BD8](*&a1[v2[12]]);
  MEMORY[0x277D82BD8](*&a1[v2[13]]);
  return a1;
}

id sub_214BD9E3C(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v25 = 0;
  v24 = 0;
  v22 = 0;
  v16 = sub_214CCDB84();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  v20 = &v5 - v19;
  v25 = v2;
  v21 = v3 + 16;
  v24 = v3 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v9 = Strong;
    MEMORY[0x277D82BE0](Strong);
    sub_214A671E8(p_Strong);
    swift_endAccess();
    v11 = [v9 _bridgedConfigurationState];
    sub_214CCDB64();
    MEMORY[0x277D82BD8](v9);
    v10 = sub_214CCDB44();
    (*(v17 + 8))(v20, v16);
    v12 = [v10 mf_useSplitViewStyling];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    v13 = v12;
  }

  else
  {
    sub_214A671E8(&Strong);
    swift_endAccess();
    v13 = 2;
  }

  v7 = v13;
  if (v13 != 2)
  {
    v6 = v7;
    v22 = v6 & 1;
    if ((v6 & 1) == 0)
    {
      return [objc_opt_self() secondaryLabelColor];
    }
  }

  MEMORY[0x277D82BE0](v15);
  return v15;
}

unint64_t sub_214BDA0B4()
{
  v2 = qword_280C7D148;
  if (!qword_280C7D148)
  {
    type metadata accessor for MessageListGroupedSenderContentConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D148);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BDA134(uint64_t *a1, uint64_t a2)
{
  v10 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = v10;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = a1[2];
  v11 = a1[3];

  *(a2 + 24) = v11;
  v13 = a1[4];

  *(a2 + 32) = v13;
  v14 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v15 = v14[8];
  v17 = sub_214CCD254();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(a1 + v15, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
    memcpy((a2 + v15), a1 + v15, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v18 + 16))();
    (*(v18 + 56))(a2 + v15, 0, 1, v17);
  }

  *(a2 + v14[9]) = *(a1 + v14[9]);
  *(a2 + v14[10]) = *(a1 + v14[10]);
  v4 = v14[11];
  v5 = *(a1 + v4);
  MEMORY[0x277D82BE0](v5);
  *(a2 + v4) = v5;
  v6 = v14[12];
  v7 = *(a1 + v6);
  MEMORY[0x277D82BE0](v7);
  *(a2 + v6) = v7;
  v8 = v14[13];
  v9 = *(a1 + v8);
  MEMORY[0x277D82BE0](v9);
  result = a2;
  *(a2 + v8) = v9;
  return result;
}

uint64_t sub_214BDA3E8@<X0>(uint64_t a1@<X8>)
{
  v4[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36950);
  v4[0] = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v5 = v4 - v4[0];
  v6 = 0;
  v2 = sub_214CCDAD4();
  (*(*(v2 - 8) + 56))(v5, 1);
  return sub_214CCDAE4();
}

uint64_t MessageListGroupedSenderCollectionViewCell.applyIndicatorPreviewChangeAction(_:)(void *a1)
{
  v16 = a1;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366B0);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v15 = (&v11 - v14);
  v22 = 0;
  v17 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v18 = *(v17 - 8);
  v19 = v17 - 8;
  v20 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v16);
  v21 = (&v11 - v20);
  v34 = &v11 - v20;
  v33 = v4;
  v32 = v1;
  v5 = [v4 action];
  v25 = &v31;
  v31 = v5;
  v23 = &v30;
  v30 = 2;
  v24 = type metadata accessor for MSTriageChangeActionType();
  sub_214BDA964();
  result = sub_214CD03F4();
  if (result)
  {
    v7 = MEMORY[0x277D82BE0](v13);
    MEMORY[0x21605DF60](v29, v7);
    MEMORY[0x277D82BD8](v13);
    if (v29[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA366C0);
      if (swift_dynamicCast())
      {
        (*(v18 + 56))(v15, 0, 1, v17);
      }

      else
      {
        (*(v18 + 56))(v15, 1, 1, v17);
      }
    }

    else
    {
      sub_214A7D24C(v29);
      (*(v18 + 56))(v15, 1, 1, v17);
    }

    if ((*(v18 + 48))(v15, 1, v17) == 1)
    {
      return sub_214BDA9E4(v15);
    }

    else
    {
      v8 = v13;
      sub_214BDAB6C(v15, v21);
      v9 = [v16 flagState];
      *(v21 + *(v17 + 36)) = v9;
      MEMORY[0x277D82BE0](v8);
      v12 = &v26;
      v27 = v17;
      v28 = sub_214BDA0B4();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
      sub_214BDA134(v21, boxed_opaque_existential_1);
      MEMORY[0x21605DF70](v12);
      MEMORY[0x277D82BD8](v13);
      return sub_214BD9CEC(v21);
    }
  }

  return result;
}

unint64_t sub_214BDA964()
{
  v2 = qword_27CA366B8;
  if (!qword_27CA366B8)
  {
    type metadata accessor for MSTriageChangeActionType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA366B8);
    return WitnessTable;
  }

  return v2;
}

void *sub_214BDA9E4(void *a1)
{
  v6 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  if (!(*(*(v6 - 1) + 48))(a1, 1))
  {
    MEMORY[0x277D82BD8](*a1);

    v2 = a1 + v6[8];
    v3 = sub_214CCD254();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1))
    {
      (*(v4 + 8))(v2, v3);
    }

    MEMORY[0x277D82BD8](*(a1 + v6[11]));
    MEMORY[0x277D82BD8](*(a1 + v6[12]));
    MEMORY[0x277D82BD8](*(a1 + v6[13]));
  }

  return a1;
}

uint64_t sub_214BDAB6C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  v5 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v6 = v5[8];
  v8 = sub_214CCD254();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1 + v6, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
    memcpy((a2 + v6), (a1 + v6), *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))();
    (*(v9 + 56))(a2 + v6, 0, 1, v8);
  }

  result = a2;
  *(a2 + v5[9]) = *(a1 + v5[9]);
  *(a2 + v5[10]) = *(a1 + v5[10]);
  *(a2 + v5[11]) = *(a1 + v5[11]);
  *(a2 + v5[12]) = *(a1 + v5[12]);
  *(a2 + v5[13]) = *(a1 + v5[13]);
  return result;
}

_BYTE *MessageListGroupedSenderCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  *&v10 = a3;
  *(&v10 + 1) = a4;
  ObjectType = swift_getObjectType();
  v13 = v9;
  v14 = v10;
  v15 = v4;
  *&v4[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_itemID] = 0;
  *&v15[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItem] = 0;
  *&v15[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFuture] = 0;
  *&v15[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFetchTimeoutCancelable] = 0;
  *&v15[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_avatarResult] = 0;
  v6 = &v15[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_maximumPreviewLines];
  *v6 = 0;
  v6[8] = 1;
  v15[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_hideAvatar] = 0;
  v7 = &v15[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_displayName];
  *v7 = 0;
  v7[1] = 0;
  v12.receiver = v15;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, sel_initWithFrame_, v9, v10);
  MEMORY[0x277D82BE0](v11);
  v15 = v11;
  MEMORY[0x277D82BD8](v11);
  return v11;
}

id MessageListGroupedSenderCollectionViewCell.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

_BYTE *MessageListGroupedSenderCollectionViewCell.init(coder:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v11 = v1;
  *&v1[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_itemID] = 0;
  *&v11[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItem] = 0;
  *&v11[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFuture] = 0;
  *&v11[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_messageListItemFetchTimeoutCancelable] = 0;
  *&v11[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_avatarResult] = 0;
  v3 = &v11[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_maximumPreviewLines];
  *v3 = 0;
  v3[8] = 1;
  v11[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_hideAvatar] = 0;
  v4 = &v11[OBJC_IVAR____TtC6MailUI42MessageListGroupedSenderCollectionViewCell_displayName];
  *v4 = 0;
  v4[1] = 0;
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, sel_initWithCoder_);
  if (v8)
  {
    MEMORY[0x277D82BE0](v8);
    v11 = v8;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v11);
    return v8;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id MessageListGroupedSenderCollectionViewCell.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_214BDB318()
{
  v5 = [objc_opt_self() em_userDefaults];
  if (v5)
  {
    v1 = *MEMORY[0x277D06C88];
    MEMORY[0x277D82BE0](*MEMORY[0x277D06C88]);
    sub_214AFD2F4(v1);
    v2 = sub_214CCF544();
    MEMORY[0x277D82BD8](v1);

    v3 = [v5 BOOLForKey_];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v5);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_214BDB438()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_214BDB4A8(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v7 = &v5 - v6;
  sub_214A8782C(v2, &v5 - v6);
  v3 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  sub_214A87954(v7, (v1 + *(v3 + 32)));
  return sub_214A871C0(v8);
}

uint64_t sub_214BDB584(unsigned int a1)
{
  v2 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  result = a1;
  *(v1 + *(v2 + 36)) = a1;
  return result;
}

uint64_t sub_214BDB5E4(uint64_t a1)
{
  v2 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  result = a1;
  *(v1 + *(v2 + 40)) = a1;
  return result;
}

uint64_t sub_214BDB61C()
{
  v2 = *(v0 + *(type metadata accessor for MessageListGroupedSenderContentConfiguration() + 44));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double sub_214BDB65C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for MessageListGroupedSenderContentConfiguration() + 44));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BDB6C0()
{
  v2 = *(v0 + *(type metadata accessor for MessageListGroupedSenderContentConfiguration() + 48));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double sub_214BDB700(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for MessageListGroupedSenderContentConfiguration() + 48));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BDB764()
{
  v2 = *(v0 + *(type metadata accessor for MessageListGroupedSenderContentConfiguration() + 52));
  MEMORY[0x277D82BE0](v2);
  return v2;
}

double sub_214BDB7A4(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v2 = (v1 + *(type metadata accessor for MessageListGroupedSenderContentConfiguration() + 52));
  v3 = *v2;
  *v2 = a1;
  MEMORY[0x277D82BD8](v3);
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

char *sub_214BDB808()
{
  v7 = 0;
  v2 = 0;
  v3 = (*(*(type metadata accessor for MessageListGroupedSenderContentConfiguration() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v5 = (&v2 - v3);
  v7 = v0;
  type metadata accessor for MessageListGroupedSenderContentView();
  sub_214BDA134(v4, v5);
  v6 = sub_214BDB938(v5);
  sub_214BDB974();
  return v6;
}

uint64_t type metadata accessor for MessageListGroupedSenderContentView()
{
  v1 = qword_280C7D230;
  if (!qword_280C7D230)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_214BDB974()
{
  v2 = qword_280C7D248;
  if (!qword_280C7D248)
  {
    type metadata accessor for MessageListGroupedSenderContentView();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7D248);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_214BDB9F4(uint64_t a1, uint64_t *a2)
{
  v59 = a1;
  v66 = a2;
  v85 = 0;
  v84 = 0;
  v49 = sub_214CCD254();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (v50[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v53 = &v10 - v52;
  v54 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v10 - v52);
  v55 = &v10 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36948);
  v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v58 = &v10 - v57;
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v61 = &v10 - v60;
  v62 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v63 = &v10 - v62;
  v64 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v65 = &v10 - v64;
  v85 = v7;
  v84 = v8;
  v67 = *v7;
  MEMORY[0x277D82BE0](v67);
  MEMORY[0x277D82BE0](v67);
  v68 = *v66;
  MEMORY[0x277D82BE0](v68);
  MEMORY[0x277D82BE0](v68);
  v82 = v67;
  v83 = v68;
  if (v67)
  {
    sub_214A671A8(&v82, &v71);
    if (v83)
    {
      v70 = v71;
      v46 = &v82;
      v69 = v83;
      type metadata accessor for MUIAvatarImageGeneratorResult();
      v47 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v70);
      sub_214A671E8(v46);
      v48 = v47;
      goto LABEL_7;
    }

    MEMORY[0x277D82BD8](v71);
    goto LABEL_9;
  }

  if (v83)
  {
LABEL_9:
    sub_214A68120(&v82);
    v48 = 0;
    goto LABEL_7;
  }

  sub_214A671E8(&v82);
  v48 = 1;
LABEL_7:
  v45 = v48;
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v67);
  if (v45)
  {
    if ((*(v59 + 8) & 1) != (v66[1] & 1))
    {
      return 0;
    }

    v42 = *(v59 + 16);
    v43 = *(v59 + 24);

    v44 = *(v66 + 1);

    v80[0] = v42;
    v80[1] = v43;
    v81 = v44;
    if (v43)
    {
      sub_214A61AD0(v80, &v74);
      if (*(&v81 + 1))
      {
        v39 = &v73;
        v73 = v74;
        v38 = &v72;
        v72 = v81;
        v40 = MEMORY[0x21605D8D0](v74, *(&v74 + 1), v81, *(&v81 + 1));
        sub_214A61B48();
        sub_214A61B48();
        sub_214A61B48();
        v41 = v40;
        goto LABEL_18;
      }

      sub_214A61B48();
    }

    else if (!*(&v81 + 1))
    {
      sub_214A61B48();
      v41 = 1;
LABEL_18:
      v37 = v41;

      if ((v37 & 1) == 0)
      {
        return 0;
      }

      v35 = *(v59 + 32);

      v34 = v66[4];

      v36 = sub_214CCF8E4();

      if ((v36 & 1) == 0)
      {
        return 0;
      }

      v30 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
      sub_214A8782C((v59 + v30[8]), v65);
      sub_214A8782C(v66 + v30[8], v63);
      v31 = &v58[*(v56 + 48)];
      sub_214A8782C(v65, v58);
      sub_214A8782C(v63, v31);
      v32 = v50[6];
      v33 = v50 + 6;
      if (v32(v58, 1, v49) == 1)
      {
        if (v32(v31, 1, v49) == 1)
        {
          sub_214A871C0(v58);
          v29 = 1;
          goto LABEL_29;
        }
      }

      else
      {
        sub_214A8782C(v58, v61);
        if (v32(v31, 1, v49) != 1)
        {
          v25 = v50[4];
          v24 = v50 + 4;
          v25(v55, v61, v49);
          v25(v53, v31, v49);
          sub_214BE5ED8();
          v28 = sub_214CCF4A4();
          v27 = v50[1];
          v26 = v50 + 1;
          v27(v53, v49);
          v27(v55, v49);
          sub_214A871C0(v58);
          v29 = v28;
          goto LABEL_29;
        }

        (v50[1])(v61, v49);
      }

      sub_214BE5DAC(v58);
      v29 = 0;
LABEL_29:
      v23 = v29;
      sub_214A871C0(v63);
      sub_214A871C0(v65);
      if ((v23 & 1) == 0)
      {
        return 0;
      }

      if ((*(v59 + v30[9]) & 1) != (*(v66 + v30[9]) & 1))
      {
        return 0;
      }

      if (*(v59 + v30[10]) != *(v66 + v30[10]))
      {
        return 0;
      }

      v19 = sub_214A77084();
      v21 = *(v59 + v30[11]);
      MEMORY[0x277D82BE0](v21);
      v20 = *(v66 + v30[11]);
      MEMORY[0x277D82BE0](v20);
      v22 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      if ((v22 & 1) == 0)
      {
        return 0;
      }

      v17 = *(v59 + v30[12]);
      MEMORY[0x277D82BE0](v17);
      v16 = *(v66 + v30[12]);
      MEMORY[0x277D82BE0](v16);
      v18 = sub_214CCFD64();
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      v14 = *(v59 + v30[13]);
      MEMORY[0x277D82BE0](v14);
      MEMORY[0x277D82BE0](v14);
      v15 = *(v66 + v30[13]);
      MEMORY[0x277D82BE0](v15);
      MEMORY[0x277D82BE0](v15);
      v78 = v14;
      v79 = v15;
      if (v14)
      {
        sub_214A671A8(&v78, &v77);
        if (v79)
        {
          v76 = v77;
          v75 = v79;
          sub_214A65CE0();
          v12 = sub_214CCFD64();
          MEMORY[0x277D82BD8](v75);
          MEMORY[0x277D82BD8](v76);
          sub_214A671E8(&v78);
          v13 = v12;
LABEL_43:
          v11 = v13;
          MEMORY[0x277D82BD8](v15);
          MEMORY[0x277D82BD8](v14);
          return (v11 & 1) != 0;
        }

        MEMORY[0x277D82BD8](v77);
      }

      else if (!v79)
      {
        sub_214A671E8(&v78);
        v13 = 1;
        goto LABEL_43;
      }

      sub_214A68120(&v78);
      v13 = 0;
      goto LABEL_43;
    }

    sub_214A76610();
    v41 = 0;
    goto LABEL_18;
  }

  return 0;
}

void *sub_214BDC808(uint64_t a1)
{
  v28 = a1;
  v2 = v1;
  v30 = v2;
  v43 = 0;
  v42 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
  v7 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v19 = &v6 - v7;
  v43 = a1;
  v42 = v4;
  v8 = *v4;
  MEMORY[0x277D82BE0](v8);
  v10 = &v41;
  v41 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36918);
  sub_214BE5B7C();
  sub_214CD0554();
  sub_214A671E8(v10);
  v40 = *(v30 + 8);
  v20 = MEMORY[0x277D839B0];
  v21 = MEMORY[0x277D839C0];
  sub_214CD0554();
  v11 = *(v30 + 16);
  v12 = *(v30 + 24);

  v14 = v39;
  v39[0] = v11;
  v39[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA352F0);
  sub_214A75068();
  sub_214CD0554();
  sub_214A61B48();
  v15 = *(v30 + 32);

  v17 = &v38;
  v38 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  sub_214B5C7E8();
  sub_214CD0554();
  sub_214A62278();
  v23 = 0;
  v29 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  sub_214A8782C((v30 + v29[8]), v19);
  sub_214BE5C94();
  sub_214CD0554();
  sub_214A871C0(v19);
  v37 = *(v30 + v29[9]);
  sub_214CD0554();
  v36[1] = *(v30 + v29[10]);
  sub_214CD0554();
  v22 = *(v30 + v29[11]);
  MEMORY[0x277D82BE0](v22);
  v24 = v36;
  v36[0] = v22;
  v26 = sub_214A65CE0();
  v27 = sub_214A75228();
  sub_214CD0554();
  MEMORY[0x277D82BD8](v36[0]);
  v25 = *(v30 + v29[12]);
  MEMORY[0x277D82BE0](v25);
  v35 = v25;
  sub_214CD0554();
  MEMORY[0x277D82BD8](v35);
  v31 = *(v30 + v29[13]);
  MEMORY[0x277D82BE0](v31);
  v33 = &v34;
  v34 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA35300);
  sub_214A75190();
  sub_214CD0554();
  return sub_214A671E8(v33);
}

uint64_t sub_214BDCC10()
{
  type metadata accessor for MessageListGroupedSenderContentConfiguration();
  sub_214BE0868();
  return sub_214CD0114();
}

id sub_214BDCD78()
{
  v1 = objc_opt_self();
  v2 = *MEMORY[0x277D76988];
  v3 = [v1 preferredFontForTextStyle_];
  MEMORY[0x277D82BD8](v2);
  return v3;
}

id sub_214BDCDF8()
{
  v1 = objc_opt_self();
  v2 = *MEMORY[0x277D769D0];
  v3 = [v1 preferredFontForTextStyle_];
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_214BDCE78()
{
  v6 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___commonConstraints);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_214BDCF6C(v5);

  v2 = &v5[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___commonConstraints];
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BDCF6C(char *a1)
{
  sub_214A6F394();
  v20 = sub_214CD03C4();
  v19 = v1;
  v3 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  v6 = [v3 0x1FBBB4950];
  MEMORY[0x277D82BD8](v3);
  v4 = [a1 0x1FBB5C2A9];
  v5 = [v4 0x1FBBB4950];
  v7 = [v6 0x1FBB28F65];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  *v19 = v7;
  v8 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  v11 = [v8 0x1FBB20D25];
  MEMORY[0x277D82BD8](v8);
  v9 = [a1 0x1FBB5C2A9];
  v10 = [v9 0x1FBB20D25];
  v12 = [v11 0x1FBB28F65];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v19[1] = v12;
  v13 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  v17 = [v13 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v13);
  v15 = [a1 0x1FBB5C2A9];
  v16 = [v15 0x1FBBB59CCLL];
  v18 = [v17 0x1FBB28F65];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  result = v20;
  v19[2] = v18;
  sub_214A63280();
  return result;
}

uint64_t sub_214BDD310(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___commonConstraints);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214BDD390()
{
  v6 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarConstraints);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_214BDD484(v5);

  v2 = &v5[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarConstraints];
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BDD484(char *a1)
{
  sub_214A6F394();
  v37 = sub_214CD03C4();
  v36 = v2;
  v4 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView];
  v8 = [v4 0x1FBB23FE0];
  MEMORY[0x277D82BD8](v4);
  v5 = &a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v6 = *v5;
  MEMORY[0x277D82BE0](*v5);
  swift_endAccess();
  v7 = [v6 0x1FBB23FE0];
  v9 = [v8 0x1FBB28F65];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  *v36 = v9;
  v10 = &a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v11 = *v10;
  MEMORY[0x277D82BE0](*v10);
  swift_endAccess();
  v14 = [v11 0x1FBB5C529];
  MEMORY[0x277D82BD8](v11);
  v12 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView];
  v13 = [v12 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v12);
  v15 = [v14 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v36[1] = v15;
  v16 = &a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v17 = *v16;
  MEMORY[0x277D82BE0](*v16);
  swift_endAccess();
  v20 = [v17 0x1FBB5C529];
  MEMORY[0x277D82BD8](v17);
  v18 = [a1 layoutMarginsGuide];
  v19 = [v18 0x1FBB5C529];
  v21 = [v20 0x1FBB28F65];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  v36[2] = v21;
  v22 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  v26 = [v22 0x1FBB5C529];
  MEMORY[0x277D82BD8](v22);
  v23 = &a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v24 = *v23;
  MEMORY[0x277D82BE0](*v23);
  swift_endAccess();
  v25 = [v24 0x1FBBB59CCLL];
  MEMORY[0x277D82BD8](v24);
  v27 = [v26 0x1FBB28F7ELL];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  v36[3] = v27;
  v36[4] = sub_214BDDADC();
  v28 = &a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v29 = *v28;
  MEMORY[0x277D82BE0](*v28);
  swift_endAccess();
  v34 = [v29 widthAnchor];
  MEMORY[0x277D82BD8](v29);
  v31 = &a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v32 = *v31;
  MEMORY[0x277D82BE0](*v31);
  swift_endAccess();
  v33 = [v32 heightAnchor];
  v35 = [v34 0x1FBB28F65];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  result = v37;
  v36[5] = v35;
  sub_214A63280();
  return result;
}

id sub_214BDDADC()
{
  v7 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHeightConstraint);
  swift_beginAccess();
  v8 = *v7;
  MEMORY[0x277D82BE0](*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_214BDE140(v6);
  MEMORY[0x277D82BE0](v4);
  v3 = (v6 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHeightConstraint);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  MEMORY[0x277D82BD8](v1);
  swift_endAccess();
  return v4;
}

uint64_t sub_214BDDBE8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarConstraints);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214BDDC68()
{
  v6 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHiddenConstraints);
  swift_beginAccess();
  v7 = *v6;

  swift_endAccess();
  if (v7)
  {
    return v7;
  }

  v3 = sub_214BDDD5C(v5);

  v2 = &v5[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHiddenConstraints];
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BDDD5C(char *a1)
{
  sub_214A6F394();
  v20 = sub_214CD03C4();
  v19 = v1;
  v3 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView];
  v6 = [v3 0x1FBB23FE0];
  MEMORY[0x277D82BD8](v3);
  v4 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView];
  v5 = [v4 0x1FBB23FE0];
  v7 = [v6 0x1FBB28F65];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  *v19 = v7;
  v8 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  v11 = [v8 0x1FBB5C529];
  MEMORY[0x277D82BD8](v8);
  v9 = [a1 layoutMarginsGuide];
  v10 = [v9 0x1FBB5C529];
  v12 = [v11 0x1FBB28F65];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v19[1] = v12;
  v13 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  v17 = [v13 0x1FBB5C529];
  MEMORY[0x277D82BD8](v13);
  v15 = *&a1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView];
  v16 = [v15 trailingAnchor];
  MEMORY[0x277D82BD8](v15);
  v18 = [v17 constraintEqualToAnchor:v16 constant:8.0];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  result = v20;
  v19[2] = v18;
  sub_214A63280();
  return result;
}

uint64_t sub_214BDE0C0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHiddenConstraints);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id sub_214BDE140(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  v4 = [v3 heightAnchor];
  MEMORY[0x277D82BD8](v3);
  v5 = [v4 constraintEqualToConstant_];
  MEMORY[0x277D82BD8](v4);
  return v5;
}

double sub_214BDE220()
{
  if (MUISolariumFeatureEnabled())
  {
    return 44.0;
  }

  v1 = sub_214BDCD78();
  [v1 0x1FB96D6AELL];
  MEMORY[0x277D82BD8](v1);
  v2 = sub_214BDCDF8();
  [v2 0x1FB96D6AELL];
  MEMORY[0x277D82BD8](v2);
  sub_214A75FAC();
  sub_214CD0464();
  return v4;
}

double sub_214BDE31C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHeightConstraint);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BDE3B4()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_currentAvatarConstraints);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BDE41C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_currentAvatarConstraints);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_214BDE4A0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarController);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BDE510(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarController);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BDE5A8()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BDE5F0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BDE660(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BDE6FC()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x277D82BE0](*v2);
  swift_endAccess();
  return v3;
}

double sub_214BDE76C(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v4 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x277D82BD8](v2);
  swift_endAccess();
  *&result = MEMORY[0x277D82BD8](a1).n128_u64[0];
  return result;
}

uint64_t sub_214BDE808()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BDE850()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BDE898()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_date);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BDE8E0()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BDE928()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BDE970()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BDE9B8()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_214BDEA00()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_maximumPreviewLines);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_214BDEA64(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_maximumPreviewLines);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_214BDEAD0()
{
  v2 = (v0 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectLabelPool);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_214BDEB38(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectLabelPool);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t MessageListGroupedSenderContentView.configuration.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_appliedConfiguration);
  swift_beginAccess();
  a1[3] = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  a1[4] = sub_214BDA0B4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_214BDA134(v5, boxed_opaque_existential_1);
  return swift_endAccess();
}

double sub_214BDEC44@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  v5[5] = v3;
  MessageListGroupedSenderContentView.configuration.getter(v5);
  sub_214B2C394(v5, a2);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double sub_214BDECB8(uint64_t a1, void *a2)
{
  sub_214A74CE0(a1, v5);
  v4 = *a2;
  MEMORY[0x277D82BE0](*a2);
  MessageListGroupedSenderContentView.configuration.setter(v5);
  *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  return result;
}

uint64_t MessageListGroupedSenderContentView.configuration.setter(uint64_t a1)
{
  v7 = a1;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA366B0);
  v6 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v14 = (&v5 - v6);
  v13 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v10 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v11 = (&v5 - v10);
  v18 = &v5 - v10;
  v17 = v3;
  v16 = v1;
  v12 = v15;
  sub_214A74CE0(v3, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA366C0);
  if (swift_dynamicCast())
  {
    (*(v8 + 56))(v14, 0, 1, v13);
  }

  else
  {
    (*(v8 + 56))(v14, 1, 1, v13);
  }

  if ((*(v8 + 48))(v14, 1, v13) == 1)
  {
    sub_214BDA9E4(v14);
  }

  else
  {
    sub_214BDAB6C(v14, v11);
    sub_214BDEF70(v11);
    sub_214BD9CEC(v11);
  }

  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_214BDEF70(uint64_t *a1)
{
  v157 = a1;
  v152 = 0;
  v145 = sub_214BE4AC0;
  v146 = sub_214BE4B4C;
  v147 = sub_214B14B24;
  v194 = 0;
  v193 = 0;
  v190 = 0;
  v187 = 0;
  v186 = 0;
  v148 = 0;
  v174 = 0;
  v169 = 0;
  memset(&v168[1], 0, 24);
  v163 = 0;
  v162 = 0;
  v161 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
  v149 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v150 = v21 - v149;
  v151 = 0;
  v153 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v154 = (*(*(v153 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v157);
  v158 = (v21 - v154);
  v194 = v3;
  v193 = v1;
  v155 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_appliedConfiguration);
  v156 = &v192;
  swift_beginAccess();
  sub_214BDA134(v155, v158);
  swift_endAccess();
  v159 = sub_214BDB9F4(v157, v158);
  sub_214BD9CEC(v158);
  if (v159)
  {
    v68 = 0;
    v69 = 0;
    v70 = v151;
    v71 = v151;
    goto LABEL_47;
  }

  v4 = v144;
  v138 = *(v157 + v153[10]);
  v140 = &unk_27CA36000;
  v135 = v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_appliedConfiguration;
  v136 = &v191;
  v141 = 0;
  swift_beginAccess();
  v137 = *(v135 + v153[10]);
  swift_endAccess();
  v139 = v138 != v137;
  v190 = v138 != v137;
  sub_214BDA134(v157, v158);
  v142 = (v4 + v140[238]);
  v143 = &v189;
  swift_beginAccess();
  sub_214BE08E8(v158, v142);
  swift_endAccess();
  sub_214BE2948(v157);
  if (MUISolariumFeatureEnabled())
  {
    v134 = (v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarController);
    swift_beginAccess();
    if (*v134)
    {
      v133 = *v134;
      MEMORY[0x277D82BE0](v133);
      swift_endAccess();
      v132 = *v157;
      *&v5 = MEMORY[0x277D82BE0](v132).n128_u64[0];
      [v133 updateWithResult_];
      MEMORY[0x277D82BD8](v132);
      MEMORY[0x277D82BD8](v133);
    }

    else
    {
      swift_endAccess();
    }
  }

  else
  {
    v128 = (v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage);
    v130 = &v188;
    swift_beginAccess();
    v129 = *v128;
    MEMORY[0x277D82BE0](v129);
    swift_endAccess();
    v131 = *v157;
    v6 = MEMORY[0x277D82BE0](v131).n128_u64[0];
    if (v131)
    {
      v127 = v131;
      v124 = v131;
      v125 = [v131 image];
      v6 = MEMORY[0x277D82BD8](v124).n128_u64[0];
      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    v123 = v126;
    [v129 setImage_];
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v129);
  }

  v119 = sub_214BE348C(v157);
  v187 = v119 & 1;
  sub_214BE3C00();
  v120 = *(v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender);
  MEMORY[0x277D82BE0](v120);
  v121 = v157[2];
  v122 = v157[3];

  if (v122)
  {
    v117 = v121;
    v118 = v122;
    v114 = v122;
    v115 = sub_214CCF544();

    v116 = v115;
  }

  else
  {
    v116 = 0;
  }

  v106 = v116;
  [v120 setText_];
  MEMORY[0x277D82BD8](v106);
  MEMORY[0x277D82BD8](v120);
  v108 = *(v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender);
  MEMORY[0x277D82BE0](v108);
  v107 = *(v157 + v153[11]);
  *&v7 = MEMORY[0x277D82BE0](v107).n128_u64[0];
  [v108 setTextColor_];
  MEMORY[0x277D82BD8](v107);
  MEMORY[0x277D82BD8](v108);
  v109 = *(v157 + v153[10]);
  v186 = v109;
  v112 = v157[4];

  v185 = v112;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34EC0);
  v111 = sub_214B50C54();
  v113 = sub_214CCFA94();

  v105 = (v113 & 1) == 0 || v139;
  if (v105)
  {
    v100 = *(v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView);
    *&v8 = MEMORY[0x277D82BE0](v100).n128_u64[0];
    v103 = [v100 arrangedSubviews];
    v101 = sub_214A7802C();
    v102 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v100);
    v104 = sub_214CCF854();

    MEMORY[0x277D82BD8](v103);
    if (v104 != v109)
    {
      sub_214BE45EC(v157);
    }

    v91 = v157[4];

    v92 = sub_214CCF854();

    v171 = v92;
    v170 = v109;
    sub_214CD0464();
    v93 = v172;
    v169 = v172;
    v94 = *(v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView);
    *&v9 = MEMORY[0x277D82BE0](v94).n128_u64[0];
    v98 = [v94 arrangedSubviews];
    v95 = sub_214CCF7E4();
    MEMORY[0x277D82BD8](v94);
    v97 = &v167;
    v167 = v95;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36790);
    v10 = sub_214BE4C08();
    MEMORY[0x21605D9B0](v168, v96, v10);
    sub_214A62278();
    MEMORY[0x277D82BD8](v98);
    v166 = v168[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA367A0);
    sub_214CD0244();
    for (i = v148; ; i = v88)
    {
      v88 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA367A8);
      sub_214CD0254();
      v89 = v164;
      v90 = v165;
      if (!v165)
      {
        break;
      }

      v86 = v89;
      v87 = v90;
      v84 = v90;
      v83 = v89;
      v163 = v89;
      v162 = v90;
      MEMORY[0x277D82BE0](v90);
      objc_opt_self();
      v85 = swift_dynamicCastObjCClass();
      if (v85)
      {
        v82 = v85;
      }

      else
      {
        MEMORY[0x277D82BD8](v84);
        v82 = 0;
      }

      v80 = v82;
      v81 = v84;
      if (!v82)
      {
        MEMORY[0x277D82BD8](v81);
        sub_214A62278();
        v68 = 0;
        v69 = 0;
        v70 = v151;
        v71 = v151;
        goto LABEL_47;
      }

      v79 = v80;
      v78 = v80;
      v161 = v80;
      if (v83 < v93)
      {
        v74 = v157[4];

        sub_214CCF914();
        v75 = v160;
        v76 = sub_214CCF544();

        [v78 setText_];
        MEMORY[0x277D82BD8](v76);
        v77 = *(v157 + v153[12]);
        *&v11 = MEMORY[0x277D82BE0](v77).n128_u64[0];
        [v78 setTextColor_];
        MEMORY[0x277D82BD8](v77);
      }

      else
      {
        sub_214CCF614();
        v72 = v12;
        v73 = sub_214CCF544();

        [v78 setText_];
        MEMORY[0x277D82BD8](v73);
      }

      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v84);
    }

    sub_214A62278();
    v67 = v88;
  }

  else
  {
    v67 = v148;
  }

  v63 = v67;
  v64 = *(v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView);
  MEMORY[0x277D82BE0](v64);
  v65 = v157[4];

  v184 = v65;
  v66 = sub_214CCFA94();

  v62 = (v66 & 1) != 0 && v109 == 0;
  v58 = 1;
  [v64 setHidden_];
  MEMORY[0x277D82BD8](v64);
  v57 = *(v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel);
  MEMORY[0x277D82BE0](v57);
  sub_214A8782C(v157 + v153[8], v150);
  v59 = sub_214CCD254();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  if ((*(v60 + 48))(v150, v58) == 1)
  {
    v56 = 0;
  }

  else
  {
    v55 = sub_214CCD1C4();
    (*(v60 + 8))(v150, v59);
    v56 = v55;
  }

  v40 = v56;
  [v57 setDate_];
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v57);
  v42 = *(v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel);
  MEMORY[0x277D82BE0](v42);
  v41 = *(v157 + v153[12]);
  *&v13 = MEMORY[0x277D82BE0](v41).n128_u64[0];
  [v42 setTextColor_];
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  v49 = &unk_27CA36000;
  v43 = *(v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView);
  *&v14 = MEMORY[0x277D82BE0](v43).n128_u64[0];
  [v43 setHidden_];
  MEMORY[0x277D82BD8](v43);
  v48 = *(v144 + v49[226]);
  MEMORY[0x277D82BE0](v48);
  sub_214A74030();
  v45 = *MEMORY[0x277D76938];
  MEMORY[0x277D82BE0](v45);
  v44 = *MEMORY[0x277D76838];
  MEMORY[0x277D82BE0](v44);
  v46 = UIFontTextStyle.pointSize(maxCategory:)(v44, v45);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  v47 = sub_214BE2678(v46);
  [v48 setPreferredSymbolConfiguration_];
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  v51 = *(v144 + v49[226]);
  MEMORY[0x277D82BE0](v51);
  v50 = *(v157 + v153[13]);
  *&v15 = MEMORY[0x277D82BE0](v50).n128_u64[0];
  v52 = 0x1FB497000uLL;
  [v51 0x1FB497F78];
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  v54 = *(v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron);
  MEMORY[0x277D82BE0](v54);
  v53 = *(v157 + v153[12]);
  *&v16 = MEMORY[0x277D82BE0](v53).n128_u64[0];
  [v54 (v52 + 3960)];
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  v39 = (v119 & 1) != 0 || v139;
  if (v39)
  {
    v17 = v63;
    v34 = (v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_currentAvatarConstraints);
    v35 = &v176;
    v37 = 0;
    swift_beginAccess();
    v36 = *v34;

    swift_endAccess();
    v175 = v36;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36780);
    sub_214BE4B80();
    result = sub_214CCF764();
    if (v17)
    {
      __break(1u);
      goto LABEL_49;
    }

    sub_214A62278();
    v33 = sub_214BE3DE0(v157[1] & 1, *(v157 + v153[10]));
    v174 = v33;
    v29 = objc_opt_self();

    sub_214A6F394();
    v30 = sub_214CCF7D4();

    [v29 activateConstraints_];
    MEMORY[0x277D82BD8](v30);

    v31 = (v144 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_currentAvatarConstraints);
    v32 = &v173;
    swift_beginAccess();
    *v31 = v33;

    swift_endAccess();
  }

  v25 = objc_opt_self();
  MEMORY[0x277D82BE0](v144);
  v21[2] = 7;
  v24 = swift_allocObject();
  *(v24 + 16) = v144;

  v22 = v24;
  v19 = swift_allocObject();
  v20 = v24;
  v23 = v19;
  *(v19 + 16) = v146;
  *(v19 + 24) = v20;

  v182 = v147;
  v183 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v178 = 1107296256;
  v179 = 0;
  v180 = sub_214BE4B54;
  v181 = &block_descriptor_11;
  v27 = v23;
  v26 = _Block_copy(&aBlock);

  [v25 performWithoutAnimation_];
  _Block_release(v26);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v68 = v146;
    v69 = v22;
    v70 = v151;
    v71 = v151;
LABEL_47:
    v21[1] = v71;
    v21[0] = v70;
    sub_214A6B584(v68);
    return sub_214A6B584(v21[0]);
  }

LABEL_49:
  __break(1u);
  return result;
}

void (*MessageListGroupedSenderContentView.configuration.modify(uint64_t **a1))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v4;
  v4[10] = v1;
  MessageListGroupedSenderContentView.configuration.getter(v4);
  return sub_214BE032C;
}

void sub_214BE032C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_214A74CE0(v2, v2 + 40);
    MessageListGroupedSenderContentView.configuration.setter(v2 + 40);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    MessageListGroupedSenderContentView.configuration.setter(v2);
  }

  free(v2);
}

uint64_t sub_214BE03A4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_appliedConfiguration);
  swift_beginAccess();
  sub_214BDA134(v3, a1);
  return swift_endAccess();
}

char *sub_214BE0408(char *a1)
{
  v8 = a1;
  v11 = 0;
  v10 = 0;
  v4 = (*(*(type metadata accessor for MessageListGroupedSenderContentConfiguration() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v5 = (&v4 - v4);
  v11 = v2;
  v10 = v1;
  sub_214BDA134(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_appliedConfiguration);
  v7 = &v9;
  swift_beginAccess();
  sub_214BE08E8(v5, v6);
  swift_endAccess();
  return sub_214BD9CEC(v8);
}

char *sub_214BE04E0(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v19 = a1;
  v20 = v1;
  *&v1[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___commonConstraints] = 0;
  *&v20[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarConstraints] = 0;
  *&v20[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHiddenConstraints] = 0;
  *&v20[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHeightConstraint] = 0;
  v3 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_currentAvatarConstraints;
  sub_214A6F394();
  *&v20[v3] = sub_214CCF2D4();
  *&v20[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarController] = 0;
  v4 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView;
  sub_214A73F04();
  *&v20[v4] = sub_214A61730();
  v5 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView;
  sub_214A7802C();
  *&v20[v5] = sub_214A61730();
  v6 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage;
  *&v20[v6] = sub_214A61730();
  v7 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender;
  sub_214A73F68();
  *&v20[v7] = sub_214A61730();
  v8 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron;
  *&v20[v8] = sub_214A61730();
  v9 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_date;
  *&v20[v9] = sub_214A61730();
  v10 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel;
  sub_214BE4C90();
  *&v20[v10] = sub_214A61730();
  v11 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView;
  sub_214A73FCC();
  *&v20[v11] = sub_214A61730();
  v12 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView;
  *&v20[v12] = sub_214A61730();
  v13 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView;
  *&v20[v13] = sub_214A61730();
  *&v20[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_maximumPreviewLines] = 0;
  v14 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectLabelPool;
  *&v20[v14] = sub_214CCF2D4();
  sub_214BD9AA0(&v20[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_appliedConfiguration]);
  v18.receiver = v20;
  v18.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  MEMORY[0x277D82BE0](v17);
  v20 = v17;
  sub_214BE0CAC(a1);
  sub_214BDEF70(a1);
  sub_214BD9CEC(a1);
  MEMORY[0x277D82BD8](v20);
  return v17;
}

unint64_t sub_214BE0868()
{
  v2 = qword_27CA366D0;
  if (!qword_27CA366D0)
  {
    type metadata accessor for MessageListGroupedSenderContentConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA366D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_214BE08E8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = *a1;
  MEMORY[0x277D82BD8](v3);
  *(a2 + 8) = *(a1 + 8);
  a2[2] = a1[2];
  a2[3] = a1[3];

  a2[4] = a1[4];

  v14 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v15 = v14[8];
  v17 = sub_214CCD254();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if ((v19)(a2 + v15, 1))
  {
    if (v19(a1 + v15, 1, v17))
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
      memcpy(a2 + v15, a1 + v15, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(v18 + 32))();
      (*(v18 + 56))(a2 + v15, 0, 1, v17);
    }
  }

  else if (v19(a1 + v15, 1, v17))
  {
    (*(v18 + 8))();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA35560);
    memcpy(a2 + v15, a1 + v15, *(*(v4 - 8) + 64));
  }

  else
  {
    (*(v18 + 40))(a2 + v15, a1 + v15, v17);
  }

  *(a2 + v14[9]) = *(a1 + v14[9]);
  *(a2 + v14[10]) = *(a1 + v14[10]);
  v6 = (a2 + v14[11]);
  v7 = *v6;
  *v6 = *(a1 + v14[11]);
  MEMORY[0x277D82BD8](v7);
  v8 = (a2 + v14[12]);
  v9 = *v8;
  *v8 = *(a1 + v14[12]);
  MEMORY[0x277D82BD8](v9);
  v10 = (a2 + v14[13]);
  v11 = *v10;
  *v10 = *(a1 + v14[13]);
  MEMORY[0x277D82BD8](v11);
  return a2;
}

uint64_t *sub_214BE0CAC(uint64_t a1)
{
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v110 = 0;
  v109 = 0;
  memset(&v108[1], 0, 24);
  v118 = a1;
  v117 = v1;
  v100 = *(v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView);
  MEMORY[0x277D82BE0](v100);
  sub_214A731BC();
  MEMORY[0x277D82BE0](@"circlebadge.fill");
  v2 = sub_214CCF564();
  v99 = static UIImage.mui_systemImage(with:)(v2, v3);

  [v100 setImage_];
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v100);
  v101 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView];
  [v101 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v101);
  v103 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView];
  MEMORY[0x277D82BE0](v103);
  sub_214A74030();
  v102 = sub_214BE2678(10.0);
  [v103 setPreferredSymbolConfiguration_];
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](v103);
  v105 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView];
  [v104 addSubview_];
  MEMORY[0x277D82BD8](v105);
  if (MUISolariumFeatureEnabled())
  {
    sub_214BE4CF4();
    sub_214BE4D58();
    sub_214CD03C4();
    v106 = sub_214BE26C4();
    MEMORY[0x277D82BE0](v106);
    v95 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarController];
    swift_beginAccess();
    v4 = *v95;
    *v95 = v106;
    MEMORY[0x277D82BD8](v4);
    swift_endAccess();
    v96 = [v106 view];
    v97 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
    swift_beginAccess();
    v5 = *v97;
    *v97 = v96;
    MEMORY[0x277D82BD8](v5);
    swift_endAccess();
    MEMORY[0x277D82BD8](v106);
  }

  else
  {
    v87 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage];
    swift_beginAccess();
    v89 = *v87;
    MEMORY[0x277D82BE0](*v87);
    swift_endAccess();
    v88 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
    swift_beginAccess();
    v6 = *v88;
    *v88 = v89;
    MEMORY[0x277D82BD8](v6);
    swift_endAccess();
    v90 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage];
    swift_beginAccess();
    v91 = *v90;
    MEMORY[0x277D82BE0](*v90);
    swift_endAccess();
    [v91 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    MEMORY[0x277D82BD8](v91);
    v93 = objc_opt_self();
    v92 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage];
    swift_beginAccess();
    v94 = *v92;
    MEMORY[0x277D82BE0](*v92);
    swift_endAccess();
    [v93 roundAvatarView:v94 withBorder:0 size:sub_214BDE220()];
    MEMORY[0x277D82BD8](v94);
  }

  v50 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v51 = *v50;
  MEMORY[0x277D82BE0](*v50);
  swift_endAccess();
  LODWORD(v7) = 1144750080;
  [v51 0x1FBB8335CLL];
  MEMORY[0x277D82BD8](v51);
  v52 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v53 = *v52;
  MEMORY[0x277D82BE0](*v52);
  swift_endAccess();
  LODWORD(v8) = 1148846080;
  [v53 0x1FBB8328ELL];
  MEMORY[0x277D82BD8](v53);
  v54 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v55 = *v54;
  MEMORY[0x277D82BE0](*v54);
  swift_endAccess();
  LODWORD(v9) = 1148846080;
  [v55 0x1FBB8328ELL];
  MEMORY[0x277D82BD8](v55);
  v56 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v57 = *v56;
  MEMORY[0x277D82BE0](*v56);
  swift_endAccess();
  [v57 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v57);
  v61 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender];
  MEMORY[0x277D82BE0](v61);
  v58 = objc_opt_self();
  v59 = *MEMORY[0x277D76988];
  v60 = [v58 0x1FB3343F8];
  [v61 0x1FAAB1478];
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  v62 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender];
  [v62 0x1FAC2AD78];
  MEMORY[0x277D82BD8](v62);
  v63 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender];
  v10 = MEMORY[0x277D82BE0](v63);
  v10.n128_u32[0] = 1144750080;
  [v63 0x1FBB8335CLL];
  MEMORY[0x277D82BD8](v63);
  v64 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender];
  v11 = MEMORY[0x277D82BE0](v64);
  v11.n128_u32[0] = 1132068864;
  [v64 0x1FBB8328ELL];
  MEMORY[0x277D82BD8](v64);
  v68 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel];
  MEMORY[0x277D82BE0](v68);
  v65 = objc_opt_self();
  v66 = *MEMORY[0x277D769D0];
  v67 = [v65 0x1FB3343F8];
  [v68 0x1FAAB1478];
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  v69 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel];
  v12 = MEMORY[0x277D82BE0](v69);
  v12.n128_u32[0] = 1148846080;
  [v69 0x1FBB8335CLL];
  MEMORY[0x277D82BD8](v69);
  v70 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel];
  [v70 0x1FAC2AD78];
  MEMORY[0x277D82BD8](v70);
  v72 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron];
  MEMORY[0x277D82BE0](v72);
  MEMORY[0x277D82BE0](@"chevron.forward.circle");
  v13 = sub_214CCF564();
  v71 = static UIImage.mui_systemImage(with:)(v13, v14);

  [v72 setImage_];
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  v73 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron];
  v15 = MEMORY[0x277D82BE0](v73);
  v15.n128_u32[0] = 1148846080;
  [v73 0x1FBB8335CLL];
  MEMORY[0x277D82BD8](v73);
  v74 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron];
  [v74 setContentMode_];
  MEMORY[0x277D82BD8](v74);
  v79 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron];
  MEMORY[0x277D82BE0](v79);
  v75 = objc_opt_self();
  v76 = *MEMORY[0x277D76968];
  v77 = [v75 0x1FB3343F8];
  MEMORY[0x277D82BD8](v76);
  v78 = sub_214A74094(v77);
  [v79 setPreferredSymbolConfiguration_];
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  v80 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView];
  [v80 setDistribution_];
  MEMORY[0x277D82BD8](v80);
  v81 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView];
  [v81 setAxis_];
  MEMORY[0x277D82BD8](v81);
  v82 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView];
  [v82 setAlignment_];
  MEMORY[0x277D82BD8](v82);
  v83 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView];
  MEMORY[0x277D82BE0](v83);
  [v83 setSpacing_];
  MEMORY[0x277D82BD8](v83);
  v84 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView];
  v16 = MEMORY[0x277D82BE0](v84);
  v16.n128_u32[0] = 1148846080;
  [v84 0x1FBB8335CLL];
  MEMORY[0x277D82BD8](v84);
  v85 = type metadata accessor for MessageListGroupedSenderContentConfiguration();
  v86 = *(a1 + *(v85 + 40));
  if (v86 < 0)
  {
    LOBYTE(v19) = 2;
    v20 = 760;
    LODWORD(v21) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v112 = 0;
  v113 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38620);
  sub_214A8C7F4();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA367B0);
    sub_214CD01B4();
    if (v111)
    {
      break;
    }

    v49 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView];
    MEMORY[0x277D82BE0](v49);
    v48 = sub_214BE2704();
    [v49 addArrangedSubview_];
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
  }

  v23 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView];
  [v23 0x1FB0EDBF8];
  MEMORY[0x277D82BD8](v23);
  v24 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView];
  MEMORY[0x277D82BE0](v24);
  [v24 0x1FA943B0ALL];
  MEMORY[0x277D82BD8](v24);
  v25 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView];
  [v25 setHidden_];
  MEMORY[0x277D82BD8](v25);
  sub_214BE2948(a1);
  v26 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x277D82BD8](v26);
  v27 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  [v27 0x1FB0EDBF8];
  MEMORY[0x277D82BD8](v27);
  v28 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  MEMORY[0x277D82BE0](v28);
  [v28 0x1FA943B0ALL];
  MEMORY[0x277D82BD8](v28);
  v29 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView];
  [v104 addSubview_];
  MEMORY[0x277D82BD8](v29);
  sub_214BE348C(a1);
  sub_214BE3C00();
  v110 = sub_214BDCE78();
  v31 = sub_214BE3DE0(*(a1 + 8) & 1, *(a1 + *(v85 + 40)));
  v109 = v31;

  v30 = &v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_currentAvatarConstraints];
  swift_beginAccess();
  *v30 = v31;

  swift_endAccess();

  v108[4] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36780);
  sub_214BE4B80();
  sub_214CCF874();
  v32 = objc_opt_self();

  sub_214A6F394();
  v33 = sub_214CCF7D4();

  [v32 activateConstraints_];
  MEMORY[0x277D82BD8](v33);
  v36 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView];
  MEMORY[0x277D82BE0](v36);
  v34 = *MEMORY[0x277D25898];
  MEMORY[0x277D82BE0](*MEMORY[0x277D25898]);
  sub_214CCF564();
  v35 = sub_214CCF544();

  [v36 0x1FAB546F8];
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  v39 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender];
  MEMORY[0x277D82BE0](v39);
  v37 = *MEMORY[0x277D25888];
  MEMORY[0x277D82BE0](*MEMORY[0x277D25888]);
  sub_214CCF564();
  v38 = sub_214CCF544();

  [v39 0x1FAB546F8];
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  v42 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel];
  MEMORY[0x277D82BE0](v42);
  v40 = *MEMORY[0x277D25880];
  MEMORY[0x277D82BE0](*MEMORY[0x277D25880]);
  sub_214CCF564();
  v41 = sub_214CCF544();

  [v42 0x1FAB546F8];
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  (MEMORY[0x277D82BE0])();
  v43 = *MEMORY[0x277D25878];
  MEMORY[0x277D82BE0](*MEMORY[0x277D25878]);
  sub_214CCF564();
  v44 = sub_214CCF544();

  [v104 0x1FAB546F8];
  MEMORY[0x277D82BD8](v44);
  (MEMORY[0x277D82BD8])();
  v45 = *&v104[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView];
  v47 = [v45 arrangedSubviews];
  sub_214A7802C();
  sub_214CCF7E4();
  MEMORY[0x277D82BD8](v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36790);
  v17 = sub_214BE4C08();
  MEMORY[0x21605D9B0](v108, v46, v17);
  sub_214A62278();
  MEMORY[0x277D82BD8](v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA367A0);
  sub_214CD0244();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA367A8);
    sub_214CD0254();
    if (!v107)
    {
      break;
    }

    (MEMORY[0x277D82BE0])();
    sub_214BE440C();
    v22 = sub_214CCF544();

    [v107 setAccessibilityIdentifier_];
    MEMORY[0x277D82BD8](v22);
    (MEMORY[0x277D82BD8])();
    (MEMORY[0x277D82BD8])();
  }

  sub_214A62278();

  result = &v110;
  sub_214A62278();
  return result;
}

void sub_214BE22EC()
{
  *OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___commonConstraints = 0;
  *OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarConstraints = 0;
  *OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHiddenConstraints = 0;
  *OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView____lazy_storage___avatarHeightConstraint = 0;
  v0 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_currentAvatarConstraints;
  sub_214A6F394();
  *v0 = sub_214CCF2D4();
  *OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarController = 0;
  v1 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_unreadImageView;
  sub_214A73F04();
  *v1 = sub_214A61730();
  v2 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView;
  sub_214A7802C();
  *v2 = sub_214A61730();
  v3 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage;
  *v3 = sub_214A61730();
  v4 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender;
  sub_214A73F68();
  *v4 = sub_214A61730();
  v5 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron;
  *v5 = sub_214A61730();
  v6 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_date;
  *v6 = sub_214A61730();
  v7 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel;
  sub_214BE4C90();
  *v7 = sub_214A61730();
  v8 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView;
  sub_214A73FCC();
  *v8 = sub_214A61730();
  v9 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView;
  *v9 = sub_214A61730();
  v10 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView;
  *v10 = sub_214A61730();
  *OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_maximumPreviewLines = 0;
  v11 = OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectLabelPool;
  *v11 = sub_214CCF2D4();
  sub_214BD9AA0(OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_appliedConfiguration);
  sub_214CCF614();
  sub_214CD0204();
  __break(1u);
}

id sub_214BE2678(double a1)
{
  v1 = [swift_getObjCClassFromMetadata() configurationWithPointSize_];

  return v1;
}

id sub_214BE2704()
{
  swift_beginAccess();

  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA367B8);
  sub_214BE4DBC();
  v6 = sub_214CCFA94();

  if (v6)
  {
    sub_214A73F68();
    v7 = sub_214A61730();
    v1 = objc_opt_self();
    v2 = *MEMORY[0x277D769D0];
    v3 = [v1 preferredFontForTextStyle_];
    [v7 setFont_];
    [v7 setAdjustsFontForContentSizeCategory_];
    sub_214CCF614();
    v4 = sub_214CCF544();

    [v7 setText_];
    MEMORY[0x277D82BD8](v4);
    return v7;
  }

  else
  {
    swift_beginAccess();
    sub_214BE4E44();
    sub_214BE4ECC();
    sub_214CCFB04();
    swift_endAccess();
    return v8;
  }
}

double sub_214BE2948(uint64_t a1)
{
  v58 = MEMORY[0x277D76620];
  swift_beginAccess();
  v59 = *v58;
  MEMORY[0x277D82BE0](*v58);
  swift_endAccess();
  if (v59)
  {
    v55 = v59;
  }

  else
  {
    LOBYTE(v6) = 2;
    v7 = 471;
    LODWORD(v8) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v53 = [v55 preferredContentSizeCategory];
  MEMORY[0x277D82BD8](v55);
  v54 = sub_214CCFD14();
  MEMORY[0x277D82BD8](v53);
  (MEMORY[0x277D82BE0])();
  if (v54)
  {
    v49 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView);
    v51 = [v49 arrangedSubviews];
    sub_214A7802C();
    sub_214CCF7E4();
    MEMORY[0x277D82BD8](v49);
    v50 = sub_214CCF854();

    MEMORY[0x277D82BD8](v51);
    v52 = v50 != 2;
  }

  else
  {
    v52 = 0;
  }

  (MEMORY[0x277D82BD8])();
  if (v52)
  {
    v48 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView);
    MEMORY[0x277D82BE0](v48);
    sub_214A7802C();
    sub_214CD03C4();
    v45 = v1;
    v44 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender);
    MEMORY[0x277D82BE0](v44);
    *v45 = v44;
    v46 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron);
    MEMORY[0x277D82BE0](v46);
    v45[1] = v46;
    sub_214A63280();
    v47 = sub_214CCF7D4();

    [v48 mf:v47 addArrangedSubviews:?];
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
  }

  else
  {
    (MEMORY[0x277D82BE0])();
    if (v54)
    {
      v43 = 0;
    }

    else
    {
      v40 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView);
      v42 = [v40 arrangedSubviews];
      sub_214A7802C();
      sub_214CCF7E4();
      MEMORY[0x277D82BD8](v40);
      v41 = sub_214CCF854();

      MEMORY[0x277D82BD8](v42);
      v43 = v41 != 3;
    }

    (MEMORY[0x277D82BD8])();
    if (v43)
    {
      v31 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel);
      [v31 removeFromSuperview];
      MEMORY[0x277D82BD8](v31);
      v33 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel);
      MEMORY[0x277D82BE0](v33);
      v32 = *(a1 + *(type metadata accessor for MessageListGroupedSenderContentConfiguration() + 48));
      [v33 setTextColor_];
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      v39 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView);
      MEMORY[0x277D82BE0](v39);
      sub_214A7802C();
      sub_214CD03C4();
      v36 = v2;
      v34 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_sender);
      MEMORY[0x277D82BE0](v34);
      *v36 = v34;
      v35 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel);
      MEMORY[0x277D82BE0](v35);
      v36[1] = v35;
      v37 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_chevron);
      MEMORY[0x277D82BE0](v37);
      v36[2] = v37;
      sub_214A63280();
      v38 = sub_214CCF7D4();

      [v39 mf:v38 addArrangedSubviews:?];
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
    }
  }

  (MEMORY[0x277D82BE0])();
  if (v54)
  {
    v27 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView);
    v29 = [v27 arrangedSubviews];
    sub_214A7802C();
    sub_214CCF7E4();
    MEMORY[0x277D82BD8](v27);
    v28 = sub_214CCF854();

    MEMORY[0x277D82BD8](v29);
    v30 = v28 != 3;
  }

  else
  {
    v30 = 0;
  }

  (MEMORY[0x277D82BD8])();
  if (v30)
  {
    v18 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel);
    [v18 removeFromSuperview];
    MEMORY[0x277D82BD8](v18);
    v20 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel);
    MEMORY[0x277D82BE0](v20);
    v19 = *(a1 + *(type metadata accessor for MessageListGroupedSenderContentConfiguration() + 44));
    [v20 setTextColor_];
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    v26 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView);
    MEMORY[0x277D82BE0](v26);
    sub_214A7802C();
    sub_214CD03C4();
    v23 = v3;
    v21 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView);
    MEMORY[0x277D82BE0](v21);
    *v23 = v21;
    v22 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView);
    MEMORY[0x277D82BE0](v22);
    v23[1] = v22;
    v24 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_dateLabel);
    MEMORY[0x277D82BE0](v24);
    v23[2] = v24;
    sub_214A63280();
    v25 = sub_214CCF7D4();

    [v26 mf:v25 addArrangedSubviews:?];
    MEMORY[0x277D82BD8](v25);
    *&result = MEMORY[0x277D82BD8](v26).n128_u64[0];
  }

  else
  {
    (MEMORY[0x277D82BE0])();
    if (v54)
    {
      v17 = 0;
    }

    else
    {
      v14 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView);
      v16 = [v14 arrangedSubviews];
      sub_214A7802C();
      sub_214CCF7E4();
      MEMORY[0x277D82BD8](v14);
      v15 = sub_214CCF854();

      MEMORY[0x277D82BD8](v16);
      v17 = v15 != 2;
    }

    *&result = (MEMORY[0x277D82BD8])().n128_u64[0];
    if (v17)
    {
      v13 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_stackView);
      MEMORY[0x277D82BE0](v13);
      sub_214A7802C();
      sub_214CD03C4();
      v10 = v5;
      v9 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_topStackView);
      MEMORY[0x277D82BE0](v9);
      *v10 = v9;
      v11 = *(v57 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView);
      MEMORY[0x277D82BE0](v11);
      v10[1] = v11;
      sub_214A63280();
      v12 = sub_214CCF7D4();

      [v13 mf:v12 addArrangedSubviews:?];
      MEMORY[0x277D82BD8](v12);
      *&result = MEMORY[0x277D82BD8](v13).n128_u64[0];
    }
  }

  return result;
}

uint64_t sub_214BE348C(void *a1)
{
  v35 = *(a1 + 8);
  v30 = MUISolariumFeatureEnabled();
  v34 = [v31 subviews];
  sub_214A7802C();
  sub_214CCF7E4();
  (MEMORY[0x277D82BD8])();
  v32 = &v31[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
  swift_beginAccess();
  v33 = *v32;
  MEMORY[0x277D82BE0](*v32);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36790);
  sub_214BE4C08();
  sub_214BE4F54();
  v36 = sub_214CCF784();
  MEMORY[0x277D82BD8](v33);
  sub_214A62278();
  MEMORY[0x277D82BD8](v34);
  if ((v35 & 1) == (v36 & 1))
  {
    if (v35)
    {
      v24 = &v31[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
      swift_beginAccess();
      v25 = *v24;
      MEMORY[0x277D82BE0](*v24);
      swift_endAccess();
      v26 = [v25 layer];
      [v26 setBorderColor_];
      MEMORY[0x277D82BD8](v26);
      v27 = &v31[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
      swift_beginAccess();
      v28 = *v27;
      MEMORY[0x277D82BE0](*v27);
      swift_endAccess();
      [v28 removeFromSuperview];
      MEMORY[0x277D82BD8](v28);
    }

    else
    {
      if (v30)
      {
        v23 = &v31[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarController];
        swift_beginAccess();
        if (*v23)
        {
          v22 = *v23;
          MEMORY[0x277D82BE0](*v23);
          swift_endAccess();
          v21 = *a1;
          [v22 updateWithResult_];
          MEMORY[0x277D82BD8](v21);
          MEMORY[0x277D82BD8](v22);
        }

        else
        {
          swift_endAccess();
        }
      }

      else
      {
        v18 = &v31[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage];
        swift_beginAccess();
        v19 = *v18;
        MEMORY[0x277D82BE0](*v18);
        swift_endAccess();
        v20 = *a1;
        v1 = MEMORY[0x277D82BE0](*a1).n128_u64[0];
        if (v20)
        {
          v16 = [v20 image];
          v1 = MEMORY[0x277D82BD8](v20).n128_u64[0];
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        [v19 setImage_];
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v19);
      }

      v14 = &v31[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
      swift_beginAccess();
      v15 = *v14;
      MEMORY[0x277D82BE0](*v14);
      swift_endAccess();
      [v31 addSubview_];
      MEMORY[0x277D82BD8](v15);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v11 = sub_214BDDADC();
  [v11 setConstant_];
  MEMORY[0x277D82BD8](v11);
  v12 = *a1;
  MEMORY[0x277D82BE0](*a1);
  if (v12)
  {
    v7 = [v31 traitCollection];
    v8 = [v7 userInterfaceStyle];
    v9 = [v12 needsBorderFor_];
    MEMORY[0x277D82BD8](v12);
    v10 = v9;
  }

  else
  {
    v10 = 2;
  }

  if (v10 == 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v10;
  }

  if ((v30 & 1) == 0)
  {
    v4 = objc_opt_self();
    v3 = &v31[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarImage];
    swift_beginAccess();
    v5 = *v3;
    MEMORY[0x277D82BE0](*v3);
    swift_endAccess();
    [v4 roundAvatarView:v5 withBorder:v6 & 1 size:sub_214BDE220()];
    MEMORY[0x277D82BD8](v5);
  }

  return v13 & 1;
}

double sub_214BE3C00()
{
  v9 = MEMORY[0x277D76620];
  swift_beginAccess();
  v10 = *v9;
  MEMORY[0x277D82BE0](*v9);
  swift_endAccess();
  if (v10)
  {
    v7 = v10;
  }

  else
  {
    LOBYTE(v1) = 2;
    v2 = 491;
    LODWORD(v3) = 0;
    sub_214CD01F4();
    __break(1u);
  }

  v5 = [v7 preferredContentSizeCategory];
  MEMORY[0x277D82BD8](v7);
  v6 = sub_214CCFD14();
  MEMORY[0x277D82BD8](v5);
  (MEMORY[0x277D82BE0])();
  if (v6)
  {
    v4 = 38.0;
  }

  else
  {
    v4 = 34.0;
  }

  [v8 setLayoutMargins_];
  *&result = (MEMORY[0x277D82BD8])().n128_u64[0];
  return result;
}

uint64_t sub_214BE3DE0(char a1, uint64_t a2)
{
  if (a1)
  {
    return sub_214BDDC68();
  }

  v30 = sub_214BDD390();
  if (a2 > 1)
  {
    v4 = &v29[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
    swift_beginAccess();
    v5 = *v4;
    MEMORY[0x277D82BE0](*v4);
    swift_endAccess();
    v8 = [v5 0x1FBBB4950];
    MEMORY[0x277D82BD8](v5);
    v6 = [v29 layoutMarginsGuide];
    v7 = [v6 0x1FBBB4950];
    MEMORY[0x277D82BD8](v6);
    [v8 constraintEqualToAnchor:v7 constant:2.0];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36780);
    sub_214CCF884();
  }

  else
  {
    sub_214A6F394();
    sub_214CD03C4();
    v26 = v2;
    v9 = &v29[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
    swift_beginAccess();
    v10 = *v9;
    MEMORY[0x277D82BE0](*v9);
    swift_endAccess();
    v13 = [v10 0x1FBBB4950];
    MEMORY[0x277D82BD8](v10);
    v11 = [v29 0x1FBB5C2A9];
    v12 = [v11 0x1FBBB4950];
    v14 = [v13 constraintGreaterThanOrEqualToAnchor_];
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    *v26 = v14;
    v15 = &v29[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
    swift_beginAccess();
    v16 = *v15;
    MEMORY[0x277D82BE0](*v15);
    swift_endAccess();
    v18 = [v16 0x1FBB23FE0];
    MEMORY[0x277D82BD8](v16);
    v17 = [v29 0x1FBB23FE0];
    v19 = [v18 constraintEqualToAnchor_];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    v26[1] = v19;
    v20 = &v29[OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_avatarView];
    swift_beginAccess();
    v21 = *v20;
    MEMORY[0x277D82BE0](*v20);
    swift_endAccess();
    v24 = [v21 0x1FBBB4950];
    MEMORY[0x277D82BD8](v21);
    v22 = [v29 0x1FBB5C2A9];
    v23 = [v22 bottomAnchor];
    v25 = [v24 constraintLessThanOrEqualToAnchor_];
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    v26[2] = v25;
    sub_214A63280();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36780);
    sub_214BE4B80();
    sub_214CCF874();
  }

  sub_214A62278();
  return v30;
}

uint64_t sub_214BE440C()
{
  sub_214CD03B4();
  v0 = sub_214CCF614();
  MEMORY[0x21605E650](v0);

  v4 = *MEMORY[0x277D25890];
  MEMORY[0x277D82BE0](*MEMORY[0x277D25890]);
  sub_214CCF564();
  sub_214CD0394();
  sub_214A61B48();
  MEMORY[0x277D82BD8](v4);
  v1 = sub_214CCF614();
  MEMORY[0x21605E650](v1);

  sub_214A63208();
  sub_214CD0014();
  sub_214CD0394();
  sub_214A61B48();
  v2 = sub_214CCF614();
  MEMORY[0x21605E650](v2);

  sub_214A61B48();
  return sub_214CCF5F4();
}

void *sub_214BE45EC(uint64_t a1)
{
  v17 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v19 = a1;
  v18 = v1;
  v10 = *(a1 + *(type metadata accessor for MessageListGroupedSenderContentConfiguration() + 40));
  v17 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView);
  v12 = [v11 arrangedSubviews];
  sub_214A7802C();
  sub_214CCF7E4();
  MEMORY[0x277D82BD8](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA36790);
  sub_214BE4FD4();
  sub_214CCFAC4();
  MEMORY[0x277D82BD8](v12);
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA367E0);
    sub_214CD01B4();
    if (!v15)
    {
      break;
    }

    (MEMORY[0x277D82BE0])();
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      (MEMORY[0x277D82BD8])();
      v7 = 0;
    }

    if (!v7)
    {
      (MEMORY[0x277D82BD8])();
      result = v16;
      sub_214A62278();
      return result;
    }

    [v7 removeFromSuperview];
    sub_214BE505C(v7);
    MEMORY[0x277D82BD8](v7);
    (MEMORY[0x277D82BD8])();
  }

  sub_214A62278();
  if (v10 < 0)
  {
    sub_214CD01F4();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA38620);
  sub_214A8C7F4();
  sub_214CCFAC4();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA367B0);
    result = sub_214CD01B4();
    if (v14)
    {
      break;
    }

    v13 = sub_214BE2704();
    MEMORY[0x277D82BE0](v13);
    v3 = *(v9 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView);
    v4 = [v3 arrangedSubviews];
    sub_214CCF7E4();
    MEMORY[0x277D82BD8](v3);
    sub_214CCF854();

    sub_214BE440C();
    MEMORY[0x277D82BD8](v4);
    v5 = sub_214CCF544();

    [v13 setAccessibilityIdentifier_];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v13);
    v6 = *(v9 + OBJC_IVAR____TtC6MailUI35MessageListGroupedSenderContentView_subjectStackView);
    [v6 addArrangedSubview_];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v13);
  }

  return result;
}

unint64_t sub_214BE4B80()
{
  v2 = qword_280C7CE28;
  if (!qword_280C7CE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA36780);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CE28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE4C08()
{
  v2 = qword_280C7CDD8;
  if (!qword_280C7CDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA36790);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE4C90()
{
  v2 = qword_280C7CD30;
  if (!qword_280C7CD30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7CD30);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BE4CF4()
{
  v2 = qword_27CA36F60;
  if (!qword_27CA36F60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_27CA36F60);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BE4D58()
{
  v2 = qword_280C7C500;
  if (!qword_280C7C500)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280C7C500);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_214BE4DBC()
{
  v2 = qword_280C7CDD0;
  if (!qword_280C7CDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA367B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7CDD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE4E44()
{
  v2 = qword_27CA367C8;
  if (!qword_27CA367C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA367B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA367C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE4ECC()
{
  v2 = qword_27CA367D0;
  if (!qword_27CA367D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA367B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA367D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE4F54()
{
  v2 = qword_280C7C5C8;
  if (!qword_280C7C5C8)
  {
    sub_214A7802C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7C5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE4FD4()
{
  v2 = qword_27CA367D8;
  if (!qword_27CA367D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA36790);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA367D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BE505C(void *a1)
{
  sub_214CCF614();
  v2 = sub_214CCF544();

  [a1 setText_];
  MEMORY[0x277D82BD8](v2);
  [a1 setAccessibilityIdentifier_];
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BE0](a1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA367B8);
  sub_214CCF884();
  return swift_endAccess();
}

id MessageListGroupedSenderContentView.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_214BE5530(uint64_t ***a1))(void **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MessageListGroupedSenderContentView.configuration.modify(v2);
  return sub_214B2B6DC;
}

id sub_214BE55A0()
{
  sub_214BE4D58();
  v2 = sub_214CCF7D4();
  v3 = [v1 initWithContacts_];
  MEMORY[0x277D82BD8](v2);

  return v3;
}

unint64_t sub_214BE568C()
{
  v7 = sub_214BE5868();
  if (v0 <= 0x3F)
  {
    v7 = sub_214B5CC3C();
    if (v1 <= 0x3F)
    {
      v7 = sub_214B5CCD0();
      if (v2 <= 0x3F)
      {
        v7 = sub_214A68A44();
        if (v3 <= 0x3F)
        {
          v7 = sub_214A65CE0();
          if (v4 <= 0x3F)
          {
            v7 = sub_214B943D0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v7;
}

uint64_t sub_214BE5868()
{
  v4 = qword_280C7C798;
  if (!qword_280C7C798)
  {
    type metadata accessor for MUIAvatarImageGeneratorResult();
    v3 = sub_214CCFF34();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_280C7C798);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_214BE5920()
{
  updated = type metadata accessor for MessageListGroupedSenderContentConfiguration();
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

unint64_t sub_214BE5AFC()
{
  v2 = qword_27CA36910;
  if (!qword_27CA36910)
  {
    type metadata accessor for MessageListGroupedSenderContentConfiguration();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36910);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE5B7C()
{
  v2 = qword_27CA36920;
  if (!qword_27CA36920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA36918);
    sub_214BE5C14();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36920);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE5C14()
{
  v2 = qword_27CA36928;
  if (!qword_27CA36928)
  {
    type metadata accessor for MUIAvatarImageGeneratorResult();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36928);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE5C94()
{
  v2 = qword_27CA36930;
  if (!qword_27CA36930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA35560);
    sub_214BE5D2C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36930);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_214BE5D2C()
{
  v2 = qword_27CA36938;
  if (!qword_27CA36938)
  {
    sub_214CCD254();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27CA36938);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_214BE5DAC(uint64_t a1)
{
  v4 = sub_214CCD254();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!(v6)(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA36948) + 48);
  if (!v6())
  {
    (*(v5 + 8))(v2, v4);
  }

  return a1;
}

unint64_t sub_214BE5ED8()
{
  v2 = qword_280C7EAF8;
  if (!qword_280C7EAF8)
  {
    sub_214CCD254();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280C7EAF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MessageListHelpMailLearnCollectionViewCell.helpMailLearnButton.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_helpMailLearnButton);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t MessageListHelpMailLearnCollectionViewCell.cancelButton.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_cancelButton);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

char *sub_214BE6118(double a1, double a2, double a3, double a4)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  *&v10 = a3;
  *(&v10 + 1) = a4;
  ObjectType = swift_getObjectType();
  v13 = v9;
  v14 = v10;
  v15 = v4;
  v6 = OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_helpMailLearnButton;
  sub_214BD2A6C();
  *&v4[v6] = sub_214A61730();
  v7 = OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_cancelButton;
  *&v15[v7] = sub_214A61730();
  v12.receiver = v15;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, sel_initWithFrame_, v9, v10);
  MEMORY[0x277D82BE0](v11);
  v15 = v11;
  sub_214BE626C();
  MEMORY[0x277D82BD8](v15);
  return v11;
}

double sub_214BE626C()
{
  v94 = "Fatal error";
  v95 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v96 = "MailUI/MessageListHelpMailLearnCollectionViewCell.swift";
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA365A8);
  v97 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v1);
  v98 = v39 - v97;
  v122 = 0;
  v99 = sub_214CCFEA4();
  v100 = *(v99 - 8);
  v101 = v99 - 8;
  v102 = (v100[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122);
  v103 = v39 - v102;
  v143 = v39 - v102;
  v104 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v121 = v39 - v104;
  v142 = v39 - v104;
  v141 = v0;
  sub_214A73F68();
  v119 = sub_214A61730();
  v140 = v119;
  v105 = 1;
  v108 = sub_214CCF614();
  v113 = v4;
  v106 = sub_214CCF614();
  v112 = v5;
  v111 = [objc_opt_self() mui_MailUIBundle];
  v107 = sub_214CCF614();
  v110 = v6;
  sub_214B1C228();
  v109 = v7;
  v114 = sub_214CCCF54();
  v115 = v8;

  MEMORY[0x277D82BD8](v111);

  v116 = sub_214CCF544();

  [v119 setText_];
  MEMORY[0x277D82BD8](v116);
  v123 = 0x277D74000uLL;
  v117 = objc_opt_self();
  v118 = *MEMORY[0x277D76938];
  MEMORY[0x277D82BE0](v118);
  v9 = *MEMORY[0x277D74420];
  v125 = 0x1FBACF000uLL;
  v120 = [v117 0x1FBACF65ALL];
  *&v10 = MEMORY[0x277D82BD8](v118).n128_u64[0];
  [v119 setFont_];
  MEMORY[0x277D82BD8](v120);
  sub_214CCFE74();
  v124 = sub_214A74030();
  v126 = objc_opt_self();
  v127 = *MEMORY[0x277D76968];
  MEMORY[0x277D82BE0](v127);
  v128 = [v126 (v125 + 1626)];
  MEMORY[0x277D82BD8](v127);
  if (v128)
  {
    v92 = v128;
  }

  else
  {
    sub_214CD01F4();
    __break(1u);
  }

  sub_214A74094(v92);
  sub_214CCFD94();
  v63 = 0;
  sub_214A731BC();
  v39[0] = @"xmark";
  MEMORY[0x277D82BE0](@"xmark");
  sub_214CCF564();
  v39[1] = sub_214B4D9C8();
  MEMORY[0x277D82BD8](v39[0]);
  sub_214CCFE64();
  v74 = 0x277D75000uLL;
  v11 = [objc_opt_self() grayColor];
  sub_214CCFE24();
  v45 = MEMORY[0x277D75060];
  sub_214CCFDF4();
  v41 = &qword_27CA36000;
  v40 = *&v93[OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_cancelButton];
  v12 = MEMORY[0x277D82BE0](v40);
  v57 = v100[2];
  v56 = v100 + 2;
  v57(v98, v121, v99, v12);
  v59 = v100[7];
  v58 = v100 + 7;
  v73 = 0;
  v85 = 1;
  v59(v98);
  sub_214CCFED4();
  MEMORY[0x277D82BD8](v40);
  v60 = sub_214A73FCC();
  v70 = sub_214A7802C();
  v65 = 2;
  v44 = sub_214CD03C4();
  v42 = v13;
  MEMORY[0x277D82BE0](v119);
  v14 = v41;
  v15 = v93;
  *v42 = v119;
  v43 = *&v15[v14[300]];
  MEMORY[0x277D82BE0](v43);
  v42[1] = v43;
  sub_214A63280();
  v89 = sub_214BE74DC();
  v139 = v89;
  v71 = 0x1FB0ED000uLL;
  [v89 0x1FB0EDBF8];
  [v89 setAlignment_];
  sub_214CCFE74();
  sub_214CCFDF4();
  v48 = sub_214CCF614();
  v53 = v16;
  v46 = sub_214CCF614();
  v52 = v17;
  v51 = [objc_opt_self() mui_MailUIBundle];
  v47 = sub_214CCF614();
  v50 = v18;
  sub_214B1C228();
  v49 = v19;
  v54 = sub_214CCCF54();
  v55 = v20;

  MEMORY[0x277D82BD8](v51);

  sub_214CCFE84();
  v66 = &qword_27CA36000;
  v61 = *&v93[OBJC_IVAR____TtC6MailUI42MessageListHelpMailLearnCollectionViewCell_helpMailLearnButton];
  v21 = MEMORY[0x277D82BE0](v61);
  v57(v98, v103, v99, v21);
  (v59)(v98, v73, v85, v99);
  sub_214CCFED4();
  MEMORY[0x277D82BD8](v61);
  v62 = *&v93[v66[299]];
  *&v22 = MEMORY[0x277D82BE0](v62).n128_u64[0];
  [v62 setContentHorizontalAlignment_];
  MEMORY[0x277D82BD8](v62);
  v64 = *&v93[v66[299]];
  v23 = MEMORY[0x277D82BE0](v64);
  v23.n128_u32[0] = 1148846080;
  [v64 setContentHuggingPriority:v63 forAxis:v23.n128_f64[0]];
  MEMORY[0x277D82BD8](v64);
  v69 = sub_214CD03C4();
  v67 = v24;
  MEMORY[0x277D82BE0](v89);
  v25 = v66;
  v26 = v93;
  *v67 = v89;
  v68 = *&v26[v25[299]];
  MEMORY[0x277D82BE0](v68);
  v67[1] = v68;
  sub_214A63280();
  v88 = sub_214BE74DC();
  v138 = v88;
  [v88 (v71 + 3064)];
  [v88 setSpacing_];
  *&v27 = MEMORY[0x277D82BE0](v88).n128_u64[0];
  v72 = 0x1FAECA000uLL;
  [v88 0x1FAECA5BALL];
  MEMORY[0x277D82BD8](v88);
  v87 = sub_214A61730();
  v137 = v87;
  [v87 (v72 + 1466)];
  v75 = [objc_opt_self() secondarySystemBackgroundColor];
  [v87 setBackgroundColor_];
  *&v28 = MEMORY[0x277D82BD8](v75).n128_u64[0];
  v77 = 0x1FADAE000uLL;
  v76 = [v87 0x1FADAE878];
  [v76 setCornerRadius_];
  MEMORY[0x277D82BD8](v76);
  *&v29 = MEMORY[0x277D82BE0](v88).n128_u64[0];
  v78 = [v88 (v77 + 2168)];
  *&v30 = MEMORY[0x277D82BD8](v88).n128_u64[0];
  [v78 setMasksToBounds_];
  *&v31 = MEMORY[0x277D82BD8](v78).n128_u64[0];
  v79 = 0x1FAB99000uLL;
  [v87 0x1FAB997F8];
  v81 = 0x1FAAAA000uLL;
  v133 = 12.0;
  v82 = 16.0;
  v134 = 16.0;
  v135 = 12.0;
  v136 = 16.0;
  [v87 0x1FAAAAAF8];
  v84 = 0x1FC5D2000uLL;
  [v88 0x1FC5D2B59];
  *&v32 = MEMORY[0x277D82BE0](v93).n128_u64[0];
  v83 = 0x1FB774000uLL;
  v80 = [v93 0x1FB774AF8];
  *&v33 = MEMORY[0x277D82BD8](v93).n128_u64[0];
  [v80 (v79 + 2040)];
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BE0](v93);
  v129 = 6.0;
  v130 = v82;
  v131 = 14.0;
  v132 = v82;
  [v93 (v81 + 2808)];
  MEMORY[0x277D82BD8](v93);
  *&v34 = MEMORY[0x277D82BE0](v93).n128_u64[0];
  v86 = [v93 (v83 + 2808)];
  *&v35 = MEMORY[0x277D82BD8](v93).n128_u64[0];
  [v87 (v84 + 2905)];
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](v87);
  v36 = MEMORY[0x277D82BD8](v88);
  v91 = v100[1];
  v90 = v100 + 1;
  v91(v103, v99, v36);
  v37 = MEMORY[0x277D82BD8](v89);
  v91(v121, v99, v37);
  *&result = MEMORY[0x277D82BD8](v119).n128_u64[0];
  return result;
}