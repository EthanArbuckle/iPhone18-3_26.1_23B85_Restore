uint64_t sub_242E78044(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-v9 - 8];
  v11 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_242CA321C(&v21, v20, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v21, &qword_27ECF85E0);
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v12 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v12 = nullsub_2;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = *(a1 + 16);
  v13 = v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue;
  v14 = MEMORY[0x277D839B0];
  *(v13 + 24) = MEMORY[0x277D839B0];
  *(v13 + 32) = &protocol witness table for Bool;
  v15 = *(a1 + 40);
  *v13 = v15;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = a3;
  if (a3)
  {
    *(&v22 + 1) = v14;
    v23 = &protocol witness table for Bool;
    LOBYTE(v21) = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(&v21, v20, &qword_27ECF85E0);

    sub_242F03A90();
    sub_242C6D138(&v21, &qword_27ECF85E0);
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v3;
  v17 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v17 = sub_242E83B48;
  v17[1] = v16;

  return v3;
}

uint64_t sub_242E782F8(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v41) = a3;
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  v9 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_242CA321C(&v44, v43, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v44, &qword_27ECF85E0);
  (*(v6 + 32))(v3 + v9, v8, v5);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v10 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v10 = nullsub_2;
  v10[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = *(a1 + 16);
  v11 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52C0);
  v11[3] = v12;
  v13 = sub_242D96708(&qword_27ECF52C8, &qword_27ECF52C0);
  v11[4] = v13;
  v14 = swift_allocObject();
  *v11 = v14;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v21 = *(a1 + 88);
  v14[2] = v15;
  v14[3] = v16;
  v14[4] = v17;
  v14[5] = v18;
  v14[6] = v19;
  v14[7] = v20;
  v14[8] = v21;
  v22 = v41;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = v41;
  if (v22)
  {
    *(&v45 + 1) = v12;
    v46 = v13;
    v41 = v21;
    v23 = swift_allocObject();
    *&v44 = v23;
    v24 = *(a1 + 40);
    v25 = *(a1 + 48);
    v26 = *(a1 + 56);
    v38 = *(a1 + 64);
    v27 = v38;
    v39 = v26;
    v28 = *(a1 + 72);
    v36 = *(a1 + 80);
    v29 = v36;
    v37 = v28;
    v35 = *(a1 + 88);
    v30 = v35;
    v23[2] = v24;
    v23[3] = v25;
    v23[4] = v26;
    v23[5] = v27;
    v23[6] = v28;
    v23[7] = v29;
    v23[8] = v30;
    KeyPath = swift_getKeyPath();
    v34 = swift_getKeyPath();
    sub_242CA321C(&v44, v43, &qword_27ECF85E0);
    sub_242E83AAC(v15, v16, v17, v18, v19, v20, v41);
    sub_242E83AAC(v24, v25, v39, v38, v37, v36, v35);

    sub_242F03A90();
    sub_242C6D138(&v44, &qword_27ECF85E0);
  }

  else
  {
    sub_242E83AAC(v15, v16, v17, v18, v19, v20, v21);
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v31 = swift_allocObject();
  *(v31 + 16) = v42;
  *(v31 + 24) = v3;
  v32 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v32 = sub_242E83B0C;
  v32[1] = v31;

  return v3;
}

uint64_t sub_242E786B8(uint64_t a1, uint64_t a2, char a3)
{
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  *&v39 = 0;
  v37 = 0u;
  v38 = 0u;
  sub_242CA321C(&v37, v33, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v37, &qword_27ECF85E0);
  (*(v7 + 32))(v3 + v10, v9, v6);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v11 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v11 = nullsub_2;
  v11[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = *(a1 + 16);
  v12 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52E0);
  v12[3] = v13;
  v14 = sub_242D96708(&qword_27ECF52E8, &qword_27ECF52E0);
  v12[4] = v14;
  v15 = swift_allocObject();
  *v12 = v15;
  v16 = *(a1 + 56);
  v17 = *(a1 + 88);
  v39 = *(a1 + 72);
  v40 = v17;
  v41 = *(a1 + 104);
  v18 = v41;
  v37 = *(a1 + 40);
  v19 = v37;
  v38 = v16;
  v15[3] = v39;
  v15[4] = v17;
  v15[5] = v18;
  v15[1] = v19;
  v15[2] = v16;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = a3;
  if (a3)
  {
    v32[3] = v13;
    v32[4] = v14;
    v20 = swift_allocObject();
    v32[0] = v20;
    v21 = *(a1 + 56);
    v22 = *(a1 + 88);
    v34 = *(a1 + 72);
    v35 = v22;
    v36 = *(a1 + 104);
    v23 = v36;
    v33[0] = *(a1 + 40);
    v24 = v33[0];
    v33[1] = v21;
    v20[3] = v34;
    v20[4] = v22;
    v20[5] = v23;
    v20[1] = v24;
    v20[2] = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(v32, &v31, &qword_27ECF85E0);
    sub_242CA321C(&v37, v30, &qword_27ECF52E0);
    sub_242CA321C(v33, v30, &qword_27ECF52E0);

    sub_242F03A90();
    sub_242C6D138(v32, &qword_27ECF85E0);
  }

  else
  {
    sub_242CA321C(&v37, v33, &qword_27ECF52E0);
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v25 = swift_allocObject();
  *(v25 + 16) = v29;
  *(v25 + 24) = v3;
  v26 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v26 = sub_242E83A9C;
  v26[1] = v25;

  return v3;
}

uint64_t sub_242E78A84(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-v9 - 8];
  v11 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_242CA321C(&v21, v20, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v21, &qword_27ECF85E0);
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v12 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v12 = nullsub_2;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = *(a1 + 16);
  v13 = v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue;
  v14 = MEMORY[0x277D84B78];
  *(v13 + 24) = MEMORY[0x277D84B78];
  *(v13 + 32) = &protocol witness table for UInt8;
  v15 = *(a1 + 40);
  *v13 = v15;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = a3;
  if (a3)
  {
    *(&v22 + 1) = v14;
    v23 = &protocol witness table for UInt8;
    LOBYTE(v21) = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(&v21, v20, &qword_27ECF85E0);

    sub_242F03A90();
    sub_242C6D138(&v21, &qword_27ECF85E0);
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v3;
  v17 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v17 = sub_242E83A7C;
  v17[1] = v16;

  return v3;
}

uint64_t sub_242E78D38(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-v9 - 8];
  v11 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  sub_242CA321C(&v25, v24, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v25, &qword_27ECF85E0);
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v12 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v12 = nullsub_2;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = *(a1 + 16);
  v13 = v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5310);
  *(v13 + 24) = v14;
  v15 = sub_242D96708(&qword_27ECF5318, &qword_27ECF5310);
  *(v13 + 32) = v15;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *v13 = *(a1 + 40);
  *(v13 + 8) = v16;
  *(v13 + 16) = v17;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = a3;
  if (a3)
  {
    *(&v26 + 1) = v14;
    v27 = v15;
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    *&v25 = *(a1 + 40);
    *(&v25 + 1) = v18;
    LOWORD(v26) = v19;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(&v25, v24, &qword_27ECF85E0);

    sub_242F03A90();
    sub_242C6D138(&v25, &qword_27ECF85E0);
  }

  else
  {
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = v3;
  v21 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v21 = sub_242E83A38;
  v21[1] = v20;

  return v3;
}

uint64_t sub_242E7904C(_BYTE *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a2;
  v29 = a7;
  v27[1] = a5;
  v27[2] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - v13;
  v15 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_242CA321C(&v31, v30, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v31, &qword_27ECF85E0);
  (*(v12 + 32))(v7 + v15, v14, v11);
  *(v7 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v16 = (v7 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v16 = nullsub_2;
  v16[1] = 0;
  *(v7 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v7 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = a1[16];
  v17 = (v7 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue);
  v18 = *(*a1 + 112);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v17[3] = v19;
  v17[4] = &protocol witness table for Measurement<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  v21 = *(*(v19 - 8) + 16);
  v21(boxed_opaque_existential_1, &a1[v18], v19);
  *(v7 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = a3;
  if (a3)
  {
    *(&v32 + 1) = v19;
    v33 = &protocol witness table for Measurement<A>;
    v22 = __swift_allocate_boxed_opaque_existential_1(&v31);
    v21(v22, &a1[v18], v19);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(&v31, v30, &qword_27ECF85E0);

    sub_242F03A90();
    sub_242C6D138(&v31, &qword_27ECF85E0);
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 16) = v28;
  *(v23 + 24) = v7;
  v25 = (v7 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v25 = v24;
  v25[1] = v23;

  return v7;
}

uint64_t sub_242E7935C(uint64_t a1, uint64_t a2, int a3)
{
  v37 = a3;
  v38 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v9 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  *&v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_242CA321C(&v44, v42, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v44, &qword_27ECF85E0);
  (*(v6 + 32))(v3 + v9, v8, v5);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v10 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v10 = nullsub_2;
  v10[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = *(a1 + 16);
  v11 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5398);
  v11[3] = v12;
  v13 = sub_242D96708(&qword_27ECF53A0, &qword_27ECF5398);
  v11[4] = v13;
  v14 = swift_allocObject();
  *v11 = v14;
  v15 = *(a1 + 152);
  v50 = *(a1 + 136);
  v51 = v15;
  v52 = *(a1 + 168);
  v53 = *(a1 + 184);
  v16 = *(a1 + 88);
  v46 = *(a1 + 72);
  v47 = v16;
  v17 = *(a1 + 120);
  v48 = *(a1 + 104);
  v49 = v17;
  v18 = *(a1 + 56);
  v44 = *(a1 + 40);
  v45 = v18;
  v19 = *(a1 + 152);
  *(v14 + 112) = *(a1 + 136);
  *(v14 + 128) = v19;
  *(v14 + 144) = *(a1 + 168);
  *(v14 + 160) = *(a1 + 184);
  v20 = *(a1 + 88);
  *(v14 + 48) = *(a1 + 72);
  *(v14 + 64) = v20;
  v21 = *(a1 + 120);
  *(v14 + 80) = *(a1 + 104);
  *(v14 + 96) = v21;
  v22 = *(a1 + 56);
  *(v14 + 16) = *(a1 + 40);
  *(v14 + 32) = v22;
  v23 = v37;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = v37;
  if (v23)
  {
    v41[3] = v12;
    v41[4] = v13;
    v24 = swift_allocObject();
    v41[0] = v24;
    v25 = *(a1 + 152);
    v42[6] = *(a1 + 136);
    v42[7] = v25;
    v42[8] = *(a1 + 168);
    v43 = *(a1 + 184);
    v26 = *(a1 + 88);
    v42[2] = *(a1 + 72);
    v42[3] = v26;
    v27 = *(a1 + 120);
    v42[4] = *(a1 + 104);
    v42[5] = v27;
    v28 = *(a1 + 56);
    v42[0] = *(a1 + 40);
    v42[1] = v28;
    v29 = *(a1 + 152);
    *(v24 + 112) = *(a1 + 136);
    *(v24 + 128) = v29;
    *(v24 + 144) = *(a1 + 168);
    *(v24 + 160) = *(a1 + 184);
    v30 = *(a1 + 88);
    *(v24 + 48) = *(a1 + 72);
    *(v24 + 64) = v30;
    v31 = *(a1 + 120);
    *(v24 + 80) = *(a1 + 104);
    *(v24 + 96) = v31;
    v32 = *(a1 + 56);
    *(v24 + 16) = *(a1 + 40);
    *(v24 + 32) = v32;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(v41, &v40, &qword_27ECF85E0);
    sub_242CA321C(&v44, v39, &qword_27ECF5398);
    sub_242CA321C(v42, v39, &qword_27ECF5398);

    sub_242F03A90();
    sub_242C6D138(v41, &qword_27ECF85E0);
  }

  else
  {
    sub_242CA321C(&v44, v42, &qword_27ECF5398);
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v33 = swift_allocObject();
  *(v33 + 16) = v38;
  *(v33 + 24) = v3;
  v34 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v34 = sub_242E837A0;
  v34[1] = v33;

  return v3;
}

uint64_t sub_242E797D8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-v9 - 8];
  v11 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_242CA321C(&v22, v21, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v22, &qword_27ECF85E0);
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v12 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v12 = nullsub_2;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = *(a1 + 16);
  v13 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue);
  v14 = MEMORY[0x277D837D0];
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = &protocol witness table for String;
  v16 = *(a1 + 40);
  v15 = *(a1 + 48);
  *v13 = v16;
  v13[1] = v15;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = a3;
  if (a3)
  {
    *(&v23 + 1) = v14;
    v24 = &protocol witness table for String;
    *&v22 = v16;
    *(&v22 + 1) = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(&v22, v21, &qword_27ECF85E0);
    swift_bridgeObjectRetain_n();

    sub_242F03A90();
    sub_242C6D138(&v22, &qword_27ECF85E0);
  }

  else
  {
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = v3;
  v18 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v18 = sub_242E83E58;
  v18[1] = v17;

  return v3;
}

uint64_t sub_242E79A98(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-v9 - 8];
  v11 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_242CA321C(&v21, v20, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v21, &qword_27ECF85E0);
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v12 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v12 = nullsub_2;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = *(a1 + 16);
  v13 = v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue;
  v14 = MEMORY[0x277D84C58];
  *(v13 + 24) = MEMORY[0x277D84C58];
  *(v13 + 32) = &protocol witness table for UInt16;
  v15 = *(a1 + 40);
  *v13 = v15;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = a3;
  if (a3)
  {
    *(&v22 + 1) = v14;
    v23 = &protocol witness table for UInt16;
    LOWORD(v21) = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(&v21, v20, &qword_27ECF85E0);

    sub_242F03A90();
    sub_242C6D138(&v21, &qword_27ECF85E0);
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v3;
  v17 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v17 = sub_242E83A8C;
  v17[1] = v16;

  return v3;
}

uint64_t sub_242E79D4C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-v9 - 8];
  v11 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource__currentValue;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_242CA321C(&v21, v20, &qword_27ECF85E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF85E0);
  sub_242F03A40();
  sub_242C6D138(&v21, &qword_27ECF85E0);
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables) = MEMORY[0x277D84FA0];
  v12 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v12 = nullsub_2;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_identifier) = *(a1 + 16);
  v13 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue);
  v14 = MEMORY[0x277D83B88];
  v13[3] = MEMORY[0x277D83B88];
  v13[4] = &protocol witness table for Int;
  v15 = *(a1 + 40);
  *v13 = v15;
  *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) = a3;
  if (a3)
  {
    *(&v22 + 1) = v14;
    v23 = &protocol witness table for Int;
    *&v21 = v15;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_242CA321C(&v21, v20, &qword_27ECF85E0);

    sub_242F03A90();
    sub_242C6D138(&v21, &qword_27ECF85E0);
  }

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v3;
  v17 = (v3 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);
  *v17 = sub_242E83E08;
  v17[1] = v16;

  return v3;
}

uint64_t sub_242E7A000(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFABB0);
  sub_242C7E000(&qword_27ECFABB8, &qword_27ECFABB0);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7A144(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB70);
  sub_242C7E000(&qword_27ECFAB78, &qword_27ECFAB70);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7A288(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB50);
  sub_242C7E000(&qword_27ECFAB58, &qword_27ECFAB50);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7A3CC(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB40);
  sub_242C7E000(&qword_27ECFAB48, &qword_27ECFAB40);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7A510(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB20);
  sub_242C7E000(&qword_27ECFAB28, &qword_27ECFAB20);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7A654(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB00);
  sub_242C7E000(&qword_27ECFAB08, &qword_27ECFAB00);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7A798(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAAB0);
  sub_242C7E000(&qword_27ECFAAB8, &qword_27ECFAAB0);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7A8DC(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAAE0);
  sub_242C7E000(&qword_27ECFAAE8, &qword_27ECFAAE0);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7AA20(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAAA0);
  sub_242C7E000(&qword_27ECFAAA8, &qword_27ECFAAA0);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7AB64(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFABE0);
  sub_242C7E000(&qword_27ECFABE8, &qword_27ECFABE0);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7ACA8(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB30);
  sub_242C7E000(&qword_27ECFAB38, &qword_27ECFAB30);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7ADEC(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB90);
  sub_242C7E000(&qword_27ECFAB98, &qword_27ECFAB90);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7AF30(uint64_t a1, uint64_t a2)
{
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFABD0);
  sub_242C7E000(&qword_27ECFABD8, &qword_27ECFABD0);
  sub_242F03B00();

  swift_unownedRelease();
  swift_unownedRetainStrong();
  swift_beginAccess();
  sub_242F039F0();
  swift_endAccess();
}

uint64_t sub_242E7B074(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_unownedRetainStrong();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v9[3] = v5;
  v9[4] = &protocol witness table for Measurement<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, a1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v9, &v8, &qword_27ECF85E0);
  sub_242F03A90();
  return sub_242C6D138(v9, &qword_27ECF85E0);
}

uint64_t sub_242E7B17C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFABA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  sub_242C8760C(0, &qword_27ECFAA08);
  v7 = [objc_opt_self() mainRunLoop];
  v8 = sub_242F05830();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = sub_242F057E0();

  sub_242C6D138(v2, &qword_27ECFA9B0);
  v15 = v9;
  sub_242F057D0();
  sub_242E835E4();
  v10 = sub_242F03A20();

  v15 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
  sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
  sub_242F03AD0();

  sub_242C7E000(&qword_27ECFABA8, &qword_27ECFABA0);
  v11 = sub_242F03AC0();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for InstrumentDataSource();
  swift_allocObject();

  return sub_242E79D4C(v12, v11, 1);
}

uint64_t sub_242E7B4B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  sub_242C8760C(0, &qword_27ECFAA08);
  v7 = [objc_opt_self() mainRunLoop];
  v8 = sub_242F05830();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = sub_242F057E0();

  sub_242C6D138(v2, &qword_27ECFA9B0);
  v15 = v9;
  sub_242F057D0();
  sub_242E835E4();
  v10 = sub_242F03A20();

  v15 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
  sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
  sub_242F03AD0();

  sub_242C7E000(&qword_27ECFAB68, &qword_27ECFAB60);
  v11 = sub_242F03AC0();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for InstrumentDataSource();
  swift_allocObject();

  return sub_242E797D8(v12, v11, 1);
}

uint64_t sub_242E7B7F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  sub_242C8760C(0, &qword_27ECFAA08);
  v7 = [objc_opt_self() mainRunLoop];
  v8 = sub_242F05830();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = sub_242F057E0();

  sub_242C6D138(v2, &qword_27ECFA9B0);
  v15 = v9;
  sub_242F057D0();
  sub_242E835E4();
  v10 = sub_242F03A20();

  v15 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5310);
  sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
  sub_242F03AD0();

  sub_242C7E000(&qword_27ECFAA88, &qword_27ECFAA80);
  v11 = sub_242F03AC0();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for InstrumentDataSource();
  swift_allocObject();

  return sub_242E78D38(v12, v11, 1);
}

uint64_t sub_242E7BB44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  sub_242C8760C(0, &qword_27ECFAA08);
  v7 = [objc_opt_self() mainRunLoop];
  v8 = sub_242F05830();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = sub_242F057E0();

  sub_242C6D138(v2, &qword_27ECFA9B0);
  v15 = v9;
  sub_242F057D0();
  sub_242E835E4();
  v10 = sub_242F03A20();

  v15 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5398);
  sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
  sub_242F03AD0();

  sub_242C7E000(&qword_27ECFAA98, &qword_27ECFAA90);
  v11 = sub_242F03AC0();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for InstrumentDataSource();
  swift_allocObject();

  return sub_242E7935C(v12, v11, 1);
}

uint64_t sub_242E7BE94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  sub_242C8760C(0, &qword_27ECFAA08);
  v7 = [objc_opt_self() mainRunLoop];
  v8 = sub_242F05830();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = sub_242F057E0();

  sub_242C6D138(v2, &qword_27ECFA9B0);
  v15 = v9;
  sub_242F057D0();
  sub_242E835E4();
  v10 = sub_242F03A20();

  v15 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
  sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
  sub_242F03AD0();

  sub_242C7E000(&qword_27ECFAB18, &qword_27ECFAB10);
  v11 = sub_242F03AC0();
  (*(v4 + 8))(v6, v3);
  type metadata accessor for InstrumentDataSource();
  swift_allocObject();

  return sub_242E78A84(v12, v11, 1);
}

uint64_t sub_242E7C1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358);
  v4 = *(v34 - 8);
  v35 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5378);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAAD0);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x28223BE20](v13);
  v32 = &v31 - v15;
  sub_242C8760C(0, &qword_27ECFAA08);
  v16 = [objc_opt_self() mainRunLoop];
  v17 = sub_242F05830();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_242F057E0();

  sub_242C6D138(v12, &qword_27ECFA9B0);
  v40 = v18;
  sub_242F057D0();
  sub_242E835E4();
  v19 = sub_242F03A20();

  v40 = v19;
  sub_242CA321C(a2, v9, &qword_27ECF5378);
  v21 = v33;
  v20 = v34;
  (*(v4 + 16))(v33, v36, v34);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = (v7 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  sub_242CF6B3C(v9, v24 + v22, &qword_27ECF5378);
  (*(v4 + 32))(v24 + v23, v21, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
  sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
  v25 = v32;
  sub_242F03AE0();

  sub_242C7E000(&qword_27ECFAAD8, &qword_27ECFAAD0);
  v26 = v37;
  v27 = v25;
  v28 = sub_242F03AC0();
  (*(v38 + 8))(v27, v26);
  type metadata accessor for InstrumentDataSource();
  swift_allocObject();

  return sub_242E7904C(v29, v28, 1, &qword_27ECF5358, &unk_242F2D428, &unk_285592230, sub_242E83908);
}

uint64_t sub_242E7C6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C8);
  v4 = *(v34 - 8);
  v35 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAB80);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x28223BE20](v13);
  v32 = &v31 - v15;
  sub_242C8760C(0, &qword_27ECFAA08);
  v16 = [objc_opt_self() mainRunLoop];
  v17 = sub_242F05830();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_242F057E0();

  sub_242C6D138(v12, &qword_27ECFA9B0);
  v40 = v18;
  sub_242F057D0();
  sub_242E835E4();
  v19 = sub_242F03A20();

  v40 = v19;
  sub_242CA321C(a2, v9, &qword_27ECF53C0);
  v21 = v33;
  v20 = v34;
  (*(v4 + 16))(v33, v36, v34);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = (v7 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  sub_242CF6B3C(v9, v24 + v22, &qword_27ECF53C0);
  (*(v4 + 32))(v24 + v23, v21, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
  sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
  v25 = v32;
  sub_242F03AE0();

  sub_242C7E000(&qword_27ECFAB88, &qword_27ECFAB80);
  v26 = v37;
  v27 = v25;
  v28 = sub_242F03AC0();
  (*(v38 + 8))(v27, v26);
  type metadata accessor for InstrumentDataSource();
  swift_allocObject();

  return sub_242E7904C(v29, v28, 1, &qword_27ECF53C8, &unk_242F2D488, &unk_285592500, sub_242E83D90);
}

uint64_t sub_242E7CC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v39 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  v4 = *(v34 - 8);
  v35 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAAF0);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x28223BE20](v13);
  v32 = &v31 - v15;
  sub_242C8760C(0, &qword_27ECFAA08);
  v16 = [objc_opt_self() mainRunLoop];
  v17 = sub_242F05830();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_242F057E0();

  sub_242C6D138(v12, &qword_27ECFA9B0);
  v40 = v18;
  sub_242F057D0();
  sub_242E835E4();
  v19 = sub_242F03A20();

  v40 = v19;
  sub_242CA321C(a2, v9, &qword_27ECF5328);
  v21 = v33;
  v20 = v34;
  (*(v4 + 16))(v33, v36, v34);
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = (v7 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  sub_242CF6B3C(v9, v24 + v22, &qword_27ECF5328);
  (*(v4 + 32))(v24 + v23, v21, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
  sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
  v25 = v32;
  sub_242F03AE0();

  sub_242C7E000(&qword_27ECFAAF8, &qword_27ECFAAF0);
  v26 = v37;
  v27 = v25;
  v28 = sub_242F03AC0();
  (*(v38 + 8))(v27, v26);
  type metadata accessor for InstrumentDataSource();
  swift_allocObject();

  return sub_242E7904C(v29, v28, 1, &qword_27ECF5330, &unk_242F2D408, &unk_2855921B8, sub_242E837D8);
}

void sub_242E7D154(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v7 = sub_242E3BFB0(0x20000000000001uLL);
    v8 = v4 * vcvtd_n_f64_u64(v7, 0x35uLL) + a2;
    if (v7 == 0x20000000000000)
    {
      v8 = a3;
    }

    *a1 = v8;
  }
}

uint64_t sub_242E7D1D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  sub_242F034A0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328);
  result = sub_242F034A0();
  if (v1 > v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (COERCE__INT64(fabs(v3 - v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_242E3BFB0(0x20000000000001uLL);
  sub_242F03480();
  sub_242C8760C(0, &qword_27ECF5338);

  return sub_242F03490();
}

uint64_t sub_242E7D2EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C8);
  sub_242F034A0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C0);
  result = sub_242F034A0();
  if (v1 > v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (COERCE__INT64(fabs(v3 - v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_242E3BFB0(0x20000000000001uLL);
  sub_242F03480();
  sub_242C8760C(0, &qword_27ECF53D0);

  return sub_242F03490();
}

uint64_t sub_242E7D408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358);
  sub_242F034A0();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5378);
  result = sub_242F034A0();
  if (v1 > v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (COERCE__INT64(fabs(v3 - v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_242E3BFB0(0x20000000000001uLL);
  sub_242F03480();
  sub_242C8760C(0, &qword_27ECF5360);

  return sub_242F03490();
}

unint64_t sub_242E7D524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v5 = 0;
    return v5 | ((v3 == 0) << 8);
  }

  result = sub_242E3BFB0(*(v2 + 16));
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v2 + 16))
  {
    v5 = *(v2 + result + 32);
    return v5 | ((v3 == 0) << 8);
  }

  __break(1u);
  return result;
}

void sub_242E7D590(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 192);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_242E3BFB0(v4);
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *(v3 + 16))
    {
      v6 = v3 + 152 * v5;
      v7 = *(v6 + 48);
      v19 = *(v6 + 32);
      v20 = v7;
      v8 = *(v6 + 64);
      v9 = *(v6 + 80);
      v10 = *(v6 + 112);
      v23 = *(v6 + 96);
      v24 = v10;
      v21 = v8;
      v22 = v9;
      v11 = *(v6 + 128);
      v12 = *(v6 + 144);
      v13 = *(v6 + 160);
      v28 = *(v6 + 176);
      v26 = v12;
      v27 = v13;
      v25 = v11;
      memmove(a2, (v6 + 32), 0x98uLL);
      nullsub_2(a2);
      sub_242CA321C(&v19, v18, &qword_27ECF5398);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_242E837B0(&v19);
    v14 = v26;
    a2[6] = v25;
    a2[7] = v14;
    a2[8] = v27;
    *(a2 + 18) = v28;
    v15 = v22;
    a2[2] = v21;
    a2[3] = v15;
    v16 = v24;
    a2[4] = v23;
    a2[5] = v16;
    v17 = v20;
    *a2 = v19;
    a2[1] = v17;
  }
}

unint64_t sub_242E7D694@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64);
  result = *(v3 + 16);
  if (!result)
  {
    *a2 = xmmword_242F41ED0;
    *(a2 + 16) = 0;
    return result;
  }

  result = sub_242E3BFB0(result);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v3 + 16))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = v3 + 24 * result;
  v7 = *(v5 + 32);
  v6 = *(v5 + 40);
  LOWORD(v5) = *(v5 + 48);
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
}

unint64_t sub_242E7D720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = sub_242E3BFB0(v3);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v2 + 16))
  {
    v5 = *(v2 + 16 * result + 32);

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_242E7D788(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (!*(v2 + 16))
  {
    return 0;
  }

  result = sub_242E3BFB0(*(v2 + 16));
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v2 + 16))
  {
    return *(v2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_242E7D7E8@<X0>(uint64_t result@<X0>, char a2@<W2>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D3>)
{
  v6 = *(result + 8);
  v7 = (a4 - a5) * a6 * v6;
  v8 = *result + v7;
  if (v8 < a4)
  {
    v9 = *result + v7;
  }

  else
  {
    v9 = a5;
  }

  v10 = -1;
  if (v8 <= a5)
  {
    v10 = 1;
  }

  v11 = -1;
  if (v8 < a4)
  {
    v11 = 1;
  }

  if (v6 != 1)
  {
    v11 = *(result + 8);
  }

  if (v6 == -1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v8 <= a4)
  {
    a4 = v8;
  }

  if (v8 < a5)
  {
    a4 = a5;
  }

  if ((a2 & 1) == 0)
  {
    a4 = v9;
    v12 = 1;
  }

  *a3 = a4;
  *(a3 + 8) = v12;
  return result;
}

double sub_242E7D864@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_242E7D870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v36 = a4;
  v35 = a1;
  v40 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA960);
  MEMORY[0x28223BE20](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v33 - v20;
  sub_242C8760C(0, &qword_27ECF5338);
  v37 = a2;
  v34 = a3;
  sub_242F03470();
  sub_242F03450();
  v38 = v10;
  v22 = *(v10 + 8);
  v22(v12, v9);
  v39 = v7;
  v23 = *(v7 + 48);
  v24 = v35;
  v25 = *(v35 + v23);
  sub_242F03450();
  v22(v15, v9);
  sub_242F03460();
  v22(v18, v9);
  if (v36)
  {
    v26 = v37;
    if (v25 == -1)
    {
      sub_242C7E000(&qword_27ECFAA58, &qword_27ECF5330);
      v27 = v34;
      if ((sub_242F04E60() & 1) == 0)
      {
        v28 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v27 = v34;
      if (v25 == 1)
      {
        sub_242C7E000(&qword_27ECFAA58, &qword_27ECF5330);
        if ((sub_242F04E60() & 1) == 0)
        {
          v28 = -1;
LABEL_13:
          v31 = v39;
          v29 = v40;
LABEL_14:
          sub_242C7E000(&qword_27ECFAA58, &qword_27ECF5330);
          if (sub_242F04E60())
          {
            v22(v21, v9);
            result = (*(v38 + 16))(v29, v27, v9);
          }

          else if (sub_242F04E50())
          {
            v22(v21, v9);
            result = (*(v38 + 16))(v29, v26, v9);
          }

          else
          {
            result = (*(v38 + 32))(v29, v21, v9);
          }

          goto LABEL_20;
        }
      }
    }

    v32 = v33;
    sub_242CA321C(v24, v33, &qword_27ECFA960);
    v31 = v39;
    v28 = *(v32 + *(v39 + 48));
    v22(v32, v9);
    v29 = v40;
    goto LABEL_14;
  }

  sub_242C7E000(&qword_27ECFAA58, &qword_27ECF5330);
  if (sub_242F04E60())
  {
    v29 = v40;
    result = (*(v38 + 32))(v40, v21, v9);
  }

  else
  {
    v22(v21, v9);
    v29 = v40;
    result = (*(v38 + 16))(v40, v34, v9);
  }

  v28 = 1;
  v31 = v39;
LABEL_20:
  *(v29 + *(v31 + 48)) = v28;
  return result;
}

uint64_t sub_242E7DD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_242CA321C(a1, &v9 - v5, &qword_27ECFA960);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  return (*(*(v7 - 8) + 32))(a2, v6, v7);
}

uint64_t sub_242E7DE88(uint64_t *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  v4[3] = MEMORY[0x277D839F8];
  v4[4] = &protocol witness table for Double;
  v4[0] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v4, &v3, &qword_27ECF85E0);
  sub_242F03A90();
  return sub_242C6D138(v4, &qword_27ECF85E0);
}

uint64_t sub_242E7DF54(char *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  v5 = MEMORY[0x277D839B0];
  v6 = &protocol witness table for Bool;
  v4[0] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v4, &v3, &qword_27ECF85E0);
  sub_242F03A90();
  return sub_242C6D138(v4, &qword_27ECF85E0);
}

uint64_t sub_242E7E018(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  swift_unownedRetainStrong();
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52C0);
  v11[4] = sub_242D96708(&qword_27ECF52C8, &qword_27ECF52C0);
  v8 = swift_allocObject();
  v11[0] = v8;
  v8[2] = v1;
  v8[3] = v2;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v6;
  v8[8] = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v11, v10, &qword_27ECF85E0);
  sub_242E83AAC(v1, v2, v3, v4, v5, v6, v7);
  sub_242F03A90();
  return sub_242C6D138(v11, &qword_27ECF85E0);
}

uint64_t sub_242E7E168(_OWORD *a1)
{
  v2 = a1[3];
  v11[2] = a1[2];
  v11[3] = v2;
  v11[4] = a1[4];
  v3 = a1[1];
  v11[0] = *a1;
  v11[1] = v3;
  swift_unownedRetainStrong();
  v10[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52E0);
  v10[4] = sub_242D96708(&qword_27ECF52E8, &qword_27ECF52E0);
  v4 = swift_allocObject();
  v10[0] = v4;
  v5 = a1[3];
  v4[3] = a1[2];
  v4[4] = v5;
  v4[5] = a1[4];
  v6 = a1[1];
  v4[1] = *a1;
  v4[2] = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v10, v9, &qword_27ECF85E0);
  sub_242CA321C(v11, &v8, &qword_27ECF52E0);
  sub_242F03A90();
  return sub_242C6D138(v10, &qword_27ECF85E0);
}

uint64_t sub_242E7E2B8(char *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  v5 = MEMORY[0x277D84B78];
  v6 = &protocol witness table for UInt8;
  v4[0] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v4, &v3, &qword_27ECF85E0);
  sub_242F03A90();
  return sub_242C6D138(v4, &qword_27ECF85E0);
}

uint64_t sub_242E7E37C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 8);
  swift_unownedRetainStrong();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5310);
  v9 = sub_242D96708(&qword_27ECF5318, &qword_27ECF5310);
  v6[0] = v2;
  v6[1] = v1;
  v7 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v6, &v5, &qword_27ECF85E0);

  sub_242F03A90();
  return sub_242C6D138(v6, &qword_27ECF85E0);
}

uint64_t sub_242E7E47C(uint64_t a1)
{
  v2 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v2;
  v15[8] = *(a1 + 128);
  v16 = *(a1 + 144);
  v3 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v3;
  v4 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v4;
  v5 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v5;
  swift_unownedRetainStrong();
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5398);
  v14[4] = sub_242D96708(&qword_27ECF53A0, &qword_27ECF5398);
  v6 = swift_allocObject();
  v14[0] = v6;
  v7 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v7;
  *(v6 + 144) = *(a1 + 128);
  *(v6 + 160) = *(a1 + 144);
  v8 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v8;
  v9 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v9;
  v10 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v14, v13, &qword_27ECF85E0);
  sub_242CA321C(v15, v12, &qword_27ECF5398);
  sub_242F03A90();
  return sub_242C6D138(v14, &qword_27ECF85E0);
}

uint64_t sub_242E7E600(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_unownedRetainStrong();
  v5[3] = MEMORY[0x277D837D0];
  v5[4] = &protocol witness table for String;
  v5[0] = v2;
  v5[1] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v5, &v4, &qword_27ECF85E0);

  sub_242F03A90();
  return sub_242C6D138(v5, &qword_27ECF85E0);
}

uint64_t sub_242E7E6CC(__int16 *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  v5 = MEMORY[0x277D84C58];
  v6 = &protocol witness table for UInt16;
  v4[0] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v4, &v3, &qword_27ECF85E0);
  sub_242F03A90();
  return sub_242C6D138(v4, &qword_27ECF85E0);
}

uint64_t sub_242E7E790(uint64_t *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  v4[3] = MEMORY[0x277D83B88];
  v4[4] = &protocol witness table for Int;
  v4[0] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_242CA321C(v4, &v3, &qword_27ECF85E0);
  sub_242F03A90();
  return sub_242C6D138(v4, &qword_27ECF85E0);
}

uint64_t sub_242E7E854(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFABC0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-v8];
  sub_242C8760C(0, &qword_27ECFAA08);
  v10 = [objc_opt_self() mainRunLoop];
  v11 = sub_242F05830();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = sub_242F057E0();

  sub_242C6D138(v5, &qword_27ECFA9B0);
  v18 = v12;
  sub_242F057D0();
  sub_242E835E4();
  v13 = sub_242F03A20();

  v18 = v13;
  v17[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
  sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
  sub_242F03AF0();

  sub_242C7E000(&qword_27ECFABC8, &qword_27ECFABC0);
  v14 = sub_242F03AC0();
  (*(v7 + 8))(v9, v6);
  type metadata accessor for InstrumentDataSource();
  swift_allocObject();

  return sub_242E78044(v15, v14, 1);
}

uint64_t _s14CarPlayAssetUI20InstrumentDataSourceC07previewG014dataIdentifier10zoneRegionAcA0efJ0O_SSSgtFZ_0(_BYTE *a1)
{
  v242 = a1;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA940);
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v203 = &v189 - v1;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA948);
  v200 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v199 = &v189 - v2;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA950);
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v189 - v3;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA958);
  v218 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v217 = &v189 - v4;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C8);
  v195 = *(v228 - 8);
  MEMORY[0x28223BE20](v228);
  v194 = &v189 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C0);
  MEMORY[0x28223BE20](v6 - 8);
  v193 = &v189 - v7;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328);
  v201 = *(v191 - 8);
  v8 = *(v201 + 64);
  MEMORY[0x28223BE20](v191);
  v204 = &v189 - v9;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA960);
  MEMORY[0x28223BE20](v208);
  v207 = &v189 - v10;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA968);
  v213 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v211 = &v189 - v11;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA970);
  v212 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v210 = &v189 - v12;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);
  v223 = *(v209 - 8);
  v13 = *(v223 + 64);
  MEMORY[0x28223BE20](v209);
  v192 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v222 = &v189 - v15;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA978);
  v220 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v17 = &v189 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA980);
  v216 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v189 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA988);
  v226 = *(v21 - 8);
  v227 = v21;
  MEMORY[0x28223BE20](v21);
  v225 = &v189 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA990);
  v224 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v189 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA998);
  v27 = *(v26 - 8);
  v239 = v26;
  v240 = v27;
  MEMORY[0x28223BE20](v26);
  v238 = &v189 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9A0);
  v233 = *(v29 - 8);
  v234 = v29;
  MEMORY[0x28223BE20](v29);
  v232 = &v189 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9A8);
  v236 = *(v31 - 8);
  v237 = v31;
  MEMORY[0x28223BE20](v31);
  v235 = &v189 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358);
  v190 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v189 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5378);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v189 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B0);
  MEMORY[0x28223BE20](v39 - 8);
  v241 = &v189 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9B8);
  v230 = *(v41 - 8);
  v231 = v41;
  MEMORY[0x28223BE20](v41);
  v229 = &v189 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFA9C0);
  MEMORY[0x28223BE20](v43);
  v47 = &v189 - v45;
  switch(*v242)
  {
    case 1:
      if (qword_27ECEF288 != -1)
      {
        swift_once();
      }

      v113 = off_27ECF5098;
      v114 = off_27ECF5098 + *(*off_27ECF5098 + 152);
      v115 = off_27ECF5098 + *(*off_27ECF5098 + 112);
      goto LABEL_187;
    case 2:
      if (qword_27ECEF298 == -1)
      {
        goto LABEL_213;
      }

      goto LABEL_280;
    case 3:
      if (qword_27ECEF2A0 == -1)
      {
        goto LABEL_213;
      }

      goto LABEL_280;
    case 4:
      if (qword_27ECEF2A8 == -1)
      {
        goto LABEL_156;
      }

      goto LABEL_265;
    case 5:
      if (qword_27ECEF2B0 == -1)
      {
        goto LABEL_156;
      }

      goto LABEL_265;
    case 6:
      if (qword_27ECEF290 == -1)
      {
        goto LABEL_181;
      }

      goto LABEL_270;
    case 7:
      if (qword_27ECEF408 == -1)
      {
        goto LABEL_181;
      }

      goto LABEL_270;
    case 8:
      if (qword_27ECEF400 == -1)
      {
        goto LABEL_181;
      }

      goto LABEL_270;
    case 9:
      if (qword_27ECEF200 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_236;
    case 0xA:
      if (qword_27ECEF208 == -1)
      {
        goto LABEL_181;
      }

      goto LABEL_270;
    case 0xB:
      if (qword_27ECEF210 == -1)
      {
        goto LABEL_213;
      }

      goto LABEL_280;
    case 0xC:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF218 == -1)
      {
        goto LABEL_211;
      }

      goto LABEL_233;
    case 0xD:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF220 == -1)
      {
        goto LABEL_211;
      }

      goto LABEL_233;
    case 0xE:
      if (qword_27ECEF228 != -1)
      {
        swift_once();
      }

      v100 = qword_27ECF5038;
      v101 = objc_opt_self();
      v102 = [v101 kilowatts];
      sub_242E77480(v102, v38);

      v103 = [v101 kilowatts];
      sub_242C8760C(0, &qword_27ECF5360);
      sub_242F03490();
      v104 = sub_242E7C1D0(v100, v38, v35);
      (*(v190 + 8))(v35, v33);
      v105 = &qword_27ECF5378;
      v106 = v38;
      goto LABEL_200;
    case 0xF:
      if (qword_27ECEF230 == -1)
      {
        goto LABEL_181;
      }

      goto LABEL_270;
    case 0x10:
      if (qword_27ECEF238 != -1)
      {
        swift_once();
      }

      sub_242C8760C(0, &qword_27ECFAA08);
      v95 = [objc_opt_self() mainRunLoop];
      v96 = sub_242F05830();
      v97 = v241;
      (*(*(v96 - 8) + 56))(v241, 1, 1, v96);
      v98 = sub_242F057E0();

      sub_242C6D138(v97, &qword_27ECFA9B0);
      v243 = v98;
      sub_242F057D0();
      sub_242E835E4();
      v99 = sub_242F03A20();

      v243 = v99;
      *(swift_allocObject() + 16) = xmmword_242F41F70;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
      sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
      goto LABEL_179;
    case 0x11:
    case 0x4E:
      if (qword_27ECEF240 != -1)
      {
        swift_once();
      }

      return sub_242E7B4B8();
    case 0x12:
      if (qword_27ECEF250 != -1)
      {
        swift_once();
      }

      v55 = qword_27ECF5060;
      goto LABEL_229;
    case 0x13:
      if (qword_27ECEF248 == -1)
      {
        goto LABEL_133;
      }

      goto LABEL_266;
    case 0x14:
      if (qword_27ECEF2B8 == -1)
      {
        goto LABEL_181;
      }

      goto LABEL_270;
    case 0x15:
      if (qword_27ECEF258 != -1)
      {
        swift_once();
      }

      sub_242C8760C(0, &qword_27ECFAA08);
      v128 = [objc_opt_self() mainRunLoop];
      v129 = sub_242F05830();
      v130 = v241;
      (*(*(v129 - 8) + 56))(v241, 1, 1, v129);
      v131 = sub_242F057E0();

      sub_242C6D138(v130, &qword_27ECFA9B0);
      v243 = v131;
      sub_242F057D0();
      sub_242E835E4();
      v132 = sub_242F03A20();

      v243 = v132;
      *(swift_allocObject() + 16) = xmmword_242F41F60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
      sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
      goto LABEL_179;
    case 0x16:
      if (qword_27ECEF278 == -1)
      {
        goto LABEL_181;
      }

      goto LABEL_270;
    case 0x17:
      if (qword_27ECEF260 != -1)
      {
        swift_once();
      }

      v90 = qword_27ECF5070;
      goto LABEL_172;
    case 0x18:
      if (qword_27ECEF268 == -1)
      {
        goto LABEL_178;
      }

      goto LABEL_278;
    case 0x19:
      if (qword_27ECEF270 != -1)
      {
        swift_once();
      }

      sub_242C8760C(0, &qword_27ECFAA08);
      v151 = [objc_opt_self() mainRunLoop];
      v152 = sub_242F05830();
      v153 = v241;
      (*(*(v152 - 8) + 56))(v241, 1, 1, v152);
      v154 = sub_242F057E0();

      sub_242C6D138(v153, &qword_27ECFA9B0);
      v243 = v154;
      sub_242F057D0();
      sub_242E835E4();
      v155 = sub_242F03A20();

      v244 = 1;
      v245 = v155;
      v243 = 0;
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_242F41F40;
      *(v156 + 32) = xmmword_242F41F50;
      *(v156 + 48) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA20);
      sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
      goto LABEL_209;
    case 0x1A:
      if (qword_27ECEF280 == -1)
      {
        goto LABEL_213;
      }

      goto LABEL_280;
    case 0x1B:
      if (qword_27ECEF2C0 != -1)
      {
        swift_once();
      }

      v113 = off_27ECF50D0;
      v114 = off_27ECF50D0 + *(*off_27ECF50D0 + 152);
      v115 = off_27ECF50D0 + *(*off_27ECF50D0 + 112);
LABEL_187:

      return sub_242E7C6FC(v113, v114, v115);
    case 0x1C:
      if (qword_27ECEF2C8 == -1)
      {
        goto LABEL_213;
      }

      goto LABEL_280;
    case 0x1D:
      if (qword_27ECEF2D0 == -1)
      {
        goto LABEL_213;
      }

      goto LABEL_280;
    case 0x1E:
      if (qword_27ECEF2D8 == -1)
      {
        goto LABEL_156;
      }

      goto LABEL_265;
    case 0x1F:
      if (qword_27ECEF2E0 == -1)
      {
        goto LABEL_156;
      }

LABEL_265:
      swift_once();
LABEL_156:
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFA9E0, &qword_27ECFA990);
      v122 = sub_242F03AC0();
      (*(v224 + 8))(v25, v23);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      v124 = &qword_27ECF53C8;
      v125 = &unk_242F2D488;
      v126 = &unk_285592500;
      v127 = sub_242E83D90;
      return sub_242E7904C(v123, v122, 1, v124, v125, v126, v127);
    case 0x20:
      if (qword_27ECEF2E8 == -1)
      {
        goto LABEL_181;
      }

      goto LABEL_270;
    case 0x21:
      if (qword_27ECEF2F8 == -1)
      {
        goto LABEL_89;
      }

      goto LABEL_253;
    case 0x22:
      if (qword_27ECEF300 == -1)
      {
        goto LABEL_89;
      }

      goto LABEL_253;
    case 0x23:
      if (qword_27ECEF308 == -1)
      {
        goto LABEL_213;
      }

      goto LABEL_280;
    case 0x24:
      if (qword_27ECEF310 == -1)
      {
        goto LABEL_217;
      }

      goto LABEL_277;
    case 0x25:
      if (qword_27ECEF338 == -1)
      {
        goto LABEL_193;
      }

      goto LABEL_281;
    case 0x26:
      if (qword_27ECEF320 == -1)
      {
        goto LABEL_165;
      }

      goto LABEL_276;
    case 0x27:
      if (qword_27ECEF318 == -1)
      {
        goto LABEL_89;
      }

LABEL_253:
      swift_once();
LABEL_89:
      sub_242C8760C(0, &qword_27ECFAA08);
      v107 = [objc_opt_self() mainRunLoop];
      v108 = sub_242F05830();
      v109 = v241;
      (*(*(v108 - 8) + 56))(v241, 1, 1, v108);
      v110 = sub_242F057E0();

      sub_242C6D138(v109, &qword_27ECFA9B0);
      v243 = v110;
      sub_242F057D0();
      sub_242E835E4();
      v111 = sub_242F03A20();

      v244 = 1;
      v245 = v111;
      v243 = 0;
      v112 = swift_allocObject();
      *(v112 + 16) = 0x4069000000000000;
      *(v112 + 24) = xmmword_242F41F30;
      *(v112 + 40) = 0x3F6B4E81B4E81B4ELL;
      *(v112 + 48) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA20);
      sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
      goto LABEL_209;
    case 0x28:
      if (qword_27ECEF328 == -1)
      {
        goto LABEL_213;
      }

      goto LABEL_280;
    case 0x29:
      if (qword_27ECEF330 == -1)
      {
        goto LABEL_217;
      }

      goto LABEL_277;
    case 0x2A:
      if (qword_27ECEF340 != -1)
      {
LABEL_236:
        swift_once();
      }

LABEL_22:
      sub_242C8760C(0, &qword_27ECFAA08);
      v56 = [objc_opt_self() mainRunLoop];
      v57 = sub_242F05830();
      v58 = v241;
      (*(*(v57 - 8) + 56))(v241, 1, 1, v57);
      v59 = sub_242F057E0();

      sub_242C6D138(v58, &qword_27ECFA9B0);
      v243 = v59;
      sub_242F057D0();
      sub_242E835E4();
      v60 = sub_242F03A20();

      v243 = v60;
      *(swift_allocObject() + 16) = xmmword_242F41F20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
      sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
      goto LABEL_179;
    case 0x2B:
      if (qword_27ECEF348 == -1)
      {
        goto LABEL_181;
      }

      goto LABEL_270;
    case 0x2C:
      if (qword_27ECEF350 == -1)
      {
        goto LABEL_213;
      }

      goto LABEL_280;
    case 0x2D:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF360 == -1)
      {
        goto LABEL_211;
      }

      goto LABEL_233;
    case 0x2E:
      if (qword_27ECEF390 == -1)
      {
        goto LABEL_181;
      }

LABEL_270:
      swift_once();
LABEL_181:

      return sub_242E7B17C();
    case 0x2F:
      if (qword_27ECEF398 == -1)
      {
        goto LABEL_133;
      }

      goto LABEL_266;
    case 0x30:
      if (qword_27ECEF3A0 != -1)
      {
        swift_once();
      }

      return sub_242E7B7F4();
    case 0x31:
      if (qword_27ECEF3B0 == -1)
      {
        goto LABEL_217;
      }

      goto LABEL_277;
    case 0x32:
      if (qword_27ECEF3B8 != -1)
      {
        swift_once();
      }

      return sub_242E7BB44();
    case 0x33:
      if (qword_27ECEF3C0 != -1)
      {
        swift_once();
      }

      sub_242C8760C(0, &qword_27ECFAA08);
      v165 = [objc_opt_self() mainRunLoop];
      v166 = sub_242F05830();
      v167 = v241;
      (*(*(v166 - 8) + 56))(v241, 1, 1, v166);
      v168 = sub_242F057E0();

      sub_242C6D138(v167, &qword_27ECFA9B0);
      v243 = v168;
      sub_242F057D0();
      sub_242E835E4();
      v169 = sub_242F03A20();

      v244 = 1;
      v245 = v169;
      v243 = 0;
      v170 = swift_allocObject();
      *(v170 + 16) = xmmword_242F2DFA0;
      *(v170 + 32) = xmmword_242F41F10;
      *(v170 + 48) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA20);
      sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
      goto LABEL_209;
    case 0x34:
      if (qword_27ECEF3C8 != -1)
      {
        swift_once();
      }

      v62 = *(*off_27ECF51D8 + 152);
      v242 = off_27ECF51D8;
      v63 = off_27ECF51D8 + v62;
      v64 = off_27ECF51D8 + v62 + *(v191 + 36);
      sub_242C7E000(&qword_27ECFAA58, &qword_27ECF5330);
      v65 = v209;
      v66 = sub_242F04E60();
      v67 = v63;
      if ((v66 & 1) == 0)
      {
        sub_242F04E50();
        v67 = v64;
      }

      v68 = *(v223 + 16);
      v68(v222, v67, v65);
      sub_242C8760C(0, &qword_27ECFAA08);
      v69 = [objc_opt_self() mainRunLoop];
      v70 = sub_242F05830();
      v71 = v241;
      (*(*(v70 - 8) + 56))(v241, 1, 1, v70);
      v72 = sub_242F057E0();

      sub_242C6D138(v71, &qword_27ECFA9B0);
      v243 = v72;
      sub_242F057D0();
      sub_242E835E4();
      v73 = sub_242F03A20();
      v241 = v73;

      v243 = v73;
      v74 = *(v208 + 48);
      v75 = v207;
      v76 = v65;
      v68(v207, v63, v65);
      *(v75 + v74) = 1;
      v77 = v192;
      v68(v192, v222, v76);
      v78 = v204;
      sub_242CA321C(v63, v204, &qword_27ECF5328);
      v79 = v223;
      v80 = (*(v223 + 80) + 16) & ~*(v223 + 80);
      v81 = (v13 + *(v201 + 80) + v80) & ~*(v201 + 80);
      v82 = swift_allocObject();
      (*(v79 + 32))(v82 + v80, v77, v76);
      sub_242CF6B3C(v78, v82 + v81, &qword_27ECF5328);
      v83 = v82 + ((v8 + v81 + 7) & 0xFFFFFFFFFFFFFFF8);
      *v83 = 0x3F25D867C3ECE2A6;
      *(v83 + 8) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
      sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
      v84 = v211;
      sub_242F03AF0();

      sub_242C6D138(v75, &qword_27ECFA960);

      sub_242C7E000(&qword_27ECFAA60, &qword_27ECFA968);
      v85 = v210;
      v86 = v215;
      sub_242F03AE0();
      (*(v213 + 8))(v84, v86);
      sub_242C7E000(&qword_27ECFAA68, &qword_27ECFA970);
      v87 = v214;
      v88 = sub_242F03AC0();
      (*(v212 + 8))(v85, v87);
      (*(v223 + 8))(v222, v76);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      return sub_242E7904C(v89, v88, 1, &qword_27ECF5330, &unk_242F2D408, &unk_2855921B8, sub_242E837D8);
    case 0x35:
      if (qword_27ECEF2F0 != -1)
      {
        swift_once();
      }

      v157 = qword_27ECF5100;
      v158 = objc_opt_self();
      v159 = [v158 fahrenheit];
      v160 = v193;
      sub_242E77784(v159, v193);

      v161 = [v158 fahrenheit];
      sub_242C8760C(0, &qword_27ECF53D0);
      v162 = v194;
      sub_242F03490();
      v104 = sub_242E7C6FC(v157, v160, v162);
      (*(v195 + 8))(v162, v228);
      v105 = &qword_27ECF53C0;
      v106 = v160;
LABEL_200:
      sub_242C6D138(v106, v105);
      return v104;
    case 0x36:
      if (qword_27ECEF3D0 == -1)
      {
        goto LABEL_204;
      }

      goto LABEL_283;
    case 0x37:
      if (qword_27ECEF3D8 != -1)
      {
        swift_once();
      }

      v90 = qword_27ECF51E8;
      goto LABEL_172;
    case 0x38:
      if (qword_27ECEF3E0 != -1)
      {
        swift_once();
      }

      v90 = off_27ECF51F0;
LABEL_172:
      v139 = v90 + *(*v90 + 152);
      v140 = v90 + *(*v90 + 112);

      return sub_242E7C1D0(v90, v139, v140);
    case 0x39:
      if (qword_27ECEF3E8 == -1)
      {
        goto LABEL_178;
      }

      goto LABEL_278;
    case 0x3A:
      if (qword_27ECEF3F0 == -1)
      {
        goto LABEL_178;
      }

LABEL_278:
      swift_once();
LABEL_178:
      sub_242C8760C(0, &qword_27ECFAA08);
      v141 = [objc_opt_self() mainRunLoop];
      v142 = sub_242F05830();
      v143 = v241;
      (*(*(v142 - 8) + 56))(v241, 1, 1, v142);
      v144 = sub_242F057E0();

      sub_242C6D138(v143, &qword_27ECFA9B0);
      v243 = v144;
      sub_242F057D0();
      sub_242E835E4();
      v145 = sub_242F03A20();

      v243 = v145;
      *(swift_allocObject() + 16) = xmmword_242F41F00;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
      sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
LABEL_179:
      v146 = v229;
      sub_242F03AE0();

      sub_242C7E000(&qword_27ECFAA50, &qword_27ECFA9B8);
      v147 = v231;
      v148 = sub_242F03AC0();
      (*(v230 + 8))(v146, v147);
      goto LABEL_215;
    case 0x3B:
      if (qword_27ECEF3F8 != -1)
      {
LABEL_283:
        swift_once();
      }

LABEL_204:
      v163 = v217;
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFAA48, &qword_27ECFA958);
      v164 = v219;
      v122 = sub_242F03AC0();
      (*(v218 + 8))(v163, v164);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      v124 = &qword_27ECF5358;
      v125 = &unk_242F2D428;
      v126 = &unk_285592230;
      v127 = sub_242E83908;
      return sub_242E7904C(v123, v122, 1, v124, v125, v126, v127);
    case 0x3C:
      if (qword_27ECEF410 != -1)
      {
LABEL_266:
        swift_once();
      }

LABEL_133:
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFA9C8, &qword_27ECFA978);
      v117 = v221;
      v118 = sub_242F03AC0();
      (*(v220 + 8))(v17, v117);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      return sub_242E797D8(v119, v118, 1);
    case 0x3D:
      if (qword_27ECEF418 != -1)
      {
        swift_once();
      }

      v61 = off_27ECF5228;
      goto LABEL_140;
    case 0x3E:
      if (qword_27ECEF420 != -1)
      {
        swift_once();
      }

      v55 = qword_27ECF5230;
      goto LABEL_229;
    case 0x3F:
      if (qword_27ECEF428 != -1)
      {
        swift_once();
      }

      v61 = qword_27ECF5238;
      goto LABEL_140;
    case 0x40:
      if (qword_27ECEF430 != -1)
      {
        swift_once();
      }

      v55 = qword_27ECF5240;
      goto LABEL_229;
    case 0x41:
      if (qword_27ECEF438 != -1)
      {
        swift_once();
      }

      v61 = qword_27ECF5248;
LABEL_140:
      v120 = v61 + *(*v61 + 152);
      v121 = v61 + *(*v61 + 112);

      return sub_242E7CC28(v61, v120, v121);
    case 0x42:
      if (qword_27ECEF440 != -1)
      {
        swift_once();
      }

      v55 = qword_27ECF5250;
      goto LABEL_229;
    case 0x43:
      if (qword_27ECEF448 != -1)
      {
        swift_once();
      }

      v55 = qword_27ECF5258;
LABEL_229:
      v116 = 0;
      goto LABEL_230;
    case 0x44:
      if (qword_27ECEF450 == -1)
      {
        goto LABEL_217;
      }

      goto LABEL_277;
    case 0x45:
      if (qword_27ECEF458 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5310);
      v51 = v196;
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFAA40, &qword_27ECFA950);
      v52 = v198;
      v53 = sub_242F03AC0();
      (*(v197 + 8))(v51, v52);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      return sub_242E78D38(v54, v53, 1);
    case 0x46:
      if (qword_27ECEF460 != -1)
      {
        swift_once();
      }

      return sub_242E7BE94();
    case 0x47:
      if (qword_27ECEF468 != -1)
      {
LABEL_276:
        swift_once();
      }

LABEL_165:
      sub_242C8760C(0, &qword_27ECFAA08);
      v133 = [objc_opt_self() mainRunLoop];
      v134 = sub_242F05830();
      v135 = v241;
      (*(*(v134 - 8) + 56))(v241, 1, 1, v134);
      v136 = sub_242F057E0();

      sub_242C6D138(v135, &qword_27ECFA9B0);
      v243 = v136;
      sub_242F057D0();
      sub_242E835E4();
      v137 = sub_242F03A20();

      v244 = 1;
      v245 = v137;
      v243 = 0;
      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_242F41EE0;
      *(v138 + 32) = xmmword_242F41EF0;
      *(v138 + 48) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAA20);
      sub_242C7E000(&qword_27ECFAA28, &qword_27ECFAA18);
LABEL_209:
      v171 = v232;
      sub_242F03AF0();

      sub_242C7E000(&qword_27ECFAA30, &qword_27ECFA9A0);
      v172 = v234;
      v173 = v235;
      sub_242F03AE0();
      (*(v233 + 8))(v171, v172);
      sub_242C7E000(&qword_27ECFAA38, &qword_27ECFA9A8);
      v174 = v237;
      v148 = sub_242F03AC0();
      v175 = v236;
      goto LABEL_214;
    case 0x48:
      if (qword_27ECEF478 != -1)
      {
LABEL_280:
        swift_once();
      }

LABEL_213:
      v173 = v238;
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFA9D8, &qword_27ECFA998);
      v174 = v239;
      v148 = sub_242F03AC0();
      v175 = v240;
LABEL_214:
      (*(v175 + 8))(v173, v174);
LABEL_215:
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      return sub_242E77D90(v179, v148, 1);
    case 0x49:
      if (qword_27ECEF470 != -1)
      {
LABEL_277:
        swift_once();
      }

LABEL_217:
      v180 = v225;
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFAA00, &qword_27ECFA988);
      v181 = v227;
      v182 = sub_242F03AC0();
      (*(v226 + 8))(v180, v181);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      return sub_242E79A98(v183, v182, 1);
    case 0x4A:
      if (qword_27ECEF488 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52E0);
      v91 = v199;
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFA9F8, &qword_27ECFA948);
      v92 = v202;
      v93 = sub_242F03AC0();
      (*(v200 + 8))(v91, v92);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      return sub_242E786B8(v94, v93, 1);
    case 0x4B:
      if (qword_27ECEF480 != -1)
      {
        swift_once();
      }

      v55 = qword_27ECF5290;
      goto LABEL_127;
    case 0x4C:
      if (qword_27ECEF358 != -1)
      {
        swift_once();
      }

      v55 = qword_27ECF5168;
LABEL_127:
      v116 = 1;
LABEL_230:

      return sub_242E7E854(v55, v116);
    case 0x4D:
      if (qword_27ECEF490 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF52C0);
      v184 = v203;
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFA9F0, &qword_27ECFA940);
      v185 = v206;
      v186 = sub_242F03AC0();
      (*(v205 + 8))(v184, v185);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      return sub_242E782F8(v187, v186, 1);
    case 0x4F:
      if (qword_27ECEF498 != -1)
      {
LABEL_281:
        swift_once();
      }

LABEL_193:
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFA9E8, &qword_27ECFA980);
      v149 = sub_242F03AC0();
      (*(v216 + 8))(v20, v18);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      return sub_242E78044(v150, v149, 1);
    case 0x50:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF368 == -1)
      {
        goto LABEL_211;
      }

      goto LABEL_233;
    case 0x51:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF370 == -1)
      {
        goto LABEL_211;
      }

      goto LABEL_233;
    case 0x52:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF378 == -1)
      {
        goto LABEL_211;
      }

      goto LABEL_233;
    case 0x53:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF380 == -1)
      {
        goto LABEL_211;
      }

      goto LABEL_233;
    case 0x54:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF388 == -1)
      {
        goto LABEL_211;
      }

      goto LABEL_233;
    case 0x55:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF3A8 == -1)
      {
        goto LABEL_211;
      }

      goto LABEL_233;
    default:
      v49 = v44;
      v50 = v46;
      if (qword_27ECEF1F8 == -1)
      {
        goto LABEL_211;
      }

LABEL_233:
      v188 = &v189 - v45;
      swift_once();
      v47 = v188;
LABEL_211:
      v176 = v47;
      sub_242F03A30();
      sub_242C7E000(&qword_27ECFA9D0, &qword_27ECFA9C0);
      v177 = sub_242F03AC0();
      (*(v50 + 8))(v176, v49);
      type metadata accessor for InstrumentDataSource();
      swift_allocObject();

      return sub_242E79D4C(v178, v177, 1);
  }
}

unint64_t sub_242E835E4()
{
  result = qword_27ECFAA10;
  if (!qword_27ECFAA10)
  {
    sub_242F057D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAA10);
  }

  return result;
}

uint64_t sub_242E83648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_242E7D870(a1, v2 + v6, v2 + v9, v10, a2);
}

double sub_242E837B0(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_242F41ED0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_242E8380C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5378);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5358);

  return sub_242E7D408();
}

uint64_t sub_242E8393C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5328);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5330);

  return sub_242E7D1D0();
}

unint64_t sub_242E83A48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_242E7D524(a1, v2);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

void sub_242E83AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_242CA0064(a6, a7);
  }
}

unint64_t sub_242E83B1C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_242E7D720(a1, v2);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t objectdestroy_75Tm(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = v7 + *(*v5 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 80);
  v13 = (v8 + v12) & ~v12;
  v14 = *(v10 + 64);
  v15 = v6 | v12;
  v11(v3 + v7, v9);
  v11(v3 + v7 + v5[11], v9);
  v11(v3 + v13, v9);

  return MEMORY[0x2821FE8E8](v3, v13 + v14, v15 | 7);
}

uint64_t sub_242E83C94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF53C8);

  return sub_242E7D2EC();
}

unint64_t sub_242E83DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_242E7D788(a1, v2);
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t objectdestroy_59Tm()
{

  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_242E83E70()
{
  v0 = Theme.ColorID.rawValue.getter();
  v2 = v1;
  if (v0 == Theme.ColorID.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_242F06110();
  }

  return v5 & 1;
}

uint64_t BlurConfiguration.colorID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_242C7CE5C(v2, v3, v4);
}

uint64_t sub_242E83F28(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a1 + 16);
  v8 = *(a2 + 24);
  sub_242C7CE5C(*a1, v4, v7);
  result = sub_242C7CEB0(v5, v6, v8);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v7;
  return result;
}

uint64_t BlurConfiguration.colorID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_242C7CEB0(*(v1 + 8), *(v1 + 16), *(v1 + 24));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t BlurConfiguration.init(radius:colorID:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  *a2 = a3;
  result = sub_242C7CEB0(0, 0, 0);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  return result;
}

uint64_t static BlurConfiguration.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 == *a2)
  {
    return sub_242E83E70();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242E84078()
{
  if (*v0)
  {
    return 0x4449726F6C6F63;
  }

  else
  {
    return 0x737569646172;
  }
}

uint64_t sub_242E840B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449726F6C6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242E84188(uint64_t a1)
{
  v2 = sub_242E843A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E841C4(uint64_t a1)
{
  v2 = sub_242E843A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BlurConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFABF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *(v1 + 8);
  v11 = *(v1 + 16);
  HIDWORD(v10) = *(v1 + 24);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E843A4();
  sub_242F064C0();
  LOBYTE(v13) = 0;
  sub_242F05EF0();
  if (!v2)
  {
    v13 = v8;
    v14 = v11;
    v15 = BYTE4(v10);
    v12 = 1;
    sub_242C7DEA0();
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_242E843A4()
{
  result = qword_27ECFAC00;
  if (!qword_27ECFAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC00);
  }

  return result;
}

uint64_t BlurConfiguration.hash(into:)()
{
  sub_242F063C0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();
}

uint64_t BlurConfiguration.hashValue.getter()
{
  sub_242F06390();
  sub_242F063C0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t BlurConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAC08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E843A4();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    LOBYTE(v19) = 0;
    sub_242F05DD0();
    v10 = v9;
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAC10);
    sub_242E8484C();
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v15 = v21;
    v16 = v19;
    v17 = v20;
    if (v21 == 255)
    {
      sub_242C55484(v19, v20, 255);
      v16 = 0;
      v17 = 0;
      v15 = 0;
    }

    sub_242C7CEB0(0, 0, 0);
    *a2 = v10;
    *(a2 + 8) = v16;
    *(a2 + 16) = v17;
    *(a2 + 24) = v15;
    sub_242C7CE5C(v16, v17, v15);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v11 = v16;
    v12 = v17;
    v13 = v15;
  }

  return sub_242C7CEB0(v11, v12, v13);
}

uint64_t sub_242E847B4()
{
  sub_242F06390();
  sub_242F063C0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

unint64_t sub_242E8484C()
{
  result = qword_27ECFAC18;
  if (!qword_27ECFAC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFAC10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC18);
  }

  return result;
}

uint64_t sub_242E848B0(float *a1, float *a2)
{
  if (*a1 == *a2)
  {
    return sub_242E83E70();
  }

  else
  {
    return 0;
  }
}

CarPlayAssetUI::BackgroundConfiguration::RadialBackgroundType_optional __swiftcall BackgroundConfiguration.RadialBackgroundType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242E849DC()
{
  if (*v0)
  {
    return 0x7261656E696CLL;
  }

  else
  {
    return 0x6C6169646172;
  }
}

uint64_t sub_242E84A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6169646172 && a2 == 0xE600000000000000;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7261656E696CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242E84ADC(uint64_t a1)
{
  v2 = sub_242E8710C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E84B18(uint64_t a1)
{
  v2 = sub_242E8710C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E84B54(uint64_t a1)
{
  v2 = sub_242E87160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E84B90(uint64_t a1)
{
  v2 = sub_242E87160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_242E84BCC()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_242E84C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_242F06110() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_242F06110();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_242E84CF0(uint64_t a1)
{
  v2 = sub_242E87208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E84D2C(uint64_t a1)
{
  v2 = sub_242E87208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BackgroundConfiguration.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAC20);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAC28);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAC30);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v32 = *(v1 + 16);
  v33 = v11;
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = *(v1 + 48) | (*(v1 + 52) << 32);
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E8710C();
  sub_242F064C0();
  if ((v16 & 0x8000000000000000) != 0)
  {
    v21 = v33;
    v22 = HIDWORD(v33);
    LOBYTE(v37) = 1;
    sub_242E87160();
    v23 = v27;
    v24 = v36;
    sub_242F05E40();
    v37 = __PAIR64__(v22, v21);
    v38 = v12;
    v39 = v32 & 1;
    sub_242E871B4();
    v25 = v29;
    sub_242F05F20();
    (*(v28 + 8))(v23, v25);
    return (*(v35 + 8))(v10, v24);
  }

  else
  {
    v17 = v32 & 1;
    LOBYTE(v37) = 0;
    sub_242E87208();
    sub_242F05E40();
    v37 = v33;
    v38 = v12;
    v39 = v17;
    v40 = v13;
    v41 = v14;
    v42 = v15;
    v43 = v16;
    v44 = BYTE4(v16);
    v45 = 0;
    sub_242E8725C();
    v18 = v31;
    v19 = v34;
    sub_242F05F20();
    if (!v19)
    {
      LOBYTE(v37) = BYTE5(v16);
      v45 = 1;
      sub_242E872B0();
      sub_242F05F20();
    }

    (*(v30 + 8))(v7, v18);
    return (*(v35 + 8))(v10, v36);
  }
}

uint64_t BackgroundConfiguration.Style.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = *(v0 + 12) | (*(v0 + 26) << 32);
  if ((v3 & 0x8000000000000000) != 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    return sub_242F063B0();
  }

  else
  {
    v5 = v0[3];
    v4 = v0[4];
    MEMORY[0x245D279A0](0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0.0;
    }

    MEMORY[0x245D279D0](*&v6);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x245D279D0](v7);
    sub_242F063B0();
    sub_242C9457C(v5, v4);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    MEMORY[0x245D279A0](BYTE4(v3));
    return MEMORY[0x245D279A0](BYTE5(v3) + 1);
  }
}

uint64_t BackgroundConfiguration.Style.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 12) | (*(v0 + 26) << 32);
  sub_242F06390();
  if ((v5 & 0x8000000000000000) != 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063B0();
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0.0;
    }

    MEMORY[0x245D279D0](*&v6);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x245D279D0](v7);
    sub_242F063B0();
    sub_242C9457C(v3, v4);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    MEMORY[0x245D279A0](BYTE4(v5));
    MEMORY[0x245D279A0](BYTE5(v5) + 1);
  }

  return sub_242F063E0();
}

uint64_t BackgroundConfiguration.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  *&v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAC68);
  *&v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAC70);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAC78);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_2Tm(a1, v12);
  sub_242E8710C();
  v13 = v42;
  sub_242F06480();
  if (!v13)
  {
    v14 = v40;
    v42 = v9;
    v15 = v41;
    v16 = sub_242F05E10();
    v17 = (2 * *(v16 + 16)) | 1;
    v50 = v16;
    v51 = v16 + 32;
    v52 = 0;
    v53 = v17;
    v18 = sub_242C7FBE4();
    if (v18 == 2 || v52 != v53 >> 1)
    {
      v24 = sub_242F05B10();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10);
      *v26 = &type metadata for BackgroundConfiguration.Style;
      sub_242F05D20();
      sub_242F05AF0();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v42 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v18)
      {
        LOBYTE(v44) = 1;
        sub_242E87160();
        sub_242F05D10();
        sub_242E87304();
        sub_242F05E00();
        (*(v38 + 8))(v4, v14);
        (*(v42 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v19 = 0;
        v20 = v44;
        v21 = v45;
        v22 = 0uLL;
        v23 = 0x800000000000;
      }

      else
      {
        LOBYTE(v44) = 0;
        sub_242E87208();
        v28 = v11;
        v29 = v7;
        sub_242F05D10();
        v30 = v28;
        v56 = 0;
        sub_242E87358();
        sub_242F05E00();
        v40 = v44;
        v31 = v45;
        v38 = v46;
        v32 = v5;
        v19 = v47;
        v37 = v49;
        v33 = v29;
        v34 = v48;
        v54 = 1;
        sub_242E873AC();
        sub_242F05E00();
        v35 = v34 | (v37 << 32);
        v37 = v31;
        (*(v39 + 8))(v33, v32);
        (*(v42 + 8))(v30, v8);
        swift_unknownObjectRelease();
        v21 = v37 & 1;
        v23 = v35 & 0x3FFFFFFFFLL | (v55 << 40) & 0x3FFFFFFFFFFLL;
        v20 = v40;
        v22 = v38;
      }

      *v15 = v20;
      *(v15 + 16) = v21;
      *(v15 + 24) = v22;
      *(v15 + 40) = v19;
      *(v15 + 48) = v23;
      *(v15 + 52) = WORD2(v23);
    }
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v43);
}

uint64_t sub_242E85AB0()
{
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 12) | (*(v0 + 26) << 32);
  sub_242F06390();
  if ((v5 & 0x8000000000000000) != 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063B0();
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0.0;
    }

    MEMORY[0x245D279D0](*&v6);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x245D279D0](v7);
    sub_242F063B0();
    sub_242C9457C(v3, v4);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    MEMORY[0x245D279A0](BYTE4(v5));
    MEMORY[0x245D279A0](BYTE5(v5) + 1);
  }

  return sub_242F063E0();
}

__n128 BackgroundConfiguration.style.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 52) = v3;
  *(a1 + 48) = v2;
  return result;
}

uint64_t BackgroundConfiguration.blurConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 80);
  *(a1 + 24) = v5;
  return sub_242DE5018(v2, v3, v4, v5);
}

__n128 BackgroundConfiguration.init(style:blurConfiguration:colorIDs:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 52);
  v6 = a2[1].n128_u64[0];
  v7 = a2[1].n128_u8[8];
  v8 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 52) = v5;
  *(a4 + 48) = v4;
  result = *a2;
  *(a4 + 56) = *a2;
  *(a4 + 72) = v6;
  *(a4 + 80) = v7;
  *(a4 + 88) = a3;
  return result;
}

uint64_t sub_242E85CF0()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x734449726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_242E85D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E87FB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E85D74(uint64_t a1)
{
  v2 = sub_242E87400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E85DB0(uint64_t a1)
{
  v2 = sub_242E87400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BackgroundConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAC98);
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = *(v2 + 4);
  v8 = *(v2 + 5);
  v21 = *(v2 + 12);
  v9 = *(v2 + 26);
  v10 = *(v2 + 7);
  v19 = *(v2 + 8);
  v20 = v10;
  v11 = *(v2 + 9);
  v30 = *(v2 + 80);
  v17 = *(v2 + 11);
  v18 = v11;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E87400();
  sub_242F064C0();
  v12 = *v2;
  v25 = v2[1];
  v24 = v12;
  v26 = v7;
  v27 = v8;
  v29 = v9;
  v28 = v21;
  v31 = 0;
  sub_242E87454();
  v13 = v23;
  sub_242F05F20();
  if (v13)
  {
    return (*(v22 + 8))(v6, v4);
  }

  v15 = v17;
  v16 = v22;
  *&v24 = v20;
  *(&v24 + 1) = v19;
  *&v25 = v18;
  BYTE8(v25) = v30;
  v31 = 1;
  sub_242DE5018(v20, v19, v18, v30);
  sub_242E874A8();
  sub_242F05EB0();
  sub_242D3CBDC(v24, *(&v24 + 1), v25, SBYTE8(v25));
  *&v24 = v15;
  v31 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  sub_242CCFBCC(&qword_27ECF1C00, sub_242C7DEA0);
  sub_242F05EB0();
  return (*(v16 + 8))(v6, v4);
}

uint64_t BackgroundConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = *(v1 + 12) | (*(v1 + 26) << 32);
  v12 = *(v1 + 80);
  v13 = *(v1 + 11);
  if ((v5 & 0x8000000000000000) != 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063B0();
  }

  else
  {
    v7 = v1[3];
    v6 = v1[4];
    MEMORY[0x245D279A0](0);
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0.0;
    }

    MEMORY[0x245D279D0](*&v8);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v4;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x245D279D0](v9);
    sub_242F063B0();
    sub_242C9457C(v7, v6);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    MEMORY[0x245D279A0](BYTE4(v5));
    MEMORY[0x245D279A0](BYTE5(v5) + 1);
  }

  if (v12 == 255)
  {
    sub_242F063B0();
    v10 = v13;
    if (v13)
    {
      goto LABEL_12;
    }

    return sub_242F063B0();
  }

  sub_242F063B0();
  sub_242F063C0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v10 = v13;
  if (!v13)
  {
    return sub_242F063B0();
  }

LABEL_12:
  sub_242F063B0();

  return sub_242C79508(a1, v10);
}

uint64_t BackgroundConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 12) | (*(v0 + 26) << 32);
  v6 = *(v0 + 80);
  v11 = *(v0 + 11);
  sub_242F06390();
  if ((v5 & 0x8000000000000000) != 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063B0();
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0.0;
    }

    MEMORY[0x245D279D0](*&v7);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x245D279D0](v8);
    sub_242F063B0();
    sub_242C9457C(v3, v4);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    MEMORY[0x245D279A0](BYTE4(v5));
    MEMORY[0x245D279A0](BYTE5(v5) + 1);
  }

  if (v6 == 255)
  {
    sub_242F063B0();
    v9 = v11;
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_242F063B0();
    return sub_242F063E0();
  }

  sub_242F063B0();
  sub_242F063C0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v9 = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_242F063B0();
  sub_242C79508(v12, v9);
  return sub_242F063E0();
}

uint64_t BackgroundConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFACB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E87400();
  sub_242F06480();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  LOBYTE(v36) = 0;
  sub_242E874FC();
  sub_242F05E00();
  v32 = v42;
  v31 = v43;
  v30 = v44;
  v35 = v45;
  v34 = v46;
  v33 = v47;
  v9 = v49;
  v10 = v48;
  LOBYTE(v36) = 1;
  sub_242E87550();
  sub_242F05D90();
  v26 = v10;
  v27 = v9;
  v28 = v42;
  v29 = v43;
  v11 = v44;
  LODWORD(v9) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF1BF8);
  v55 = 2;
  sub_242CCFBCC(&qword_27ECF1C10, sub_242C7DFAC);
  sub_242F05D90();
  v12 = v26 | (v27 << 32);
  (*(v6 + 8))(v8, v5);
  v26 = v56;
  v13 = v9;
  v25 = v9;
  v14 = v32;
  *&v36 = v32;
  v15 = v11;
  v24 = v11;
  v16 = v31;
  *(&v36 + 1) = v31;
  v17 = v30;
  *&v37 = v30;
  *(&v37 + 1) = v35;
  *&v38 = v34;
  *(&v38 + 1) = v33;
  v27 = HIDWORD(v12);
  WORD2(v39) = WORD2(v12);
  LODWORD(v39) = v12;
  v18 = v28;
  v19 = v29;
  *(&v39 + 1) = v28;
  *&v40 = v29;
  *(&v40 + 1) = v15;
  LOBYTE(v41) = v13;
  *(&v41 + 1) = v56;
  v20 = v39;
  a2[2] = v38;
  a2[3] = v20;
  v21 = v37;
  *a2 = v36;
  a2[1] = v21;
  v22 = v41;
  a2[4] = v40;
  a2[5] = v22;
  sub_242E875A4(&v36, &v42);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  v42 = v14;
  v43 = v16;
  v44 = v17;
  v45 = v35;
  v46 = v34;
  v47 = v33;
  v49 = v27;
  v48 = v12;
  v50 = v18;
  v51 = v19;
  v52 = v24;
  v53 = v25;
  v54 = v26;
  return sub_242E875DC(&v42);
}

uint64_t sub_242E86A00()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 12) | (*(v0 + 26) << 32);
  v10 = *(v0 + 80);
  v11 = *(v0 + 11);
  sub_242F06390();
  if ((v5 & 0x8000000000000000) != 0)
  {
    MEMORY[0x245D279A0](1);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063B0();
  }

  else
  {
    MEMORY[0x245D279A0](0);
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v1;
    }

    else
    {
      v6 = 0.0;
    }

    MEMORY[0x245D279D0](*&v6);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v2;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x245D279D0](v7);
    sub_242F063B0();
    sub_242C9457C(v3, v4);
    sub_242F063C0();
    sub_242F063C0();
    sub_242F063C0();
    MEMORY[0x245D279A0](BYTE4(v5));
    MEMORY[0x245D279A0](BYTE5(v5) + 1);
  }

  if (v10 == 255)
  {
    sub_242F063B0();
    v8 = v11;
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_242F063B0();
    return sub_242F063E0();
  }

  sub_242F063B0();
  sub_242F063C0();
  Theme.ColorID.rawValue.getter();
  sub_242F04DD0();

  v8 = v11;
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_242F063B0();
  sub_242C79508(v12, v8);
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI23BackgroundConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 48) | (*(a1 + 52) << 32);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 48) | (*(a2 + 52) << 32);
  v14 = *(a2 + 56);
  v13 = *(a2 + 64);
  v15 = *(a2 + 72);
  v16 = *(a2 + 80);
  if ((v4 & 0x800000000000) != 0)
  {
    if ((v12 & 0x800000000000) == 0)
    {
      return 0;
    }

    v29 = *(a2 + 88);
    v30 = *(a1 + 88);
    v37.i64[0] = *a1;
    v37.i64[1] = v2;
    v38 = v3 & 1;
    v31.i64[0] = v10;
    v31.i64[1] = v9;
    v32 = v11 & 1;
    if ((_s14CarPlayAssetUI18DigiBarLinearStyleV2eeoiySbAC_ACtFZ_0(&v37, &v31) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if ((v12 & 0x800000000000) != 0)
  {
    return 0;
  }

  v29 = *(a2 + 88);
  v30 = *(a1 + 88);
  v17 = *(a2 + 24);
  v18 = *(a2 + 40);
  v19 = *(a1 + 40);
  v37.i64[0] = *a1;
  v37.i64[1] = v2;
  v38 = v3 & 1;
  v39 = *(a1 + 24);
  v40 = v19;
  v41 = v4;
  v42 = BYTE4(v4);
  v31.i64[0] = v10;
  v31.i64[1] = v9;
  v32 = v11 & 1;
  v33 = v17;
  v34 = v18;
  v35 = v12;
  v36 = BYTE4(v12);
  v20 = _s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(&v37, &v31);
  result = 0;
  if (v20 && !((v12 ^ v4) >> 40))
  {
LABEL_8:
    if (v8 == 255)
    {
      sub_242DE5018(v6, v5, v7, 255);
      if (v16 == 255)
      {
        sub_242DE5018(v14, v13, v15, 255);
        sub_242D3CBDC(v6, v5, v7, 255);
        v23 = v30;
        if (v30)
        {
LABEL_13:
          if (v29)
          {

            v24 = sub_242C75A30(v23, v29);

            if (v24)
            {
              return 1;
            }
          }

          return 0;
        }

        return !v29;
      }

      sub_242DE5018(v14, v13, v15, v16);
    }

    else
    {
      if (v16 != 255)
      {
        sub_242DE5018(v6, v5, v7, v8);
        sub_242DE5018(v14, v13, v15, v16);
        sub_242DE5018(v6, v5, v7, v8);
        if (*&v6 == *&v14)
        {
          v22 = sub_242E83E70();
          sub_242D3CBDC(v14, v13, v15, v16);
          sub_242C7CEB0(v5, v7, v8);
          sub_242D3CBDC(v6, v5, v7, v8);
          if ((v22 & 1) == 0)
          {
            return 0;
          }

          v23 = v30;
          if (v30)
          {
            goto LABEL_13;
          }

          return !v29;
        }

        sub_242D3CBDC(v14, v13, v15, v16);
        sub_242C7CEB0(v5, v7, v8);
        v25 = v6;
        v26 = v5;
        v27 = v7;
        v28 = v8;
LABEL_21:
        sub_242D3CBDC(v25, v26, v27, v28);
        return 0;
      }

      sub_242DE5018(v6, v5, v7, v8);
      sub_242DE5018(v14, v13, v15, 255);
      sub_242DE5018(v6, v5, v7, v8);
      sub_242C7CEB0(v5, v7, v8);
    }

    sub_242D3CBDC(v6, v5, v7, v8);
    v25 = v14;
    v26 = v13;
    v27 = v15;
    v28 = v16;
    goto LABEL_21;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI23BackgroundConfigurationV5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 48) | (*(a1 + 52) << 32);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 48) | (*(a2 + 52) << 32);
  if ((v4 & 0x800000000000) != 0)
  {
    if ((v8 & 0x800000000000) != 0)
    {
      v20.i64[0] = *a1;
      v20.i64[1] = v2;
      v21 = v3 & 1;
      v14.i64[0] = v6;
      v14.i64[1] = v5;
      v15 = v7 & 1;
      v12 = _s14CarPlayAssetUI18DigiBarLinearStyleV2eeoiySbAC_ACtFZ_0(&v20, &v14);
      return v12 & 1;
    }

    goto LABEL_6;
  }

  if ((v8 & 0x800000000000) != 0 || (v9 = *(a2 + 24), v10 = *(a2 + 40), v11 = *(a1 + 40), v20.i64[0] = *a1, v20.i64[1] = v2, v21 = v3 & 1, v22 = *(a1 + 24), v23 = v11, v24 = v4, v25 = BYTE4(v4), v14.i64[0] = v6, v14.i64[1] = v5, v15 = v7 & 1, v16 = v9, v17 = v10, v18 = v8, v19 = BYTE4(v8), !_s14CarPlayAssetUI18DigiBarRadialStyleV2eeoiySbAC_ACtFZ_0(&v20, &v14)))
  {
LABEL_6:
    v12 = 0;
    return v12 & 1;
  }

  v12 = (v8 ^ v4) >> 40 == 0;
  return v12 & 1;
}

unint64_t sub_242E8710C()
{
  result = qword_27ECFAC38;
  if (!qword_27ECFAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC38);
  }

  return result;
}

unint64_t sub_242E87160()
{
  result = qword_27ECFAC40;
  if (!qword_27ECFAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC40);
  }

  return result;
}

unint64_t sub_242E871B4()
{
  result = qword_27ECFAC48;
  if (!qword_27ECFAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC48);
  }

  return result;
}

unint64_t sub_242E87208()
{
  result = qword_27ECFAC50;
  if (!qword_27ECFAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC50);
  }

  return result;
}

unint64_t sub_242E8725C()
{
  result = qword_27ECFAC58;
  if (!qword_27ECFAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC58);
  }

  return result;
}

unint64_t sub_242E872B0()
{
  result = qword_27ECFAC60;
  if (!qword_27ECFAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC60);
  }

  return result;
}

unint64_t sub_242E87304()
{
  result = qword_27ECFAC80;
  if (!qword_27ECFAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC80);
  }

  return result;
}

unint64_t sub_242E87358()
{
  result = qword_27ECFAC88;
  if (!qword_27ECFAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC88);
  }

  return result;
}

unint64_t sub_242E873AC()
{
  result = qword_27ECFAC90;
  if (!qword_27ECFAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAC90);
  }

  return result;
}

unint64_t sub_242E87400()
{
  result = qword_27ECFACA0;
  if (!qword_27ECFACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACA0);
  }

  return result;
}

unint64_t sub_242E87454()
{
  result = qword_27ECFACA8;
  if (!qword_27ECFACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACA8);
  }

  return result;
}

unint64_t sub_242E874A8()
{
  result = qword_27ECFACB0;
  if (!qword_27ECFACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACB0);
  }

  return result;
}

unint64_t sub_242E874FC()
{
  result = qword_27ECFACC0;
  if (!qword_27ECFACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACC0);
  }

  return result;
}

unint64_t sub_242E87550()
{
  result = qword_27ECFACC8;
  if (!qword_27ECFACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACC8);
  }

  return result;
}

unint64_t sub_242E87610()
{
  result = qword_27ECFACD0;
  if (!qword_27ECFACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACD0);
  }

  return result;
}

unint64_t sub_242E87668()
{
  result = qword_27ECFACD8;
  if (!qword_27ECFACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACD8);
  }

  return result;
}

unint64_t sub_242E876C0()
{
  result = qword_27ECFACE0;
  if (!qword_27ECFACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACE0);
  }

  return result;
}

unint64_t sub_242E87718()
{
  result = qword_27ECFACE8;
  if (!qword_27ECFACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACE8);
  }

  return result;
}

uint64_t sub_242E8776C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242E877B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_242E87828(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_242E87878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 46) = 0;
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy54_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BackgroundConfiguration.Style(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 54))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for BackgroundConfiguration.Style(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 54) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 46) = 0;
      return result;
    }

    *(result + 54) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242E879DC(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = WORD2(v3) & 0x7FFF;
  return result;
}

uint64_t sub_242E879F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  result = a1 + 48;
  v4 = (v3 | (*(result + 4) << 32)) & 0x303030303030303 | (a2 << 47);
  *(result - 32) &= 1uLL;
  *result = v3;
  *(result + 4) = WORD2(v4);
  return result;
}

unint64_t sub_242E87A8C()
{
  result = qword_27ECFACF0;
  if (!qword_27ECFACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACF0);
  }

  return result;
}

unint64_t sub_242E87AE4()
{
  result = qword_27ECFACF8;
  if (!qword_27ECFACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFACF8);
  }

  return result;
}

unint64_t sub_242E87B3C()
{
  result = qword_27ECFAD00;
  if (!qword_27ECFAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD00);
  }

  return result;
}

unint64_t sub_242E87B94()
{
  result = qword_27ECFAD08;
  if (!qword_27ECFAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD08);
  }

  return result;
}

unint64_t sub_242E87BEC()
{
  result = qword_27ECFAD10;
  if (!qword_27ECFAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD10);
  }

  return result;
}

unint64_t sub_242E87C44()
{
  result = qword_27ECFAD18;
  if (!qword_27ECFAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD18);
  }

  return result;
}

unint64_t sub_242E87C9C()
{
  result = qword_27ECFAD20;
  if (!qword_27ECFAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD20);
  }

  return result;
}

unint64_t sub_242E87CF4()
{
  result = qword_27ECFAD28;
  if (!qword_27ECFAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD28);
  }

  return result;
}

unint64_t sub_242E87D4C()
{
  result = qword_27ECFAD30;
  if (!qword_27ECFAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD30);
  }

  return result;
}

unint64_t sub_242E87DA4()
{
  result = qword_27ECFAD38;
  if (!qword_27ECFAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD38);
  }

  return result;
}

unint64_t sub_242E87DFC()
{
  result = qword_27ECFAD40;
  if (!qword_27ECFAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD40);
  }

  return result;
}

unint64_t sub_242E87E54()
{
  result = qword_27ECFAD48;
  if (!qword_27ECFAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD48);
  }

  return result;
}

unint64_t sub_242E87EAC()
{
  result = qword_27ECFAD50;
  if (!qword_27ECFAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD50);
  }

  return result;
}

unint64_t sub_242E87F04()
{
  result = qword_27ECFAD58;
  if (!qword_27ECFAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD58);
  }

  return result;
}

unint64_t sub_242E87F5C()
{
  result = qword_27ECFAD60;
  if (!qword_27ECFAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD60);
  }

  return result;
}

uint64_t sub_242E87FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5CC60 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x734449726F6C6F63 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_242E880CC()
{
  result = qword_27ECFAD68;
  if (!qword_27ECFAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAD68);
  }

  return result;
}

uint64_t _s21AlertNotificationViewVMa()
{
  result = qword_27ECFAD70;
  if (!qword_27ECFAD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_242E88194()
{
  sub_242E88220();
  if (v0 <= 0x3F)
  {
    sub_242DCD3D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_242E88220()
{
  if (!qword_27ECF7E70)
  {
    type metadata accessor for ActionConfiguration(255);
    v0 = sub_242F03BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27ECF7E70);
    }
  }
}

uint64_t sub_242E88294@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_242F04000();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF7CC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_242CA321C(v2, &v13 - v9, &qword_27ECF7CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242E8B058(v10, a1, type metadata accessor for ActionConfiguration);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_242E88478@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for ActionConfiguration(0);
  v2 = (v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6AF8) - 8;
  MEMORY[0x28223BE20](v36);
  v12 = &v34 - v11;
  sub_242E88770(&v34 - v11);
  sub_242E88294(v10);
  v13 = *(v10 + 9);
  sub_242E8AAD8(v10);
  sub_242E88294(v7);
  v14 = v2[16];
  v15 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAD80) + 36)];
  v16 = type metadata accessor for PlatterView();
  v17 = *(v16 + 28);
  v18 = sub_242F04A30();
  (*(*(v18 - 8) + 16))(&v15[v17], &v7[v14], v18);
  sub_242E8AAD8(v7);
  sub_242E88294(v4);
  v19 = &v4[v2[17]];
  v20 = *v19;
  v21 = *(v19 + 1);
  v35 = *(v19 + 2);

  sub_242E8AAD8(v4);
  *v15 = swift_getKeyPath();
  *(v15 + 1) = 0;
  v15[16] = 0;
  *(v15 + 3) = swift_getKeyPath();
  v15[32] = 0;
  *(v15 + 5) = v13;
  v22 = &v15[*(v16 + 32)];
  *v22 = v20;
  *(v22 + 1) = v21;
  *(v22 + 2) = v35;
  v23 = sub_242F04A70();
  v25 = v24;
  v26 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6960) + 36)];
  *v26 = v23;
  v26[1] = v25;
  sub_242E88294(v10);
  LOBYTE(v15) = v10[v2[15]];
  sub_242E8AAD8(v10);
  v12[*(v36 + 44)] = v15;
  sub_242E88294(v10);
  v27 = &v10[v2[14]];
  v28 = *v27;
  v29 = *(v27 + 1);
  LOBYTE(v21) = v27[16];
  sub_242E8AAD8(v10);
  sub_242E88294(v7);
  v30 = &v7[v2[13]];
  v31 = *v30;
  v32 = *(v30 + 1);
  LOBYTE(v10) = v30[16];
  sub_242E8AAD8(v7);
  sub_242DCDC90(v28, v29, v21, v31, v32, v10, v37);
  return sub_242C6D138(v12, &qword_27ECF6AF8);
}

uint64_t sub_242E88770@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAD88);
  MEMORY[0x28223BE20](v52);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAD90);
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - v9;
  v10 = sub_242F04000();
  v49 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAD98);
  MEMORY[0x28223BE20](v50);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for ActionConfiguration(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242E88294(v20);
  v21 = v20[64];
  sub_242E8AAD8(v20);
  if (v21 == 1)
  {
    v22 = _s21AlertNotificationViewVMa();
    v23 = v2 + *(v22 + 20);
    v25 = *v23;
    v24 = *(v23 + 8);
    if (*(v23 + 16) == 1)
    {
      v54 = *v23;
      v55 = v24;
    }

    else
    {

      sub_242F05710();
      v30 = sub_242F04360();
      v48 = v10;
      v31 = v30;
      sub_242F03930();

      sub_242F03FF0();
      swift_getAtKeyPath();
      sub_242DD16BC();
      (*(v49 + 8))(v12, v48);
      v25 = v54;
    }

    v32 = v2 + *(v22 + 24);
    v33 = *(v32 + 48);
    if (v33)
    {
      v34 = *(v32 + 40);
    }

    else
    {
      v34 = 0;
    }

    v25(&v56, v34, v33);

    v39 = v56;
    v40 = v57;
    *v14 = sub_242F04090();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADB8);
    sub_242E88E14(v39, v40, v2, &v14[*(v41 + 44)]);

    v42 = &qword_27ECFAD98;
    sub_242CF6B3C(v14, v17, &qword_27ECFAD98);
    sub_242CA321C(v17, v51, &qword_27ECFAD98);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECFADA8, &qword_27ECFAD98);
    sub_242C7E000(&qword_27ECFADB0, &qword_27ECFAD88);
    sub_242F041C0();
    v43 = v17;
  }

  else
  {
    v26 = _s21AlertNotificationViewVMa();
    v27 = v2 + *(v26 + 20);
    v29 = *v27;
    v28 = *(v27 + 8);
    if (*(v27 + 16) == 1)
    {
      v54 = *v27;
      v55 = v28;
    }

    else
    {

      sub_242F05710();
      v48 = v10;
      v35 = sub_242F04360();
      sub_242F03930();

      sub_242F03FF0();
      swift_getAtKeyPath();
      sub_242DD16BC();
      (*(v49 + 8))(v12, v48);
      v29 = v54;
    }

    v36 = v2 + *(v26 + 24);
    v37 = *(v36 + 48);
    if (v37)
    {
      v38 = *(v36 + 40);
    }

    else
    {
      v38 = 0;
    }

    v29(&v56, v38, v37);

    v44 = v56;
    v45 = v57;
    *v4 = sub_242F04080();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADA0);
    sub_242E89E00(v44, v45, v2, &v4[*(v46 + 44)]);

    v42 = &qword_27ECFAD88;
    sub_242CF6B3C(v4, v7, &qword_27ECFAD88);
    sub_242CA321C(v7, v51, &qword_27ECFAD88);
    swift_storeEnumTagMultiPayload();
    sub_242C7E000(&qword_27ECFADA8, &qword_27ECFAD98);
    sub_242C7E000(&qword_27ECFADB0, &qword_27ECFAD88);
    sub_242F041C0();
    v43 = v7;
  }

  return sub_242C6D138(v43, v42);
}

uint64_t sub_242E88E14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADC8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - v18;
  *v19 = sub_242F04040();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADD0);
  sub_242E89044(a1, a2, a3, &v19[*(v20 + 44)]);
  sub_242E89964(v13);
  sub_242CA321C(v19, v16, &qword_27ECFADC8);
  sub_242CA321C(v13, v10, &qword_27ECFADC0);
  sub_242CA321C(v16, a4, &qword_27ECFADC8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADD8);
  sub_242CA321C(v10, a4 + *(v21 + 48), &qword_27ECFADC0);
  sub_242C6D138(v13, &qword_27ECFADC0);
  sub_242C6D138(v19, &qword_27ECFADC8);
  sub_242C6D138(v10, &qword_27ECFADC0);
  return sub_242C6D138(v16, &qword_27ECFADC8);
}

uint64_t sub_242E89044@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a2;
  v115 = a4;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88);
  MEMORY[0x28223BE20](v102);
  v103 = &v100[-v6];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80);
  MEMORY[0x28223BE20](v106);
  v109 = &v100[-v7];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8048);
  MEMORY[0x28223BE20](v108);
  v112 = &v100[-v8];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE28);
  MEMORY[0x28223BE20](v111);
  v114 = &v100[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v110 = &v100[-v11];
  MEMORY[0x28223BE20](v12);
  v113 = &v100[-v13];
  v14 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v100[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for ActionConfiguration(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v100[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v100[-v21];
  v23 = type metadata accessor for SymbolView(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v100[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v29 = &v100[-v28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE30);
  MEMORY[0x28223BE20](a1);
  v107 = &v100[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v34 = &v100[-v32];
  v105 = &v100[-v32];
  v116 = v35;
  v104 = v17;
  if (v35)
  {

    sub_242E88294(v22);
    sub_242E8AFF0(&v22[*(v17 + 28)], v16, type metadata accessor for NotificationSymbolConfiguration);
    sub_242E8AAD8(v22);
    v36 = a3 + *(_s21AlertNotificationViewVMa() + 24);
    if (*(v36 + 48))
    {
      v37 = *(v36 + 56);
    }

    else
    {
      v37 = 0;
    }

    *v26 = swift_getKeyPath();
    *(v26 + 1) = 0;
    v26[16] = 0;
    *(v26 + 3) = v116;
    v26[32] = v101;
    sub_242E8B058(v16, &v26[*(v23 + 24)], type metadata accessor for NotificationSymbolConfiguration);
    *&v26[*(v23 + 28)] = v37;
    sub_242E8B058(v26, v29, type metadata accessor for SymbolView);
    sub_242E8B058(v29, v34, type metadata accessor for SymbolView);
    (*(v24 + 56))(v34, 0, 1, v23, v38);
  }

  else
  {
    (*(v24 + 56))(&v100[-v32], 1, 1, v23, v33);
  }

  v39 = a3 + *(_s21AlertNotificationViewVMa() + 24);
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  v43 = *(v39 + 24);
  v44 = *(v39 + 32);
  sub_242CD52B8(*v39, v41, v42, v43, v44);
  sub_242E88294(v19);
  v45 = v104;
  v46 = *(v104 + 36);
  v47 = type metadata accessor for TextContentView(0);
  v48 = &v19[v46];
  v49 = v103;
  sub_242D575E8(v48, v103 + *(v47 + 24));
  sub_242E8AAD8(v19);
  *v49 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v50 = v49 + *(v47 + 20);
  *v50 = v40;
  *(v50 + 1) = v41;
  v51 = v45;
  *(v50 + 2) = v42;
  *(v50 + 3) = v43;
  v50[32] = v44;
  LOBYTE(v40) = sub_242F04400();
  sub_242E88294(v19);
  sub_242D575E8(&v19[*(v45 + 36)], v117);
  sub_242E8AAD8(v19);
  sub_242D91AA0(v117);
  sub_242F03B50();
  v52 = v49 + *(v102 + 36);
  *v52 = v40;
  *(v52 + 1) = v53;
  *(v52 + 2) = v54;
  *(v52 + 3) = v55;
  *(v52 + 4) = v56;
  v52[40] = 0;
  v57 = sub_242F043E0();
  if (!v116)
  {
    sub_242E88294(v19);
    sub_242D575E8(&v19[*(v45 + 36)], v117);
    sub_242E8AAD8(v19);
    sub_242D91AA0(v117);
  }

  sub_242F03B50();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v49;
  v67 = v109;
  sub_242CF6B3C(v66, v109, &qword_27ECF6A88);
  v68 = &v67[*(v106 + 36)];
  *v68 = v57;
  *(v68 + 1) = v59;
  *(v68 + 2) = v61;
  *(v68 + 3) = v63;
  *(v68 + 4) = v65;
  v68[40] = 0;
  v69 = sub_242F043C0();
  sub_242E88294(v19);
  sub_242D575E8(&v19[*(v51 + 36)], v117);
  sub_242E8AAD8(v19);
  sub_242D91AA0(v117);
  sub_242F03B50();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v78 = v67;
  v79 = v112;
  sub_242CF6B3C(v78, v112, &qword_27ECF6A80);
  v80 = &v79[*(v108 + 36)];
  *v80 = v69;
  *(v80 + 1) = v71;
  *(v80 + 2) = v73;
  *(v80 + 3) = v75;
  *(v80 + 4) = v77;
  v80[40] = 0;
  v81 = sub_242F043D0();
  sub_242E88294(v19);
  sub_242D575E8(&v19[*(v51 + 36)], v117);
  sub_242E8AAD8(v19);
  sub_242D91AA0(v117);
  sub_242F03B50();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = v79;
  v91 = v110;
  sub_242CF6B3C(v90, v110, &qword_27ECF8048);
  v92 = &v91[*(v111 + 36)];
  *v92 = v81;
  *(v92 + 1) = v83;
  *(v92 + 2) = v85;
  *(v92 + 3) = v87;
  *(v92 + 4) = v89;
  v92[40] = 0;
  v93 = v113;
  sub_242CF6B3C(v91, v113, &qword_27ECFAE28);
  v94 = v105;
  v95 = v107;
  sub_242CA321C(v105, v107, &qword_27ECFAE30);
  v96 = v114;
  sub_242CA321C(v93, v114, &qword_27ECFAE28);
  v97 = v115;
  sub_242CA321C(v95, v115, &qword_27ECFAE30);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE38);
  sub_242CA321C(v96, v97 + *(v98 + 48), &qword_27ECFAE28);
  sub_242C6D138(v93, &qword_27ECFAE28);
  sub_242C6D138(v94, &qword_27ECFAE30);
  sub_242C6D138(v96, &qword_27ECFAE28);
  return sub_242C6D138(v95, &qword_27ECFAE30);
}

uint64_t sub_242E89964@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = _s21AlertNotificationViewVMa();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = type metadata accessor for ActionConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v34 - v10;
  sub_242E88294(v8);
  v12 = *v8;
  sub_242E8AAD8(v8);
  *v11 = sub_242F04040();
  *(v11 + 1) = v12;
  v11[16] = 0;
  v34[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADE8) + 44);
  v35 = v1;
  v41 = *(v1 + *(v3 + 32) + 64);
  sub_242E8AFF0(v1, v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s21AlertNotificationViewVMa);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_242E8B058(v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, _s21AlertNotificationViewVMa);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADF8);
  sub_242C7E000(&qword_27ECFAE00, &qword_27ECFADF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFAE08);
  v16 = sub_242E8AF18();
  v17 = sub_242C7E000(&qword_27ECFAE18, &qword_27ECFAE08);
  v37 = &type metadata for ActionButton;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  swift_getOpaqueTypeConformance2();
  sub_242E8AF6C();
  sub_242F049A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_242F15420;
  v19 = sub_242F043E0();
  *(inited + 32) = v19;
  v20 = sub_242F04400();
  *(inited + 33) = v20;
  v21 = sub_242F043D0();
  *(inited + 34) = v21;
  v22 = sub_242F043F0();
  sub_242F043F0();
  if (sub_242F043F0() != v19)
  {
    v22 = sub_242F043F0();
  }

  sub_242F043F0();
  if (sub_242F043F0() != v20)
  {
    v22 = sub_242F043F0();
  }

  sub_242F043F0();
  if (sub_242F043F0() != v21)
  {
    v22 = sub_242F043F0();
  }

  sub_242E88294(v8);
  sub_242E8AAD8(v8);
  sub_242F03B50();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v36;
  sub_242CF6B3C(v11, v36, &qword_27ECFADE0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADC0);
  v33 = v31 + *(result + 36);
  *v33 = v22;
  *(v33 + 8) = v24;
  *(v33 + 16) = v26;
  *(v33 + 24) = v28;
  *(v33 + 32) = v30;
  *(v33 + 40) = 0;
  return result;
}

uint64_t sub_242E89E00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v99) = a2;
  v113 = a1;
  v110 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFADC0);
  MEMORY[0x28223BE20](v5 - 8);
  v111 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v99 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A80);
  MEMORY[0x28223BE20](v101);
  v10 = (&v99 - v9);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF8048);
  MEMORY[0x28223BE20](v102);
  v106 = &v99 - v11;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE28);
  MEMORY[0x28223BE20](v105);
  v108 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v104 = &v99 - v14;
  MEMORY[0x28223BE20](v15);
  v107 = &v99 - v16;
  v17 = type metadata accessor for NotificationSymbolConfiguration(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ActionConfiguration(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v99 - v24;
  v26 = type metadata accessor for SymbolView(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v99 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE30);
  MEMORY[0x28223BE20](v33 - 8);
  v103 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v112 = &v99 - v36;
  v100 = v20;
  if (v113)
  {

    sub_242E88294(v25);
    sub_242E8AFF0(&v25[*(v20 + 32)], v19, type metadata accessor for NotificationSymbolConfiguration);
    sub_242E8AAD8(v25);
    v38 = a3 + *(_s21AlertNotificationViewVMa() + 24);
    if (*(v38 + 48))
    {
      v39 = *(v38 + 56);
    }

    else
    {
      v39 = 0;
    }

    *v29 = swift_getKeyPath();
    *(v29 + 1) = 0;
    v29[16] = 0;
    *(v29 + 3) = v113;
    v29[32] = v99;
    sub_242E8B058(v19, &v29[*(v26 + 24)], type metadata accessor for NotificationSymbolConfiguration);
    *&v29[*(v26 + 28)] = v39;
    sub_242E8B058(v29, v32, type metadata accessor for SymbolView);
    v40 = v112;
    sub_242E8B058(v32, v112, type metadata accessor for SymbolView);
    (*(v27 + 56))(v40, 0, 1, v26, v41);
  }

  else
  {
    (*(v27 + 56))(&v99 - v36, 1, 1, v26, v37);
  }

  v42 = a3 + *(_s21AlertNotificationViewVMa() + 24);
  v43 = *(v42 + 8);
  v99 = *v42;
  v44 = *(v42 + 16);
  v45 = *(v42 + 24);
  v46 = *(v42 + 32);
  sub_242CD52B8(v99, v43, v44, v45, v46);
  sub_242E88294(v22);
  v47 = v100;
  v48 = *(v100 + 40);
  v49 = type metadata accessor for TextContentView(0);
  sub_242D575E8(&v22[v48], v10 + *(v49 + 24));
  sub_242E8AAD8(v22);
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v50 = v10 + *(v49 + 20);
  *v50 = v99;
  *(v50 + 1) = v43;
  v51 = v47;
  *(v50 + 2) = v44;
  *(v50 + 3) = v45;
  v50[32] = v46;
  LOBYTE(v49) = sub_242F043E0();
  sub_242E88294(v22);
  sub_242D575E8(&v22[*(v47 + 40)], v114);
  sub_242E8AAD8(v22);
  sub_242D91AA0(v114);
  sub_242F03B50();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF6A88) + 36);
  *v60 = v49;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  *(v60 + 3) = v57;
  *(v60 + 4) = v59;
  v60[40] = 0;
  LOBYTE(v49) = sub_242F04400();
  sub_242E88294(v22);
  sub_242D575E8(&v22[*(v47 + 40)], v114);
  sub_242E8AAD8(v22);
  sub_242D91AA0(v114);
  sub_242F03B50();
  v61 = v10 + *(v101 + 36);
  *v61 = v49;
  *(v61 + 1) = v62;
  *(v61 + 2) = v63;
  *(v61 + 3) = v64;
  *(v61 + 4) = v65;
  v61[40] = 0;
  v66 = sub_242F043C0();
  if (!v113)
  {
    sub_242E88294(v22);
    sub_242D575E8(&v22[*(v51 + 40)], v114);
    sub_242E8AAD8(v22);
    sub_242D91AA0(v114);
  }

  sub_242F03B50();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v10;
  v76 = v106;
  sub_242CF6B3C(v75, v106, &qword_27ECF6A80);
  v77 = v76 + *(v102 + 36);
  *v77 = v66;
  *(v77 + 8) = v68;
  *(v77 + 16) = v70;
  *(v77 + 24) = v72;
  *(v77 + 32) = v74;
  *(v77 + 40) = 0;
  v78 = sub_242F043D0();
  sub_242E88294(v22);
  sub_242D575E8(&v22[*(v51 + 40)], v114);
  sub_242E8AAD8(v22);
  sub_242D91AA0(v114);
  sub_242F03B50();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v87 = v104;
  sub_242CF6B3C(v76, v104, &qword_27ECF8048);
  v88 = v87 + *(v105 + 36);
  *v88 = v78;
  *(v88 + 8) = v80;
  *(v88 + 16) = v82;
  *(v88 + 24) = v84;
  *(v88 + 32) = v86;
  *(v88 + 40) = 0;
  v89 = v87;
  v90 = v107;
  sub_242CF6B3C(v89, v107, &qword_27ECFAE28);
  v91 = v109;
  sub_242E89964(v109);
  v92 = v112;
  v93 = v103;
  sub_242CA321C(v112, v103, &qword_27ECFAE30);
  v94 = v108;
  sub_242CA321C(v90, v108, &qword_27ECFAE28);
  v95 = v111;
  sub_242CA321C(v91, v111, &qword_27ECFADC0);
  v96 = v110;
  sub_242CA321C(v93, v110, &qword_27ECFAE30);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE40);
  sub_242CA321C(v94, v96 + *(v97 + 48), &qword_27ECFAE28);
  sub_242CA321C(v95, v96 + *(v97 + 64), &qword_27ECFADC0);
  sub_242C6D138(v91, &qword_27ECFADC0);
  sub_242C6D138(v90, &qword_27ECFAE28);
  sub_242C6D138(v92, &qword_27ECFAE30);
  sub_242C6D138(v95, &qword_27ECFADC0);
  sub_242C6D138(v94, &qword_27ECFAE28);
  return sub_242C6D138(v93, &qword_27ECFAE30);
}

uint64_t sub_242E8A7CC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE08);
  MEMORY[0x28223BE20](v3);
  v5 = &v23[-v4];
  v6 = type metadata accessor for ActionConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = *(a1 + 1);
  v11 = *(a1 + 2);
  v24 = a1[24];
  v12 = *(a1 + 4);
  v13 = *(a1 + 5);

  sub_242CA0064(v12, v13);
  sub_242E88294(v8);
  v14 = v8[1];
  v33 = *v8;
  v34 = v14;
  v15 = v8[3];
  v35 = v8[2];
  v36 = v15;
  sub_242D5A344(&v33, v37);
  sub_242E8AAD8(v8);
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  LOBYTE(v26) = v9;
  *(&v26 + 1) = v10;
  *&v27 = v11;
  BYTE8(v27) = v24;
  *&v28 = v12;
  *(&v28 + 1) = v13;
  v16 = v3[12];
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_242F04070();
  (*(*(v18 - 8) + 104))(v5 + v16, v17, v18);
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA0);
  swift_storeEnumTagMultiPayload();
  v19 = v5 + v3[9];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v5 + v3[10];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = v3[11];
  *(v5 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0BA8);
  swift_storeEnumTagMultiPayload();
  *(v5 + v3[13]) = 0;
  *(v5 + v3[14]) = 0;
  *(v5 + v3[15]) = 0;
  sub_242E8AF18();
  sub_242C7E000(&qword_27ECFAE18, &qword_27ECFAE08);
  sub_242F045D0();
  sub_242C6D138(v5, &qword_27ECFAE08);
  v37[4] = v30;
  v37[5] = v31;
  v37[6] = v32;
  v37[0] = v26;
  v37[1] = v27;
  v37[2] = v28;
  v37[3] = v29;
  return sub_242E8AFC0(v37);
}

uint64_t sub_242E8AAD8(uint64_t a1)
{
  v2 = type metadata accessor for ActionConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_242E8AB34@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = *(a1 + 8);
  sub_242C6CB78();

  v3 = sub_242F04550();
  v5 = v4;
  v7 = v6;
  v8 = sub_242F04540();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_242DD225C(v3, v5, v7 & 1);

  LOBYTE(v3) = sub_242F043A0();
  sub_242F03B50();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  sub_242F04A70();
  sub_242F03E40();
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v3;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 64) = v22;
  *(a2 + 72) = 0;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = 0x3FEB333333333333;
  *(a2 + 160) = v29;
  *(a2 + 176) = v30;
  *(a2 + 192) = v31;
  LOBYTE(v25) = v12 & 1;
  *(a2 + 96) = v25;
  *(a2 + 112) = v26;
  result = v28;
  *(a2 + 128) = v27;
  *(a2 + 144) = v28;
  return result;
}

uint64_t sub_242E8AD6C()
{
  v1 = v0[5];
  v10[4] = v0[4];
  v10[5] = v1;
  v10[6] = v0[6];
  v2 = v0[1];
  v10[0] = *v0;
  v10[1] = v2;
  v3 = v0[3];
  v10[2] = v0[2];
  v10[3] = v3;
  v4 = swift_allocObject();
  v5 = v0[5];
  v4[5] = v0[4];
  v4[6] = v5;
  v4[7] = v0[6];
  v6 = v0[1];
  v4[1] = *v0;
  v4[2] = v6;
  v7 = v0[3];
  v4[3] = v0[2];
  v4[4] = v7;
  sub_242E8B428(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAE70);
  sub_242E8B460(&qword_27ECFAE78, &qword_27ECFAE70, &unk_242F42F68, sub_242E8B4E4);
  return sub_242F048E0();
}

uint64_t sub_242E8AE98@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  _s21AlertNotificationViewVMa();

  return sub_242E8A7CC(a1, a2);
}

unint64_t sub_242E8AF18()
{
  result = qword_27ECFAE10;
  if (!qword_27ECFAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAE10);
  }

  return result;
}

unint64_t sub_242E8AF6C()
{
  result = qword_27ECFAE20;
  if (!qword_27ECFAE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAE20);
  }

  return result;
}

uint64_t sub_242E8AFF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E8B058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_242E8B0E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242E8B12C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242E8B198()
{
  result = qword_27ECFAE50;
  if (!qword_27ECFAE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF6AF8);
    sub_242E8B224();
    sub_242DD1FE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAE50);
  }

  return result;
}

unint64_t sub_242E8B224()
{
  result = qword_27ECFAE58;
  if (!qword_27ECFAE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFAD80);
    sub_242E8B2DC();
    sub_242C7E000(&qword_27ECF6B70, &qword_27ECF6960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAE58);
  }

  return result;
}

unint64_t sub_242E8B2DC()
{
  result = qword_27ECFAE60;
  if (!qword_27ECFAE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFAE68);
    sub_242C7E000(&qword_27ECFADA8, &qword_27ECFAD98);
    sub_242C7E000(&qword_27ECFADB0, &qword_27ECFAD88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAE60);
  }

  return result;
}

uint64_t sub_242E8B3D8()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v3 = *(v0 + 16);
    return v1(&v3);
  }

  return result;
}

uint64_t sub_242E8B460(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E8B4E4()
{
  result = qword_27ECFAE80;
  if (!qword_27ECFAE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFAE88);
    sub_242E8B59C();
    sub_242C7E000(&qword_27ECF6BD0, &qword_27ECF6BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAE80);
  }

  return result;
}

unint64_t sub_242E8B59C()
{
  result = qword_27ECFAE90;
  if (!qword_27ECFAE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECFAE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAE90);
  }

  return result;
}

uint64_t Generator.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static Generator<A>.live.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *(&xmmword_281AD5E30 + 1);
  *a1 = xmmword_281AD5E30;
  a1[1] = v2;
}

uint64_t static Generator<A>.live.setter(__int128 *a1)
{
  swift_beginAccess();
  xmmword_281AD5E30 = *a1;
}

uint64_t Generator.callAsFunction<A>()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*v2)(v5);
  return TaggedValue.init(rawValue:)(v7, a2, v4);
}

uint64_t sub_242E8B7F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

double static Instrument.GaugeStyle.AngleConfiguration.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF780 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = byte_27ECFAF40;
  *a1 = xmmword_27ECFAF30;
  *(a1 + 16) = v1;
  result = dbl_27ECFAF48[0];
  *(a1 + 24) = *dbl_27ECFAF48;
  return result;
}

uint64_t Instrument.GaugeStyle.AngleConfiguration.init(minimumAngle:maximumAngle:clockwise:bounds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = result;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

uint64_t sub_242E8B990()
{
  v1 = 0x416D756D696E696DLL;
  v2 = 0x7369776B636F6C63;
  if (*v0 != 2)
  {
    v2 = 0x73646E756F62;
  }

  if (*v0)
  {
    v1 = 0x416D756D6978616DLL;
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

uint64_t sub_242E8BA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E8C570(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E8BA38(uint64_t a1)
{
  v2 = sub_242E8C2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E8BA74(uint64_t a1)
{
  v2 = sub_242E8C2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.GaugeStyle.AngleConfiguration.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAF58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v11 = v1[4];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E8C2F8();
  sub_242F064C0();
  v13[0] = v9;
  v14 = 0;
  sub_242C7DB7C();
  sub_242F05F20();
  if (!v2)
  {
    v13[0] = v8;
    v14 = 1;
    sub_242F05F20();
    LOBYTE(v13[0]) = 2;
    sub_242F05ED0();
    v13[0] = v10;
    v13[1] = v11;
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878);
    sub_242C953C8(&qword_27ECF0880);
    sub_242F05F20();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Instrument.GaugeStyle.AngleConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245D279D0](*&v1);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x245D279D0](*&v5);
  sub_242F063B0();

  return sub_242C9457C(v3, v4);
}

uint64_t Instrument.GaugeStyle.AngleConfiguration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  sub_242F06390();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x245D279D0](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x245D279D0](*&v6);
  sub_242F063B0();
  sub_242C9457C(v3, v4);
  return sub_242F063E0();
}

uint64_t Instrument.GaugeStyle.AngleConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAF68);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E8C2F8();
  sub_242F06480();
  if (!v2)
  {
    v15 = 0;
    sub_242C7DBD0();
    sub_242F05E00();
    v9 = v14;
    v15 = 1;
    sub_242F05E00();
    v10 = v14;
    LOBYTE(v14) = 2;
    v11 = sub_242F05DB0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0878);
    v15 = 3;
    sub_242C953C8(&qword_27ECF08A0);
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v13 = v14;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11 & 1;
    *(a2 + 24) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E8C120()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  sub_242F06390();
  if (v1 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v1;
  }

  MEMORY[0x245D279D0](*&v5);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x245D279D0](*&v6);
  sub_242F063B0();
  sub_242C9457C(v3, v4);
  return sub_242F063E0();
}

double sub_242E8C1C4()
{
  xmmword_27ECFAF30 = xmmword_242F43020;
  byte_27ECFAF40 = 1;
  result = 0.0;
  unk_27ECFAF48 = xmmword_242F43030;
  return result;
}

float Instrument.GaugeStyle.AngleConfiguration.angleDifference.getter()
{
  v1 = *(v0 + 8) - *v0;
  v2 = floor(v1 / 6.28318531);
  v3 = (v2 + v2) * 3.14159265;
  v4 = v3 - v1 + 6.28318531;
  v5 = v1 - v3;
  if (!*(v0 + 16))
  {
    return v4;
  }

  return v5;
}

double sub_242E8C238@<D0>(uint64_t a1@<X8>)
{
  if (qword_27ECEF780 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = byte_27ECFAF40;
  *a1 = xmmword_27ECFAF30;
  *(a1 + 16) = v1;
  result = dbl_27ECFAF48[0];
  *(a1 + 24) = *dbl_27ECFAF48;
  return result;
}

BOOL _s14CarPlayAssetUI10InstrumentV10GaugeStyleO18AngleConfigurationV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 && ((*(a1 + 16) ^ *(a2 + 16)) & 1) == 0)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 24) == *(a2 + 24);
    return v5 == *(a2 + 32) && v6;
  }

  return result;
}

unint64_t sub_242E8C2F8()
{
  result = qword_27ECFAF60;
  if (!qword_27ECFAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAF60);
  }

  return result;
}

unint64_t sub_242E8C34C()
{
  result = qword_27ECFAF70;
  if (!qword_27ECFAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAF70);
  }

  return result;
}

uint64_t sub_242E8C3A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_242E8C3FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_242E8C46C()
{
  result = qword_27ECFAF78;
  if (!qword_27ECFAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAF78);
  }

  return result;
}

unint64_t sub_242E8C4C4()
{
  result = qword_27ECFAF80;
  if (!qword_27ECFAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAF80);
  }

  return result;
}

unint64_t sub_242E8C51C()
{
  result = qword_27ECFAF88;
  if (!qword_27ECFAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFAF88);
  }

  return result;
}

uint64_t sub_242E8C570(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x416D756D696E696DLL && a2 == 0xEC000000656C676ELL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416D756D6978616DLL && a2 == 0xEC000000656C676ELL || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7369776B636F6C63 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id WidgetExtensionProvider.__allocating_init(options:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithOptions_];

  return v3;
}

id WidgetExtensionProviderObserver.__allocating_init(provider:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id] = 0;
  v4 = &v3[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  *v4 = 0;
  *(v4 + 1) = 0;
  sub_242F037A0();
  *&v3[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_242E8C7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAFB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_242E8DBBC(a3, v25 - v10);
  v12 = sub_242F05450();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_242E8DC2C(v11);
  }

  else
  {
    sub_242F05440();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_242F05410();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_242F04FA0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_242E8DC2C(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_242E8DC2C(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id WidgetExtensionProvider.init(options:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WidgetExtensionProvider();
  v3 = objc_msgSendSuper2(&v5, sel_initWithOptions_, a1);

  return v3;
}

uint64_t sub_242E8CB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  return MEMORY[0x2822009F8](sub_242E8CB2C, 0, 0);
}

uint64_t sub_242E8CB2C()
{
  receiver = v0[2].receiver;
  super_class = v0[2].super_class;
  v3 = type metadata accessor for WidgetExtensionProvider();
  v0[1].receiver = receiver;
  v0[1].super_class = v3;
  objc_msgSendSuper2(v0 + 1, sel_registerObserver_, super_class);
  v4 = v0->super_class;

  return v4();
}

id WidgetExtensionProvider.__allocating_init(includingIntents:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initIncludingIntents_];
}

id WidgetExtensionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WidgetExtensionProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetExtensionProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_242E8CE2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_242E8D0C8();
  sub_242F03770();

  *a2 = *(v3 + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id);
  return result;
}

uint64_t sub_242E8CED4()
{
  swift_getKeyPath();
  sub_242E8D0C8();
  sub_242F03770();

  return *(v0 + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id);
}

uint64_t sub_242E8CF4C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_242E8D0C8();
    sub_242F03760();
  }

  return result;
}

id WidgetExtensionProviderObserver.init(provider:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id] = 0;
  v3 = &v1[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange];
  *v3 = 0;
  *(v3 + 1) = 0;
  sub_242F037A0();
  *&v1[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WidgetExtensionProviderObserver();
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_242E8D0C8()
{
  result = qword_27ECFB018;
  if (!qword_27ECFB018)
  {
    type metadata accessor for WidgetExtensionProviderObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB018);
  }

  return result;
}

uint64_t type metadata accessor for WidgetExtensionProviderObserver()
{
  result = qword_27ECFB020;
  if (!qword_27ECFB020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WidgetExtensionProviderObserver.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider] unregisterObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetExtensionProviderObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_242E8D2B8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange);
  v4 = *(v2 + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange);
  *v3 = a1;
  v3[1] = a2;

  sub_242C655DC(v4);
  v5 = *(v2 + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_provider);

  return [v5 registerObserver_];
}

uint64_t sub_242E8D32C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAFB0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_242F05450();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_242E8C7B4(0, 0, v3, &unk_242F432F0, v5);
}

uint64_t sub_242E8D430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_242E8D450, 0, 0);
}

uint64_t sub_242E8D450()
{
  sub_242F05430();
  *(v0 + 32) = sub_242F05420();
  v2 = sub_242F05410();

  return MEMORY[0x2822009F8](sub_242E8D4E4, v2, v1);
}

uint64_t sub_242E8D4E4()
{
  v1 = *(v0 + 24);

  sub_242E8D640(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_242E8D58C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_242E60348;

  return sub_242E8D430(a1, v4, v5, v6);
}

uint64_t sub_242E8D640(uint64_t a1)
{
  swift_getKeyPath();
  sub_242E8D0C8();
  sub_242F03770();

  swift_getKeyPath();
  sub_242F03790();

  v3 = *(a1 + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a1 + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver__id) = v5;
    swift_getKeyPath();
    sub_242F03780();

    v6 = *(a1 + OBJC_IVAR____TtC14CarPlayAssetUI31WidgetExtensionProviderObserver_onChange);
    if (v6)
    {

      v6(v7);
      return sub_242C655DC(v6);
    }
  }

  return result;
}

uint64_t sub_242E8D8E0()
{
  result = sub_242F037B0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_3()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242E8DAFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_242E5FCE8;

  return sub_242E8CB0C(a1, v4, v5, v7, v6);
}

uint64_t sub_242E8DBBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAFB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E8DC2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFAFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242E8DC94(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_242E8DD8C;

  return v6(a1);
}

uint64_t sub_242E8DD8C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_242E8DE84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242E60348;

  return sub_242E8DC94(a1, v4);
}

uint64_t sub_242E8DF3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242E5FCE8;

  return sub_242E8DC94(a1, v4);
}

uint64_t NotificationModel.MinimalNotificationModel.init(text:symbol:trailingButtonConfiguration:dismissalHandler:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 32);
  v10 = *(a2 + 2);
  v15 = *a2;
  v16 = *a3;
  v11 = *(a3 + 2);
  v12 = *(a3 + 3);
  v13 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v13;
  *(a6 + 32) = v9;
  sub_242CD54A4(0, 0);
  *(a6 + 40) = v15;
  *(a6 + 56) = v10;
  sub_242D3D654(0, 0);
  *(a6 + 64) = v16;
  *(a6 + 80) = v11;
  *(a6 + 88) = v12;
  result = swift_allocObject();
  *(result + 16) = a4;
  *(result + 24) = a5;
  *(a6 + 96) = sub_242D5A6E0;
  *(a6 + 104) = result;
  return result;
}

uint64_t NotificationModel.MinimalNotificationModel.correct(validationError:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *(a1 + 32);
  v9 = v2[5];
  v42 = v2[4];
  v43 = v9;
  v44 = v2[6];
  v10 = v2[1];
  v39[0] = *v2;
  v39[1] = v10;
  v11 = v2[3];
  v40 = v2[2];
  v41 = v11;
  v12 = *(&v40 + 1);
  v14 = *(&v11 + 1);
  v13 = v11;
  v16 = *(&v42 + 1);
  v15 = v42;
  v18 = *(&v43 + 1);
  v17 = v43;
  if (v8 == 1)
  {
    sub_242E03284(v39, &v32);
    sub_242CD54A4(v12, v13);
    v12 = 0;
    v13 = 0;
    v14 = 0;
LABEL_12:
    v23 = *(v2 + 4);
    v25 = v2[1];
    v32 = *v2;
    v24 = v32;
    v33 = v25;
    *&v34 = v23;
    *(&v34 + 1) = v12;
    *&v35 = v13;
    *(&v35 + 1) = v14;
    *&v36 = v15;
    *(&v36 + 1) = v16;
    *&v37 = v17;
    *(&v37 + 1) = v18;
    v38 = v2[6];
    v26 = v38;
    v27 = v36;
    a2[5] = v37;
    a2[6] = v26;
    v28 = v34;
    a2[3] = v35;
    a2[4] = v27;
    a2[1] = v25;
    a2[2] = v28;
    *a2 = v24;
    v21 = &v32;
    v22 = &v31;
    goto LABEL_13;
  }

  if (v8 != 5)
  {
LABEL_11:
    sub_242E03284(v39, &v32);
    goto LABEL_12;
  }

  v19 = v7 | v5;
  if (v19 | v4 | v6)
  {
    v20 = v19 | v6;
    if ((v4 - 1) > 1 || v20)
    {
      if (v4 == 5 && !v20)
      {
        sub_242E03284(v39, &v32);
        sub_242D3D654(v15, v16);
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  v21 = v39;
  v22 = &v32;
LABEL_13:
  sub_242E03284(v21, v22);
  v29 = v2[1];
  v32 = *v2;
  v33 = v29;
  *&v34 = *(v2 + 4);
  *(&v34 + 1) = v12;
  *&v35 = v13;
  *(&v35 + 1) = v14;
  *&v36 = v15;
  *(&v36 + 1) = v16;
  *&v37 = v17;
  *(&v37 + 1) = v18;
  v38 = v2[6];
  return sub_242E469F4(&v32);
}

uint64_t NotificationModel.MinimalNotificationModel.text.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_242CD52B8(v2, v3, v4, v5, v6);
}

__n128 NotificationModel.MinimalNotificationModel.text.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_242CD5324(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t NotificationModel.MinimalNotificationModel.symbol.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_242CD5460(v2, v3);
}

__n128 NotificationModel.MinimalNotificationModel.symbol.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_i64[0];
  sub_242CD54A4(v1[5], v1[6]);
  result = v4;
  *(v1 + 5) = v4;
  v1[7] = v2;
  return result;
}

uint64_t NotificationModel.MinimalNotificationModel.trailingButtonConfiguration.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_242D5A520(v2, v3);
}

__n128 NotificationModel.MinimalNotificationModel.trailingButtonConfiguration.setter(uint64_t a1)
{
  sub_242D3D654(*(v1 + 64), *(v1 + 72));
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v4;
  return result;
}

uint64_t (*NotificationModel.MinimalNotificationModel.dismissalHandler.getter())()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_242D5A674;
}

uint64_t NotificationModel.MinimalNotificationModel.dismissalHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  *(v2 + 96) = sub_242D5D19C;
  *(v2 + 104) = v5;
  return result;
}

uint64_t (*NotificationModel.MinimalNotificationModel.dismissalHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_242D5D194;
  a1[1] = v5;

  return sub_242E8E544;
}

uint64_t sub_242E8E544(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    *(v4 + 96) = sub_242D5D19C;
    *(v4 + 104) = v5;
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;

    *(v4 + 96) = sub_242D5D19C;
    *(v4 + 104) = v7;
  }

  return result;
}

uint64_t NotificationModel.MinimalNotificationModel.description.getter()
{
  v1 = 7104878;
  v2 = v0[6];
  v3 = v0[8];
  v4 = v0[9];
  sub_242F05A80();
  MEMORY[0x245D26660](0xD00000000000001FLL, 0x8000000242F5CDC0);
  v5 = NotificationModel.Text.description.getter();
  MEMORY[0x245D26660](v5);

  MEMORY[0x245D26660](0xD000000000000012, 0x8000000242F5CDE0);
  if (v4)
  {
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x245D26660](v3, v4);

  MEMORY[0x245D26660](0x6C6F626D7973202CLL, 0xEA0000000000203ALL);
  if (v2)
  {
    v1 = NotificationModel.Symbol.description.getter();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x245D26660](v1, v7);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return 0;
}

char *NotificationModel.MinimalNotificationModel.validate(errors:automakerSymbolValidator:)(char *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v11 = v3[5];
  v10 = v3[6];
  v36 = v3[8];
  v12 = v3[9];

  if (v9 > 1)
  {
    v14 = a1;
  }

  else
  {

    v13 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v13 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v6 = v7;
      v14 = a1;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_242C832C4(0, *(a1 + 2) + 1, 1, a1);
      }

      v16 = *(a1 + 2);
      v15 = *(a1 + 3);
      if (v16 >= v15 >> 1)
      {
        a1 = sub_242C832C4((v15 > 1), v16 + 1, 1, a1);
      }

      *(a1 + 2) = v16 + 1;
      v17 = &a1[40 * v16];
      *(v17 + 4) = 1;
      *(v17 + 5) = 0;
      *(v17 + 6) = 0;
      *(v17 + 7) = 0;
      v17[64] = 5;
      v14 = a1;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    v5 = v8;
  }

  v18 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v18 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_242C832C4(0, *(v14 + 2) + 1, 1, v14);
    }

    v20 = *(v14 + 2);
    v19 = *(v14 + 3);
    if (v20 >= v19 >> 1)
    {
      v14 = sub_242C832C4((v19 > 1), v20 + 1, 1, v14);
    }

    *(v14 + 2) = v20 + 1;
    v21 = &v14[40 * v20];
    *(v21 + 4) = 2;
    *(v21 + 5) = 0;
    *(v21 + 6) = 0;
    *(v21 + 7) = 0;
    v21[64] = 5;
    if (!v12)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_17:
  if (!v12)
  {
LABEL_27:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_242C832C4(0, *(v14 + 2) + 1, 1, v14);
    }

    v24 = *(v14 + 2);
    v23 = *(v14 + 3);
    if (v24 >= v23 >> 1)
    {
      v14 = sub_242C832C4((v23 > 1), v24 + 1, 1, v14);
    }

    *(v14 + 2) = v24 + 1;
    v25 = &v14[40 * v24];
    *(v25 + 4) = 5;
    *(v25 + 5) = 0;
    *(v25 + 6) = 0;
    *(v25 + 7) = 0;
    v25[64] = 5;
    goto LABEL_32;
  }

LABEL_24:
  v22 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v22 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    goto LABEL_27;
  }

LABEL_32:
  if (v10)
  {
    v26 = objc_opt_self();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    v27 = sub_242F04F00();
    v28 = [v26 _systemImageNamed_];

    if (v28)
    {

LABEL_35:
      sub_242CD54A4(v11, v10);
      sub_242CD54A4(v11, v10);
      return v14;
    }

    if (a2)
    {

      v29 = a2(v11, v10);
      sub_242D0DC4C(a2, a3);
      if (v29)
      {
        goto LABEL_35;
      }
    }

    sub_242CD54A4(v11, v10);
    sub_242CD54A4(v11, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_242C832C4(0, *(v14 + 2) + 1, 1, v14);
    }

    v31 = *(v14 + 2);
    v30 = *(v14 + 3);
    if (v31 >= v30 >> 1)
    {
      v14 = sub_242C832C4((v30 > 1), v31 + 1, 1, v14);
    }

    *(v14 + 2) = v31 + 1;
    v32 = &v14[40 * v31];
    *(v32 + 4) = v11;
    *(v32 + 5) = v10;
    *(v32 + 6) = 0;
    *(v32 + 7) = 0;
    v32[64] = 1;
  }

  return v14;
}

BOOL _s14CarPlayAssetUI17NotificationModelV07MinimaleF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v30 = *(a1 + 72);
  v31 = *(a1 + 64);
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 48);
  v32 = *(a2 + 40);
  v33 = *a2;
  v13 = *(a2 + 56);
  v28 = *(a2 + 72);
  v29 = *(a2 + 64);
  v14 = *(a1 + 32);
  v15 = *(a2 + 32);
  v38 = v2;
  v39 = v3;
  v40 = v4;
  v41 = v5;
  v42 = v14;
  v34 = v9;
  v35 = v11;
  v36 = v10;
  v37 = v15;
  sub_242CD52B8(v2, v3, v4, v5, v14);
  sub_242CD52B8(v33, v9, v11, v10, v15);
  v16 = _s14CarPlayAssetUI17NotificationModelV4TextO2eeoiySbAE_AEtFZ_0(&v38, &v33);
  sub_242CD5324(v33, v34, v35, v36, v37);
  sub_242CD5324(v38, v39, v40, v41, v42);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = v6;
  if (!v6)
  {
    sub_242CD5460(v7, 0);
    if (!v12)
    {
      sub_242CD5460(v32, 0);
      v17 = 0;
      goto LABEL_25;
    }

    v19 = v32;
    sub_242CD5460(v32, v12);
    goto LABEL_14;
  }

  if (!v12)
  {
    sub_242CD5460(v7, v6);
    v19 = v32;
    sub_242CD5460(v32, 0);
    sub_242CD5460(v7, v17);

LABEL_14:
    sub_242CD54A4(v7, v17);
    v20 = v19;
    v21 = v12;
LABEL_20:
    sub_242CD54A4(v20, v21);
    return 0;
  }

  if ((v7 != v32 || v6 != v12) && (sub_242F06110() & 1) == 0)
  {
LABEL_15:
    sub_242CD5460(v7, v6);
LABEL_18:
    sub_242CD5460(v32, v12);
    sub_242CD5460(v7, v6);
    sub_242CD54A4(v32, v12);
LABEL_19:

    v20 = v7;
    v21 = v6;
    goto LABEL_20;
  }

  if (v8)
  {
    if (v13)
    {
      sub_242CD5460(v7, v6);
      sub_242CD5460(v32, v12);
      sub_242CD5460(v7, v6);

      v18 = sub_242F04710();

      sub_242CD54A4(v32, v12);
      if (v18)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_242CD5460(v7, v6);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_242CD5460(v32, v12);
  sub_242CD5460(v7, v6);
  sub_242CD54A4(v32, v12);
LABEL_24:

LABEL_25:
  sub_242CD54A4(v7, v17);
  if (!v30)
  {
    sub_242D5A520(v31, 0);
    v23 = v29;
    v24 = v28;
    if (!v28)
    {
      sub_242D5A520(v29, 0);
      v25 = v31;
      v26 = 0;
      goto LABEL_37;
    }

    sub_242D5A520(v29, v28);
    goto LABEL_33;
  }

  v23 = v29;
  v24 = v28;
  if (!v28)
  {
    sub_242D5A520(v31, v30);
    sub_242D5A520(v29, 0);
    sub_242D5A520(v31, v30);

LABEL_33:
    sub_242D3D654(v31, v30);
    sub_242D3D654(v23, v24);
    return 0;
  }

  if (v31 == v29 && v30 == v28)
  {
    sub_242D5A520(v31, v30);
    sub_242D5A520(v31, v30);
    sub_242D5A520(v31, v30);
    sub_242D3D654(v31, v30);

    v25 = v31;
    v26 = v30;
LABEL_37:
    sub_242D3D654(v25, v26);
    return 1;
  }

  v27 = sub_242F06110();
  sub_242D5A520(v31, v30);
  sub_242D5A520(v29, v28);
  sub_242D5A520(v31, v30);
  sub_242D3D654(v29, v28);

  sub_242D3D654(v31, v30);
  return (v27 & 1) != 0;
}

unint64_t sub_242E8F114(uint64_t a1)
{
  result = sub_242E8F13C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_242E8F13C()
{
  result = qword_27ECFB030;
  if (!qword_27ECFB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB030);
  }

  return result;
}

uint64_t sub_242E8F190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242E8F1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double TachometerDataIdentifiers.init()@<D0>(uint64_t a1@<X8>)
{
  *&result = 370481689;
  *a1 = 370481689;
  *(a1 + 4) = 80;
  return result;
}

unint64_t sub_242E8F378()
{
  v1 = *v0;
  v2 = 0x6E65644961746164;
  v3 = 0xD00000000000001CLL;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_242E8F430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E90310(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E8F458(uint64_t a1)
{
  v2 = sub_242E900A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E8F494(uint64_t a1)
{
  v2 = sub_242E900A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TachometerDataIdentifiers.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB038);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v18 = v1[2];
  v19 = v9;
  v10 = v1[3];
  v16 = v1[4];
  v17 = v10;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E900A0();
  sub_242F064C0();
  v29 = v8;
  v28 = 0;
  sub_242C8AC28();
  sub_242F05F20();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v17;
  v11 = v18;
  v13 = v16;
  v27 = v19;
  v26 = 1;
  sub_242F05F20();
  v25 = v11;
  v24 = 2;
  sub_242F05F20();
  v23 = v12;
  v22 = 3;
  sub_242F05F20();
  v21 = v13;
  v20 = 4;
  sub_242F05F20();
  return (*(v5 + 8))(v7, v4);
}

uint64_t TachometerDataIdentifiers.hash(into:)()
{
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();
}

uint64_t TachometerDataIdentifiers.hashValue.getter()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t TachometerDataIdentifiers.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB048);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E900A0();
  sub_242F06480();
  if (!v2)
  {
    v26 = 0;
    sub_242C8AC7C();
    sub_242F05E00();
    v9 = v27;
    v24 = 1;
    sub_242F05E00();
    v17 = v9;
    v10 = v25;
    v22 = 2;
    sub_242F05E00();
    HIDWORD(v16) = v10;
    v11 = v23;
    v20 = 3;
    sub_242F05E00();
    v13 = v21;
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4C20);
    sub_242D83ED4();
    sub_242F05D90();
    (*(v6 + 8))(v8, v5);
    v14 = v18;
    if (v18 == 86)
    {
      v14 = 80;
    }

    v15 = BYTE4(v16);
    *a2 = v17;
    a2[1] = v15;
    a2[2] = v11;
    a2[3] = v13;
    a2[4] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t sub_242E8FCA0()
{
  sub_242F06390();
  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  InstrumentDataIdentifier.rawValue.getter();
  sub_242F04DD0();

  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI25TachometerDataIdentifiersV2eeoiySbAC_ACtFZ_0()
{
  v0 = InstrumentDataIdentifier.rawValue.getter();
  v2 = v1;
  if (v0 == InstrumentDataIdentifier.rawValue.getter() && v2 == v3)
  {
  }

  else
  {
    v4 = sub_242F06110();

    if ((v4 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v5 = InstrumentDataIdentifier.rawValue.getter();
  v7 = v6;
  if (v5 == InstrumentDataIdentifier.rawValue.getter() && v7 == v8)
  {
  }

  else
  {
    v9 = sub_242F06110();

    if ((v9 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v10 = InstrumentDataIdentifier.rawValue.getter();
  v12 = v11;
  if (v10 == InstrumentDataIdentifier.rawValue.getter() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_242F06110();

    if ((v14 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v15 = InstrumentDataIdentifier.rawValue.getter();
  v17 = v16;
  if (v15 == InstrumentDataIdentifier.rawValue.getter() && v17 == v18)
  {

    goto LABEL_17;
  }

  v19 = sub_242F06110();

  if ((v19 & 1) == 0)
  {
LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

LABEL_17:
  v20 = InstrumentDataIdentifier.rawValue.getter();
  v22 = v21;
  if (v20 == InstrumentDataIdentifier.rawValue.getter() && v22 == v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_242F06110();
  }

  return v24 & 1;
}

unint64_t sub_242E900A0()
{
  result = qword_27ECFB040;
  if (!qword_27ECFB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB040);
  }

  return result;
}

unint64_t sub_242E900F8()
{
  result = qword_27ECFB050;
  if (!qword_27ECFB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB050);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SpeedometerDataIdentifiers(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xAB && a1[5])
  {
    return (*a1 + 171);
  }

  v3 = *a1;
  v4 = v3 >= 0x56;
  v5 = v3 - 86;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeedometerDataIdentifiers(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xAA)
  {
    *(result + 4) = 0;
    *result = a2 - 171;
    if (a3 >= 0xAB)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xAB)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 85;
    }
  }

  return result;
}

unint64_t sub_242E9020C()
{
  result = qword_27ECFB058;
  if (!qword_27ECFB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB058);
  }

  return result;
}

unint64_t sub_242E90264()
{
  result = qword_27ECFB060;
  if (!qword_27ECFB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB060);
  }

  return result;
}

unint64_t sub_242E902BC()
{
  result = qword_27ECFB068;
  if (!qword_27ECFB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECFB068);
  }

  return result;
}

uint64_t sub_242E90310(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644961746164 && a2 == 0xEE00726569666974;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5CE00 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F5CE20 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000242F5CE40 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000242F5AE80 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t Instrument.PopoverLocation.name.getter()
{
  v1 = v0[11];
  v8[10] = v0[10];
  v8[11] = v1;
  v8[12] = v0[12];
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[9];
  v8[8] = v0[8];
  v8[9] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = v0[5];
  v8[4] = v0[4];
  v8[5] = v5;
  v6 = v0[1];
  v8[0] = *v0;
  v8[1] = v6;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v8) == 1)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

BOOL Instrument.PopoverLocation.rendersLocally.getter()
{
  v1 = v0[11];
  v8[10] = v0[10];
  v8[11] = v1;
  v8[12] = v0[12];
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[9];
  v8[8] = v0[8];
  v8[9] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = v0[5];
  v8[4] = v0[4];
  v8[5] = v5;
  v6 = v0[1];
  v8[0] = *v0;
  v8[1] = v6;
  return get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v8) == 0;
}

uint64_t Instrument.PopoverConfiguration.location.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[11];
  v30 = v1[10];
  v31 = v3;
  v4 = v1[11];
  v32 = v1[12];
  v5 = v1[5];
  v6 = v1[7];
  v26 = v1[6];
  v7 = v26;
  v27 = v6;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[1];
  v12 = v1[3];
  v22 = v1[2];
  v13 = v22;
  v23 = v12;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  a1[6] = v7;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v2;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v5;
  *a1 = v18;
  a1[1] = v11;
  return sub_242E944A0(v21, &v20);
}

__n128 Instrument.PopoverConfiguration.location.setter(uint64_t a1)
{
  v3 = v1[11];
  v15[10] = v1[10];
  v15[11] = v3;
  v15[12] = v1[12];
  v4 = v1[7];
  v15[6] = v1[6];
  v15[7] = v4;
  v5 = v1[9];
  v15[8] = v1[8];
  v15[9] = v5;
  v6 = v1[3];
  v15[2] = v1[2];
  v15[3] = v6;
  v7 = v1[5];
  v15[4] = v1[4];
  v15[5] = v7;
  v8 = v1[1];
  v15[0] = *v1;
  v15[1] = v8;
  sub_242E944D8(v15);
  v9 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v9;
  v1[12] = *(a1 + 192);
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

__n128 Instrument.PopoverConfiguration.init(location:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v2;
  *(a2 + 192) = *(a1 + 192);
  v3 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v3;
  v4 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v4;
  v5 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v5;
  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_242E90778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_242E90800(uint64_t a1)
{
  v2 = sub_242E94508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E9083C(uint64_t a1)
{
  v2 = sub_242E94508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.PopoverConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB070);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = v1[11];
  v38 = v1[10];
  v39 = v7;
  v40 = v1[12];
  v8 = v1[7];
  v34 = v1[6];
  v35 = v8;
  v9 = v1[9];
  v36 = v1[8];
  v37 = v9;
  v10 = v1[3];
  v30 = v1[2];
  v31 = v10;
  v11 = v1[5];
  v32 = v1[4];
  v33 = v11;
  v12 = v1[1];
  v28 = *v1;
  v29 = v12;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E944A0(&v28, &v15);
  sub_242E94508();
  sub_242F064C0();
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  sub_242E9455C();
  sub_242F05F20();
  v14[10] = v25;
  v14[11] = v26;
  v14[12] = v27;
  v14[6] = v21;
  v14[7] = v22;
  v14[8] = v23;
  v14[9] = v24;
  v14[2] = v17;
  v14[3] = v18;
  v14[4] = v19;
  v14[5] = v20;
  v14[0] = v15;
  v14[1] = v16;
  sub_242D906CC(v14);
  return (*(v4 + 8))(v6, v3);
}

uint64_t Instrument.PopoverConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB088);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E94508();
  sub_242F06480();
  if (!v2)
  {
    sub_242E945B0();
    sub_242F05E00();
    (*(v6 + 8))(v8, v5);
    v9 = v26;
    a2[10] = v25;
    a2[11] = v9;
    a2[12] = v27;
    v10 = v22;
    a2[6] = v21;
    a2[7] = v10;
    v11 = v24;
    a2[8] = v23;
    a2[9] = v11;
    v12 = v18;
    a2[2] = v17;
    a2[3] = v12;
    v13 = v20;
    a2[4] = v19;
    a2[5] = v13;
    v14 = *&v16[24];
    *a2 = *&v16[8];
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(a1);
}

uint64_t Instrument.PopoverLocation.assets.getter()
{
  v1 = v0[11];
  v8[10] = v0[10];
  v8[11] = v1;
  v8[12] = v0[12];
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[9];
  v8[8] = v0[8];
  v8[9] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = v0[5];
  v8[4] = v0[4];
  v8[5] = v5;
  v6 = v0[1];
  v8[0] = *v0;
  v8[1] = v6;
  if (get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(v8) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    return Instrument.PopoverLocation.LocalConfiguration.assets.getter();
  }
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.assets.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  v23 = *(v0 + 40);
  v24 = *(v0 + 64);
  v31 = *(v0 + 72);
  v32 = *(v0 + 80);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v25 = *(v0 + 104);
  v29 = *(v0 + 128);
  v30 = *(v0 + 120);
  v28 = *(v0 + 136);
  v26 = *(v0 + 56);
  v27 = *(v0 + 144);
  v21 = *(v0 + 112);
  v22 = ~*(v0 + 144);
  v19 = *(v0 + 168);
  v20 = *(v0 + 160);
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v16 = *(v0 + 192);
  v14 = *(v0 + 152);
  v15 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_242F0A4E0;
  *(v7 + 56) = &type metadata for ImageAsset;
  *(v7 + 64) = &protocol witness table for ImageAsset;
  v8 = swift_allocObject();
  *(v7 + 32) = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = v3;
  *(v8 + 40) = v23;
  *(v8 + 48) = v4;
  *(v8 + 56) = v26;
  *(v7 + 96) = &type metadata for ImageAsset;
  *(v7 + 104) = &protocol witness table for ImageAsset;
  v9 = swift_allocObject();
  *(v7 + 72) = v9;
  *(v9 + 16) = v24;
  *(v9 + 24) = v31;
  *(v9 + 32) = v32;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  *(v9 + 56) = v25;
  v33 = v7;
  if ((v22 & 0xFE) != 0)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_242F0A4E0;
    *(inited + 56) = &type metadata for ImageAsset;
    *(inited + 64) = &protocol witness table for ImageAsset;
    v11 = swift_allocObject();
    *(inited + 32) = v11;
    *(v11 + 16) = v21;
    *(v11 + 24) = v30;
    *(v11 + 32) = v29;
    *(v11 + 40) = v28;
    *(v11 + 48) = v27;
    *(v11 + 56) = v14;
    *(inited + 96) = &type metadata for ImageAsset;
    *(inited + 104) = &protocol witness table for ImageAsset;
    v12 = swift_allocObject();
    *(inited + 72) = v12;
    *(v12 + 16) = v20;
    *(v12 + 24) = v19;
    *(v12 + 32) = v18;
    *(v12 + 40) = v17;
    *(v12 + 48) = v16;
    *(v12 + 56) = v15;
    sub_242C7F6C4(v2, v1, v3, v23, v4);
    sub_242C7F6C4(v24, v31, v32, v5, v6);
    sub_242C7F6C4(v21, v30, v29, v28, v27);
    sub_242C7F6C4(v20, v19, v18, v17, v16);
    sub_242C819FC(inited);
    return v33;
  }

  else
  {
    sub_242C7F6C4(v2, v1, v3, v23, v4);
    sub_242C7F6C4(v24, v31, v32, v5, v6);
  }

  return v7;
}

uint64_t Instrument.PopoverLocation.restoreAssets(from:)(void *a1)
{
  v4 = v1[9];
  v5 = v1[11];
  v66 = v1[10];
  v67 = v5;
  v6 = v1[11];
  v68 = v1[12];
  v7 = v1[5];
  v8 = v1[7];
  v62 = v1[6];
  v63 = v8;
  v9 = v1[7];
  v10 = v1[9];
  v64 = v1[8];
  v65 = v10;
  v11 = v1[1];
  v12 = v1[3];
  v58 = v1[2];
  v59 = v12;
  v13 = v1[3];
  v14 = v1[5];
  v60 = v1[4];
  v61 = v14;
  v15 = v1[1];
  v56 = *v1;
  v57 = v15;
  v79 = v66;
  v80 = v6;
  v81 = v1[12];
  v75 = v62;
  v76 = v9;
  v77 = v64;
  v78 = v4;
  v71 = v58;
  v72 = v13;
  v73 = v60;
  v74 = v7;
  v69 = v56;
  v70 = v11;
  result = get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(&v69);
  if (result != 1)
  {
    v52 = v79;
    v53 = v80;
    v54 = v81;
    v48 = v75;
    v49 = v76;
    v50 = v77;
    v51 = v78;
    v44 = v71;
    v45 = v72;
    v46 = v73;
    v47 = v74;
    v42 = v69;
    v43 = v70;
    v55[10] = v66;
    v55[11] = v67;
    v55[12] = v68;
    v55[6] = v62;
    v55[7] = v63;
    v55[8] = v64;
    v55[9] = v65;
    v55[2] = v58;
    v55[3] = v59;
    v55[4] = v60;
    v55[5] = v61;
    v55[0] = v56;
    v55[1] = v57;
    sub_242CA321C(v55, &v29, &qword_27ECFB098);
    ImageAsset.restore(from:)(a1);
    if (v2)
    {
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v35 = v48;
      v36 = v49;
      v37 = v50;
      v38 = v51;
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v34 = v47;
      v29 = v42;
      v30 = v43;
      return sub_242E94604(&v29);
    }

    else
    {
      ImageAsset.restore(from:)(a1);
      if ((~v51 & 0xFE) != 0)
      {
        ImageAsset.restore(from:)(a1);
        ImageAsset.restore(from:)(a1);
      }

      v17 = v1[11];
      v39 = v1[10];
      v40 = v17;
      v41 = v1[12];
      v18 = v1[7];
      v35 = v1[6];
      v36 = v18;
      v19 = v1[9];
      v37 = v1[8];
      v38 = v19;
      v20 = v1[3];
      v31 = v1[2];
      v32 = v20;
      v21 = v1[5];
      v33 = v1[4];
      v34 = v21;
      v22 = v1[1];
      v29 = *v1;
      v30 = v22;
      sub_242D906CC(&v29);
      v39 = v52;
      v40 = v53;
      v41 = v54;
      v35 = v48;
      v36 = v49;
      v37 = v50;
      v38 = v51;
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v34 = v47;
      v29 = v42;
      v30 = v43;
      result = nullsub_2(&v29);
      v23 = v40;
      v1[10] = v39;
      v1[11] = v23;
      v1[12] = v41;
      v24 = v36;
      v1[6] = v35;
      v1[7] = v24;
      v25 = v38;
      v1[8] = v37;
      v1[9] = v25;
      v26 = v32;
      v1[2] = v31;
      v1[3] = v26;
      v27 = v34;
      v1[4] = v33;
      v1[5] = v27;
      v28 = v30;
      *v1 = v29;
      v1[1] = v28;
    }
  }

  return result;
}

void Instrument.PopoverLocation.LocalConfiguration.restoreAssets(from:)(void *a1)
{
  ImageAsset.restore(from:)(a1);
  if (!v2)
  {
    ImageAsset.restore(from:)(a1);
    if ((~*(v1 + 144) & 0xFELL) != 0)
    {
      ImageAsset.restore(from:)(a1);
      ImageAsset.restore(from:)(a1);
    }
  }
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.streamName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.streamName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.closeButton.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v10 = v1[3];
  v11 = v2;
  v4 = v1[6];
  v12 = v1[5];
  v3 = v12;
  v13 = v4;
  v6 = v1[2];
  v9[0] = v1[1];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_242CA321C(v9, &v8, &qword_27ECF4238);
}

__n128 Instrument.PopoverLocation.LocalConfiguration.closeButton.setter(uint64_t a1)
{
  v3 = v1[4];
  v10[2] = v1[3];
  v10[3] = v3;
  v4 = v1[6];
  v10[4] = v1[5];
  v10[5] = v4;
  v5 = v1[2];
  v10[0] = v1[1];
  v10[1] = v5;
  sub_242C6D138(v10, &qword_27ECF4238);
  v6 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v6;
  v7 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v9;
  return result;
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.focusedCloseButton.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[10];
  v10 = v1[9];
  v11 = v2;
  v4 = v1[12];
  v12 = v1[11];
  v3 = v12;
  v13 = v4;
  v6 = v1[8];
  v9[0] = v1[7];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_242CA321C(v9, &v8, &qword_27ECFB0A0);
}

__n128 Instrument.PopoverLocation.LocalConfiguration.focusedCloseButton.setter(uint64_t a1)
{
  v3 = v1[10];
  v10[2] = v1[9];
  v10[3] = v3;
  v4 = v1[12];
  v10[4] = v1[11];
  v10[5] = v4;
  v5 = v1[8];
  v10[0] = v1[7];
  v10[1] = v5;
  sub_242C6D138(v10, &qword_27ECFB0A0);
  v6 = *(a1 + 48);
  v1[9] = *(a1 + 32);
  v1[10] = v6;
  v7 = *(a1 + 80);
  v1[11] = *(a1 + 64);
  v1[12] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[7] = *a1;
  v1[8] = v9;
  return result;
}

__n128 Instrument.PopoverLocation.LocalConfiguration.init(streamName:closeButton:focusedCloseButton:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 144) = 254;
  *(a5 + 152) = 0u;
  *(a5 + 168) = 0u;
  *(a5 + 184) = 0u;
  *(a5 + 200) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  v7 = a3[3];
  *(a5 + 48) = a3[2];
  *(a5 + 64) = v7;
  v8 = a3[5];
  *(a5 + 80) = a3[4];
  *(a5 + 96) = v8;
  v9 = a3[1];
  *(a5 + 16) = *a3;
  *(a5 + 32) = v9;
  v10 = *(a5 + 192);
  v17[4] = *(a5 + 176);
  v17[5] = v10;
  v11 = *(a5 + 128);
  v17[0] = *(a5 + 112);
  v17[1] = v11;
  v12 = *(a5 + 160);
  v17[2] = *(a5 + 144);
  v17[3] = v12;
  sub_242C6D138(v17, &qword_27ECFB0A0);
  v13 = *(a4 + 48);
  *(a5 + 144) = *(a4 + 32);
  *(a5 + 160) = v13;
  v14 = *(a4 + 80);
  *(a5 + 176) = *(a4 + 64);
  *(a5 + 192) = v14;
  result = *a4;
  v16 = *(a4 + 16);
  *(a5 + 112) = *a4;
  *(a5 + 128) = v16;
  return result;
}

uint64_t sub_242E91640()
{
  v1 = 0x74754265736F6C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x614E6D6165727473;
  }
}

uint64_t sub_242E916AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E950B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E916D4(uint64_t a1)
{
  v2 = sub_242E94634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242E91710(uint64_t a1)
{
  v2 = sub_242E94634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - v5;
  v7 = v1[4];
  v37 = v1[3];
  v38 = v7;
  v8 = v1[6];
  v39 = v1[5];
  v40 = v8;
  v9 = v1[2];
  v35 = v1[1];
  v36 = v9;
  v10 = v1[8];
  v41 = v1[7];
  v42 = v10;
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1[12];
  v45 = v1[11];
  v46 = v13;
  v43 = v11;
  v44 = v12;
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_2Tm(v15, v14);
  sub_242E94634();
  sub_242F064C0();
  LOBYTE(v29) = 0;
  v18 = v20[1];
  sub_242F05EC0();
  if (!v18)
  {
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    v48 = 1;
    sub_242CA321C(&v35, v28, &qword_27ECF4238);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4238);
    sub_242D67494(&qword_27ECF4250);
    sub_242F05F20();
    v28[2] = v31;
    v28[3] = v32;
    v28[4] = v33;
    v28[5] = v34;
    v28[0] = v29;
    v28[1] = v30;
    sub_242C6D138(v28, &qword_27ECF4238);
    v24 = v43;
    v25 = v44;
    v26 = v45;
    v27 = v46;
    v22 = v41;
    v23 = v42;
    v47 = 2;
    sub_242CA321C(&v41, v21, &qword_27ECFB0A0);
    sub_242F05EB0();
    v21[2] = v24;
    v21[3] = v25;
    v21[4] = v26;
    v21[5] = v27;
    v21[0] = v22;
    v21[1] = v23;
    sub_242C6D138(v21, &qword_27ECFB0A0);
  }

  return (*(v4 + 8))(v6, v17);
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.hash(into:)(uint64_t a1)
{
  v3 = ~*(v1 + 144);
  sub_242F04DD0();
  sub_242D65A9C(a1);
  if ((v3 & 0xFE) == 0)
  {
    return sub_242F063B0();
  }

  sub_242F063B0();
  return sub_242D65A9C(a1);
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.hashValue.getter()
{
  v1 = *(v0 + 64);
  v17 = *(v0 + 48);
  v18 = v1;
  v2 = *(v0 + 96);
  v19 = *(v0 + 80);
  v20 = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 144);
  v15 = *(v0 + 16);
  v16 = v3;
  sub_242F06390();
  sub_242F04DD0();
  sub_242D65A9C(v7);
  if ((~v4 & 0xFELL) != 0)
  {
    v5 = *(v0 + 128);
    v8 = *(v0 + 112);
    v9 = v5;
    v11 = *(v0 + 152);
    v12 = *(v0 + 168);
    v13 = *(v0 + 184);
    v14 = *(v0 + 200);
    v10 = v4;
    sub_242F063B0();
    sub_242D65A9C(v7);
  }

  else
  {
    sub_242F063B0();
  }

  return sub_242F063E0();
}

uint64_t Instrument.PopoverLocation.LocalConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECFB0B8);
  v5 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v7 = &v32 - v6;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E94634();
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v65 = 0u;
    v66 = 0u;
    *(v67 + 8) = 0u;
    *(&v67[1] + 8) = 0u;
    *(&v67[2] + 8) = 0u;
    *&v67[0] = 254;
    *(&v67[3] + 1) = 0;
    return sub_242C6D138(&v65, &qword_27ECFB0A0);
  }

  else
  {
    v8 = v5;
    v45 = a2;
    LOBYTE(v65) = 0;
    v9 = v106;
    v10 = sub_242F05DA0();
    v44 = v11;
    v42 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF4238);
    v93 = 1;
    v43 = sub_242D67494(&qword_27ECF4268);
    sub_242F05E00();
    v102 = v96;
    v103 = v97;
    v104 = v98;
    v105 = v99;
    v100 = v94;
    v101 = v95;
    v80 = 2;
    sub_242F05D90();
    (*(v8 + 8))(v7, v9);
    v12 = v81;
    v43 = v81;
    v13 = v82;
    v14 = v83;
    v40 = v83;
    v41 = v82;
    v15 = v84;
    v39 = v84;
    v36 = v85;
    v106 = v86;
    v32 = v88;
    v33 = v87;
    v16 = v89;
    v17 = v91;
    v37 = v91;
    v38 = v89;
    v34 = v92;
    v35 = v90;
    memset(v46, 0, sizeof(v46));
    v47 = 254;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0;
    sub_242C6D138(v46, &qword_27ECFB0A0);
    *&v52 = v42;
    *(&v52 + 1) = v44;
    v55 = v102;
    v56 = v103;
    v57 = v104;
    v58 = v105;
    v53 = v100;
    v54 = v101;
    *&v59 = v12;
    *(&v59 + 1) = v13;
    *&v60 = v14;
    *(&v60 + 1) = v15;
    v18 = v36;
    *&v61 = v36;
    *(&v61 + 1) = v106;
    v20 = v32;
    v19 = v33;
    *&v62 = v33;
    *(&v62 + 1) = v32;
    *&v63 = v16;
    v21 = v35;
    *(&v63 + 1) = v35;
    *&v64 = v17;
    v22 = v34;
    *(&v64 + 1) = v34;
    v23 = v102;
    v24 = v45;
    v45[2] = v101;
    v24[3] = v23;
    v25 = v53;
    *v24 = v52;
    v24[1] = v25;
    v26 = v56;
    v27 = v57;
    v28 = v59;
    v24[6] = v58;
    v24[7] = v28;
    v24[4] = v26;
    v24[5] = v27;
    v29 = v61;
    v24[8] = v60;
    v24[9] = v29;
    v30 = v63;
    v24[10] = v62;
    v24[11] = v30;
    v24[12] = v64;
    sub_242E94688(&v52, &v65);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    *&v65 = v42;
    *(&v65 + 1) = v44;
    v67[1] = v102;
    v67[2] = v103;
    v67[3] = v104;
    v67[4] = v105;
    v66 = v100;
    v67[0] = v101;
    v68 = v43;
    v69 = v41;
    v70 = v40;
    v71 = v39;
    v72 = v18;
    v73 = v106;
    v74 = v19;
    v75 = v20;
    v76 = v38;
    v77 = v21;
    v78 = v37;
    v79 = v22;
    return sub_242E94604(&v65);
  }
}