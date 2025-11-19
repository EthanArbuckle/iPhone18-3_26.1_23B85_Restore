void sub_1D783F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  (*(v11 + 16))(aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v10);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  (*(v11 + 32))(v14 + v13, aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_1D7841628;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7780F60;
  aBlock[3] = &block_descriptor_60;
  v15 = _Block_copy(aBlock);

  [a5 addFinishBlock_];
  _Block_release(v15);
}

void sub_1D783F394(void *a1, void *a2, void (*a3)(char *), uint64_t a4, char *a5)
{
  v9 = sub_1D78B3294();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14 = a2;
    if (qword_1EE08E648 != -1)
    {
      swift_once();
    }

    v15 = sub_1D78B4304();
    __swift_project_value_buffer(v15, qword_1EE09C1F0);
    v16 = a2;
    v17 = sub_1D78B42E4();
    v18 = sub_1D78B6094();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      swift_getErrorValue();
      v21 = sub_1D78B67B4();
      v23 = sub_1D77AD82C(v21, v22, &v29);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D7739000, v17, v18, "AMSCampaignAttributionTask error: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA7043F0](v20, -1, -1);
      MEMORY[0x1DA7043F0](v19, -1, -1);
    }

    a3(a5);
  }

  else
  {
    if (a1)
    {
      v24 = v11;
      v25 = a1;
      v26 = [v25 redirectURL];
      if (v26)
      {
        v27 = v26;
        sub_1D78B3254();

        a3(v13);
        (*(v10 + 8))(v13, v24);
        return;
      }
    }

    a3(a5);
  }
}

uint64_t sub_1D783F634()
{
  sub_1D78411D4(0, &qword_1EE08F220);
  swift_allocObject();
  sub_1D78B4174();
  sub_1D7841488();
  swift_allocObject();
  sub_1D78B4174();
  v0 = sub_1D78B4014();
  v1 = sub_1D78B4004();

  return v1;
}

void sub_1D783F728()
{
  if (!qword_1EC9CAD30)
  {
    sub_1D773F004(255, &qword_1EE08FBD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9CAD30);
    }
  }
}

uint64_t sub_1D783F7A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_1D783F8A0(a5, a1, a2, a3);
  sub_1D78411D4(0, &qword_1EE095240);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D783F814(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(sub_1D78B3294() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_1D783F7A0(a1, a2, a3, v8, v9);
}

uint64_t sub_1D783F8A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a3;
  v35 = a2;
  v6 = sub_1D78B5254();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D78B52A4();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D78B3294();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D78B5FB4();
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D77405E0(0, &qword_1EE08FA10, sub_1D778CD10, MEMORY[0x1E69E6F90]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D78BCAB0;
  *(v15 + 56) = sub_1D773F004(0, &qword_1EE08FBD0);
  *(v15 + 64) = sub_1D7840C28();
  *(v15 + 32) = a4;
  v16 = a4;
  sub_1D78B60A4();
  sub_1D78B42C4();

  switch(v14)
  {
    case 0:
      sub_1D773F004(0, &qword_1EE08FE10);
      v17 = sub_1D78B6104();
      (*(v11 + 16))(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
      v27 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      (*(v11 + 32))(v29 + v27, v13, v10);
      v30 = (v29 + v28);
      v31 = v36;
      *v30 = v35;
      v30[1] = v31;
      *(v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;
      v47 = sub_1D7840D64;
      v48 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v23 = &block_descriptor_18_0;
      goto LABEL_9;
    case 2:
      sub_1D773F004(0, &qword_1EE08FE10);
      v17 = sub_1D78B6104();
      (*(v11 + 16))(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
      v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v25 = swift_allocObject();
      (*(v11 + 32))(v25 + v24, &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      *(v25 + ((v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
      v47 = sub_1D7840C90;
      v48 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v45 = sub_1D775FB6C;
      v46 = &block_descriptor_27;
      v26 = _Block_copy(&aBlock);
LABEL_10:

      sub_1D78B5274();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1D7840D1C(&qword_1EE090300, 255, MEMORY[0x1E69E7F60]);
      sub_1D77405E0(0, &qword_1EE090040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D775F4A4();
      v32 = v39;
      v33 = v42;
      sub_1D78B6324();
      MEMORY[0x1DA7033B0](0, v9, v32, v26);
      _Block_release(v26);

      (*(v41 + 8))(v32, v33);
      (*(v38 + 8))(v9, v40);
      return 1;
    case 1:
      sub_1D773F004(0, &qword_1EE08FE10);
      v17 = sub_1D78B6104();
      (*(v11 + 16))(&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
      v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v19 = (v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
      v20 = swift_allocObject();
      (*(v11 + 32))(v20 + v18, v13, v10);
      v21 = (v20 + v19);
      v22 = v36;
      *v21 = v35;
      v21[1] = v22;
      *(v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8)) = v37;
      v47 = sub_1D7840E2C;
      v48 = v20;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v23 = &block_descriptor_24_1;
LABEL_9:
      v45 = sub_1D775FB6C;
      v46 = v23;
      v26 = _Block_copy(&aBlock);

      goto LABEL_10;
  }

  return 1;
}

uint64_t sub_1D783FFF0()
{
  sub_1D78411D4(0, &qword_1EE095240);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D7840050(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a4;
  v5 = MEMORY[0x1E69E6720];
  sub_1D77405E0(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v35 - v7;
  v9 = sub_1D78B3294();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77405E0(0, &unk_1EE095698, MEMORY[0x1E69681B8], v5);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_1D78B3124();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  sub_1D78B3094();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v21 = &unk_1EE095698;
    v22 = MEMORY[0x1E69681B8];
    v23 = v13;
    return sub_1D7840EF4(v23, v21, v22);
  }

  (*(v15 + 32))(v20, v13, v14);
  v24 = sub_1D7840494(v20, a2);
  v26 = v25;
  sub_1D78B3114();
  sub_1D78B3104();
  MEMORY[0x1DA700360](v24, v26);
  v27 = sub_1D78B30D4();
  MEMORY[0x1DA700380](v27);
  sub_1D78B3074();
  sub_1D78B3084();
  sub_1D78B30A4();
  v28 = v38;
  if ((*(v38 + 48))(v8, 1, v9) == 1)
  {
    v29 = *(v15 + 8);
    v29(v18, v14);
    v29(v20, v14);
    v21 = &unk_1EE096460;
    v22 = MEMORY[0x1E6968FB0];
    v23 = v8;
    return sub_1D7840EF4(v23, v21, v22);
  }

  v31 = v36;
  (*(v28 + 32))(v36, v8, v9);
  v32 = v37[6];
  v33 = v37[7];
  __swift_project_boxed_opaque_existential_1(v37 + 3, v32);
  (*(v33 + 64))(v31, v32, v33);
  (*(v28 + 8))(v31, v9);
  v34 = *(v15 + 8);
  v34(v18, v14);
  return (v34)(v20, v14);
}

uint64_t sub_1D7840494(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D78B30B4();
  if (v4)
  {
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 && (v3 != 0x656E2E656C707061 || v4 != 0xEA00000000007377))
    {
      v6 = v3;
      v7 = v4;
      if ((sub_1D78B6724() & 1) == 0 && (v6 != 0x7070612E7377656ELL || v7 != 0xEE006D6F632E656CLL) && (sub_1D78B6724() & 1) == 0)
      {
        return v6;
      }
    }
  }

  return a2;
}

uint64_t sub_1D7840590(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = MEMORY[0x1E69681B8];
  sub_1D77405E0(0, &unk_1EE095698, MEMORY[0x1E69681B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  sub_1D78B3094();
  v12 = sub_1D78B3124();
  v13 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  result = sub_1D7840EF4(v11, &unk_1EE095698, v8);
  if (v13 != 1)
  {
    return sub_1D7840050(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1D78406CC(uint64_t a1, void *a2)
{
  v33 = a2;
  v30 = a1;
  v34 = type metadata accessor for PurchaseContext;
  v3 = MEMORY[0x1E69E6720];
  sub_1D77405E0(0, qword_1EE096030, type metadata accessor for PurchaseContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1D78B33C4();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D77405E0(0, &unk_1EE096460, MEMORY[0x1E6968FB0], v3);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for PurchaseContext();
  v14 = *(v13 - 1);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 52);
  v19 = type metadata accessor for PostPurchaseDestination();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = sub_1D78B3294();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v12, a1, v20);
  v22 = *(v21 + 56);
  v22(v12, 0, 1, v20);
  v23 = v13[16];
  v22(&v17[v23], 1, 1, v20);
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  *(v17 + 2) = 1;
  sub_1D78B33B4();
  v24 = sub_1D78B33A4();
  v26 = v25;
  (*(v31 + 8))(v9, v32);
  *(v17 + 3) = v24;
  *(v17 + 4) = v26;
  *(v17 + 5) = 0;
  *(v17 + 6) = 0xE000000000000000;
  *(v17 + 28) = 0;
  *(v17 + 8) = MEMORY[0x1E69E7CC0];
  v17[58] = 0;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  v17[120] = 2;
  v17[v13[14]] = 0;
  v17[v13[15]] = 0;
  sub_1D77B44C4(v12, &v17[v23]);
  v27 = v33[6];
  v28 = v33[7];
  __swift_project_boxed_opaque_existential_1(v33 + 3, v27);
  v35 = 13;
  sub_1D7770378(v17, v6);
  (*(v14 + 56))(v6, 0, 1, v13);
  (*(v28 + 72))(v30, &v35, v6, v27, v28);
  sub_1D7840EF4(v6, qword_1EE096030, v34);
  return sub_1D7791954(v17);
}

uint64_t FinanceURLHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  return v0;
}

uint64_t FinanceURLHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7840C28()
{
  result = qword_1EC9CAD40;
  if (!qword_1EC9CAD40)
  {
    sub_1D773F004(255, &qword_1EE08FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD40);
  }

  return result;
}

uint64_t sub_1D7840C90()
{
  v1 = *(sub_1D78B3294() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D78406CC(v0 + v2, v3);
}

uint64_t sub_1D7840D1C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t objectdestroy_14Tm()
{
  v1 = sub_1D78B3294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D7840E44(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_1D78B3294() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v1 + v5);

  return a1(v1 + v3, v7, v8, v9);
}

uint64_t sub_1D7840EF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D77405E0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D7840F64(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  type metadata accessor for FinanceURLHandler.Contract();
  swift_initStackObject();

  v5 = *(sub_1D783E7E4() + 16);

  if (qword_1EC9C8498 != -1)
  {
    swift_once();
  }

  v6 = [v5 stringForKey_];

  v7 = [v6 valuePromise];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D7841584;
  *(v8 + 24) = v4;
  v16 = sub_1D784158C;
  v17 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1D78416E4;
  v15 = &block_descriptor_48_1;
  v9 = _Block_copy(&aBlock);

  [v7 addSuccessBlock_];
  _Block_release(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D7841584;
  *(v10 + 24) = v4;
  v16 = sub_1D78415D8;
  v17 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1D7841220;
  v15 = &block_descriptor_54_0;
  v11 = _Block_copy(&aBlock);

  [v7 addErrorBlock_];
  _Block_release(v11);
}

void sub_1D78411D4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D78B4184();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D7841228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  type metadata accessor for FinanceURLHandler.Contract();
  swift_initStackObject();

  v9 = *(sub_1D783E7E4() + 16);

  v10 = [objc_allocWithZone(MEMORY[0x1E698CB70]) initWithBag_];

  v11 = sub_1D78B3214();
  v12 = [v10 typeForURL_];

  v13 = swift_allocObject();
  *(v13 + 16) = sub_1D7752FB0;
  *(v13 + 24) = v8;
  v21 = sub_1D78414F0;
  v22 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D78416E4;
  v20 = &block_descriptor_33_0;
  v14 = _Block_copy(&aBlock);

  [v12 addSuccessBlock_];
  _Block_release(v14);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v21 = sub_1D77E5850;
  v22 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D7841220;
  v20 = &block_descriptor_39_0;
  v16 = _Block_copy(&aBlock);

  [v12 addErrorBlock_];
  _Block_release(v16);
}

void sub_1D7841488()
{
  if (!qword_1EC9CAD48)
  {
    sub_1D773F004(255, &qword_1EE08FBD0);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAD48);
    }
  }
}

void sub_1D7841518(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D784158C()
{
  v1 = *(v0 + 16);
  v2 = sub_1D78B5C74();
  v1(v2);
}

void sub_1D7841628(void *a1, void *a2)
{
  v5 = *(sub_1D78B3294() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));

  sub_1D783F394(a1, a2, v6, v7, v8);
}

unint64_t sub_1D78416FC()
{
  result = qword_1EC9CAD58;
  if (!qword_1EC9CAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD58);
  }

  return result;
}

id PaywallFactory.createPaywall(for:articleAccess:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *a2;
  v8 = [objc_msgSend(*(v3 + 120) appConfiguration)];
  result = swift_unknownObjectRelease();
  if ((v8 & 1) != 0 || !a1)
  {
    goto LABEL_9;
  }

  v10 = [swift_unknownObjectRetain() sourceChannel];
  if (!v10)
  {
    result = swift_unknownObjectRelease();
LABEL_9:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    return result;
  }

  v11 = v10;
  v12 = *(v3 + 88);
  v13 = *(v3 + 96);
  __swift_project_boxed_opaque_existential_1((v3 + 64), v12);
  LOBYTE(v67) = v7;
  v14 = *(v13 + 16);
  v15 = swift_unknownObjectRetain();
  v14(&v83, v15, &v67, 0, v12, v13);
  swift_unknownObjectRelease();
  v16 = v83;
  if (v83 == 96 || ((v17 = v83 >> 4, v17 > 4) || ((1 << v17) & 0x19) == 0) && v7 != 2 && (v7 & 1) != 0)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  v64 = v83 >> 4;
  v18 = *(v3 + 248);
  v67 = *(v4 + 232);
  *&v68 = v18;
  v87[0] = v83;
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v87, v11, &v83);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v88[10] = *&v84[144];
  v88[11] = *&v84[160];
  v88[6] = *&v84[80];
  v88[7] = *&v84[96];
  v88[8] = *&v84[112];
  v88[9] = *&v84[128];
  v88[2] = *&v84[16];
  v88[3] = *&v84[32];
  v88[4] = *&v84[48];
  v88[5] = *&v84[64];
  v88[0] = v83;
  v88[1] = *v84;
  v100 = *&v84[144];
  v101 = *&v84[160];
  v96 = *&v84[80];
  v97 = *&v84[96];
  v98 = *&v84[112];
  v99 = *&v84[128];
  v92 = *&v84[16];
  v93 = *&v84[32];
  v94 = *&v84[48];
  v95 = *&v84[64];
  v89 = v84[176];
  v102 = v84[176];
  v90 = v83;
  v91 = *v84;
  if (sub_1D784225C(&v90) == 1)
  {
    swift_unknownObjectRelease();
LABEL_14:
    result = swift_unknownObjectRelease();
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    return result;
  }

  v63 = v11;
  LOBYTE(v83) = v16;
  v19 = Paywall.PaywallType.fcPaywallType.getter();
  v57 = a1;
  if ((v19 - 3) >= 2)
  {
    if ((v19 - 1) > 1)
    {
      sub_1D7845344(v88, qword_1EE094A20, &type metadata for PurchaseModel);
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    v20 = qword_1D78C6E28[v64];
    LOBYTE(v65) = v16;
    v21 = Paywall.PaywallType.fcPaywallType.getter();
    if (v64 <= 3 || (v64 - 6) >= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 0;
    }

    v47 = *(v4 + 112);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7845100(v88, &v83);
    result = [v47 configuration];
    if (!result)
    {
      goto LABEL_87;
    }

    v48 = result;
    if ([result respondsToSelector_])
    {
      v49 = [v48 paidBundleConfig];
      swift_unknownObjectRelease();
      v50 = [v49 offeredBundlePurchaseIDsMap];

      if (v50)
      {
        v51 = sub_1D78B5BC4();

        v52 = v51;
LABEL_85:
        *&v87[151] = v99;
        *&v87[167] = v100;
        *&v87[183] = v101;
        v87[199] = v102;
        *&v87[87] = v95;
        *&v87[103] = v96;
        *&v87[119] = v97;
        *&v87[135] = v98;
        *&v87[23] = v91;
        *&v87[39] = v92;
        *&v87[55] = v93;
        *&v87[71] = v94;
        *&v87[7] = v90;
        *&v83 = v57;
        *(&v83 + 1) = v63;
        v84[0] = 0;
        *&v84[145] = *&v87[144];
        *&v84[161] = *&v87[160];
        *&v84[177] = *&v87[176];
        *&v84[193] = *&v87[192];
        *&v84[81] = *&v87[80];
        *&v84[97] = *&v87[96];
        *&v84[113] = *&v87[112];
        *&v84[129] = *&v87[128];
        *&v84[17] = *&v87[16];
        *&v84[33] = *&v87[32];
        *&v84[49] = *&v87[48];
        *&v84[65] = *&v87[64];
        *&v84[1] = *v87;
        *&v85 = v20;
        *(&v85 + 1) = v21;
        LOBYTE(v86) = v22 & 1;
        *(&v86 + 1) = 0;
        *(&v86 + 1) = v52;
        v80 = *&v84[192];
        v81 = v85;
        v82 = v86;
        v76 = *&v84[128];
        v77 = *&v84[144];
        v78 = *&v84[160];
        v79 = *&v84[176];
        v72 = *&v84[64];
        v73 = *&v84[80];
        v74 = *&v84[96];
        v75 = *&v84[112];
        v67 = v83;
        v68 = *v84;
        v69 = *&v84[16];
        v70 = *&v84[32];
        v71 = *&v84[48];
        v53 = Paywall.PaywallType.fcPaywallType.getter();
        sub_1D7842270(&v67, v53, a3);
        sub_1D7845344(v88, qword_1EE094A20, &type metadata for PurchaseModel);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        result = sub_1D7772B44(&v83);
        *(a3 + 40) = 0;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v52 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_85;
  }

  *&v84[144] = v100;
  *&v84[160] = v101;
  v84[176] = v102;
  *&v84[80] = v96;
  *&v84[96] = v97;
  *&v84[112] = v98;
  *&v84[128] = v99;
  *&v84[16] = v92;
  *&v84[32] = v93;
  *&v84[48] = v94;
  *&v84[64] = v95;
  v83 = v90;
  *v84 = v91;
  swift_unknownObjectRetain();
  v23 = sub_1D7844BBC(&v83, v11, v4);
  swift_unknownObjectRelease();
  v24 = v23;
  v25 = v23[2];
  if (!v25)
  {
    swift_unknownObjectRelease();

    v31 = MEMORY[0x1E69E7CC0];
LABEL_77:
    sub_1D7845344(v88, qword_1EE094A20, &type metadata for PurchaseModel);
    result = swift_unknownObjectRelease();
    *a3 = v31;
    *(a3 + 40) = 1;
    return result;
  }

  v26 = 0;
  v61 = *(v4 + 112);
  v27 = 12;
  if (v16 == 112)
  {
    v27 = 6;
  }

  v54 = v27;
  v28 = 1;
  if (v16)
  {
    v28 = 2;
  }

  v56 = v28;
  v29 = 3;
  if (v16)
  {
    v29 = 4;
  }

  v55 = v29;
  v30 = v64;
  v58 = v25 - 1;
  v59 = qword_1D78C6E28[v64];
  v31 = MEMORY[0x1E69E7CC0];
  v60 = v24;
  do
  {
    if (v30 <= 3)
    {
      if (v30 > 1)
      {
        if (v30 != 2)
        {
LABEL_38:
          v32 = v16;
          v33 = v56;
          goto LABEL_46;
        }
      }

      else if (!v30)
      {
        goto LABEL_38;
      }

      v32 = v16;
      v33 = v55;
    }

    else if (v30 <= 5)
    {
      v32 = v16;
      if (v30 == 4)
      {
        v33 = 17;
      }

      else
      {
        v33 = 18;
      }
    }

    else if (v30 == 8)
    {
      v32 = 0;
      v33 = 19;
    }

    else
    {
      v32 = 0;
      if (v30 == 7)
      {
        v33 = v54;
      }

      else
      {
        v33 = 5;
      }
    }

LABEL_46:
    v62 = v33;
    v34 = *(v24 + v26 + 32);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_1D7845100(v88, &v83);
    result = [v61 configuration];
    if (!result)
    {
      goto LABEL_86;
    }

    v35 = result;
    if ([result respondsToSelector_])
    {
      v36 = [v35 paidBundleConfig];
      swift_unknownObjectRelease();
      v37 = [v36 offeredBundlePurchaseIDsMap];

      a1 = v57;
      if (v37)
      {
        v38 = sub_1D78B5BC4();

        v39 = v38;
        a1 = v57;
        goto LABEL_52;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v39 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
LABEL_52:
    *&v87[39] = v92;
    *&v87[55] = v93;
    *&v87[103] = v96;
    *&v87[119] = v97;
    *&v87[71] = v94;
    *&v87[87] = v95;
    v87[199] = v102;
    *&v87[167] = v100;
    *&v87[183] = v101;
    *&v87[135] = v98;
    *&v87[151] = v99;
    *&v87[7] = v90;
    *&v87[23] = v91;
    v84[0] = 0;
    *&v84[1] = *v87;
    *&v84[65] = *&v87[64];
    *&v84[49] = *&v87[48];
    *&v84[33] = *&v87[32];
    *&v84[17] = *&v87[16];
    *&v84[129] = *&v87[128];
    *&v84[113] = *&v87[112];
    *&v84[97] = *&v87[96];
    *&v84[81] = *&v87[80];
    *&v84[177] = *&v87[176];
    *&v84[161] = *&v87[160];
    *&v84[145] = *&v87[144];
    *&v84[193] = *&v87[192];
    *&v85 = v59;
    *(&v85 + 1) = v62;
    LOWORD(v86) = v32 & 1;
    BYTE2(v86) = v34;
    *(&v86 + 1) = v39;
    v80 = *&v84[192];
    v81 = v85;
    v82 = v86;
    v76 = *&v84[128];
    v77 = *&v84[144];
    v78 = *&v84[160];
    v79 = *&v84[176];
    v72 = *&v84[64];
    v73 = *&v84[80];
    *&v83 = a1;
    *(&v83 + 1) = v63;
    v74 = *&v84[96];
    v75 = *&v84[112];
    v67 = v83;
    v68 = *v84;
    v69 = *&v84[16];
    v70 = *&v84[32];
    v71 = *&v84[48];
    if (v64 <= 3)
    {
      if (v64 > 1)
      {
        v40 = v56;
        if (v64 != 2)
        {
          goto LABEL_66;
        }

LABEL_61:
        v40 = v55;
        goto LABEL_66;
      }

      v40 = v56;
      if (v64)
      {
        goto LABEL_61;
      }
    }

    else if (v64 <= 5)
    {
      if (v64 == 4)
      {
        v40 = 17;
      }

      else
      {
        v40 = 18;
      }
    }

    else if (v64 == 8)
    {
      v40 = 19;
    }

    else
    {
      v40 = v54;
      if (v64 != 7)
      {
        v40 = 5;
      }
    }

LABEL_66:
    sub_1D784290C(&v67, v40, &v65);
    sub_1D7741E34(&v65, &v67);
    BYTE8(v69) = v34;
    sub_1D7845188(&v67, &v65);
    v41 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1D777B5E8(0, *(v31 + 2) + 1, 1, v31);
    }

    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    v31 = v41;
    if (v43 >= v42 >> 1)
    {
      v31 = sub_1D777B5E8((v42 > 1), v43 + 1, 1, v41);
    }

    sub_1D7772B44(&v83);
    result = sub_1D78451E4(&v67);
    *(v31 + 2) = v43 + 1;
    v44 = &v31[48 * v43];
    v45 = *&v66[9];
    v46 = *v66;
    *(v44 + 2) = v65;
    *(v44 + 3) = v46;
    *(v44 + 57) = v45;
    if (v58 == v26)
    {
      swift_unknownObjectRelease();

      goto LABEL_77;
    }

    ++v26;
    v24 = v60;
    v30 = v64;
  }

  while (v26 < v60[2]);
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
  return result;
}

uint64_t sub_1D784225C(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7842270@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v74 = a3;
  v7 = type metadata accessor for AlacartePaywallViewModel();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - v11;
  v13 = type metadata accessor for BundlePaywallViewModel(0);
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - v17;
  v19 = a1[13];
  v20 = a1[11];
  v119 = a1[12];
  v120 = v19;
  v21 = a1[13];
  v22 = a1[15];
  v121 = a1[14];
  v122 = v22;
  v23 = a1[9];
  v24 = a1[7];
  v115 = a1[8];
  v116 = v23;
  v25 = a1[9];
  v26 = a1[11];
  v117 = a1[10];
  v118 = v26;
  v27 = a1[5];
  v28 = a1[3];
  v111 = a1[4];
  v112 = v27;
  v29 = a1[5];
  v30 = a1[7];
  v113 = a1[6];
  v114 = v30;
  v31 = a1[1];
  v107 = *a1;
  v108 = v31;
  v32 = a1[3];
  v34 = *a1;
  v33 = a1[1];
  v109 = a1[2];
  v110 = v32;
  v103 = v119;
  v104 = v21;
  v35 = a1[15];
  v105 = v121;
  v106 = v35;
  v99 = v115;
  v100 = v25;
  v101 = v117;
  v102 = v20;
  v95 = v111;
  v96 = v29;
  v97 = v113;
  v98 = v24;
  v91 = v34;
  v92 = v33;
  v93 = v109;
  v94 = v28;
  v36 = PaywallModel.purchaseType.getter();
  if ((v36 - 1) < 5)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 17, v4[20]);
    v103 = v119;
    v104 = v120;
    v105 = v121;
    v106 = v122;
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v37 = a2;
    v38 = v4[28];
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 48))(ObjectType, v38);
    sub_1D77D0C34(v37, &v91, v40 & 1, v18);
    v41 = v4[5];
    v72 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v41);
    sub_1D78453B4();
    v42 = swift_allocObject();
    swift_weakInit();
    sub_1D7845418(v18, v16, type metadata accessor for BundlePaywallViewModel);
    v43 = (*(v73 + 80) + 24) & ~*(v73 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    sub_1D784554C(v16, v44 + v43, type metadata accessor for BundlePaywallViewModel);
    v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
    v46 = v120;
    v45[12] = v119;
    v45[13] = v46;
    v47 = v122;
    v45[14] = v121;
    v45[15] = v47;
    v48 = v116;
    v45[8] = v115;
    v45[9] = v48;
    v49 = v118;
    v45[10] = v117;
    v45[11] = v49;
    v50 = v112;
    v45[4] = v111;
    v45[5] = v50;
    v51 = v114;
    v45[6] = v113;
    v45[7] = v51;
    v52 = v108;
    *v45 = v107;
    v45[1] = v52;
    v53 = v110;
    v45[2] = v109;
    v45[3] = v53;

    sub_1D7772AE8(&v107, &v91);
    sub_1D78B3994();

    if (*(&v92 + 1))
    {
      sub_1D78454EC(v18, type metadata accessor for BundlePaywallViewModel);
      v54 = &v91;
      return sub_1D7741E34(v54, v74);
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v36)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
    v87 = v119;
    v88 = v120;
    v89 = v121;
    v90 = v122;
    v83 = v115;
    v84 = v116;
    v85 = v117;
    v86 = v118;
    v79 = v111;
    v80 = v112;
    v81 = v113;
    v82 = v114;
    v75 = v107;
    v76 = v108;
    v77 = v109;
    v78 = v110;
    v56 = v4[28];
    v57 = swift_getObjectType();
    (*(v56 + 48))(v57, v56);
    sub_1D77919B0(a2, &v75, v12);
    v58 = v4[5];
    v73 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v58);
    sub_1D78453B4();
    v59 = swift_allocObject();
    swift_weakInit();
    sub_1D7845418(v12, v10, type metadata accessor for AlacartePaywallViewModel);
    v60 = (*(v72 + 80) + 24) & ~*(v72 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    sub_1D784554C(v10, v61 + v60, type metadata accessor for AlacartePaywallViewModel);
    v62 = (v61 + ((v8 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
    v63 = v120;
    v62[12] = v119;
    v62[13] = v63;
    v64 = v122;
    v62[14] = v121;
    v62[15] = v64;
    v65 = v116;
    v62[8] = v115;
    v62[9] = v65;
    v66 = v118;
    v62[10] = v117;
    v62[11] = v66;
    v67 = v112;
    v62[4] = v111;
    v62[5] = v67;
    v68 = v114;
    v62[6] = v113;
    v62[7] = v68;
    v69 = v108;
    *v62 = v107;
    v62[1] = v69;
    v70 = v110;
    v62[2] = v109;
    v62[3] = v70;
    sub_1D7772AE8(&v107, &v75);

    sub_1D78B3994();

    if (*(&v76 + 1))
    {
      sub_1D78454EC(v12, type metadata accessor for AlacartePaywallViewModel);
      v54 = &v75;
      return sub_1D7741E34(v54, v74);
    }

    goto LABEL_9;
  }

LABEL_10:
  *&v75 = v36;
  result = sub_1D78B6764();
  __break(1u);
  return result;
}

uint64_t sub_1D784290C@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v74 = a3;
  v7 = type metadata accessor for AlacartePaywallViewModel();
  v72 = *(v7 - 8);
  v8 = *(v72 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v71 - v11;
  v13 = type metadata accessor for BundlePaywallViewModel(0);
  v73 = *(v13 - 8);
  v14 = *(v73 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v71 - v17;
  v19 = a1[13];
  v20 = a1[11];
  v119 = a1[12];
  v120 = v19;
  v21 = a1[13];
  v22 = a1[15];
  v121 = a1[14];
  v122 = v22;
  v23 = a1[9];
  v24 = a1[7];
  v115 = a1[8];
  v116 = v23;
  v25 = a1[9];
  v26 = a1[11];
  v117 = a1[10];
  v118 = v26;
  v27 = a1[5];
  v28 = a1[3];
  v111 = a1[4];
  v112 = v27;
  v29 = a1[5];
  v30 = a1[7];
  v113 = a1[6];
  v114 = v30;
  v31 = a1[1];
  v107 = *a1;
  v108 = v31;
  v32 = a1[3];
  v34 = *a1;
  v33 = a1[1];
  v109 = a1[2];
  v110 = v32;
  v103 = v119;
  v104 = v21;
  v35 = a1[15];
  v105 = v121;
  v106 = v35;
  v99 = v115;
  v100 = v25;
  v101 = v117;
  v102 = v20;
  v95 = v111;
  v96 = v29;
  v97 = v113;
  v98 = v24;
  v91 = v34;
  v92 = v33;
  v93 = v109;
  v94 = v28;
  v36 = PaywallModel.purchaseType.getter();
  if ((v36 - 1) < 5)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 17, v4[20]);
    v103 = v119;
    v104 = v120;
    v105 = v121;
    v106 = v122;
    v99 = v115;
    v100 = v116;
    v101 = v117;
    v102 = v118;
    v95 = v111;
    v96 = v112;
    v97 = v113;
    v98 = v114;
    v91 = v107;
    v92 = v108;
    v93 = v109;
    v94 = v110;
    v37 = a2;
    v38 = v4[28];
    ObjectType = swift_getObjectType();
    v40 = (*(v38 + 48))(ObjectType, v38);
    sub_1D77D0C34(v37, &v91, v40 & 1, v18);
    v41 = v4[5];
    v72 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v41);
    sub_1D78453B4();
    v42 = swift_allocObject();
    swift_weakInit();
    sub_1D7845418(v18, v16, type metadata accessor for BundlePaywallViewModel);
    v43 = (*(v73 + 80) + 24) & ~*(v73 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    sub_1D784554C(v16, v44 + v43, type metadata accessor for BundlePaywallViewModel);
    v45 = (v44 + ((v14 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
    v46 = v120;
    v45[12] = v119;
    v45[13] = v46;
    v47 = v122;
    v45[14] = v121;
    v45[15] = v47;
    v48 = v116;
    v45[8] = v115;
    v45[9] = v48;
    v49 = v118;
    v45[10] = v117;
    v45[11] = v49;
    v50 = v112;
    v45[4] = v111;
    v45[5] = v50;
    v51 = v114;
    v45[6] = v113;
    v45[7] = v51;
    v52 = v108;
    *v45 = v107;
    v45[1] = v52;
    v53 = v110;
    v45[2] = v109;
    v45[3] = v53;

    sub_1D7772AE8(&v107, &v91);
    sub_1D78B3994();

    if (*(&v92 + 1))
    {
      sub_1D78454EC(v18, type metadata accessor for BundlePaywallViewModel);
      v54 = &v91;
      return sub_1D7741E34(v54, v74);
    }

    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v36)
  {
    __swift_project_boxed_opaque_existential_1(v4 + 22, v4[25]);
    v87 = v119;
    v88 = v120;
    v89 = v121;
    v90 = v122;
    v83 = v115;
    v84 = v116;
    v85 = v117;
    v86 = v118;
    v79 = v111;
    v80 = v112;
    v81 = v113;
    v82 = v114;
    v75 = v107;
    v76 = v108;
    v77 = v109;
    v78 = v110;
    v56 = v4[28];
    v57 = swift_getObjectType();
    (*(v56 + 48))(v57, v56);
    sub_1D77919B0(a2, &v75, v12);
    v58 = v4[5];
    v73 = v4[6];
    __swift_project_boxed_opaque_existential_1(v4 + 2, v58);
    sub_1D78453B4();
    v59 = swift_allocObject();
    swift_weakInit();
    sub_1D7845418(v12, v10, type metadata accessor for AlacartePaywallViewModel);
    v60 = (*(v72 + 80) + 24) & ~*(v72 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    sub_1D784554C(v10, v61 + v60, type metadata accessor for AlacartePaywallViewModel);
    v62 = (v61 + ((v8 + v60 + 7) & 0xFFFFFFFFFFFFFFF8));
    v63 = v120;
    v62[12] = v119;
    v62[13] = v63;
    v64 = v122;
    v62[14] = v121;
    v62[15] = v64;
    v65 = v116;
    v62[8] = v115;
    v62[9] = v65;
    v66 = v118;
    v62[10] = v117;
    v62[11] = v66;
    v67 = v112;
    v62[4] = v111;
    v62[5] = v67;
    v68 = v114;
    v62[6] = v113;
    v62[7] = v68;
    v69 = v108;
    *v62 = v107;
    v62[1] = v69;
    v70 = v110;
    v62[2] = v109;
    v62[3] = v70;
    sub_1D7772AE8(&v107, &v75);

    sub_1D78B3994();

    if (*(&v76 + 1))
    {
      sub_1D78454EC(v12, type metadata accessor for AlacartePaywallViewModel);
      v54 = &v75;
      return sub_1D7741E34(v54, v74);
    }

    goto LABEL_9;
  }

LABEL_10:
  *&v75 = v36;
  result = sub_1D78B6764();
  __break(1u);
  return result;
}

uint64_t sub_1D7842FA8(void *a1)
{
  result = [*(v1 + 112) configuration];
  if (result)
  {
    v4 = result;
    if (([result respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v5 = [v4 paidBundleConfig];
    swift_unknownObjectRelease();
    if (![v5 areMagazinesEnabled])
    {
      goto LABEL_35;
    }

    if (qword_1EE095550 != -1)
    {
      swift_once();
    }

    sub_1D78452F0();
    sub_1D78B3574();
    if (v52)
    {
      goto LABEL_35;
    }

    v6 = [*(v1 + 104) cachedSubscription];
    if (objc_getAssociatedObject(v6, v6 + 1))
    {
      sub_1D78B6304();
      swift_unknownObjectRelease();
    }

    else
    {
      v40 = 0u;
      v39 = 0u;
    }

    v52 = v39;
    v53 = v40;
    v7 = MEMORY[0x1E69E7CA0];
    if (*(&v40 + 1))
    {
      sub_1D773F004(0, &qword_1EE08FBD0);
      if (swift_dynamicCast())
      {
        v8 = v26[0];
        v9 = [v26[0] integerValue];
        if (v9 == -1)
        {

          goto LABEL_35;
        }

        v10 = v9;
LABEL_17:
        if (objc_getAssociatedObject(v6, ~v10))
        {
          sub_1D78B6304();
          swift_unknownObjectRelease();
        }

        else
        {
          v40 = 0u;
          v39 = 0u;
        }

        v52 = v39;
        v53 = v40;
        if (*(&v40 + 1))
        {
          sub_1D773F004(0, &qword_1EE08FBD0);
          if (swift_dynamicCast())
          {
            v11 = v26[0];
            v12 = [v11 integerValue];

            if ((v12 ^ v10))
            {
              goto LABEL_35;
            }

LABEL_26:
            v13 = *(v1 + 56);
            v14 = [a1 sourceChannel];
            if ([swift_unknownObjectRetain() tagType] == 3)
            {
              v15 = [v14 asSection];
              if (!v15 || (v16 = [v15 parentID], swift_unknownObjectRelease(), !v16))
              {
                swift_unknownObjectRelease_n();
                goto LABEL_32;
              }
            }

            else
            {
              v16 = [v14 identifier];
            }

            v17 = sub_1D78B5C74();
            v19 = v18;

            v20 = [v13 purchasedTagIDs];
            v21 = sub_1D78B5F64();

            LOBYTE(v20) = sub_1D7832E64(v17, v19, v21);

            swift_unknownObjectRelease_n();
            if ((v20 & 1) == 0)
            {
LABEL_32:
              v22 = *(v1 + 248);
              v24 = *(v1 + 232);
              v25 = v22;
              v23 = 0;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              PaywallPurchaseModelFactory.purchaseModel(for:tag:)(&v23, [a1 sourceChannel], v26);

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v49 = v36;
              v50 = v37;
              v45 = v32;
              v46 = v33;
              v47 = v34;
              v48 = v35;
              v41 = v28;
              v42 = v29;
              v43 = v30;
              v44 = v31;
              v39 = *v26;
              v40 = v27;
              v62 = v36;
              v63 = v37;
              v58 = v32;
              v59 = v33;
              v60 = v34;
              v61 = v35;
              v54 = v28;
              v55 = v29;
              v56 = v30;
              v57 = v31;
              v51 = v38;
              v64 = v38;
              v52 = *v26;
              v53 = v27;
              if (sub_1D784225C(&v52) != 1)
              {
                sub_1D7845344(&v39, qword_1EE094A20, &type metadata for PurchaseModel);
                return 1;
              }

              return 0;
            }

LABEL_35:

            return 0;
          }
        }

        else
        {
          sub_1D7845344(&v52, &qword_1EE08F9C0, v7 + 8);
        }

        if (v10)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }
    }

    else
    {
      sub_1D7845344(&v52, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
    }

    v8 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7843524@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = sub_1D7842FA8(a1);
  if ((result & 1) == 0 || (v7 = *(v2 + 248), v17 = *(v3 + 232), *v18 = v7, LOBYTE(v15[0]) = 0, swift_unknownObjectRetain(), swift_unknownObjectRetain(), PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v15, [a1 sourceChannel], v22), swift_unknownObjectRelease(), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v34 = v22[10], v35 = v22[11], v36 = v23, v30 = v22[6], v31 = v22[7], v33 = v22[9], v32 = v22[8], v26 = v22[2], v27 = v22[3], v29 = v22[5], v28 = v22[4], v24 = v22[0], v25 = v22[1], result = sub_1D784225C(&v24), result == 1))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 2;
    return result;
  }

  v8 = *(v3 + 112);
  v9 = a1;
  sub_1D7845100(v22, &v17);
  result = [v8 configuration];
  if (result)
  {
    v10 = result;
    if ([result respondsToSelector_])
    {
      v11 = [v10 paidBundleConfig];
      swift_unknownObjectRelease();
      v12 = [v11 offeredBundlePurchaseIDsMap];

      if (v12)
      {
        v13 = sub_1D78B5BC4();

        v14 = v13;
LABEL_10:
        *&v21[151] = v33;
        *&v21[167] = v34;
        *&v21[183] = v35;
        *&v21[87] = v29;
        *&v21[103] = v30;
        *&v21[119] = v31;
        *&v21[135] = v32;
        *&v21[23] = v25;
        *&v21[39] = v26;
        *&v21[55] = v27;
        *&v21[71] = v28;
        *&v21[7] = v24;
        *&v18[145] = *&v21[144];
        *&v18[161] = *&v21[160];
        *&v18[177] = *&v21[176];
        *&v18[81] = *&v21[80];
        *&v18[97] = *&v21[96];
        *&v18[113] = *&v21[112];
        *&v18[129] = *&v21[128];
        *&v18[17] = *&v21[16];
        *&v18[33] = *&v21[32];
        *&v18[49] = *&v21[48];
        v21[199] = v36;
        v17 = v9;
        v18[0] = 1;
        *&v18[193] = *&v21[192];
        *&v18[65] = *&v21[64];
        *&v18[1] = *v21;
        v19 = xmmword_1D78C6D30;
        LOWORD(v20) = 0;
        BYTE2(v20) = 0;
        *(&v20 + 1) = v14;
        v15[12] = *&v18[176];
        v15[13] = *&v18[192];
        v15[14] = xmmword_1D78C6D30;
        v15[15] = v20;
        v15[8] = *&v18[112];
        v15[9] = *&v18[128];
        v15[10] = *&v18[144];
        v15[11] = *&v18[160];
        v15[4] = *&v18[48];
        v15[5] = *&v18[64];
        v15[6] = *&v18[80];
        v15[7] = *&v18[96];
        v15[0] = v9;
        v15[1] = *v18;
        v15[2] = *&v18[16];
        v15[3] = *&v18[32];
        sub_1D7842270(v15, 0xBuLL, v16);
        sub_1D7845344(v22, qword_1EE094A20, &type metadata for PurchaseModel);
        sub_1D7772B44(&v17);
        result = sub_1D7741E34(v16, a2);
        *(a2 + 40) = 0;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v14 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id PaywallFactory.createPaywall(for:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [objc_msgSend(*(v2 + 120) appConfiguration)];
  result = swift_unknownObjectRelease();
  if ((v6 & 1) != 0 || (v8 = *(v2 + 88), v9 = *(v2 + 96), __swift_project_boxed_opaque_existential_1((v2 + 64), v8), (*(v9 + 32))(&v22, a1, v8, v9), v10 = v22, v11 = *(v2 + 248), v22 = *(v3 + 232), *v23 = v11, LOBYTE(v21[0]) = v10, swift_unknownObjectRetain(), swift_unknownObjectRetain(), PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v21, 0, v28), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v40 = v28[10], v41 = v28[11], v42 = v29, v37 = v28[7], v39 = v28[9], v38 = v28[8], v32 = v28[2], v33 = v28[3], v35 = v28[5], v36 = v28[6], v34 = v28[4], v30 = v28[0], v31 = v28[1], result = sub_1D784225C(&v30), result == 1))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 2;
    return result;
  }

  v12 = 2;
  v13 = 1 << (v10 >> 4);
  if ((v13 & 0x1A6) == 0)
  {
    if ((v13 & 0x19) == 0)
    {
      v12 = 2 * (v10 != 96);
      v26 = v10;
      v14 = Paywall.PaywallType.fcPaywallType.getter();
LABEL_12:
      LOBYTE(v10) = 0;
      goto LABEL_13;
    }

    v12 = 1;
  }

  v26 = v10;
  v14 = Paywall.PaywallType.fcPaywallType.getter();
  if (v10 >> 4 > 3 && (v10 >> 4) - 6 < 3)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = *(v3 + 112);
  swift_unknownObjectRetain();
  sub_1D7845100(v28, &v22);
  result = [v15 configuration];
  if (result)
  {
    v16 = result;
    if ([result respondsToSelector_])
    {
      v17 = [v16 paidBundleConfig];
      swift_unknownObjectRelease();
      v18 = [v17 offeredBundlePurchaseIDsMap];

      if (v18)
      {
        v19 = sub_1D78B5BC4();

        v20 = v19;
LABEL_19:
        *&v27[151] = v39;
        *&v27[167] = v40;
        *&v27[183] = v41;
        *&v27[87] = v35;
        *&v27[103] = v36;
        *&v27[119] = v37;
        *&v27[135] = v38;
        *&v27[23] = v31;
        *&v27[39] = v32;
        *&v27[55] = v33;
        *&v27[71] = v34;
        *&v27[7] = v30;
        *&v23[145] = *&v27[144];
        *&v23[161] = *&v27[160];
        *&v23[177] = *&v27[176];
        *&v23[81] = *&v27[80];
        *&v23[97] = *&v27[96];
        *&v23[113] = *&v27[112];
        *&v23[129] = *&v27[128];
        *&v23[17] = *&v27[16];
        *&v23[33] = *&v27[32];
        *&v23[49] = *&v27[48];
        v27[199] = v42;
        v22 = a1;
        v23[0] = 5;
        *&v23[193] = *&v27[192];
        *&v23[65] = *&v27[64];
        *&v23[1] = *v27;
        *&v24 = v12;
        *(&v24 + 1) = v14;
        LOBYTE(v25) = v10 & 1;
        *(&v25 + 1) = 0;
        *(&v25 + 1) = v20;
        v21[12] = *&v23[176];
        v21[13] = *&v23[192];
        v21[14] = v24;
        v21[15] = v25;
        v21[8] = *&v23[112];
        v21[9] = *&v23[128];
        v21[10] = *&v23[144];
        v21[11] = *&v23[160];
        v21[4] = *&v23[48];
        v21[5] = *&v23[64];
        v21[6] = *&v23[80];
        v21[7] = *&v23[96];
        v21[0] = a1;
        v21[1] = *v23;
        v21[2] = *&v23[16];
        v21[3] = *&v23[32];
        sub_1D7842270(v21, 0x10uLL, a2);
        sub_1D7845344(v28, qword_1EE094A20, &type metadata for PurchaseModel);
        result = sub_1D7772B44(&v22);
        *(a2 + 40) = 0;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v20 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

id PaywallFactory.createPaywall(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [objc_msgSend(*(v2 + 120) appConfiguration)];
  result = swift_unknownObjectRelease();
  if ((v6 & 1) != 0 || (v8 = *(v2 + 88), v9 = *(v2 + 96), __swift_project_boxed_opaque_existential_1((v2 + 64), v8), (*(v9 + 40))(&v24, a1, v8, v9), v10 = v24, v11 = *(v2 + 248), v24 = *(v3 + 232), *v25 = v11, LOBYTE(v23[0]) = v10, swift_unknownObjectRetain(), swift_unknownObjectRetain(), PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v23, 0, &v32), swift_unknownObjectRelease(), swift_unknownObjectRelease(), v55 = v42, v56 = v43, v57 = v44, v51 = v38, v52 = v39, v54 = v41, v53 = v40, v47 = v34, v48 = v35, v50 = v37, v49 = v36, v46 = v33, v45 = v32, result = sub_1D784225C(&v45), result == 1))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = 2;
    return result;
  }

  v12 = a1;
  v22 = [v12 sourceChannel];
  v13 = 2;
  v14 = 1 << (v10 >> 4);
  if ((v14 & 0x1A6) == 0)
  {
    if ((v14 & 0x19) == 0)
    {
      v13 = 2 * (v10 != 96);
      v30 = v10;
      v15 = Paywall.PaywallType.fcPaywallType.getter();
LABEL_12:
      LOBYTE(v10) = 0;
      goto LABEL_13;
    }

    v13 = 1;
  }

  v30 = v10;
  v15 = Paywall.PaywallType.fcPaywallType.getter();
  if (v10 >> 4 > 3 && (v10 >> 4) - 6 < 3)
  {
    goto LABEL_12;
  }

LABEL_13:
  v16 = *(v3 + 112);
  v28[10] = v42;
  v28[11] = v43;
  v29 = v44;
  v28[6] = v38;
  v28[7] = v39;
  v28[8] = v40;
  v28[9] = v41;
  v28[2] = v34;
  v28[3] = v35;
  v28[4] = v36;
  v28[5] = v37;
  v28[0] = v32;
  v28[1] = v33;
  sub_1D77C20B0(v28, &v24);
  result = [v16 configuration];
  if (result)
  {
    v17 = result;
    if ([result respondsToSelector_])
    {
      v18 = [v17 paidBundleConfig];
      swift_unknownObjectRelease();
      v19 = [v18 offeredBundlePurchaseIDsMap];

      if (v19)
      {
        v20 = sub_1D78B5BC4();

        v21 = v20;
LABEL_19:
        *&v31[151] = v54;
        *&v31[167] = v55;
        *&v31[183] = v56;
        *&v31[87] = v50;
        *&v31[103] = v51;
        *&v31[119] = v52;
        *&v31[135] = v53;
        *&v31[23] = v46;
        *&v31[39] = v47;
        *&v31[55] = v48;
        *&v31[71] = v49;
        *&v31[7] = v45;
        *&v25[145] = *&v31[144];
        *&v25[161] = *&v31[160];
        *&v25[177] = *&v31[176];
        *&v25[81] = *&v31[80];
        *&v25[97] = *&v31[96];
        *&v25[113] = *&v31[112];
        *&v25[129] = *&v31[128];
        *&v25[17] = *&v31[16];
        *&v25[33] = *&v31[32];
        *&v25[49] = *&v31[48];
        v31[199] = v57;
        *&v24 = v12;
        *(&v24 + 1) = v22;
        v25[0] = 8;
        *&v25[193] = *&v31[192];
        *&v25[65] = *&v31[64];
        *&v25[1] = *v31;
        *&v26 = v13;
        *(&v26 + 1) = v15;
        LOBYTE(v27) = v10 & 1;
        *(&v27 + 1) = 0;
        *(&v27 + 1) = v21;
        v23[12] = *&v25[176];
        v23[13] = *&v25[192];
        v23[14] = v26;
        v23[15] = v27;
        v23[8] = *&v25[112];
        v23[9] = *&v25[128];
        v23[10] = *&v25[144];
        v23[11] = *&v25[160];
        v23[4] = *&v25[48];
        v23[5] = *&v25[64];
        v23[6] = *&v25[80];
        v23[7] = *&v25[96];
        v23[0] = v24;
        v23[1] = *v25;
        v23[2] = *&v25[16];
        v23[3] = *&v25[32];
        sub_1D7842270(v23, 0x11uLL, a2);
        sub_1D7845344(&v32, qword_1EE094A20, &type metadata for PurchaseModel);
        result = sub_1D7772B44(&v24);
        *(a2 + 40) = 0;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v21 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void PaywallFactory.createFeedPaywall(for:contentType:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2;
  sub_1D7844714(*a1, v6, &v52);
  v8 = v53[0];
  if (LOBYTE(v53[0]) == 255)
  {
    goto LABEL_18;
  }

  v33 = v52;
  if (v6)
  {
    if (v6 == 1)
    {
      v31 = v7;
      v9 = 128;
      goto LABEL_15;
    }

    if (v6 == 2)
    {
      if (v5 == 2)
      {
        v31 = v7;
        v9 = 112;
        goto LABEL_15;
      }

      if (v5 == 3)
      {
        v31 = v7;
        v9 = 113;
LABEL_15:
        sub_1D77C1F0C(v52, *(&v52 + 1), v53[0]);
        goto LABEL_16;
      }
    }

    sub_1D77C1F0C(v52, *(&v52 + 1), v53[0]);
LABEL_11:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    sub_1D7845238(v33, *(&v33 + 1), v8);

    sub_1D7845238(v33, *(&v33 + 1), v8);
    return;
  }

  v31 = v7;
  v10 = *(v4 + 88);
  v11 = *(v4 + 96);
  __swift_project_boxed_opaque_existential_1((v4 + 64), v10);
  v12 = *(v11 + 8);
  sub_1D77C1F0C(v33, *(&v33 + 1), v8);
  v12(&v52, v5, v10, v11);
  v9 = v52;
  if (v52 == 96)
  {
    goto LABEL_11;
  }

LABEL_16:
  v13 = *(v4 + 248);
  v52 = *(v4 + 232);
  *&v53[0] = v13;
  v57[0] = v9;
  v34 = v33;
  LOBYTE(v35) = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = sub_1D77C1D1C();
  sub_1D7845238(v33, *(&v33 + 1), v8);
  PaywallPurchaseModelFactory.purchaseModel(for:tag:)(v57, v14, v58);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v70 = v58[10];
  v71 = v58[11];
  v72 = v59;
  v66 = v58[6];
  v67 = v58[7];
  v68 = v58[8];
  v69 = v58[9];
  v62 = v58[2];
  v63 = v58[3];
  v64 = v58[4];
  v65 = v58[5];
  v60 = v58[0];
  v61 = v58[1];
  if (sub_1D784225C(&v60) == 1)
  {
    sub_1D7845238(v33, *(&v33 + 1), v8);
LABEL_18:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 40) = 2;
    return;
  }

  v15 = v9 >> 4;
  v16 = qword_1D78C6E28[v9 >> 4];
  v30 = v9;
  v56 = v9;
  v17 = Paywall.PaywallType.fcPaywallType.getter();
  if (v15 <= 3 || (v15 - 6) >= 3)
  {
    v29 = v30;
  }

  else
  {
    v29 = 0;
  }

  v18 = *(v4 + 112);
  sub_1D784524C(v33, *(&v33 + 1), v8);
  sub_1D7845100(v58, &v52);
  v19 = [v18 configuration];
  if (v19)
  {
    v20 = v19;
    if ([v19 respondsToSelector_])
    {
      v21 = [v20 paidBundleConfig];
      swift_unknownObjectRelease();
      v22 = [v21 offeredBundlePurchaseIDsMap];

      if (v22)
      {
        v23 = sub_1D78B5BC4();

        v24 = v23;
LABEL_29:
        *&v57[151] = v69;
        *&v57[167] = v70;
        *&v57[183] = v71;
        v57[199] = v72;
        *&v57[87] = v65;
        *&v57[103] = v66;
        *&v57[119] = v67;
        *&v57[135] = v68;
        *&v57[23] = v61;
        *&v57[39] = v62;
        *&v57[55] = v63;
        *&v57[71] = v64;
        *&v57[7] = v60;
        *(&v53[9] + 1) = *&v57[144];
        *(&v53[10] + 1) = *&v57[160];
        *(&v53[11] + 1) = *&v57[176];
        *(&v53[5] + 1) = *&v57[80];
        *(&v53[6] + 1) = *&v57[96];
        *(&v53[7] + 1) = *&v57[112];
        *(&v53[8] + 1) = *&v57[128];
        *(&v53[1] + 1) = *&v57[16];
        *(&v53[2] + 1) = *&v57[32];
        *(&v53[3] + 1) = *&v57[48];
        v52 = v33;
        LOBYTE(v53[0]) = v8;
        *(&v53[12] + 1) = *&v57[192];
        *(&v53[4] + 1) = *&v57[64];
        *(v53 + 1) = *v57;
        *&v54 = v16;
        *(&v54 + 1) = v17;
        LOBYTE(v55) = v29 & 1;
        *(&v55 + 1) = v31;
        *(&v55 + 1) = v24;
        v46 = v53[11];
        v47 = v53[12];
        v48 = v54;
        v49 = v55;
        v42 = v53[7];
        v43 = v53[8];
        v44 = v53[9];
        v45 = v53[10];
        v38 = v53[3];
        v39 = v53[4];
        v40 = v53[5];
        v41 = v53[6];
        v34 = v33;
        v35 = v53[0];
        v36 = v53[1];
        v37 = v53[2];
        v25 = Paywall.PaywallType.fcPaywallType.getter();
        sub_1D784290C(&v34, v25, &v50);
        v51[24] = 1;
        sub_1D7845480(0, &qword_1EE08FA70, &type metadata for Paywall.SoftPaywallModule, MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        v27 = v50;
        v28 = *v51;
        v26[1] = xmmword_1D78BCAB0;
        v26[2] = v27;
        v26[3] = v28;
        *(v26 + 57) = *&v51[9];
        sub_1D7845238(v33, *(&v33 + 1), v8);
        sub_1D7845344(v58, qword_1EE094A20, &type metadata for PurchaseModel);
        sub_1D7772B44(&v52);
        *a3 = v26;
        *(a3 + 40) = 1;
        return;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v24 = sub_1D77FEFC4(MEMORY[0x1E69E7CC0]);
    goto LABEL_29;
  }

  __break(1u);
}

void sub_1D7844714(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (a1 == 2)
        {
          sub_1D78B5C74();
          v10 = objc_allocWithZone(MEMORY[0x1E69B5628]);
          v11 = sub_1D78B5C44();

          v12 = sub_1D78B5C44();
          v13 = [v10 initWithTagType:0 identifier:v11 name:v12];

          if (v13)
          {
            *a3 = v13;
            *(a3 + 8) = 0;
            *(a3 + 16) = 4;
            return;
          }

          goto LABEL_17;
        }

        if (a1 == 3)
        {
          sub_1D78B5C74();
          v4 = objc_allocWithZone(MEMORY[0x1E69B5628]);
          v5 = sub_1D78B5C44();

          v6 = sub_1D78B5C44();
          v7 = [v4 initWithTagType:0 identifier:v5 name:v6];

          if (v7)
          {
            *a3 = v7;
            *(a3 + 8) = 0;
            *(a3 + 16) = 2;
            return;
          }

          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = -1;
      return;
    }

    *a3 = a1;
    *(a3 + 8) = 0;
    v8 = 7;
  }

  else
  {
    *a3 = a1;
    *(a3 + 8) = 0;
    v8 = 3;
  }

  *(a3 + 16) = v8;

  swift_unknownObjectRetain();
}

uint64_t PaywallFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PaywallFactory.__deallocating_deinit()
{
  PaywallFactory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7844A44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a5(0);
    sub_1D78B38D4();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D78B38D4();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D78B37D4();

    sub_1D78B38C4();
  }

  return result;
}

id sub_1D7844BBC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 176);
  v46[10] = *(a1 + 160);
  v46[11] = v5;
  v47 = *(a1 + 192);
  v6 = *(a1 + 112);
  v46[6] = *(a1 + 96);
  v46[7] = v6;
  v7 = *(a1 + 144);
  v46[8] = *(a1 + 128);
  v46[9] = v7;
  v8 = *(a1 + 48);
  v46[2] = *(a1 + 32);
  v46[3] = v8;
  v9 = *(a1 + 80);
  v46[4] = *(a1 + 64);
  v46[5] = v9;
  v10 = *(a1 + 16);
  v46[0] = *a1;
  v46[1] = v10;
  if (sub_1D77C19C8(v46) != 1)
  {
    result = [*(a3 + 112) configuration];
    if (result)
    {
      v25 = result;
      if (([result respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        return &unk_1F5265600;
      }

      v26 = [v25 paidBundleConfig];
      swift_unknownObjectRelease();
      v27 = [v26 articleSoftPaywallPosition];

      v28 = v27 - 1;
      if ((v27 - 1) >= 4)
      {
        return &unk_1F52656C8;
      }

      v29 = &off_1E84E2038;
      return v29[v28];
    }

    goto LABEL_49;
  }

  nullsub_1(v46);
  v11 = *(a3 + 112);
  result = [v11 configuration];
  if (!result)
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v13 = result;
  if (([result respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_17;
  }

  v14 = [v13 channelPaywallConfigsByChannelID];
  swift_unknownObjectRelease();
  sub_1D773F004(0, &qword_1EE08E578);
  v15 = sub_1D78B5BC4();

  v16 = [a2 identifier];
  v17 = sub_1D78B5C74();
  v19 = v18;

  if (!*(v15 + 16))
  {

    goto LABEL_16;
  }

  v20 = sub_1D777BBB4(v17, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_16:

LABEL_17:
    result = [v11 configuration];
    if (result)
    {
      v30 = result;
      if (([result respondsToSelector_] & 1) == 0)
      {
        swift_unknownObjectRelease();
        return &unk_1F52653F8;
      }

      v31 = [v30 paidBundleConfig];
      swift_unknownObjectRelease();
      v32 = [v31 aLaCarteArticleSoftPaywallPosition];

      v28 = v32 - 1;
      if ((v32 - 1) >= 3)
      {
        return &unk_1F5265498;
      }

      v29 = &off_1E84E1FF0;
      return v29[v28];
    }

LABEL_50:
    __break(1u);
    return result;
  }

  v23 = *(*(v15 + 56) + 8 * v20);

  v24 = [*(a3 + 104) cachedSubscription];
  if (objc_getAssociatedObject(v24, v24 + 1))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  v33 = MEMORY[0x1E69E7CA0];
  if (!*(&v43 + 1))
  {
    sub_1D7845344(&v44, &qword_1EE08F9C0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_31;
  }

  sub_1D773F004(0, &qword_1EE08FBD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v34 = 0;
    v36 = 0;
    goto LABEL_32;
  }

  v34 = v41;
  v35 = [v41 integerValue];
  if (v35 == -1)
  {

    goto LABEL_45;
  }

  v36 = v35;
LABEL_32:
  if (objc_getAssociatedObject(v24, ~v36))
  {
    sub_1D78B6304();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44 = v42;
  v45 = v43;
  if (*(&v43 + 1))
  {
    sub_1D773F004(0, &qword_1EE08FBD0);
    if (swift_dynamicCast())
    {
      v37 = v41;
      v38 = [v37 integerValue];

      if ((v38 ^ v36))
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }
  }

  else
  {
    sub_1D7845344(&v44, &qword_1EE08F9C0, v33 + 8);
  }

  if ((v36 & 1) == 0)
  {
LABEL_41:
    v39 = [v23 articleSoftPaywallPosition];

    v28 = v39 - 1;
    if ((v39 - 1) >= 3)
    {
      return &unk_1F52655D8;
    }

    v29 = &off_1E84E2020;
    return v29[v28];
  }

LABEL_45:
  v40 = [v23 articleSoftPaywallPositionForPaidBundleSubscribers];

  v28 = v40 - 1;
  if ((v40 - 1) < 3)
  {
    v29 = &off_1E84E2008;
    return v29[v28];
  }

  return &unk_1F5265538;
}

uint64_t sub_1D7845100(uint64_t a1, uint64_t a2)
{
  sub_1D7845480(0, qword_1EE094A20, &type metadata for PurchaseModel, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7845238(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1D77CA6AC(a1, a2, a3);
  }
}

id sub_1D784524C(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D77C1F0C(result, a2, a3);
  }

  return result;
}

uint64_t dispatch thunk of PaywallFactoryType.createPaywall(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 16))();
}

{
  return (*(a3 + 32))();
}

{
  return (*(a3 + 40))();
}

unint64_t sub_1D78452F0()
{
  result = qword_1EC9CAD60;
  if (!qword_1EC9CAD60)
  {
    type metadata accessor for PaywallFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD60);
  }

  return result;
}

uint64_t sub_1D7845344(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D7845480(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1D78453B4()
{
  result = qword_1EE095DC8[0];
  if (!qword_1EE095DC8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE095DC8);
  }

  return result;
}

uint64_t sub_1D7845418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7845480(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D78454EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D784554C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D78455D0(void *a1, uint64_t (*a2)(void), void (*a3)(void))
{
  v6 = *(a2(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  return sub_1D7844A44(a1, *(v3 + 16), v3 + v7, v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8), a3);
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for AlacartePaywallViewModel();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v16 = *(*(v1 - 8) + 64);

  v4 = *(v1 + 28);
  v5 = sub_1D78B3294();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);

  v7 = v0 + v3 + *(v1 + 40);
  type metadata accessor for SubscribeButtonDestination(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    sub_1D7740094(0);
    v9 = *(v10 + 80);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v9 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
  }

  v11 = v7 + v9;
  v12 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12) && swift_getEnumCaseMultiPayload() == 1)
  {
    v6(v11, v5);
  }

LABEL_8:
  v13 = (v16 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v14 = v0 + v13;
  sub_1D77CA6AC(*(v0 + v13), *(v0 + v13 + 8), *(v0 + v13 + 16));
  sub_1D77CA77C(*(v14 + 24), *(v14 + 32), *(v14 + 40), *(v14 + 48), *(v14 + 56), *(v14 + 64), *(v14 + 72), *(v14 + 80), *(v14 + 88), *(v14 + 96), *(v14 + 104), *(v14 + 112), *(v14 + 120), *(v14 + 128), *(v14 + 136), *(v14 + 144), *(v14 + 152), *(v14 + 160), *(v14 + 168), *(v14 + 176), *(v14 + 184), *(v14 + 192), *(v14 + 200), *(v14 + 208), *(v14 + 216));

  return MEMORY[0x1EEE6BDD0](v0, v13 + 256, v2 | 7);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = type metadata accessor for BundlePaywallViewModel(0);
  v2 = *(*(v1 - 1) + 80);
  v27 = *(*(v1 - 1) + 64);

  v28 = (v2 + 24) & ~v2;
  v3 = v0 + v28;

  v4 = v1[9];
  v5 = sub_1D78B3294();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v28 + v4, v5);

  v8 = v0 + v28 + v1[11];
  type metadata accessor for SubscribeButtonDestination(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    sub_1D7740094(0);
    v10 = *(v11 + 80);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_8;
    }

    v10 = *(type metadata accessor for OsloSheetPurchaseDataModel(0) + 20);
  }

  v12 = v8 + v10;
  v13 = type metadata accessor for PostPurchaseDestination();
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13) && swift_getEnumCaseMultiPayload() == 1)
  {
    v7(v12, v5);
  }

LABEL_8:

  v14 = v1[13];
  v15 = *(v6 + 48);
  if (!v15(v3 + v14, 1, v5))
  {
    v7(v3 + v14, v5);
  }

  v16 = v1[14];
  v17 = type metadata accessor for OffersButtonDestination(0);
  if (!(*(*(v17 - 8) + 48))(v3 + v16, 1, v17))
  {
    v7(v3 + v16, v5);
  }

  v18 = v1[17];
  if (!v15(v3 + v18, 1, v5))
  {
    v7(v3 + v18, v5);
  }

  v19 = v1[18];
  if (!v15(v3 + v19, 1, v5))
  {
    v7(v3 + v19, v5);
  }

  v20 = v1[19];
  if (!v15(v3 + v20, 1, v5))
  {
    v7(v3 + v20, v5);
  }

  v21 = v1[20];
  if (!v15(v3 + v21, 1, v5))
  {
    v7(v3 + v21, v5);
  }

  v22 = v1[21];
  if (!v15(v3 + v22, 1, v5))
  {
    v7(v3 + v22, v5);
  }

  v23 = v1[22];
  if (!v15(v3 + v23, 1, v5))
  {
    v7(v3 + v23, v5);
  }

  v24 = (v27 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;

  v25 = v0 + v24;
  sub_1D77CA6AC(*(v0 + v24), *(v0 + v24 + 8), *(v0 + v24 + 16));
  sub_1D77CA77C(*(v25 + 24), *(v25 + 32), *(v25 + 40), *(v25 + 48), *(v25 + 56), *(v25 + 64), *(v25 + 72), *(v25 + 80), *(v25 + 88), *(v25 + 96), *(v25 + 104), *(v25 + 112), *(v25 + 120), *(v25 + 128), *(v25 + 136), *(v25 + 144), *(v25 + 152), *(v25 + 160), *(v25 + 168), *(v25 + 176), *(v25 + 184), *(v25 + 192), *(v25 + 200), *(v25 + 208), *(v25 + 216));

  return MEMORY[0x1EEE6BDD0](v0, v24 + 256, v2 | 7);
}

uint64_t PaywallEventHandler.__allocating_init(interactor:router:urlHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1D77591C4(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t PaywallEventHandler.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*PaywallEventHandler.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D7845F64;
}

uint64_t PaywallEventHandler.requestStartViewSession(paywallModel:)(__int128 *a1)
{
  result = swift_beginAccess();
  if (v1[7])
  {
    sub_1D774584C((v1 + 4), v42);
    v4 = v43;
    v5 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v7 = v1[21];
    v6 = v1[22];
    v8 = a1[13];
    v38 = a1[12];
    v39 = v8;
    v9 = a1[15];
    v40 = a1[14];
    v41 = v9;
    v10 = a1[9];
    v34 = a1[8];
    v35 = v10;
    v11 = a1[11];
    v36 = a1[10];
    v37 = v11;
    v12 = a1[5];
    v30 = a1[4];
    v31 = v12;
    v13 = a1[7];
    v32 = a1[6];
    v33 = v13;
    v14 = a1[1];
    v26 = *a1;
    v27 = v14;
    v15 = a1[3];
    v28 = a1[2];
    v29 = v15;

    PaywallModel.conversionLocation.getter(&v25);
    v16 = a1[13];
    v24[12] = a1[12];
    v24[13] = v16;
    v17 = a1[15];
    v24[14] = a1[14];
    v24[15] = v17;
    v18 = a1[9];
    v24[8] = a1[8];
    v24[9] = v18;
    v19 = a1[11];
    v24[10] = a1[10];
    v24[11] = v19;
    v20 = a1[5];
    v24[4] = a1[4];
    v24[5] = v20;
    v21 = a1[7];
    v24[6] = a1[6];
    v24[7] = v21;
    v22 = a1[1];
    v24[0] = *a1;
    v24[1] = v22;
    v23 = a1[3];
    v24[2] = a1[2];
    v24[3] = v23;
    (*(v5 + 24))(v7, v6, &v25, v24, v4, v5);

    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  return result;
}

Swift::Void __swiftcall PaywallEventHandler.requestEndViewSession()()
{
  v1 = v0;
  v2 = sub_1D78B33C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B33B4();
  v6 = sub_1D78B33A4();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v1[21] = v6;
  v1[22] = v8;

  swift_beginAccess();
  if (v1[7])
  {
    sub_1D774584C((v1 + 4), v11);
    v9 = v12;
    v10 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v10 + 32))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }
}

uint64_t PaywallEventHandler.requestEndViewSession(startDate:endDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D78B33C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B33B4();
  v10 = sub_1D78B33A4();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v3[21] = v10;
  v3[22] = v12;

  result = swift_beginAccess();
  if (v3[7])
  {
    sub_1D774584C((v3 + 4), v16);
    v14 = v17;
    v15 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v15 + 40))(a1, a2, v14, v15);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return result;
}

uint64_t PaywallEventHandler.requestSubscribeButtonPressed(with:paywallModel:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  sub_1D7759010(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v186 = &v180 - v7;
  v182 = type metadata accessor for OsloSheetPurchaseDataModel(0);
  MEMORY[0x1EEE9AC00](v182);
  *&v185 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a2 + 29);
  swift_beginAccess();
  if (v3[7])
  {
    sub_1D774584C((v3 + 4), &v220);
    v13 = *(&v221 + 1);
    v14 = v222;
    v183 = __swift_project_boxed_opaque_existential_1(&v220, *(&v221 + 1));
    *&v184 = a1;
    sub_1D7847680(a1, v187);
    LOBYTE(v212[0]) = v187[0];
    *(v212 + 8) = *(v187 + 8);
    *(&v212[1] + 8) = *(&v187[1] + 8);
    v15 = a2[13];
    v207 = a2[12];
    v208 = v15;
    v16 = *(a2 + 28);
    v17 = a2[9];
    v203 = a2[8];
    v204 = v17;
    v18 = a2[11];
    v205 = a2[10];
    v206 = v18;
    v19 = a2[5];
    v199 = a2[4];
    v200 = v19;
    v20 = a2[7];
    v201 = a2[6];
    v202 = v20;
    v21 = a2[1];
    v195 = *a2;
    v196 = v21;
    v22 = a2[3];
    v197 = a2[2];
    v198 = v22;
    v209 = v16;
    v210 = v12;
    v211 = a2[15];
    (*(v14 + 80))(v212, &v195, v13, v14);

    a1 = v184;

    __swift_destroy_boxed_opaque_existential_1(&v220);
  }

  sub_1D7849148(a1, v11, type metadata accessor for SubscribeButtonDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = v11[1];
      *&v185 = *v11;
      v25 = v11[2];
      v26 = v11[3];
      v27 = v11[5];
      v183 = v11[4];
      *&v184 = v25;
      v181 = v24;
      v182 = v27;
      sub_1D7740094(0);
      v29 = v186;
      sub_1D774BED0(v11 + *(v28 + 80), v186);
      v31 = v3[14];
      v30 = v3[15];
      v180 = __swift_project_boxed_opaque_existential_1(v3 + 11, v31);
      v32 = v3[21];
      v33 = v3[22];
      v34 = *(v30 + 16);

      v34(v185, v181, v184, v26, v183, v182, v32, v33, v12, v29, v31, v30);

      v35 = v29;
      return sub_1D784945C(v35, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    }

    v63 = *(a2 + 168);
    v64 = *(a2 + 200);
    v230 = *(a2 + 184);
    v231 = v64;
    v232 = *(a2 + 216);
    v65 = *(a2 + 104);
    v66 = *(a2 + 136);
    v226 = *(a2 + 120);
    v227 = v66;
    v228 = *(a2 + 152);
    v229 = v63;
    v67 = *(a2 + 40);
    v68 = *(a2 + 72);
    v222 = *(a2 + 56);
    v223 = v68;
    v224 = *(a2 + 88);
    v225 = v65;
    v220 = *(a2 + 24);
    v221 = v67;
    v69 = sub_1D77C19C8(&v220);
    if (v69 > 1)
    {
      v70 = v12;
      v71 = v3;
      if (v69 == 2)
      {
        v93 = nullsub_1(&v220);
        v94 = *(v93 + 16);
        v95 = *(a2 + 24);
        v96 = *(a2 + 88);
        v97 = *(a2 + 72);
        v197 = *(a2 + 56);
        v198 = v97;
        v98 = *(a2 + 40);
        v195 = v95;
        v196 = v98;
        v99 = *(a2 + 152);
        v100 = *(a2 + 136);
        v201 = *(a2 + 120);
        v202 = v100;
        v101 = *(a2 + 104);
        v199 = v96;
        v200 = v101;
        LOBYTE(v207) = *(a2 + 216);
        v102 = *(a2 + 200);
        v205 = *(a2 + 184);
        v206 = v102;
        v103 = *(a2 + 168);
        v203 = v99;
        v204 = v103;
        v104 = nullsub_1(&v195);
        sub_1D7849148(v104, v187, sub_1D77C33E0);

        v83 = *(v93 + 96);
        v84 = *(v93 + 72);
        v85 = *(v93 + 80);
        v86 = *(v93 + 64);
        v87 = *(v93 + 56);
        v88 = *(v93 + 40);
        v89 = *(v93 + 24);
        v105 = *(v93 + 152);
        v216 = *(v93 + 136);
        v217 = v105;
        v218 = *(v93 + 168);
        v219 = *(v93 + 184);
        v91 = *(v93 + 104);
        v92 = *(v93 + 120);
      }

      else
      {
        v154 = nullsub_1(&v220);
        v83 = *(v154 + 72);
        v84 = *(v154 + 48);
        v155 = *(v154 + 56);
        v86 = *(v154 + 40);
        v87 = *(v154 + 32);
        v156 = *v154;
        v185 = *(v154 + 16);
        v186 = v155;
        v184 = v156;
        v157 = *(a2 + 88);
        v158 = *(a2 + 152);
        v159 = *(a2 + 136);
        v201 = *(a2 + 120);
        v202 = v159;
        v160 = *(a2 + 104);
        v199 = v157;
        v200 = v160;
        LOBYTE(v207) = *(a2 + 216);
        v161 = *(a2 + 200);
        v205 = *(a2 + 184);
        v206 = v161;
        v162 = *(a2 + 72);
        v197 = *(a2 + 56);
        v198 = v162;
        v163 = *(a2 + 40);
        v164 = *(a2 + 168);
        v203 = v158;
        v204 = v164;
        v195 = *(a2 + 24);
        v196 = v163;
        v165 = nullsub_1(&v195);
        sub_1D7849148(v165, v187, sub_1D77C3318);
        v89 = v184;
        v88 = v185;
        v85 = v186;
        v166 = *(v154 + 128);
        v216 = *(v154 + 112);
        v217 = v166;
        v218 = *(v154 + 144);
        v219 = *(v154 + 160);
        v91 = *(v154 + 80);
        v92 = *(v154 + 96);
      }
    }

    else
    {
      if (v69)
      {
        nullsub_1(&v220);
        v139 = v3[10];
        ObjectType = swift_getObjectType();
        v141 = a2[13];
        v207 = a2[12];
        v208 = v141;
        v142 = *(a2 + 28);
        v143 = a2[9];
        v203 = a2[8];
        v204 = v143;
        v144 = a2[11];
        v205 = a2[10];
        v206 = v144;
        v145 = a2[5];
        v199 = a2[4];
        v200 = v145;
        v146 = a2[7];
        v201 = a2[6];
        v202 = v146;
        v147 = a2[1];
        v195 = *a2;
        v196 = v147;
        v148 = a2[3];
        v197 = a2[2];
        v198 = v148;
        v209 = v142;
        v210 = v12;
        v211 = a2[15];
        v187[0] = 0uLL;
        v149 = v186;
        *v186 = 0;
        v150 = type metadata accessor for PostPurchaseDestination();
        swift_storeEnumTagMultiPayload();
        (*(*(v150 - 8) + 56))(v149, 0, 1, v150);
        v152 = v3[21];
        v151 = v3[22];
        v153 = *(v139 + 48);

        v153(&v195, v187, v149, v152, v151, 0, ObjectType, v139);

        v35 = v149;
        return sub_1D784945C(v35, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      }

      v70 = v12;
      v71 = v3;
      v72 = nullsub_1(&v220);
      v73 = *(a2 + 24);
      v74 = *(a2 + 88);
      v75 = *(a2 + 72);
      v197 = *(a2 + 56);
      v198 = v75;
      v76 = *(a2 + 40);
      v195 = v73;
      v196 = v76;
      v77 = *(a2 + 152);
      v78 = *(a2 + 136);
      v201 = *(a2 + 120);
      v202 = v78;
      v79 = *(a2 + 104);
      v199 = v74;
      v200 = v79;
      LOBYTE(v207) = *(a2 + 216);
      v80 = *(a2 + 200);
      v205 = *(a2 + 184);
      v206 = v80;
      v81 = *(a2 + 168);
      v203 = v77;
      v204 = v81;
      v82 = nullsub_1(&v195);
      sub_1D7849148(v82, v187, sub_1D77C34F8);

      v83 = *(v72 + 88);
      v84 = *(v72 + 64);
      v85 = *(v72 + 72);
      v86 = *(v72 + 56);
      v87 = *(v72 + 48);
      v89 = *(v72 + 16);
      v88 = *(v72 + 32);
      v90 = *(v72 + 144);
      v216 = *(v72 + 128);
      v217 = v90;
      v218 = *(v72 + 160);
      v219 = *(v72 + 176);
      v91 = *(v72 + 96);
      v92 = *(v72 + 112);
    }

    v214 = v91;
    v215 = v92;
    v187[0] = v89;
    v187[1] = v88;
    *&v187[2] = v87;
    BYTE8(v187[2]) = v86;
    LOBYTE(v188[0]) = v84;
    *(v188 + 8) = v85;
    *(&v188[1] + 1) = v83;
    v191 = v216;
    v192 = v217;
    v193 = v218;
    v194 = v219;
    v189 = v91;
    v190 = v92;
    v167 = v71[10];
    v168 = swift_getObjectType();
    v212[8] = v192;
    v212[9] = v193;
    v213 = v194;
    v212[4] = v188[1];
    v212[5] = v189;
    v212[6] = v190;
    v212[7] = v191;
    v212[0] = v187[0];
    v212[1] = v187[1];
    v212[2] = v187[2];
    v212[3] = v188[0];
    v170 = v71[21];
    v169 = v71[22];
    v171 = a2[13];
    v207 = a2[12];
    v208 = v171;
    v172 = *(a2 + 28);
    v173 = a2[9];
    v203 = a2[8];
    v204 = v173;
    v174 = a2[11];
    v205 = a2[10];
    v206 = v174;
    v175 = a2[5];
    v199 = a2[4];
    v200 = v175;
    v176 = a2[7];
    v201 = a2[6];
    v202 = v176;
    v177 = a2[1];
    v195 = *a2;
    v196 = v177;
    v178 = a2[3];
    v197 = a2[2];
    v198 = v178;
    v209 = v172;
    v210 = v70;
    v211 = a2[15];
    v179 = *(v167 + 56);

    v179(v212, v170, v169, &v195, v168, v167);

    return sub_1D778D0B0(v187);
  }

  else
  {
    v37 = v185;
    sub_1D78490E0(v11, v185, type metadata accessor for OsloSheetPurchaseDataModel);
    v38 = a2[13];
    v207 = a2[12];
    v208 = v38;
    v39 = *(a2 + 28);
    v40 = a2[9];
    v203 = a2[8];
    v204 = v40;
    v41 = a2[11];
    v205 = a2[10];
    v206 = v41;
    v42 = a2[5];
    v199 = a2[4];
    v200 = v42;
    v43 = a2[7];
    v201 = a2[6];
    v202 = v43;
    v44 = a2[1];
    v195 = *a2;
    v196 = v44;
    v45 = a2[3];
    v197 = a2[2];
    v198 = v45;
    v209 = v39;
    v210 = v12;
    v211 = a2[15];
    if (PaywallModel.purchaseType.getter() || (v106 = a2[13], v207 = a2[12], v208 = v106, v107 = *(a2 + 28), v108 = a2[9], v203 = a2[8], v204 = v108, v109 = a2[11], v205 = a2[10], v206 = v109, v110 = a2[5], v199 = a2[4], v200 = v110, v111 = a2[7], v201 = a2[6], v202 = v111, v112 = a2[1], v195 = *a2, v196 = v112, v113 = a2[3], v197 = a2[2], v198 = v113, v209 = v107, v210 = v12, v211 = a2[15], PaywallModel.purchaseIDs.getter()) && (, v114 = a2[13], v207 = a2[12], v208 = v114, v115 = *(a2 + 28), v116 = a2[9], v203 = a2[8], v204 = v116, v117 = a2[11], v205 = a2[10], v206 = v117, v118 = a2[5], v199 = a2[4], v200 = v118, v119 = a2[7], v201 = a2[6], v202 = v119, v120 = a2[1], v195 = *a2, v196 = v120, v121 = a2[3], v197 = a2[2], v198 = v121, v209 = v115, v210 = v12, v211 = a2[15], (v122 = PaywallModel.purchaseIDs.getter()) != 0) && (v123 = *(v122 + 16), , v123))
    {
      v46 = v12;
      v47 = v3;
      v48 = v3[10];
      v49 = swift_getObjectType();
      v50 = a2[13];
      v207 = a2[12];
      v208 = v50;
      v51 = *(a2 + 28);
      v52 = a2[9];
      v203 = a2[8];
      v204 = v52;
      v53 = a2[11];
      v205 = a2[10];
      v206 = v53;
      v54 = a2[5];
      v199 = a2[4];
      v200 = v54;
      v55 = a2[7];
      v201 = a2[6];
      v202 = v55;
      v56 = a2[1];
      v195 = *a2;
      v196 = v56;
      v57 = a2[3];
      v197 = a2[2];
      v198 = v57;
      v209 = v51;
      v210 = v46;
      v211 = a2[15];
      v58 = *(v37 + 1);
      *&v220 = *v37;
      *(&v220 + 1) = v58;
      v59 = *(v182 + 20);
      v61 = v47[21];
      v60 = v47[22];
      v62 = *(v48 + 48);

      v62(&v195, &v220, &v37[v59], v61, v60, 1, v49, v48);

      return sub_1D78491B0(v37, type metadata accessor for OsloSheetPurchaseDataModel);
    }

    else
    {
      v124 = a2[13];
      v207 = a2[12];
      v208 = v124;
      v125 = *(a2 + 28);
      v126 = a2[9];
      v203 = a2[8];
      v204 = v126;
      v127 = a2[11];
      v205 = a2[10];
      v206 = v127;
      v128 = a2[5];
      v199 = a2[4];
      v200 = v128;
      v129 = a2[7];
      v201 = a2[6];
      v202 = v129;
      v130 = a2[1];
      v195 = *a2;
      v196 = v130;
      v131 = a2[3];
      v197 = a2[2];
      v198 = v131;
      v209 = v125;
      v210 = v12;
      v211 = a2[15];
      v132 = [PaywallModel.tag.getter() identifier];
      swift_unknownObjectRelease();
      v133 = sub_1D78B5C74();
      v135 = v134;

      v136 = v3;
      v137 = v3[14];
      v138 = v3[15];
      __swift_project_boxed_opaque_existential_1(v136 + 11, v137);
      *&v195 = v133;
      *(&v195 + 1) = v135;
      *&v197 = 0;
      v196 = MEMORY[0x1E69E7CC0];
      (*(v138 + 48))(&v195, v137, v138);
      sub_1D78491B0(v37, type metadata accessor for OsloSheetPurchaseDataModel);
      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t PaywallEventHandler.requestLearnMoreLinkTapped(with:)(uint64_t a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t PaywallEventHandler.requestOffersButtonPressed(from:destination:paywallModel:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_1D78B3294();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7759010(0, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &ObjectType - v9;
  v11 = type metadata accessor for OffersButtonDestination(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &ObjectType - v16;
  v18 = a3[13];
  v53 = a3[12];
  v54 = v18;
  v19 = a3[15];
  v55 = a3[14];
  v56 = v19;
  v20 = a3[9];
  v49 = a3[8];
  v50 = v20;
  v21 = a3[11];
  v51 = a3[10];
  v52 = v21;
  v22 = a3[5];
  v45 = a3[4];
  v46 = v22;
  v23 = a3[7];
  v47 = a3[6];
  v48 = v23;
  v24 = a3[1];
  v41 = *a3;
  v42 = v24;
  v25 = a3[3];
  v43 = a3[2];
  v44 = v25;
  sub_1D77590E8(a2, v10, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1D784945C(v10, qword_1EE092E50, type metadata accessor for OffersButtonDestination);
  }

  sub_1D78490E0(v10, v17, type metadata accessor for OffersButtonDestination);
  sub_1D7849148(v17, v15, type metadata accessor for OffersButtonDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v38 + 32))(v37, v15, v39);
  if (EnumCaseMultiPayload == 1)
  {
    v28 = v3[10];
    ObjectType = swift_getObjectType();
    v30 = v3[21];
    v29 = v3[22];
    v40[12] = v53;
    v40[13] = v54;
    v40[14] = v55;
    v40[15] = v56;
    v40[8] = v49;
    v40[9] = v50;
    v40[10] = v51;
    v40[11] = v52;
    v40[4] = v45;
    v40[5] = v46;
    v40[6] = v47;
    v40[7] = v48;
    v40[0] = v41;
    v40[1] = v42;
    v40[2] = v43;
    v40[3] = v44;
    v31 = *(v28 + 64);

    v32 = v37;
    v31(v37, v30, v29, v40, ObjectType, v28);

    (*(v38 + 8))(v32, v39);
  }

  else
  {
    v33 = v3[14];
    v34 = v3[15];
    __swift_project_boxed_opaque_existential_1(v3 + 11, v33);
    v35 = v37;
    (*(v34 + 24))(v37, v33, v34);
    (*(v38 + 8))(v35, v39);
  }

  return sub_1D78491B0(v17, type metadata accessor for OffersButtonDestination);
}

uint64_t PaywallEventHandler.requestWebAuthButtonPressed(for:)(_OWORD *a1)
{
  v2 = a1[13];
  v13[12] = a1[12];
  v13[13] = v2;
  v3 = a1[15];
  v13[14] = a1[14];
  v13[15] = v3;
  v4 = a1[9];
  v13[8] = a1[8];
  v13[9] = v4;
  v5 = a1[11];
  v13[10] = a1[10];
  v13[11] = v5;
  v6 = a1[5];
  v13[4] = a1[4];
  v13[5] = v6;
  v7 = a1[7];
  v13[6] = a1[6];
  v13[7] = v7;
  v8 = a1[1];
  v13[0] = *a1;
  v13[1] = v8;
  v9 = a1[3];
  v13[2] = a1[2];
  v13[3] = v9;
  v10 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  return (*(v10 + 32))(v13, ObjectType, v10);
}

uint64_t PaywallEventHandler.requestVerifyAccessToken(for:paywallModel:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3[13];
  v17[12] = a3[12];
  v17[13] = v6;
  v7 = a3[15];
  v17[14] = a3[14];
  v17[15] = v7;
  v8 = a3[9];
  v17[8] = a3[8];
  v17[9] = v8;
  v9 = a3[11];
  v17[10] = a3[10];
  v17[11] = v9;
  v10 = a3[5];
  v17[4] = a3[4];
  v17[5] = v10;
  v11 = a3[7];
  v17[6] = a3[6];
  v17[7] = v11;
  v12 = a3[1];
  v17[0] = *a3;
  v17[1] = v12;
  v13 = a3[3];
  v17[2] = a3[2];
  v17[3] = v13;
  v14 = *(v3 + 80);
  ObjectType = swift_getObjectType();
  return (*(v14 + 40))(a1, a2, v17, ObjectType, v14);
}

uint64_t PaywallEventHandler.subscribeButtonShown(with:paywallModel:)(uint64_t a1, _OWORD *a2)
{
  result = swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_1D774584C(v2 + 32, v23);
    v6 = v24;
    v7 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1D7847680(a1, v20);
    v17[0] = v20[0];
    v18 = v21;
    v19 = v22;
    v8 = a2[13];
    v16[12] = a2[12];
    v16[13] = v8;
    v9 = a2[15];
    v16[14] = a2[14];
    v16[15] = v9;
    v10 = a2[9];
    v16[8] = a2[8];
    v16[9] = v10;
    v11 = a2[11];
    v16[10] = a2[10];
    v16[11] = v11;
    v12 = a2[5];
    v16[4] = a2[4];
    v16[5] = v12;
    v13 = a2[7];
    v16[6] = a2[6];
    v16[7] = v13;
    v14 = a2[1];
    v16[0] = *a2;
    v16[1] = v14;
    v15 = a2[3];
    v16[2] = a2[2];
    v16[3] = v15;
    (*(v7 + 64))(v17, v16, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t sub_1D7847680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for OsloSheetPurchaseDataModel(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SubscribeButtonDestination(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7849148(a1, v10, type metadata accessor for SubscribeButtonDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_1D7740094(0);
      sub_1D784945C(&v10[*(v12 + 80)], qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      v13 = 0;
      v14 = 0;
      v15 = 3;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 2;
    }
  }

  else
  {
    sub_1D78490E0(v10, v7, type metadata accessor for OsloSheetPurchaseDataModel);
    v16 = *v7;
    v14 = v7[1];

    sub_1D78491B0(v7, type metadata accessor for OsloSheetPurchaseDataModel);
    if (v14)
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }

    v15 = 1;
  }

  v18 = *(v2 + 168);
  v17 = *(v2 + 176);
  *a2 = v15;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v18;
  *(a2 + 32) = v17;
}

uint64_t PaywallEventHandler.subscribeButtonHidden(with:paywallModel:)(uint64_t a1, _OWORD *a2)
{
  result = swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_1D774584C(v2 + 32, v23);
    v6 = v24;
    v7 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_1D7847680(a1, v20);
    v17[0] = v20[0];
    v18 = v21;
    v19 = v22;
    v8 = a2[13];
    v16[12] = a2[12];
    v16[13] = v8;
    v9 = a2[15];
    v16[14] = a2[14];
    v16[15] = v9;
    v10 = a2[9];
    v16[8] = a2[8];
    v16[9] = v10;
    v11 = a2[11];
    v16[10] = a2[10];
    v16[11] = v11;
    v12 = a2[5];
    v16[4] = a2[4];
    v16[5] = v12;
    v13 = a2[7];
    v16[6] = a2[6];
    v16[7] = v13;
    v14 = a2[1];
    v16[0] = *a2;
    v16[1] = v14;
    v15 = a2[3];
    v16[2] = a2[2];
    v16[3] = v15;
    (*(v7 + 72))(v17, v16, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t PaywallEventHandler.requestTopChannelsClause(paywallModel:)(_OWORD *a1)
{
  v2 = a1[13];
  v15[12] = a1[12];
  v15[13] = v2;
  v3 = a1[15];
  v15[14] = a1[14];
  v15[15] = v3;
  v4 = a1[9];
  v15[8] = a1[8];
  v15[9] = v4;
  v5 = a1[11];
  v15[10] = a1[10];
  v15[11] = v5;
  v6 = a1[5];
  v15[4] = a1[4];
  v15[5] = v6;
  v7 = a1[7];
  v15[6] = a1[6];
  v15[7] = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v9 = a1[3];
  v15[2] = a1[2];
  v15[3] = v9;
  v10 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  (*(v10 + 72))(v15, ObjectType, v10);

  v12 = sub_1D78B4014();
  sub_1D784940C(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v13 = sub_1D78B4084();

  return v13;
}

uint64_t sub_1D7847A94(uint64_t a1, uint64_t a2)
{
  sub_1D7759010(0, &qword_1EE090508, MEMORY[0x1E69B6A10]);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - v9;
  swift_beginAccess();
  if (*(a2 + 56))
  {
    v25 = v2;
    sub_1D774584C(a2 + 32, v22);
    v11 = v23;
    v12 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_1D77590E8(a1, v10, &qword_1EE090508, MEMORY[0x1E69B6A10]);
    v13 = sub_1D78B42B4();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v10, 1, v13) == 1)
    {
      sub_1D784945C(v10, &qword_1EE090508, MEMORY[0x1E69B6A10]);
      v15 = 0;
    }

    else
    {
      v15 = sub_1D78B4294();
      (*(v14 + 8))(v10, v13);
    }

    (*(v12 + 88))(v15, v11, v12);

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1D77590E8(a1, v8, &qword_1EE090508, MEMORY[0x1E69B6A10]);
  v16 = sub_1D78B42B4();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    sub_1D784945C(v8, &qword_1EE090508, MEMORY[0x1E69B6A10]);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = sub_1D78B42A4();
    v19 = v20;
    (*(v17 + 8))(v8, v16);
  }

  v22[0] = v18;
  v22[1] = v19;
  sub_1D78494B8();
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t PaywallEventHandler.deinit()
{
  sub_1D776ABA8(v0 + 16);
  sub_1D784945C(v0 + 32, &unk_1EE094000, sub_1D784907C);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  return v0;
}

uint64_t PaywallEventHandler.__deallocating_deinit()
{
  sub_1D776ABA8(v0 + 16);
  sub_1D784945C(v0 + 32, &unk_1EE094000, sub_1D784907C);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D7847ECC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D7849534;
}

void sub_1D7847F60(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1D7848000(_OWORD *a1)
{
  v2 = a1[13];
  v13[12] = a1[12];
  v13[13] = v2;
  v3 = a1[15];
  v13[14] = a1[14];
  v13[15] = v3;
  v4 = a1[9];
  v13[8] = a1[8];
  v13[9] = v4;
  v5 = a1[11];
  v13[10] = a1[10];
  v13[11] = v5;
  v6 = a1[5];
  v13[4] = a1[4];
  v13[5] = v6;
  v7 = a1[7];
  v13[6] = a1[6];
  v13[7] = v7;
  v8 = a1[1];
  v13[0] = *a1;
  v13[1] = v8;
  v9 = a1[3];
  v13[2] = a1[2];
  v13[3] = v9;
  v10 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  return (*(v10 + 32))(v13, ObjectType, v10);
}

uint64_t sub_1D784809C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = a3[13];
  v17[12] = a3[12];
  v17[13] = v6;
  v7 = a3[15];
  v17[14] = a3[14];
  v17[15] = v7;
  v8 = a3[9];
  v17[8] = a3[8];
  v17[9] = v8;
  v9 = a3[11];
  v17[10] = a3[10];
  v17[11] = v9;
  v10 = a3[5];
  v17[4] = a3[4];
  v17[5] = v10;
  v11 = a3[7];
  v17[6] = a3[6];
  v17[7] = v11;
  v12 = a3[1];
  v17[0] = *a3;
  v17[1] = v12;
  v13 = a3[3];
  v17[2] = a3[2];
  v17[3] = v13;
  v14 = *(v3 + 80);
  ObjectType = swift_getObjectType();
  return (*(v14 + 40))(a1, a2, v17, ObjectType, v14);
}

uint64_t sub_1D7848150(uint64_t a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t sub_1D78481AC(_OWORD *a1)
{
  v2 = a1[13];
  v15[12] = a1[12];
  v15[13] = v2;
  v3 = a1[15];
  v15[14] = a1[14];
  v15[15] = v3;
  v4 = a1[9];
  v15[8] = a1[8];
  v15[9] = v4;
  v5 = a1[11];
  v15[10] = a1[10];
  v15[11] = v5;
  v6 = a1[5];
  v15[4] = a1[4];
  v15[5] = v6;
  v7 = a1[7];
  v15[6] = a1[6];
  v15[7] = v7;
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v9 = a1[3];
  v15[2] = a1[2];
  v15[3] = v9;
  v10 = *(v1 + 80);
  ObjectType = swift_getObjectType();
  (*(v10 + 72))(v15, ObjectType, v10);

  v12 = sub_1D78B4014();
  sub_1D784940C(0, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v13 = sub_1D78B4084();

  return v13;
}

uint64_t PaywallEventHandler.presentPurchase(with:paywallType:purchaseType:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v12 = v8;
    (*(v10 + 24))(v4, &protocol witness table for PaywallEventHandler, a1, a2, a3, &v12, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallEventHandler.presentAMSSheet(with:context:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = v2[14];
  v7 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v6);
  v9 = v4;
  return (*(v7 + 40))(v5, &v9, a2, v6, v7);
}

uint64_t PaywallEventHandler.presentAMSSheet(with:context:paywallModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D774584C(v3 + 88, v83);
  v7 = v84;
  v8 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v9 = *(a3 + 168);
  v10 = *(a3 + 200);
  v86[10] = *(a3 + 184);
  v86[11] = v10;
  v87 = *(a3 + 216);
  v11 = *(a3 + 104);
  v12 = *(a3 + 136);
  v86[6] = *(a3 + 120);
  v86[7] = v12;
  v86[8] = *(a3 + 152);
  v86[9] = v9;
  v13 = *(a3 + 40);
  v14 = *(a3 + 72);
  v86[2] = *(a3 + 56);
  v86[3] = v14;
  v86[4] = *(a3 + 88);
  v86[5] = v11;
  v86[0] = *(a3 + 24);
  v86[1] = v13;
  v15 = sub_1D77C19C8(v86);
  if (v15 > 1)
  {
    v65 = a2;
    if (v15 == 2)
    {
      v37 = nullsub_1(v86);
      v38 = *(v37 + 16);
      v39 = *(a3 + 24);
      v40 = *(a3 + 88);
      v41 = *(a3 + 72);
      v73 = *(a3 + 56);
      *v74 = v41;
      v42 = *(a3 + 40);
      v71 = v39;
      v72 = v42;
      v43 = *(a3 + 152);
      v44 = *(a3 + 136);
      v76 = *(a3 + 120);
      v77 = v44;
      v45 = *(a3 + 104);
      *&v74[16] = v40;
      v75 = v45;
      v82 = *(a3 + 216);
      v46 = *(a3 + 200);
      v80 = *(a3 + 184);
      v81 = v46;
      v47 = *(a3 + 168);
      v78 = v43;
      v79 = v47;
      v48 = nullsub_1(&v71);
      sub_1D7849148(v48, v66, sub_1D77C33E0);

      v27 = *(v37 + 96);
      v28 = *(v37 + 72);
      v29 = *(v37 + 80);
      v30 = *(v37 + 64);
      v31 = *(v37 + 56);
      v32 = *(v37 + 40);
      v33 = *(v37 + 24);
      v49 = *(v37 + 152);
      v67 = *(v37 + 136);
      v68 = v49;
      v69 = *(v37 + 168);
      v70 = *(v37 + 184);
      v35 = *(v37 + 104);
      v36 = *(v37 + 120);
    }

    else
    {
      v50 = nullsub_1(v86);
      v27 = *(v50 + 72);
      v28 = *(v50 + 48);
      v30 = *(v50 + 40);
      v31 = *(v50 + 32);
      v63 = *(v50 + 16);
      v64 = *(v50 + 56);
      v62 = *v50;
      v51 = *(a3 + 88);
      v52 = *(a3 + 152);
      v53 = *(a3 + 136);
      v76 = *(a3 + 120);
      v77 = v53;
      v54 = *(a3 + 104);
      *&v74[16] = v51;
      v75 = v54;
      v82 = *(a3 + 216);
      v55 = *(a3 + 200);
      v80 = *(a3 + 184);
      v81 = v55;
      v56 = *(a3 + 72);
      v73 = *(a3 + 56);
      *v74 = v56;
      v57 = *(a3 + 40);
      v58 = *(a3 + 168);
      v78 = v52;
      v79 = v58;
      v71 = *(a3 + 24);
      v72 = v57;
      v59 = nullsub_1(&v71);
      sub_1D7849148(v59, v66, sub_1D77C3318);
      v33 = v62;
      v32 = v63;
      v29 = v64;
      v60 = *(v50 + 128);
      v67 = *(v50 + 112);
      v68 = v60;
      v69 = *(v50 + 144);
      v70 = *(v50 + 160);
      v35 = *(v50 + 80);
      v36 = *(v50 + 96);
    }

    goto LABEL_8;
  }

  if (!v15)
  {
    v65 = a2;
    v16 = nullsub_1(v86);
    v17 = *(a3 + 24);
    v18 = *(a3 + 88);
    v19 = *(a3 + 72);
    v73 = *(a3 + 56);
    *v74 = v19;
    v20 = *(a3 + 40);
    v71 = v17;
    v72 = v20;
    v21 = *(a3 + 152);
    v22 = *(a3 + 136);
    v76 = *(a3 + 120);
    v77 = v22;
    v23 = *(a3 + 104);
    *&v74[16] = v18;
    v75 = v23;
    v82 = *(a3 + 216);
    v24 = *(a3 + 200);
    v80 = *(a3 + 184);
    v81 = v24;
    v25 = *(a3 + 168);
    v78 = v21;
    v79 = v25;
    v26 = nullsub_1(&v71);
    sub_1D7849148(v26, v66, sub_1D77C34F8);

    v27 = *(v16 + 88);
    v28 = *(v16 + 64);
    v29 = *(v16 + 72);
    v30 = *(v16 + 56);
    v31 = *(v16 + 48);
    v33 = *(v16 + 16);
    v32 = *(v16 + 32);
    v34 = *(v16 + 144);
    v67 = *(v16 + 128);
    v68 = v34;
    v69 = *(v16 + 160);
    v70 = *(v16 + 176);
    v35 = *(v16 + 96);
    v36 = *(v16 + 112);
LABEL_8:
    v66[0] = v35;
    v66[1] = v36;
    v71 = v33;
    v72 = v32;
    *&v73 = v31;
    BYTE8(v73) = v30;
    v74[0] = v28;
    *&v74[8] = v29;
    *&v74[24] = v27;
    v77 = v67;
    v78 = v68;
    v79 = v69;
    *&v80 = v70;
    v75 = v35;
    v76 = v36;
    sub_1D778D0B0(&v71);
    a2 = v65;
    goto LABEL_9;
  }

  nullsub_1(v86);
  v28 = 13;
LABEL_9:
  LOBYTE(v71) = v28;
  (*(v8 + 32))(a1, &v71, a2, v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v83);
}

Swift::Void __swiftcall PaywallEventHandler.bundleSubscriptionDidSubscribe()()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 32))(v0, &protocol witness table for PaywallEventHandler, ObjectType, v1);
    swift_unknownObjectRelease();
  }
}

uint64_t PaywallEventHandler.interactor(_:webAccessAuthenticationDidObtainAccessToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(v4, &protocol witness table for PaywallEventHandler, a3, a4, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallEventHandler.interactor(_:webAccessAuthenticationDidComplete:from:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v10 = v6;
    (*(v8 + 48))(v4, &protocol witness table for PaywallEventHandler, &v10, a4, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallEventHandler.interactor(_:webAccessAuthenticationDidFail:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(v3, &protocol witness table for PaywallEventHandler, a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PaywallEventHandler.presentPreBuyEmailSignup(with:)(uint64_t a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t sub_1D7848AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v12 = v8;
    (*(v10 + 24))(v4, &protocol witness table for PaywallEventHandler, a1, a2, a3, &v12, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848B78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 72);
  v6 = v2[14];
  v7 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v6);
  v9 = v4;
  return (*(v7 + 40))(v5, &v9, a2, v6, v7);
}

uint64_t sub_1D7848BFC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(v0, &protocol witness table for PaywallEventHandler, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 40))(v4, &protocol witness table for PaywallEventHandler, a3, a4, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848D2C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    v10 = v6;
    (*(v8 + 48))(v4, &protocol witness table for PaywallEventHandler, &v10, a4, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 56))(v3, &protocol witness table for PaywallEventHandler, a3, ObjectType, v6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7848E68(uint64_t a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t _s16NewsSubscription19PaywallEventHandlerC33interactorWillBeginLoadingHMEDatay13TeaFoundation7PromiseCyytGAA0C14InteractorType_pF_0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 8))(v0, &protocol witness table for PaywallEventHandler, ObjectType, v1);
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    sub_1D784940C(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

uint64_t _s16NewsSubscription19PaywallEventHandlerC33interactorDidFinishLoadingHMEDatay13TeaFoundation7PromiseCyytGAA0C14InteractorType_pF_0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 16))(v0, &protocol witness table for PaywallEventHandler, ObjectType, v1);
    swift_unknownObjectRelease();
    return v3;
  }

  else
  {
    sub_1D784940C(0, &qword_1EE0951C0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D78B4104();
  }
}

unint64_t sub_1D784907C()
{
  result = qword_1EE094010;
  if (!qword_1EE094010)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE094010);
  }

  return result;
}

uint64_t sub_1D78490E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7849148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D78491B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D784940C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D784945C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D7759010(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D78494B8()
{
  if (!qword_1EE095250)
  {
    sub_1D784940C(255, &qword_1EE090120, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v0 = sub_1D78B4184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE095250);
    }
  }
}

uint64_t SubscriptionNotSupportedAlert.title.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t SubscriptionNotSupportedAlert.message.getter()
{
  v1 = *v0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v5 = [v1 name];
  v6 = sub_1D78B5C74();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1D78B5C94();

  return v9;
}

uint64_t SubscriptionNotSupportedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t SubscriptionNotSupportedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  v2 = sub_1D78B5CE4();

  return v2;
}

uint64_t sub_1D78499E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v90 = sub_1D78B4D24();
  v82 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D78B5654();
  v88 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v98 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69B5D18];
  sub_1D784AF18(0, &qword_1EE08FF70, MEMORY[0x1E69B5D18]);
  v99 = v7;
  v81 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v83 = (&v80 - v8);
  sub_1D784AF80(0, &qword_1EE08FF68, &qword_1EE08FF70, v6);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v107 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v80 - v12;
  v13 = sub_1D78B34F4();
  v108 = *(v13 - 8);
  v109 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v80 - v16;
  v18 = sub_1D78B5624();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v105 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69B5C98];
  sub_1D784AF18(0, &qword_1EE08FF80, MEMORY[0x1E69B5C98]);
  v106 = v22;
  v102 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v85 = (&v80 - v23);
  sub_1D784AF80(0, &qword_1EE08FF78, &qword_1EE08FF80, v21);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v103 = &v80 - v28;
  v112.receiver = v1;
  v112.super_class = ObjectType;
  objc_msgSendSuper2(&v112, sel_prepareLayout);
  v29 = OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_itemAttributes;
  swift_beginAccess();
  v30 = MEMORY[0x1E69E7CC0];
  v96 = v29;
  *&v1[v29] = MEMORY[0x1E69E7CC0];

  v31 = OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_supplementaryItemAttributes;
  swift_beginAccess();
  v91 = v31;
  *&v1[v31] = v30;
  v32 = v17;

  v104 = v1;
  v33 = *&v1[OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_layoutProvider + 24];
  v80 = &v1[OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_layoutProvider];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_layoutProvider], v33);

  sub_1D78B3AF4();

  v34 = v110;

  v36 = 0;
  v84 = v19 + 16;
  v37 = v34[2];
  v101 = (v102 + 7);
  v100 = (v102 + 6);
  v93 = (v19 + 32);
  ++v108;
  v86 = v19;
  v92 = (v19 + 8);
  v102 = v34;
  v94 = v37;
  v95 = v27;
  while (1)
  {
    v38 = v106;
    if (v36 == v37)
    {
      v39 = 1;
      v36 = v37;
      v40 = v105;
    }

    else
    {
      if ((v36 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v40 = v105;
      if (v36 >= v34[2])
      {
        goto LABEL_23;
      }

      v41 = v86;
      v42 = v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v36;
      v43 = *(v106 + 48);
      v44 = v85;
      *v85 = v36;
      (*(v41 + 16))(v44 + v43, v42, v18);
      sub_1D784B048(v44, v27, &qword_1EE08FF80, MEMORY[0x1E69B5C98]);
      v39 = 0;
      ++v36;
    }

    v45 = v103;
    (*v101)(v27, v39, 1, v38);
    sub_1D784AFD8(v27, v45, &qword_1EE08FF78, &qword_1EE08FF80, MEMORY[0x1E69B5C98]);
    if ((*v100)(v45, 1, v38) == 1)
    {
      break;
    }

    v46 = v4;
    v47 = v45;
    v48 = *v45;
    (*v93)(v40, &v47[*(v38 + 48)], v18);
    MEMORY[0x1DA700770](v48, 0);
    v49 = sub_1D78B34B4();
    v50 = v18;
    v51 = v32;
    v52 = [objc_opt_self() layoutAttributesForCellWithIndexPath_];

    sub_1D78B5614();
    [v52 setFrame_];
    v53 = v104;
    v54 = v96;
    swift_beginAccess();
    v55 = v52;
    MEMORY[0x1DA703120]();
    if (*((*&v53[v54] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v53[v54] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D78B5F04();
    }

    sub_1D78B5F24();
    swift_endAccess();

    (*v108)(v51, v109);
    result = (*v92)(v40, v50);
    v4 = v46;
    v32 = v51;
    v18 = v50;
    v27 = v95;
    v34 = v102;
    v37 = v94;
  }

  __swift_project_boxed_opaque_existential_1(v80, *(v80 + 3));

  sub_1D78B3AF4();

  v56 = v111;

  v57 = 0;
  v96 = v88 + 16;
  v100 = v56;
  v58 = *(v56 + 16);
  v105 = (v81 + 48);
  v106 = v81 + 56;
  v103 = (v88 + 32);
  v102 = (v82 + 8);
  v101 = (v88 + 8);
  v59 = v87;
  v60 = v104;
  while (1)
  {
    v61 = v99;
    v62 = v107;
    if (v57 == v58)
    {
      v63 = 1;
      v57 = v58;
      v64 = v98;
    }

    else
    {
      if ((v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v64 = v98;
      if (v57 >= v100[2])
      {
        goto LABEL_25;
      }

      v65 = v88;
      v66 = v100 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v57;
      v67 = *(v99 + 48);
      v68 = v83;
      *v83 = v57;
      (*(v65 + 16))(&v68[v67], v66, v4);
      v69 = v68;
      v62 = v107;
      sub_1D784B048(v69, v107, &qword_1EE08FF70, MEMORY[0x1E69B5D18]);
      v63 = 0;
      ++v57;
      v59 = v87;
    }

    (*v106)(v62, v63, 1, v61);
    v70 = v62;
    v71 = v97;
    sub_1D784AFD8(v70, v97, &qword_1EE08FF68, &qword_1EE08FF70, MEMORY[0x1E69B5D18]);
    if ((*v105)(v71, 1, v61) == 1)
    {
    }

    v72 = *v71;
    (*v103)(v64, &v71[*(v61 + 48)], v4);
    MEMORY[0x1DA700770](v72, 0);
    v73 = v4;
    v74 = v89;
    sub_1D78B5634();
    sub_1D78B4D14();
    (*v102)(v74, v90);
    v75 = sub_1D78B5C44();

    v76 = sub_1D78B34B4();
    v77 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v75 withIndexPath:v76];

    sub_1D78B5644();
    [v77 setFrame_];
    v78 = v91;
    swift_beginAccess();
    v79 = v77;
    MEMORY[0x1DA703120]();
    if (*((*&v60[v78] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v60[v78] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D78B5F04();
    }

    sub_1D78B5F24();
    swift_endAccess();

    (*v108)(v59, v109);
    result = (*v101)(v64, v73);
    v4 = v73;
  }
}

uint64_t sub_1D784A994(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v26 = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_itemAttributes;
  result = swift_beginAccess();
  v12 = *(v4 + v10);
  if (v12 >> 62)
  {
    result = sub_1D78B6534();
    v13 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_16:
    v15 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_35;
  }

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1DA703700](v14, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v14 + 32);
    }

    v17 = v16;
    [v16 frame];
    v29.origin.x = a1;
    v29.origin.y = a2;
    v29.size.width = a3;
    v29.size.height = a4;
    if (CGRectIntersectsRect(v27, v29))
    {
      v18 = v17;
      MEMORY[0x1DA703120]();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D78B5F04();
      }

      sub_1D78B5F24();

      v15 = v26;
    }

    else
    {
    }

    ++v14;
  }

  while (v13 != v14);

LABEL_17:
  v19 = OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_supplementaryItemAttributes;
  result = swift_beginAccess();
  v20 = *(v5 + v19);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_19;
    }

    return v15;
  }

  result = sub_1D78B6534();
  v21 = result;
  if (!result)
  {
    return v15;
  }

LABEL_19:
  if (v21 >= 1)
  {

    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1DA703700](i, v20);
      }

      else
      {
        v23 = *(v20 + 8 * i + 32);
      }

      v24 = v23;
      [v23 frame];
      v30.origin.x = a1;
      v30.origin.y = a2;
      v30.size.width = a3;
      v30.size.height = a4;
      if (CGRectIntersectsRect(v28, v30))
      {
        v25 = v24;
        MEMORY[0x1DA703120]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D78B5F04();
        }

        sub_1D78B5F24();

        v15 = v26;
      }

      else
      {
      }
    }

    return v15;
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1D784ADD4()
{
  result = qword_1EE08FC38;
  if (!qword_1EE08FC38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE08FC38);
  }

  return result;
}

uint64_t sub_1D784AE20(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    v6 = sub_1D78B6534();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < sub_1D78B34E4())
  {
    return 0;
  }

  v8 = sub_1D78B34E4();
  result = swift_beginAccess();
  v9 = *(v3 + v4);
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1DA703700](v8);
    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = *(v9 + 8 * v8 + 32);
LABEL_9:
  v11 = v10;
  swift_endAccess();
  return v11;
}

void sub_1D784AF18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D784AF80(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D784AF18(255, a3, a4);
    v5 = sub_1D78B62A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D784AFD8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1D784AF80(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D784B048(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D784AF18(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D784B0B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D7757008;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D776AC18(v4);
}

uint64_t sub_1D784B148(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D784BA44;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1D776AC18(v3);
  return sub_1D7744A7C(v8);
}

uint64_t AppActivationURLHandler.onProcessing.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_1D776AC18(v1);
  return v1;
}

uint64_t AppActivationURLHandler.onProcessing.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1D7744A7C(v5);
}

uint64_t AppActivationURLHandler.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t AppActivationURLHandler.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t AppActivationURLHandler.__deallocating_deinit()
{
  sub_1D7744A7C(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t AppActivationURLHandler.patterns.getter()
{
  sub_1D7744758(0, &qword_1EE08FAA8, MEMORY[0x1E69D6718], MEMORY[0x1E69E6F90]);
  sub_1D78B3DA4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D78B3D94();
  return v0;
}

uint64_t AppActivationURLHandler.processURL(for:)()
{
  v1 = sub_1D78B3BD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7744758(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  result = swift_beginAccess();
  v9 = *(v0 + 16);
  if (v9)
  {
    sub_1D7744758(0, &qword_1EE08F248, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);

    sub_1D78B3D24();
    sub_1D78B3B94();
    (*(v2 + 8))(v4, v1);
    v10 = sub_1D78B3294();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    v9(v7);
    sub_1D7744A7C(v9);
    return sub_1D77C12C8(v7);
  }

  return result;
}

unint64_t sub_1D784B6A4()
{
  result = qword_1EC9CAD80;
  if (!qword_1EC9CAD80)
  {
    type metadata accessor for AppActivationURLHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAD80);
  }

  return result;
}

uint64_t sub_1D784B6F8()
{
  sub_1D7744758(0, &qword_1EE08FAA8, MEMORY[0x1E69D6718], MEMORY[0x1E69E6F90]);
  sub_1D78B3DA4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCAB0;
  sub_1D78B3D94();
  return v0;
}

uint64_t sub_1D784B7F0()
{
  v1 = sub_1D78B3BD4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7744758(0, &unk_1EE096460, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = *v0;
  result = swift_beginAccess();
  v10 = *(v8 + 16);
  if (v10)
  {
    sub_1D7744758(0, &qword_1EE08F248, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);

    sub_1D78B3D24();
    sub_1D78B3B94();
    (*(v2 + 8))(v4, v1);
    v11 = sub_1D78B3294();
    (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    v10(v7);
    sub_1D7744A7C(v10);
    return sub_1D77C12C8(v7);
  }

  return result;
}

id sub_1D784BA6C()
{
  v1 = v0;
  v21 = sub_1D78B48D4();
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7851D38(0, &qword_1EE090408, MEMORY[0x1E69D7B70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallCollectionView);
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAlwaysBounceVertical_];
  [v8 setTu:1 deriveVisibleBoundsFromContainingScrollView:?];
  sub_1D773F004(0, &qword_1EE08FC00);
  v9 = sub_1D78B61E4();
  [v8 setBackgroundColor_];

  [v8 _setPocketsEnabled_];
  v10 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallView);
  v11 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_hardPaywallGradientView);
  [v10 addSubview_];
  [v10 addSubview_];
  sub_1D775C038(0, &qword_1EE08FA00, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D78BCCA0;
  v13 = objc_opt_self();
  v14 = [v13 blackColor];
  v15 = [v14 colorWithAlphaComponent_];

  *(v12 + 32) = v15;
  v16 = [v13 blackColor];
  v17 = [v16 colorWithAlphaComponent_];

  *(v12 + 40) = v17;
  (*(v2 + 104))(v4, *MEMORY[0x1E69D7B60], v21);
  sub_1D78B48C4();
  v18 = sub_1D78B48E4();
  (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
  sub_1D78B4554();
  return [v11 setHidden_];
}

uint64_t sub_1D784BDE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallCollectionView);
  v2 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_dataSource);
  [v1 setDataSource_];
  [v1 setDelegate_];
  swift_getObjectType();
  sub_1D78B54C4();
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemSupplementaryRenderer), *(v2 + OBJC_IVAR____TtC16NewsSubscription39FlexiblePaywallCollectionViewDataSource_feedItemSupplementaryRenderer + 24));
  return sub_1D78B5674();
}

uint64_t sub_1D784BEA4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[7];
  v37 = a1[6];
  v38 = v4;
  v39 = *(a1 + 16);
  v5 = a1[1];
  v31 = *a1;
  v32 = v5;
  v6 = a1[3];
  v33 = a1[2];
  v34 = v6;
  v7 = a1[5];
  v35 = a1[4];
  v36 = v7;
  if (*&v31 == 0.0)
  {
    sub_1D7851D38(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
    v30[0] = 0;
    v30[1] = 0;
    swift_allocObject();
    return sub_1D78B4104();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D78B57A4();
    sub_1D78B41F4();
    *(swift_allocObject() + 16) = v3;
    v11 = v3;
    v12 = sub_1D78B4014();
    type metadata accessor for PurchaseMetaDataFetchResult(0);
    sub_1D78B4084();

    v13 = swift_allocObject();
    v14 = v35;
    *(v13 + 104) = v36;
    v15 = v38;
    *(v13 + 120) = v37;
    *(v13 + 136) = v15;
    v16 = v31;
    *(v13 + 40) = v32;
    v17 = v34;
    *(v13 + 56) = v33;
    *(v13 + 72) = v17;
    *(v13 + 88) = v14;
    *(v13 + 16) = v11;
    v18 = v39;
    *(v13 + 24) = v16;
    *(v13 + 152) = v18;
    *(v13 + 160) = a2;
    *(v13 + 168) = a3;
    v19 = v11;
    sub_1D77CB0EC(&v31, v30);
    sub_1D78B53C4();

    sub_1D78B4084();

    sub_1D773F004(0, &qword_1EE08FE10);
    v20 = sub_1D78B6104();
    v21 = swift_allocObject();
    v22 = v35;
    *(v21 + 104) = v36;
    v23 = v38;
    *(v21 + 120) = v37;
    *(v21 + 136) = v23;
    v24 = v31;
    *(v21 + 40) = v32;
    v25 = v34;
    *(v21 + 56) = v33;
    *(v21 + 72) = v25;
    *(v21 + 88) = v22;
    *(v21 + 16) = v19;
    *(v21 + 152) = v39;
    *(v21 + 24) = v24;
    v26 = v19;
    sub_1D77CB0EC(&v31, v30);
    type metadata accessor for CGSize(0);
    sub_1D78B4084();

    *(swift_allocObject() + 16) = v26;
    v27 = v26;
    v28 = sub_1D78B4014();
    v29 = sub_1D78B40D4();

    return v29;
  }
}

uint64_t sub_1D784C248(uint64_t a1)
{
  v2 = MEMORY[0x1E69B6118];
  sub_1D7851D38(0, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_1D78B57A4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_resolvedContent;
  swift_beginAccess();
  sub_1D785450C(a1 + v13, v5, &qword_1EE090290, v2);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D785449C(v5, &qword_1EE090290, MEMORY[0x1E69B6118]);
    v14 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208);
    v15 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176);
    v60 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 192);
    v61 = v14;
    v16 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208);
    v17 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 240);
    v62 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224);
    v63 = v17;
    v18 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144);
    v19 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112);
    v56 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 128);
    v57 = v18;
    v20 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144);
    v21 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176);
    v58 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 160);
    v59 = v21;
    v22 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80);
    v23 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48);
    v52 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 64);
    v53 = v22;
    v24 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80);
    v25 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112);
    v54 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 96);
    v55 = v25;
    v26 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16);
    v49[0] = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
    v49[1] = v26;
    v27 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48);
    v29 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
    v28 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16);
    v50 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 32);
    v51 = v27;
    v45 = v60;
    v46 = v16;
    v30 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 240);
    v47 = v62;
    v48 = v30;
    v41 = v56;
    v42 = v20;
    v43 = v58;
    v44 = v15;
    v37 = v52;
    v38 = v24;
    v39 = v54;
    v40 = v19;
    v33 = v29;
    v34 = v28;
    v35 = v50;
    v36 = v23;
    sub_1D7772AE8(v49, v64);
    v31 = sub_1D77E9558(&v33);
    v64[12] = v45;
    v64[13] = v46;
    v64[14] = v47;
    v64[15] = v48;
    v64[8] = v41;
    v64[9] = v42;
    v64[10] = v43;
    v64[11] = v44;
    v64[4] = v37;
    v64[5] = v38;
    v64[6] = v39;
    v64[7] = v40;
    v64[0] = v33;
    v64[1] = v34;
    v64[2] = v35;
    v64[3] = v36;
    sub_1D7772B44(v64);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v10, v12, v6);
    sub_1D7851D38(0, &unk_1EE095260, MEMORY[0x1E69B6118], MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v31 = sub_1D78B4104();
    (*(v7 + 8))(v12, v6);
  }

  return v31;
}

uint64_t sub_1D784C5D8(uint64_t a1, uint64_t a2)
{
  sub_1D7851D38(0, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1D78B57A4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_resolvedContent;
  swift_beginAccess();
  sub_1D78534B0(v6, a2 + v9);
  swift_endAccess();
  return sub_1D784C738(a1);
}

uint64_t sub_1D784C738(uint64_t a1)
{
  v46 = a1;
  v2 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D78B57A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel];
  v9 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208];
  v75 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 192];
  v76 = v9;
  v10 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 240];
  v77 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224];
  v78 = v10;
  v11 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144];
  v71 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 128];
  v72 = v11;
  v12 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176];
  v73 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 160];
  v74 = v12;
  v13 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80];
  v67 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 64];
  v68 = v13;
  v14 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112];
  v69 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 96];
  v70 = v14;
  v15 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16];
  v63 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel];
  v64 = v15;
  v16 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48];
  v65 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 32];
  v66 = v16;
  if (PaywallModel.purchaseType.getter())
  {
    (*(v6 + 16))(v4, v46, v5);
    v17 = *&v1[OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_bundlePurchasePrewarmer + 8];
    ObjectType = swift_getObjectType();
    *&v4[*(v2 + 20)] = (*(v17 + 8))(ObjectType, v17);
  }

  else
  {
    v45 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = *(v8 + 13);
    v59 = *(v8 + 12);
    v60 = v19;
    v20 = *(v8 + 15);
    v61 = *(v8 + 14);
    v62 = v20;
    v21 = *(v8 + 9);
    v55 = *(v8 + 8);
    v56 = v21;
    v22 = *(v8 + 11);
    v57 = *(v8 + 10);
    v58 = v22;
    v23 = *(v8 + 5);
    v51 = *(v8 + 4);
    v52 = v23;
    v24 = *(v8 + 7);
    v53 = *(v8 + 6);
    v54 = v24;
    v25 = *(v8 + 1);
    v47 = *v8;
    v48 = v25;
    v26 = *(v8 + 3);
    v49 = *(v8 + 2);
    v50 = v26;
    v27 = PaywallModel.purchaseIDs.getter();
    if (v27)
    {
      if (v27[2])
      {
        v28 = v27[4];
        v29 = v27[5];

        MEMORY[0x1EEE9AC00](v30);
        v41[-4] = v1;
        v41[-3] = v28;
        v41[-2] = v29;
        sub_1D773F004(0, &qword_1EE08FF20);
        v41[2] = sub_1D78B41F4();

        v31 = *(v6 + 16);
        v43 = v6 + 16;
        v44 = v31;
        v41[1] = v2;
        v32 = v45;
        v31(v45, v46, v5);
        v33 = *(v6 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = v1;
        v42 = *(v6 + 32);
        v42(v34 + ((v33 + 24) & ~v33), v32, v5);
        v35 = v1;
        v36 = sub_1D78B4014();
        sub_1D78B4084();

        v44(v32, v46, v5);
        v37 = swift_allocObject();
        v42(v37 + ((v33 + 16) & ~v33), v32, v5);
        v38 = sub_1D78B4014();
        v39 = sub_1D78B4134();

        return v39;
      }
    }

    (*(v6 + 16))(v4, v46, v5);
    *&v4[*(v2 + 20)] = 0;
  }

  sub_1D7851D38(0, &qword_1EE0952A8, type metadata accessor for PurchaseMetaDataFetchResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D784CBB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1D7851D38(0, &qword_1EE095270, MEMORY[0x1E69B5990], MEMORY[0x1E69D6B18]);
  sub_1D78543D4(a1, &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for PurchaseMetaDataFetchResult);
  v13 = (*(v11 + 80) + 160) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = *(a3 + 64);
  *(v14 + 104) = *(a3 + 80);
  v16 = *(a3 + 112);
  *(v14 + 120) = *(a3 + 96);
  *(v14 + 136) = v16;
  v17 = *a3;
  *(v14 + 40) = *(a3 + 16);
  v18 = *(a3 + 48);
  *(v14 + 56) = *(a3 + 32);
  *(v14 + 72) = v18;
  *(v14 + 88) = v15;
  *(v14 + 16) = a2;
  *(v14 + 152) = *(a3 + 128);
  *(v14 + 24) = v17;
  sub_1D7851E40(&v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v14 + v13);
  v19 = (v14 + ((v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a4;
  v19[1] = a5;
  v20 = a2;
  sub_1D77CB0EC(a3, v23);

  return sub_1D78B40C4();
}

uint64_t sub_1D784CD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 112);
  v10[6] = *(a3 + 96);
  v10[7] = v3;
  v11 = *(a3 + 128);
  v4 = *(a3 + 48);
  v10[2] = *(a3 + 32);
  v10[3] = v4;
  v5 = *(a3 + 80);
  v10[4] = *(a3 + 64);
  v10[5] = v5;
  v6 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v6;
  sub_1D784CE5C(a1, v10);
  sub_1D78B53B4();
  *&v10[0] = v7;
  *(&v10[0] + 1) = v8;
  sub_1D7851D38(0, &qword_1EE0951E0, type metadata accessor for CGSize, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

id sub_1D784CE5C(uint64_t a1, double *a2)
{
  v3 = v2;
  v4 = *a2;
  Height = a2[1];
  v6 = a2[6];
  v7 = a2[8];
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallLayoutProvider), *(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallLayoutProvider + 24));

  sub_1D78B53B4();
  sub_1D78B5384();
  sub_1D78B53A4();
  sub_1D78B5394();
  sub_1D78B3AD4();

  v8 = *(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallView);
  if (*(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224) == 1)
  {
    [*(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallView) setFrame_];
    if (sub_1D78B5244())
    {
      [v8 frame];
      Height = CGRectGetHeight(v18);
    }

    v9 = Height - v6 - v7;
    sub_1D78B53B4();
    v10 = CGRectGetHeight(v19);
    if (v9 < v10)
    {
      v10 = v9 * 80.0 / 100.0;
    }

    v11 = sub_1D78B5244();
    [v8 frame];
    v12 = CGRectGetHeight(v20) - v10;
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 - v7;
    }

    v14 = *(v3 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallCollectionView);
    [v14 setFrame_];
    v15 = sub_1D78B5244();
    v16 = *(v3 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_hardPaywallGradientView);
    if (v15)
    {
      [v16 setFrame_];
    }

    else
    {
      [v16 setFrame_];
    }

    [v16 setHidden_];
  }

  else
  {
    sub_1D78B53B4();
    [v8 setFrame_];
    v14 = *(v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallCollectionView);
    [v8 bounds];
    [v14 setFrame_];
    [*(v3 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_hardPaywallGradientView) setHidden_];
  }

  return [v14 reloadData];
}

uint64_t sub_1D784D12C()
{
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D78BCB50;
  v1 = PaywallModel.description.getter();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D775ABD4();
  *(v0 + 64) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  *&v7 = 0;
  *(&v7 + 1) = 0xE000000000000000;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 72) = v7;
  sub_1D78B42C4();
}

uint64_t sub_1D784D304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v68 = a4;
  v66 = a3;
  v82 = a6;
  v8 = MEMORY[0x1E69E6720];
  sub_1D7851D38(0, &qword_1EE095428, MEMORY[0x1E69D7318], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v71 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v70 = v48 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v67 = v48 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v65 = v48 - v16;
  v73 = sub_1D78B37A4();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v64 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D78B5604();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D78B3784();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v57 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D78B3774();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v55 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D78B3754();
  v51 = v22;
  v52 = *(v22 - 8);
  v23 = v52;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1E69B5FB0];
  sub_1D7851D38(0, &qword_1EE0902B0, MEMORY[0x1E69B5FB0], v8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v48 - v27;
  v54 = sub_1D78B5684();
  v29 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v31 = v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v53 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_feedLayoutSolver);
  (*(v29 + 104))(v31, **(&unk_1E84E2078 + *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16)));
  v32 = sub_1D78B56C4();
  (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
  (*(v23 + 104))(v25, *MEMORY[0x1E69D7110], v22);
  sub_1D78B6194();
  v33 = *(a2 + 24);
  v50 = *(a2 + 16);
  v49 = v33;
  v34 = *(a2 + 80);
  v48[2] = *(a2 + 88);
  v35 = *(a2 + 128);
  v36 = *(a2 + 48);
  v48[1] = *(a2 + 32);
  v48[0] = v36;
  sub_1D78B5474();
  v37 = v34;
  v38 = v35;
  sub_1D78B5464();
  sub_1D78B5454();

  v39 = v55;
  sub_1D78B3764();
  v40 = v60;
  sub_1D784DC78(v60);
  v57 = sub_1D78B53F4();
  (*(v62 + 8))(v40, v63);
  (*(v59 + 8))(v39, v61);
  (*(v52 + 8))(v25, v51);
  sub_1D785449C(v28, &qword_1EE0902B0, v58);
  (*(v29 + 8))(v31, v54);
  v41 = *(v66 + *(type metadata accessor for PurchaseMetaDataFetchResult(0) + 20));
  v42 = v66;
  v43 = sub_1D78B5794();
  v75 = v42;
  v76 = v56;
  v77 = v41;
  v78 = v68;
  v79 = v69;
  sub_1D78A3294(sub_1D7851F48, v74, v43);

  v44 = sub_1D78B37B4();
  memset(v80, 0, sizeof(v80));
  v81 = 0;
  v45 = *(*(v44 - 8) + 56);
  v45(v65, 1, 1, v44);
  v45(v67, 1, 1, v44);
  v45(v70, 1, 1, v44);
  v45(v71, 1, 1, v44);
  v46 = v64;
  sub_1D78B3794();
  sub_1D78B53D4();

  (*(v72 + 8))(v46, v73);
  sub_1D7851F6C(v80);
  sub_1D78B53E4();
}

uint64_t sub_1D784DC78@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_1D78B55F4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v21 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D78B5524();
  v3 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D78B5544();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D78B5564();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D78B5594();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D78B55B4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1D78B55C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7851D38(0, &qword_1EE0902E0, MEMORY[0x1E69B5BB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v19 - v15;
  v17 = sub_1D78B5574();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 104))(v13, *MEMORY[0x1E69B5BC0], v10);
  sub_1D78B55A4();
  sub_1D78B5554();
  sub_1D78B5554();
  (*(v3 + 104))(v5, *MEMORY[0x1E69B5BA8], v20);
  sub_1D78B5534();
  sub_1D78B55E4();
  return sub_1D78B55D4();
}

uint64_t sub_1D784E070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v252 = a3;
  v223 = a6;
  v224 = a5;
  v229 = a4;
  v256 = a2;
  v9 = MEMORY[0x1E69E6720];
  sub_1D7851D38(0, &qword_1EE0902E8, MEMORY[0x1E69B5B80], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v225 = &v217 - v11;
  v12 = sub_1D78B5364();
  v234 = *(v12 - 8);
  v235 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v251 = &v217 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_1D78B57A4();
  v237 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v236 = v14;
  v245 = &v217 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D78B5704();
  v232 = *(v15 - 8);
  v233 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v250 = &v217 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7851D38(0, &unk_1EE090210, MEMORY[0x1E69B6808], v9);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v242 = &v217 - v18;
  v19 = sub_1D78B5444();
  v243 = *(v19 - 8);
  v244 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v241 = &v217 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v255 = &v217 - v22;
  v23 = sub_1D78B56E4();
  v248 = *(v23 - 8);
  v249 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v247 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D78B33C4();
  v227 = *(v25 - 8);
  v228 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v226 = &v217 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_1D78B56F4();
  v254 = *(v240 - 8);
  v27 = MEMORY[0x1EEE9AC00](v240);
  v239 = &v217 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v238 = &v217 - v29;
  v276 = sub_1D78B5A54();
  v257 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v275 = &v217 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v272 = sub_1D78B5824();
  v266 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v271 = &v217 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v264 = sub_1D78B56A4();
  v265 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v270 = &v217 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D78B5954();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v217 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1D78B59A4();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v230 = v40;
  v231 = &v217 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v217 - v41;
  (*(v34 + 16))(v36, a1, v33);
  if ((*(v34 + 88))(v36, v33) != *MEMORY[0x1E69B6408])
  {
    result = (*(v34 + 8))(v36, v33);
    *a7 = 0;
    return result;
  }

  v220 = a7;
  (*(v34 + 96))(v36, v33);
  v218 = *(v38 + 32);
  v219 = v38 + 32;
  v218(v42, v36, v37);
  v253 = v42;
  v43 = sub_1D78B5984();
  v44 = *(v43 + 16);
  v221 = v38;
  v222 = v37;
  if (v44)
  {
    v45 = MEMORY[0x1E69E7CC0];
    *&v295 = MEMORY[0x1E69E7CC0];
    v46 = v43;
    sub_1D77D9A04(0, v44, 0);
    v47 = v46;
    v48 = 0;
    v261 = v46 + ((*(v266 + 80) + 32) & ~*(v266 + 80));
    *&v262 = v44;
    v49 = v295;
    v273 = (v257 + 8);
    v274 = (v257 + 16);
    v259 = (v266 + 8);
    v260 = v266 + 16;
    v258 = v265 + 32;
    *&v263 = v46;
    while (v48 < *(v47 + 16))
    {
      v268 = v48;
      v269 = v49;
      (*(v266 + 16))(v271, v261 + *(v266 + 72) * v48, v272);
      v50 = sub_1D78B57F4();
      v51 = *(v50 + 16);
      if (v51)
      {
        *&v279 = v45;
        sub_1D77D9874(0, v51, 0);
        v52 = v279;
        v53 = *(v257 + 80);
        v267 = v50;
        v54 = v50 + ((v53 + 32) & ~v53);
        v278 = *(v257 + 72);
        v277 = *(v257 + 16);
        do
        {
          v55 = v275;
          v56 = v276;
          v277(v275, v54, v276);
          v57 = sub_1D78B5A44();
          v59 = v58;
          (*v273)(v55, v56);
          *&v279 = v52;
          v61 = *(v52 + 16);
          v60 = *(v52 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_1D77D9874((v60 > 1), v61 + 1, 1);
            v52 = v279;
          }

          *(v52 + 16) = v61 + 1;
          v62 = v52 + 16 * v61;
          *(v62 + 32) = v57;
          *(v62 + 40) = v59;
          v54 += v278;
          --v51;
        }

        while (v51);

        v63 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v52 = v45;
        v63 = v45;
      }

      v278 = sub_1D77E58E8(v52);

      v64 = v271;
      sub_1D78B57E4();
      sub_1D78B5804();
      sub_1D78B5814();
      sub_1D7852D58(v63);
      sub_1D7852E6C(v63);
      sub_1D7852F64(v63);
      sub_1D78B5694();
      (*v259)(v64, v272);
      v49 = v269;
      *&v295 = v269;
      v66 = *(v269 + 16);
      v65 = *(v269 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1D77D9A04(v65 > 1, v66 + 1, 1);
        v49 = v295;
      }

      v48 = v268 + 1;
      *(v49 + 16) = v66 + 1;
      (*(v265 + 32))(v49 + ((*(v265 + 80) + 32) & ~*(v265 + 80)) + *(v265 + 72) * v66, v270, v264);
      v47 = v263;
      v45 = MEMORY[0x1E69E7CC0];
      if (v48 == v262)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_62:
    swift_once();
    goto LABEL_22;
  }

  v49 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v331 = MEMORY[0x1E69E7CD0];
  sub_1D78B5774();
  sub_1D78B5974();
  v68 = v239;
  sub_1D78B5334();
  v69 = *MEMORY[0x1E69B5FF0];
  v70 = v254;
  v71 = v240;
  v274 = *(v254 + 104);
  v275 = (v254 + 104);
  v274(v68, v69, v240);
  v72 = v238;
  sub_1D78A6DDC(v238, v68);
  v73 = *(v70 + 8);
  v254 = v70 + 8;
  v273 = v73;
  (v73)(v72, v71);
  v74 = v252;
  v45 = (v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerOverrideProvider);
  v75 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerOverrideProvider + 24);
  v76 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerOverrideProvider + 32);
  __swift_project_boxed_opaque_existential_1((v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerOverrideProvider), v75);
  LOBYTE(v295) = 13;
  LODWORD(v272) = (*(v76 + 72))(&v295, v75, v76);
  v77 = v45[3];
  v78 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v77);
  LOBYTE(v295) = 13;
  v79 = (*(v78 + 80))(&v295, v77, v78);
  v270 = v80;
  v271 = v79;
  v81 = v45[3];
  v82 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v81);
  LOBYTE(v295) = 13;
  v83 = (*(v82 + 56))(&v295, v81, v82);
  v267 = v84;
  v268 = v83;
  v85 = v45[3];
  v86 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v85);
  LOBYTE(v295) = 13;
  v87 = (*(v86 + 64))(&v295, v85, v86);
  v265 = v88;
  v266 = v87;
  v89 = v226;
  sub_1D78B33B4();
  v278 = sub_1D78B33A4();
  v277 = v90;
  (*(v227 + 8))(v89, v228);
  v91 = *(v74 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_offerManager + 8);
  ObjectType = swift_getObjectType();
  LODWORD(v276) = (*(v91 + 48))(ObjectType, v91);
  v93 = v229;
  if (v229)
  {
    v94 = *(v74 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_subscribeButtonTextProvider + 32);
    __swift_project_boxed_opaque_existential_1((v74 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_subscribeButtonTextProvider), *(v74 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_subscribeButtonTextProvider + 24));
    v95 = *(v94 + 8);
    v96 = v93;
    v95();
    sub_1D78B5434();
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v98 = [objc_opt_self() bundleForClass_];
    sub_1D78B3134();

    sub_1D78B5434();
  }

  if (qword_1EE08FB90 != -1)
  {
    goto LABEL_62;
  }

LABEL_22:
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1D78BCAB0;
  v100 = sub_1D775ABD4();
  v101 = (v276 & 1) == 0;
  v102 = 28526;
  if (v276)
  {
    v102 = 7562617;
  }

  v103 = 0xE200000000000000;
  *(v99 + 56) = MEMORY[0x1E69E6158];
  *(v99 + 64) = v100;
  if (!v101)
  {
    v103 = 0xE300000000000000;
  }

  *(v99 + 32) = v102;
  *(v99 + 40) = v103;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v104 = (v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
  v105 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 168);
  v106 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 200);
  v326 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 184);
  v327 = v106;
  v328 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 216);
  v107 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 104);
  v108 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 136);
  v322 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 120);
  v323 = v108;
  v109 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 152);
  v325 = v105;
  v324 = v109;
  v110 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 40);
  v111 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 72);
  v318 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 56);
  v319 = v111;
  v112 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 88);
  v321 = v107;
  v320 = v112;
  v113 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 24);
  v317 = v110;
  v316 = v113;
  v114 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 168);
  v115 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 200);
  v329[10] = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 184);
  v329[11] = v115;
  v330 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 216);
  v116 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 104);
  v117 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 136);
  v329[6] = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 120);
  v329[7] = v117;
  v118 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 152);
  v329[9] = v114;
  v329[8] = v118;
  v119 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 40);
  v120 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 72);
  v329[2] = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 56);
  v329[3] = v120;
  v121 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 88);
  v329[5] = v116;
  v329[4] = v121;
  v122 = *(v252 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 24);
  v329[1] = v119;
  v329[0] = v122;
  v123 = sub_1D77C19C8(v329);
  if (v123 > 1)
  {
    if (v123 == 2)
    {
      v136 = nullsub_1(v329);
      v137 = *(v136 + 16);
      v297 = v318;
      v298[0] = v319;
      v295 = v316;
      v296 = v317;
      v300 = v322;
      v301 = v323;
      v298[1] = v320;
      v299 = v321;
      LOBYTE(v306) = v328;
      v304 = v326;
      v305 = v327;
      v302 = v324;
      v303 = v325;
      v138 = nullsub_1(&v295);
      sub_1D78543D4(v138, &v279, sub_1D77C33E0);

      v126 = *(v136 + 96);
      v127 = *(v136 + 72);
      v128 = *(v136 + 80);
      v129 = *(v136 + 64);
      v130 = *(v136 + 56);
      v131 = *(v136 + 40);
      v132 = *(v136 + 24);
      v139 = *(v136 + 152);
      v312 = *(v136 + 136);
      v313 = v139;
      v314 = *(v136 + 168);
      v315 = *(v136 + 184);
      v134 = *(v136 + 104);
      v135 = *(v136 + 120);
    }

    else
    {
      v140 = nullsub_1(v329);
      v126 = *(v140 + 72);
      v127 = *(v140 + 48);
      v141 = *(v140 + 56);
      v129 = *(v140 + 40);
      v130 = *(v140 + 32);
      v142 = *v140;
      v263 = *(v140 + 16);
      v264 = v141;
      v262 = v142;
      v300 = v322;
      v301 = v323;
      v298[1] = v320;
      v299 = v321;
      LOBYTE(v306) = v328;
      v304 = v326;
      v305 = v327;
      v297 = v318;
      v298[0] = v319;
      v302 = v324;
      v303 = v325;
      v295 = v316;
      v296 = v317;
      v143 = nullsub_1(&v295);
      sub_1D78543D4(v143, &v279, sub_1D77C3318);
      v132 = v262;
      v131 = v263;
      v128 = v264;
      v144 = *(v140 + 128);
      v312 = *(v140 + 112);
      v313 = v144;
      v314 = *(v140 + 144);
      v315 = *(v140 + 160);
      v134 = *(v140 + 80);
      v135 = *(v140 + 96);
    }
  }

  else
  {
    if (v123)
    {
      nullsub_1(v329);
      goto LABEL_34;
    }

    v124 = nullsub_1(v329);
    v297 = v318;
    v298[0] = v319;
    v295 = v316;
    v296 = v317;
    v300 = v322;
    v301 = v323;
    v298[1] = v320;
    v299 = v321;
    LOBYTE(v306) = v328;
    v304 = v326;
    v305 = v327;
    v302 = v324;
    v303 = v325;
    v125 = nullsub_1(&v295);
    sub_1D78543D4(v125, &v279, sub_1D77C34F8);

    v126 = *(v124 + 88);
    v127 = *(v124 + 64);
    v128 = *(v124 + 72);
    v129 = *(v124 + 56);
    v130 = *(v124 + 48);
    v132 = *(v124 + 16);
    v131 = *(v124 + 32);
    v133 = *(v124 + 144);
    v312 = *(v124 + 128);
    v313 = v133;
    v314 = *(v124 + 160);
    v315 = *(v124 + 176);
    v134 = *(v124 + 96);
    v135 = *(v124 + 112);
  }

  v310 = v134;
  v311 = v135;
  v295 = v132;
  v296 = v131;
  *&v297 = v130;
  BYTE8(v297) = v129;
  LOBYTE(v298[0]) = v127;
  *(v298 + 8) = v128;
  *(&v298[1] + 1) = v126;
  v301 = v312;
  v302 = v313;
  v303 = v314;
  *&v304 = v315;
  v299 = v134;
  v300 = v135;
  v287 = v313;
  v288 = v314;
  *&v289 = v315;
  v283 = v298[1];
  v284 = v134;
  v285 = v135;
  v286 = v312;
  v279 = v132;
  v280 = v131;
  v281 = v297;
  v282 = v298[0];
  sub_1D784FE84();
  sub_1D778D0B0(&v295);
LABEL_34:
  v145 = *(v104 + 28);
  if (v145 >= 3)
  {
    *&v295 = *(v104 + 28);
    result = sub_1D78B6764();
    __break(1u);
  }

  else
  {
    v146 = *(v104 + 16);
    v269 = v49;
    if (v146 <= 3)
    {
      v147 = 0xEB00000000646565;
      if (v146 == 2)
      {
        v147 = 0xE900000000000064;
      }

      v149 = 0xE700000000000000;
      if (v146)
      {
        v149 = 0xE800000000000000;
      }

      v150 = v146 <= 1;
    }

    else
    {
      v147 = 0xED00006461656874;
      v148 = 0xE800000000000000;
      if (v146 != 7)
      {
        v148 = 0xE600000000000000;
      }

      if (v146 != 6)
      {
        v147 = v148;
      }

      v149 = 0xEC00000064656546;
      if (v146 != 4)
      {
        v149 = 0xE600000000000000;
      }

      v150 = v146 <= 5;
    }

    if (v150)
    {
      v151 = v149;
    }

    else
    {
      v151 = v147;
    }

    v152 = *&aNone_5[8 * v145];
    LODWORD(v262) = sub_1D78506E8();
    v153 = v104[13];
    v306 = v104[12];
    v307 = v153;
    v154 = v104[15];
    v308 = v104[14];
    v309 = v154;
    v155 = v104[9];
    v302 = v104[8];
    v303 = v155;
    v156 = v104[11];
    v304 = v104[10];
    v305 = v156;
    v157 = v104[5];
    v298[1] = v104[4];
    v299 = v157;
    v158 = v104[7];
    v300 = v104[6];
    v301 = v158;
    v159 = v104[1];
    v295 = *v104;
    v296 = v159;
    v160 = v104[3];
    v297 = v104[2];
    v298[0] = v160;
    v161 = [PaywallModel.tag.getter() name];
    swift_unknownObjectRelease();
    v162 = sub_1D78B5C74();
    v260 = v163;
    v261 = v162;

    v164 = v104[13];
    v291 = v104[12];
    v292 = v164;
    v165 = v104[15];
    v293 = v104[14];
    v294 = v165;
    v166 = v104[9];
    v287 = v104[8];
    v288 = v166;
    v167 = v104[11];
    v289 = v104[10];
    v290 = v167;
    v168 = v104[5];
    v283 = v104[4];
    v284 = v168;
    v169 = v104[7];
    v285 = v104[6];
    v286 = v169;
    v170 = v104[1];
    v279 = *v104;
    v280 = v170;
    v171 = v104[3];
    v281 = v104[2];
    v282 = v171;
    v172 = [PaywallModel.tag.getter() publisherPaidOfferableConfigurations];
    swift_unknownObjectRelease();
    *&v264 = v151;
    *&v263 = v152;
    if (v172)
    {
      sub_1D773F004(0, &qword_1EE08FC48);
      v173 = sub_1D78B5EB4();

      if (v173 >> 62)
      {
        sub_1D78B6534();
      }
    }

    (*(v243 + 16))(v241, v255, v244);
    v174 = v45[3];
    v175 = v45[4];
    __swift_project_boxed_opaque_existential_1(v45, v174);
    LOBYTE(v279) = 13;
    (*(v175 + 88))(&v279, v174, v175);
    if (!*(v104 + 16))
    {
      swift_unknownObjectRetain();
    }

    v176 = v247;
    sub_1D78B56D4();
    (*(v243 + 8))(v255, v244);
    v177 = v239;
    (*(v248 + 16))(v239, v176, v249);
    v178 = v240;
    v274(v177, *MEMORY[0x1E69B5FF8], v240);
    v179 = v238;
    sub_1D78A6DDC(v238, v177);
    (v273)(v179, v178);
    v180 = v256;
    v181 = sub_1D78B5764();
    v275 = v182;
    v276 = v181;
    v274 = v331;
    v183 = sub_1D78B5764();
    v185 = v184;
    v186 = v253;
    v187 = sub_1D78B5964();
    v189 = v188;
    *&v295 = v183;
    *(&v295 + 1) = v185;

    MEMORY[0x1DA702FF0](v187, v189);

    v272 = *(&v295 + 1);
    v273 = v295;
    v190 = v237;
    v271 = *(v237 + 16);
    v191 = v245;
    (v271)(v245, v180, v246);
    v192 = v221 + 16;
    v270 = *(v221 + 16);
    v193 = v231;
    (v270)(v231, v186, v222);
    v194 = v250;
    v195 = v191;
    sub_1D78B5A84();
    (*(v232 + 104))(v194, *MEMORY[0x1E69B6018], v233);
    (*(v234 + 104))(v251, *MEMORY[0x1E69B5958], v235);
    v196 = sub_1D78B5764();
    v198 = v197;
    *(&v296 + 1) = &type metadata for FlexiblePaywallFeedGroup;
    *&v297 = sub_1D785315C();
    v199 = swift_allocObject();
    *&v295 = v199;
    v199[2] = v196;
    v199[3] = v198;
    v199[4] = 0x6C6C6177796150;
    v199[5] = 0xE700000000000000;
    v199[6] = 0;
    v199[7] = 0;
    v200 = v246;
    (v271)(v195, v180, v246);
    v201 = v222;
    (v270)(v193, v253, v222);
    v202 = (*(v190 + 80) + 16) & ~*(v190 + 80);
    v203 = (v236 + *(v192 + 64) + v202) & ~*(v192 + 64);
    v204 = swift_allocObject();
    (*(v190 + 32))(v204 + v202, v245, v200);
    v205 = v193;
    v206 = v201;
    v218((v204 + v203), v205, v201);
    v207 = sub_1D78B5324();
    swift_allocObject();
    v208 = sub_1D78B5314();
    if (v208)
    {
      v209 = MEMORY[0x1E69B58F0];
    }

    else
    {
      v207 = 0;
      v209 = 0;
      *&v296 = 0;
      *(&v295 + 1) = 0;
    }

    v210 = v220;
    v211 = v225;
    *&v295 = v208;
    *(&v296 + 1) = v207;
    *&v297 = v209;
    v212 = sub_1D78B5514();
    (*(*(v212 - 8) + 56))(v211, 1, 1, v212);
    v213 = sub_1D78B5784();
    v214 = v253;
    v215 = sub_1D78B5994();
    sub_1D784FD80(v215, v213);
    sub_1D78B5354();
    swift_allocObject();
    v216 = sub_1D78B5344();
    (*(v248 + 8))(v247, v249);
    result = (*(v221 + 8))(v214, v206);
    *v210 = v216;
  }

  return result;
}

uint64_t sub_1D784FBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B59A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D78B57A4();
  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v5 + 16))(v7, a2, v4);
  sub_1D78B54B4();
  swift_allocObject();
  return sub_1D78B54A4();
}

uint64_t sub_1D784FD80(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1D78A6C8C(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

size_t sub_1D784FE84()
{
  v1 = sub_1D78B58B4();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D78B5754();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = MEMORY[0x1E69E7CC0];
  v6 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 168);
  v7 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 200);
  v106 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 184);
  v107 = v7;
  v108 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 216);
  v8 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 104);
  v9 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 136);
  v102 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 120);
  v103 = v9;
  v104 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 152);
  v105 = v6;
  v10 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 40);
  v11 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 72);
  v98 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 56);
  v99 = v11;
  v100 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 88);
  v101 = v8;
  v96 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 24);
  v97 = v10;
  v12 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 168);
  v13 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 200);
  v109[10] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 184);
  v109[11] = v13;
  v110 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 216);
  v14 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 104);
  v15 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 136);
  v109[6] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 120);
  v109[7] = v15;
  v109[8] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 152);
  v109[9] = v12;
  v16 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 40);
  v17 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 72);
  v109[2] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 56);
  v109[3] = v17;
  v109[4] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 88);
  v109[5] = v14;
  v109[0] = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 24);
  v109[1] = v16;
  v18 = sub_1D77C19C8(v109);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v31 = nullsub_1(v109);
      v32 = *(v31 + 16);
      v85 = v98;
      v86[0] = v99;
      v83 = v96;
      v84 = v97;
      v88 = v102;
      v89 = v103;
      v86[1] = v100;
      v87 = v101;
      v94 = v108;
      v92 = v106;
      v93 = v107;
      v90 = v104;
      v91 = v105;
      v33 = nullsub_1(&v83);
      sub_1D78543D4(v33, v75, sub_1D77C33E0);

      v21 = *(v31 + 96);
      v22 = *(v31 + 72);
      v23 = *(v31 + 80);
      v24 = *(v31 + 64);
      v25 = *(v31 + 56);
      v26 = *(v31 + 40);
      v27 = *(v31 + 24);
      v34 = *(v31 + 152);
      v76 = *(v31 + 136);
      v77 = v34;
      v78 = *(v31 + 168);
      v79 = *(v31 + 184);
      v29 = *(v31 + 104);
      v30 = *(v31 + 120);
    }

    else
    {
      v35 = nullsub_1(v109);
      v21 = *(v35 + 72);
      v22 = *(v35 + 48);
      v36 = *(v35 + 56);
      v24 = *(v35 + 40);
      v25 = *(v35 + 32);
      v37 = *v35;
      v73 = *(v35 + 16);
      v74 = v36;
      v72 = v37;
      v88 = v102;
      v89 = v103;
      v86[1] = v100;
      v87 = v101;
      v94 = v108;
      v92 = v106;
      v93 = v107;
      v85 = v98;
      v86[0] = v99;
      v90 = v104;
      v91 = v105;
      v83 = v96;
      v84 = v97;
      v38 = nullsub_1(&v83);
      sub_1D78543D4(v38, v75, sub_1D77C3318);
      v27 = v72;
      v26 = v73;
      v23 = v74;
      v39 = *(v35 + 128);
      v76 = *(v35 + 112);
      v77 = v39;
      v78 = *(v35 + 144);
      v79 = *(v35 + 160);
      v29 = *(v35 + 80);
      v30 = *(v35 + 96);
    }
  }

  else
  {
    if (v18)
    {
      nullsub_1(v109);
      return MEMORY[0x1E69E7CC0];
    }

    v19 = nullsub_1(v109);
    v85 = v98;
    v86[0] = v99;
    v83 = v96;
    v84 = v97;
    v88 = v102;
    v89 = v103;
    v86[1] = v100;
    v87 = v101;
    v94 = v108;
    v92 = v106;
    v93 = v107;
    v90 = v104;
    v91 = v105;
    v20 = nullsub_1(&v83);
    sub_1D78543D4(v20, v75, sub_1D77C34F8);

    v21 = *(v19 + 88);
    v22 = *(v19 + 64);
    v23 = *(v19 + 72);
    v24 = *(v19 + 56);
    v25 = *(v19 + 48);
    v27 = *(v19 + 16);
    v26 = *(v19 + 32);
    v28 = *(v19 + 144);
    v76 = *(v19 + 128);
    v77 = v28;
    v78 = *(v19 + 160);
    v79 = *(v19 + 176);
    v29 = *(v19 + 96);
    v30 = *(v19 + 112);
  }

  v75[0] = v29;
  v75[1] = v30;
  v83 = v27;
  v84 = v26;
  *&v85 = v25;
  BYTE8(v85) = v24;
  LOBYTE(v86[0]) = v22;
  *(v86 + 8) = v23;
  *(&v86[1] + 1) = v21;
  v89 = v76;
  v90 = v77;
  v91 = v78;
  *&v92 = v79;
  v87 = v29;
  v88 = v30;
  v40 = v21;
  sub_1D778D0B0(&v83);
  v41 = [v40 rawValues];

  sub_1D778CDF0();
  v42 = sub_1D78B5BC4();

  if (!*(v42 + 16))
  {
    goto LABEL_26;
  }

  v43 = sub_1D777BBB4(0x7475626972747461, 0xEA00000000007365);
  if ((v44 & 1) == 0)
  {
    goto LABEL_26;
  }

  v45 = *(*(v42 + 56) + 8 * v43);
  swift_unknownObjectRetain();

  v80[0] = v45;
  sub_1D777CABC();
  v47 = v46;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v48 = v82;
  if (!*(v82 + 16) || (v49 = sub_1D777BBB4(0x73726566666FLL, 0xE600000000000000), (v50 & 1) == 0))
  {
LABEL_26:

    return MEMORY[0x1E69E7CC0];
  }

  sub_1D777BE08(*(v48 + 56) + 32 * v49, v80);

  sub_1D775C038(0, &qword_1EE08FF98, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v51 = v82;
  if (*(v82 + 16))
  {
    sub_1D777BE08(v82 + 32, v80);
    if (swift_dynamicCast())
    {
      v71[1] = v51;
      *&v72 = v3;
      *&v73 = "eTrialEligible = %@";
      v52 = v82;
      v53 = swift_allocObject();
      *(v53 + 16) = sub_1D77FEE78(MEMORY[0x1E69E7CC0]);
      v81[1] = v47;
      v80[0] = v52;
      sub_1D7851154(v80, 0, 0xE000000000000000, v53);
      __swift_destroy_boxed_opaque_existential_1(v80);
      swift_beginAccess();
      v54 = *(v53 + 16);

      v55 = v54 + 64;
      v56 = 1 << *(v54 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v3 = v57 & *(v54 + 64);
      v58 = ((v56 + 63) >> 6);
      *&v74 = v54;

      v59 = 0;
      while (v3)
      {
        v60 = v59;
LABEL_24:
        v61 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
        v62 = v61 | (v60 << 6);
        v63 = (*(v74 + 48) + 16 * v62);
        v64 = *v63;
        v65 = v63[1];
        sub_1D777BE08(*(v74 + 56) + 32 * v62, v81);
        v80[0] = v64;
        v80[1] = v65;

        sub_1D7850900(v64, v65, v81, 0xD000000000000019, v73 | 0x8000000000000000, &v95);
        sub_1D785443C(v80, sub_1D78532E4);
      }

      while (1)
      {
        v60 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v60 >= v58)
        {

          v3 = v72;
          goto LABEL_29;
        }

        v3 = *(v55 + 8 * v60);
        ++v59;
        if (v3)
        {
          v59 = v60;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_34;
    }
  }

LABEL_29:

  sub_1D78B58A4();
  sub_1D78B5744();
  v58 = v95;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v58 = sub_1D777B71C(0, v58[2] + 1, 1, v58);
  }

  v67 = v58;
  v69 = v58[2];
  v68 = v58[3];
  if (v69 >= v68 >> 1)
  {
    v67 = sub_1D777B71C(v68 > 1, v69 + 1, 1, v58);
  }

  *(v67 + 16) = v69 + 1;
  v70 = v67;
  (*(v3 + 32))(v67 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v69, v5, v2);
  return v70;
}

BOOL sub_1D78506E8()
{
  v1 = (v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
  v41 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 192);
  v42 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208);
  v43 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224);
  v37 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 128);
  v38 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144);
  v39 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 160);
  v40 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176);
  v33 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 64);
  v34 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80);
  v35 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 96);
  v36 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112);
  v29 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
  v30 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16);
  v31 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 32);
  v32 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48);
  v2 = [PaywallModel.tag.getter() isAuthenticationSetup];
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_purchaseProvider);
  v25 = v1[12];
  v26 = v1[13];
  v27 = v1[14];
  v28 = v1[15];
  v21 = v1[8];
  v22 = v1[9];
  v23 = v1[10];
  v24 = v1[11];
  v17 = v1[4];
  v18 = v1[5];
  v19 = v1[6];
  v20 = v1[7];
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v4 = PaywallModel.tag.getter();
  if ([swift_unknownObjectRetain() tagType] != 3)
  {
    v6 = [v4 identifier];
    goto LABEL_7;
  }

  v5 = [v4 asSection];
  if (v5)
  {
    v6 = [v5 parentID];
    swift_unknownObjectRelease();
    if (v6)
    {
LABEL_7:
      v7 = sub_1D78B5C74();
      v9 = v8;

      v10 = [v3 purchasedTagIDs];
      v11 = sub_1D78B5F64();

      LOBYTE(v10) = sub_1D7832E64(v7, v9, v11);

      swift_unknownObjectRelease_n();
      return (v10 & 1) == 0;
    }
  }

  swift_unknownObjectRelease_n();
  return 1;
}

uint64_t sub_1D7850900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v77 = a3;
  v78 = a6;
  v75 = a2;
  v76 = a4;
  v67 = sub_1D78B3294();
  v62 = *(v67 - 8);
  v7 = MEMORY[0x1EEE9AC00](v67);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v60 - v9;
  v70 = sub_1D78B3394();
  v66 = *(v70 - 8);
  v10 = MEMORY[0x1EEE9AC00](v70);
  v65 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v60 - v12;
  v13 = sub_1D78B58B4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1D78B5754();
  v73 = *(v14 - 8);
  v74 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v60 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v63 = &v60 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v68 = &v60 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v71 = &v60 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v72 = &v60 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v60 - v25;
  v27 = sub_1D78B2FF4();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79[0] = &unk_1F52656F0;
  sub_1D775C038(0, &qword_1EE090010, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D77C559C();
  sub_1D78B5C24();
  sub_1D78B2FD4();

  v31 = sub_1D78B5D74();
  v33 = v32;
  (*(v28 + 8))(v30, v27);
  v79[0] = v76;
  v79[1] = a5;

  MEMORY[0x1DA702FF0](v31, v33);

  sub_1D777BE08(v77, v79);
  if (swift_dynamicCast())
  {
    sub_1D78B5884();

    sub_1D78B5744();
    v34 = v78;
    v35 = *v78;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_1D777B71C(0, v35[2] + 1, 1, v35);
      *v34 = v35;
    }

    v38 = v35[2];
    v37 = v35[3];
    if (v38 >= v37 >> 1)
    {
      v35 = sub_1D777B71C(v37 > 1, v38 + 1, 1, v35);
      *v34 = v35;
    }

    v35[2] = v38 + 1;
    (*(v73 + 32))(v35 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v38, v26, v74);
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v39 = v78;
  if (swift_dynamicCast())
  {
    sub_1D78B58A4();
    v40 = v72;
LABEL_13:
    sub_1D78B5744();
    v41 = v39;
    v42 = *v39;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *v41 = v42;
    if ((v43 & 1) == 0)
    {
      v42 = sub_1D777B71C(0, v42[2] + 1, 1, v42);
      *v41 = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1D777B71C(v44 > 1, v45 + 1, 1, v42);
      *v41 = v42;
    }

    v42[2] = v45 + 1;
    (*(v73 + 32))(v42 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v45, v40, v74);
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  if (swift_dynamicCast())
  {
    sub_1D78B5874();
    v40 = v71;
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    sub_1D78B5894();
    v40 = v68;
    goto LABEL_13;
  }

  v48 = v69;
  v47 = v70;
  if (swift_dynamicCast())
  {
    v50 = v65;
    v49 = v66;
    (*(v66 + 32))(v65, v48, v47);
    sub_1D78B5864();
    v51 = &v81;
  }

  else
  {
    v52 = v64;
    v47 = v67;
    if (!swift_dynamicCast())
    {

      return __swift_destroy_boxed_opaque_existential_1(v79);
    }

    v49 = v62;
    v50 = v61;
    (*(v62 + 32))(v61, v52, v47);
    sub_1D78B5854();
    v51 = &v80;
  }

  v53 = *(v51 - 32);
  sub_1D78B5744();
  v54 = v39;
  v55 = *v39;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  *v54 = v55;
  if ((v56 & 1) == 0)
  {
    v55 = sub_1D777B71C(0, v55[2] + 1, 1, v55);
    *v54 = v55;
  }

  v58 = v55[2];
  v57 = v55[3];
  if (v58 >= v57 >> 1)
  {
    *v54 = sub_1D777B71C(v57 > 1, v58 + 1, 1, v55);
  }

  (*(v49 + 8))(v50, v47);
  v59 = *v54;
  *(v59 + 16) = v58 + 1;
  (*(v73 + 32))(v59 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v58, v53, v74);
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_1D7851154(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  sub_1D777BE08(a1, v37);
  sub_1D777CABC();
  result = swift_dynamicCast();
  if (result)
  {
    v9 = 0;
    v10 = v36;
    v11 = v36 + 64;
    v12 = 1 << *(v36 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = a2;
    v15 = v13 & *(v36 + 64);
    v16 = (v12 + 63) >> 6;
    v17 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    v28 = v14;
    v29 = v17;
    while (v15)
    {
      v18 = v9;
LABEL_18:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v23 = (*(v10 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      sub_1D777BE08(*(v10 + 56) + 32 * v22, v30);
      *&v31 = v25;
      *(&v31 + 1) = v24;
      sub_1D778D0A0(v30, &v32);

LABEL_19:
      v34 = v31;
      v35[0] = v32;
      v35[1] = v33;
      v26 = *(&v31 + 1);
      if (!*(&v31 + 1))
      {

        return __swift_destroy_boxed_opaque_existential_1(v37);
      }

      v27 = v34;
      sub_1D778D0A0(v35, &v31);
      if (v29)
      {
        *&v30[0] = v28;
        *(&v30[0] + 1) = a3;

        MEMORY[0x1DA702FF0](46, 0xE100000000000000);
        MEMORY[0x1DA702FF0](v27, v26);

        v26 = *(&v30[0] + 1);
        v27 = *&v30[0];
      }

      sub_1D7851154(&v31, v27, v26, a4);

      result = __swift_destroy_boxed_opaque_existential_1(&v31);
    }

    if (v16 <= v9 + 1)
    {
      v19 = v9 + 1;
    }

    else
    {
      v19 = v16;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        v15 = 0;
        v32 = 0u;
        v33 = 0u;
        v9 = v20;
        v31 = 0u;
        goto LABEL_19;
      }

      v15 = *(v11 + 8 * v18);
      ++v9;
      if (v15)
      {
        v9 = v18;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1D777BE08(a1, &v34);
    swift_beginAccess();

    sub_1D7827BA8(&v34, a2, a3);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return result;
}

uint64_t sub_1D78513C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_individualPurchaseMetadata);
  if (v3)
  {
    sub_1D785327C(0, &qword_1EE095230, &qword_1EE08FF20, 0x1E69B54D0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v4 = v3;
    return sub_1D78B4104();
  }

  else
  {
    v8 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_purchaseManager + 8);
    ObjectType = swift_getObjectType();
    return sub_1D775F820(a2, a3, ObjectType, v8);
  }
}

uint64_t sub_1D7851494(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_individualPurchaseMetadata);
  *(a2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_individualPurchaseMetadata) = v10;
  v12 = v10;

  v13 = sub_1D78B57A4();
  (*(*(v13 - 8) + 16))(v9, a3, v13);
  *&v9[*(v7 + 28)] = v10;
  sub_1D7851D38(0, &qword_1EE0952A8, type metadata accessor for PurchaseMetaDataFetchResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

uint64_t sub_1D78515E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D775B620(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  v12 = 0;
  v13 = 0xE000000000000000;
  v14 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  v8 = v12;
  v9 = v13;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D775ABD4();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_1D78B42C4();

  v10 = sub_1D78B57A4();
  (*(*(v10 - 8) + 16))(v6, a2, v10);
  *&v6[*(v4 + 20)] = 0;
  sub_1D7851D38(0, &qword_1EE0952A8, type metadata accessor for PurchaseMetaDataFetchResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D78B4104();
}

void sub_1D7851A48()
{
  sub_1D7851D38(319, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D7851BBC(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1D7851D38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7851E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PurchaseMetaDataFetchResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7851EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseMetaDataFetchResult(0) - 8);
  v4 = (*(v3 + 80) + 160) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D784D304(*(v1 + 16), v1 + 24, v1 + v4, *v5, v5[1], a1);
}

uint64_t sub_1D7851F6C(uint64_t a1)
{
  sub_1D775B620(0, &qword_1EE0902C8, &unk_1EE0902D0, MEMORY[0x1E69B5D08], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7851FF4@<X0>(_BYTE *a1@<X8>)
{
  sub_1D7851D38(0, &qword_1EC9CAE08, MEMORY[0x1E69B64A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1D78B59B4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  sub_1D78B5A14();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D785449C(v4, &qword_1EC9CAE08, MEMORY[0x1E69B64A8]);
LABEL_3:
    v12 = type metadata accessor for PostPurchaseDestination();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  v14 = *(v6 + 32);
  v14(v11, v4, v5);
  v14(v9, v11, v5);
  v15 = (*(v6 + 88))(v9, v5);
  if (v15 == *MEMORY[0x1E69B6498])
  {
    (*(v6 + 96))(v9, v5);
    v16 = sub_1D78B3294();
    (*(*(v16 - 8) + 32))(a1, v9, v16);
    v17 = type metadata accessor for PostPurchaseDestination();
  }

  else
  {
    if (v15 == *MEMORY[0x1E69B64A0])
    {
      goto LABEL_3;
    }

    if (v15 != *MEMORY[0x1E69B6490])
    {
      v18 = type metadata accessor for PostPurchaseDestination();
      (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
      return (*(v6 + 8))(v9, v5);
    }

    *a1 = 0;
    v17 = type metadata accessor for PostPurchaseDestination();
  }

  swift_storeEnumTagMultiPayload();
  return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
}

uint64_t sub_1D785237C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_1D78B5304();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D78B5A24();
  result = (*(v5 + 88))(v7, v4);
  if (result == *MEMORY[0x1E69B5830])
  {
    (*(v5 + 96))(v7, v4);
    v9 = *(a1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 248);
    if (*(v9 + 16))
    {
      v10 = sub_1D777BBB4(*v7, v7[1]);
      v12 = v11;

      if (v12)
      {
        v13 = (*(v9 + 56) + 16 * v10);
        v14 = v13[1];
        *a2 = *v13;
        a2[1] = v14;
      }
    }

    else
    {
    }
  }

  else if (result != *MEMORY[0x1E69B5828])
  {
    *a2 = 0;
    a2[1] = 0;
    return (*(v5 + 8))(v7, v4);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1D7852514(uint64_t a1, uint64_t a2)
{
  sub_1D7851D38(0, &unk_1EC9CADF8, MEMORY[0x1E69B6718], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  if (qword_1EE0955D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for FlexiblePaywallViewProvider(0);
  sub_1D785458C();
  sub_1D78B3574();
  if (v18 < 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_6;
  }

  if (!v18)
  {
    sub_1D785450C(a2, v6, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    v15 = sub_1D78B5AB4();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v6, 1, v15) == 1)
    {
      v13 = MEMORY[0x1E69B6718];
      v14 = v6;
      goto LABEL_13;
    }

    v17 = sub_1D78B5AA4();
    (*(v16 + 8))(v6, v15);
    return v17;
  }

  if (qword_1EC9C8668 != -1)
  {
    goto LABEL_19;
  }

LABEL_6:
  sub_1D78B3574();
  result = v18;
  v10 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v10 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    sub_1D785450C(a2, v8, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    v11 = sub_1D78B5AB4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v8, 1, v11) == 1)
    {
      v13 = MEMORY[0x1E69B6718];
      v14 = v8;
LABEL_13:
      sub_1D785449C(v14, &unk_1EC9CADF8, v13);
      return 0;
    }

    v17 = sub_1D78B5AA4();
    (*(v12 + 8))(v8, v11);
    return v17;
  }

  return result;
}

uint64_t sub_1D7852880@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = MEMORY[0x1E69B6718];
  v5 = MEMORY[0x1E69E6720];
  sub_1D7851D38(0, &unk_1EC9CADF8, MEMORY[0x1E69B6718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - v7;
  sub_1D7851D38(0, &qword_1EC9CAE08, MEMORY[0x1E69B64A8], v5);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_1D78B59B4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  sub_1D785450C(a1, v8, &unk_1EC9CADF8, v4);
  v19 = sub_1D78B5AB4();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v8, 1, v19) == 1)
  {
    sub_1D785449C(v8, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_1D785449C(v11, &qword_1EC9CAE08, MEMORY[0x1E69B64A8]);
LABEL_5:
    *a2 = 1;
    v21 = type metadata accessor for PostPurchaseDestination();
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }

  sub_1D78B5A94();
  (*(v20 + 8))(v8, v19);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v23 = *(v13 + 32);
  v23(v18, v11, v12);
  v23(v16, v18, v12);
  v24 = (*(v13 + 88))(v16, v12);
  if (v24 == *MEMORY[0x1E69B6498])
  {
    (*(v13 + 96))(v16, v12);
    v25 = sub_1D78B3294();
    (*(*(v25 - 8) + 32))(a2, v16, v25);
    v21 = type metadata accessor for PostPurchaseDestination();
    goto LABEL_6;
  }

  if (v24 == *MEMORY[0x1E69B64A0])
  {
    v26 = type metadata accessor for PostPurchaseDestination();
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }

  else
  {
    if (v24 == *MEMORY[0x1E69B6490])
    {
      goto LABEL_5;
    }

    v27 = type metadata accessor for PostPurchaseDestination();
    (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
    return (*(v13 + 8))(v16, v12);
  }
}

unint64_t sub_1D7852D58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D785344C(0, &qword_1EC9CADF0, sub_1D7782F60);
    v3 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D777BBB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D7852E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D78533B4();
    v3 = sub_1D78B6564();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D777BBB4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D7852F64(uint64_t a1)
{
  sub_1D785334C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1D785344C(0, &qword_1EC9CADD8, MEMORY[0x1E69B6750]);
    v8 = sub_1D78B6564();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1D78543D4(v10, v6, sub_1D785334C);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1D777BBB4(*v6, v13);
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
      v19 = sub_1D78B5AF4();
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D785315C()
{
  result = qword_1EE092BB0;
  if (!qword_1EE092BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE092BB0);
  }

  return result;
}

uint64_t sub_1D78531B0()
{
  v1 = *(sub_1D78B57A4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1D78B59A4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D784FBFC(v0 + v2, v5);
}

void sub_1D785327C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D773F004(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D78532E4()
{
  if (!qword_1EE090140)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE090140);
    }
  }
}

void sub_1D785334C()
{
  if (!qword_1EE090100)
  {
    sub_1D78B5AF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE090100);
    }
  }
}

void sub_1D78533B4()
{
  if (!qword_1EC9CADE0)
  {
    sub_1D7851D38(255, &qword_1EC9CADE8, MEMORY[0x1E69B60E0], MEMORY[0x1E69E62F8]);
    v0 = sub_1D78B6574();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CADE0);
    }
  }
}

void sub_1D785344C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B6574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D78534B0(uint64_t a1, uint64_t a2)
{
  sub_1D7851D38(0, &qword_1EE090290, MEMORY[0x1E69B6118], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7853650(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1D78A6C8C(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1D78536D0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D7851D38(0, &unk_1EC9CADF8, MEMORY[0x1E69B6718], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v153 = &v150 - v5;
  ObjectType = type metadata accessor for SubscribeButtonDestination(0);
  v6 = MEMORY[0x1EEE9AC00](ObjectType);
  v152 = (&v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v154 = &v150 - v8;
  v9 = type metadata accessor for OsloSheetPurchaseDataModel(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7851D38(0, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination, v3);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v151 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v150 - v15;
  v17 = sub_1D78B5A34();
  v156 = *(v17 - 8);
  v157 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D78B58E4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v23, a1, v20);
  v24 = (*(v21 + 88))(v23, v20);
  if (v24 == *MEMORY[0x1E69B6298])
  {
    (*(v21 + 96))(v23, v20);
    (*(v156 + 32))(v19, v23, v157);
    sub_1D7851FF4(v16);
    sub_1D785237C(v1, &v190);
    v25 = v190;
    sub_1D785450C(v16, v11 + *(v9 + 20), qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    *v11 = v25;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      v28 = v154;
      sub_1D78543D4(v11, v154, type metadata accessor for OsloSheetPurchaseDataModel);
      swift_storeEnumTagMultiPayload();
      v29 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
      ObjectType = swift_getObjectType();
      v30 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v32 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v31 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v176 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v177 = v30;
      v174 = v32;
      v175 = v31;
      v33 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v35 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v34 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v180 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v181 = v33;
      v178 = v35;
      v179 = v34;
      v36 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v38 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v37 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v184 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v185 = v36;
      v182 = v38;
      v183 = v37;
      v39 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v41 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v40 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v188 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v189 = v39;
      v186 = v41;
      v187 = v40;
      v42 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
      v170 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
      v171 = v42;
      v43 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
      v172 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
      v173 = v43;
      v44 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
      v166 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
      v167 = v44;
      v45 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
      v168 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
      v169 = v45;
      v46 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
      v162 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
      v163 = v46;
      v47 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
      v164 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
      v165 = v47;
      v48 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
      v158 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
      v159 = v48;
      v49 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
      v160 = *(v27 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
      v161 = v49;
      v50 = *(v29 + 72);
      sub_1D7772AE8(&v174, &v190);
      v50(v28, &v158, ObjectType, v29);
      sub_1D785443C(v28, type metadata accessor for SubscribeButtonDestination);
      sub_1D785443C(v11, type metadata accessor for OsloSheetPurchaseDataModel);
      sub_1D785449C(v16, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      (*(v156 + 8))(v19, v157);
      v202 = v170;
      v203 = v171;
      v204 = v172;
      v205 = v173;
      v198 = v166;
      v199 = v167;
      v200 = v168;
      v201 = v169;
      v194 = v162;
      v195 = v163;
      v196 = v164;
      v197 = v165;
      v190 = v158;
      v191 = v159;
      v192 = v160;
      v193 = v161;
      sub_1D7772B44(&v190);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1D785443C(v11, type metadata accessor for OsloSheetPurchaseDataModel);
      sub_1D785449C(v16, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      return (*(v156 + 8))(v19, v157);
    }
  }

  if (v24 == *MEMORY[0x1E69B6280])
  {
    (*(v21 + 96))(v23, v20);
    v52 = v153;
    sub_1D7854340(v23, v153);
    v53 = sub_1D7852514(v1, v52);
    v55 = v54;
    v56 = v151;
    sub_1D7852880(v52, v151);
    v57 = v152;
    *v152 = v53;
    v57[1] = v55;
    v58 = v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel;
    v59 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 208);
    v202 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 192);
    v203 = v59;
    v60 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 240);
    v204 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 224);
    v205 = v60;
    v61 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 144);
    v198 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 128);
    v199 = v61;
    v62 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 176);
    v200 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 160);
    v201 = v62;
    v63 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 80);
    v194 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 64);
    v195 = v63;
    v64 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 112);
    v196 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 96);
    v197 = v64;
    v65 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 16);
    v190 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel);
    v191 = v65;
    v66 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 48);
    v192 = *(v1 + OBJC_IVAR____TtC16NewsSubscription27FlexiblePaywallViewProvider_paywallModel + 32);
    v193 = v66;
    v67 = [PaywallModel.tag.getter() identifier];
    swift_unknownObjectRelease();
    v68 = sub_1D78B5C74();
    v70 = v69;

    v57[2] = v68;
    v57[3] = v70;
    if (*(v58 + 16))
    {
      v57[4] = 0;
      v57[5] = 0;
    }

    else
    {
      v120 = [swift_unknownObjectRetain() identifier];
      swift_unknownObjectRelease();
      v121 = sub_1D78B5C74();
      v123 = v122;

      v57[4] = v121;
      v57[5] = v123;
    }

    sub_1D7740094(0);
    sub_1D785450C(v56, v57 + *(v124 + 80), qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    swift_storeEnumTagMultiPayload();
    v125 = swift_unknownObjectWeakLoadStrong();
    if (!v125)
    {
      sub_1D785443C(v57, type metadata accessor for SubscribeButtonDestination);
      sub_1D785449C(v56, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
      return sub_1D785449C(v52, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    }

    v126 = *(v125 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
    v127 = v125;
    v128 = swift_getObjectType();
    v129 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v131 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v130 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v176 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v177 = v129;
    v174 = v131;
    v175 = v130;
    v132 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v134 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v133 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v180 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v181 = v132;
    v178 = v134;
    v179 = v133;
    v135 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v137 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v136 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v184 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v185 = v135;
    v182 = v137;
    v183 = v136;
    v138 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v140 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v139 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v188 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v189 = v138;
    v186 = v140;
    v187 = v139;
    v141 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v170 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v171 = v141;
    v142 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v172 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v173 = v142;
    v143 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v166 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v167 = v143;
    v144 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v168 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v169 = v144;
    v145 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v162 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v163 = v145;
    v146 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v164 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v165 = v146;
    v147 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v158 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v159 = v147;
    v148 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v160 = *(v127 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v161 = v148;
    v149 = *(v126 + 72);
    sub_1D7772AE8(&v174, &v190);
    v149(v57, &v158, v128, v126);
    sub_1D785443C(v57, type metadata accessor for SubscribeButtonDestination);
    sub_1D785449C(v56, qword_1EE095BD0, type metadata accessor for PostPurchaseDestination);
    sub_1D785449C(v52, &unk_1EC9CADF8, MEMORY[0x1E69B6718]);
    goto LABEL_19;
  }

  if (v24 != *MEMORY[0x1E69B6288])
  {
    if (v24 != *MEMORY[0x1E69B6290])
    {
      return (*(v21 + 8))(v23, v20);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v95 = result;
    v96 = v154;
    swift_storeEnumTagMultiPayload();
    v97 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
    v98 = swift_getObjectType();
    v99 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v101 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v100 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v176 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v177 = v99;
    v174 = v101;
    v175 = v100;
    v102 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v104 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v103 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v180 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v181 = v102;
    v178 = v104;
    v179 = v103;
    v105 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v107 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v106 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v184 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v185 = v105;
    v182 = v107;
    v183 = v106;
    v108 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v110 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v109 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v188 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v189 = v108;
    v186 = v110;
    v187 = v109;
    v111 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v170 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v171 = v111;
    v112 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v172 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v173 = v112;
    v113 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v166 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v167 = v113;
    v114 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v168 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v169 = v114;
    v115 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v162 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v163 = v115;
    v116 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v164 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v165 = v116;
    v117 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v158 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v159 = v117;
    v118 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v160 = *(v95 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v161 = v118;
    v119 = *(v97 + 72);
    sub_1D7772AE8(&v174, &v190);
    v119(v96, &v158, v98, v97);
    sub_1D785443C(v96, type metadata accessor for SubscribeButtonDestination);
LABEL_19:
    v202 = v170;
    v203 = v171;
    v204 = v172;
    v205 = v173;
    v198 = v166;
    v199 = v167;
    v200 = v168;
    v201 = v169;
    v194 = v162;
    v195 = v163;
    v196 = v164;
    v197 = v165;
    v190 = v158;
    v191 = v159;
    v192 = v160;
    v193 = v161;
    sub_1D7772B44(&v190);
    return swift_unknownObjectRelease();
  }

  if (qword_1EE08FB90 != -1)
  {
    swift_once();
  }

  sub_1D78B60A4();
  sub_1D78B42C4();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v71 = *(result + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_eventHandler + 8);
    v72 = result;
    v73 = swift_getObjectType();
    v74 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v76 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v75 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v176 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v177 = v74;
    v174 = v76;
    v175 = v75;
    v77 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v79 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v78 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v180 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v181 = v77;
    v178 = v79;
    v179 = v78;
    v80 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v82 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v81 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v184 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v185 = v80;
    v182 = v82;
    v183 = v81;
    v83 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v85 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v84 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v188 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v189 = v83;
    v186 = v85;
    v187 = v84;
    v86 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 208);
    v170 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 192);
    v171 = v86;
    v87 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 240);
    v172 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 224);
    v173 = v87;
    v88 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 144);
    v166 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 128);
    v167 = v88;
    v89 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 176);
    v168 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 160);
    v169 = v89;
    v90 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 80);
    v162 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 64);
    v163 = v90;
    v91 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 112);
    v164 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 96);
    v165 = v91;
    v92 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 16);
    v158 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel);
    v159 = v92;
    v93 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 48);
    v160 = *(v72 + OBJC_IVAR____TtC16NewsSubscription21PaywallViewController_paywallModel + 32);
    v161 = v93;
    v94 = *(v71 + 88);
    sub_1D7772AE8(&v174, &v190);
    v94(&v158, v73, v71);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1D7854340(uint64_t a1, uint64_t a2)
{
  sub_1D7851D38(0, &unk_1EC9CADF8, MEMORY[0x1E69B6718], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D78543D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D785443C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D785449C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7851D38(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D785450C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7851D38(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D785458C()
{
  result = qword_1EC9CAE10;
  if (!qword_1EC9CAE10)
  {
    type metadata accessor for FlexiblePaywallViewProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9CAE10);
  }

  return result;
}

void sub_1D785461C()
{
  sub_1D78B57A4();
  if (v0 <= 0x3F)
  {
    sub_1D785327C(319, &qword_1EE08FF10, &qword_1EE08FF20, 0x1E69B54D0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t AppleAccountSignedOutAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t AppleAccountSignedOutAlert.message.getter()
{
  v2 = *v0;
  v1 = v0[1];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();

  v5 = [v4 bundleForClass_];
  sub_1D78B3134();

  sub_1D774FE1C();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D78BCAB0;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D775ABD4();
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = sub_1D78B5C94();

  return v7;
}

uint64_t AppleAccountSignedOutAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D7D90];
  v3 = sub_1D78B4974();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D7854978()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7854A68()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D78B3134();

  return v2;
}

uint64_t sub_1D7854B38@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  sub_1D78555AC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v82 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7855678();
  v83 = *(v5 - 8);
  v84 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78157B8();
  v8 = v7;
  v91 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78556F4();
  v93 = v11;
  v80 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v79 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v74 - v14;
  sub_1D78557C0(&qword_1EC9CAE38, sub_1D78157B8);
  sub_1D78557C0(&qword_1EC9CAE40, sub_1D78157B8);
  v92 = v15;
  v89 = v8;
  sub_1D78B3C74();
  v87 = a1;
  v16 = *a1;
  HIDWORD(v86) = v16 != 2;
  if (v16 == 2 || (v16 & 1) == 0)
  {
    LODWORD(v86) = 0;
  }

  else
  {
    v86 = 1;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v20 = sub_1D78B3134();
  v22 = v21;

  v77 = v18;
  v78 = ObjCClassFromMetadata;
  v23 = [v18 bundleForClass_];
  v24 = sub_1D78B3134();
  v26 = v25;

  v27 = v87;
  v28 = *(v87 + 1);
  v29 = *(v87 + 2);
  *&v100 = v20;
  *(&v100 + 1) = v22;
  *&v101 = v24;
  *(&v101 + 1) = v26;
  *&v102 = v28;
  *(&v102 + 1) = v29;
  LOBYTE(v103[0]) = BYTE4(v86);
  v30 = sub_1D77CE220();

  v90 = v30;
  sub_1D78B4584();
  sub_1D78B3C64();
  v31 = *(v91 + 8);
  v91 += 8;
  v88 = v31;
  v31(v10, v89);
  v32 = sub_1D785542C(v27);
  v75 = v33;
  v76 = v32;
  v34 = *(v27 + 24);
  v35 = *(v34 + 16);
  if (v35 >= 2 && v87[96] == 1)
  {
    v36 = (v34 + 40);
    do
    {
      v38 = *(v36 - 1);
      v39 = *v36;
      if (v38 == v28 && v39 == v29)
      {
        v37 = 1;
      }

      else
      {
        v37 = sub_1D78B6724() & 1;
      }

      *&v100 = v38;
      *(&v100 + 1) = v39;
      v101 = v37;
      v102 = 0uLL;
      LOBYTE(v103[0]) = 0x80;

      sub_1D78B4584();
      sub_1D78B3C64();
      v88(v10, v89);
      v36 += 2;
      --v35;
    }

    while (v35);
  }

  v41 = [v77 bundleForClass_];
  v42 = sub_1D78B3134();
  v44 = v43;

  v100 = 0uLL;
  *&v101 = v42;
  *(&v101 + 1) = v44;
  *&v102 = v76;
  *(&v102 + 1) = v75;
  LOBYTE(v103[0]) = v86 | 0x40;
  sub_1D78B4584();
  sub_1D78B3C64();
  v88(v10, v89);
  v45 = type metadata accessor for HideMyEmailSignupDataModel();
  v46 = v87;
  v47 = *&v87[*(v45 + 44)];
  v48 = [v47 headline];
  v91 = sub_1D78B5C74();
  v50 = v49;

  v51 = [v47 subheadline];
  v52 = sub_1D78B5C74();
  v54 = v53;

  v55 = [v47 ctaButtonText];
  v56 = sub_1D78B5C74();
  v58 = v57;

  v59 = [v47 policyText];
  v60 = [v59 text];

  v61 = sub_1D78B5C74();
  v63 = v62;

  v64 = *(v46 + 13);
  *&v96 = v91;
  *(&v96 + 1) = v50;
  *&v97 = v52;
  *(&v97 + 1) = v54;
  *&v98 = v56;
  *(&v98 + 1) = v58;
  *v99 = v61;
  *&v99[8] = v63;
  *&v99[16] = v64;
  v99[24] = BYTE4(v86) | v86;
  v102 = v98;
  v103[0] = *v99;
  *(v103 + 9) = *&v99[9];
  v100 = v96;
  v101 = v97;
  sub_1D77CF7F0(&v100, &v95);
  v65 = v80;
  (*(v80 + 16))(v79, v92, v93);
  swift_unknownObjectRetain();
  sub_1D7855808(&v96, &v94);
  sub_1D77CE118();
  v66 = v81;
  sub_1D78B46E4();
  sub_1D78558B8(0, &qword_1EC9CAE48, sub_1D7855678);
  v67 = v83;
  v68 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_1D78BCAB0;
  v70 = v84;
  (*(v67 + 16))(v69 + v68, v66, v84);
  v71 = sub_1D78557C0(&qword_1EC9CAE20, sub_1D7855678);
  v72 = sub_1D78557C0(&qword_1EC9CAE28, sub_1D7855678);
  MEMORY[0x1DA700EF0](v69, v70, v71, v72);
  sub_1D78B51C4();
  sub_1D7855864(&v96);
  (*(v67 + 8))(v66, v70);
  return (*(v65 + 8))(v92, v93);
}

uint64_t sub_1D785542C(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D78B3134();

  sub_1D78558B8(0, &qword_1EE08FA10, sub_1D778CD10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D78BCAB0;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D775ABD4();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;

  v7 = sub_1D78B5C94();

  return v7;
}

void sub_1D78555AC()
{
  if (!qword_1EC9CAE18)
  {
    sub_1D7855678();
    sub_1D78557C0(&qword_1EC9CAE20, sub_1D7855678);
    sub_1D78557C0(&qword_1EC9CAE28, sub_1D7855678);
    v0 = sub_1D78B3C84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAE18);
    }
  }
}

void sub_1D7855678()
{
  if (!qword_1EC9CA2A0)
  {
    sub_1D77CE118();
    sub_1D77CE220();
    v0 = sub_1D78B4704();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CA2A0);
    }
  }
}

void sub_1D78556F4()
{
  if (!qword_1EC9CAE30)
  {
    sub_1D78157B8();
    sub_1D78557C0(&qword_1EC9CAE38, sub_1D78157B8);
    sub_1D78557C0(&qword_1EC9CAE40, sub_1D78157B8);
    v0 = sub_1D78B3C84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9CAE30);
    }
  }
}

uint64_t sub_1D78557C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D78558B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D78B66F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D785590C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PurchaseContext();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D78BCAB0;
  sub_1D7859018(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
  v8 = sub_1D78B5CC4();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D775ABD4();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  sub_1D78B60A4();
  sub_1D78B42C4();

  v11 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_familySharingLandingPageLauncher + 24];
  v12 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_familySharingLandingPageLauncher + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_familySharingLandingPageLauncher], v11);
  (*(v12 + 8))(v11, v12);
  v13 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24];
  v14 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider], v13);
  (*(v14 + 8))(&aBlock, v13, v14);
  v15 = v38;
  v16 = v39;
  __swift_project_boxed_opaque_existential_1(&aBlock, v38);
  v41 = 0x2000000000000000;
  v16[1](&v41, a1, v15, v16);
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v17 = a1[5];
  v18 = a1[6];
  if (v17 == sub_1D78B5C74() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_1D78B6724();

    if ((v20 & 1) == 0)
    {
      v21 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_tagController];
      v22 = sub_1D78B5C44();
      sub_1D7788448();
      v23 = sub_1D78B6104();
      sub_1D7859018(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
      v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v2;
      sub_1D777044C(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
      v39 = sub_1D7859468;
      v40 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v36 = 1107296256;
      v37 = sub_1D7752E68;
      v38 = &block_descriptor_37_0;
      v26 = _Block_copy(&aBlock);
      v27 = v2;

      [v21 fetchTagForTagID:v22 qualityOfService:25 callbackQueue:v23 completionHandler:v26];
      _Block_release(v26);
    }
  }

  sub_1D7773164(a1[8]);
  if (v28)
  {

    v29 = *&v2[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_entitlementService];
    sub_1D7859018(a1, &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PurchaseContext);
    v30 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    sub_1D777044C(&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30);
    v39 = sub_1D7859518;
    v40 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1D781E048;
    v38 = &block_descriptor_43_1;
    v32 = _Block_copy(&aBlock);
    v33 = v2;

    [v29 performEntitlementWithIgnoreCache:0 completion:v32];
    _Block_release(v32);
  }
}

uint64_t sub_1D7855E20(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_1EE08FB98 != -1)
    {
      swift_once();
    }

    sub_1D78B6094();
    sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1D78BCAB0;
    v6 = a2;
    sub_1D7812D44(0, &unk_1EE08F9E0, &qword_1EE08F9F0, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    v7 = sub_1D78B5CC4();
    v9 = v8;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1D775ABD4();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    sub_1D78B42C4();
  }

  else if (result)
  {
    v11 = swift_unknownObjectRetain();
    sub_1D7855FD0(v11, a4);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7855FD0(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(*(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_appConfigurationManager) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v6 = [v5 preSubscribedNotificationsChannelIDs];

  if (v6)
  {
    v7 = sub_1D78B5EB4();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = [a1 identifier];
  v9 = sub_1D78B5C74();
  v11 = v10;

  v22[0] = v9;
  v22[1] = v11;
  MEMORY[0x1EEE9AC00](v12);
  v21[2] = v22;
  LOBYTE(v8) = sub_1D781DA18(sub_1D7782F40, v21, v7);

  v13 = *(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_subscriptionController);
  v22[0] = 0;
  [v13 addSubscriptionToTag:a1 notificationsEnabled:v8 & 1 error:v22];
  v14 = v22[0];
  v15 = *(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24);
  v16 = *(v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider), v15);
  v17 = *(v16 + 8);
  v18 = v14;
  v17(v22, v15, v16);
  v19 = v23;
  v20 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v20 + 16))(a1, a2, v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_1D7856214(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = [*(a4 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_configurationManager) configuration];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  if ([v8 respondsToSelector_])
  {
    v10 = [v9 paidBundleConfig];
    swift_unknownObjectRelease();
    v11 = [v10 offeredBundlePurchaseIDs];

    if (!v11)
    {
      return;
    }

    v12 = MEMORY[0x1E69E6158];
    v13 = sub_1D78B5EB4();

    if (!a1)
    {
      goto LABEL_19;
    }

    v23 = sub_1D78565A4(a1, v13);

    if (!v23)
    {
      return;
    }

    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager), *(a4 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager + 24));
    sub_1D77F5354(*a5, a5[1]);
    v14 = sub_1D7773164(a5[8]);
    if (v15)
    {
      v16 = v14;
      v17 = v15;
      if (qword_1EE08FB98 != -1)
      {
        swift_once();
      }

      sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D78BCAB0;
      *(v18 + 56) = v12;
      *(v18 + 64) = sub_1D775ABD4();
      *(v18 + 32) = v16;
      *(v18 + 40) = v17;

      sub_1D78B60A4();
      sub_1D78B42C4();

      v19 = [v23 inAppAdamID];
      v20 = [v19 stringValue];

      sub_1D78B5C74();
      v21 = [v23 servicesBundlePurchaseID];
      if (v21)
      {
        v22 = v21;
        sub_1D78B5C74();
      }

      sub_1D78B4244();
      sub_1D78B4234();

LABEL_19:

      return;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void *sub_1D78565A4(unint64_t a1, uint64_t a2)
{
  v17 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D78B6534())
  {
    v4 = 0;
    v16 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v16)
      {
        v5 = MEMORY[0x1DA703700](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 inAppAdamID];
      v9 = [v8 stringValue];

      v10 = sub_1D78B5C74();
      v12 = v11;

      v18[0] = v10;
      v18[1] = v12;
      MEMORY[0x1EEE9AC00](v13);
      v15[2] = v18;
      LOBYTE(v10) = sub_1D781DA18(sub_1D78598B4, v15, v17);

      if (v10)
      {
        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  return 0;
}

id sub_1D785673C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v54 = a4;
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PurchaseContext();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v16 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v48 - v17);
  sub_1D7859018(a3, v11, sub_1D773F0BC);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v19 = sub_1D773F0BC;
    v20 = v11;
    return sub_1D7858F9C(v20, v19);
  }

  v50 = v13;
  v51 = a2;
  sub_1D777044C(v11, v18);
  v21 = *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24];
  v22 = *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider], v21);
  (*(v22 + 8))(aBlock, v21, v22);
  v23 = v56;
  v24 = v57;
  __swift_project_boxed_opaque_existential_1(aBlock, v56);
  v59 = 0x2000000000000000;
  (*(v24 + 1))(&v59, v18, v23, v24);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  __swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager], *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager + 24]);
  v25 = *v18;
  v52 = v18[1];
  v53 = v25;
  sub_1D77F5354(v25, v52);
  v26 = sub_1D7773164(v18[8]);
  if (!v27)
  {
LABEL_8:
    if (v18[2] == 1)
    {
      v34 = *__swift_project_boxed_opaque_existential_1(&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker], *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_inAppSubscriptionStatusChecker + 24]);
      sub_1D78B41F4();
      sub_1D7788448();
      v35 = sub_1D78B6104();
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      *(v36 + 24) = 0;

      sub_1D78B4094();

      v37 = swift_allocObject();
      *(v37 + 16) = v34;
      *(v37 + 24) = 0;

      v38 = sub_1D78B4014();
      sub_1D78B40D4();
    }

    else
    {
      v39 = *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseController];
      v40 = sub_1D78B5C44();
      v41 = sub_1D78B5C44();
      [v39 addAppStorePurchaseWithTagID:v40 purchaseID:v41];

      v42 = *&v5[OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_tagController];
      v43 = sub_1D78B5C44();
      sub_1D7788448();
      v38 = sub_1D78B6104();
      sub_1D7859018(v18, v16, type metadata accessor for PurchaseContext);
      v44 = (*(v50 + 80) + 24) & ~*(v50 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = v5;
      sub_1D777044C(v16, v45 + v44);
      v57 = sub_1D7859250;
      v58 = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7752E68;
      v56 = &block_descriptor_13_0;
      v46 = _Block_copy(aBlock);
      v47 = v5;

      [v42 fetchTagForTagID:v43 qualityOfService:25 callbackQueue:v38 completionHandler:v46];
      _Block_release(v46);
    }

    v19 = type metadata accessor for PurchaseContext;
    v20 = v18;
    return sub_1D7858F9C(v20, v19);
  }

  v28 = v26;
  v29 = v27;
  v48[2] = a1;
  v49 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1D78BCAB0;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1D775ABD4();
  *(v30 + 32) = v28;
  *(v30 + 40) = v29;

  sub_1D78B60A4();
  sub_1D78B42C4();

  v48[1] = v18[5];
  result = [v54 price];
  if (result)
  {
    v32 = result;
    sub_1D78B4244();
    v33 = [v32 stringValue];

    sub_1D78B5C74();
    sub_1D78B4234();

    v16 = v49;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1D7856E08(unint64_t a1, uint64_t a2)
{
  v4 = sub_1D78B3394();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for PurchaseAdContext();
  MEMORY[0x1EEE9AC00](v50);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PurchaseContext();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE08FB98 != -1)
  {
    swift_once();
  }

  sub_1D78B6094();
  sub_1D7812D44(0, &qword_1EE08FA10, &qword_1EE08F9D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D78BCB50;
  v54 = a2;
  sub_1D7859018(a2, v10, type metadata accessor for PurchaseContext);
  v12 = sub_1D78B5CC4();
  v14 = v13;
  v15 = MEMORY[0x1E69E6158];
  *(v11 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D775ABD4();
  *(v11 + 64) = v16;
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  v56 = 0;
  v57 = 0xE000000000000000;
  v60 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  sub_1D78B6504();
  v17 = v56;
  v18 = v57;
  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  sub_1D78B42C4();

  v19 = a1;
  v20 = sub_1D78B31B4();
  v56 = v20;
  type metadata accessor for AMSError(0);
  sub_1D7859268(&qword_1EC9C9218, type metadata accessor for AMSError);
  sub_1D78B3184();

  v21 = v60;
  if (v60 == 508 || v60 == 6)
  {

    v22 = a1 | 0x5000000000000000;
    v23 = a1;
  }

  else
  {
    v22 = a1 | 0x4000000000000004;
  }

  v24 = *(v55 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24);
  v25 = *(v55 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32);
  __swift_project_boxed_opaque_existential_1((v55 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider), v24);
  (*(v25 + 8))(&v56, v24, v25);
  v26 = v58;
  v27 = v59;
  __swift_project_boxed_opaque_existential_1(&v56, v58);
  v60 = v22;
  v28 = *(v27 + 8);
  sub_1D78591E8(v22, sub_1D7859234);
  v29 = v54;
  v28(&v60, v54, v26, v27);
  sub_1D78591E8(v60, sub_1D7858FFC);
  __swift_destroy_boxed_opaque_existential_1(&v56);
  v30 = v29[8];
  v31 = sub_1D7773164(v30);
  if (v32)
  {
    v33 = v31;
    v34 = v32;
    v48 = v21;
    v49 = a1;
    v35 = *v29;
    v36 = v29[1];
    v37 = v29[5];
    v38 = v29[6];

    v39 = sub_1D77731CC(v30);
    v41 = v40;
    sub_1D78B3384();
    v42 = (v30 + 96);
    v43 = *(v30 + 16) + 1;
    while (--v43)
    {
      v44 = v42 + 10;
      v45 = *v42 >> 60;
      v42 += 10;
      if (v45 == 6)
      {
        v46 = *(v44 - 32);
        goto LABEL_13;
      }
    }

    LOBYTE(v46) = 0;
LABEL_13:
    *v7 = v35;
    v7[1] = v36;
    v7[2] = v37;
    v7[3] = v38;
    v7[4] = v33;
    v7[5] = v34;
    v7[6] = v39;
    v7[7] = v41;
    v7[8] = 0;
    v7[9] = 0xE000000000000000;
    v47 = v50;
    (*(v51 + 32))(v7 + *(v50 + 36), v53, v52);
    *(v7 + *(v47 + 40)) = v46 & 1;
    __swift_project_boxed_opaque_existential_1((v55 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager), *(v55 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_purchaseAdContextEntriesManager + 24));
    sub_1D77F4A60(v35, v36, v7);
    sub_1D7858F9C(v7, type metadata accessor for PurchaseAdContext);
    v21 = v48;
    a1 = v49;
    v29 = v54;
  }

  if (v21 == 6)
  {
    __swift_project_boxed_opaque_existential_1((v55 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_osloAbandonmentUpsellManager), *(v55 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_osloAbandonmentUpsellManager + 24));
    sub_1D7836394(v29[2]);
  }
}

void *sub_1D7857388(void *a1)
{
  v1 = a1;
  sub_1D773C9B8(0, &qword_1EE08F9F0);
  type metadata accessor for SKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1D7859268(&qword_1EC9C91E0, type metadata accessor for SKError);
  sub_1D78B3184();

  return v3;
}

uint64_t sub_1D7857460(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, unint64_t a7)
{
  sub_1D773F0BC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7857688(a1, a4);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 chargeCurrencyCode];
    v18 = sub_1D78B5C74();
    v20 = v19;

    sub_1D7859018(a4, v14, type metadata accessor for PurchaseContext);
    v21 = type metadata accessor for PurchaseContext();
    (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
    sub_1D785673C(v18, v20, v14, a6);

    return sub_1D7858F9C(v14, sub_1D773F0BC);
  }

  else
  {
    v23 = *(a5 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 24);
    v24 = *(a5 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider + 32);
    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC16NewsSubscription30AllPurchaseTransactionObserver_trackerProvider), v23);
    (*(v24 + 8))(v29, v23, v24);
    v25 = v30;
    v26 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v28 = a7;
    v27 = *(v26 + 8);
    sub_1D78591E8(a7, sub_1D7859234);
    v27(&v28, a4, v25, v26);
    sub_1D78591E8(v28, sub_1D7858FFC);
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }
}