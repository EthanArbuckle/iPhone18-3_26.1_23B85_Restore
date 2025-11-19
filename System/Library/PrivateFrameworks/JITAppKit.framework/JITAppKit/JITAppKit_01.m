unint64_t sub_2555F25B0()
{
  v2 = qword_27F7BB4E0[0];
  if (!qword_27F7BB4E0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BB4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F2644()
{
  v2 = qword_27F7BB570;
  if (!qword_27F7BB570)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BB570);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F26D8()
{
  v2 = qword_27F7BB578;
  if (!qword_27F7BB578)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BB578);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F276C()
{
  v2 = qword_27F7BB600[0];
  if (!qword_27F7BB600[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BB600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F2800()
{
  v2 = qword_27F7BA990;
  if (!qword_27F7BA990)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA990);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F2898()
{
  v2 = qword_27F7BA998;
  if (!qword_27F7BA998)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA998);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F2918()
{
  v2 = qword_27F7BA9A0;
  if (!qword_27F7BA9A0)
  {
    type metadata accessor for WritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA9A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F2998()
{
  v2 = qword_27F7BA9A8;
  if (!qword_27F7BA9A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA9A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555F2A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_255600DFC();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_255600DFC();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_255600DFC();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_255600DFC();
                __break(1u);
              }

              sub_255600DFC();
              __break(1u);
            }

            sub_255600DFC();
            __break(1u);
          }

          sub_255600DFC();
          __break(1u);
        }

        sub_255600DFC();
        __break(1u);
      }

      sub_255600DFC();
      __break(1u);
    }

    sub_255600DFC();
    __break(1u);
  }

  result = sub_255600DFC();
  __break(1u);
  return result;
}

uint64_t sub_2555F2F6C(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_255600CAC();
      v3 = sub_255600BEC();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v1 = sub_255600CAC();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

uint64_t sub_2555F305C(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_2556007BC();
      v3 = sub_255600BEC();

      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v1 = sub_2556007BC();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

uint64_t sub_2555F314C(uint64_t result)
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

    type metadata accessor for Base64EncodingOptions();
    v1 = sub_255600BEC();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t type metadata accessor for Base64EncodingOptions()
{
  v4 = qword_27F7BA9E8;
  if (!qword_27F7BA9E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F7BA9E8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_2555F3290()
{
  v2 = qword_27F7BA9B0;
  if (!qword_27F7BA9B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA9B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555F3308()
{
  v1 = *(v0 + 24);

  MEMORY[0x259C3AAA0](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555F33C4()
{
  v1 = *(v0 + 24);

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555F3488()
{
  v1 = *(v0 + 24);

  MEMORY[0x259C3AAA0](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555F3544()
{
  v1 = *(v0 + 24);

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_2555F3608()
{
  v2 = qword_27F7BA9B8;
  if (!qword_27F7BA9B8)
  {
    sub_2556007BC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA9B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F3688()
{
  v2 = qword_27F7BA9C8;
  if (!qword_27F7BA9C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BA9C0, &unk_255604680);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA9C8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555F3710()
{
  v1 = *(v0 + 24);

  MEMORY[0x259C3AAA0](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_113(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555F37CC()
{
  v1 = *(v0 + 24);

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_119(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_2555F3890()
{
  v2 = qword_27F7BA9D0;
  if (!qword_27F7BA9D0)
  {
    sub_255600CAC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA9D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F3910()
{
  v2 = qword_27F7BA9E0;
  if (!qword_27F7BA9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BA9D8, qword_255604880);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA9E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555F3998()
{
  v34 = 0;
  v18 = (*(*(sub_255600CBC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0, v1, v2);
  v33 = &v17 - v18;
  v19 = (*(*(sub_255600CAC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v3, v4, v5);
  v32 = &v17 - v19;
  v20 = (*(*(sub_2556007DC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v6, v7, v8);
  v31 = &v17 - v20;
  v24 = sub_2555E67B0();
  v22 = 17;
  v9 = sub_255600E7C();
  v26 = &v35;
  v35 = v9;
  v36 = v10;
  v23 = 1;
  v11 = sub_255600B3C();
  v21 = v12;
  MEMORY[0x259C3A100](v11);

  type metadata accessor for MCLHPKEEncryption();
  sub_2555E683C();
  v13 = sub_255600B3C();
  v25 = v14;
  MEMORY[0x259C3A100](v13);

  v28 = v35;
  v27 = v36;

  sub_2555E5B38(v26);
  v29 = sub_255600B2C();
  v30 = v15;
  sub_2555E6874();
  sub_2555E688C();
  sub_2555E692C(v33);
  return sub_255600CEC();
}

uint64_t sub_2555F3BF8()
{
  v2 = *(v0 + OBJC_IVAR___MCLHPKEEncryption_queue);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_2555F3C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a1;
  v34 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v41 = 0;
  v42 = 0;
  v39 = sub_255600AEC();
  v35 = *(v39 - 8);
  v36 = v39 - 8;
  v32 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v21 - v32;
  v50 = MEMORY[0x28223BE20](v33, v34, v26, v27);
  v51 = v9;
  v48 = v10;
  v49 = v11;
  v46 = v12;
  v47 = v13;
  v44 = v14;
  v45 = v15;
  v43 = v8;
  sub_255600ADC();
  sub_2555E7D14();
  v38 = sub_255600ABC();
  v40 = v16;
  (*(v35 + 8))(v37, v39);
  if ((v40 & 0xF000000000000000) == 0xF000000000000000)
  {

    sub_2555F3E9C();
    v18 = swift_allocError();
    v19 = v30;
    v21 = v18;
    *v20 = 3;
    v19();
    MEMORY[0x259C3AAA0](v21);
  }

  else
  {
    v24 = v38;
    v25 = v40;
    v23 = v40;
    v22 = v38;
    v41 = v38;
    v42 = v40;
    sub_2555F45D8(v38, v40, v26, v27, v28, v29, v30, v31);
    return sub_2555E3C2C(v22, v23);
  }
}

unint64_t sub_2555F3E9C()
{
  v2 = qword_27F7BA9F8;
  if (!qword_27F7BA9F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BA9F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555F40F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v32 = *MEMORY[0x277D85DE8];
  v28[2] = 0;
  v29 = 0;
  v30 = 0;
  v28[9] = a1;
  v28[7] = a2;
  v28[8] = a3;
  v28[5] = a4;
  v28[6] = a5;
  v28[3] = a6;
  v28[4] = a7;
  v31 = 0;
  v24 = objc_opt_self();

  v26 = sub_255600A2C();

  type metadata accessor for WritingOptions();
  sub_255600E8C();
  sub_2555E7084();
  sub_255600D1C();
  v28[0] = 0;
  v27 = [v24 dataWithJSONObject:v26 options:v28[1] error:v28];
  v25 = v28[0];
  MEMORY[0x277D82BE0](v28[0]);
  v7 = v31;
  v31 = v25;
  MEMORY[0x277D82BD8](v7);
  swift_unknownObjectRelease();
  if (v27)
  {
    v14 = sub_2556006EC();
    v15 = v8;
    MEMORY[0x277D82BD8](v27);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v11 = v31;
    v12 = sub_2556006AC();
    MEMORY[0x277D82BD8](v11);
    swift_willThrow();
    MEMORY[0x259C3AAA0](v12);
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  if ((v17 & 0xF000000000000000) == 0xF000000000000000)
  {

    sub_2555F3E9C();
    v13 = swift_allocError();
    *v10 = 1;
    a6();
    MEMORY[0x259C3AAA0](v13);
  }

  else
  {
    v29 = v16;
    v30 = v17;
    sub_2555F45D8(v16, v17, a2, a3, a4, a5, a6, a7);
    result = sub_2555E3C2C(v16, v17);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2555F45D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a1;
  v49 = a2;
  v46 = a3;
  v47 = a4;
  v40 = a5;
  v41 = a6;
  v43 = a7;
  v44 = a8;
  v50 = sub_2555F4EB8;
  v51 = sub_2555F5210;
  v52 = sub_2555F6060;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v53 = 0;
  v57 = sub_2556007BC();
  v54 = *(v57 - 8);
  v55 = v57 - 8;
  v38 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v9, v10, v11);
  v56 = &v37 - v38;
  v61 = sub_2556007DC();
  v58 = *(v61 - 8);
  v59 = v61 - 8;
  v39 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v41, v49, v46, v47);
  v60 = &v37 - v39;
  v84 = v13;
  v85 = v14;
  v82 = v15;
  v83 = v16;
  v80 = v17;
  v81 = v12;
  v78 = v18;
  v79 = v19;
  v77 = v8;

  v42 = 32;
  v45 = 7;
  v20 = swift_allocObject();
  v21 = v41;
  v22 = v50;
  v65 = v20;
  *(v20 + 16) = v40;
  *(v20 + 24) = v21;
  v75 = v22;
  v76 = v20;

  v23 = swift_allocObject();
  v24 = v44;
  v25 = v51;
  v64 = v23;
  *(v23 + 16) = v43;
  *(v23 + 24) = v24;
  v73 = v25;
  v74 = v23;
  v63 = *(v8 + OBJC_IVAR___MCLHPKEEncryption_queue);
  MEMORY[0x277D82BE0](v63);

  sub_2555E3B7C(v48, v49);

  v26 = swift_allocObject();
  v27 = v47;
  v28 = v48;
  v29 = v49;
  v30 = v50;
  v31 = v51;
  v32 = v52;
  v33 = v65;
  v34 = v26;
  v35 = v64;
  v34[2] = v46;
  v34[3] = v27;
  v34[4] = v28;
  v34[5] = v29;
  v34[6] = v30;
  v34[7] = v33;
  v34[8] = v31;
  v34[9] = v35;
  v71 = v32;
  v72 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v67 = 1107296256;
  v68 = 0;
  v69 = sub_2555E8FD4;
  v70 = &block_descriptor_0;
  v62 = _Block_copy(&aBlock);
  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v53, v60, v56, v62);
  (*(v54 + 8))(v56, v57);
  (*(v58 + 8))(v60, v61);
  _Block_release(v62);

  MEMORY[0x277D82BD8](v63);
}

uint64_t sub_2555F4BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2555F78D8;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x277D82BE0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_41;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555F4E78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2555F4EC4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_2555F4F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2555F7814;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x259C3AAB0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_35;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555F51D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2555F521C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_2555F528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v156 = a1;
  v155 = a2;
  v149 = a3;
  v150 = a4;
  v151 = a5;
  v152 = a6;
  v153 = a7;
  v154 = a8;
  v198 = 0;
  v197 = 0;
  v196 = 0;
  v194 = 0;
  v195 = 0;
  v192 = 0;
  v193 = 0;
  v190 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v187 = 0;
  v186 = 0;
  v184 = 0;
  v185 = 0;
  v177 = 0;
  v178 = 0;
  v171 = 0;
  v172 = 0;
  v167 = 0;
  v168 = 0;
  v141 = 0;
  v112 = sub_25560095C();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x28223BE20](0, v8, v9, v10);
  v116 = &v67 - v115;
  v117 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, &v67 - v115, v13, v14);
  v118 = &v67 - v117;
  v198 = &v67 - v117;
  v119 = sub_255600AEC();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v122 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v141, v15, v16, v17);
  v123 = &v67 - v122;
  v124 = sub_25560091C();
  v125 = *(v124 - 8);
  v126 = v124 - 8;
  v127 = (*(v125 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v141, v18, v19, v20);
  v128 = &v67 - v127;
  v129 = sub_2556008FC();
  v130 = *(v129 - 8);
  v131 = v129 - 8;
  v132 = (*(v130 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v141, v21, v22, v23);
  v133 = &v67 - v132;
  v134 = sub_2556008EC();
  v135 = *(v134 - 8);
  v136 = v134 - 8;
  v137 = (*(v135 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x28223BE20](v141, v24, v25, v26);
  v138 = &v67 - v137;
  v139 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27, &v67 - v137, v29, v30);
  v140 = &v67 - v139;
  v197 = &v67 - v139;
  v142 = sub_25560090C();
  v143 = *(v142 - 8);
  v144 = v142 - 8;
  v145 = (*(v143 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = MEMORY[0x28223BE20](v141, v31, v32, v33);
  v146 = &v67 - v145;
  v147 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, &v67 - v145, v36, v37);
  v148 = &v67 - v147;
  v157 = sub_2556009AC();
  v158 = *(v157 - 8);
  v159 = v157 - 8;
  v160 = (*(v158 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = MEMORY[0x28223BE20](v156, v155, v149, v150);
  v161 = &v67 - v160;
  v162 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v43 = MEMORY[0x28223BE20](v38, v40, v41, v42);
  v163 = &v67 - v162;
  v196 = &v67 - v162;
  v194 = v43;
  v195 = v44;
  v192 = v45;
  v193 = v46;
  v190 = v47;
  v191 = v48;
  v188 = v49;
  v189 = v50;
  v51 = static MCLECCertValidation.evaluatePublicCertTrust(base64EncodedCert:)();
  v164 = 0;
  v165 = v51;
  v166 = 0;
  v107 = v51;
  v186 = v51;
  v52 = static MCLECCertValidation.getExternalCertRepresentation(from:)(v51);
  v108 = 0;
  v109 = v52;
  v110 = v53;
  v111 = 0;
  v101 = v53;
  v100 = v52;
  v184 = v52;
  v185 = v53;
  sub_2555E3B7C(v52, v53);
  v104 = v183;
  v183[0] = v100;
  v183[1] = v101;
  v54 = *MEMORY[0x277CC5450];
  v102 = *(v143 + 104);
  v103 = v143 + 104;
  v102(v148, v54, v142);
  sub_2556009BC();
  v105 = 0;
  v106 = 0;
  v102(v146, *MEMORY[0x277CC5450], v142);
  (*(v130 + 104))(v133, *MEMORY[0x277CC5438], v129);
  (*(v125 + 104))(v128, *MEMORY[0x277CC5468], v124);
  sub_2556008DC();
  v94 = sub_255600B3C();
  v97 = v55;
  sub_255600ADC();
  sub_2555E7D14();
  v98 = sub_255600ABC();
  v99 = v56;
  v95 = *(v120 + 8);
  v96 = v120 + 8;
  v95(v123, v119);

  v179 = v98;
  v180 = v99;
  if ((v99 & 0xF000000000000000) == 0xF000000000000000)
  {
    v181 = sub_25560074C();
    v182 = v57;
    if ((v180 & 0xF000000000000000) != 0xF000000000000000)
    {
      sub_2555F777C(&v179);
    }
  }

  else
  {
    v181 = v179;
    v182 = v180;
  }

  v58 = v105;
  v90 = v181;
  v91 = v182;
  v177 = v181;
  v178 = v182;
  (*(v158 + 16))(v161, v163, v157);
  (*(v135 + 16))(v138, v140, v134);
  sub_2555E3B7C(v90, v91);
  sub_25560092C();
  v92 = v58;
  v93 = v58;
  if (v58)
  {
    v68 = v93;
    sub_2555E3C2C(v90, v91);
    (*(v135 + 8))(v140, v134);
    (*(v158 + 8))(v163, v157);
    sub_2555E3C2C(v100, v101);
    MEMORY[0x277D82BD8](v107);
    v69 = v68;
  }

  else
  {
    v86 = sub_255600B3C();
    v87 = v59;
    sub_255600ADC();
    sub_2555E7D14();
    v88 = sub_255600ABC();
    v89 = v60;
    v95(v123, v119);

    v173 = v88;
    v174 = v89;
    if ((v89 & 0xF000000000000000) == 0xF000000000000000)
    {
      v175 = sub_25560074C();
      v176 = v61;
      if ((v174 & 0xF000000000000000) != 0xF000000000000000)
      {
        sub_2555F777C(&v173);
      }
    }

    else
    {
      v175 = v173;
      v176 = v174;
    }

    v62 = v92;
    v79 = v175;
    v80 = v176;
    v171 = v175;
    v172 = v176;
    v82 = v170;
    v170[0] = v149;
    v170[1] = v150;
    v81 = v169;
    v169[0] = v175;
    v169[1] = v176;
    sub_2555ECA58();
    v83 = sub_25560094C();
    v84 = v63;
    v85 = v62;
    if (!v62)
    {
      v64 = v116;
      v76 = v84;
      v75 = v83;
      v167 = v83;
      v168 = v84;

      v71 = type metadata accessor for MCLHPKEEncryption.HPKEEncryptedDataContainer();
      sub_2555E3B7C(v75, v76);
      (*(v113 + 16))(v64, v118, v112);
      v72 = sub_25560093C();
      v73 = v65;
      v78 = *(v113 + 8);
      v77 = v113 + 8;
      v78(v116, v112);
      v74 = sub_2555F6084(v75, v76, v72, v73);
      v151();
      MEMORY[0x277D82BD8](v74);

      sub_2555E3C2C(v75, v76);
      sub_2555E3C2C(v79, v80);
      v78(v118, v112);
      sub_2555E3C2C(v90, v91);
      (*(v135 + 8))(v140, v134);
      (*(v158 + 8))(v163, v157);
      sub_2555E3C2C(v100, v101);
      return MEMORY[0x277D82BD8](v107);
    }

    v67 = v85;
    sub_2555E3C2C(v79, v80);
    (*(v113 + 8))(v118, v112);
    sub_2555E3C2C(v90, v91);
    (*(v135 + 8))(v140, v134);
    (*(v158 + 8))(v163, v157);
    sub_2555E3C2C(v100, v101);
    MEMORY[0x277D82BD8](v107);
    v69 = v67;
  }

  v70 = v69;
  MEMORY[0x259C3AAB0]();
  v187 = v70;

  MEMORY[0x259C3AAB0](v70);
  v153(v70);
  MEMORY[0x259C3AAA0](v70);

  MEMORY[0x259C3AAA0](v70);
  return MEMORY[0x259C3AAA0](v70);
}

uint64_t sub_2555F6004()
{
  v1 = v0[3];

  sub_2555E3C2C(v0[4], v0[5]);
  v2 = v0[7];

  v3 = v0[9];

  return swift_deallocObject();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555F61C8()
{
  v2 = *(v0 + OBJC_IVAR___MCLHPKEEncryptedDataContainer_encapsulatedKey);
  v3 = *(v0 + OBJC_IVAR___MCLHPKEEncryptedDataContainer_encapsulatedKey + 8);

  return v2;
}

uint64_t sub_2555F62A0()
{
  v2 = *(v0 + OBJC_IVAR___MCLHPKEEncryptedDataContainer_cipher);
  v3 = *(v0 + OBJC_IVAR___MCLHPKEEncryptedDataContainer_cipher + 8);

  return v2;
}

char *sub_2555F62EC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v21 = 0;
  v19 = a1;
  v20 = a2;
  v17 = a3;
  v18 = a4;
  sub_2555ED9A0();
  v4 = sub_2556006DC();
  v5 = OBJC_IVAR___MCLHPKEEncryptedDataContainer_cipher;
  *OBJC_IVAR___MCLHPKEEncryptedDataContainer_cipher = v4;
  *(v5 + 8) = v6;
  sub_2555ED9A0();
  v7 = sub_2556006DC();
  v8 = &v21[OBJC_IVAR___MCLHPKEEncryptedDataContainer_encapsulatedKey];
  *v8 = v7;
  v8[1] = v9;
  v16.receiver = v21;
  v16.super_class = type metadata accessor for MCLHPKEEncryption.HPKEEncryptedDataContainer();
  v15 = objc_msgSendSuper2(&v16, sel_init);
  MEMORY[0x277D82BE0](v15);
  v21 = v15;
  sub_2555E3C2C(a3, a4);
  sub_2555E3C2C(a1, a2);
  MEMORY[0x277D82BD8](v21);
  return v15;
}

id sub_2555F64F0()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLHPKEEncryption.HPKEEncryptedDataContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_2555F6588(char a1, char a2)
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

id sub_2555F6938()
{
  v44 = 0;
  v36 = 0;
  v20 = (*(*(sub_255600CBC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v35 = &v20 - v20;
  v21 = (*(*(sub_255600CAC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v4, v5, v6);
  v34 = &v20 - v21;
  v22 = (*(*(sub_2556007DC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v7, v8, v9);
  v33 = &v20 - v22;
  v44 = v0;
  v38 = v0;
  v37 = OBJC_IVAR___MCLHPKEEncryption_queue;
  v26 = sub_2555E67B0();
  v24 = 17;
  v10 = sub_255600E7C();
  v28 = &v42;
  v42 = v10;
  v43 = v11;
  v25 = 1;
  v12 = sub_255600B3C();
  v23 = v13;
  MEMORY[0x259C3A100](v12);

  v39 = type metadata accessor for MCLHPKEEncryption();
  sub_2555E683C();
  v14 = sub_255600B3C();
  v27 = v15;
  MEMORY[0x259C3A100](v14);

  v30 = v42;
  v29 = v43;

  sub_2555E5B38(v28);
  v31 = sub_255600B2C();
  v32 = v16;
  sub_2555E6874();
  sub_2555E688C();
  sub_2555E692C(v35);
  v17 = sub_255600CEC();
  v18 = v39;
  *&v38[v37] = v17;
  v41.receiver = v44;
  v41.super_class = v18;
  v40 = objc_msgSendSuper2(&v41, sel_init);
  MEMORY[0x277D82BE0](v40);
  v44 = v40;
  MEMORY[0x277D82BD8](v40);
  return v40;
}

id sub_2555F6C0C()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLHPKEEncryption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static MCLECCertValidation.evaluateOIDsForCert(base64EncodedCert:commonName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = 0;
  v25 = a3;
  v26 = a4;

  if (!a4)
  {
    v10 = 1;
    goto LABEL_24;
  }

  sub_2555E4F74();
  v18 = sub_2556006BC();
  v19 = v4;
  if ((v4 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_2555E4FA4();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 3;
    swift_willThrow();
  }

  else
  {
    v23 = v18;
    v24 = v4;
    sub_2555E3B7C(v18, v4);
    v16 = sub_2556006CC();
    v17 = SecCertificateCreateWithData(0, v16);
    MEMORY[0x277D82BD8](v16);
    sub_2555E3C2C(v18, v19);
    if (v17)
    {
      commonName = 0;
      if (SecCertificateCopyCommonName(v17, &commonName))
      {
        v11 = 0;
LABEL_20:
        sub_2555F71F0(&commonName);
        MEMORY[0x277D82BD8](v17);
        sub_2555E3C2C(v18, v19);

        v10 = v11;
LABEL_24:
        v8 = __OFSUB__(*MEMORY[0x277D85DE8], v27);
        return v10 & 1;
      }

      v15 = commonName;
      MEMORY[0x277D82BE0](commonName);
      if (!v15)
      {
        v12 = 0;
LABEL_12:
        if (v12)
        {
          v5 = MEMORY[0x259C39DE0]();
          if (v5)
          {

            v11 = 1;
          }

          else
          {

            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_20;
      }

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        MEMORY[0x277D82BE0](v14);
        sub_2555F7224();
        sub_255600EAC();
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v14);
        if (v21)
        {
          v13 = v21;
LABEL_11:
          v12 = v13;
          goto LABEL_12;
        }
      }

      else
      {
        MEMORY[0x277D82BD8](v15);
      }

      v13 = 0;
      goto LABEL_11;
    }

    sub_2555E4FA4();
    swift_allocError();
    *v6 = 1;
    *(v6 + 8) = 0;
    *(v6 + 16) = 3;
    swift_willThrow();
    sub_2555E3C2C(v18, v19);
  }

  return (*MEMORY[0x277D85DE8] - v27) & 1;
}

unint64_t sub_2555F7174()
{
  v2 = qword_27F7BAA10;
  if (!qword_27F7BAA10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAA10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F7224()
{
  v2 = qword_27F7BAA18;
  if (!qword_27F7BAA18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555F72B4()
{
  v2 = qword_27F7BAA20;
  if (!qword_27F7BAA20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAA20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555F7348(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2555F74B0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_2555F777C(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_2555E3C2C(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_2555F77CC()
{
  v1 = *(v0 + 24);

  MEMORY[0x259C3AAA0](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555F7888()
{
  v1 = *(v0 + 24);

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

BOOL sub_2555F794C()
{
  v34 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  sub_2555E4F74();
  v24 = sub_2556006BC();
  v25 = v0;
  if ((v0 & 0xF000000000000000) == 0xF000000000000000)
  {
    goto LABEL_13;
  }

  v32 = v24;
  v33 = v0;
  sub_2555E4F74();
  v1 = sub_2556006BC();
  v22 = v1;
  v23 = v2;
  if ((v2 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_2555E3C2C(v24, v25);
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v30 = v1;
  v31 = v2;
  sub_2555E4F74();
  v3 = sub_2556006BC();
  v20 = v3;
  v21 = v4;
  if ((v4 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_2555E3C2C(v22, v23);
    sub_2555E3C2C(v24, v25);
    goto LABEL_13;
  }

  v28 = v3;
  v29 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BAA28, &unk_255604910);
  sub_255600E8C();
  v15 = v5;
  v12 = *MEMORY[0x277CDC028];
  MEMORY[0x277D82BE0](*MEMORY[0x277CDC028]);
  *v15 = v12;
  v13 = *MEMORY[0x277CDC060];
  MEMORY[0x277D82BE0](*MEMORY[0x277CDC060]);
  v15[1] = v13;
  v14 = *MEMORY[0x277CDBFE0];
  MEMORY[0x277D82BE0](*MEMORY[0x277CDBFE0]);
  v15[2] = v14;
  v16 = *MEMORY[0x277CDC000];
  MEMORY[0x277D82BE0](*MEMORY[0x277CDC000]);
  v15[3] = v16;
  sub_2555E3F34();
  type metadata accessor for CFString();
  sub_2555F7F34();
  sub_255600A4C();
  v27 = 0;
  sub_2555E3B7C(v24, v25);
  keyData = sub_2556006CC();

  v17 = sub_255600A2C();
  v19 = SecKeyCreateWithData(keyData, v17, &v27);
  MEMORY[0x277D82BD8](v17);

  MEMORY[0x277D82BD8](keyData);
  sub_2555E3C2C(v24, v25);
  if (v19)
  {
    v26 = 0;
    algorithm = *MEMORY[0x277CDC3B8];
    MEMORY[0x277D82BE0](*MEMORY[0x277CDC3B8]);
    sub_2555E3B7C(v22, v23);
    signedData = sub_2556006CC();
    sub_2555E3B7C(v20, v21);
    v7 = sub_2556006CC();
    v10 = SecKeyVerifySignature(v19, algorithm, signedData, v7, &v26);
    MEMORY[0x277D82BD8](v7);
    sub_2555E3C2C(v20, v21);
    MEMORY[0x277D82BD8](signedData);
    sub_2555E3C2C(v22, v23);
    MEMORY[0x277D82BD8](algorithm);
    MEMORY[0x277D82BD8](v19);

    sub_2555E3C2C(v20, v21);
    sub_2555E3C2C(v22, v23);
    sub_2555E3C2C(v24, v25);
    v11 = v10 != 0;
  }

  else
  {

    sub_2555E3C2C(v20, v21);
    sub_2555E3C2C(v22, v23);
    sub_2555E3C2C(v24, v25);
    v11 = 0;
  }

LABEL_14:
  *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t type metadata accessor for CFString()
{
  v4 = qword_27F7BAA38;
  if (!qword_27F7BAA38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_27F7BAA38);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_2555F7F34()
{
  v2 = qword_27F7BAA30;
  if (!qword_27F7BAA30)
  {
    type metadata accessor for CFString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAA30);
    return WitnessTable;
  }

  return v2;
}

id sub_2555F8108()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for MCLSignatureVerification();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id sub_2555F81D4()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLSignatureVerification();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2555F8220()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2556007AC();
}

uint64_t sub_2555F8274()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25560079C();
}

uint64_t sub_2555F82E4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = *a2;
  swift_getWitnessTable();
  return sub_25560078C() & 1;
}

unint64_t sub_2555F8380()
{
  v2 = qword_27F7BAA40;
  if (!qword_27F7BAA40)
  {
    type metadata accessor for CFString();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAA40);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555F8400()
{
  v34 = 0;
  v18 = (*(*(sub_255600CBC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v0, v1, v2);
  v33 = &v17 - v18;
  v19 = (*(*(sub_255600CAC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v3, v4, v5);
  v32 = &v17 - v19;
  v20 = (*(*(sub_2556007DC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v34, v6, v7, v8);
  v31 = &v17 - v20;
  v24 = sub_2555E67B0();
  v22 = 17;
  v9 = sub_255600E7C();
  v26 = &v35;
  v35 = v9;
  v36 = v10;
  v23 = 1;
  v11 = sub_255600B3C();
  v21 = v12;
  MEMORY[0x259C3A100](v11);

  type metadata accessor for MCLECv3Encryption();
  sub_2555E683C();
  v13 = sub_255600B3C();
  v25 = v14;
  MEMORY[0x259C3A100](v13);

  v28 = v35;
  v27 = v36;

  sub_2555E5B38(v26);
  v29 = sub_255600B2C();
  v30 = v15;
  sub_2555E6874();
  sub_2555E688C();
  sub_2555E692C(v33);
  return sub_255600CEC();
}

uint64_t sub_2555F8660()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv3Encryption_queue);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_2555F86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v28 = *MEMORY[0x277D85DE8];
  v24[2] = 0;
  v25 = 0;
  v26 = 0;
  v24[9] = a1;
  v24[7] = a2;
  v24[8] = a3;
  v24[5] = a4;
  v24[6] = a5;
  v24[3] = a6;
  v24[4] = a7;
  v27 = 0;
  v20 = objc_opt_self();

  v22 = sub_255600A2C();

  type metadata accessor for WritingOptions();
  sub_255600E8C();
  sub_2555E7084();
  sub_255600D1C();
  v24[0] = 0;
  v23 = [v20 dataWithJSONObject:v22 options:v24[1] error:v24];
  v21 = v24[0];
  MEMORY[0x277D82BE0](v24[0]);
  v7 = v27;
  v27 = v21;
  MEMORY[0x277D82BD8](v7);
  swift_unknownObjectRelease();
  if (v23)
  {
    v14 = sub_2556006EC();
    v15 = v8;
    MEMORY[0x277D82BD8](v23);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v11 = v27;
    v12 = sub_2556006AC();
    MEMORY[0x277D82BD8](v11);
    swift_willThrow();
    MEMORY[0x259C3AAA0](v12);
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  if ((v17 & 0xF000000000000000) == 0xF000000000000000)
  {

    sub_2555F8A58();
    v13 = swift_allocError();
    *v10 = 1;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    a6();
    MEMORY[0x259C3AAA0](v13);
  }

  else
  {
    v25 = v16;
    v26 = v17;
    (*((*v19 & *MEMORY[0x277D85000]) + 0x68))();
    result = sub_2555E3C2C(v16, v17);
  }

  *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2555F8A58()
{
  v2 = qword_27F7BAA58;
  if (!qword_27F7BAA58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAA58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555F8D50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a1;
  v50 = a2;
  v46 = a3;
  v47 = a4;
  v40 = a5;
  v41 = a6;
  v43 = a7;
  v44 = a8;
  v51 = sub_2555F9538;
  v52 = sub_2555F9890;
  v53 = sub_2555FA6FC;
  v85 = 0;
  v86 = 0;
  v83 = 0;
  v84 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  v54 = 0;
  v58 = sub_2556007BC();
  v55 = *(v58 - 8);
  v56 = v58 - 8;
  v38 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v9, v10, v11);
  v57 = &v38 - v38;
  v62 = sub_2556007DC();
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v39 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](v41, v50, v46, v47);
  v61 = &v38 - v39;
  v85 = v13;
  v86 = v14;
  v83 = v15;
  v84 = v16;
  v81 = v17;
  v82 = v12;
  v79 = v18;
  v80 = v19;
  v78 = v8;

  v42 = 32;
  v45 = 7;
  v20 = swift_allocObject();
  v21 = v41;
  v22 = v51;
  v66 = v20;
  *(v20 + 16) = v40;
  *(v20 + 24) = v21;
  v76 = v22;
  v77 = v20;

  v23 = swift_allocObject();
  v24 = v44;
  v25 = v52;
  v65 = v23;
  *(v23 + 16) = v43;
  *(v23 + 24) = v24;
  v74 = v25;
  v75 = v23;
  v64 = *(v8 + OBJC_IVAR___MCLECv3Encryption_queue);
  MEMORY[0x277D82BE0](v64);

  MEMORY[0x277D82BE0](v48);
  sub_2555E3B7C(v49, v50);

  v26 = swift_allocObject();
  v27 = v47;
  v28 = v48;
  v29 = v49;
  v30 = v50;
  v31 = v51;
  v32 = v52;
  v33 = v53;
  v34 = v66;
  v35 = v26;
  v36 = v65;
  v35[2] = v46;
  v35[3] = v27;
  v35[4] = v28;
  v35[5] = v29;
  v35[6] = v30;
  v35[7] = v31;
  v35[8] = v34;
  v35[9] = v32;
  v35[10] = v36;
  v72 = v33;
  v73 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = 0;
  v70 = sub_2555E8FD4;
  v71 = &block_descriptor_1;
  v63 = _Block_copy(&aBlock);
  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v54, v61, v57, v63);
  (*(v55 + 8))(v57, v58);
  (*(v59 + 8))(v61, v62);
  _Block_release(v63);

  MEMORY[0x277D82BD8](v64);
}

uint64_t sub_2555F9254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2556005B8;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x277D82BE0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_70;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555F94F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2555F9544(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_2555F95B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v18 = a2;
  v19 = a3;
  v20 = sub_2556004F4;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v22 = 0;
  v26 = sub_2556007BC();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v16 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v3, v4, v5);
  v25 = &v16 - v16;
  v30 = sub_2556007DC();
  v27 = *(v30 - 8);
  v28 = v30 - 8;
  v17 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v18, v19, v6);
  v29 = &v16 - v17;
  v42 = v7;
  v40 = v8;
  v41 = v9;
  sub_2555E67B0();
  v32 = sub_255600CCC();

  MEMORY[0x259C3AAB0](v21);
  v10 = swift_allocObject();
  v11 = v19;
  v12 = v20;
  v13 = v10;
  v14 = v21;
  v13[2] = v18;
  v13[3] = v11;
  v13[4] = v14;
  v38 = v12;
  v39 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = 0;
  v36 = sub_2555E8BC0;
  v37 = &block_descriptor_64;
  v31 = _Block_copy(&aBlock);

  sub_2555E8C10();
  sub_2555E8C28();
  MEMORY[0x259C39F70](v22, v29, v25, v31);
  (*(v23 + 8))(v25, v26);
  (*(v27 + 8))(v29, v30);
  _Block_release(v31);
  return MEMORY[0x277D82BD8](v32);
}

uint64_t sub_2555F9850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2555F989C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{

  a1(a3);
}

uint64_t sub_2555F990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v107 = a1;
  v106 = a2;
  v99 = a3;
  v100 = a4;
  v101 = a5;
  v102 = a6;
  v103 = a7;
  v104 = a8;
  v105 = a9;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v138 = 0;
  v139 = 0;
  v137 = 0;
  v135 = 0;
  v136 = 0;
  v133 = 0;
  v134 = 0;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  v129 = 0;
  v127 = 0;
  v128 = 0;
  v123 = 0;
  v124 = 0;
  v121 = 0;
  v93 = 0;
  v76 = sub_2556008CC();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x28223BE20](0, v9, v10, v11);
  v80 = v51 - v79;
  v81 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v51 - v79, v14, v15);
  v82 = v51 - v81;
  v144 = v51 - v81;
  v83 = sub_25560086C();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93, v16, v17, v18);
  v87 = v51 - v86;
  v143 = v51 - v86;
  v88 = sub_25560083C();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93, v19, v20, v21);
  v92 = v51 - v91;
  v142 = v51 - v91;
  v94 = sub_2556009FC();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v93, v22, v23, v24);
  v98 = v51 - v97;
  v141 = v51 - v97;
  v108 = sub_2556009AC();
  v109 = *(v108 - 8);
  v110 = v108 - 8;
  v114 = *(v109 + 64);
  v111 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x28223BE20](v107, v106, v99, v100);
  v112 = v51 - v111;
  v113 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v29 = MEMORY[0x28223BE20](v25, v26, v27, v28);
  v115 = v51 - v113;
  v116 = (v114 + 15) & 0xFFFFFFFFFFFFFFF0;
  v33 = MEMORY[0x28223BE20](v29, v30, v31, v32);
  v117 = v51 - v116;
  v140 = v51 - v116;
  v138 = v33;
  v139 = v34;
  v137 = v35;
  v135 = v36;
  v136 = v37;
  v133 = v38;
  v134 = v39;
  v131 = v40;
  v132 = v41;
  v42 = static MCLECCertValidation.evaluatePublicCertTrust(base64EncodedCert:)();
  v118 = 0;
  v119 = v42;
  v120 = 0;
  v71 = v42;
  v129 = v42;
  v43 = static MCLECCertValidation.getExternalCertRepresentation(from:)(v42);
  v72 = 0;
  v73 = v43;
  v74 = v44;
  v75 = 0;
  v68 = v44;
  v67 = v43;
  v127 = v43;
  v128 = v44;
  sub_2555E3B7C(v43, v44);
  v125 = v67;
  v126 = v68;
  sub_25560099C();
  v69 = 0;
  v70 = 0;
  sub_2556009EC();
  sub_2556009CC();
  v65 = 0;
  v66 = 0;
  v45 = sub_2556009DC();
  v46 = MEMORY[0x259C39C20](v45);
  v55 = &v123;
  v123 = v46;
  v124 = v47;
  v53 = *(v109 + 8);
  v54 = v109 + 8;
  v48 = v53(v115, v108);
  v56 = MEMORY[0x259C39C20](v48);
  v57 = v49;
  sub_25560071C();
  sub_2555E3C2C(v56, v57);
  v61 = sub_255600A0C();
  v58 = v123;
  v59 = v124;
  sub_2555E3B7C(v123, v124);
  v63 = v122;
  v122[0] = v58;
  v122[1] = v59;
  v60 = *(v99 + OBJC_IVAR___MCLECv3Encryption_symmetricKeyLength);
  v62 = sub_2555EC9D8();
  sub_2555ECA58();
  sub_25560082C();
  sub_2555E3BF8(v63);
  sub_2555FA9A0(v100, v101, v87, v82);
  v64 = 0;
  v51[6] = type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer();
  (*(v77 + 16))(v80, v82, v76);
  sub_2556009DC();
  (*(v109 + 16))(v112, v117, v108);
  v52 = sub_2555FA748(v80, v115, v112);
  v121 = v52;

  v102(v52);

  MEMORY[0x277D82BD8](v52);
  (*(v77 + 8))(v82, v76);
  (*(v84 + 8))(v87, v83);
  sub_2555E3BF8(&v123);
  (*(v89 + 8))(v92, v88);
  (*(v95 + 8))(v98, v94);
  v53(v117, v108);
  sub_2555E3C2C(v67, v68);
  return MEMORY[0x277D82BD8](v71);
}

uint64_t sub_2555FA690()
{
  v1 = v0[3];

  MEMORY[0x277D82BD8](v0[4]);
  sub_2555E3C2C(v0[5], v0[6]);
  v2 = v0[8];

  v3 = v0[10];

  return swift_deallocObject();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_2555FA9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v77 = a1;
  v78 = a2;
  v56 = a3;
  v5 = v4;
  v70 = v5;
  v72 = 0;
  v73 = sub_2555FB2F0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v88 = 0;
  v87 = 0;
  v83 = 0;
  v84 = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA8F8, "HH");
  v57 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8, v9, v10);
  v58 = &v33 - v57;
  v64 = 0;
  v59 = sub_2556008CC();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64, v11, v12, v13);
  v63 = &v33 - v62;
  v93 = &v33 - v62;
  v65 = sub_25560089C();
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64, v14, v15, v16);
  v69 = &v33 - v68;
  v92 = &v33 - v68;
  v17 = sub_25560086C();
  v18 = v71;
  v74 = v17;
  v75 = *(v17 - 8);
  v76 = v17 - 8;
  v19 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v73, v72, v20, v21);
  v79 = &v33 - v22;
  v91 = &v33 - v22;
  v89 = v77;
  v90 = v78;
  v88 = a3;
  v87 = v23;
  sub_25560084C();
  v80 = v18;
  if (v18)
  {
    __break(1u);
LABEL_9:
    v34 = v48;
    (*(v75 + 8))(v79, v74);
    result = sub_2555E3C2C(v53, v54);
    v39 = v34;
    return result;
  }

  v53 = v85;
  v54 = v86;
  v83 = v85;
  v84 = v86;
  if (MEMORY[0x259C39990]() != *(v70 + OBJC_IVAR___MCLECv3Encryption_symmetricKeyLength))
  {
    v35 = *(v70 + OBJC_IVAR___MCLECv3Encryption_symmetricKeyLength);
    v37 = MEMORY[0x259C39990](v53, v54);
    sub_2555F8A58();
    v36 = 0;
    v28 = swift_allocError();
    v29 = v36;
    v30 = v28;
    v31 = v37;
    v38 = v30;
    *v32 = v35;
    *(v32 + 8) = v31;
    *(v32 + 16) = v29 & 1;
    swift_willThrow();
    sub_2555E3C2C(v53, v54);
    result = v38;
    v39 = v38;
    return result;
  }

  sub_2555E3B7C(v53, v54);
  v82[8] = v53;
  v82[9] = v54;
  v52 = *(v70 + OBJC_IVAR___MCLECv3Encryption_symmetricKeyLength);
  v49 = v52 / 2;
  sub_2555E485C();
  v50 = MEMORY[0x277CC9318];
  sub_255600C7C();
  v82[6] = v82[10];
  v82[7] = v82[11];
  sub_25560085C();
  sub_2555E3B7C(v53, v54);
  v82[2] = v53;
  v82[3] = v54;
  v51 = *(v70 + OBJC_IVAR___MCLECv3Encryption_symmetricKeyLength);
  v43 = v51 / 2;
  sub_2555FDBD8();
  v44 = MEMORY[0x277CC9318];
  sub_255600A6C();
  v45 = v82;
  v82[0] = v82[4];
  v82[1] = v82[5];
  v24 = sub_2555ECA58();
  v25 = v80;
  v46 = v24;
  sub_25560088C();
  v47 = v25;
  v48 = v25;
  if (v25)
  {
    goto LABEL_9;
  }

  v40 = v81;
  v81[0] = v77;
  v81[1] = v78;
  (*(v66 + 16))(v58, v69, v65);
  (*(v66 + 56))(v58, 0, 1, v65);
  v26 = v47;
  sub_25560087C();
  v41 = v26;
  v42 = v26;
  if (v26)
  {
    v33 = v42;
    sub_2555ECB78(v58);
  }

  else
  {
    sub_2555ECB78(v58);
    (*(v60 + 16))(v55, v63, v59);
    (*(v60 + 8))(v63, v59);
  }

  (*(v66 + 8))(v69, v65);
  (*(v75 + 8))(v79, v74);
  return sub_2555E3C2C(v53, v54);
}

uint64_t sub_2555FB2F0@<X0>(uint64_t *a1@<X8>)
{
  sub_255600C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA868, qword_255605160);
  sub_2555E3A54();
  result = sub_25560075C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t MCLECv3Encryption.ECv3EncryptionError.errorDescription.getter()
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v16 = 0;
  v15 = 0;
  v11 = *v0;
  v12 = v0[1];
  v13 = *(v0 + 16);
  v21 = *v0;
  v22 = v12;
  v23 = v13 & 1;
  if (v13)
  {
    v20[0] = sub_255600E7C();
    v20[1] = v6;
    v7 = sub_255600B3C();
    MEMORY[0x259C3A100](v7);

    v17 = v11;
    v18 = v12;
    v19 = v13 & 1;
    sub_255600E3C();
    v8 = sub_255600B3C();
    MEMORY[0x259C3A100](v8);

    sub_2555E5B38(v20);
    return sub_255600B2C();
  }

  else
  {
    v16 = v11;
    v15 = v12;
    v14[0] = sub_255600E7C();
    v14[1] = v1;
    v2 = sub_255600B3C();
    MEMORY[0x259C3A100](v2);

    sub_255600E3C();
    v3 = sub_255600B3C();
    MEMORY[0x259C3A100](v3);

    sub_255600E4C();
    v4 = sub_255600B3C();
    MEMORY[0x259C3A100](v4);

    sub_255600E4C();
    v5 = sub_255600B3C();
    MEMORY[0x259C3A100](v5);

    sub_2555E5B38(v14);
    return sub_255600B2C();
  }
}

uint64_t sub_2555FB810()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv3EncryptedDataContainer_data);
  v3 = *(v0 + OBJC_IVAR___MCLECv3EncryptedDataContainer_data + 8);

  return v2;
}

uint64_t sub_2555FB8C8()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv3EncryptedDataContainer_params);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_2555FB940()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv3Params_algorithmIdentifier);
  v3 = *(v0 + OBJC_IVAR___MCLECv3Params_algorithmIdentifier + 8);

  return v2;
}

uint64_t sub_2555FB9F8()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv3Params_keyAgreement);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t sub_2555FBACC()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv3KeyAgreement_sender);
  v3 = *(v0 + OBJC_IVAR___MCLECv3KeyAgreement_sender + 8);

  return v2;
}

uint64_t sub_2555FBBA4()
{
  v2 = *(v0 + OBJC_IVAR___MCLECv3KeyAgreement_recipientFingerprint);
  v3 = *(v0 + OBJC_IVAR___MCLECv3KeyAgreement_recipientFingerprint + 8);

  return v2;
}

char *sub_2555FBC34(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v39 = a2;
  v34 = v2;
  v50 = 0;
  v52 = sub_2555FBFD0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v45 = 0;
  v35 = sub_25560080C();
  v36 = *(v35 - 8);
  v37 = v35 - 8;
  v38 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35, v39, v3, v4);
  v48 = &v22 - v38;
  v61 = &v22 - v38;
  v59 = v33;
  v58 = v5;
  v60 = v6;
  v42 = v6;
  v40 = MEMORY[0x259C39C20]();
  v41 = v7;
  sub_2555ED9A0();
  v43 = sub_2556006DC();
  v44 = v8;
  sub_2555E3C2C(v40, v41);
  v9 = v44;
  v10 = &v42[OBJC_IVAR___MCLECv3KeyAgreement_sender];
  *v10 = v43;
  v10[1] = v9;
  v46 = sub_255600A0C();
  v11 = MEMORY[0x259C39C20]();
  v49 = v57;
  v57[0] = v11;
  v57[1] = v12;
  v47 = sub_2555EC9D8();
  sub_2555ECA58();
  v51 = MEMORY[0x277CC9318];
  sub_2556007EC();
  sub_2555E3BF8(v49);
  v53 = v60;
  sub_2556007FC();
  v23 = v55;
  v24 = v56;
  sub_2555ED9A0();
  v25 = sub_2556006DC();
  v26 = v13;
  sub_2555E3C2C(v23, v24);
  v14 = v26;
  v15 = v36;
  v16 = v48;
  v17 = v35;
  v18 = &v53[OBJC_IVAR___MCLECv3KeyAgreement_recipientFingerprint];
  *v18 = v25;
  v18[1] = v14;
  (*(v15 + 8))(v16, v17);
  v27 = v60;
  v28 = 0;
  v19 = type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params.KeyAgreement();
  v54.receiver = v27;
  v54.super_class = v19;
  v32 = objc_msgSendSuper2(&v54, sel_init);
  MEMORY[0x277D82BE0](v32);
  v60 = v32;
  v29 = sub_2556009AC();
  v20 = *(v29 - 8);
  v31 = *(v20 + 8);
  v30 = v20 + 8;
  v31(v39);
  (v31)(v33, v29);
  MEMORY[0x277D82BD8](v60);
  return v32;
}

uint64_t sub_2555FBFD0@<X0>(uint64_t *a1@<X8>)
{
  sub_255600C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BA868, qword_255605160);
  sub_2555E3A54();
  result = sub_25560075C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_2555FC12C(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_255600B3C();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x259C39DE0](v12[0], v2, a1, a2);
  sub_2555E5B90(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_255600B3C();
  v11[1] = v3;
  v6 = MEMORY[0x259C39DE0](v11[0], v3, a1, a2);
  sub_2555E5B90(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_2555FC5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2555FC12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2555FC614@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2555FC2D0();
  *a1 = result;
  return result;
}

id MCLECv3Encryption.ECV3EncryptedDataContainer.Params.KeyAgreement.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params.KeyAgreement();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2555FC738(uint64_t a1)
{
  v10 = a1;
  v27 = 0;
  v26 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BAA98, &qword_255604A68);
  v11 = *(v21 - 8);
  v12 = v21 - 8;
  v13 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v8 - v13;
  v27 = MEMORY[0x28223BE20](v10, v2, v3, v4);
  v26 = v1;
  v14 = v27[3];
  v15 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v14);
  sub_2555FEABC();
  sub_255600F1C();
  v5 = v18;
  v19 = *(v17 + OBJC_IVAR___MCLECv3KeyAgreement_sender);
  v20 = *(v17 + OBJC_IVAR___MCLECv3KeyAgreement_sender + 8);

  v25 = 0;
  sub_255600E1C();
  v22 = v5;
  v23 = v5;
  if (v5)
  {
    v8[1] = v23;

    return (*(v11 + 8))(v16, v21);
  }

  else
  {

    v6 = v22;
    v8[3] = *(v17 + OBJC_IVAR___MCLECv3KeyAgreement_recipientFingerprint);
    v8[4] = *(v17 + OBJC_IVAR___MCLECv3KeyAgreement_recipientFingerprint + 8);

    v24 = 1;
    sub_255600E1C();
    v8[5] = v6;
    v9 = v6;
    if (v6)
    {
      v8[0] = v9;
    }

    return (*(v11 + 8))(v16, v21);
  }
}

char *sub_2555FCAA4(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v30 = a2;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v26 = 0;
  v32 = sub_2556009AC();
  v28 = *(v32 - 8);
  v29 = v32 - 8;
  v17 = (v28[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v31, v30, v3, v4);
  v23 = &v17 - v17;
  v18 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v5, v7, &v17 - v17, v8);
  v24 = &v17 - v18;
  v38 = v9;
  v37 = v10;
  v39 = v2;
  v20 = v2;
  v19 = OBJC_IVAR___MCLECv3Params_algorithmIdentifier;
  v11 = sub_255600B3C();
  v12 = &v20[v19];
  *v12 = v11;
  v12[1] = v13;
  v25 = v39;
  type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params.KeyAgreement();
  v22 = v28[2];
  v21 = v28 + 2;
  v22(v24, v31, v32);
  v22(v23, v30, v32);
  v14 = sub_2555FBBF0(v24, v23);
  *&v25[OBJC_IVAR___MCLECv3Params_keyAgreement] = v14;
  v27 = v39;
  v15 = type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params();
  v36.receiver = v27;
  v36.super_class = v15;
  v35 = objc_msgSendSuper2(&v36, sel_init);
  MEMORY[0x277D82BE0](v35);
  v39 = v35;
  v34 = v28[1];
  v33 = v28 + 1;
  v34(v30, v32);
  v34(v31, v32);
  MEMORY[0x277D82BD8](v39);
  return v35;
}

uint64_t sub_2555FCDC4(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_255600B3C();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x259C39DE0](v12[0], v2, a1, a2);
  sub_2555E5B90(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_255600B3C();
  v11[1] = v3;
  v6 = MEMORY[0x259C39DE0](v11[0], v3, a1, a2);
  sub_2555E5B90(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_2555FD25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2555FCDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2555FD2AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2555FCF68();
  *a1 = result;
  return result;
}

id MCLECv3Encryption.ECV3EncryptedDataContainer.Params.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2555FD3DC(uint64_t a1)
{
  v15 = a1;
  v33 = 0;
  v32 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BAAA0, &qword_255604A70);
  v16 = *(v26 - 8);
  v17 = v26 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v8 - v18;
  v33 = MEMORY[0x28223BE20](v15, v2, v3, v4);
  v32 = v1;
  v19 = v33[3];
  v20 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v19);
  sub_2555FEBDC();
  sub_255600F1C();
  v5 = v23;
  v24 = *(v22 + OBJC_IVAR___MCLECv3Params_algorithmIdentifier);
  v25 = *(v22 + OBJC_IVAR___MCLECv3Params_algorithmIdentifier + 8);

  v31 = 0;
  sub_255600E1C();
  v27 = v5;
  v28 = v5;
  if (v5)
  {
    v8[1] = v28;

    return (*(v16 + 8))(v21, v26);
  }

  else
  {

    v9 = *(v22 + OBJC_IVAR___MCLECv3Params_keyAgreement);
    MEMORY[0x277D82BE0](v9);
    v12 = &v30;
    v30 = v9;
    v10 = &v29;
    v29 = 1;
    v11 = type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params.KeyAgreement();
    sub_2555FEC58();
    v6 = v27;
    sub_255600E2C();
    v13 = v6;
    v14 = v6;
    if (v6)
    {
      v8[0] = v14;
    }

    MEMORY[0x277D82BD8](v30);
    return (*(v16 + 8))(v21, v26);
  }
}

char *sub_2555FD73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a1;
  v50 = a2;
  v49 = a3;
  v4 = v3;
  v5 = v55;
  v24[1] = v4;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v54 = 0;
  v51 = sub_2556009AC();
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v26 = v47[8];
  v25 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51, v50, v49, v6);
  v43 = v24 - v25;
  v27 = v25;
  MEMORY[0x28223BE20](v24 - v25, v7, v8, v9);
  v44 = v24 - v27;
  v62 = v5;
  v61 = v10;
  v60 = v11;
  v63 = v12;
  v38 = v12;
  v28 = sub_2556008AC();
  v29 = v13;
  sub_2555ED9A0();
  v30 = sub_2556006DC();
  v31 = v14;
  sub_2555E3C2C(v28, v29);
  v37 = v59;
  v59[0] = v30;
  v59[1] = v31;
  v32 = sub_2556008BC();
  v33 = v15;
  sub_2555ED9A0();
  v34 = sub_2556006DC();
  v35 = v16;
  sub_2555E3C2C(v32, v33);
  v36 = v58;
  v58[0] = v34;
  v58[1] = v35;
  sub_2555FECD8();
  v39 = sub_255600CFC();
  v40 = v17;
  sub_2555E5B90(v36);
  sub_2555E5B90(v37);
  v18 = v40;
  v19 = &v38[OBJC_IVAR___MCLECv3EncryptedDataContainer_data];
  *v19 = v39;
  v19[1] = v18;
  v45 = v63;
  type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params();
  v42 = v47[2];
  v41 = v47 + 2;
  v42(v44, v50, v51);
  v42(v43, v49, v51);
  v20 = sub_2555FCA60(v44, v43);
  *&v45[OBJC_IVAR___MCLECv3EncryptedDataContainer_params] = v20;
  v46 = v63;
  v21 = type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer();
  v57.receiver = v46;
  v57.super_class = v21;
  v56 = objc_msgSendSuper2(&v57, sel_init);
  MEMORY[0x277D82BE0](v56);
  v63 = v56;
  v53 = v47[1];
  v52 = v47 + 1;
  v53(v49, v51);
  v53(v50, v51);
  v22 = sub_2556008CC();
  (*(*(v22 - 8) + 8))(v55);
  MEMORY[0x277D82BD8](v63);
  return v56;
}

unint64_t sub_2555FDBD8()
{
  v2 = qword_27F7BAA60;
  if (!qword_27F7BAA60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAA60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2555FDD2C(uint64_t a1, uint64_t a2)
{
  v12[2] = a1;
  v12[3] = a2;

  v12[0] = sub_255600B3C();
  v12[1] = v2;
  v11[2] = a1;
  v11[3] = a2;
  v10 = MEMORY[0x259C39DE0](v12[0], v2, a1, a2);
  sub_2555E5B90(v12);
  if (v10)
  {

    v13 = 0;
    v7 = 0;
LABEL_6:

    return v7;
  }

  v11[0] = sub_255600B3C();
  v11[1] = v3;
  v6 = MEMORY[0x259C39DE0](v11[0], v3, a1, a2);
  sub_2555E5B90(v11);
  if (v6)
  {

    v13 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  return 2;
}

uint64_t sub_2555FE1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2555FDD2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2555FE214@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2555FDED0();
  *a1 = result;
  return result;
}

id MCLECv3Encryption.ECV3EncryptedDataContainer.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2555FE344(uint64_t a1)
{
  v15 = a1;
  v33 = 0;
  v32 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BAAB8, &qword_255604A78);
  v16 = *(v26 - 8);
  v17 = v26 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v8 - v18;
  v33 = MEMORY[0x28223BE20](v15, v2, v3, v4);
  v32 = v1;
  v19 = v33[3];
  v20 = v33[4];
  __swift_project_boxed_opaque_existential_1(v33, v19);
  sub_2555FEDF4();
  sub_255600F1C();
  v5 = v23;
  v24 = *(v22 + OBJC_IVAR___MCLECv3EncryptedDataContainer_data);
  v25 = *(v22 + OBJC_IVAR___MCLECv3EncryptedDataContainer_data + 8);

  v31 = 0;
  sub_255600E1C();
  v27 = v5;
  v28 = v5;
  if (v5)
  {
    v8[1] = v28;

    return (*(v16 + 8))(v21, v26);
  }

  else
  {

    v9 = *(v22 + OBJC_IVAR___MCLECv3EncryptedDataContainer_params);
    MEMORY[0x277D82BE0](v9);
    v12 = &v30;
    v30 = v9;
    v10 = &v29;
    v29 = 1;
    v11 = type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params();
    sub_2555FEE70();
    v6 = v27;
    sub_255600E2C();
    v13 = v6;
    v14 = v6;
    if (v6)
    {
      v8[0] = v14;
    }

    MEMORY[0x277D82BD8](v30);
    return (*(v16 + 8))(v21, v26);
  }
}

char *MCLECv3Encryption.init()()
{
  v44 = 0;
  v36 = 0;
  v20 = (*(*(sub_255600CBC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v1, v2, v3);
  v35 = &v20 - v20;
  v21 = (*(*(sub_255600CAC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v4, v5, v6);
  v34 = &v20 - v21;
  v22 = (*(*(sub_2556007DC() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v7, v8, v9);
  v33 = &v20 - v22;
  v44 = v0;
  v38 = v0;
  v37 = OBJC_IVAR___MCLECv3Encryption_queue;
  v26 = sub_2555E67B0();
  v24 = 17;
  v10 = sub_255600E7C();
  v28 = &v42;
  v42 = v10;
  v43 = v11;
  v25 = 1;
  v12 = sub_255600B3C();
  v23 = v13;
  MEMORY[0x259C3A100](v12);

  v39 = type metadata accessor for MCLECv3Encryption();
  sub_2555E683C();
  v14 = sub_255600B3C();
  v27 = v15;
  MEMORY[0x259C3A100](v14);

  v30 = v42;
  v29 = v43;

  sub_2555E5B38(v28);
  v31 = sub_255600B2C();
  v32 = v16;
  sub_2555E6874();
  sub_2555E688C();
  sub_2555E692C(v35);
  v17 = sub_255600CEC();
  v18 = v39;
  *&v38[v37] = v17;
  *&v44[OBJC_IVAR___MCLECv3Encryption_symmetricKeyLength] = 32;
  v41.receiver = v44;
  v41.super_class = v18;
  v40 = objc_msgSendSuper2(&v41, sel_init);
  MEMORY[0x277D82BE0](v40);
  v44 = v40;
  MEMORY[0x277D82BD8](v40);
  return v40;
}

id MCLECv3Encryption.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCLECv3Encryption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2555FEA40()
{
  v2 = qword_27F7BBD10;
  if (!qword_27F7BBD10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BBD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555FEABC()
{
  v2 = qword_27F7BBD18;
  if (!qword_27F7BBD18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BBD18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555FEB60()
{
  v2 = qword_27F7BBD20;
  if (!qword_27F7BBD20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BBD20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555FEBDC()
{
  v2 = qword_27F7BBD28;
  if (!qword_27F7BBD28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BBD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555FEC58()
{
  v2 = qword_27F7BAAA8;
  if (!qword_27F7BAAA8)
  {
    type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params.KeyAgreement();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555FECD8()
{
  v2 = qword_27F7BAAB0;
  if (!qword_27F7BAAB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555FED78()
{
  v2 = qword_27F7BBD30;
  if (!qword_27F7BBD30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BBD30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555FEDF4()
{
  v2 = qword_27F7BBD38[0];
  if (!qword_27F7BBD38[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BBD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555FEE70()
{
  v2 = qword_27F7BAAC0;
  if (!qword_27F7BAAC0)
  {
    type metadata accessor for MCLECv3Encryption.ECV3EncryptedDataContainer.Params();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BAAC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for MCLECv3Encryption.ECv3EncryptionError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 17))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MCLECv3Encryption.ECv3EncryptionError(uint64_t result, int a2, int a3)
{
  v3 = (result + 17);
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    *(result + 16) = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t sub_2555FF408(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2555FF570(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2555FF7A0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2555FF908(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2555FFB38(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2555FFCA0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2555FFF18()
{
  v2 = qword_27F7BC640;
  if (!qword_27F7BC640)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BC640);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2555FFFAC()
{
  v2 = qword_27F7BC648[0];
  if (!qword_27F7BC648[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BC648);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_255600040()
{
  v2 = qword_27F7BC6D0[0];
  if (!qword_27F7BC6D0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BC6D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2556000D4()
{
  v2 = qword_27F7BC760;
  if (!qword_27F7BC760)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BC760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_255600168()
{
  v2 = qword_27F7BC768[0];
  if (!qword_27F7BC768[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BC768);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2556001FC()
{
  v2 = qword_27F7BC7F0[0];
  if (!qword_27F7BC7F0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BC7F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_255600290()
{
  v2 = qword_27F7BC880;
  if (!qword_27F7BC880)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27F7BC880);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_255600324()
{
  v2 = qword_27F7BC888[0];
  if (!qword_27F7BC888[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BC888);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_2556003B8()
{
  v2 = qword_27F7BC910[0];
  if (!qword_27F7BC910[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_27F7BC910);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_2556004AC()
{
  v1 = *(v0 + 24);

  MEMORY[0x259C3AAA0](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_255600568()
{
  v1 = *(v0 + 24);

  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}