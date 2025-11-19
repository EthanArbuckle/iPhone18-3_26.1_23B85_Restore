void *MCCNLP.deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels;
  swift_beginAccess();
  v3 = type metadata accessor for BlackPearlModel(0);
  v4 = *(v3 + 32);
  v49 = *(v2 + v4);
  *(v2 + v4) = 0;
  *(v2 + *(v3 + 36)) = 0;
  v5 = type metadata accessor for BlackPearlLevels();
  v6 = v2 + v5[8];
  v7 = *(v3 + 32);
  v8 = *(v6 + v7);
  *(v6 + v7) = 0;
  *(v6 + *(v3 + 36)) = 0;
  v9 = v2 + v5[7];
  v10 = *(v3 + 32);
  v11 = *(v9 + v10);
  *(v9 + v10) = 0;
  *(v9 + *(v3 + 36)) = 0;
  v12 = v2 + v5[5];
  v13 = *(v3 + 32);
  v14 = *(v12 + v13);
  *(v12 + v13) = 0;
  *(v12 + *(v3 + 36)) = 0;
  v15 = v2 + v5[9];
  v16 = *(v3 + 32);
  v17 = *(v15 + v16);
  *(v15 + v16) = 0;
  *(v15 + *(v3 + 36)) = 0;
  v18 = v2 + v5[6];
  v19 = *(v3 + 32);
  v20 = *(v18 + v19);
  *(v18 + v19) = 0;
  *(v18 + *(v3 + 36)) = 0;
  v21 = v2 + v5[10];
  v22 = *(v3 + 32);
  v23 = *(v21 + v22);
  *(v21 + v22) = 0;
  *(v21 + *(v3 + 36)) = 0;

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v24 = sub_22B3F6464();
  __swift_project_value_buffer(v24, qword_28140D680);

  v25 = sub_22B3F6444();
  v26 = sub_22B3F68B4();

  if (os_log_type_enabled(v25, v26))
  {
    v47 = v26;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138413826;
    v29 = *(v2 + *(v3 + 32));
    *(v27 + 4) = v29;
    *v28 = v29;
    *(v27 + 12) = 2112;
    v30 = *(v2 + v5[7] + *(v3 + 32));
    *(v27 + 14) = v30;
    v28[1] = v30;
    *(v27 + 22) = 2112;
    v31 = *(v2 + v5[8] + *(v3 + 32));
    *(v27 + 24) = v31;
    v28[2] = v31;
    *(v27 + 32) = 2112;
    v32 = *(v2 + v5[5] + *(v3 + 32));
    *(v27 + 34) = v32;
    v28[3] = v32;
    *(v27 + 42) = 2112;
    v48 = v25;
    v50 = v1;
    v33 = *(v2 + v5[9] + *(v3 + 32));
    *(v27 + 44) = v33;
    v28[4] = v33;
    *(v27 + 52) = 2112;
    v34 = *(v2 + v5[6] + *(v3 + 32));
    *(v27 + 54) = v34;
    v28[5] = v34;
    *(v27 + 62) = 2112;
    v35 = *(v2 + v5[10] + *(v3 + 32));
    *(v27 + 64) = v35;
    v28[6] = v35;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v25 = v48;
    v41 = v34;
    v1 = v50;
    v42 = v35;
    _os_log_impl(&dword_22B3A7000, v48, v47, "Destroyed MCCNLP model  %@, %@, %@, %@, %@, %@, %@", v27, 0x48u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE078, &qword_22B3F8C50);
    swift_arrayDestroy();
    MEMORY[0x231890C40](v28, -1, -1);
    MEMORY[0x231890C40](v27, -1, -1);
  }

  v43 = v1[3];

  v44 = v1[4];

  __swift_destroy_boxed_opaque_existential_0(v1 + 5);
  sub_22B3CEFE4(v2, type metadata accessor for BlackPearlLevels);
  v45 = *(v1 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_personalDomains);

  return v1;
}

uint64_t MCCNLP.__deallocating_deinit()
{
  MCCNLP.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B3CE61C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v3;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(v2 + 24);
  return sub_22B3D6534(v7, a2);
}

uint64_t sub_22B3CE66C()
{
  v1 = v0;
  v2 = type metadata accessor for BlackPearlLevels();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22B3CEF2C(v0 + 40, v11);
  v6 = v12;
  v7 = v13;
  __swift_project_boxed_opaque_existential_0(v11, v12);
  (*(v7 + 304))(v6, v7);
  v8 = OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels;
  swift_beginAccess();
  sub_22B3B2AD8(v5, v1 + v8);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_22B3CE760@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels;
  swift_beginAccess();
  v4 = (v3 + *(type metadata accessor for BlackPearlLevels() + 44));
  v5 = v4[9];
  v6 = v4[7];
  v28 = v4[8];
  v29 = v5;
  v7 = v4[9];
  v30[0] = v4[10];
  *(v30 + 9) = *(v4 + 169);
  v8 = v4[5];
  v10 = v4[3];
  v24 = v4[4];
  v9 = v24;
  v25 = v8;
  v11 = v4[5];
  v12 = v4[7];
  v26 = v4[6];
  v13 = v26;
  v27 = v12;
  v14 = v4[1];
  v15 = v4[3];
  v22 = v4[2];
  v16 = v22;
  v23 = v15;
  v17 = v4[1];
  v21[0] = *v4;
  v18 = v21[0];
  v21[1] = v17;
  a1[8] = v28;
  a1[9] = v7;
  a1[10] = v4[10];
  *(a1 + 169) = *(v4 + 169);
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v6;
  *a1 = v18;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v10;
  return sub_22B3A9F54(v21, v20);
}

uint64_t sub_22B3CE840()
{
  sub_22B3CEF2C(v0 + 40, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_0(v5, v6);
  v3 = *(v2 + 328);

  v3(3, sub_22B3CF044, v0, v1, v2);

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_22B3CE8E8(char *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[1])
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v4 = sub_22B3F6464();
    __swift_project_value_buffer(v4, qword_28140D680);
    v5 = sub_22B3F6444();
    v6 = sub_22B3F68C4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_22B3B30D4();
      swift_allocError();
      *v9 = v3;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_22B3A7000, v5, v6, "Failed model download %@", v7, 0xCu);
      sub_22B3CC430(v8);
      MEMORY[0x231890C40](v8, -1, -1);
      MEMORY[0x231890C40](v7, -1, -1);
    }

    result = swift_beginAccess();
    *(a2 + 16) = 0;
  }

  else
  {
    result = swift_beginAccess();
    *(a2 + 16) = v3 & 1;
  }

  return result;
}

uint64_t sub_22B3CEA74()
{
  v1 = *(v0 + 32);
  v2 = sub_22B3B568C();

  return v2;
}

uint64_t sub_22B3CEAA8()
{
  v1 = *(v0 + 32);
  v2 = sub_22B3B568C();

  return sub_22B3D2AE0(v2);
}

uint64_t sub_22B3CEAEC(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 32);
  sub_22B3B6414(a1, a2);
  v4 = sub_22B3B568C();

  return sub_22B3D2AE0(v4);
}

uint64_t sub_22B3CEB4C(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 32);
  sub_22B3B6414(a1, a2);
  v4 = sub_22B3F65D4();
  v6 = v5;

  v7 = *(v3 + 56);
  v8 = sub_22B3D0178(v4, v6);
  LODWORD(v7) = v9;

  return (v8 > 0) & ~v7;
}

uint64_t sub_22B3CEBBC()
{
  v1 = *(v0 + 32);
  v2 = sub_22B3F65D4();
  v3 = *(v1 + 56);
  v5 = sub_22B3D0178(v2, v4);
  v7 = v6;

  return (v5 > 0) & ~v7;
}

uint64_t sub_22B3CEC10@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20MCCKitCategorization6MCCNLP_blackPearlLevels;
  swift_beginAccess();
  result = type metadata accessor for BlackPearlLevels();
  v5 = v3 + *(result + 44);
  if (*(v5 + 184))
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v6 = sub_22B3F6464();
    __swift_project_value_buffer(v6, qword_28140D680);
    v7 = sub_22B3F6444();
    v8 = sub_22B3F68C4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_22B3A7000, v7, v8, "BlackPearl Categorization version is nil", v9, 2u);
      MEMORY[0x231890C40](v9, -1, -1);
    }

    sub_22B3CF04C();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  else
  {
    v11 = *(v5 + 176);
    *a1 = *(v5 + 160);
    *(a1 + 16) = v11;
  }

  return result;
}

id sub_22B3CED78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_22B3F6564();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_22B3F6064();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_22B3CEE54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BloomFilterData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22B3CEEB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22B3CEF2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22B3CEFE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22B3CF04C()
{
  result = qword_27D8BE388;
  if (!qword_27D8BE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE388);
  }

  return result;
}

uint64_t type metadata accessor for MCCNLP()
{
  result = qword_28140C298;
  if (!qword_28140C298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B3CF0F4()
{
  result = type metadata accessor for BlackPearlLevels();
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

unint64_t sub_22B3CF3F4()
{
  result = qword_27D8BE390;
  if (!qword_27D8BE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE390);
  }

  return result;
}

uint64_t DomainMapDataFrame.__allocating_init(withFileAtPath:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  DomainMapDataFrame.init(withFileAtPath:)(a1);
  return v5;
}

uint64_t DomainMapDataFrame.init(withFileAtPath:)(char *a1)
{
  v64 = sub_22B3F6354();
  v63 = *(v64 - 8);
  v2 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE398, &qword_22B3F9350);
  v60 = *(v61 - 8);
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v59 = &v58 - v5;
  v79 = sub_22B3F63F4();
  v77 = *(v79 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v79);
  v75 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22B3F63A4();
  v76 = *(v78 - 8);
  v8 = *(v76 + 64);
  v9 = MEMORY[0x28223BE20](v78);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v58 - v11;
  v12 = sub_22B3F64D4();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v68 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_22B3F6504();
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22B3F6184();
  v65 = *(v85 - 8);
  v17 = *(v65 + 64);
  MEMORY[0x28223BE20](v85);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22B3F6434();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22B3F63D4();
  v83 = *(v25 - 8);
  v84 = v25;
  v26 = *(v83 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v66 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v58 - v29;
  v81 = a1;
  if (sub_22B3F6094())
  {
    sub_22B3D063C(&unk_283F04FB0);
    swift_arrayDestroy();
    sub_22B3D063C(&unk_283F05070);
    swift_arrayDestroy();
    sub_22B3D063C(&unk_283F050D0);
    swift_arrayDestroy();
    (*(v21 + 104))(v24, *MEMORY[0x277CE1918], v20);
    sub_22B3F63C4();
    v31 = v65;
    (*(v65 + 16))(v19, v81, v85);
    v32 = [objc_opt_self() defaultManager];
    sub_22B3F6144();
    v33 = sub_22B3F6564();

    v34 = [v32 fileExistsAtPath_];

    if (!v34)
    {
      sub_22B3CCCD4();
      v57 = swift_allocError();
      swift_willThrow();
      (*(v31 + 8))(v19, v85);
      v86 = 0;
      v87 = 0xE000000000000000;
      sub_22B3F6AC4();
      MEMORY[0x23188FF80](0xD000000000000019, 0x800000022B3FBA00);
      v88 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
      sub_22B3F6B04();
      goto LABEL_14;
    }

    v35 = sub_22B3F6194();
    v36 = v67;
    v37 = v35;
    v39 = v38;
    v82 = v30;
    sub_22B3B7874(v35, v38);
    sub_22B3B7564(v37, v39);
    v86 = sub_22B3CCF0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE108, &qword_22B3F7E10);
    sub_22B3D0990(&qword_28140BF90, &qword_27D8BE108, &qword_22B3F7E10);
    v40 = v68;
    sub_22B3F64C4();
    sub_22B3F64E4();
    sub_22B3B78C8(v37, v39);
    (*(v71 + 8))(v40, v72);
    (*(v69 + 8))(v36, v70);
    v72 = *(v31 + 8);
    v72(v19, v85);
    (*(v83 + 16))(v66, v82, v84);
    sub_22B3D07B4(MEMORY[0x277D84F90]);
    v41 = v73;
    sub_22B3F62F4();
    v42 = OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe;
    v43 = v76;
    v44 = v80;
    v45 = v78;
    (*(v76 + 32))(v80 + OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe, v41, v78);
    swift_beginAccess();
    v46 = v77;
    v47 = v75;
    v48 = v79;
    (*(v77 + 104))(v75, *MEMORY[0x277CE18E0], v79);
    sub_22B3F6374();
    swift_endAccess();
    (*(v46 + 8))(v47, v48);
    v49 = v74;
    (*(v43 + 16))(v74, v44 + v42, v45);
    sub_22B3F6304();
    LOBYTE(v48) = v50;
    (*(v43 + 8))(v49, v45);
    if ((v48 & 1) == 0)
    {
      v72(v81, v85);
LABEL_10:
      (*(v83 + 8))(v82, v84);
      return v44;
    }

    swift_beginAccess();
    v51 = v62;
    sub_22B3F6364();
    swift_endAccess();
    v52 = sub_22B3F6344();
    (*(v63 + 8))(v51, v64);
    if ((v52 & 0x8000000000000000) == 0)
    {
      if (v52)
      {
        v53 = sub_22B3F67B4();
        *(v53 + 16) = v52;
        memset_pattern16((v53 + 32), &unk_22B3F93E0, 8 * v52);
      }

      else
      {
        v53 = MEMORY[0x277D84F90];
      }

      v86 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3A0, &qword_22B3F9358);
      sub_22B3D0990(&qword_28140BFA8, &qword_27D8BE3A0, &qword_22B3F9358);
      v54 = v59;
      sub_22B3F6404();
      swift_beginAccess();
      sub_22B3F6384();
      swift_endAccess();
      v72(v81, v85);
      (*(v60 + 8))(v54, v61);
      goto LABEL_10;
    }

    __break(1u);
  }

  v86 = 0;
  v87 = 0xE000000000000000;
  sub_22B3F6AC4();

  v86 = 0xD000000000000014;
  v87 = 0x800000022B3FB9E0;
  sub_22B3C5EC8();
  v56 = sub_22B3F6C74();
  MEMORY[0x23188FF80](v56);

LABEL_14:
  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

uint64_t sub_22B3D0178(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE398, &qword_22B3F9350);
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - v6;
  v7 = sub_22B3F63A4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3A8, &qword_22B3F9360);
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe;
  swift_beginAccess();
  v17 = v8[2];
  v24 = v2;
  v17(v11, v2 + v16, v7);
  sub_22B3F63B4();
  v18 = v8[1];
  v18(v11, v7);
  v19 = sub_22B3D09D8(v15, a1, v28);
  if (v20)
  {
    (*(v29 + 8))(v15, v30);
  }

  else
  {
    v17(v11, v24 + v16, v7);
    v21 = v25;
    sub_22B3F63B4();
    v18(v11, v7);
    v22 = v27;
    sub_22B3F6424();
    (*(v26 + 8))(v21, v22);
    (*(v29 + 8))(v15, v30);
    return v31;
  }

  return v19;
}

uint64_t DomainMapDataFrame.deinit()
{
  v1 = OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe;
  v2 = sub_22B3F63A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DomainMapDataFrame.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20MCCKitCategorization18DomainMapDataFrame_dataframe;
  v2 = sub_22B3F63A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_22B3D05C4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DomainMapDataFrame();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  result = DomainMapDataFrame.init(withFileAtPath:)(a1);
  *a2 = v7;
  return result;
}

uint64_t sub_22B3D063C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0E0, &qword_22B3F7CD0);
    v3 = sub_22B3F6A84();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_22B3F6D34();

      sub_22B3F6624();
      result = sub_22B3F6D54();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          v18 = (*(v3 + 48) + 16 * v13);
          if (*v18 == v9 && v18[1] == v8)
          {
            break;
          }

          result = sub_22B3F6C84();
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        *(v5 + 8 * v14) = v16 | v15;
        v20 = (*(v3 + 48) + 16 * v13);
        *v20 = v9;
        v20[1] = v8;
        v21 = *(v3 + 16);
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v23;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_22B3D07B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3B0, &qword_22B3F93C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3B8, &unk_22B3F93D0);
    v8 = sub_22B3F6B54();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22B3D0D58(v10, v6);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22B3B79DC(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22B3F6434();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_22B3D0990(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22B3D09D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3A8, &qword_22B3F9360);
  v5 = sub_22B3F6414();
  v6 = 0;
LABEL_2:
  v7 = v5;
  while (v6 < v7)
  {
    if (__OFSUB__(v7, v6))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v5 = v6 + (v7 - v6) / 2;
    if (__OFADD__(v6, (v7 - v6) / 2))
    {
      goto LABEL_22;
    }

    sub_22B3F6424();
    if (!v15)
    {
      if (qword_28140BFC8 == -1)
      {
LABEL_16:
        v9 = sub_22B3F6464();
        __swift_project_value_buffer(v9, qword_28140D680);
        v10 = sub_22B3F6444();
        v11 = sub_22B3F68C4();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_22B3A7000, v10, v11, "Index out of bound, returning nil", v12, 2u);
          MEMORY[0x231890C40](v12, -1, -1);
        }

        return 0;
      }

LABEL_23:
      swift_once();
      goto LABEL_16;
    }

    if (v14 == a2 && v15 == a3 || (sub_22B3F6C84() & 1) != 0)
    {
      goto LABEL_14;
    }

    v8 = sub_22B3F6C84();

    if ((v8 & 1) == 0)
    {
      goto LABEL_2;
    }

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:

      return v5;
    }
  }

  return 0;
}

uint64_t type metadata accessor for DomainMapDataFrame()
{
  result = qword_28140C5A0;
  if (!qword_28140C5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22B3D0C14()
{
  result = sub_22B3F63A4();
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

uint64_t sub_22B3D0D58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3B0, &qword_22B3F93C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

MCCKitCategorization::Category_optional __swiftcall Category.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue + 4) > 0xA)
  {
    *v1 = 11;
  }

  else
  {
    *v1 = byte_22B3F952E[rawValue + 4];
  }

  return rawValue;
}

void static Category.getCategory(for:)(char *a1@<X8>)
{
  v3 = sub_22B3F65E4();
  v4 = v2;
  if (v3 == 0x4C414E4F53524550 && v2 == 0xE800000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 4;
  }

  else if (v3 == 0x4F49544F4D4F5250 && v4 == 0xEA0000000000534ELL || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 5;
  }

  else if (v3 == 0x4C4149434F53 && v4 == 0xE600000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 6;
  }

  else if (v3 == 0x544341534E415254 && v4 == 0xEC000000534E4F49 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 7;
  }

  else if (v3 == 1398228302 && v4 == 0xE400000000000000 || (sub_22B3F6C84() & 1) != 0)
  {

    v5 = 8;
  }

  else
  {
    if (v3 == 0x53524548544FLL && v4 == 0xE600000000000000 || (sub_22B3F6C84() & 1) != 0)
    {
    }

    else
    {
      if (v3 == 0xD000000000000014 && 0x800000022B3FBA60 == v4 || (sub_22B3F6C84() & 1) != 0)
      {

        v5 = 0;
        goto LABEL_5;
      }

      if (v3 == 0x41535F504F4ELL && v4 == 0xE600000000000000 || (sub_22B3F6C84() & 1) != 0)
      {

        v5 = 10;
        goto LABEL_5;
      }

      if (v3 == 0x524F525245 && v4 == 0xE500000000000000)
      {

        v5 = 1;
        goto LABEL_5;
      }

      v6 = sub_22B3F6C84();

      if (v6)
      {
        v5 = 1;
        goto LABEL_5;
      }

      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v7 = sub_22B3F6464();
      __swift_project_value_buffer(v7, qword_28140D680);

      v8 = sub_22B3F6444();
      v9 = sub_22B3F68C4();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v15 = v11;
        *v10 = 136315138;
        v12 = sub_22B3F65E4();
        v14 = sub_22B3BDABC(v12, v13, &v15);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_22B3A7000, v8, v9, "Invalid category key: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x231890C40](v11, -1, -1);
        MEMORY[0x231890C40](v10, -1, -1);
      }
    }

    v5 = 9;
  }

LABEL_5:
  *a1 = v5;
}

unint64_t static Category.getCategoryText(for:)(_BYTE *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    v2 = 0x4C414E4F53524550;
    if (v1 == 3)
    {
      v2 = 0x524F525245;
    }

    if (v1 == 2)
    {
      v2 = 0x524F525245;
    }

    v4 = 0xD000000000000014;
    if (*a1)
    {
      v4 = 0x524F525245;
    }

    v6 = *a1 <= 1u;
  }

  else
  {
    v2 = 1398228302;
    v3 = 0x53524548544FLL;
    if (v1 != 9)
    {
      v3 = 0x41535F504F4ELL;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x4F49544F4D4F5250;
    v5 = 0x4C4149434F53;
    if (v1 != 6)
    {
      v5 = 0x544341534E415254;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    v6 = *a1 <= 7u;
  }

  if (v6)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22B3D13A8()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](qword_22B3F9540[v1]);
  return sub_22B3F6D54();
}

uint64_t sub_22B3D1430()
{
  v1 = *v0;
  sub_22B3F6D34();
  MEMORY[0x231890640](qword_22B3F9540[v1]);
  return sub_22B3F6D54();
}

unint64_t sub_22B3D14B0()
{
  result = qword_28140C088[0];
  if (!qword_28140C088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28140C088);
  }

  return result;
}

unint64_t sub_22B3D1508()
{
  result = qword_27D8BE3C0;
  if (!qword_27D8BE3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE3C8, &qword_22B3F9490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE3C0);
  }

  return result;
}

void __swiftcall HashingVectorizer.init(charNgramLow:charNgramHigh:tokenNgramLow:tokenNgramHigh:buckets:)(MCCKitCategorization::HashingVectorizer *__return_ptr retstr, Swift::Int charNgramLow, Swift::Int charNgramHigh, Swift::Int tokenNgramLow, Swift::Int tokenNgramHigh, Swift::Int buckets)
{
  v12 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v13 = sub_22B3CED78(0x100000000000001ALL, 0x800000022B3FB790, 0);
  retstr->charNgramLow = charNgramLow;
  retstr->charNgramHigh = charNgramHigh;
  retstr->tokenNgramLow = tokenNgramLow;
  retstr->tokenNgramHigh = tokenNgramHigh;
  retstr->buckets = buckets;
  retstr->tokenRegexPattern._countAndFlagsBits = 0x100000000000001ALL;
  retstr->tokenRegexPattern._object = 0x800000022B3FB790;
  retstr->token_regex.super.isa = v13;
}

uint64_t sub_22B3D16D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  v11 = *(a8 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_22B3C1FE0(0, *(v11 + 2) + 1, 1, v11);
    *(a8 + 16) = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_22B3C1FE0((v13 > 1), v14 + 1, 1, v11);
  }

  v15 = 0xE000000000000000;
  if (a2)
  {
    v15 = a2;
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  *(v11 + 2) = v14 + 1;
  v17 = &v11[16 * v14];
  *(v17 + 4) = v16;
  *(v17 + 5) = v15;
  *(a8 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_22B3D17C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v8 = *v3;
  v7 = v3[1];
  v53 = v3[4];
  v9 = sub_22B3F6634();
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = MEMORY[0x277D84F90];
    v12 = v9;
    v13 = sub_22B3D238C(v9, 0);

    v51 = v13;
    v14 = sub_22B3D22C4(&v55, v13 + 4, v12, a1, a2);

    if (v14 != v12)
    {
      goto LABEL_58;
    }

    v10 = v11;
    if (v7 >= v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
    if (v7 >= v8)
    {
LABEL_4:
      if (v8 == v7)
      {
LABEL_5:
      }

      v49 = v7;
      v50 = v51[2];
      while (1)
      {
        if (v8 >= v7)
        {
          goto LABEL_54;
        }

        v16 = v50 - v8;
        if (__OFSUB__(v50, v8))
        {
          goto LABEL_55;
        }

        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_56;
        }

        if (v17 > 0)
        {
          break;
        }

LABEL_9:
        ++v8;
        v7 = v49;
        if (v8 == v49)
        {
          goto LABEL_5;
        }
      }

      if (v53)
      {
        v18 = 0;
        v19 = v51 + 5;
        v52 = v8;
        while (1)
        {
          if (v18 >= v17)
          {
            goto LABEL_46;
          }

          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_47;
          }

          v55 = v10;
          v21 = v18 + v8;
          if (__OFADD__(v18, v8))
          {
            goto LABEL_48;
          }

          if (v21 < v18)
          {
            goto LABEL_49;
          }

          v22 = v10;
          if (v18 != v21)
          {
            v23 = v19;
            if (v21 > v51[2])
            {
              goto LABEL_52;
            }

            do
            {
              v24 = *(v23 - 1);
              v25 = *v23;

              sub_22B3CB3B4(v24, v25);
              v23 += 2;
              --v8;
            }

            while (v8);
            v10 = v55;
          }

          v26 = _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(v10, 0);

          if (v26)
          {
            v27 = 1;
          }

          else
          {
            v27 = -1;
          }

          v28 = (v26 >> 1) % v53;
          v29 = *a3;
          v30 = *(*a3 + 16);
          if (v30)
          {
            v31 = sub_22B3B7BC0(v28);
            if (v32)
            {
              v30 = *(*(v29 + 56) + 8 * v31);
            }

            else
            {
              v30 = 0;
            }
          }

          v33 = v30 + v27;
          if (__OFADD__(v30, v27))
          {
            goto LABEL_50;
          }

          v34 = *a3;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v36 = *a3;
          v54 = *a3;
          v37 = sub_22B3B7BC0(v28);
          v39 = *(v36 + 16);
          v40 = (v38 & 1) == 0;
          v41 = __OFADD__(v39, v40);
          v42 = v39 + v40;
          if (v41)
          {
            goto LABEL_51;
          }

          v43 = v38;
          if (*(v36 + 24) < v42)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_39;
          }

          v48 = v37;
          sub_22B3B9908();
          v10 = v22;
          v37 = v48;
          v45 = v54;
          if (v43)
          {
LABEL_16:
            *(v45[7] + 8 * v37) = v33;
            goto LABEL_17;
          }

LABEL_40:
          v45[(v37 >> 6) + 8] |= 1 << v37;
          *(v45[6] + 8 * v37) = v28;
          *(v45[7] + 8 * v37) = v33;
          v46 = v45[2];
          v41 = __OFADD__(v46, 1);
          v47 = v46 + 1;
          if (v41)
          {
            goto LABEL_53;
          }

          v45[2] = v47;
LABEL_17:
          *a3 = v45;
          v19 += 2;
          v18 = v20;
          v8 = v52;
          if (v20 == v17)
          {
            goto LABEL_9;
          }
        }

        sub_22B3B8790(v42, isUniquelyReferenced_nonNull_native);
        v37 = sub_22B3B7BC0(v28);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_59;
        }

LABEL_39:
        v10 = v22;
        v45 = v54;
        if (v43)
        {
          goto LABEL_16;
        }

        goto LABEL_40;
      }

      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

uint64_t sub_22B3D1B30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = v3[2];
  v5 = v3[3];
  v66 = v3[4];
  v7 = v3[7];
  v8 = sub_22B3F6634();
  v9 = sub_22B3F6564();
  v10 = sub_22B3F6564();
  v11 = [v7 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v8, v10}];

  sub_22B3F6594();
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x277D84F90];
  v13 = (v12 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3D0, &qword_22B3F95F8);
  sub_22B3B4258();
  sub_22B3D2418();
  sub_22B3F69F4();

  swift_beginAccess();
  v14 = *v13;

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v15 = sub_22B3F67B4();
      *(v15 + 16) = v5;
      bzero((v15 + 32), 4 * v5);
      v16 = *(v14 + 16);
      if (!v16)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      v16 = *(v14 + 16);
      if (!v16)
      {
LABEL_52:
      }
    }

    v17 = 0;
    v18 = v6;
    v19 = v14 + 32;
    v20 = v5 - 1;
    v21 = __OFSUB__(v18, 1);
    v62 = v21;
    v58 = v15 + 4 * v18 + 28;
    v22 = 1;
    v60 = v16;
    v61 = v14;
    v59 = v14 + 32;
    v63 = v18 - 1;
    while (1)
    {
      v65 = v22;
      if (v22 >= v20)
      {
        v22 = v20;
      }

      v67 = v22;
      if (v17 >= *(v14 + 16))
      {
        goto LABEL_61;
      }

      v23 = sub_22B3C20EC(*(v19 + 16 * v17), *(v19 + 16 * v17 + 8));
      v24 = _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(v23, 0);

      v25 = (v15 + 4 * v5 + 24);
      v26 = v20;
      if (v5 >= 3)
      {
        while (v5 > v26)
        {
          v31 = v26 - 2;
          v32 = *(v15 + 16);
          if (v31 >= v32)
          {
            goto LABEL_54;
          }

          v26 = v31 + 1;
          if (v26 >= v32)
          {
            goto LABEL_55;
          }

          LODWORD(v33) = v24 ^ __ROR4__(*(v25 - 1), 9);
          HIDWORD(v33) = v33;
          *v25-- = (v33 >> 5) + v24;
          if (v26 == 1)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

LABEL_15:
      if (!*(v15 + 16))
      {
        goto LABEL_63;
      }

      *(v15 + 32) = v24;
      if (v62)
      {
        goto LABEL_64;
      }

      v27 = v17 + 1;
      if (v27 >= v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = v27;
      }

      if (v28 < v63)
      {
        goto LABEL_65;
      }

      v64 = v27;
      if (v63 != v28)
      {
        break;
      }

LABEL_10:
      v22 = v65 + 1;
      v14 = v61;
      v17 = v64;
      v20 = v5 - 1;
      v19 = v59;
      if (v64 == v60)
      {
        goto LABEL_52;
      }
    }

    if (v63 >= v28)
    {
      goto LABEL_66;
    }

    if (v66)
    {
      v29 = v58;
      v30 = v63;
      while (1)
      {
        if ((v30 & 0x8000000000000000) != 0)
        {
          goto LABEL_56;
        }

        if (v30 >= *(v15 + 16))
        {
          goto LABEL_57;
        }

        v34 = *v29;
        if (v34)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        v36 = (v34 >> 1) % v66;
        v37 = *a3;
        v38 = *(*a3 + 16);
        if (v38)
        {
          v39 = sub_22B3B7BC0(v36);
          if (v40)
          {
            v38 = *(*(v37 + 56) + 8 * v39);
          }

          else
          {
            v38 = 0;
          }
        }

        v41 = __OFADD__(v38, v35);
        v42 = v38 + v35;
        if (v41)
        {
          goto LABEL_58;
        }

        v43 = *a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *a3;
        v68 = *a3;
        v46 = sub_22B3B7BC0(v36);
        v48 = *(v45 + 16);
        v49 = (v47 & 1) == 0;
        v41 = __OFADD__(v48, v49);
        v50 = v48 + v49;
        if (v41)
        {
          goto LABEL_59;
        }

        v51 = v47;
        if (*(v45 + 24) < v50)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_47;
        }

        v56 = v46;
        sub_22B3B9908();
        v46 = v56;
        v53 = v68;
        if (v51)
        {
LABEL_30:
          *(v53[7] + 8 * v46) = v42;
          goto LABEL_31;
        }

LABEL_48:
        v53[(v46 >> 6) + 8] |= 1 << v46;
        *(v53[6] + 8 * v46) = v36;
        *(v53[7] + 8 * v46) = v42;
        v54 = v53[2];
        v41 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v41)
        {
          goto LABEL_60;
        }

        v53[2] = v55;
LABEL_31:
        ++v30;
        *a3 = v53;
        ++v29;
        if (v67 == v30)
        {
          goto LABEL_10;
        }
      }

      sub_22B3B8790(v50, isUniquelyReferenced_nonNull_native);
      v46 = sub_22B3B7BC0(v36);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_68;
      }

LABEL_47:
      v53 = v68;
      if (v51)
      {
        goto LABEL_30;
      }

      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_68:
  result = sub_22B3F6CC4();
  __break(1u);
  return result;
}

uint64_t sub_22B3D204C()
{
  v1 = v0[1];
  v24 = *v0;
  v25 = v1;
  v2 = *(v0 + 4);
  v22 = *(v0 + 40);
  v23 = *(v0 + 7);
  v21 = sub_22B3CBDDC(MEMORY[0x277D84F90]);
  v3 = sub_22B3F65D4();
  v5 = v4;
  v17 = *v0;
  v18 = v0[1];
  v19 = *(v0 + 40);
  v20 = *(v0 + 7);
  sub_22B3D17C4(v3, v4, &v21);
  sub_22B3D1B30(v3, v5, &v21);

  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2)
    {
      v7 = sub_22B3F67B4();
      *(v7 + 16) = v2;
      bzero((v7 + 32), 8 * v2);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v8 = 0;
    result = v21;
    v9 = 1 << *(v21 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v21 + 64;
    v12 = v10 & *(v21 + 64);
    v13 = (v9 + 63) >> 6;
    if (v12)
    {
      while (1)
      {
        v14 = v8;
LABEL_12:
        v15 = (v14 << 9) | (8 * __clz(__rbit64(v12)));
        v16 = *(*(result + 48) + v15);
        if ((v16 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v16 >= *(v7 + 16))
        {
          goto LABEL_19;
        }

        v12 &= v12 - 1;
        *(v7 + 32 + 8 * v16) = *(*(result + 56) + v15);
        v8 = v14;
        if (!v12)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      while (1)
      {
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v14 >= v13)
        {

          return v7;
        }

        v12 = *(v11 + 8 * v14);
        ++v8;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22B3D221C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B3D2264(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_22B3D22C4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_22B3F6694();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22B3D238C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3D8, &unk_22B3F9600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_22B3D2418()
{
  result = qword_28140BF88;
  if (!qword_28140BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D8BE3D0, &qword_22B3F95F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28140BF88);
  }

  return result;
}

void *GuaranteeListRule.__allocating_init(fromSenderCategoryFile:)(uint64_t a1)
{
  v2 = sub_22B3F6184();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  (*(v3 + 16))(v6, a1, v2);
  v8 = type metadata accessor for DomainMapDataFrame();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = DomainMapDataFrame.init(withFileAtPath:)(v6);
  v7[5] = v8;
  v7[6] = &protocol witness table for DomainMapDataFrame;
  v7[2] = v11;
  (*(v3 + 8))(a1, v2);
  return v7;
}

uint64_t GuaranteeListRule.init(fromSenderCategoryFile:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22B3F6184();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = type metadata accessor for DomainMapDataFrame();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = DomainMapDataFrame.init(withFileAtPath:)(v9);
  v17 = v10;
  v18 = &protocol witness table for DomainMapDataFrame;
  *&v16 = v13;
  (*(v5 + 8))(a1, v4);
  sub_22B3CEEB8(&v16, v2 + 16);
  return v2;
}

uint64_t GuaranteeListRule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_22B3D2790()
{
  v0 = sub_22B3F6464();
  __swift_allocate_value_buffer(v0, qword_28140D680);
  __swift_project_value_buffer(v0, qword_28140D680);

  return sub_22B3F6454();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t static MurmurHash3.getMurmurHash3(text:seed:)(uint64_t a1, unint64_t a2, int a3)
{
  v4 = sub_22B3C20EC(a1, a2);
  v5 = _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(v4, a3);

  return v5;
}

unint64_t sub_22B3D28CC(unint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 16);
  v8 = v7 >= result;
  v9 = v7 - result;
  if (!v8)
  {
    v9 = 0;
  }

  while (v9 != v5)
  {
    if (v5 == 0x1000000000000000)
    {
      goto LABEL_17;
    }

    if (v2 < -32 || v2 > 32)
    {
LABEL_4:
      if (v4)
      {
        return v6;
      }

      goto LABEL_5;
    }

    v10 = *(result + a2 + 32 + v5);
    if (v2 < 0)
    {
      v6 = (v10 >> (v3 & 0x18)) | v6;
      if (v4)
      {
        return v6;
      }
    }

    else
    {
      if (v2 == 32)
      {
        goto LABEL_4;
      }

      v6 = (v10 << (v2 & 0x18)) | v6;
      if (v4)
      {
        return v6;
      }
    }

LABEL_5:
    v4 = v5 == 2;
    v3 -= 8;
    v2 += 8;
    if (__OFADD__(result, ++v5))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s20MCCKitCategorization11MurmurHash3V03getcD05bytes4seeds6UInt32VSays5UInt8VG_AHtFZ_0(uint64_t a1, int a2)
{
  v4 = *(a1 + 16);
  if (v4 >= 4)
  {
    v5 = 0;
    do
    {
      v6 = sub_22B3D28CC(v5, a1);
      HIDWORD(v7) = (461845907 * ((380141568 * v6) | ((-862048943 * v6) >> 17))) ^ a2;
      LODWORD(v7) = HIDWORD(v7);
      a2 = 5 * (v7 >> 19) - 430675100;
      v5 += 4;
    }

    while (4 * (v4 >> 2) != v5);
  }

  if ((v4 & 0x7FFFFFFFFFFFFFFCLL) == v4)
  {
    goto LABEL_10;
  }

  v8 = v4 & 3;
  if ((v4 & 3) == 0)
  {
    goto LABEL_13;
  }

  v9 = a1 + (v4 & 0x7FFFFFFFFFFFFFFCLL) + 32;
  v10 = *(v9 + v8 - 1);
  if (v8 != 1)
  {
    v10 = *(v9 + v8 - 2) | (v10 << 8);
    if (v8 != 2)
    {
      v10 = *(v9 + v8 - 3) | (v10 << 8);
    }
  }

  while (1)
  {
    a2 ^= 461845907 * ((380141568 * v10) | ((-862048943 * v10) >> 17));
LABEL_10:
    if (!HIDWORD(v4))
    {
      break;
    }

    __break(1u);
LABEL_13:
    v10 = 0;
  }

  v11 = -2048144789 * (a2 ^ v4 ^ ((a2 ^ v4) >> 16));
  return (-1028477387 * (v11 ^ (v11 >> 13))) ^ ((-1028477387 * (v11 ^ (v11 >> 13))) >> 16);
}

uint64_t sub_22B3D2AE0(uint64_t a1)
{
  if ((a1 - 63) >= 0xFFFFFFFFFFFFFFC3)
  {
    if (a1 == 12)
    {
      return 1;
    }

    else
    {
      return 5;
    }
  }

  if ((a1 - 85) > 0xFFFFFFFFFFFFFFE9)
  {
    return 7;
  }

  if ((a1 - 105) > 0xFFFFFFFFFFFFFFEBLL)
  {
    return 4;
  }

  if ((a1 - 112) > 0xFFFFFFFFFFFFFFF8)
  {
    return 2;
  }

  if ((a1 - 166) > 0xFFFFFFFFFFFFFFC9)
  {
    return 0;
  }

  if ((a1 - 202) > 0xFFFFFFFFFFFFFFDBLL)
  {
    return 4;
  }

  if ((a1 - 221) >= 0xFFFFFFFFFFFFFFEDLL)
  {
    if (a1 == 216)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  if ((a1 - 243) > 0xFFFFFFFFFFFFFFE9)
  {
    return 1;
  }

  if ((a1 - 273) > 0xFFFFFFFFFFFFFFE1)
  {
    return 5;
  }

  if ((a1 - 324) > 0xFFFFFFFFFFFFFFCCLL)
  {
    return 6;
  }

  if ((a1 - 342) > 0xFFFFFFFFFFFFFFEDLL)
  {
    return 5;
  }

  if ((a1 - 378) > 0xFFFFFFFFFFFFFFDBLL)
  {
    return 4;
  }

  if ((a1 - 421) > 0xFFFFFFFFFFFFFFD4)
  {
    return 0;
  }

  if ((a1 - 467) > 0xFFFFFFFFFFFFFFD1)
  {
    return 5;
  }

  if ((a1 - 489) > 0xFFFFFFFFFFFFFFE9)
  {
    return 4;
  }

  if ((a1 - 527) > 0xFFFFFFFFFFFFFFD9)
  {
    return 0;
  }

  if ((a1 - 565) > 0xFFFFFFFFFFFFFFD9)
  {
    return 2;
  }

  if ((a1 - 606) > 0xFFFFFFFFFFFFFFD6)
  {
    return 5;
  }

  if ((a1 - 621) < 0xFFFFFFFFFFFFFFF1)
  {
    if (a1 >= 623)
    {
      if (a1 == 623)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (a1 == 610)
  {
    return 7;
  }

  else
  {
    return 3;
  }
}

uint64_t DecisionResult.blackPearlVersion.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[10];
  v25 = v1[11];
  v26 = v2;
  v4 = v1[12];
  v27[0] = v1[13];
  *(v27 + 9) = *(v1 + 217);
  v5 = v1[8];
  v7 = v1[6];
  v21 = v1[7];
  v6 = v21;
  v22 = v5;
  v8 = v1[8];
  v9 = v1[10];
  v23 = v1[9];
  v10 = v23;
  v24 = v9;
  v11 = v1[4];
  v18[0] = v1[3];
  v18[1] = v11;
  v12 = v1[6];
  v14 = v1[3];
  v13 = v1[4];
  v19 = v1[5];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[13];
  *(a1 + 169) = *(v1 + 217);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return sub_22B3A9F54(v18, &v17);
}

__n128 sub_22B3D2DA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22B3BB2B8(&v12);
  v4 = v13;
  v5 = v14;
  result = v12;
  *a2 = 16842752;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a2 + 8) = _Q1;
  *(a2 + 24) = _Q1;
  *(a2 + 40) = a1;
  *(a2 + 48) = 16718;
  *(a2 + 56) = 0xE200000000000000;
  *(a2 + 64) = 16718;
  *(a2 + 72) = 0xE200000000000000;
  *(a2 + 80) = 16718;
  *(a2 + 88) = 0xE200000000000000;
  *(a2 + 96) = 16718;
  *(a2 + 104) = 0xE200000000000000;
  *(a2 + 112) = 16718;
  *(a2 + 120) = 0xE200000000000000;
  *(a2 + 128) = xmmword_22B3F96E0;
  *(a2 + 144) = xmmword_22B3F96E0;
  *(a2 + 160) = -1;
  *(a2 + 168) = -1;
  *(a2 + 176) = xmmword_22B3F96E0;
  *(a2 + 192) = xmmword_22B3F96E0;
  *(a2 + 208) = result;
  *(a2 + 224) = v4;
  *(a2 + 232) = v5;
  return result;
}

uint64_t static DecisionResultBuilder.buildUnsupportedLanguageResult(reasonCodes:version:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[9];
  v5 = a2[7];
  v32 = a2[8];
  v4 = v32;
  v33 = v3;
  v6 = a2[9];
  v34[0] = a2[10];
  *(v34 + 9) = *(a2 + 169);
  v7 = a2[5];
  v9 = a2[3];
  v28 = a2[4];
  v8 = v28;
  v29 = v7;
  v10 = a2[5];
  v11 = a2[7];
  v30 = a2[6];
  v12 = v30;
  v31 = v11;
  v13 = a2[1];
  v25[0] = *a2;
  v25[1] = v13;
  v14 = a2[3];
  v16 = *a2;
  v15 = a2[1];
  v26 = a2[2];
  v17 = v26;
  v27 = v14;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 8) = _Q0;
  *(a3 + 24) = _Q0;
  *(a3 + 176) = v4;
  *(a3 + 192) = v6;
  *(a3 + 208) = a2[10];
  *(a3 + 217) = *(a2 + 169);
  *(a3 + 112) = v8;
  *(a3 + 128) = v10;
  *(a3 + 144) = v12;
  *(a3 + 160) = v5;
  *(a3 + 48) = v16;
  *(a3 + 64) = v15;
  *a3 = 0;
  *(a3 + 40) = a1;
  *(a3 + 80) = v17;
  *(a3 + 96) = v9;

  return sub_22B3A9F54(v25, &v24);
}

uint64_t sub_22B3D2F2C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, int8x8_t a4@<D0>, int8x8_t a5@<D1>)
{
  v5 = a2[9];
  v7 = a2[7];
  v34 = a2[8];
  v6 = v34;
  v35 = v5;
  v8 = a2[9];
  v36[0] = a2[10];
  *(v36 + 9) = *(a2 + 169);
  v9 = a2[5];
  v11 = a2[3];
  v30 = a2[4];
  v10 = v30;
  v31 = v9;
  v12 = a2[5];
  v13 = a2[7];
  v32 = a2[6];
  v14 = v32;
  v33 = v13;
  v15 = a2[1];
  v27[0] = *a2;
  v27[1] = v15;
  v16 = a2[3];
  v18 = *a2;
  v17 = a2[1];
  v28 = a2[2];
  v19 = v28;
  v29 = v16;
  *a3 = vuzp1_s8(a5, a4).u32[0];
  *(a3 + 16) = *&a4;
  __asm { FMOV            V0.2D, #1.0 }

  *(a3 + 24) = _Q0;
  *(a3 + 176) = v6;
  *(a3 + 192) = v8;
  *(a3 + 208) = a2[10];
  *(a3 + 217) = *(a2 + 169);
  *(a3 + 112) = v10;
  *(a3 + 128) = v12;
  *(a3 + 144) = v14;
  *(a3 + 160) = v7;
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 40) = a1;
  *(a3 + 48) = v18;
  *(a3 + 64) = v17;
  *(a3 + 80) = v19;
  *(a3 + 96) = v11;

  return sub_22B3A9F54(v27, &v26);
}

uint64_t sub_22B3D4294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE150, &qword_22B3F7F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22B3D42FC()
{
  result = qword_28140BF40;
  if (!qword_28140BF40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28140BF40);
  }

  return result;
}

__n128 __swift_memcpy233_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_22B3D43AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22B3D43F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22B3D44C0(uint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for BloomFilterSerDe();
  static BloomFilterSerDe.readFromFile(withFilePath:)(&v7);
  v3 = sub_22B3F6184();
  (*(*(v3 - 8) + 8))(a1, v3);
  v4 = v9;
  v5 = v10;
  *(v2 + 16) = v7;
  *(v2 + 24) = v8;
  *(v2 + 40) = v4;
  *(v2 + 48) = v5;
  return v2;
}

__n128 FinalRule.__allocating_init(thresholds:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  result = *a1;
  v5 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v5;
  return result;
}

uint64_t sub_22B3D45CC(uint64_t a1)
{
  type metadata accessor for BloomFilterSerDe();
  static BloomFilterSerDe.readFromFile(withFilePath:)(&v7);
  v3 = sub_22B3F6184();
  (*(*(v3 - 8) + 8))(a1, v3);
  v4 = v9;
  v5 = v10;
  *(v1 + 16) = v7;
  *(v1 + 24) = v8;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  return v1;
}

uint64_t CommerceSenderRule.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CommerceSenderRule.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_22B3D46CC(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701147238;
  v4 = 0xE400000000000000;
  v5 = 1937204590;
  if (*v1 != 2)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 7761767;
    v2 = 0xE300000000000000;
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

uint64_t FinalRule.init(thresholds:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = *(a1 + 80);
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return v1;
}

uint64_t sub_22B3D4758(char *a1, uint64_t a2, uint64_t a3, double a4)
{
  if ((a2 - 430) >= 0xFFFFFFFFFFFFFFF7)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if ((a2 - 406) >= 0xE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if ((a2 - 380) < 3 || a2 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if ((a3 - 430) >= 0xFFFFFFFFFFFFFFF7)
  {
    v9 = 2;
  }

  else
  {
    v9 = 3;
  }

  if ((a3 - 406) >= 0xE)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if (a3 == -1)
  {
    v10 = 0;
  }

  if ((a3 - 380) >= 3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      if (v4[3] >= a4)
      {
        v12 = 1;
        v13 = 25;
        goto LABEL_41;
      }
    }

    else
    {
      v15 = a1;
      if (v11)
      {
        v16 = sub_22B3F6C84();

        if ((v16 & 1) == 0)
        {
          a1 = v15;
          if (v4[10] > a4)
          {
            v12 = 1;
            v13 = 26;
            goto LABEL_41;
          }

          goto LABEL_40;
        }
      }

      else
      {
      }

      a1 = v15;
      if (v4[4] >= a4)
      {
        v12 = 1;
        v13 = 23;
        goto LABEL_41;
      }
    }

LABEL_40:
    v12 = 0;
    v13 = 14;
    goto LABEL_41;
  }

  if (v8)
  {
    if (v4[5] >= a4)
    {
      v12 = 1;
      v13 = 24;
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v4[2] < a4)
  {
    goto LABEL_40;
  }

  v12 = 1;
  v13 = 22;
LABEL_41:
  *a1 = v13;
  return v12;
}

uint64_t ReasonCode.rawValue.getter()
{
  result = 5854019;
  switch(*v0)
  {
    case 1:
      result = 5854037;
      break;
    case 2:
      result = 4541768;
      break;
    case 3:
      result = 5854787;
      break;
    case 4:
      result = 4408658;
      break;
    case 5:
      result = 5261654;
      break;
    case 6:
      result = 5132099;
      break;
    case 7:
      result = 4805200;
      break;
    case 8:
      result = 4805196;
      break;
    case 9:
      result = 4411980;
      break;
    case 0xA:
      result = 5521731;
      break;
    case 0xB:
      result = 5260622;
      break;
    case 0xC:
      result = 5129550;
      break;
    case 0xD:
      result = 5195086;
      break;
    case 0xE:
      result = 1162760014;
      break;
    case 0xF:
      result = 5002069;
      break;
    case 0x10:
      result = 5852231;
      break;
    case 0x11:
      result = 5262675;
      break;
    case 0x12:
      result = 4410707;
      break;
    case 0x13:
      result = 5067604;
      break;
    case 0x14:
      result = 4403792;
      break;
    case 0x15:
      result = 4474446;
      break;
    case 0x16:
      result = 4409428;
      break;
    case 0x17:
      result = 4540500;
      break;
    case 0x18:
      result = 5261396;
      break;
    case 0x19:
      result = 5130324;
      break;
    case 0x1A:
      result = 5195860;
      break;
    case 0x1B:
      result = 5263182;
      break;
    case 0x1C:
      result = 5456211;
      break;
    case 0x1D:
      result = 4543046;
      break;
    case 0x1E:
      result = 4280403;
      break;
    case 0x1F:
      result = 5394256;
      break;
    case 0x20:
      result = 4281417;
      break;
    case 0x21:
      result = 5391687;
      break;
    case 0x22:
      result = 5132362;
      break;
    case 0x23:
      result = 4802627;
      break;
    case 0x24:
      result = 5523523;
      break;
    case 0x25:
      result = 5394251;
      break;
    case 0x26:
      result = 4673093;
      break;
    case 0x27:
      result = 4540758;
      break;
    case 0x28:
      result = 5395796;
      break;
    case 0x29:
      result = 5526852;
      break;
    case 0x2A:
      result = 4544339;
      break;
    case 0x2B:
      result = 5394254;
      break;
    case 0x2C:
      result = 5128516;
      break;
    case 0x2D:
      result = 4281157;
      break;
    case 0x2E:
      result = 5457221;
      break;
    case 0x2F:
      result = 5066309;
      break;
    case 0x30:
      result = 5066053;
      break;
    case 0x31:
      result = 4541765;
      break;
    default:
      return result;
  }

  return result;
}

MCCKitCategorization::ReasonCode_optional __swiftcall ReasonCode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22B3F6CA4();

  v5 = 0;
  v6 = 32;
  switch(v3)
  {
    case 0:
      goto LABEL_49;
    case 1:
      v5 = 1;
      goto LABEL_49;
    case 2:
      v5 = 2;
      goto LABEL_49;
    case 3:
      v5 = 3;
      goto LABEL_49;
    case 4:
      v5 = 4;
      goto LABEL_49;
    case 5:
      v5 = 5;
      goto LABEL_49;
    case 6:
      v5 = 6;
      goto LABEL_49;
    case 7:
      v5 = 7;
      goto LABEL_49;
    case 8:
      v5 = 8;
      goto LABEL_49;
    case 9:
      v5 = 9;
      goto LABEL_49;
    case 10:
      v5 = 10;
      goto LABEL_49;
    case 11:
      v5 = 11;
      goto LABEL_49;
    case 12:
      v5 = 12;
      goto LABEL_49;
    case 13:
      v5 = 13;
      goto LABEL_49;
    case 14:
      v5 = 14;
      goto LABEL_49;
    case 15:
      v5 = 15;
      goto LABEL_49;
    case 16:
      v5 = 16;
      goto LABEL_49;
    case 17:
      v5 = 17;
      goto LABEL_49;
    case 18:
      v5 = 18;
      goto LABEL_49;
    case 19:
      v5 = 19;
      goto LABEL_49;
    case 20:
      v5 = 20;
      goto LABEL_49;
    case 21:
      v5 = 21;
      goto LABEL_49;
    case 22:
      v5 = 22;
      goto LABEL_49;
    case 23:
      v5 = 23;
      goto LABEL_49;
    case 24:
      v5 = 24;
      goto LABEL_49;
    case 25:
      v5 = 25;
      goto LABEL_49;
    case 26:
      v5 = 26;
      goto LABEL_49;
    case 27:
      v5 = 27;
      goto LABEL_49;
    case 28:
      v5 = 28;
      goto LABEL_49;
    case 29:
      v5 = 29;
      goto LABEL_49;
    case 30:
      v5 = 30;
      goto LABEL_49;
    case 31:
      v5 = 31;
LABEL_49:
      v6 = v5;
      break;
    case 32:
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    default:
      v6 = 50;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t static ReasonCode.getStringReason(reasonCodes:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v17 = MEMORY[0x277D84F90];
  sub_22B3B791C(0, v1, 0);
  v3 = v17;
  v4 = (a1 + 32);
  v5 = *(v17 + 16);
  v6 = 16 * v5;
  do
  {
    v7 = *v4++;
    v8 = ReasonCode.rawValue.getter();
    v18 = v3;
    v10 = *(v3 + 24);
    v11 = v5 + 1;
    if (v5 >= v10 >> 1)
    {
      v13 = v8;
      v14 = v9;
      sub_22B3B791C((v10 > 1), v11, 1);
      v9 = v14;
      v8 = v13;
      v3 = v18;
    }

    *(v3 + 16) = v11;
    v12 = v3 + v6;
    *(v12 + 32) = v8;
    *(v12 + 40) = v9;
    v6 += 16;
    v5 = v11;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3F0, &qword_22B3F98A0);
  sub_22B3D0990(&qword_28140BFB0, &qword_27D8BE3F0, &qword_22B3F98A0);
  v15 = sub_22B3F6544();

  return v15;
}

uint64_t sub_22B3D50B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE410, &qword_22B3F9A78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F9890;
  v1 = *MEMORY[0x277CD8708];
  *(inited + 32) = *MEMORY[0x277CD8708];
  *(inited + 40) = 38;
  v34 = *MEMORY[0x277CD8718];
  *(inited + 48) = *MEMORY[0x277CD8718];
  *(inited + 56) = 29;
  v33 = *MEMORY[0x277CD8810];
  *(inited + 64) = *MEMORY[0x277CD8810];
  *(inited + 72) = 30;
  v32 = *MEMORY[0x277CD87D8];
  *(inited + 80) = *MEMORY[0x277CD87D8];
  *(inited + 88) = 31;
  v31 = *MEMORY[0x277CD8768];
  *(inited + 96) = *MEMORY[0x277CD8768];
  *(inited + 104) = 32;
  v30 = *MEMORY[0x277CD8728];
  *(inited + 112) = *MEMORY[0x277CD8728];
  *(inited + 120) = 33;
  v29 = *MEMORY[0x277CD8770];
  *(inited + 128) = *MEMORY[0x277CD8770];
  *(inited + 136) = 34;
  v2 = *MEMORY[0x277CD87F8];
  *(inited + 144) = *MEMORY[0x277CD87F8];
  *(inited + 152) = 35;
  v3 = *MEMORY[0x277CD8840];
  *(inited + 160) = *MEMORY[0x277CD8840];
  *(inited + 168) = 36;
  v4 = *MEMORY[0x277CD8790];
  *(inited + 176) = *MEMORY[0x277CD8790];
  *(inited + 184) = 37;
  v5 = *MEMORY[0x277CD8868];
  *(inited + 192) = *MEMORY[0x277CD8868];
  *(inited + 200) = 39;
  v6 = *MEMORY[0x277CD8848];
  *(inited + 208) = *MEMORY[0x277CD8848];
  *(inited + 216) = 40;
  v7 = *MEMORY[0x277CD8700];
  *(inited + 224) = *MEMORY[0x277CD8700];
  *(inited + 232) = 41;
  v8 = *MEMORY[0x277CD8818];
  *(inited + 240) = *MEMORY[0x277CD8818];
  *(inited + 248) = 42;
  v9 = *MEMORY[0x277CD87C0];
  *(inited + 256) = *MEMORY[0x277CD87C0];
  *(inited + 264) = 43;
  v10 = *MEMORY[0x277CD86F8];
  *(inited + 272) = *MEMORY[0x277CD86F8];
  *(inited + 280) = 44;
  v11 = v1;
  v12 = v34;
  v13 = v33;
  v14 = v32;
  v15 = v31;
  v16 = v30;
  v17 = v29;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = sub_22B3CC0C4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE418, &qword_22B3F9A80);
  result = swift_arrayDestroy();
  off_28140D260 = v27;
  return result;
}

uint64_t static ReasonCode.languageReasonCodeMap.getter()
{
  if (qword_28140D258 != -1)
  {
    swift_once();
  }
}

uint64_t sub_22B3D53C0(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ReasonCode.rawValue.getter();
  v4 = v3;
  if (v2 == ReasonCode.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22B3F6C84();
  }

  return v7 & 1;
}

uint64_t sub_22B3D545C()
{
  v1 = *v0;
  sub_22B3F6D34();
  ReasonCode.rawValue.getter();
  sub_22B3F6624();

  return sub_22B3F6D54();
}

uint64_t sub_22B3D54C4()
{
  v2 = *v0;
  ReasonCode.rawValue.getter();
  sub_22B3F6624();
}

uint64_t sub_22B3D5528()
{
  v1 = *v0;
  sub_22B3F6D34();
  ReasonCode.rawValue.getter();
  sub_22B3F6624();

  return sub_22B3F6D54();
}

uint64_t sub_22B3D5598@<X0>(uint64_t *a1@<X8>)
{
  result = ReasonCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_22B3D55D4()
{
  result = qword_27D8BE3F8;
  if (!qword_27D8BE3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8BE3F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReasonCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCF)
  {
    goto LABEL_17;
  }

  if (a2 + 49 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 49) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 49;
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

      return (*a1 | (v4 << 8)) - 49;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 49;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x32;
  v8 = v6 - 50;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReasonCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 49 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 49) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCF)
  {
    v4 = 0;
  }

  if (a2 > 0xCE)
  {
    v5 = ((a2 - 207) >> 8) + 1;
    *result = a2 + 49;
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
    *result = a2 + 49;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

_OWORD *DecisionStrategy.__allocating_init(hashing:modelLoader:nerRule:domainHelper:tsSubjectMap:tsSenderMap:catMap:saasSenderMap:mbertDomainMap:commerceSenderRule:guaranteeList:finalRule:)(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, __int128 a10, uint64_t a11)
{
  v29 = a5[4];
  v30 = a5[3];
  v32 = __swift_mutable_project_boxed_opaque_existential_1(a5, v30);
  v14 = a6[3];
  v27 = a6[4];
  v31 = __swift_mutable_project_boxed_opaque_existential_1(a6, v14);
  v15 = a7[3];
  v25 = a7[4];
  v28 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  v16 = a8[3];
  v17 = a8[4];
  v26 = __swift_mutable_project_boxed_opaque_existential_1(a8, v16);
  v19 = a9[3];
  v18 = a9[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a9, v19);
  *(&v24 + 1) = v18;
  *(&v23 + 1) = v29;
  *&v24 = v25;
  *&v23 = v17;
  v21 = sub_22B3E2C44(a1, a2, a3, a4, v32, v31, v28, v26, v20, a10, a11, v35, v16, v30, v15, v19, v14, v23, v24, v27);
  __swift_destroy_boxed_opaque_existential_0(a9);
  __swift_destroy_boxed_opaque_existential_0(a8);
  __swift_destroy_boxed_opaque_existential_0(a7);
  __swift_destroy_boxed_opaque_existential_0(a6);
  __swift_destroy_boxed_opaque_existential_0(a5);
  return v21;
}

unint64_t sub_22B3D5918(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_22B3F6764();
  }

  __break(1u);
  return result;
}

uint64_t PredictionRequest.senderEmail.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PredictionRequest.senderEmail.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PredictionRequest.receiverEmail.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PredictionRequest.emailSubject.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

_OWORD *DecisionStrategy.init(hashing:modelLoader:nerRule:domainHelper:tsSubjectMap:tsSenderMap:catMap:saasSenderMap:mbertDomainMap:commerceSenderRule:guaranteeList:finalRule:)(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, __int128 a10, uint64_t a11)
{
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v62 = a1;
  v63 = a2;
  v61 = a10;
  v14 = a5[3];
  v59 = a5[4];
  v60 = a11;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a5, v14);
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v17);
  v58 = a6;
  v20 = a6[3];
  v56 = a6[4];
  v21 = __swift_mutable_project_boxed_opaque_existential_1(a6, v20);
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  v27 = a7[3];
  v54 = a7[4];
  v55 = a7;
  v28 = __swift_mutable_project_boxed_opaque_existential_1(a7, v27);
  v29 = *(*(v27 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32, v30);
  v34 = a8[3];
  v52 = a8[4];
  v53 = a8;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(a8, v34);
  v36 = *(*(v34 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v51 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v40 + 16))(v39, v37);
  v51 = a9;
  v42 = a9[3];
  v41 = a9[4];
  v43 = __swift_mutable_project_boxed_opaque_existential_1(a9, v42);
  v44 = *(*(v42 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v51 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v48 + 16))(v47, v45);
  v49 = sub_22B3E2534(v62, v63, v65, v66, v57, v25, v32, v39, v47, v61, *(&v61 + 1), v60, v64, v34, v14, v27, v42, v20, v52, v59, v54, v41, v56);
  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v53);
  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v58);
  __swift_destroy_boxed_opaque_existential_0(v67);
  return v49;
}

uint64_t DecisionStrategy.deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v3 = type metadata accessor for BlackPearlModel(0);
  v4 = *(v3 + 32);
  v54 = *(v2 + v4);
  *(v2 + v4) = 0;
  *(v2 + *(v3 + 36)) = 0;
  v5 = type metadata accessor for BlackPearlLevels();
  v6 = v2 + v5[7];
  v7 = *(v3 + 32);
  v8 = *(v6 + v7);
  *(v6 + v7) = 0;
  *(v6 + *(v3 + 36)) = 0;
  v9 = v2 + v5[8];
  v10 = *(v3 + 32);
  v11 = *(v9 + v10);
  *(v9 + v10) = 0;
  *(v9 + *(v3 + 36)) = 0;
  v12 = v2 + v5[5];
  v13 = *(v3 + 32);
  v14 = *(v12 + v13);
  *(v12 + v13) = 0;
  *(v12 + *(v3 + 36)) = 0;
  v15 = v2 + v5[9];
  v16 = *(v3 + 32);
  v17 = *(v15 + v16);
  *(v15 + v16) = 0;
  *(v15 + *(v3 + 36)) = 0;
  v18 = v2 + v5[6];
  v19 = *(v3 + 32);
  v20 = *(v18 + v19);
  *(v18 + v19) = 0;
  *(v18 + *(v3 + 36)) = 0;
  v21 = v2 + v5[10];
  v22 = *(v3 + 32);
  v23 = *(v21 + v22);
  *(v21 + v22) = 0;
  *(v21 + *(v3 + 36)) = 0;

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v24 = sub_22B3F6464();
  __swift_project_value_buffer(v24, qword_28140D680);

  v25 = sub_22B3F6444();
  v26 = sub_22B3F68B4();

  if (os_log_type_enabled(v25, v26))
  {
    v53 = v26;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138413826;
    v29 = *(v2 + *(v3 + 32));
    *(v27 + 4) = v29;
    *v28 = v29;
    *(v27 + 12) = 2112;
    v52 = *(v2 + v5[7] + *(v3 + 32));
    *(v27 + 14) = v52;
    v28[1] = v52;
    *(v27 + 22) = 2112;
    v30 = *(v2 + v5[8] + *(v3 + 32));
    *(v27 + 24) = v30;
    v28[2] = v30;
    *(v27 + 32) = 2112;
    v31 = *(v2 + v5[5] + *(v3 + 32));
    *(v27 + 34) = v31;
    v28[3] = v31;
    *(v27 + 42) = 2112;
    v55 = v25;
    v32 = *(v2 + v5[9] + *(v3 + 32));
    *(v27 + 44) = v32;
    v28[4] = v32;
    *(v27 + 52) = 2112;
    v33 = *(v2 + v5[6] + *(v3 + 32));
    *(v27 + 54) = v33;
    v28[5] = v33;
    *(v27 + 62) = 2112;
    v34 = *(v2 + v5[10] + *(v3 + 32));
    *(v27 + 64) = v34;
    v28[6] = v34;
    v35 = v29;
    v36 = v52;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v25 = v55;
    v40 = v33;
    v41 = v34;
    _os_log_impl(&dword_22B3A7000, v55, v53, "Destroyed DecisionStrategy model  %@, %@, %@, %@, %@, %@, %@", v27, 0x48u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE078, &qword_22B3F8C50);
    swift_arrayDestroy();
    MEMORY[0x231890C40](v28, -1, -1);
    MEMORY[0x231890C40](v27, -1, -1);
  }

  v42 = *(v1 + 64);

  sub_22B3E3088(v2);
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader));
  v43 = *(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_nerRule);

  v44 = *(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_domainHelper);

  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSubjectMap));
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsSenderMap));
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_catMap));
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap));
  __swift_destroy_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_mbertDomainMap));
  v45 = *(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_commerceSenderRule);

  v46 = *(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_guaranteeList);

  v47 = *(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_finalRule);

  v48 = *(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_nonCommerceCategories);

  v49 = *(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_bertEmbeddings);

  v50 = *(v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_languageDetection);

  return v1;
}

uint64_t DecisionStrategy.__deallocating_deinit()
{
  DecisionStrategy.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22B3D6534@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_22B3F5F94();
  v96 = *(v4 - 8);
  v97 = v4;
  v5 = *(v96 + 64);
  MEMORY[0x28223BE20](v4);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v10 = *(a1 + 4);
  v9 = *(a1 + 5);
  v12 = *(a1 + 6);
  v11 = *(a1 + 7);
  v13 = *(a1 + 64);
  v116 = v13;
  v14 = *(a1 + 65);
  v15 = *(a1 + 69);
  v115 = v15;
  v131 = *a1;
  v100 = v8;
  v101 = v7;
  *&v132 = v7;
  *(&v132 + 1) = v8;
  *&v133 = v10;
  *(&v133 + 1) = v9;
  *&v134 = v12;
  *(&v134 + 1) = v11;
  LOBYTE(v135[0]) = v13;
  LODWORD(v98) = v14;
  *(v135 + 1) = v14;
  BYTE5(v135[0]) = v15;
  *(v135 + 6) = *(a1 + 70);
  WORD3(v135[1]) = *(a1 + 43);
  sub_22B3DA168(&v131, &v117);
  v135[8] = v129;
  v136[0] = v130[0];
  *(v136 + 9) = *(v130 + 9);
  v135[4] = v125;
  v135[5] = v126;
  v135[6] = v127;
  v135[7] = v128;
  v135[0] = v121;
  v135[1] = v122;
  v135[2] = v123;
  v135[3] = v124;
  v131 = v117;
  v132 = v118;
  v133 = v119;
  v134 = v120;
  result = sub_22B3E30E4(&v131);
  if (result != 1)
  {
    v48 = v130[0];
    a2[12] = v129;
    a2[13] = v48;
    *(a2 + 217) = *(v130 + 9);
    v49 = v126;
    a2[8] = v125;
    a2[9] = v49;
    v50 = v128;
    a2[10] = v127;
    a2[11] = v50;
    v51 = v122;
    a2[4] = v121;
    a2[5] = v51;
    v52 = v124;
    a2[6] = v123;
    a2[7] = v52;
    v53 = v118;
    *a2 = v117;
    a2[1] = v53;
    v54 = v120;
    a2[2] = v119;
    a2[3] = v54;
    return result;
  }

  v105 = *a1;
  *&v106 = v101;
  *(&v106 + 1) = v100;
  v92 = v10;
  v93 = v9;
  *&v107 = v10;
  *(&v107 + 1) = v9;
  *&v108 = v12;
  *(&v108 + 1) = v11;
  v94 = v11;
  LOBYTE(v109[0]) = v13;
  *(v109 + 1) = v98;
  BYTE5(v109[0]) = v15;
  *(v109 + 6) = *(a1 + 70);
  WORD3(v109[1]) = *(a1 + 43);
  v17 = sub_22B3E30FC(&v105);
  if (v18)
  {
    v19 = v17;
    v20 = v99;
    v21 = a2;
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v22 = sub_22B3F6464();
    __swift_project_value_buffer(v22, qword_28140D680);
    v23 = sub_22B3F6444();
    v24 = sub_22B3F68A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22B3A7000, v23, v24, "Returning categorization result for CVR sender", v25, 2u);
      MEMORY[0x231890C40](v25, -1, -1);
    }

    v26 = v20 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v27 = (v26 + *(type metadata accessor for BlackPearlLevels() + 44));
    v28 = v27[9];
    v30 = v27[7];
    v112 = v27[8];
    v29 = v112;
    v113 = v28;
    v31 = v27[9];
    v114[0] = v27[10];
    *(v114 + 9) = *(v27 + 169);
    v32 = v27[5];
    v34 = v27[3];
    v109[0] = v27[4];
    v33 = v109[0];
    v109[1] = v32;
    v35 = v27[5];
    v36 = v27[7];
    v110 = v27[6];
    v37 = v110;
    v111 = v36;
    v38 = v27[1];
    v40 = v27[2];
    v39 = v27[3];
    v107 = v40;
    v108 = v39;
    v41 = v27[1];
    v105 = *v27;
    v42 = v105;
    v106 = v41;
    *v21 = 151257088;
    __asm { FMOV            V0.2D, #1.0 }

    *(v21 + 8) = _Q0;
    *(v21 + 24) = _Q0;
    *(v21 + 176) = v29;
    *(v21 + 192) = v31;
    *(v21 + 208) = v27[10];
    *(v21 + 217) = *(v27 + 169);
    *(v21 + 112) = v33;
    *(v21 + 128) = v35;
    *(v21 + 144) = v37;
    *(v21 + 160) = v30;
    *(v21 + 48) = v42;
    *(v21 + 64) = v38;
    *(v21 + 40) = v19;
LABEL_15:
    *(v21 + 80) = v40;
    *(v21 + 96) = v34;
    return sub_22B3A9F54(&v105, v102);
  }

  v55 = v99;
  sub_22B3D6C40(v101, v100, &v105);
  v56 = v105;
  v21 = a2;
  if (v105)
  {
    v57 = BYTE8(v105);
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v58 = sub_22B3F6464();
    __swift_project_value_buffer(v58, qword_28140D680);
    v59 = sub_22B3F6444();
    v60 = sub_22B3F68A4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_22B3A7000, v59, v60, "Returning categorization result from Guaranteed list", v61, 2u);
      MEMORY[0x231890C40](v61, -1, -1);
    }

    v62 = v55 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v63 = (v62 + *(type metadata accessor for BlackPearlLevels() + 44));
    v64 = v63[9];
    v66 = v63[7];
    v112 = v63[8];
    v65 = v112;
    v113 = v64;
    v67 = v63[9];
    v114[0] = v63[10];
    *(v114 + 9) = *(v63 + 169);
    v68 = v63[5];
    v34 = v63[3];
    v109[0] = v63[4];
    v69 = v109[0];
    v109[1] = v68;
    v70 = v63[5];
    v71 = v63[7];
    v110 = v63[6];
    v72 = v110;
    v111 = v71;
    v73 = v63[1];
    v40 = v63[2];
    v74 = v63[3];
    v107 = v40;
    v108 = v74;
    v75 = v63[1];
    v105 = *v63;
    v76 = v105;
    v106 = v75;
    __asm { FMOV            V0.2D, #1.0 }

    *(v21 + 8) = _Q0;
    *(v21 + 24) = _Q0;
    *(v21 + 176) = v65;
    *(v21 + 192) = v67;
    *(v21 + 208) = v63[10];
    *(v21 + 217) = *(v63 + 169);
    *(v21 + 112) = v69;
    *(v21 + 128) = v70;
    *(v21 + 144) = v72;
    *(v21 + 160) = v66;
    *(v21 + 48) = v76;
    *(v21 + 64) = v73;
    *v21 = v57 != 4;
    *(v21 + 1) = 0;
    *(v21 + 2) = v57;
    *(v21 + 3) = 9;
    *(v21 + 40) = v56;
    goto LABEL_15;
  }

  v78 = v12;
  v79 = sub_22B3DD400(v101);
  v81 = v80;
  v83 = v82;
  sub_22B3DCEC0(&v105, v79, v80);
  v85 = v84;
  LODWORD(v101) = v105;
  v86 = v92;
  if (!v93)
  {
    v86 = 0;
  }

  v100 = v86;
  v87 = 0xE000000000000000;
  if (v93)
  {
    v87 = v93;
  }

  v98 = v87;
  *&v102[0] = v78;
  *(&v102[0] + 1) = v94;

  v88 = v95;
  sub_22B3F5F64();
  sub_22B3B4258();
  v89 = sub_22B3F69E4();
  v91 = v90;
  (*(v96 + 8))(v88, v97);

  *&v105 = v79;
  *(&v105 + 1) = v81;
  *&v106 = v100;
  *(&v106 + 1) = v98;
  *&v107 = v89;
  *(&v107 + 1) = v91;
  LOBYTE(v108) = v116;
  *(&v108 + 1) = v104[0];
  DWORD1(v108) = *(v104 + 3);
  *(&v108 + 1) = v85;
  LOBYTE(v109[0]) = v101;
  BYTE1(v109[0]) = v83 & 1;
  v102[2] = v107;
  v102[3] = v108;
  v103 = v109[0];
  v102[0] = v105;
  v102[1] = v106;
  if (v115 == 1)
  {
    sub_22B3D9344(v102, v21);
  }

  else
  {
    sub_22B3D6F70(v102, v21);
  }

  return sub_22B3E331C(&v105);
}

char sub_22B3D6C40@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_guaranteeList);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_0(v7 + 2, v8);
  v10 = (*(v9 + 16))(a1, a2, v8, v9);
  if ((v11 & 1) != 0 || (LOBYTE(v10) = Category.init(rawValue:)(v10), v12 = v18, v18 == 11))
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v10 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v13 = v10;
    v15 = *(v10 + 2);
    v14 = *(v10 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v10 = sub_22B3C1CD8((v14 > 1), v15 + 1, 1, v10);
      v16 = v15 + 1;
      v13 = v10;
    }

    *(v13 + 2) = v16;
    v13[v15 + 32] = 16;
  }

  *a3 = v13;
  *(a3 + 8) = v12;
  return v10;
}

char *sub_22B3D6D50(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = *(v4 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_commerceSenderRule);
  v22 = *(v7 + 16);
  v23 = *(v7 + 24);
  v24 = *(v7 + 40);
  v25 = *(v7 + 48);
  v8 = sub_22B3F65D4();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  BloomFilter.mayContain(object:)(v11);

  if (ReasonCode.rawValue.getter() == 5854019 && v12 == 0xE300000000000000)
  {

LABEL_5:
    v14 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v14 = sub_22B3C1CD8((v15 > 1), v16 + 1, 1, v14);
    }

    v18 = 0;
    goto LABEL_8;
  }

  v13 = sub_22B3F6C84();

  if (v13)
  {
    goto LABEL_5;
  }

  if (a3)
  {
    v18 = 1;
    v14 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(v14 + 2);
    v20 = *(v14 + 3);
    v17 = v16 + 1;
    if (v16 >= v20 >> 1)
    {
      v18 = 1;
      v14 = sub_22B3C1CD8((v20 > 1), v16 + 1, 1, v14);
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      return MEMORY[0x277D84F90];
    }

    v14 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v16 = *(v14 + 2);
    v21 = *(v14 + 3);
    v17 = v16 + 1;
    if (v16 >= v21 >> 1)
    {
      v14 = sub_22B3C1CD8((v21 > 1), v16 + 1, 1, v14);
    }

    v18 = 2;
  }

LABEL_8:
  *(v14 + 2) = v17;
  v14[v16 + 32] = v18;
  return v14;
}

void sub_22B3D6F70(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v184 = type metadata accessor for BlackPearlLevels();
  v5 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v186 = v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 8);
  v187 = *a1;
  v188 = v7;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 65);
  if ((v11 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v15 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v189 = v2;
  v181 = v11;
  v182 = v10;
  if (v15)
  {
    v16 = *(v2 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_languageDetection);
    v17 = sub_22B3C3158(&v194, v10, v11);
    v183 = v194;
    if (qword_28140D258 != -1)
    {
      v168 = v17;
      swift_once();
      v17 = v168;
    }

    v18 = off_28140D260;
    v19 = *(off_28140D260 + 2);
    v185 = v17;
    if (v19)
    {
      v20 = v17;
      v21 = sub_22B3BA424(v20);
      if (v22)
      {
        v23 = *(v18[7] + v21);
      }

      else
      {
        v23 = 15;
      }
    }

    else
    {
      v23 = 15;
    }

    v24 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = *(v24 + 2);
    v28 = *(v24 + 3);
    v27 = v26 + 1;
    if (v26 >= v28 >> 1)
    {
      v24 = sub_22B3C1CD8((v28 > 1), v26 + 1, 1, v24);
    }
  }

  else
  {
    v185 = *MEMORY[0x277CD8858];
    v24 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      v24 = sub_22B3C1CD8((v25 > 1), v26 + 1, 1, v24);
    }

    v183 = 3;
    v23 = 46;
  }

  *(v24 + 2) = v27;
  v24[v26 + 32] = v23;
  v206 = v24;
  v29 = v187;
  v30 = v189;
  sub_22B3D6D50(v187, v188, v12, v14);
  v32 = v31;

  sub_22B3CB69C(v33);
  if ((v32 & 1) == 0)
  {
    v34 = *(v30 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_domainHelper);
    v35 = HIBYTE(v188) & 0xF;
    if ((v188 & 0x2000000000000000) == 0)
    {
      v35 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {
      sub_22B3B6414(v29, v188);
      v36 = sub_22B3B568C();
    }

    else
    {
      v36 = -1;
    }

    v37 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v37 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      sub_22B3B6414(v8, v9);
      v38 = sub_22B3B568C();
    }

    else
    {
      v38 = -1;
    }

    v30 = v189;
    v39 = *(v189 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_finalRule);
    if (sub_22B3D4758(&v194, v36, v38, v13))
    {
      v40 = v194;

      v41 = v206;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_22B3C1CD8(0, *(v41 + 2) + 1, 1, v41);
      }

      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_22B3C1CD8((v42 > 1), v43 + 1, 1, v41);
      }

      *(v41 + 2) = v43 + 1;
      v41[v43 + 32] = v40;
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v44 = sub_22B3F6464();
      __swift_project_value_buffer(v44, qword_28140D680);
      v45 = sub_22B3F6444();
      v46 = sub_22B3F68A4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_22B3A7000, v45, v46, "Returning categorization result for non commerce sender", v47, 2u);
        MEMORY[0x231890C40](v47, -1, -1);
      }

      v48 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
      v49 = v189;
      swift_beginAccess();
      v50 = v49 + v48;
      v51 = v186;
      sub_22B3B2A74(v50, v186);
      v52 = (v51 + *(v184 + 44));
      v53 = v52[9];
      v202 = v52[8];
      v203 = v53;
      v204[0] = v52[10];
      *(v204 + 9) = *(v52 + 169);
      v54 = v52[5];
      v198 = v52[4];
      v199 = v54;
      v55 = v52[7];
      v200 = v52[6];
      v201 = v55;
      v56 = v52[3];
      v196 = v52[2];
      v197 = v56;
      v57 = v52[1];
      v194 = *v52;
      v195 = v57;
      sub_22B3A9F54(&v194, v190);
      sub_22B3E3088(v51);
      *a2 = 151257088;
      *(a2 + 8) = 0x3FF0000000000000;
      *(a2 + 16) = v13;
      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 24) = _Q0;
      *(a2 + 40) = v41;
      v63 = v203;
      *(a2 + 176) = v202;
      *(a2 + 192) = v63;
      *(a2 + 208) = v204[0];
      v64 = *(v204 + 9);
      goto LABEL_68;
    }
  }

  if (!v15)
  {

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v66 = sub_22B3F6464();
    __swift_project_value_buffer(v66, qword_28140D680);
    v67 = sub_22B3F6444();
    v68 = sub_22B3F68A4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_22B3A7000, v67, v68, "Returning categorization result for empty subject", v69, 2u);
      MEMORY[0x231890C40](v69, -1, -1);
    }

    v70 = v206;
    v71 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v72 = v30 + v71;
    v73 = v186;
    sub_22B3B2A74(v72, v186);
    v74 = (v73 + *(v184 + 44));
    v75 = v74[9];
    v202 = v74[8];
    v203 = v75;
    v204[0] = v74[10];
    *(v204 + 9) = *(v74 + 169);
    v76 = v74[5];
    v198 = v74[4];
    v199 = v76;
    v77 = v74[7];
    v200 = v74[6];
    v201 = v77;
    v78 = v74[3];
    v196 = v74[2];
    v197 = v78;
    v79 = v74[1];
    v194 = *v74;
    v195 = v79;
    sub_22B3A9F54(&v194, v190);
    sub_22B3E3088(v73);
    *a2 = 151584768;
    *(a2 + 8) = 0x3FF0000000000000;
    *(a2 + 16) = v13;
    __asm { FMOV            V0.2D, #1.0 }

    goto LABEL_67;
  }

  v65 = v183;
  if (v183 > 1 && v183 != 2)
  {

    goto LABEL_62;
  }

  v81 = sub_22B3F6C84();

  if (v81)
  {
LABEL_62:

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v94 = sub_22B3F6464();
    __swift_project_value_buffer(v94, qword_28140D680);
    v95 = sub_22B3F6444();
    v96 = sub_22B3F68A4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_22B3A7000, v95, v96, "Returning categorization result for unsupported language", v97, 2u);
      MEMORY[0x231890C40](v97, -1, -1);
    }

    v70 = v206;
    v98 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v99 = v30 + v98;
    v100 = v186;
    sub_22B3B2A74(v99, v186);
    v101 = (v100 + *(v184 + 44));
    v102 = v101[9];
    v202 = v101[8];
    v203 = v102;
    v204[0] = v101[10];
    *(v204 + 9) = *(v101 + 169);
    v103 = v101[5];
    v198 = v101[4];
    v199 = v103;
    v104 = v101[7];
    v200 = v101[6];
    v201 = v104;
    v105 = v101[3];
    v196 = v101[2];
    v197 = v105;
    v106 = v101[1];
    v194 = *v101;
    v195 = v106;
    sub_22B3A9F54(&v194, v190);
    sub_22B3E3088(v100);
    *a2 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a2 + 8) = _Q0;
LABEL_67:
    *(a2 + 24) = _Q0;
    *(a2 + 40) = v70;
    v107 = v203;
    *(a2 + 176) = v202;
    *(a2 + 192) = v107;
    *(a2 + 208) = v204[0];
    v64 = *(v204 + 9);
LABEL_68:
    *(a2 + 217) = v64;
    v108 = v199;
    *(a2 + 112) = v198;
    *(a2 + 128) = v108;
    v109 = v201;
    *(a2 + 144) = v200;
    *(a2 + 160) = v109;
    v110 = v195;
    *(a2 + 48) = v194;
    *(a2 + 64) = v110;
    v111 = v197;
    *(a2 + 80) = v196;
    *(a2 + 96) = v111;
    return;
  }

  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v82 = sub_22B3F6464();
  v83 = __swift_project_value_buffer(v82, qword_28140D680);
  v84 = v185;
  v180 = v83;
  v85 = sub_22B3F6444();
  v86 = sub_22B3F68A4();
  v185 = v84;

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&v194 = v88;
    *v87 = 136315138;
    v89 = 0xE500000000000000;
    v90 = 0x6E6974616CLL;
    if (v65 != 1)
    {
      v90 = 0xD000000000000011;
      v89 = 0x800000022B3FA140;
    }

    if (v65)
    {
      v91 = v90;
    }

    else
    {
      v91 = 0x6873696C676E65;
    }

    if (v65)
    {
      v92 = v89;
    }

    else
    {
      v92 = 0xE700000000000000;
    }

    v93 = sub_22B3BDABC(v91, v92, &v194);

    *(v87 + 4) = v93;
    _os_log_impl(&dword_22B3A7000, v85, v86, "Using language model %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x231890C40](v88, -1, -1);
    MEMORY[0x231890C40](v87, -1, -1);

    v30 = v189;
  }

  else
  {
  }

  v112 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v178 = v112;
  v113 = v186;
  sub_22B3B2A74(v30 + v112, v186);
  LOBYTE(v194) = v65;
  LOBYTE(v112) = BlackPearlLevels.isModelAssetAvailable(forLanguage:)(&v194);
  sub_22B3E3088(v113);
  if (v112)
  {
LABEL_89:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_22B3F9AA0;
    sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
    *(v140 + 32) = sub_22B3F6964();
    *(v140 + 40) = sub_22B3F6964();
    v141 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v142 = sub_22B3E0294(v140, 65600);
    if (!v142)
    {
      while (1)
      {
        sub_22B3F6B14();
        __break(1u);

        v170 = 0;
        v171 = sub_22B3F6444();
        v172 = sub_22B3F68C4();

        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          *v173 = 138412290;
          v175 = 0;
          v176 = _swift_stdlib_bridgeErrorToNSError();
          *(v173 + 4) = v176;
          *v174 = v176;
          _os_log_impl(&dword_22B3A7000, v171, v172, "MBert model execution failed %@", v173, 0xCu);
          sub_22B3B4B3C(v174, &qword_27D8BE078, &qword_22B3F8C50);
          MEMORY[0x231890C40](v174, -1, -1);
          MEMORY[0x231890C40](v173, -1, -1);
        }
      }
    }

    if (v65)
    {
      v150 = sub_22B3F6C84();

      if ((v150 & 1) == 0)
      {
        LOBYTE(v194) = v65;
        v162 = sub_22B3DC148(v182, v181, v187, v188, &v194, v185);

        v190[0] = v65;
        v142 = v162;
        sub_22B3DB3B8(&v194, v142, v190);
        v152 = v163;

LABEL_99:
        v153 = v194;
        v154 = v206;
        v155 = v142;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v154 = sub_22B3C1CD8(0, *(v154 + 2) + 1, 1, v154);
        }

        v157 = *(v154 + 2);
        v156 = *(v154 + 3);
        if (v157 >= v156 >> 1)
        {
          v154 = sub_22B3C1CD8((v156 > 1), v157 + 1, 1, v154);
        }

        *(v154 + 2) = v157 + 1;
        v154[v157 + 32] = 10;
        if (v153 == 5)
        {
          v158 = 0;
          v159 = 9;
          v160 = 0;
          v161 = 0;
LABEL_115:
          LOBYTE(v194) = v153;
          *(&v194 + 1) = v152;
          *&v195 = v13;
          BYTE8(v195) = 1;
          v190[0] = v159;
          v191 = v161;
          v192 = v160;
          v193 = v158;
          sub_22B3D8828(&v194, v190, v154, a2);

          return;
        }

        if (v65)
        {
          v164 = sub_22B3F6C84();

          if ((v164 & 1) == 0)
          {
            v190[0] = v65;
            sub_22B3DF910(v155, v190, &v194);
            v159 = v194;
            v161 = *(&v194 + 1);
            v160 = v195;
            if (BYTE8(v195) == 1)
            {
              goto LABEL_110;
            }

            goto LABEL_114;
          }
        }

        else
        {
        }

        sub_22B3DF0DC(v187, v188, v182, v181, &v194);
        v159 = v194;
        v161 = *(&v194 + 1);
        v160 = v195;
        if (BYTE8(v195))
        {
LABEL_110:
          v166 = *(v154 + 2);
          v165 = *(v154 + 3);
          if (v166 >= v165 >> 1)
          {
            v187 = v161;
            v188 = v160;
            v169 = sub_22B3C1CD8((v165 > 1), v166 + 1, 1, v154);
            v161 = v187;
            v160 = v188;
            v154 = v169;
          }

          *(v154 + 2) = v166 + 1;
          v154[v166 + 32] = 19;
          v158 = 1;
          goto LABEL_115;
        }

LABEL_114:
        v158 = 0;
        goto LABEL_115;
      }
    }

    else
    {
    }

    sub_22B3DA254(&v194, v187, v188, v182, v181);
    v152 = v151;
    goto LABEL_99;
  }

  v114 = swift_allocObject();
  v179 = v114;
  *(v114 + 16) = 0;
  v177[1] = (v114 + 16);
  v115 = v185;
  v116 = sub_22B3F6444();
  v117 = sub_22B3F68C4();
  v177[0] = v115;

  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *&v194 = v119;
    *v118 = 136315138;
    v120 = 0xD000000000000011;
    v121 = 0x800000022B3FA140;
    if (v183 != 2)
    {
      v120 = 0x726F707075536E75;
      v121 = 0xEB00000000646574;
    }

    v122 = 0xE700000000000000;
    v123 = 0x6E6974616CLL;
    if (v183)
    {
      v122 = 0xE500000000000000;
    }

    else
    {
      v123 = 0x6873696C676E65;
    }

    if (v183 <= 1)
    {
      v124 = v123;
    }

    else
    {
      v124 = v120;
    }

    if (v183 <= 1)
    {
      v125 = v122;
    }

    else
    {
      v125 = v121;
    }

    v126 = sub_22B3BDABC(v124, v125, &v194);

    *(v118 + 4) = v126;
    _os_log_impl(&dword_22B3A7000, v116, v117, "Model asset is not available for the selected language %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x231890C40](v119, -1, -1);
    MEMORY[0x231890C40](v118, -1, -1);

    v30 = v189;
  }

  else
  {
  }

  v127 = (v30 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader);
  v128 = *(v30 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader + 24);
  v129 = *(v30 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader + 32);
  __swift_project_boxed_opaque_existential_0((v30 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_modelLoader), v128);
  LOBYTE(v194) = v183;
  v130 = *(v129 + 336);
  v131 = v179;

  v130(&v194, sub_22B3E334C, v131, v128, v129);

  swift_beginAccess();
  if (*(v131 + 16))
  {
    v132 = sub_22B3F6444();
    v133 = sub_22B3F68B4();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      *v134 = 0;
      _os_log_impl(&dword_22B3A7000, v132, v133, "Reload BlackPearl levels after model download", v134, 2u);
      MEMORY[0x231890C40](v134, -1, -1);
    }

    v135 = v127[3];
    v136 = v127[4];
    __swift_project_boxed_opaque_existential_0(v127, v135);
    v137 = v186;
    (*(v136 + 304))(v135, v136);
    v138 = v189;
    v139 = v178;
    swift_beginAccess();
    sub_22B3B2AD8(v137, v138 + v139);
    swift_endAccess();

    v65 = v183;
    goto LABEL_89;
  }

  v143 = v177[0];
  v144 = sub_22B3F6444();
  v145 = sub_22B3F68C4();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    *&v194 = v147;
    *v146 = 136315138;
    if (v183 > 1)
    {
      v148 = 0xEB00000000646574;
      v149 = 0x726F707075536E75;
      if (v183 == 2)
      {
        v149 = 0xD000000000000011;
        v148 = 0x800000022B3FA140;
      }
    }

    else if (v183)
    {
      v148 = 0xE500000000000000;
      v149 = 0x6E6974616CLL;
    }

    else
    {
      v148 = 0xE700000000000000;
      v149 = 0x6873696C676E65;
    }

    v167 = sub_22B3BDABC(v149, v148, &v194);

    *(v146 + 4) = v167;
    _os_log_impl(&dword_22B3A7000, v144, v145, "Returning error as model asset is not available for the selected language %s", v146, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v147);
    MEMORY[0x231890C40](v147, -1, -1);
    MEMORY[0x231890C40](v146, -1, -1);
  }

  type metadata accessor for DecisionResultBuilder();
  static DecisionResultBuilder.buildCategorizationNotReadyResult()(a2);
}

void sub_22B3D868C(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (a1[1])
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v3 = sub_22B3F6464();
    __swift_project_value_buffer(v3, qword_28140D680);
    oslog = sub_22B3F6444();
    v4 = sub_22B3F68C4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_22B3B30D4();
      swift_allocError();
      *v7 = v2;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&dword_22B3A7000, oslog, v4, "Failed model download %@", v5, 0xCu);
      sub_22B3B4B3C(v6, &qword_27D8BE078, &qword_22B3F8C50);
      MEMORY[0x231890C40](v6, -1, -1);
      MEMORY[0x231890C40](v5, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = v2 & 1;
  }
}

__n128 sub_22B3D8828@<Q0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a3;
  v8 = type metadata accessor for BlackPearlLevels();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v10.n128_u64[0] = *(a1 + 1);
  v114 = v10;
  v10.n128_u64[0] = *(a1 + 2);
  v92 = v10;
  v111 = a1[24];
  v14 = *a2;
  v10.n128_u64[0] = *(a2 + 1);
  v113 = v10;
  v10.n128_u64[0] = *(a2 + 2);
  v88 = v10;
  v15 = a2[24];
  v126 = 0;
  v127 = 0xE000000000000000;
  v16 = v4 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v17 = (v16 + *(v8 + 44));
  v18 = v17[9];
  v121 = v17[8];
  v122 = v18;
  v123[0] = v17[10];
  *(v123 + 9) = *(v17 + 169);
  v19 = v17[5];
  v117 = v17[4];
  v118 = v19;
  v20 = v17[7];
  v119 = v17[6];
  v120 = v20;
  v21 = v17[1];
  v115[0] = *v17;
  v115[1] = v21;
  v22 = v17[3];
  v115[2] = v17[2];
  v116 = v22;
  sub_22B3F6B04();
  v109 = v126;
  v110 = v127;
  if (v13 > 4)
  {
LABEL_6:
    v25 = 0;
    v23 = 0;
    v24 = 0;
    goto LABEL_7;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      goto LABEL_19;
    }

    v25 = 0;
    v23 = 0;
    v24 = 1;
  }

  else
  {
    if (v13 != 2)
    {
      if (v13 == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 1;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v25 = 0;
    v24 = 0;
    v23 = 1;
  }

LABEL_7:
  if (v14 > 5)
  {
    goto LABEL_15;
  }

  if (v14 > 2)
  {
    if (v14 == 3)
    {
      goto LABEL_16;
    }

LABEL_15:
    v27 = 0;
    v26 = 0;
    if (!v25)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (!v14)
  {
    v27 = 0;
    v26 = 1;
    if (!v25)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  if (v14 == 1)
  {
LABEL_19:
    type metadata accessor for DecisionResultBuilder();
    static DecisionResultBuilder.buildCategorizationNotReadyResult()(v115);
    goto LABEL_20;
  }

  v26 = 0;
  v27 = 1;
  if (v25)
  {
LABEL_16:
    type metadata accessor for DecisionResultBuilder();
    static DecisionResultBuilder.buildMbertNotReadyResult()(v115);
LABEL_20:
    v111 = LOBYTE(v115[0]);
    v92.n128_u32[0] = BYTE1(v115[0]);
    v13 = BYTE2(v115[0]);
    v112 = BYTE3(v115[0]);
    v113 = *(&v115[1] + 8);
    v114 = *(v115 + 8);
    v28 = *(&v115[2] + 1);
    v94 = *(&v116 + 1);
    v95 = *(&v117 + 1);
    v96 = v116;
    v97 = *(&v118 + 1);
    v100 = v118;
    v98 = v117;
    v99 = *(&v119 + 1);
    v101 = *(&v120 + 1);
    v105 = v120;
    v102 = v119;
    v106 = v122;
    v107 = v123[1];
    v103 = v121;
    v104 = v123[0];
    v93 = v123[3];
    v91 = v123[2];
    v90 = v124;
    v89 = v125;

    goto LABEL_37;
  }

LABEL_23:
  if ((v23 | v27) == 1)
  {
    v29 = v108;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_22B3C1CD8(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v114.n128_u64[0] = v31 + 1;
      v86 = sub_22B3C1CD8((v30 > 1), v31 + 1, 1, v29);
      v32 = v114.n128_u64[0];
      v29 = v86;
    }

    *(v29 + 2) = v32;
    v33 = &v29[v31];
    v34 = 49;
LABEL_35:
    v33[32] = v34;
    sub_22B3B2A74(v16, v12);
    v38 = &v12[*(v8 + 44)];
    v39 = *(v38 + 9);
    v121 = *(v38 + 8);
    v122 = v39;
    v123[0] = *(v38 + 10);
    *(v123 + 9) = *(v38 + 169);
    v40 = *(v38 + 5);
    v117 = *(v38 + 4);
    v118 = v40;
    v41 = *(v38 + 7);
    v119 = *(v38 + 6);
    v120 = v41;
    v42 = *(v38 + 3);
    v115[2] = *(v38 + 2);
    v116 = v42;
    v43 = *(v38 + 1);
    v115[0] = *v38;
    v115[1] = v43;
    sub_22B3A9F54(v115, &v126);
    sub_22B3E3088(v12);
    v106 = v119;
    v107 = v121;
    v103 = v118;
    v104 = v120;
    v101 = *(&v117 + 1);
    v105 = v117;
    v99 = *(&v116 + 1);
    v102 = v116;
    v97 = *(&v115[2] + 1);
    v100 = *&v115[2];
    v95 = *(&v115[1] + 1);
    v98 = *&v115[1];
    v94 = *(&v115[0] + 1);
    v96 = *&v115[0];
    v93 = v123[0];
    v91 = v122;
    v90 = *&v123[1];
    v89 = BYTE8(v123[1]);

    v111 = 0;
    v92.n128_u32[0] = 0;
    v13 = 0;
    v112 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v113 = _Q0;
    v114 = _Q0;
    v28 = v29;
    goto LABEL_37;
  }

  if ((v24 | v26) == 1)
  {
    v29 = v108;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_22B3C1CD8(0, *(v29 + 2) + 1, 1, v29);
    }

    v36 = *(v29 + 2);
    v35 = *(v29 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v114.n128_u64[0] = v36 + 1;
      v87 = sub_22B3C1CD8((v35 > 1), v36 + 1, 1, v29);
      v37 = v114.n128_u64[0];
      v29 = v87;
    }

    *(v29 + 2) = v37;
    v33 = &v29[v36];
    v34 = 15;
    goto LABEL_35;
  }

  v49 = (v16 + *(v8 + 44));
  v50 = v49[9];
  v121 = v49[8];
  v122 = v50;
  v123[0] = v49[10];
  *(v123 + 9) = *(v49 + 169);
  v51 = v49[5];
  v117 = v49[4];
  v118 = v51;
  v52 = v49[7];
  v119 = v49[6];
  v120 = v52;
  v53 = v49[1];
  v115[0] = *v49;
  v115[1] = v53;
  v54 = v49[3];
  v115[2] = v49[2];
  v116 = v54;
  v106 = v119;
  v107 = v121;
  v103 = v118;
  v104 = v120;
  v101 = *(&v117 + 1);
  v105 = v117;
  v99 = *(&v54 + 1);
  v102 = v54;
  v97 = *(&v115[2] + 1);
  v100 = *&v115[2];
  v95 = *(&v115[1] + 1);
  v98 = *&v115[1];
  v94 = *(&v115[0] + 1);
  v96 = *&v115[0];
  v93 = v123[0];
  v91 = v122;
  v90 = *&v123[1];
  v89 = BYTE8(v123[1]);
  v28 = v108;
  v112 = v14;
  swift_bridgeObjectRetain_n();
  sub_22B3A9F54(v115, &v126);
  v55.n128_u64[0] = v114.n128_u64[0];
  v55.n128_u64[1] = v92.n128_u64[0];
  v114 = v55;
  v55.n128_u64[0] = v113.n128_u64[0];
  v55.n128_u64[1] = v88.n128_u64[0];
  v113 = v55;
  v92.n128_u32[0] = v15;
LABEL_37:
  *&v115[0] = 0;
  *(&v115[0] + 1) = 0xE000000000000000;
  sub_22B3F6AC4();
  MEMORY[0x23188FF80](0xD000000000000011, 0x800000022B3FBE20);
  v108 = v13;
  v126 = qword_22B3F9D30[v13];
  v56 = sub_22B3F6C74();
  MEMORY[0x23188FF80](v56);

  MEMORY[0x23188FF80](0xD000000000000014, 0x800000022B3FBE40);
  if (v15)
  {
    v57 = 1702195828;
  }

  else
  {
    v57 = 0x65736C6166;
  }

  if (v15)
  {
    v58 = 0xE400000000000000;
  }

  else
  {
    v58 = 0xE500000000000000;
  }

  MEMORY[0x23188FF80](v57, v58);

  MEMORY[0x23188FF80](0xD000000000000020, 0x800000022B3FBE60);
  v126 = qword_22B3F9D88[v112];
  v59 = sub_22B3F6C74();
  MEMORY[0x23188FF80](v59);

  MEMORY[0x23188FF80](0x6C65646F4D0A0A20, 0xEF203A65726F6353);
  sub_22B3F6824();
  MEMORY[0x23188FF80](0xD000000000000010, 0x800000022B3FBE90);
  sub_22B3F6824();
  MEMORY[0x23188FF80](0x6F63535354200A20, 0xEC000000203A6572);
  sub_22B3F6824();
  MEMORY[0x23188FF80](0xD000000000000014, 0x800000022B3FBEB0);
  sub_22B3F6824();
  MEMORY[0x23188FF80](0x6D6F4373490A0A20, 0xEF203A656372656DLL);
  v60 = v111;
  if (v111)
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (v111)
  {
    v62 = 0xE400000000000000;
  }

  else
  {
    v62 = 0xE500000000000000;
  }

  MEMORY[0x23188FF80](v61, v62);

  MEMORY[0x23188FF80](0xD000000000000010, 0x800000022B3FBED0);
  v63 = MEMORY[0x2318900A0](v28, &type metadata for ReasonCode);
  v65 = v64;

  MEMORY[0x23188FF80](v63, v65);

  MEMORY[0x23188FF80](0x6973726556200A20, 0xED0000203A736E6FLL);
  MEMORY[0x23188FF80](v109, v110);

  MEMORY[0x23188FF80](41, 0xE100000000000000);
  v66 = v115[0];
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v67 = sub_22B3F6464();
  __swift_project_value_buffer(v67, qword_28140D680);

  v68 = sub_22B3F6444();
  v69 = sub_22B3F68A4();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = v60;
    v72 = swift_slowAlloc();
    *&v115[0] = v72;
    *v70 = 136315138;
    v73 = sub_22B3BDABC(v66, *(&v66 + 1), v115);

    *(v70 + 4) = v73;
    _os_log_impl(&dword_22B3A7000, v68, v69, "%s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    v74 = v72;
    v60 = v71;
    MEMORY[0x231890C40](v74, -1, -1);
    MEMORY[0x231890C40](v70, -1, -1);
  }

  else
  {
  }

  v75 = v108;
  v76 = v89 & 1;
  *a4 = v60;
  *(a4 + 1) = v92.n128_u8[0];
  *(a4 + 2) = v75;
  *(a4 + 3) = v112;
  v77 = v113;
  *(a4 + 8) = v114;
  *(a4 + 24) = v77;
  v78 = v96;
  *(a4 + 40) = v28;
  *(a4 + 48) = v78;
  v79 = v98;
  *(a4 + 56) = v94;
  *(a4 + 64) = v79;
  v80 = v100;
  *(a4 + 72) = v95;
  *(a4 + 80) = v80;
  v81 = v102;
  *(a4 + 88) = v97;
  *(a4 + 96) = v81;
  v82 = v105;
  *(a4 + 104) = v99;
  *(a4 + 112) = v82;
  *(a4 + 120) = v101;
  v83 = v106;
  *(a4 + 128) = v103;
  *(a4 + 144) = v83;
  v84 = v107;
  *(a4 + 160) = v104;
  *(a4 + 176) = v84;
  result = v93;
  *(a4 + 192) = v91;
  *(a4 + 208) = result;
  *(a4 + 224) = v90;
  *(a4 + 232) = v76;
  return result;
}

uint64_t sub_22B3D9344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v150 = *(a1 + 32);
  v151 = *(a1 + 48);
  v8 = *(a1 + 56);
  v120 = *(a1 + 64);
  v9 = *(v2 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_domainHelper);
  v123 = v4;
  sub_22B3B6414(v5, v4);
  v10 = sub_22B3F65D4();
  v12 = v11;

  v121 = v7;
  v122 = v6;
  sub_22B3B6414(v6, v7);
  v13 = sub_22B3F65D4();
  v15 = v14;

  v16 = sub_22B3C1CD8(0, 1, 1, MEMORY[0x277D84F90]);
  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  v124 = v5;
  if (v18 >= v17 >> 1)
  {
    v16 = sub_22B3C1CD8((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v16[v18 + 32] = 27;
  v149 = v16;
  if (v10 == v13 && v12 == v15 || (sub_22B3F6C84() & 1) != 0)
  {
    goto LABEL_14;
  }

  sub_22B3B568C();
  v20 = v19;
  v22 = v21;
  sub_22B3B568C();
  if (v20 == v24 && v22 == v23)
  {

    goto LABEL_14;
  }

  v26 = sub_22B3F6C84();

  if (v26)
  {
LABEL_14:
    v66 = sub_22B3B568C();

    v67 = sub_22B3B568C();

    v68 = *(v126 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_finalRule);
    if (sub_22B3D4758(v129, v66, v67, v8))
    {
      v69 = v129[0];
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v70 = sub_22B3F6464();
      __swift_project_value_buffer(v70, qword_28140D680);
      v71 = sub_22B3F6444();
      v72 = sub_22B3F68A4();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_22B3A7000, v71, v72, "Returning NOP categorization result for person", v73, 2u);
        MEMORY[0x231890C40](v73, -1, -1);
      }

      v75 = *(v16 + 2);
      v74 = *(v16 + 3);
      if (v75 >= v74 >> 1)
      {
        v16 = sub_22B3C1CD8((v74 > 1), v75 + 1, 1, v16);
      }

      *(v16 + 2) = v75 + 1;
      v16[v75 + 32] = v69;
      v76 = v126 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
      swift_beginAccess();
      v77 = (v76 + *(type metadata accessor for BlackPearlLevels() + 44));
      v79 = v77[8];
      v78 = v77[9];
      v80 = v77[7];
      v135 = v79;
      v136 = v78;
      v81 = v77[9];
      v137[0] = v77[10];
      *(v137 + 9) = *(v77 + 169);
      v83 = v77[4];
      v82 = v77[5];
      v84 = v77[3];
      v131 = v83;
      v132 = v82;
      v85 = v77[5];
      v87 = v77[6];
      v86 = v77[7];
      v133 = v87;
      v134 = v86;
      v88 = v77[1];
      v90 = v77[2];
      v89 = v77[3];
      *&v129[32] = v90;
      v130 = v89;
      v91 = v77[1];
      v92 = *v77;
      *v129 = *v77;
      *&v129[16] = v91;
      v93 = 151257088;
      goto LABEL_30;
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v94 = sub_22B3F6464();
    __swift_project_value_buffer(v94, qword_28140D680);
    v95 = sub_22B3F6444();
    v96 = sub_22B3F68A4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_22B3A7000, v95, v96, "Returning NOP categorization result for SA sender", v97, 2u);
      MEMORY[0x231890C40](v97, -1, -1);
    }

    v99 = *(v16 + 2);
    v98 = *(v16 + 3);
    if (v99 >= v98 >> 1)
    {
      v16 = sub_22B3C1CD8((v98 > 1), v99 + 1, 1, v16);
    }

    *(v16 + 2) = v99 + 1;
    v16[v99 + 32] = 18;
    v100 = v126 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
LABEL_29:
    swift_beginAccess();
    v77 = (v100 + *(type metadata accessor for BlackPearlLevels() + 44));
    v79 = v77[8];
    v101 = v77[9];
    v80 = v77[7];
    v135 = v79;
    v136 = v101;
    v81 = v77[9];
    v137[0] = v77[10];
    *(v137 + 9) = *(v77 + 169);
    v83 = v77[4];
    v102 = v77[5];
    v84 = v77[3];
    v131 = v83;
    v132 = v102;
    v85 = v77[5];
    v87 = v77[6];
    v103 = v77[7];
    v133 = v87;
    v134 = v103;
    v88 = v77[1];
    v90 = v77[2];
    v104 = v77[3];
    *&v129[32] = v90;
    v130 = v104;
    v105 = v77[1];
    v92 = *v77;
    *v129 = *v77;
    *&v129[16] = v105;
    v93 = 151650304;
LABEL_30:
    *a2 = v93;
    *(a2 + 16) = v8;
    __asm { FMOV            V0.2D, #1.0 }

    *(a2 + 24) = _Q0;
    *(a2 + 176) = v79;
    *(a2 + 192) = v81;
    *(a2 + 208) = v77[10];
    *(a2 + 217) = *(v77 + 169);
    *(a2 + 112) = v83;
    *(a2 + 128) = v85;
    *(a2 + 144) = v87;
    *(a2 + 160) = v80;
    *(a2 + 48) = v92;
    *(a2 + 64) = v88;
    *(a2 + 8) = 0x3FF0000000000000;
    *(a2 + 40) = v16;
    *(a2 + 80) = v90;
    *(a2 + 96) = v84;
    v64 = v129;
    v65 = &v138;
    return sub_22B3A9F54(v64, v65);
  }

  v27 = sub_22B3F65D4();
  v29 = v28;
  v30 = sub_22B3B5AF0();
  v32 = v31;

  v33 = sub_22B3D9CD0(v27, v29);
  v35 = v34;

  *v129 = v33;
  *&v129[8] = v35;
  *&v138 = v30;
  *(&v138 + 1) = v32;
  strcpy(v128, "<company_name>");
  v128[15] = -18;
  sub_22B3B4258();
  sub_22B3F6A04();

  v36 = sub_22B3F65D4();
  v38 = v37;

  v39 = *(v126 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap + 24);
  v40 = *(v126 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap + 32);
  __swift_project_boxed_opaque_existential_0((v126 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_saasSenderMap), v39);
  (*(v40 + 16))(v36, v38, v39, v40);
  LOBYTE(v36) = v41;

  if ((v36 & 1) == 0)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v111 = sub_22B3F6464();
    __swift_project_value_buffer(v111, qword_28140D680);
    v112 = sub_22B3F6444();
    v113 = sub_22B3F68A4();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&dword_22B3A7000, v112, v113, "Returning NOP categorization result for Saas sender", v114, 2u);
      MEMORY[0x231890C40](v114, -1, -1);
    }

    v116 = *(v16 + 2);
    v115 = *(v16 + 3);
    if (v116 >= v115 >> 1)
    {
      v16 = sub_22B3C1CD8((v115 > 1), v116 + 1, 1, v16);
    }

    *(v16 + 2) = v116 + 1;
    v16[v116 + 32] = 28;
    v117 = sub_22B3F6444();
    v118 = sub_22B3F68A4();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 0;
      _os_log_impl(&dword_22B3A7000, v117, v118, "Returning NOP categorization result for SA sender", v119, 2u);
      MEMORY[0x231890C40](v119, -1, -1);
    }

    v100 = v126 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    goto LABEL_29;
  }

  *&v138 = v124;
  *(&v138 + 1) = v123;
  *&v139 = v122;
  *(&v139 + 1) = v121;
  v140 = v150;
  *&v141 = v151;
  *(&v141 + 1) = v8;
  LOWORD(v142) = v120;
  sub_22B3D6F70(&v138, v129);

  sub_22B3CB69C(v42);
  sub_22B3E3354(v129);
  v43 = v129[0];
  v44 = v129[1];
  v45 = *&v129[2];
  v46 = v149;
  v47 = v126 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  v125 = *&v129[24];
  v127 = *&v129[8];
  swift_beginAccess();
  v48 = (v47 + *(type metadata accessor for BlackPearlLevels() + 44));
  v49 = v48[9];
  v51 = v48[7];
  v146 = v48[8];
  v50 = v146;
  v147 = v49;
  v52 = v48[9];
  v148[0] = v48[10];
  *(v148 + 9) = *(v48 + 169);
  v53 = v48[5];
  v55 = v48[3];
  v142 = v48[4];
  v54 = v142;
  v143 = v53;
  v56 = v48[5];
  v57 = v48[7];
  v144 = v48[6];
  v58 = v144;
  v145 = v57;
  v59 = v48[1];
  v60 = v48[3];
  v140 = v48[2];
  v61 = v140;
  v141 = v60;
  v62 = v48[1];
  v138 = *v48;
  v63 = v138;
  v139 = v62;
  *(a2 + 24) = v125;
  *(a2 + 8) = v127;
  *(a2 + 176) = v50;
  *(a2 + 192) = v52;
  *(a2 + 208) = v48[10];
  *(a2 + 217) = *(v48 + 169);
  *(a2 + 112) = v54;
  *(a2 + 128) = v56;
  *(a2 + 144) = v58;
  *(a2 + 160) = v51;
  *a2 = v43;
  *(a2 + 1) = v44;
  *(a2 + 2) = v45;
  *(a2 + 40) = v46;
  *(a2 + 48) = v63;
  *(a2 + 64) = v59;
  *(a2 + 80) = v61;
  *(a2 + 96) = v55;
  v64 = &v138;
  v65 = v128;
  return sub_22B3A9F54(v64, v65);
}

uint64_t sub_22B3D9CD0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE458, &qword_22B3F9BF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v47 - v6;
  v48 = a1;
  v49 = a2;
  v52 = 0x796C706572;
  v53 = 0xE500000000000000;
  v8 = sub_22B3F62E4();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  sub_22B3B4258();
  sub_22B3F6A14();
  v11 = v10;
  v13 = v12;
  result = sub_22B3B4B3C(v7, &qword_27D8BE458, &qword_22B3F9BF8);
  if (v13)
  {
    goto LABEL_9;
  }

  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11 >> 14 > 4 * v15)
  {
    __break(1u);
  }

  else
  {
    v47[0] = v11 >> 14;
    v48 = a1;
    v49 = a2;
    v52 = 64;
    v53 = 0xE100000000000000;
    v9(v7, 1, 1, v8);
    v16 = sub_22B3F6A14();
    v18 = v17;
    result = sub_22B3B4B3C(v7, &qword_27D8BE458, &qword_22B3F9BF8);
    if (v18)
    {
      goto LABEL_9;
    }

    if (v47[0] <= v16 >> 14)
    {
      v19 = sub_22B3F6764();
      v20 = MEMORY[0x23188FF00](v19);
      v22 = v21;

      v23 = MEMORY[0x23188FFF0](v20, v22);

      v24 = *(v47[1] + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_alphaNumericRegex);
      v25 = sub_22B3F6564();

      v26 = [v24 firstMatchInString:v25 options:0 range:{0, v23}];

      if (v26)
      {

        v27 = sub_22B3F6764();
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v48 = sub_22B3D5918(v16, a1, a2);
        v49 = v34;
        v50 = v35;
        v51 = v36;
        v37 = MEMORY[0x23188FF00](v27, v29, v31, v33);
        v39 = v38;

        v52 = v37;
        v53 = v39;
        sub_22B3C0304();
        sub_22B3F6664();
        v40 = sub_22B3F69C4();
        v42 = v41;
        v44 = v43;
        v46 = v45;

        a1 = MEMORY[0x23188FF00](v40, v42, v44, v46);

        return a1;
      }

LABEL_9:

      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B3DA088@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v4 = (v3 + *(type metadata accessor for BlackPearlLevels() + 44));
  v5 = v4[9];
  v6 = v4[7];
  v28 = v4[8];
  v29 = v5;
  v7 = v4[9];
  v30[0] = v4[10];
  *(v30 + 9) = *(v4 + 169);
  v8 = v4[5];
  v10 = v4[3];
  v24 = v4[4];
  v9 = v24;
  v25 = v8;
  v11 = v4[5];
  v12 = v4[7];
  v26 = v4[6];
  v13 = v26;
  v27 = v12;
  v14 = v4[1];
  v15 = v4[3];
  v22 = v4[2];
  v16 = v22;
  v23 = v15;
  v17 = v4[1];
  v21[0] = *v4;
  v18 = v21[0];
  v21[1] = v17;
  a1[8] = v28;
  a1[9] = v7;
  a1[10] = v4[10];
  *(a1 + 169) = *(v4 + 169);
  a1[4] = v9;
  a1[5] = v11;
  a1[6] = v13;
  a1[7] = v6;
  *a1 = v18;
  a1[1] = v14;
  a1[2] = v16;
  a1[3] = v10;
  return sub_22B3A9F54(v21, v20);
}

__n128 sub_22B3DA168@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v4 && (*&v13[0] = *(a1 + 16), *(&v13[0] + 1) = v3, v15 = 64, v16 = 0xE100000000000000, sub_22B3B4258(), (sub_22B3F6A24() & 1) != 0))
  {
    sub_22B3E52FC(v13);
  }

  else
  {
    type metadata accessor for DecisionResultBuilder();
    v5 = static DecisionResultBuilder.buildErrorResult()(v13);
    nullsub_1(v13, v5);
  }

  v6 = v14[0];
  *(a2 + 192) = v13[12];
  *(a2 + 208) = v6;
  *(a2 + 217) = *(v14 + 9);
  v7 = v13[9];
  *(a2 + 128) = v13[8];
  *(a2 + 144) = v7;
  v8 = v13[11];
  *(a2 + 160) = v13[10];
  *(a2 + 176) = v8;
  v9 = v13[5];
  *(a2 + 64) = v13[4];
  *(a2 + 80) = v9;
  v10 = v13[7];
  *(a2 + 96) = v13[6];
  *(a2 + 112) = v10;
  v11 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v11;
  result = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = result;
  return result;
}

void sub_22B3DA254(_BYTE *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v93 = *MEMORY[0x277D85DE8];
  v11 = v5 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v12 = type metadata accessor for BlackPearlModel(0);
  if ((*(v11 + *(v12 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v13 = *(v11 + *(v12 + 32));
  swift_endAccess();
  if (!v13)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v69 = sub_22B3F6464();
    __swift_project_value_buffer(v69, qword_28140D680);
    v70 = sub_22B3F6444();
    v71 = sub_22B3F68C4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_22B3A7000, v70, v71, "Model creation failed", v72, 2u);
      MEMORY[0x231890C40](v72, -1, -1);
    }

    goto LABEL_38;
  }

  v14 = v13;
  v15 = sub_22B3E3A98(a4, a5, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 72) = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
  *(inited + 48) = v15;
  v17 = v15;
  sub_22B3CBFB4(inited);
  swift_setDeallocating();
  sub_22B3B4B3C(inited + 32, &qword_27D8BE348, &unk_22B3F8F88);
  v18 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v19 = 0;
  v88 = v14;
  v20 = sub_22B3E0390();
  *&v91[0] = 0;
  v21 = [v14 predictionFromFeatures:v20 error:v91];
  if (!v21)
  {
    v73 = *&v91[0];
    v74 = sub_22B3F6064();

    v75 = v20;
    v76 = v74;
    swift_willThrow();

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v77 = sub_22B3F6464();
    __swift_project_value_buffer(v77, qword_28140D680);
    v78 = v74;
    v79 = sub_22B3F6444();
    v80 = sub_22B3F68C4();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = 138412290;
      v83 = v76;
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v81 + 4) = v84;
      *v82 = v84;
      _os_log_impl(&dword_22B3A7000, v79, v80, "Model execution failed %@", v81, 0xCu);
      sub_22B3B4B3C(v82, &qword_27D8BE078, &qword_22B3F8C50);
      MEMORY[0x231890C40](v82, -1, -1);
      MEMORY[0x231890C40](v81, -1, -1);
    }

    goto LABEL_38;
  }

  v22 = v21;
  v23 = *&v91[0];
  v24 = sub_22B3F6564();
  v25 = [v22 featureValueForName_];

  if (!v25)
  {
    goto LABEL_38;
  }

  v26 = (v11 + *(type metadata accessor for BlackPearlLevels() + 44));
  v27 = v26[9];
  v91[8] = v26[8];
  v91[9] = v27;
  v92[0] = v26[10];
  *(v92 + 9) = *(v26 + 169);
  v28 = v26[5];
  v91[4] = v26[4];
  v91[5] = v28;
  v29 = v26[7];
  v91[6] = v26[6];
  v91[7] = v29;
  v30 = v26[3];
  v91[2] = v26[2];
  v91[3] = v30;
  v31 = v26[1];
  v91[0] = *v26;
  v91[1] = v31;
  sub_22B3A9F54(v91, &v90);
  v32 = sub_22B3F6724();
  sub_22B3BE034(v91);
  if (v32)
  {
    v33 = [v25 dictionaryValue];
    sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
    v34 = sub_22B3F6524();

    v35 = sub_22B3E4F00(v34);

    goto LABEL_10;
  }

  v36 = [v25 multiArrayValue];
  if (!v36)
  {
LABEL_38:
    sub_22B3F6B14();
    __break(1u);
    return;
  }

  v37 = v36;
  v35 = sub_22B3E4510(v36);

LABEL_10:
  v85 = v20;
  v86 = v17;

  v38 = *(v35 + 16);
  if (v38)
  {
    v89 = v25;
    v39 = sub_22B3E04FC(v38, 0);
    v40 = sub_22B3E23D8(&v90, v39 + 4, v38, v35);

    sub_22B3E4EF8();
    if (v40 != v38)
    {
      __break(1u);
    }

    v19 = 0;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  v90 = v39;
  sub_22B3E0FA4(&v90);

  v41 = v90;
  if (!v90[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v19 = v90[5];
  v89 = v90[4];
  v6 = v90[6];
  v42 = qword_28140BFC8;

  if (v42 != -1)
  {
LABEL_26:
    swift_once();
  }

  v43 = sub_22B3F6464();
  __swift_project_value_buffer(v43, qword_28140D680);

  v44 = sub_22B3F6444();
  v45 = sub_22B3F68B4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v90 = v47;
    *v46 = 136315138;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
    v49 = MEMORY[0x2318900A0](v41, v48);
    v50 = v25;
    v52 = v51;

    v53 = v49;
    v14 = v88;
    v54 = sub_22B3BDABC(v53, v52, &v90);
    v25 = v50;

    *(v46 + 4) = v54;
    _os_log_impl(&dword_22B3A7000, v44, v45, "Sorted Category: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x231890C40](v47, -1, -1);
    MEMORY[0x231890C40](v46, -1, -1);
  }

  else
  {
  }

  v55 = sub_22B3F6444();
  v56 = sub_22B3F68B4();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v90 = v58;
    *v57 = 136315394;

    v59 = sub_22B3BDABC(v89, v19, &v90);

    *(v57 + 4) = v59;
    *(v57 + 12) = 2048;
    *(v57 + 14) = v6;
    _os_log_impl(&dword_22B3A7000, v55, v56, "Top Category: %s Value %f ", v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x231890C40](v58, -1, -1);
    MEMORY[0x231890C40](v57, -1, -1);
  }

  v60 = sub_22B3F6444();
  v61 = sub_22B3F68A4();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v90 = v63;
    *v62 = 136315138;
    v64 = sub_22B3F6534();
    v66 = v65;

    v67 = sub_22B3BDABC(v64, v66, &v90);

    *(v62 + 4) = v67;
    _os_log_impl(&dword_22B3A7000, v60, v61, "Category Scores: %s ", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    MEMORY[0x231890C40](v63, -1, -1);
    MEMORY[0x231890C40](v62, -1, -1);
  }

  else
  {
  }

  static Category.getCategory(for:)(&v90);
  swift_unknownObjectRelease();

  *a1 = v90;
  v68 = *MEMORY[0x277D85DE8];
}

void *sub_22B3DAD58(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 1 && *a1)
  {

    goto LABEL_7;
  }

  v3 = sub_22B3F6C84();

  if (v3)
  {
LABEL_7:
    v4 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v5 = v4 + *(type metadata accessor for BlackPearlLevels() + 20);
    v6 = type metadata accessor for BlackPearlModel(0);
    if ((*(v5 + *(v6 + 36)) & 1) == 0)
    {
      BlackPearlModel.loadModel()();
    }

    v7 = *(v5 + *(v6 + 32));
    swift_endAccess();
    if (v7)
    {
      goto LABEL_33;
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B3F6464();
    __swift_project_value_buffer(v8, qword_28140D680);
    v9 = sub_22B3F6444();
    v10 = sub_22B3F68C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v48[0] = v12;
      *v11 = 136315138;
      v13 = 0xE500000000000000;
      v14 = 0xD000000000000011;
      v15 = 0x800000022B3FA140;
      if (v2 != 2)
      {
        v14 = 0x726F707075536E75;
        v15 = 0xEB00000000646574;
      }

      if (v2)
      {
        v16 = 0x6E6974616CLL;
      }

      else
      {
        v16 = 0x6873696C676E65;
      }

      if (!v2)
      {
        v13 = 0xE700000000000000;
      }

      if (v2 <= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      if (v2 <= 1)
      {
        v18 = v13;
      }

      else
      {
        v18 = v15;
      }

      v19 = sub_22B3BDABC(v17, v18, v48);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_22B3A7000, v9, v10, "Model not available %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x231890C40](v12, -1, -1);
      MEMORY[0x231890C40](v11, -1, -1);
    }

    return 0;
  }

  if (v2 == 2)
  {
  }

  else
  {
    v20 = sub_22B3F6C84();

    if ((v20 & 1) == 0)
    {
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v25 = sub_22B3F6464();
      __swift_project_value_buffer(v25, qword_28140D680);
      v26 = sub_22B3F6444();
      v27 = sub_22B3F68C4();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_68;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48[0] = v29;
      *v28 = 136315138;
      v30 = 0xE500000000000000;
      if (v2)
      {
        v31 = 0x6E6974616CLL;
      }

      else
      {
        v31 = 0x6873696C676E65;
      }

      if (!v2)
      {
        v30 = 0xE700000000000000;
      }

      if (v2 <= 1)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0x726F707075536E75;
      }

      if (v2 <= 1)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0xEB00000000646574;
      }

      v34 = sub_22B3BDABC(v32, v33, v48);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_22B3A7000, v26, v27, "Unsupported Model %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x231890C40](v29, -1, -1);
      v35 = v28;
      goto LABEL_67;
    }
  }

  v21 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v22 = v21 + *(type metadata accessor for BlackPearlLevels() + 24);
  v23 = type metadata accessor for BlackPearlModel(0);
  if ((*(v22 + *(v23 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v7 = *(v22 + *(v23 + 32));
  swift_endAccess();
  if (!v7)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v36 = sub_22B3F6464();
    __swift_project_value_buffer(v36, qword_28140D680);
    v26 = sub_22B3F6444();
    v37 = sub_22B3F68C4();
    if (!os_log_type_enabled(v26, v37))
    {
      goto LABEL_68;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48[0] = v39;
    *v38 = 136315138;
    v40 = 0xE500000000000000;
    v41 = 0xD000000000000011;
    if (v2 == 2)
    {
      v42 = 0x800000022B3FA140;
    }

    else
    {
      v41 = 0x726F707075536E75;
      v42 = 0xEB00000000646574;
    }

    if (v2)
    {
      v43 = 0x6E6974616CLL;
    }

    else
    {
      v43 = 0x6873696C676E65;
    }

    if (!v2)
    {
      v40 = 0xE700000000000000;
    }

    if (v2 <= 1)
    {
      v44 = v43;
    }

    else
    {
      v44 = v41;
    }

    if (v2 <= 1)
    {
      v45 = v40;
    }

    else
    {
      v45 = v42;
    }

    v46 = sub_22B3BDABC(v44, v45, v48);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_22B3A7000, v26, v37, "Model not available %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x231890C40](v39, -1, -1);
    v35 = v38;
LABEL_67:
    MEMORY[0x231890C40](v35, -1, -1);
LABEL_68:

    return 0;
  }

LABEL_33:
  v24 = v7;
  return v7;
}

void sub_22B3DB3B8(_BYTE *a1, void *a2, _BYTE *a3)
{
  v5 = v3;
  v97 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  LOBYTE(v95[0]) = *a3;
  v8 = sub_22B3DAD58(v95);
  if (!v8)
  {
    v31 = 0xEB00000000646574;
    v32 = 0x726F707075536E75;
    v30 = 0x6873696C676E65;
    if (v7 <= 1 || v7 == 2)
    {
      v64 = sub_22B3F6C84();

      if ((v64 & 1) == 0)
      {
        *a1 = 1;
LABEL_44:
        v77 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
    }

    if (qword_28140BFC8 == -1)
    {
LABEL_30:
      v65 = sub_22B3F6464();
      __swift_project_value_buffer(v65, qword_28140D680);
      v66 = sub_22B3F6444();
      v67 = sub_22B3F68C4();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v95[0] = v69;
        *v68 = 136315138;
        v70 = 0xD000000000000011;
        v71 = 0x800000022B3FA140;
        if (v7 != 2)
        {
          v70 = v32;
          v71 = v31;
        }

        v72 = 0xE700000000000000;
        v73 = 0x6E6974616CLL;
        if (v7)
        {
          v72 = 0xE500000000000000;
        }

        else
        {
          v73 = v30;
        }

        if (v7 <= 1)
        {
          v74 = v73;
        }

        else
        {
          v74 = v70;
        }

        if (v7 <= 1)
        {
          v75 = v72;
        }

        else
        {
          v75 = v71;
        }

        v76 = sub_22B3BDABC(v74, v75, v95);

        *(v68 + 4) = v76;
        _os_log_impl(&dword_22B3A7000, v66, v67, "Unsupported Model %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x231890C40](v69, -1, -1);
        MEMORY[0x231890C40](v68, -1, -1);
      }

      *a1 = 0;
      goto LABEL_44;
    }

LABEL_48:
    swift_once();
    goto LABEL_30;
  }

  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  *(inited + 32) = 0x7365727574616566;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
  *(inited + 48) = a2;
  v11 = a2;
  sub_22B3CBFB4(inited);
  swift_setDeallocating();
  sub_22B3B4B3C(inited + 32, &qword_27D8BE348, &unk_22B3F8F88);
  v12 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v13 = 0;
  v14 = sub_22B3E0390();
  *&v95[0] = 0;
  v15 = [v9 predictionFromFeatures:v14 error:v95];
  v16 = *&v95[0];
  if (v15)
  {
    v90 = v14;
    v17 = v15;
    swift_unknownObjectRetain();
    v18 = v16;
    v19 = sub_22B3F6564();
    v20 = [v17 featureValueForName_];

    swift_unknownObjectRelease();
    v92 = v20;
    if (v20)
    {
      v21 = v5 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
      swift_beginAccess();
      v22 = (v21 + *(type metadata accessor for BlackPearlLevels() + 44));
      v23 = v22[9];
      v95[8] = v22[8];
      v95[9] = v23;
      v96[0] = v22[10];
      *(v96 + 9) = *(v22 + 169);
      v24 = v22[5];
      v95[4] = v22[4];
      v95[5] = v24;
      v25 = v22[7];
      v95[6] = v22[6];
      v95[7] = v25;
      v26 = v22[3];
      v95[2] = v22[2];
      v95[3] = v26;
      v27 = v22[1];
      v95[0] = *v22;
      v95[1] = v27;
      sub_22B3A9F54(v95, v94);
      LOBYTE(v21) = sub_22B3F6724();
      sub_22B3BE034(v95);
      if (v21)
      {
        v28 = [v20 dictionaryValue];
        sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
        v29 = sub_22B3F6524();

        v30 = sub_22B3E4F00(v29);

LABEL_10:

        v35 = *(v30 + 16);
        v91 = v9;
        if (!v35)
        {
          v36 = MEMORY[0x277D84F90];
LABEL_14:
          v94[0] = v36;
          sub_22B3E0FA4(v94);

          v38 = v94[0];
          if (v94[0][2])
          {
            v7 = v94[0][4];
            v13 = v94[0][5];
            v4 = v94[0][6];
            v39 = qword_28140BFC8;

            if (v39 == -1)
            {
LABEL_16:
              v40 = sub_22B3F6464();
              __swift_project_value_buffer(v40, qword_28140D680);

              v41 = sub_22B3F6444();
              v42 = sub_22B3F68B4();

              if (os_log_type_enabled(v41, v42))
              {
                v43 = swift_slowAlloc();
                v89 = v7;
                v44 = swift_slowAlloc();
                v94[0] = v44;
                *v43 = 136315138;
                v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
                v46 = MEMORY[0x2318900A0](v38, v45);
                v48 = v47;

                v49 = sub_22B3BDABC(v46, v48, v94);

                *(v43 + 4) = v49;
                _os_log_impl(&dword_22B3A7000, v41, v42, "Sorted Category: %s", v43, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v44);
                v50 = v44;
                v7 = v89;
                MEMORY[0x231890C40](v50, -1, -1);
                MEMORY[0x231890C40](v43, -1, -1);
              }

              else
              {
              }

              v51 = sub_22B3F6444();
              v52 = sub_22B3F68B4();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                v54 = swift_slowAlloc();
                v94[0] = v54;
                *v53 = 136315394;

                v55 = sub_22B3BDABC(v7, v13, v94);

                *(v53 + 4) = v55;
                *(v53 + 12) = 2048;
                *(v53 + 14) = v4;
                _os_log_impl(&dword_22B3A7000, v51, v52, "Top Category: %s Value %f ", v53, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v54);
                MEMORY[0x231890C40](v54, -1, -1);
                MEMORY[0x231890C40](v53, -1, -1);
              }

              v56 = sub_22B3F6444();
              v57 = sub_22B3F68A4();

              if (os_log_type_enabled(v56, v57))
              {
                v58 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                v94[0] = v59;
                *v58 = 136315138;
                v60 = sub_22B3F6534();
                v62 = v61;

                v63 = sub_22B3BDABC(v60, v62, v94);

                *(v58 + 4) = v63;
                _os_log_impl(&dword_22B3A7000, v56, v57, "Category Scores: %s ", v58, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v59);
                MEMORY[0x231890C40](v59, -1, -1);
                MEMORY[0x231890C40](v58, -1, -1);
              }

              else
              {
              }

              static Category.getCategory(for:)(v94);

              swift_unknownObjectRelease();
              *a1 = v94[0];
              goto LABEL_44;
            }
          }

          else
          {
            __break(1u);
          }

          swift_once();
          goto LABEL_16;
        }

        v36 = sub_22B3E04FC(v35, 0);
        v37 = sub_22B3E23D8(v94, v36 + 4, v35, v30);
        v7 = v94[0];
        v32 = v94[3];
        v31 = v30;

        sub_22B3E4EF8();
        if (v37 == v35)
        {
          v13 = 0;
          goto LABEL_14;
        }

        __break(1u);
        goto LABEL_48;
      }

      v33 = [v20 multiArrayValue];
      if (v33)
      {
        v34 = v33;
        v30 = sub_22B3E4510(v33);

        goto LABEL_10;
      }
    }
  }

  else
  {
    v78 = *&v95[0];
    v79 = sub_22B3F6064();

    v80 = v79;
    swift_willThrow();

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v81 = sub_22B3F6464();
    __swift_project_value_buffer(v81, qword_28140D680);
    v82 = v79;
    v83 = sub_22B3F6444();
    v84 = sub_22B3F68C4();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138412290;
      v87 = v80;
      v88 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 4) = v88;
      *v86 = v88;
      _os_log_impl(&dword_22B3A7000, v83, v84, "Model execution failed %@", v85, 0xCu);
      sub_22B3B4B3C(v86, &qword_27D8BE078, &qword_22B3F8C50);
      MEMORY[0x231890C40](v86, -1, -1);
      MEMORY[0x231890C40](v85, -1, -1);
    }
  }

  sub_22B3F6B14();
  __break(1u);
}

uint64_t sub_22B3DBF88()
{
  v1 = sub_22B3B4258();
  result = MEMORY[0x231890330](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v1);
  v3 = result;
  v4 = 0;
  v5 = (v0 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_mbertDomainMap);
  v6 = *(result + 16);
  while (1)
  {
    if (v6 == v4)
    {

      return 0;
    }

    if (*(v3 + 16) < v6)
    {
      break;
    }

    v7 = v4 + 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE100, &qword_22B3F7DB0);
    sub_22B3D0990(&qword_28140BF20, &qword_27D8BE100, &qword_22B3F7DB0);
    sub_22B3B63C0();
    v8 = sub_22B3F6774();
    v10 = v9;

    v11 = v5[3];
    v12 = v5[4];
    __swift_project_boxed_opaque_existential_0(v5, v11);
    v13 = (*(v12 + 16))(v8, v10, v11, v12);
    LOBYTE(v11) = v14;

    v4 = v7;
    if ((v11 & 1) == 0)
    {

      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B3DC148(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, uint64_t a6)
{
  v8 = v6;
  v14 = OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_bertEmbeddings;
  v15 = *(v8 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_bertEmbeddings);
  LOBYTE(v41) = *a5;

  v16 = a2;
  v17 = v15;
  sub_22B3CA9DC(a1, v16, &v41, a6);

  if (v7)
  {
    return v17;
  }

  v18 = *(v8 + v14);

  v19 = sub_22B3E475C();
  LOBYTE(v41) = 0;
  v22 = sub_22B3CA9DC(v19, v20, &v41, *MEMORY[0x277CD8708]);

  v41 = v22;

  sub_22B3CB2C8(v23);
  v24 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2B0, &qword_22B3F9C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  v26 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v26 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v38 = v24;
    v39 = inited;
    v27 = *(v8 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_domainHelper);
    sub_22B3B6414(a3, a4);
    v28 = sub_22B3B568C();

    v29 = v28;
    v24 = v38;
    inited = v39;
  }

  else
  {
    v29 = -1.0;
  }

  *(inited + 32) = v29;
  v40 = v24;
  sub_22B3CB2C8(inited);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_22B3F79B0;
  sub_22B3B6414(a3, a4);
  v31 = sub_22B3DBF88();

  *(v30 + 32) = v31;
  sub_22B3CB2C8(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22B3F9AA0;
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  *(v32 + 32) = sub_22B3F6964();
  *(v32 + 40) = sub_22B3F6964();
  v33 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v17 = sub_22B3E0294(v32, 65600);
  if (v17)
  {

    v34 = *(v40 + 16);
    if (v34)
    {
      for (i = 0; i != v34; ++i)
      {
        v36 = *(v40 + 8 * i + 32);
        v37 = sub_22B3F6804();
        [v17 setObject:v37 atIndexedSubscript:i];
      }
    }

    return v17;
  }

  result = sub_22B3F6B14();
  __break(1u);
  return result;
}

uint64_t sub_22B3DC4CC(uint64_t a1, unint64_t a2)
{
  v5 = v3;
  v6 = a2;
  v8 = *(v2 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_domainHelper);
  sub_22B3B5BCC(a1, a2);
  v9 = v2[2];
  v109[0] = v2[1];
  v109[1] = v9;
  v10 = v2[4];
  v12 = v2[1];
  v11 = v2[2];
  v109[2] = v2[3];
  v109[3] = v10;
  v105 = v12;
  v106 = v11;
  v13 = v2[4];
  v107 = v2[3];
  v108 = v13;
  sub_22B3CEED0(v109, v104);
  isUniquelyReferenced_nonNull_native = sub_22B3D204C();
  v110[0] = v105;
  v110[1] = v106;
  v110[2] = v107;
  v110[3] = v108;
  sub_22B3CEF90(v110);
  v102 = a1;
  *&v105 = a1;
  *(&v105 + 1) = v6;
  v15 = sub_22B3B4258();
  v16 = MEMORY[0x231890330](64, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v15);
  v17 = v16;
  if (v16[2] < 2uLL)
  {

    sub_22B3E52A8();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return isUniquelyReferenced_nonNull_native;
  }

  v20 = v16[8];
  v19 = v16[9];
  v21 = v16[10];
  v22 = v16[11];

  v23 = sub_22B3F69A4();
  v25 = v24;

  *&v105 = v23;
  *(&v105 + 1) = v25;
  if (!v17[2])
  {
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
    goto LABEL_8;
  }

  v27 = v17[4];
  v26 = v17[5];
  v28 = v17[6];
  v29 = v17[7];

  v30 = sub_22B3F69A4();
  v32 = v31;

  v104[0] = v30;
  v104[1] = v32;
  v33 = sub_22B3F6A24();

  if (v33)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v103 = sub_22B3CBEB8(MEMORY[0x277D84F90]);
  if (qword_28140BFC8 != -1)
  {
    goto LABEL_64;
  }

LABEL_8:
  v34 = sub_22B3F6464();
  __swift_project_value_buffer(v34, qword_28140D680);

  v35 = sub_22B3F6444();
  v36 = sub_22B3F68B4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134217984;
    *(v37 + 4) = *(isUniquelyReferenced_nonNull_native + 16);

    _os_log_impl(&dword_22B3A7000, v35, v36, "SenderHashingSize: %ld", v37, 0xCu);
    MEMORY[0x231890C40](v37, -1, -1);
  }

  else
  {
  }

  v38 = *(isUniquelyReferenced_nonNull_native + 16);
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    *&v105 = MEMORY[0x277D84F90];
    sub_22B3B799C(0, v38, 0);
    v39 = v105;
    v40 = (isUniquelyReferenced_nonNull_native + 32);
    v41 = *(v105 + 16);
    do
    {
      v43 = *v40++;
      v42 = v43;
      *&v105 = v39;
      v44 = *(v39 + 24);
      if (v41 >= v44 >> 1)
      {
        sub_22B3B799C((v44 > 1), v41 + 1, 1);
        v39 = v105;
      }

      *(v39 + 16) = v41 + 1;
      *(v39 + 4 * v41++ + 32) = v42;
      --v38;
    }

    while (v38);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE290, &unk_22B3F88E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  *(inited + 32) = v4;
  *&v105 = v39;

  sub_22B3CB4C4(inited);
  v46 = v105;
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_22B3F79B0;
  v48 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v48 = v102 & 0xFFFFFFFFFFFFLL;
  }

  if (v48)
  {
    v49 = v47;
    sub_22B3B6414(v102, v6);
    v50 = sub_22B3B568C();

    v47 = v49;
    v51 = v50;
  }

  else
  {
    v51 = -1.0;
  }

  *(v47 + 32) = v51;
  *&v105 = v46;
  sub_22B3CB4C4(v47);
  v52 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE420, &unk_22B3F9AB8);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_22B3F9AA0;
  v54 = sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  *(v53 + 32) = sub_22B3F6964();
  *(v53 + 40) = sub_22B3F6964();
  v55 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v56 = v5;
  v57 = sub_22B3E0294(v53, 65600);
  if (v5)
  {
LABEL_69:

    goto LABEL_70;
  }

  v102 = v57;
  if (!v57)
  {
LABEL_70:
    sub_22B3F6B14();
    __break(1u);

    __break(1u);
    return result;
  }

  v101 = v52;
  v58 = *(v52 + 16);
  isUniquelyReferenced_nonNull_native = v57;
  if (v58)
  {
    for (i = 0; i != v58; ++i)
    {
      v60 = *(v101 + 32 + 4 * i);
      v61 = sub_22B3F6834();
      [v102 setObject:v61 atIndexedSubscript:i];
    }
  }

  v62 = [v102 count];
  v63 = v62 - 1;
  if (__OFSUB__(v62, 1))
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    sub_22B3F6CC4();
    __break(1u);
    goto LABEL_69;
  }

  if ((v63 & 0x8000000000000000) != 0)
  {
    goto LABEL_66;
  }

  v5 = 0;
  v6 = &off_2786FD000;
  while (1)
  {
    v64 = [isUniquelyReferenced_nonNull_native *(v6 + 1336)];
    v65 = sub_22B3F6964();
    v66 = sub_22B3F6974();

    if (v66)
    {
      goto LABEL_48;
    }

    v67 = v6;
    v68 = [isUniquelyReferenced_nonNull_native *(v6 + 1336)];
    if (v68)
    {
      v6 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v105 = v103;
      v70 = sub_22B3B7BC0(v5);
      v71 = *(v103 + 16);
      v72 = (v69 & 1) == 0;
      v73 = v71 + v72;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_61;
      }

      v74 = v69;
      if (*(v103 + 24) >= v73)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22B3B9A54();
        }
      }

      else
      {
        sub_22B3B89F4(v73, isUniquelyReferenced_nonNull_native);
        v75 = sub_22B3B7BC0(v5);
        if ((v74 & 1) != (v76 & 1))
        {
          goto LABEL_68;
        }

        v70 = v75;
      }

      isUniquelyReferenced_nonNull_native = v102;
      v82 = v105;
      v103 = v105;
      if (v74)
      {
        v83 = *(v105 + 56);
        v84 = *(v83 + 8 * v70);
        *(v83 + 8 * v70) = v6;

LABEL_44:
        v6 = v67;
        if (v63 == v5)
        {
          break;
        }

        goto LABEL_49;
      }

      *(v105 + 8 * (v70 >> 6) + 64) |= 1 << v70;
      *(v82[6] + 8 * v70) = v5;
      *(v82[7] + 8 * v70) = v6;
      v85 = v82[2];
      v86 = __OFADD__(v85, 1);
      v87 = v85 + 1;
      if (v86)
      {
        goto LABEL_62;
      }

      v82[2] = v87;
      v6 = v67;
LABEL_48:
      if (v63 == v5)
      {
        break;
      }

      goto LABEL_49;
    }

    v77 = v103;
    v78 = sub_22B3B7BC0(v5);
    if ((v79 & 1) == 0)
    {
      goto LABEL_44;
    }

    v80 = v78;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    *&v105 = v103;
    if (!v81)
    {
      sub_22B3B9A54();
      v77 = v105;
    }

    v103 = v77;
    sub_22B3C8518(v80, v77);
    if (v63 == v5)
    {
      break;
    }

LABEL_49:
    v86 = __OFADD__(v5++, 1);
    if (v86)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }
  }

  v88 = *(v103 + 16);
  if (v88)
  {
    v54 = sub_22B3E0478(*(v103 + 16), 0);
    v89 = sub_22B3E2280(&v105, v54 + 4, v88, v103);
    v56 = v105;

    sub_22B3E4EF8();
    if (v89 != v88)
    {
      goto LABEL_67;
    }

    isUniquelyReferenced_nonNull_native = v102;
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  *&v105 = v54;
  sub_22B3E0E50(&v105);

  v90 = v105;

  v91 = sub_22B3F6444();
  v92 = sub_22B3F68B4();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    *&v105 = v94;
    *v93 = 136315138;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE440, &qword_22B3F9BE0);
    v96 = MEMORY[0x2318900A0](v90, v95);
    v98 = v97;

    v99 = sub_22B3BDABC(v96, v98, &v105);
    isUniquelyReferenced_nonNull_native = v102;

    *(v93 + 4) = v99;
    _os_log_impl(&dword_22B3A7000, v91, v92, "Sender input: %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x231890C40](v94, -1, -1);
    MEMORY[0x231890C40](v93, -1, -1);
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

void sub_22B3DCEC0(char *a1, uint64_t a2, unint64_t a3)
{
  v42[3] = *MEMORY[0x277D85DE8];
  v7 = v3 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v8 = type metadata accessor for BlackPearlLevels();
  v9 = v7 + *(v8 + 28);
  v10 = type metadata accessor for BlackPearlModel(0);
  if ((*(v9 + *(v10 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v11 = *(v9 + *(v10 + 32));
  swift_endAccess();
  if (v11)
  {
    v12 = v11;
    v13 = sub_22B3DC4CC(a2, a3);
    if (v4)
    {
      v14 = v12;
LABEL_7:

LABEL_8:
      v19 = *MEMORY[0x277D85DE8];
      return;
    }

    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B3F79B0;
    *(inited + 32) = 120;
    *(inited + 40) = 0xE100000000000000;
    *(inited + 72) = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
    *(inited + 48) = v15;
    v14 = v15;
    sub_22B3CBFB4(inited);
    swift_setDeallocating();
    sub_22B3B4B3C(inited + 32, &qword_27D8BE348, &unk_22B3F8F88);
    v17 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v18 = sub_22B3E0390();
    v20 = v18;
    v42[0] = 0;
    v21 = [v12 predictionFromFeatures:v18 error:v42];
    if (!v21)
    {
      v35 = v42[0];
      sub_22B3F6064();

      swift_willThrow();
      goto LABEL_7;
    }

    v22 = v21;
    v23 = v42[0];
    v24 = sub_22B3F6564();
    v25 = [v22 featureValueForName_];

    if (v25)
    {
      v26 = [v25 multiArrayValue];

      if (v26)
      {
        v27 = [v26 objectAtIndexedSubscript_];

        if (v27)
        {
          v40 = v27;
          sub_22B3F67F4();
          v29 = v28;
          if (qword_28140BFC8 != -1)
          {
            swift_once();
          }

          v30 = sub_22B3F6464();
          __swift_project_value_buffer(v30, qword_28140D680);
          v31 = sub_22B3F6444();
          v32 = sub_22B3F68A4();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 134217984;
            *(v33 + 4) = v29;
            _os_log_impl(&dword_22B3A7000, v31, v32, "Sender Scores: %f", v33, 0xCu);
            MEMORY[0x231890C40](v33, -1, -1);
          }

          swift_unknownObjectRelease();
          if (*(v7 + *(v8 + 48) + 40) >= v29)
          {
            v34 = 17;
          }

          else
          {
            v34 = 18;
          }

          *a1 = v34;
          goto LABEL_8;
        }
      }
    }
  }

  else
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v36 = sub_22B3F6464();
    __swift_project_value_buffer(v36, qword_28140D680);
    v37 = sub_22B3F6444();
    v38 = sub_22B3F68C4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22B3A7000, v37, v38, "Could not create sender model", v39, 2u);
      MEMORY[0x231890C40](v39, -1, -1);
    }
  }

  sub_22B3F6B14();
  __break(1u);
}

uint64_t sub_22B3DD400(uint64_t a1)
{
  v3 = sub_22B3B4258();
  v4 = MEMORY[0x231890330](64, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v3);
  if (v4[2] > 1uLL)
  {
    v42 = a1;
    v43 = v1;
    v7 = v4[8];
    v8 = v4[9];
    v10 = v4[10];
    v9 = v4[11];
    v11 = v4[4];
    v12 = v4[5];
    v14 = v4[6];
    v13 = v4[7];

    v15 = MEMORY[0x23188FF00](v11, v12, v14, v13);
    v17 = v16;

    v18 = MEMORY[0x23188FFF0](v15, v17);

    if (sub_22B3F69A4() == 0xD000000000000018 && 0x800000022B3FBF30 == v19)
    {
      goto LABEL_11;
    }

    v21 = sub_22B3F6C84();

    if (v21)
    {
      goto LABEL_12;
    }

    if (sub_22B3F69A4() == 0x632E64756F6C6369 && v22 == 0xEA00000000006D6FLL)
    {
LABEL_11:
    }

    else
    {
      v36 = sub_22B3F6C84();

      if ((v36 & 1) == 0)
      {
        v37 = sub_22B3F69A4();
        v39 = v38;

        if (v37 != 0xD000000000000012 || 0x800000022B3FBF50 != v39)
        {
          v40 = sub_22B3F6C84();

          if ((v40 & 1) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_13;
        }
      }
    }

LABEL_12:

LABEL_13:
    v23 = *(v43 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_privateRelayRegex);
    v24 = sub_22B3F6564();
    v25 = v18;
    v26 = v24;
    v27 = [v23 firstMatchInString:v24 options:0 range:{0, v25}];

    if (v27)
    {

      a1 = sub_22B3E36B4();

      return a1;
    }

LABEL_25:

    return v42;
  }

  sub_22B3E52A8();
  v5 = swift_allocError();
  *v6 = 0;
  swift_willThrow();
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v28 = sub_22B3F6464();
  __swift_project_value_buffer(v28, qword_28140D680);
  v29 = v5;
  v30 = sub_22B3F6444();
  v31 = sub_22B3F68C4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = v5;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_22B3A7000, v30, v31, "Failed to resolve private relay email %@", v32, 0xCu);
    sub_22B3B4B3C(v33, &qword_27D8BE078, &qword_22B3F8C50);
    MEMORY[0x231890C40](v33, -1, -1);
    MEMORY[0x231890C40](v32, -1, -1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_22B3DD884(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    if (result)
    {
      v3 = *(a2 + 16);
      if (v3)
      {
        v4 = 0;
        v5 = 0;
        v6 = a2 + 56;
        v37 = *(a2 + 16);
        v33 = v3 - 1;
        v7 = MEMORY[0x277D84F90];
        v36 = MEMORY[0x277D84F90];
        v38 = result;
        v34 = a2 + 56;
        while (1)
        {
          v35 = v5;
          v8 = (v6 + 32 * v4);
          while (1)
          {
            if (v4 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v9 = *(v8 - 3);
            v10 = *(v8 - 2);
            v12 = *(v8 - 1);
            v11 = *v8;
            v13 = v4 + 1;
            v14 = *(v7 + 16);
            if (v14 >= result)
            {
              break;
            }

            v15 = *v8;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22B3B797C(0, v14 + 1, 1);
            }

            v17 = *(v7 + 16);
            v16 = *(v7 + 24);
            if (v17 >= v16 >> 1)
            {
              sub_22B3B797C((v16 > 1), v17 + 1, 1);
            }

            *(v7 + 16) = v17 + 1;
            v18 = (v7 + 32 * v17);
            v18[4] = v9;
            v18[5] = v10;
            v18[6] = v12;
            v18[7] = v11;
            v8 += 4;
            v4 = v13;
            result = v38;
            v2 = a2;
            if (v37 == v13)
            {
              goto LABEL_29;
            }
          }

          if (v35 >= v14)
          {
            goto LABEL_33;
          }

          v19 = (v7 + 32 * v35);
          v31 = v19[4];
          v32 = *(v8 - 3);
          v20 = v19[7];
          v29 = v19[6];
          v30 = v19[5];

          v21 = v20;

          v22 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22B3B797C(0, *(v36 + 16) + 1, 1);
            v22 = v36;
          }

          v24 = *(v22 + 16);
          v23 = *(v22 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_22B3B797C((v23 > 1), v24 + 1, 1);
            v22 = v36;
          }

          *(v22 + 16) = v24 + 1;
          v36 = v22;
          v25 = (v22 + 32 * v24);
          v25[4] = v31;
          v25[5] = v30;
          v25[6] = v29;
          v25[7] = v21;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_22B3E2244(v7);
            v7 = result;
          }

          v2 = a2;
          v6 = v34;
          if (v35 >= *(v7 + 16))
          {
            goto LABEL_34;
          }

          v26 = (v7 + 32 * v35);
          v27 = v26[7];
          v26[4] = v32;
          v26[5] = v10;
          v26[6] = v12;
          v26[7] = v11;

          result = v38;
          if ((v35 + 1) < v38)
          {
            v5 = v35 + 1;
          }

          else
          {
            v5 = 0;
          }

          if (v33 == v4++)
          {
            goto LABEL_29;
          }
        }
      }

      v36 = MEMORY[0x277D84F90];
LABEL_29:

      return v36;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

char *sub_22B3DDB0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_tsRegex);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3D0, &qword_22B3F95F8);
  sub_22B3D0990(&qword_28140BF88, &qword_27D8BE3D0, &qword_22B3F95F8);
  sub_22B3B4258();
  v2 = sub_22B3F6984();
  v4 = v3;
  v5 = sub_22B3F6564();
  v6 = [v1 matchesInString:v5 options:0 range:{v2, v4}];

  sub_22B3B41C4(0, &qword_28140BF58, 0x277CCACC0);
  v7 = sub_22B3F6794();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_16:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3F0, &qword_22B3F98A0);
    sub_22B3D0990(&qword_28140BFB0, &qword_27D8BE3F0, &qword_22B3F98A0);
    v24 = sub_22B3F6544();

    return v24;
  }

  v8 = sub_22B3F6B24();
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  result = sub_22B3B791C(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = v7;
    v25 = v7 & 0xC000000000000001;
    v12 = v7;
    v13 = v8;
    do
    {
      if (v25)
      {
        v14 = MEMORY[0x2318903E0](v10, v11);
      }

      else
      {
        v14 = *(v11 + 8 * v10 + 32);
      }

      v15 = v14;
      [v14 range];
      sub_22B3F6894();
      if (v16)
      {

        v17 = 0;
        v18 = 0xE000000000000000;
      }

      else
      {
        v19 = sub_22B3F6764();
        v17 = MEMORY[0x23188FF00](v19);
        v18 = v20;
      }

      v22 = *(v26 + 16);
      v21 = *(v26 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22B3B791C((v21 > 1), v22 + 1, 1);
      }

      ++v10;
      *(v26 + 16) = v22 + 1;
      v23 = v26 + 16 * v22;
      *(v23 + 32) = v17;
      *(v23 + 40) = v18;
      v11 = v12;
    }

    while (v13 != v10);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_22B3DDE6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22B3F5F94();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v43 = a2;
  v40 = 2843740;
  v41 = 0xE300000000000000;
  v38 = 0x737469676964;
  v39 = 0xE600000000000000;
  sub_22B3B4258();
  sub_22B3F6A04();
  v9 = sub_22B3DDB0C();
  v11 = v10;

  v42 = v9;
  v43 = v11;
  v40 = 95;
  v41 = 0xE100000000000000;
  v38 = 2121504;
  v39 = 0xE300000000000000;
  v12 = sub_22B3F6A04();
  v14 = v13;

  v42 = v12;
  v43 = v14;
  sub_22B3F5F64();
  v15 = sub_22B3F69D4();
  v17 = *(v5 + 8);
  v16 = v5 + 8;
  v36 = v17;
  v37 = v8;
  v17(v8, v4);

  v19 = 0;
  v20 = *(v15 + 16);
  v21 = MEMORY[0x277D84F90];
LABEL_2:
  v22 = (v15 + 40 + 16 * v19);
  while (1)
  {
    if (v20 == v19)
    {

      v42 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE3F0, &qword_22B3F98A0);
      sub_22B3D0990(&qword_28140BFB0, &qword_27D8BE3F0, &qword_22B3F98A0);
      v29 = sub_22B3F6544();
      v31 = v30;

      v42 = v29;
      v43 = v31;
      v32 = v37;
      sub_22B3F5F64();
      v33 = sub_22B3F69E4();
      v36(v32, v4);

      return v33;
    }

    if (v19 >= *(v15 + 16))
    {
      break;
    }

    ++v19;
    v24 = *(v22 - 1);
    v23 = *v22;
    v22 += 2;
    v25 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v25 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v42 = v21;
      v34 = v16;
      v35 = v4;
      if ((result & 1) == 0)
      {
        result = sub_22B3B791C(0, *(v21 + 16) + 1, 1);
        v21 = v42;
      }

      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        result = sub_22B3B791C((v26 > 1), v27 + 1, 1);
        v21 = v42;
      }

      *(v21 + 16) = v27 + 1;
      v28 = v21 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v23;
      v16 = v34;
      v4 = v35;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22B3DE25C(uint64_t a1, uint64_t a2, void (*a3)(void), void *a4)
{
  a3();
  v6 = sub_22B3B4258();
  v7 = MEMORY[0x231890330](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v6);

  v9 = 0;
  v26 = *(v7 + 16);
  v27 = v7;
  v10 = (v4 + *a4);
  v11 = v7 + 56;
  v24 = v7 + 56;
  v25 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = (v11 + 32 * v9);
  while (1)
  {
    if (v26 == v9)
    {

      return v25;
    }

    if (v9 >= *(v27 + 16))
    {
      break;
    }

    ++v9;
    v13 = v12 + 4;
    v14 = *(v12 - 1);
    v15 = *v12;
    v17 = *(v12 - 3);
    v16 = *(v12 - 2);
    v18 = v10[4];
    __swift_project_boxed_opaque_existential_0(v10, v10[3]);

    sub_22B3F69A4();
    v19 = sub_22B3F6754();
    v20 = (*(v18 + 16))(v19);
    LOBYTE(v18) = v21;

    v12 = v13;
    if ((v18 & 1) == 0)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22B3C199C(0, *(v25 + 16) + 1, 1, v25);
        v25 = result;
      }

      v23 = *(v25 + 16);
      v22 = *(v25 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_22B3C199C((v22 > 1), v23 + 1, 1, v25);
        v25 = result;
      }

      *(v25 + 16) = v23 + 1;
      *(v25 + 8 * v23 + 32) = v20;
      v11 = v24;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_22B3DE460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v9 = v4 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v10 = type metadata accessor for BlackPearlLevels();
  v11 = v9 + *(v10 + 32);
  v12 = type metadata accessor for BlackPearlModel(0);
  if ((*(v11 + *(v12 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v13 = *(v11 + *(v12 + 32));
  swift_endAccess();
  if (v13)
  {
    v41 = v13;
    v14 = sub_22B3DE21C(a3, a4);
    v15 = sub_22B3DE23C(a1, a2);
    v16 = sub_22B3E3940(v14, *(v9 + *(v10 + 48) + 80));

    v17 = sub_22B3E3940(v15, *(v9 + *(v10 + 48) + 72));

    v18 = sub_22B3E4A64(v16, *(v9 + *(v10 + 48) + 80));

    v19 = sub_22B3E4A64(v17, *(v9 + *(v10 + 48) + 72));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22B3F79C0;
    *(inited + 32) = 0x6275735F78;
    *(inited + 40) = 0xE500000000000000;
    v21 = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
    *(inited + 48) = v18;
    *(inited + 72) = v21;
    *(inited + 80) = 0x6E65735F78;
    *(inited + 120) = v21;
    *(inited + 88) = 0xE500000000000000;
    *(inited + 96) = v19;
    v22 = v18;
    v23 = v19;
    v24 = sub_22B3CBFB4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE348, &unk_22B3F8F88);
    swift_arrayDestroy();
    v25 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v26 = sub_22B3E0390();
    if (v42)
    {
    }

    else
    {
      v34 = v26;
      v43[0] = 0;
      v35 = [v41 predictionFromFeatures:v26 error:v43];
      v24 = v43[0];
      if (v35)
      {
        v36 = v35;
        v37 = v43[0];
        v38 = sub_22B3F6564();
        v24 = [v36 featureValueForName_];

        if (!v24)
        {
          v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v40 = sub_22B3F6564();
          [v24 initWithDomain:v40 code:1 userInfo:0];

          swift_willThrow();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v39 = v43[0];
        sub_22B3F6064();

        swift_willThrow();
      }
    }
  }

  else
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v27 = sub_22B3F6464();
    __swift_project_value_buffer(v27, qword_28140D680);
    v28 = sub_22B3F6444();
    v29 = sub_22B3F68C4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22B3A7000, v28, v29, "Failed to create TS model", v30, 2u);
      MEMORY[0x231890C40](v30, -1, -1);
    }

    v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v31 = sub_22B3F6564();
    [v24 initWithDomain:v31 code:2 userInfo:0];

    swift_willThrow();
  }

  v32 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_22B3DE958@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v6 = type metadata accessor for BlackPearlLevels();
  v7 = (v5 + *(v6 + 44));
  v8 = v7[9];
  v67[8] = v7[8];
  v67[9] = v8;
  v68[0] = v7[10];
  *(v68 + 9) = *(v7 + 169);
  v9 = v7[5];
  v67[4] = v7[4];
  v67[5] = v9;
  v10 = v7[7];
  v67[6] = v7[6];
  v67[7] = v10;
  v11 = v7[3];
  v67[2] = v7[2];
  v67[3] = v11;
  v12 = v7[1];
  v67[0] = *v7;
  v67[1] = v12;
  sub_22B3A9F54(v67, &v66);
  v13 = sub_22B3F6724();
  sub_22B3BE034(v67);
  if ((v13 & 1) == 0)
  {
    v23 = [a1 multiArrayValue];
    if (!v23)
    {
LABEL_34:
      result = sub_22B3F6B14();
      __break(1u);
      return result;
    }

    v24 = v23;
    v16 = sub_22B3E4CAC(v23);

    if (*(v16 + 16))
    {
      goto LABEL_3;
    }

LABEL_10:
    v19 = 0.0;
    v18 = 0.0;
    goto LABEL_11;
  }

  v14 = [a1 dictionaryValue];
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  v15 = sub_22B3F6524();

  v16 = sub_22B3E4F00(v15);

  if (!*(v16 + 16))
  {
    goto LABEL_10;
  }

LABEL_3:
  v17 = sub_22B3B79DC(0x5354544F4ELL, 0xE500000000000000);
  v18 = 0.0;
  v19 = 0.0;
  if (v20)
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  if (*(v16 + 16))
  {
    v21 = sub_22B3B79DC(0x544341534E415254, 0xEC000000534E4F49);
    if (v22)
    {
      v18 = *(*(v16 + 56) + 8 * v21);
    }
  }

LABEL_11:
  if (qword_28140BFC8 != -1)
  {
    swift_once();
  }

  v25 = sub_22B3F6464();
  __swift_project_value_buffer(v25, qword_28140D680);
  v26 = sub_22B3F6444();
  v27 = sub_22B3F68B4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v19;
    _os_log_impl(&dword_22B3A7000, v26, v27, "NOTTS Score: %f", v28, 0xCu);
    MEMORY[0x231890C40](v28, -1, -1);
  }

  v63 = v6;
  v64 = v5;
  v65 = a2;

  v29 = *(v16 + 16);
  if (v29)
  {
    v30 = sub_22B3E04FC(*(v16 + 16), 0);
    v31 = sub_22B3E23D8(&v66, v30 + 4, v29, v16);

    sub_22B3E4EF8();
    if (v31 == v29)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v30 = MEMORY[0x277D84F90];
LABEL_19:
  v66 = v30;
  sub_22B3E0FA4(&v66);
  v32 = v66;
  if (!*(v66 + 2))
  {
    __break(1u);

    __break(1u);
    goto LABEL_34;
  }

  v34 = *(v66 + 4);
  v33 = *(v66 + 5);
  v35 = v66[6];

  v36 = sub_22B3F6444();
  v37 = sub_22B3F68B4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v66 = v39;
    *v38 = 136315138;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE428, &qword_22B3F9BB8);
    v41 = MEMORY[0x2318900A0](v32, v40);
    v42 = v34;
    v44 = v43;

    v45 = sub_22B3BDABC(v41, v44, &v66);
    v34 = v42;

    *(v38 + 4) = v45;
    _os_log_impl(&dword_22B3A7000, v36, v37, "Sorted TS Category: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x231890C40](v39, -1, -1);
    MEMORY[0x231890C40](v38, -1, -1);
  }

  else
  {
  }

  v46 = sub_22B3F6444();
  v47 = sub_22B3F68B4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v66 = v49;
    *v48 = 136315394;

    v50 = sub_22B3BDABC(v34, v33, &v66);

    *(v48 + 4) = v50;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v35;
    _os_log_impl(&dword_22B3A7000, v46, v47, "Top TS Category: %s Value %f ", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x231890C40](v49, -1, -1);
    MEMORY[0x231890C40](v48, -1, -1);
  }

  v51 = sub_22B3F6444();
  v52 = sub_22B3F68A4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v66 = v54;
    *v53 = 136315138;
    v55 = sub_22B3F6534();
    v57 = v56;

    v58 = sub_22B3BDABC(v55, v57, &v66);

    *(v53 + 4) = v58;
    _os_log_impl(&dword_22B3A7000, v51, v52, "Category TS Scores: %s ", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x231890C40](v54, -1, -1);
    MEMORY[0x231890C40](v53, -1, -1);
  }

  else
  {
  }

  static CategoryTS.getCategory(for:)(&v66);

  v60 = 1.0 - v19;
  v62 = v66 - 9 >= 2 && (v61 = v64 + *(v63 + 48), *(v61 + 56) < v35) && *(v61 + 48) < v60;
  *v65 = v66;
  *(v65 + 8) = v60 - v18;
  *(v65 + 16) = v35;
  *(v65 + 24) = v62;
  return result;
}

__n128 sub_22B3DF0DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = sub_22B3DE460(a1, a2, a3, a4);
  sub_22B3DE958(v6, v9);

  v7 = v11;
  result = v10;
  *a5 = v9[0];
  *(a5 + 8) = result;
  *(a5 + 24) = v7;
  return result;
}

void *sub_22B3DF2B0(_BYTE *a1)
{
  v2 = *a1;
  if (v2 <= 1 && *a1)
  {

    goto LABEL_7;
  }

  v3 = sub_22B3F6C84();

  if (v3)
  {
LABEL_7:
    v4 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
    swift_beginAccess();
    v5 = v4 + *(type metadata accessor for BlackPearlLevels() + 36);
    v6 = type metadata accessor for BlackPearlModel(0);
    if ((*(v5 + *(v6 + 36)) & 1) == 0)
    {
      BlackPearlModel.loadModel()();
    }

    v7 = *(v5 + *(v6 + 32));
    swift_endAccess();
    if (v7)
    {
      goto LABEL_33;
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v8 = sub_22B3F6464();
    __swift_project_value_buffer(v8, qword_28140D680);
    v9 = sub_22B3F6444();
    v10 = sub_22B3F68C4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v48[0] = v12;
      *v11 = 136315138;
      v13 = 0xE500000000000000;
      v14 = 0xD000000000000011;
      v15 = 0x800000022B3FA140;
      if (v2 != 2)
      {
        v14 = 0x726F707075536E75;
        v15 = 0xEB00000000646574;
      }

      if (v2)
      {
        v16 = 0x6E6974616CLL;
      }

      else
      {
        v16 = 0x6873696C676E65;
      }

      if (!v2)
      {
        v13 = 0xE700000000000000;
      }

      if (v2 <= 1)
      {
        v17 = v16;
      }

      else
      {
        v17 = v14;
      }

      if (v2 <= 1)
      {
        v18 = v13;
      }

      else
      {
        v18 = v15;
      }

      v19 = sub_22B3BDABC(v17, v18, v48);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_22B3A7000, v9, v10, "HI Model not available %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x231890C40](v12, -1, -1);
      MEMORY[0x231890C40](v11, -1, -1);
    }

    return 0;
  }

  if (v2 == 2)
  {
  }

  else
  {
    v20 = sub_22B3F6C84();

    if ((v20 & 1) == 0)
    {
      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v25 = sub_22B3F6464();
      __swift_project_value_buffer(v25, qword_28140D680);
      v26 = sub_22B3F6444();
      v27 = sub_22B3F68C4();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_68;
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v48[0] = v29;
      *v28 = 136315138;
      v30 = 0xE500000000000000;
      if (v2)
      {
        v31 = 0x6E6974616CLL;
      }

      else
      {
        v31 = 0x6873696C676E65;
      }

      if (!v2)
      {
        v30 = 0xE700000000000000;
      }

      if (v2 <= 1)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0x726F707075536E75;
      }

      if (v2 <= 1)
      {
        v33 = v30;
      }

      else
      {
        v33 = 0xEB00000000646574;
      }

      v34 = sub_22B3BDABC(v32, v33, v48);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_22B3A7000, v26, v27, "Unsupported HI Model %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x231890C40](v29, -1, -1);
      v35 = v28;
      goto LABEL_67;
    }
  }

  v21 = v1 + OBJC_IVAR____TtC20MCCKitCategorization16DecisionStrategy_blackPearlLevels;
  swift_beginAccess();
  v22 = v21 + *(type metadata accessor for BlackPearlLevels() + 40);
  v23 = type metadata accessor for BlackPearlModel(0);
  if ((*(v22 + *(v23 + 36)) & 1) == 0)
  {
    BlackPearlModel.loadModel()();
  }

  v7 = *(v22 + *(v23 + 32));
  swift_endAccess();
  if (!v7)
  {
    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v36 = sub_22B3F6464();
    __swift_project_value_buffer(v36, qword_28140D680);
    v26 = sub_22B3F6444();
    v37 = sub_22B3F68C4();
    if (!os_log_type_enabled(v26, v37))
    {
      goto LABEL_68;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v48[0] = v39;
    *v38 = 136315138;
    v40 = 0xE500000000000000;
    v41 = 0xD000000000000011;
    if (v2 == 2)
    {
      v42 = 0x800000022B3FA140;
    }

    else
    {
      v41 = 0x726F707075536E75;
      v42 = 0xEB00000000646574;
    }

    if (v2)
    {
      v43 = 0x6E6974616CLL;
    }

    else
    {
      v43 = 0x6873696C676E65;
    }

    if (!v2)
    {
      v40 = 0xE700000000000000;
    }

    if (v2 <= 1)
    {
      v44 = v43;
    }

    else
    {
      v44 = v41;
    }

    if (v2 <= 1)
    {
      v45 = v40;
    }

    else
    {
      v45 = v42;
    }

    v46 = sub_22B3BDABC(v44, v45, v48);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_22B3A7000, v26, v37, "HI Model not available %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x231890C40](v39, -1, -1);
    v35 = v38;
LABEL_67:
    MEMORY[0x231890C40](v35, -1, -1);
LABEL_68:

    return 0;
  }

LABEL_33:
  v24 = v7;
  return v7;
}

void sub_22B3DF910(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  LOBYTE(v73[0]) = *a2;
  v6 = sub_22B3DF2B0(v73);
  if (!v6)
  {
    if (v5 <= 1 || v5 == 2)
    {
      v46 = sub_22B3F6C84();

      if ((v46 & 1) == 0)
      {
        *a3 = 1;
LABEL_55:
        __asm { FMOV            V0.2D, #-1.0 }

        *(a3 + 8) = _Q0;
        *(a3 + 24) = 0;
LABEL_56:
        v61 = *MEMORY[0x277D85DE8];
        return;
      }
    }

    else
    {
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v48 = sub_22B3F6464();
    __swift_project_value_buffer(v48, qword_28140D680);
    v49 = sub_22B3F6444();
    v50 = sub_22B3F68C4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v73[0] = v52;
      *v51 = 136315138;
      v53 = 0xD000000000000011;
      v54 = 0x800000022B3FA140;
      if (v5 != 2)
      {
        v53 = 0x726F707075536E75;
        v54 = 0xEB00000000646574;
      }

      v55 = 0xE700000000000000;
      v56 = 0x6E6974616CLL;
      if (v5)
      {
        v55 = 0xE500000000000000;
      }

      else
      {
        v56 = 0x6873696C676E65;
      }

      if (v5 <= 1)
      {
        v57 = v56;
      }

      else
      {
        v57 = v53;
      }

      if (v5 <= 1)
      {
        v58 = v55;
      }

      else
      {
        v58 = v54;
      }

      v59 = sub_22B3BDABC(v57, v58, v73);

      *(v51 + 4) = v59;
      _os_log_impl(&dword_22B3A7000, v49, v50, "Unsupported Model %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x231890C40](v52, -1, -1);
      MEMORY[0x231890C40](v51, -1, -1);
    }

    *a3 = 0;
    goto LABEL_55;
  }

  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE438, &unk_22B3F9BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22B3F79B0;
  *(inited + 32) = 0x7365727574616566;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = sub_22B3B41C4(0, &qword_28140BF78, 0x277CBFF48);
  *(inited + 48) = a1;
  v9 = a1;
  sub_22B3CBFB4(inited);
  swift_setDeallocating();
  sub_22B3B4B3C(inited + 32, &qword_27D8BE348, &unk_22B3F8F88);
  v10 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v26 = sub_22B3E0390();
  v73[0] = 0;
  v27 = [v7 predictionFromFeatures:v26 error:v73];
  v28 = v73[0];
  if (v27)
  {
    v29 = v27;
    swift_unknownObjectRetain();
    v30 = v28;
    v31 = sub_22B3F6564();
    v32 = [v29 featureValueForName_];

    swift_unknownObjectRelease();
    if (v32)
    {
      v33 = [v32 dictionaryValue];
      sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
      v34 = sub_22B3F6524();

      v35 = sub_22B3E4F00(v34);

      v36 = 0;
      if (*(v35 + 16))
      {
        v37 = sub_22B3B79DC(0x4948544F4ELL, 0xE500000000000000);
        if (v38)
        {
          v36 = *(*(v35 + 56) + 8 * v37);
        }
      }

      if (qword_28140BFC8 != -1)
      {
        swift_once();
      }

      v39 = sub_22B3F6464();
      __swift_project_value_buffer(v39, qword_28140D680);
      v40 = sub_22B3F6444();
      v41 = sub_22B3F68B4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = v36;
        _os_log_impl(&dword_22B3A7000, v40, v41, "NOTTS Score: %f", v42, 0xCu);
        MEMORY[0x231890C40](v42, -1, -1);
      }

      if (*(v35 + 16) && (v43 = sub_22B3B79DC(18760, 0xE200000000000000), (v44 & 1) != 0))
      {
        v45 = *(*(v35 + 56) + 8 * v43);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();

        v45 = 0.0;
      }

      if (v45 < 0.5)
      {
        v47 = 9;
      }

      else
      {
        v47 = 11;
      }

      *a3 = v47;
      *(a3 + 8) = v45;
      *(a3 + 16) = v45;
      *(a3 + 24) = v45 >= 0.5;
      goto LABEL_56;
    }
  }

  else
  {
    v62 = v73[0];
    v63 = sub_22B3F6064();

    swift_willThrow();
    v73[0] = v63;
    v11 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE0A8, &qword_22B3F7A70);
    if (swift_dynamicCast())
    {

      if (v72)
      {
        if (qword_28140BFC8 != -1)
        {
          swift_once();
        }

        v12 = sub_22B3F6464();
        __swift_project_value_buffer(v12, qword_28140D680);
        v13 = sub_22B3F6444();
        v14 = sub_22B3F68C4();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_22B3A7000, v13, v14, "Mbert returns empty tokens execution failed", v15, 2u);
          MEMORY[0x231890C40](v15, -1, -1);
        }

        v16 = 2;
      }

      else
      {
        if (qword_28140BFC8 != -1)
        {
          swift_once();
        }

        v17 = sub_22B3F6464();
        __swift_project_value_buffer(v17, qword_28140D680);
        v18 = sub_22B3F6444();
        v19 = sub_22B3F68C4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_22B3A7000, v18, v19, "Mbert model not available execution failed", v20, 2u);
          MEMORY[0x231890C40](v20, -1, -1);
        }

        v16 = 3;
      }

      *a3 = v16;
      __asm { FMOV            V0.2D, #-1.0 }

      *(a3 + 8) = _Q0;
      *(a3 + 24) = 0;

      goto LABEL_56;
    }

    if (qword_28140BFC8 != -1)
    {
      swift_once();
    }

    v64 = sub_22B3F6464();
    __swift_project_value_buffer(v64, qword_28140D680);
    v65 = v63;
    v66 = sub_22B3F6444();
    v67 = sub_22B3F68C4();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      v70 = v63;
      v71 = _swift_stdlib_bridgeErrorToNSError();
      *(v68 + 4) = v71;
      *v69 = v71;
      _os_log_impl(&dword_22B3A7000, v66, v67, "TS Model execution failed %@", v68, 0xCu);
      sub_22B3B4B3C(v69, &qword_27D8BE078, &qword_22B3F8C50);
      MEMORY[0x231890C40](v69, -1, -1);
      MEMORY[0x231890C40](v68, -1, -1);
    }
  }

  sub_22B3F6B14();
  __break(1u);
}

id sub_22B3E0294(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_22B3B41C4(0, &qword_28140BF28, 0x277CCABB0);
  v4 = sub_22B3F6784();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_22B3F6064();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_22B3E0390()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_22B3F6514();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_22B3F6064();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

void *sub_22B3E0478(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE450, &unk_22B3F9BE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22B3E04FC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE430, &qword_22B3F9BC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

char *sub_22B3E058C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE298, &unk_22B3F9C20);
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

char *sub_22B3E0698(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE200, &qword_22B3F88F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_22B3E078C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2B0, &qword_22B3F9C00);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22B3E0890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE2A0, &qword_22B3F88F8);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_22B3E099C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE450, &unk_22B3F9BE8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE440, &qword_22B3F9BE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22B3E0AD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BE290, &unk_22B3F88E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}