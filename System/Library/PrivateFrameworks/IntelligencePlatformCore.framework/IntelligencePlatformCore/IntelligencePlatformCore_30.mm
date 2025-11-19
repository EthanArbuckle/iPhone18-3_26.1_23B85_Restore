uint64_t sub_1C4673C64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v10 = type metadata accessor for GraphTriple(0);
  v11 = sub_1C4502254(&qword_1EC0BAA28, type metadata accessor for GraphTriple);
  v6 = sub_1C4422F90(&v9);
  sub_1C45B1EE4(a2, v6);
  v7 = *a3;
  *(v7 + 16) = a1 + 1;
  return sub_1C441D670(&v9, v7 + 40 * a1 + 32);
}

uint64_t sub_1C4673D30()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D188(inited, "carPlayConnected");
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4673DD8()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  sub_1C441D188(inited, "carPlayConnected");
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  v1 = sub_1C4F00F28();
  if (sub_1C4594E18())
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
  }

  else
  {
    v2 = sub_1C445FAA8(0x5279616C50726163, 0xED00006E6F736165);
    if (v3)
    {
      v4 = v2;
      swift_isUniquelyReferenced_nonNull_native();
      v9 = v1;
      v5 = *(v1 + 24);
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v1 = v9;
      v6 = *(*(v9 + 48) + 16 * v4 + 8);

      v7 = *(*(v9 + 56) + 8 * v4);
      sub_1C4F02478();
    }
  }

  return v1;
}

uint64_t sub_1C4673FF8@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for CarPlayEvent();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void sub_1C46740A8(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1C456902C(&qword_1EC0BAA30, &qword_1C4F3B4F0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  v19 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v20 = [v19 Connected];
  swift_unknownObjectRelease();
  sub_1C4674278(v20, a1, v18);

  if (!v2)
  {
    sub_1C445FFF0(v18, v16, &qword_1EC0BAA30, &qword_1C4F3B4F0);
    sub_1C445FFF0(a1, v9, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v21 = *(v1 + 16);
    sub_1C49397B4();
    sub_1C4420C3C(v18, &qword_1EC0BAA30, &qword_1C4F3B4F0);
  }
}

void sub_1C4674278(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v28 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  v5 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v6 = sub_1C456902C(&qword_1EC0BAA38, &qword_1C4F16958);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = sub_1C4EF9CD8();
  v18 = *(*(v17 - 8) + 16);
  v18(v16, a2, v17);
  sub_1C440BAA8(v16, 0, 1, v17);
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v18(v14, a2 + *(v19 + 36), v17);
  sub_1C440BAA8(v14, 0, 1, v17);
  v20 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v21 = sub_1C457A86C(v16, v14, 0, 0, 0);
  v22 = [a1 publisherWithOptions_];

  v23 = v22;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v24 = v30;
  sub_1C4EFFC38();
  if (v24)
  {
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    type metadata accessor for CarPlayEvent();
    sub_1C4401CBC(&qword_1EDDEFEF0, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v25 = a1;

    sub_1C4F02848();

    (*(v26 + 32))(v29, v9, v27);
  }
}

void sub_1C46745FC()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v32);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0BAA48, &qword_1C4F16988);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  v19 = sub_1C43FC024();
  sub_1C440BAA8(v19, v20, v21, v15);
  v22 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v23 = sub_1C43FCF40(v22);
  v17(v23);
  sub_1C442B8CC();
  v24 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v25 = sub_1C4402AE4();
  v26 = sub_1C441D120(v25, sel_publisherWithOptions_);

  v27 = v26;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v28 = swift_allocObject();
    sub_1C44258B8(v28);
    type metadata accessor for SemanticLocationEvent();
    sub_1C442C318(&qword_1EDDEFEE8, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v29 = v1;

    sub_1C43FFBC4();

    v30 = sub_1C43FCF2C();
    v31(v30);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C467485C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v32);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0BAA88, &qword_1C4F16A90);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  v19 = sub_1C43FC024();
  sub_1C440BAA8(v19, v20, v21, v15);
  v22 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v23 = sub_1C43FCF40(v22);
  v17(v23);
  sub_1C442B8CC();
  v24 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v25 = sub_1C4402AE4();
  v26 = sub_1C441D120(v25, sel_publisherWithOptions_);

  v27 = v26;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v28 = swift_allocObject();
    sub_1C44258B8(v28);
    type metadata accessor for DeviceBluetoothEvent();
    sub_1C442C318(&qword_1EDDEFF08, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v29 = v1;

    sub_1C43FFBC4();

    v30 = sub_1C43FCF2C();
    v31(v30);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4674ABC()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v32);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0BAA98, &unk_1C4F3B5C0);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  v19 = sub_1C43FC024();
  sub_1C440BAA8(v19, v20, v21, v15);
  v22 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v23 = sub_1C43FCF40(v22);
  v17(v23);
  sub_1C442B8CC();
  v24 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v25 = sub_1C4402AE4();
  v26 = sub_1C441D120(v25, sel_publisherWithOptions_);

  v27 = v26;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v28 = swift_allocObject();
    sub_1C44258B8(v28);
    type metadata accessor for DevicePluggedInEvent();
    sub_1C442C318(&qword_1EDDEFF00, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v29 = v1;

    sub_1C43FFBC4();

    v30 = sub_1C43FCF2C();
    v31(v30);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4674D1C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v32);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0BAA58, &qword_1C4F169B0);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  v19 = sub_1C43FC024();
  sub_1C440BAA8(v19, v20, v21, v15);
  v22 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v23 = sub_1C43FCF40(v22);
  v17(v23);
  sub_1C442B8CC();
  v24 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v25 = sub_1C4402AE4();
  v26 = sub_1C441D120(v25, sel_publisherWithOptions_);

  v27 = v26;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v28 = swift_allocObject();
    sub_1C44258B8(v28);
    type metadata accessor for UserFocusComputedModeEvent();
    sub_1C442C318(&qword_1EDDEFED0, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v29 = v1;

    sub_1C43FFBC4();

    v30 = sub_1C43FCF2C();
    v31(v30);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C4674F7C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v32);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0BAAA8, &qword_1C4F16AE0);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  v19 = sub_1C43FC024();
  sub_1C440BAA8(v19, v20, v21, v15);
  v22 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v23 = sub_1C43FCF40(v22);
  v17(v23);
  sub_1C442B8CC();
  v24 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v25 = sub_1C4402AE4();
  v26 = sub_1C441D120(v25, sel_publisherWithOptions_);

  v27 = v26;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v28 = swift_allocObject();
    sub_1C44258B8(v28);
    type metadata accessor for DeviceScreenLockEvent();
    sub_1C442C318(&qword_1EDDEFED8, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v29 = v1;

    sub_1C43FFBC4();

    v30 = sub_1C43FCF2C();
    v31(v30);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C46751DC()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v32);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0BAA78, &unk_1C4F3B590);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  v19 = sub_1C43FC024();
  sub_1C440BAA8(v19, v20, v21, v15);
  v22 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v23 = sub_1C43FCF40(v22);
  v17(v23);
  sub_1C442B8CC();
  v24 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v25 = sub_1C4402AE4();
  v26 = sub_1C441D120(v25, sel_publisherWithOptions_);

  v27 = v26;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v28 = swift_allocObject();
    sub_1C44258B8(v28);
    type metadata accessor for DeviceAirplaneModeEvent();
    sub_1C442C318(&qword_1EDDEFEE0, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v29 = v1;

    sub_1C43FFBC4();

    v30 = sub_1C43FCF2C();
    v31(v30);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

void sub_1C467543C()
{
  sub_1C43FE96C();
  sub_1C4402AD0(v2);
  v32 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0(v32);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD64();
  v6 = sub_1C456902C(&qword_1EC0BAAB8, &unk_1C4F3B5F0);
  sub_1C43FCDF8(v6);
  v8 = *(v7 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FE94C();
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FFBA8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C441C794();
  sub_1C43FBCE0(v15);
  v17 = *(v16 + 16);
  v18 = sub_1C4410890();
  v17(v18);
  v19 = sub_1C43FC024();
  sub_1C440BAA8(v19, v20, v21, v15);
  v22 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v23 = sub_1C43FCF40(v22);
  v17(v23);
  sub_1C442B8CC();
  v24 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v25 = sub_1C4402AE4();
  v26 = sub_1C441D120(v25, sel_publisherWithOptions_);

  v27 = v26;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  sub_1C440DDC4();
  if (v0)
  {
  }

  else
  {
    sub_1C43FBDBC();
    v28 = swift_allocObject();
    sub_1C44258B8(v28);
    type metadata accessor for DeviceWiFiConnectedEvent();
    sub_1C442C318(&qword_1EDDEFF20, &qword_1EC0B8600, &unk_1C4F0D4E0);
    v29 = v1;

    sub_1C43FFBC4();

    v30 = sub_1C43FCF2C();
    v31(v30);
  }

  sub_1C445E730();
  sub_1C43FBC80();
}

uint64_t sub_1C467569C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for CarPlayEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(sub_1C456902C(&qword_1EC0BAA40, &unk_1C4F16978) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46757C8, 0, 0);
}

uint64_t sub_1C46757C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v18 = [*(v12 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C443454C(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44364D0();
    v21(v20);
    *(v13 + *(v10 + 20)) = [v19 starting];
    v22 = [v19 reason];

    (*(v17 + 8))(v14, v15);
    *(v13 + *(v10 + 24)) = v22;
    sub_1C4415FBC();
    sub_1C4677BF0(v13, v11, v23);
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v10);

    sub_1C44157D4(v11, 1, v10);
    v27 = sub_1C44259DC();
    if (!v28)
    {
      v35 = *(v12 + 16);
      sub_1C4415FBC();
      v39 = sub_1C4677BF0(v36, v37, v38);
      v40 = 0;
      goto LABEL_11;
    }

    v39 = sub_1C4420C3C(v27, &qword_1EC0BAA40, &unk_1C4F16978);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v29 = sub_1C442F090();
    v30 = sub_1C44690E8(v29, qword_1EDDFECB8);
    v31 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v32 = sub_1C4403FF4();
      sub_1C441B738(v32, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v33, v34, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v40 = 1;
LABEL_11:
  sub_1C4416EB8(v39, v40);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_1C46759DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_1C4EF9CD8() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = *(*(sub_1C456902C(&qword_1EC0BAA50, &qword_1C4F169A8) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4675AA8, 0, 0);
}

uint64_t sub_1C4675AA8()
{
  v1 = [*(v0 + 24) eventBody];
  if (!v1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v9 = sub_1C442F090();
    v10 = sub_1C44690E8(v9, qword_1EDDFECB8);
    v11 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v12 = sub_1C4403FF4();
      sub_1C441B738(v12, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v13, v14, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v12, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }

    v6 = type metadata accessor for SemanticLocationEvent();
    goto LABEL_9;
  }

  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = v1;
  [v4 timestamp];
  sub_1C4EF9AC8();
  sub_1C4AFA110(v5, v3, v2);

  v6 = type metadata accessor for SemanticLocationEvent();
  v7 = sub_1C44157D4(v2, 1, v6);
  v8 = *(v0 + 48);
  if (v7 == 1)
  {
    sub_1C4420C3C(v8, &qword_1EC0BAA50, &qword_1C4F169A8);
LABEL_9:
    v15 = 1;
    goto LABEL_11;
  }

  sub_1C4677BF0(v8, *(v0 + 16), type metadata accessor for SemanticLocationEvent);
  v15 = 0;
LABEL_11:
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  sub_1C440BAA8(*(v0 + 16), v15, 1, v6);

  sub_1C43FBDA0();

  return v18();
}

uint64_t sub_1C4675CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for DeviceBluetoothEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(sub_1C456902C(&qword_1EC0BAA90, &unk_1C4F16AB0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4675DCC, 0, 0);
}

uint64_t sub_1C4675DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v14 = [*(v10 + 24) eventBody];
  if (v14)
  {
    v15 = sub_1C4440F4C(v14);
    [v12 timestamp];
    sub_1C4EF9AC8();
    v16 = sub_1C4415908();
    v17(v16);
    *(v11 + *(v13 + 20)) = [v15 starting];
    v18 = [v15 userWearing];
    v19 = [v15 address];
    v21 = *(v10 + 64);
    v20 = *(v10 + 72);
    v22 = *(v10 + 56);
    if (v19)
    {
      v23 = v19;
      v24 = sub_1C4F01138();
      v26 = v25;

      v27 = sub_1C441C16C();
      v28(v27);
    }

    else
    {
      v36 = sub_1C441C16C();
      v37(v36);

      v24 = 0;
      v26 = 0;
    }

    sub_1C44601C8();
    *v38 = v18;
    *(v38 + 8) = v24;
    *(v38 + 16) = v26;
    sub_1C441B7F0();
    sub_1C4677BF0(v39, v20, v40);
    sub_1C43FBD94();
    sub_1C440BAA8(v41, v42, v43, v22);

    sub_1C44157D4(v20, 1, v22);
    v44 = sub_1C44259DC();
    if (!v45)
    {
      v46 = *(v10 + 16);
      sub_1C441B7F0();
      v35 = sub_1C4677BF0(v47, v48, v49);
      v50 = 0;
      goto LABEL_14;
    }

    v35 = sub_1C4420C3C(v44, &qword_1EC0BAA90, &unk_1C4F16AB0);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v29 = sub_1C442F090();
    v30 = sub_1C44690E8(v29, qword_1EDDFECB8);
    v31 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v32 = sub_1C4403FF4();
      sub_1C441B738(v32, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v33, v34, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v50 = 1;
LABEL_14:
  sub_1C4416EB8(v35, v50);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10);
}

uint64_t sub_1C4676030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for DevicePluggedInEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(sub_1C456902C(&qword_1EC0BAAA0, &qword_1C4F16AD8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C467615C, 0, 0);
}

uint64_t sub_1C467615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v18 = [*(v12 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C443454C(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C44364D0();
    v21(v20);
    *(v13 + *(v10 + 20)) = [v19 starting];
    v22 = [v19 wireless];

    (*(v17 + 8))(v14, v15);
    *(v13 + *(v10 + 24)) = v22;
    sub_1C441E29C();
    sub_1C4677BF0(v13, v11, v23);
    sub_1C43FBD94();
    sub_1C440BAA8(v24, v25, v26, v10);

    sub_1C44157D4(v11, 1, v10);
    v27 = sub_1C44259DC();
    if (!v28)
    {
      v35 = *(v12 + 16);
      sub_1C441E29C();
      v39 = sub_1C4677BF0(v36, v37, v38);
      v40 = 0;
      goto LABEL_11;
    }

    v39 = sub_1C4420C3C(v27, &qword_1EC0BAAA0, &qword_1C4F16AD8);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v29 = sub_1C442F090();
    v30 = sub_1C44690E8(v29, qword_1EDDFECB8);
    v31 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v32 = sub_1C4403FF4();
      sub_1C441B738(v32, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v33, v34, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v40 = 1;
LABEL_11:
  sub_1C4416EB8(v39, v40);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_1C4676370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for UserFocusComputedModeEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(sub_1C456902C(&qword_1EC0BAA60, qword_1C4F169D0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C467649C, 0, 0);
}

uint64_t sub_1C467649C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v14 = [*(v10 + 24) eventBody];
  if (v14)
  {
    v15 = sub_1C4440F4C(v14);
    [v12 timestamp];
    sub_1C4EF9AC8();
    v16 = sub_1C4415908();
    v17(v16);
    *(v11 + *(v13 + 20)) = [v15 starting];
    v18 = [v15 semanticType];
    v19 = [v15 mode];
    v21 = *(v10 + 64);
    v20 = *(v10 + 72);
    v22 = *(v10 + 56);
    if (v19)
    {
      v23 = v19;
      v24 = sub_1C4F01138();
      v26 = v25;

      v27 = sub_1C441C16C();
      v28(v27);
    }

    else
    {
      v36 = sub_1C441C16C();
      v37(v36);

      v24 = 0;
      v26 = 0;
    }

    sub_1C44601C8();
    *v38 = v18;
    *(v38 + 8) = v24;
    *(v38 + 16) = v26;
    sub_1C4409B44();
    sub_1C4677BF0(v39, v20, v40);
    sub_1C43FBD94();
    sub_1C440BAA8(v41, v42, v43, v22);

    sub_1C44157D4(v20, 1, v22);
    v44 = sub_1C44259DC();
    if (!v45)
    {
      v46 = *(v10 + 16);
      sub_1C4409B44();
      v35 = sub_1C4677BF0(v47, v48, v49);
      v50 = 0;
      goto LABEL_14;
    }

    v35 = sub_1C4420C3C(v44, &qword_1EC0BAA60, qword_1C4F169D0);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v29 = sub_1C442F090();
    v30 = sub_1C44690E8(v29, qword_1EDDFECB8);
    v31 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v32 = sub_1C4403FF4();
      sub_1C441B738(v32, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v33, v34, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v32, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v50 = 1;
LABEL_14:
  sub_1C4416EB8(v35, v50);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10);
}

uint64_t sub_1C4676700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for DeviceScreenLockEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(sub_1C456902C(&qword_1EC0BAAB0, &unk_1C4F16B00) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C467682C, 0, 0);
}

uint64_t sub_1C467682C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v18 = [*(v12 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C446BE6C(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C4433BE8();
    v21(v20);
    [v19 starting];

    (*(v17 + 8))(v13, v14);
    sub_1C440CB0C();
    sub_1C4426A68();
    sub_1C4677BF0(v15, v11, v22);
    sub_1C43FBD94();
    sub_1C440BAA8(v23, v24, v25, v10);

    sub_1C44157D4(v11, 1, v10);
    v26 = sub_1C44259DC();
    if (!v27)
    {
      v34 = *(v12 + 16);
      sub_1C4426A68();
      v38 = sub_1C4677BF0(v35, v36, v37);
      v39 = 0;
      goto LABEL_11;
    }

    v38 = sub_1C4420C3C(v26, &qword_1EC0BAAB0, &unk_1C4F16B00);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v28 = sub_1C442F090();
    v29 = sub_1C44690E8(v28, qword_1EDDFECB8);
    v30 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v31 = sub_1C4403FF4();
      sub_1C441B738(v31, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v32, v33, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v31, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v39 = 1;
LABEL_11:
  sub_1C4416EB8(v38, v39);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1C4676A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for DeviceAirplaneModeEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(sub_1C456902C(&qword_1EC0BAA80, &qword_1C4F16A88) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4676B50, 0, 0);
}

uint64_t sub_1C4676B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C442F130();
  sub_1C4404D98();
  v18 = [*(v12 + 24) eventBody];
  if (v18)
  {
    v19 = sub_1C446BE6C(v18);
    [v16 timestamp];
    sub_1C4EF9AC8();
    v20 = sub_1C4433BE8();
    v21(v20);
    [v19 starting];

    (*(v17 + 8))(v13, v14);
    sub_1C440CB0C();
    sub_1C443FB34();
    sub_1C4677BF0(v15, v11, v22);
    sub_1C43FBD94();
    sub_1C440BAA8(v23, v24, v25, v10);

    sub_1C44157D4(v11, 1, v10);
    v26 = sub_1C44259DC();
    if (!v27)
    {
      v34 = *(v12 + 16);
      sub_1C443FB34();
      v38 = sub_1C4677BF0(v35, v36, v37);
      v39 = 0;
      goto LABEL_11;
    }

    v38 = sub_1C4420C3C(v26, &qword_1EC0BAA80, &qword_1C4F16A88);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v28 = sub_1C442F090();
    v29 = sub_1C44690E8(v28, qword_1EDDFECB8);
    v30 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v31 = sub_1C4403FF4();
      sub_1C441B738(v31, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v32, v33, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v31, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v39 = 1;
LABEL_11:
  sub_1C4416EB8(v38, v39);

  sub_1C43FBDA0();
  sub_1C4422280();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10);
}

uint64_t sub_1C4676D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for DeviceWiFiConnectedEvent();
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = *(*(sub_1C456902C(&qword_1EC0BAAC0, &qword_1C4F16B28) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4676E74, 0, 0);
}

uint64_t sub_1C4676E74()
{
  sub_1C4404D98();
  v4 = [*(v0 + 24) eventBody];
  if (v4)
  {
    v5 = sub_1C4440F4C(v4);
    [v2 timestamp];
    sub_1C4EF9AC8();
    v6 = sub_1C4415908();
    v7(v6);
    *(v1 + *(v3 + 20)) = [v5 starting];
    v8 = [v5 SSID];
    v10 = *(v0 + 64);
    v9 = *(v0 + 72);
    v11 = *(v0 + 56);
    if (v8)
    {
      v12 = v8;
      v13 = sub_1C4F01138();
      v15 = v14;

      (*(v10 + 8))(v9, v11);
    }

    else
    {
      (*(v10 + 8))(*(v0 + 72), *(v0 + 56));

      v13 = 0;
      v15 = 0;
    }

    v23 = *(v0 + 80);
    v24 = *(v0 + 40);
    v25 = (*(v0 + 48) + *(v24 + 24));
    *v25 = v13;
    v25[1] = v15;
    sub_1C4424FC8();
    sub_1C4677BF0(v26, v23, v27);
    v28 = sub_1C43FC024();
    sub_1C440BAA8(v28, v29, v30, v24);

    sub_1C44157D4(v23, 1, v24);
    v31 = sub_1C44259DC();
    if (!v32)
    {
      v33 = *(v0 + 16);
      sub_1C4424FC8();
      v22 = sub_1C4677BF0(v34, v35, v36);
      v37 = 0;
      goto LABEL_14;
    }

    v22 = sub_1C4420C3C(v31, &qword_1EC0BAAC0, &qword_1C4F16B28);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v16 = sub_1C442F090();
    v17 = sub_1C44690E8(v16, qword_1EDDFECB8);
    v18 = sub_1C4F00968();
    sub_1C4F01CF8();

    if (sub_1C44020E0())
    {
      sub_1C4404AEC();
      v19 = sub_1C4403FF4();
      sub_1C441B738(v19, 5.7779e-34);
      sub_1C43FBD74(&dword_1C43F8000, v20, v21, "Unable to parse eventBody from %@");
      sub_1C4420C3C(v19, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FEA20();
      sub_1C43FE9D4();
    }
  }

  v37 = 1;
LABEL_14:
  sub_1C4416EB8(v22, v37);

  sub_1C43FBDA0();

  return v38();
}

uint64_t sub_1C46770E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C467569C(a1, v6, a3);
}

uint64_t sub_1C4677198()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t type metadata accessor for CarPlayEvent()
{
  result = qword_1EDDEB7C0;
  if (!qword_1EDDEB7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4677274(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C46759DC(a1, v6, a3);
}

uint64_t sub_1C4677324()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C46773B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4675CA0(a1, v6, a3);
}

uint64_t sub_1C4677464(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4676030(a1, v6, a3);
}

uint64_t sub_1C4677514(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4676370(a1, v6, a3);
}

uint64_t sub_1C46775C4()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C467767C()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4677710(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4676700(a1, v6, a3);
}

uint64_t sub_1C46777C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4677C50;

  return sub_1C4676A24(a1, v6, a3);
}

uint64_t sub_1C4677870()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677900()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677990()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677A20()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677AB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C4665934;

  return sub_1C4676D48(a1, v6, a3);
}

uint64_t sub_1C4677B60()
{
  sub_1C43FCF70();
  sub_1C43FEA10();
  v0 = swift_task_alloc();
  v1 = sub_1C43FCF54(v0);
  *v1 = v2;
  v3 = sub_1C44064BC(v1);

  return v4(v3);
}

uint64_t sub_1C4677BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_1C4677C70(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BAA70, &qword_1C4F16A20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v9 - v7;
  sub_1C46740A8(a1);
  if (!v2)
  {
    sub_1C4677D44(v8, a2);
  }
}

uint64_t sub_1C4677D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BAA70, &qword_1C4F16A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4677DB4()
{
  result = qword_1EDDDC488;
  if (!qword_1EDDDC488)
  {
    sub_1C4572308(&qword_1EC0BAAC8, &unk_1C4F16B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC488);
  }

  return result;
}

uint64_t sub_1C4677E18(char a1)
{
  v3 = [BiomeLibrary() CarPlay];
  swift_unknownObjectRelease();
  v4 = [v3 Connected];
  swift_unknownObjectRelease();
  *(v1 + 24) = v4;
  *(v1 + 16) = a1;
  return v1;
}

void sub_1C4677F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v32 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = v32;
  v30 = *(v32 + 16);
  if (v30 >= *(v32 + 24) >> 1)
  {
    sub_1C44CD9C0();
    v29 = v32;
  }

  *(v29 + 16) = v30 + 1;
  v31 = v29 + 16 * v30;
  *(v31 + 32) = 0xD000000000000014;
  *(v31 + 40) = 0x80000001C4F8F500;

  sub_1C4499940(v29, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C4677FC0(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4678018(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4678018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = *(a1 + 24);
  v15 = sub_1C4EF9CD8();
  sub_1C440BAA8(v12, 1, 1, v15);
  (*(*(v15 - 8) + 16))(v10, a2, v15);
  sub_1C440BAA8(v10, 0, 1, v15);
  v16 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v17 = sub_1C457A86C(v12, v10, 1, 1, 0);
  v18 = [v14 publisherWithOptions_];

  v31 = sub_1C467973C;
  v32 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C44405F8;
  v30 = &unk_1F43E6318;
  v19 = _Block_copy(&aBlock);

  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = v13;
  v31 = sub_1C4679744;
  v32 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1C4440590;
  v30 = &unk_1F43E6368;
  v21 = _Block_copy(&aBlock);

  v22 = [v18 sinkWithCompletion:v19 receiveInput:v21];

  _Block_release(v21);
  _Block_release(v19);

  swift_beginAccess();
  v23 = *(v13 + 16);
  *a3 = v23;
  v24 = v23;
}

void sub_1C467832C(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);

    v6 = v4;
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315394;
      v10 = [*(a2 + 24) description];
      v11 = sub_1C4F01138();
      v13 = v12;

      v14 = sub_1C441D828(v11, v13, &v20);

      *(v8 + 4) = v14;
      *(v8 + 12) = 2080;
      v15 = v6;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v16 = sub_1C4F01198();
      v18 = sub_1C441D828(v16, v17, &v20);

      *(v8 + 14) = v18;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to fetch events from stream: %s with error: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C4678574(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);

    oslog = sub_1C4F00968();
    v9 = sub_1C4F01CF8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = [*(a2 + 24) description];
      v13 = sub_1C4F01138();
      v15 = v14;

      v16 = sub_1C441D828(v13, v15, &v18);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_1C43F8000, oslog, v9, "Unable to parse event body from read event in the stream: %s", v10, 0xCu);
      sub_1C440962C(v11);
      MEMORY[0x1C6942830](v11, -1, -1);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C4678764(uint64_t a1)
{
  v1 = sub_1C4677FC0(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 starting];
    sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x80000001C4F8F500;
    sub_1C4577DBC();
    *(inited + 48) = sub_1C4A3B8F8(v3);
    sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    v5 = sub_1C4F00F28();
    v6 = sub_1C467894C(v5);

    return v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "CarPlayEvent is nil", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

uint64_t sub_1C467894C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 56) + 8 * v12);
    if (v13)
    {
      v14 = (*(a1 + 48) + 16 * v12);
      v37 = *v14;
      v38 = v14[1];
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        v17 = v13;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C46795D8(v15 + 1, 1, v18, v19, v20, v21, v22, v23, v36, v37, v38, SBYTE4(v38));
        v2 = v39;
      }

      else
      {
        v16 = v13;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v24 = *(v2 + 40);
      sub_1C4F02AF8();
      sub_1C4F01298();
      result = sub_1C4F02B68();
      v25 = v2 + 64;
      v26 = -1 << *(v2 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v2 + 64 + 8 * (v27 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v26) >> 6;
        v30 = v38;
        while (++v28 != v32 || (v31 & 1) == 0)
        {
          v33 = v28 == v32;
          if (v28 == v32)
          {
            v28 = 0;
          }

          v31 |= v33;
          v34 = *(v25 + 8 * v28);
          if (v34 != -1)
          {
            v29 = __clz(__rbit64(~v34)) + (v28 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~*(v2 + 64 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v30 = v38;
LABEL_23:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v35 = (*(v2 + 48) + 16 * v29);
      *v35 = v37;
      v35[1] = v30;
      *(*(v2 + 56) + 8 * v29) = v13;
      ++*(v2 + 16);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1C4678B88(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v22;
    sub_1C459D0A8();
    v25 = v42;
    v24 = v43;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v36 = *(v26 + 56);
    v37 = v27;
    do
    {
      v37(v14, v28, v40);
      v37(v25, v14, v40);
      v29 = sub_1C4678764(v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v4;
      v31 = sub_1C467B7F0(v29, a1);

      sub_1C465CF34(v31);
      v33 = v32;
      v25 = v42;

      (*(v26 - 8))(v14, v40);
      *(v42 + *(v39 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
        v25 = v42;
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4586A54(v25, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34);
      v28 += v36;
      --v23;
      v4 = v30;
    }

    while (v23);
    a3 = v35;
  }

  *a3 = v24;
}

uint64_t sub_1C4678E3C()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C4678764(v8);
  v10 = *(v3 + 8);
  v11 = sub_1C4404C28();
  v12(v11);
  return v9;
}

uint64_t sub_1C467917C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4679254(uint64_t a1, uint64_t a2)
{
  result = sub_1C467BA24(&qword_1EC0BAAD0, a2, type metadata accessor for CarPlaySignal);
  *(a1 + 16) = result;
  return result;
}

void sub_1C46792AC(uint64_t a1)
{
  sub_1C440599C(a1);
  sub_1C456902C(&qword_1EC0BAB18, &qword_1C4F16C28);
  sub_1C440BBEC();
  v38 = v2;
  sub_1C447F8F8();
  sub_1C4423658();
  if (!v6)
  {
LABEL_29:

    *v1 = v3;
    return;
  }

  v37 = v5;
  v7 = 0;
  v8 = v5;
  sub_1C44192F8();
  sub_1C4424FE0();
  if (!v2)
  {
LABEL_4:
    v10 = v7;
    while (1)
    {
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v1)
      {
        break;
      }

      sub_1C443456C();
      if (v11)
      {
        sub_1C43FCF1C();
        v2 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v38)
    {
      v31 = *(v5 + 32);
      sub_1C43FED48();
      if (v33 != v34)
      {
        sub_1C43FC134(v32);
      }

      else
      {
        v35 = sub_1C4408764();
        sub_1C4501018(v35, v36, v8);
      }

      *(v5 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_9:
    sub_1C441B808(v9);
    v17 = (v15 + v14 * v16);
    v39 = *v17;
    v18 = *(v17 + 2);
    if ((v38 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v19 = *(v3 + 40);
    sub_1C4F02AF8();
    sub_1C446BE8C();
    v20 = sub_1C4F02B68();
    sub_1C441F630(v20);
    v22 = *(v4 + 8 * v21);
    sub_1C4405760();
    if (v23)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C43FFF28(v24);
    v30 = v29 + 24 * v28;
    *v30 = v39;
    *(v30 + 16) = v18;
    sub_1C443322C();
    v5 = v37;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v23)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    sub_1C444FCD8(v25);
    if (!v23)
    {
      sub_1C43FCF98();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C4679474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1C4404B14();
  sub_1C4412E64(v16);
  sub_1C456902C(&qword_1EC0BDC60, &qword_1C4F16C68);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v17)
  {
LABEL_29:

    *v12 = v14;
    sub_1C440576C();
    return;
  }

  v43 = v13;
  v18 = 0;
  v19 = v13;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v15)
  {
LABEL_4:
    v21 = v18;
    while (1)
    {
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v18 >= v12)
      {
        break;
      }

      sub_1C4422298();
      if (v22)
      {
        sub_1C43FCF1C();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_1C4416EF0();
      if (v39 != v40)
      {
        sub_1C43FC134(v38);
      }

      else
      {
        v41 = sub_1C4408764();
        sub_1C4501018(v41, v42, v19);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4(v20);
    v27 = *(v26 + 8 * v25);
    if ((a12 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28 = v27;
    }

    sub_1C440CB24();
    sub_1C444B094();
    v29 = sub_1C4F02B68();
    sub_1C441F630(v29);
    sub_1C4414988(v30);
    if (v31)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C442C614(v32);
    *(v37 + 8 * v36) = v27;
    sub_1C443322C();
    v13 = v43;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v31)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    sub_1C441E1A8(v33);
    if (!v31)
    {
      sub_1C43FCF98();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C46795D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1C4404B14();
  sub_1C4412E64(v16);
  sub_1C456902C(&qword_1EC0B8488, &unk_1C4F0D470);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v17)
  {
LABEL_29:

    *v12 = v14;
    sub_1C440576C();
    return;
  }

  v43 = v13;
  v18 = 0;
  v19 = v13;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v15)
  {
LABEL_4:
    v21 = v18;
    while (1)
    {
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v18 >= v12)
      {
        break;
      }

      sub_1C4422298();
      if (v22)
      {
        sub_1C43FCF1C();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_1C4416EF0();
      if (v39 != v40)
      {
        sub_1C43FC134(v38);
      }

      else
      {
        v41 = sub_1C4408764();
        sub_1C4501018(v41, v42, v19);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4(v20);
    v27 = *(v26 + 8 * v25);
    if ((a12 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28 = v27;
    }

    sub_1C440CB24();
    sub_1C444B094();
    v29 = sub_1C4F02B68();
    sub_1C441F630(v29);
    sub_1C4414988(v30);
    if (v31)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C442C614(v32);
    *(v37 + 8 * v36) = v27;
    sub_1C443322C();
    v13 = v43;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v31)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    sub_1C441E1A8(v33);
    if (!v31)
    {
      sub_1C43FCF98();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C4679760()
{
  sub_1C43FBD3C();
  sub_1C4450628();
  v4 = sub_1C4EFDAB8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v64 = v11 - v10;
  v12 = *v1;
  if (*(*v1 + 24) > v0)
  {
    v13 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BAB20, &qword_1C4F16C30);
  v63 = v3;
  v14 = sub_1C4F02548();
  if (!*(v12 + 16))
  {
LABEL_32:

    *v2 = v14;
    sub_1C43FE9F0();
    return;
  }

  v70 = v4;
  v15 = 0;
  v17 = v12 + 64;
  v16 = *(v12 + 64);
  v18 = *(v12 + 32);
  sub_1C43FEC90();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v61 = v12;
  v62 = v7;
  v65 = (v7 + 32);
  v24 = v14 + 64;
  if ((v20 & v19) == 0)
  {
LABEL_6:
    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v15 >= v23)
      {
        break;
      }

      ++v27;
      if (*(v17 + 8 * v15))
      {
        sub_1C43FCF1C();
        v26 = v29 & v28;
        goto LABEL_11;
      }
    }

    if (v63)
    {
      v55 = *(v12 + 32);
      sub_1C43FED48();
      if (v57 != v58)
      {
        sub_1C4409B5C(v56);
      }

      else
      {
        v59 = sub_1C4408764();
        sub_1C4501018(v59, v60, v17);
      }

      *(v12 + 16) = 0;
    }

    goto LABEL_32;
  }

  while (1)
  {
    v25 = __clz(__rbit64(v21));
    v26 = (v21 - 1) & v21;
LABEL_11:
    v30 = v25 | (v15 << 6);
    v31 = *(v12 + 48) + *(v62 + 72) * v30;
    v32 = 48 * v30;
    v68 = *(v62 + 72);
    v69 = v26;
    v33 = sub_1C4434094();
    v34(v33);
    v35 = *(v12 + 56) + v32;
    if (v63)
    {
      v66 = *v35;
      v67 = *(v35 + 16);
      v36 = *(v35 + 32);
      v37 = *(v35 + 40);
    }

    else
    {
      v36 = *(v35 + 32);
      v37 = *(v35 + 40);
      v66 = *v35;
      v67 = *(v35 + 16);
      sub_1C45D7F64(*v35, *(v35 + 8), *(v35 + 16), *(v35 + 24), v36, v37);
    }

    v38 = *(v14 + 40);
    sub_1C467BA24(&qword_1EDDEFFD0, 255, MEMORY[0x1E69A9478]);
    sub_1C4F00FD8();
    v39 = *(v14 + 32);
    sub_1C4411990();
    v41 = *(v24 + 8 * v40);
    sub_1C4405760();
    if (v42)
    {
      break;
    }

    sub_1C440D204();
    v45 = v43 | v44;
    v46 = v64;
LABEL_24:
    sub_1C441EB0C();
    *(v24 + v52) |= v53;
    (*v65)(*(v14 + 48) + v68 * v45, v46, v70);
    v54 = *(v14 + 56) + 48 * v45;
    *v54 = v66;
    *(v54 + 16) = v67;
    *(v54 + 32) = v36;
    *(v54 + 40) = v37;
    sub_1C4404DA4();
    v12 = v61;
    v21 = v69;
    if (!v69)
    {
      goto LABEL_6;
    }
  }

  sub_1C43FFBF0();
  v46 = v64;
  while (1)
  {
    sub_1C4410160();
    if (v42)
    {
      if (v48)
      {
        break;
      }
    }

    if (v47 == v49)
    {
      v47 = 0;
    }

    if (*(v24 + 8 * v47) != -1)
    {
      sub_1C4410A88();
      v45 = v51 + (v50 << 6);
      goto LABEL_24;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1C4679B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *))
{
  sub_1C4412E64(a1);
  sub_1C456902C(v9, v10);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v11)
  {
LABEL_30:

    *v5 = v7;
    return;
  }

  v12 = 0;
  v14 = (v6 + 64);
  v13 = *(v6 + 64);
  v15 = *(v6 + 32);
  sub_1C43FEC90();
  sub_1C441D1A0();
  if (!v8)
  {
LABEL_4:
    v17 = v12;
    while (1)
    {
      v12 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v5)
      {
        break;
      }

      ++v17;
      if (v14[v12])
      {
        sub_1C43FCF1C();
        v8 = v19 & v18;
        goto LABEL_9;
      }
    }

    if (v41)
    {
      sub_1C4416EF0();
      if (v37 != v38)
      {
        *v14 = -1 << v36;
      }

      else
      {
        v39 = sub_1C4408764();
        sub_1C4501018(v39, v40, v6 + 64);
      }

      *(v6 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_1C445E7B0();
LABEL_9:
    v20 = v16 | (v12 << 6);
    v21 = (*(v6 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v6 + 56) + 40 * v20;
    if (v41)
    {
      a5(v24, v43);
    }

    else
    {
      sub_1C442E860(v24, v43);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v25 = *(v7 + 40);
    sub_1C4F02AF8();
    sub_1C446BE8C();
    v26 = sub_1C4F02B68();
    sub_1C441F630(v26);
    v28 = *(v7 + 64 + 8 * v27);
    sub_1C4405760();
    if (v29)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_22:
    sub_1C43FFF28(v30);
    a5(v43, (v35 + 40 * v34));
    sub_1C443322C();
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v29)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    sub_1C444FCD8(v31);
    if (!v29)
    {
      sub_1C43FCF98();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C4679D48()
{
  sub_1C43FBD3C();
  sub_1C443FB4C();
  v4 = sub_1C4EFEFB8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4426A80();
  sub_1C456902C(&qword_1EC0BAB90, &qword_1C4F16CC0);
  sub_1C442FC54();
  v50 = v2;
  sub_1C442F148();
  sub_1C445FCFC();
  if (!v13)
  {
LABEL_30:

    *v0 = v3;
    sub_1C43FE9F0();
    return;
  }

  v53 = v12;
  v14 = 0;
  v16 = v1 + 64;
  v15 = *(v1 + 64);
  v17 = *(v1 + 32);
  sub_1C43FEC90();
  sub_1C441D1A0();
  v48 = v7;
  v51 = (v7 + 32);
  v18 = v3 + 64;
  v49 = v1;
  if (!v12)
  {
LABEL_4:
    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v14 >= v0)
      {
        break;
      }

      ++v20;
      if (*(v16 + 8 * v14))
      {
        sub_1C43FCF1C();
        v12 = v22 & v21;
        goto LABEL_9;
      }
    }

    if (v50)
    {
      sub_1C4416EF0();
      if (v44 != v45)
      {
        sub_1C4409B5C(v43);
      }

      else
      {
        v46 = sub_1C4408764();
        sub_1C4501018(v46, v47, v16);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_1C445E7B0();
LABEL_9:
    v52 = *(v7 + 72);
    v23 = *(v1 + 48) + v52 * (v19 | (v14 << 6));
    v24 = sub_1C443F58C();
    v25(v24);
    v26 = sub_1C441AE68();
    if (v50)
    {
      sub_1C441D670(v26, v27);
    }

    else
    {
      sub_1C442E860(v26, v27);
    }

    v28 = *(v3 + 40);
    sub_1C467BA24(&qword_1EDDEFF90, 255, MEMORY[0x1E69A97D0]);
    sub_1C4F00FD8();
    v29 = *(v3 + 32);
    sub_1C4411990();
    v31 = *(v18 + 8 * v30);
    sub_1C4405760();
    if (v32)
    {
      break;
    }

    sub_1C440D204();
    v35 = v33 | v34;
    v7 = v48;
    v1 = v49;
LABEL_22:
    sub_1C441EB0C();
    sub_1C4435828(v41);
    (*v51)(v42 + v52 * v35, v53, v4);
    sub_1C441D670(&v54, *(v3 + 56) + 40 * v35);
    sub_1C4404DA4();
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  v7 = v48;
  v1 = v49;
  while (1)
  {
    sub_1C4410160();
    if (v32)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36 == v38)
    {
      v36 = 0;
    }

    if (*(v18 + 8 * v36) != -1)
    {
      sub_1C4410A88();
      v35 = v40 + (v39 << 6);
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C467A010()
{
  sub_1C43FBD3C();
  sub_1C4450628();
  v60 = sub_1C4EFF0C8();
  v4 = sub_1C43FCDF8(v60);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v59 = v10 - v9;
  v11 = *v1;
  if (*(*v1 + 24) > v0)
  {
    v12 = *(*v1 + 24);
  }

  sub_1C456902C(&qword_1EC0BAAF0, &qword_1C4F16BF8);
  v57 = v3;
  v13 = sub_1C4F02548();
  if (!*(v11 + 16))
  {
LABEL_32:

LABEL_33:
    *v2 = v13;
    sub_1C43FE9F0();
    return;
  }

  v53 = v2;
  v14 = 0;
  v16 = v11 + 64;
  v15 = *(v11 + 64);
  v17 = *(v11 + 32);
  sub_1C43FEC90();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v54 = (v6 + 16);
  v55 = v11;
  v56 = v6;
  v58 = (v6 + 32);
  v23 = v13 + 64;
  if ((v19 & v18) == 0)
  {
LABEL_6:
    v25 = v14;
    while (1)
    {
      v14 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v14 >= v22)
      {
        break;
      }

      ++v25;
      if (*(v16 + 8 * v14))
      {
        sub_1C43FCF1C();
        v20 = v27 & v26;
        goto LABEL_11;
      }
    }

    if ((v57 & 1) == 0)
    {

      v2 = v53;
      goto LABEL_33;
    }

    v47 = *(v11 + 32);
    sub_1C43FED48();
    v2 = v53;
    if (v49 != v50)
    {
      sub_1C4409B5C(v48);
    }

    else
    {
      v51 = sub_1C4408764();
      sub_1C4501018(v51, v52, v16);
    }

    *(v11 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_11:
    v28 = v24 | (v14 << 6);
    v29 = *(v11 + 56);
    v30 = (*(v11 + 48) + 16 * v28);
    v32 = *v30;
    v31 = v30[1];
    v33 = *(v56 + 72);
    v34 = v29 + v33 * v28;
    if (v57)
    {
      (*v58)(v59, v34, v60);
    }

    else
    {
      (*v54)(v59, v34, v60);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v35 = *(v13 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    sub_1C4F02B68();
    v36 = *(v13 + 32);
    sub_1C4411990();
    v38 = *(v23 + 8 * v37);
    sub_1C4405760();
    if (v39)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_24:
    sub_1C44064EC();
    *(v23 + v43) |= v44;
    v46 = (*(v13 + 48) + 16 * v45);
    *v46 = v32;
    v46[1] = v31;
    (*v58)(*(v13 + 56) + v33 * v45, v59, v60);
    sub_1C4404DA4();
    v11 = v55;
    if (!v20)
    {
      goto LABEL_6;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v39)
    {
      if (v41)
      {
        break;
      }
    }

    if (v40 == v42)
    {
      v40 = 0;
    }

    if (*(v23 + 8 * v40) != -1)
    {
      sub_1C43FCF98();
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1C467A2D4()
{
  sub_1C43FBD3C();
  sub_1C443FB4C();
  v6 = sub_1C4EFF0C8();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C4426A80();
  sub_1C456902C(&qword_1EC0BAAE8, &qword_1C4F16BF0);
  sub_1C442FC54();
  sub_1C442F148();
  sub_1C445FCFC();
  if (!v15)
  {
LABEL_30:

LABEL_31:
    *v0 = v4;
    sub_1C43FE9F0();
    return;
  }

  v49 = v0;
  v16 = 0;
  v18 = v2 + 64;
  v17 = *(v2 + 64);
  v19 = *(v2 + 32);
  sub_1C43FEC90();
  sub_1C447EFA8();
  if (!v5)
  {
LABEL_4:
    v20 = v16;
    while (1)
    {
      v16 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        break;
      }

      ++v20;
      if (*(v18 + 8 * v16))
      {
        sub_1C43FCF1C();
        v5 = v22 & v21;
        goto LABEL_9;
      }
    }

    if ((v3 & 1) == 0)
    {

      v0 = v49;
      goto LABEL_31;
    }

    sub_1C4416EF0();
    v0 = v49;
    if (v45 != v46)
    {
      sub_1C4409B5C(v44);
    }

    else
    {
      v47 = sub_1C4408764();
      sub_1C4501018(v47, v48, v18);
    }

    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1C4410218();
LABEL_9:
    sub_1C44021DC();
    if (v23)
    {
      v24 = sub_1C4415FD4();
      v25(v24);
      v51 = *(*(v2 + 56) + 8 * v1);
    }

    else
    {
      v26 = sub_1C4415FD4();
      v27(v26);
      v51 = *(*(v2 + 56) + 8 * v1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v28 = *(v4 + 40);
    sub_1C441C17C();
    sub_1C467BA24(&qword_1EDDFE820, 255, v29);
    sub_1C442EAD4();
    v30 = *(v4 + 32);
    sub_1C4411990();
    v32 = *(v9 + 8 * v31);
    sub_1C4405760();
    if (v33)
    {
      break;
    }

    sub_1C440D204();
    v1 = v34 | v35;
LABEL_22:
    sub_1C441EB0C();
    v42 = sub_1C440C3D8(v41);
    v43(v42);
    *(*(v4 + 56) + 8 * v1) = v51;
    sub_1C4404DA4();
    v2 = v50;
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v33)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36 == v38)
    {
      v36 = 0;
    }

    if (*(v9 + 8 * v36) != -1)
    {
      sub_1C4410A88();
      v1 = v40 + (v39 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1C467A544()
{
  sub_1C43FBD3C();
  sub_1C443FB4C();
  v6 = sub_1C4EFF428();
  v7 = sub_1C43FCDF8(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C4426A80();
  sub_1C456902C(&qword_1EC0BAB00, &unk_1C4F58BA0);
  sub_1C442FC54();
  sub_1C442F148();
  sub_1C445FCFC();
  if (!v15)
  {
LABEL_30:

LABEL_31:
    *v0 = v4;
    sub_1C43FE9F0();
    return;
  }

  v48 = v0;
  v16 = 0;
  v18 = v2 + 64;
  v17 = *(v2 + 64);
  v19 = *(v2 + 32);
  sub_1C43FEC90();
  sub_1C447EFA8();
  if (!v5)
  {
LABEL_4:
    v20 = v16;
    while (1)
    {
      v16 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v16 >= v14)
      {
        break;
      }

      ++v20;
      if (*(v18 + 8 * v16))
      {
        sub_1C43FCF1C();
        v5 = v22 & v21;
        goto LABEL_9;
      }
    }

    if ((v3 & 1) == 0)
    {

      v0 = v48;
      goto LABEL_31;
    }

    sub_1C4416EF0();
    v0 = v48;
    if (v44 != v45)
    {
      sub_1C4409B5C(v43);
    }

    else
    {
      v46 = sub_1C4408764();
      sub_1C4501018(v46, v47, v18);
    }

    *(v2 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    sub_1C4410218();
LABEL_9:
    sub_1C44021DC();
    if (v23)
    {
      v24 = sub_1C4415FD4();
      v25(v24);
      v50 = *(*(v2 + 56) + 8 * v1);
    }

    else
    {
      v26 = sub_1C4415FD4();
      v27(v26);
      v50 = *(*(v2 + 56) + 8 * v1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v28 = *(v4 + 40);
    sub_1C467BA24(&qword_1EDDEFF70, 255, MEMORY[0x1E69A98A0]);
    sub_1C442EAD4();
    v29 = *(v4 + 32);
    sub_1C4411990();
    v31 = *(v9 + 8 * v30);
    sub_1C4405760();
    if (v32)
    {
      break;
    }

    sub_1C440D204();
    v1 = v33 | v34;
LABEL_22:
    sub_1C441EB0C();
    v41 = sub_1C440C3D8(v40);
    v42(v41);
    *(*(v4 + 56) + 8 * v1) = v50;
    sub_1C4404DA4();
    v2 = v49;
    if (!v5)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v32)
    {
      if (v36)
      {
        break;
      }
    }

    if (v35 == v37)
    {
      v35 = 0;
    }

    if (*(v9 + 8 * v35) != -1)
    {
      sub_1C4410A88();
      v1 = v39 + (v38 << 6);
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_1C467A7C4()
{
  sub_1C443FB4C();
  v4 = sub_1C4EFF0C8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4426A80();
  sub_1C456902C(&qword_1EC0BAAF8, &unk_1C4F16C00);
  sub_1C442FC54();
  v50 = v2;
  sub_1C442F148();
  sub_1C445FCFC();
  if (!v13)
  {
LABEL_27:

    *v0 = v3;
    return;
  }

  v52 = v12;
  v53 = v4;
  v14 = 0;
  v16 = v1 + 64;
  v15 = *(v1 + 64);
  v17 = *(v1 + 32);
  sub_1C43FEC90();
  sub_1C441D1A0();
  v18 = v3 + 64;
  if (!v12)
  {
LABEL_4:
    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v14 >= v0)
      {
        break;
      }

      ++v21;
      if (*(v16 + 8 * v14))
      {
        sub_1C43FCF1C();
        v12 = v23 & v22;
        goto LABEL_9;
      }
    }

    if (v50)
    {
      sub_1C4416EF0();
      if (v46 != v47)
      {
        sub_1C4409B5C(v45);
      }

      else
      {
        v48 = sub_1C4408764();
        sub_1C4501018(v48, v49, v16);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    sub_1C445E7B0();
LABEL_9:
    v24 = v19 | (v14 << 6);
    v51 = *(v20 + 72);
    v25 = *(v1 + 48) + v51 * v24;
    v26 = sub_1C441837C();
    v27(v26);
    v28 = *(*(v1 + 56) + 8 * v24);
    v29 = *(v3 + 40);
    sub_1C441C17C();
    sub_1C467BA24(&qword_1EDDFE820, 255, v30);
    sub_1C4F00FD8();
    v31 = *(v3 + 32);
    sub_1C4411990();
    v33 = *(v18 + 8 * v32);
    sub_1C4405760();
    if (v34)
    {
      break;
    }

    sub_1C440D204();
    v37 = v35 | v36;
LABEL_19:
    sub_1C441EB0C();
    sub_1C4435828(v43);
    (*(v7 + 32))(v44 + v51 * v37, v52, v53);
    *(*(v3 + 56) + 8 * v37) = v28;
    sub_1C4404DA4();
    if (!v12)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v34)
    {
      if (v39)
      {
        break;
      }
    }

    if (v38 == v40)
    {
      v38 = 0;
    }

    if (*(v18 + 8 * v38) != -1)
    {
      sub_1C4410A88();
      v37 = v42 + (v41 << 6);
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C467AA84()
{
  sub_1C4423AE0();
  sub_1C440599C(v5);
  sub_1C456902C(&qword_1EC0B86A8, &qword_1C4F16C10);
  sub_1C440BBEC();
  v37 = v1;
  sub_1C447F8F8();
  sub_1C4423658();
  if (!v6)
  {
LABEL_29:

    *v0 = v2;
    sub_1C4441450();
    return;
  }

  v36 = v4;
  v7 = 0;
  v8 = v4;
  sub_1C44192F8();
  sub_1C4424FE0();
  if (!v1)
  {
LABEL_4:
    v10 = v7;
    while (1)
    {
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v0)
      {
        break;
      }

      sub_1C443456C();
      if (v11)
      {
        sub_1C43FCF1C();
        v1 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v37)
    {
      v30 = *(v4 + 32);
      sub_1C43FED48();
      if (v32 != v33)
      {
        sub_1C43FC134(v31);
      }

      else
      {
        v34 = sub_1C4408764();
        sub_1C4501018(v34, v35, v8);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_9:
    sub_1C441B808(v9);
    v16 = (v15 + 16 * v14);
    v17 = v16[1];
    v38 = *v16;
    if ((v37 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v18 = *(v2 + 40);
    sub_1C4F02AF8();
    sub_1C446BE8C();
    v19 = sub_1C4F02B68();
    sub_1C441F630(v19);
    v21 = *(v3 + 8 * v20);
    sub_1C4405760();
    if (v22)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C43FFF28(v23);
    v29 = (v28 + 16 * v27);
    *v29 = v38;
    v29[1] = v17;
    sub_1C443322C();
    v4 = v36;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v22)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    sub_1C444FCD8(v24);
    if (!v22)
    {
      sub_1C43FCF98();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C467AC18(uint64_t a1)
{
  sub_1C4412E64(a1);
  sub_1C456902C(&qword_1EC0BAB28, &qword_1C4F16C38);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v5)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  v6 = 0;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v4)
  {
LABEL_4:
    v8 = v6;
    while (1)
    {
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v1)
      {
        break;
      }

      sub_1C4422298();
      if (v9)
      {
        sub_1C43FCF1C();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v36)
    {
      sub_1C4416EF0();
      if (v32 != v33)
      {
        sub_1C43FC134(v31);
      }

      else
      {
        v34 = sub_1C4408764();
        sub_1C4501018(v34, v35, v2);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4(v7);
    v14 = (v13 + (v12 << 6));
    if (v36)
    {
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      *&v39[9] = *(v14 + 41);
      v38 = v16;
      *v39 = v17;
      v37 = v15;
    }

    else
    {
      sub_1C467B9B4(v14, &v37);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C440CB24();
    sub_1C444B094();
    v18 = sub_1C4F02B68();
    sub_1C441F630(v18);
    sub_1C4414988(v19);
    if (v20)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_22:
    sub_1C442C614(v21);
    v27 = (v26 + (v25 << 6));
    v28 = v37;
    v29 = v38;
    v30 = *v39;
    *(v27 + 41) = *&v39[9];
    v27[1] = v29;
    v27[2] = v30;
    *v27 = v28;
    sub_1C443322C();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v20)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    sub_1C441E1A8(v22);
    if (!v20)
    {
      sub_1C43FCF98();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C467ADC8()
{
  sub_1C4404B14();
  sub_1C440599C(v5);
  sub_1C456902C(&qword_1EC0BAB30, &qword_1C4F16C48);
  sub_1C440BBEC();
  v34 = v1;
  sub_1C447F8F8();
  sub_1C4423658();
  if (!v6)
  {
LABEL_29:

    *v0 = v2;
    sub_1C440576C();
    return;
  }

  v33 = v4;
  v7 = 0;
  v8 = v4;
  sub_1C44192F8();
  sub_1C4424FE0();
  if (!v1)
  {
LABEL_4:
    v10 = v7;
    while (1)
    {
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v0)
      {
        break;
      }

      sub_1C443456C();
      if (v11)
      {
        sub_1C43FCF1C();
        v1 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v34)
    {
      v27 = *(v4 + 32);
      sub_1C43FED48();
      if (v29 != v30)
      {
        sub_1C43FC134(v28);
      }

      else
      {
        v31 = sub_1C4408764();
        sub_1C4501018(v31, v32, v8);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_9:
    sub_1C441B808(v9);
    v16 = *(v15 + 8 * v14);
    if ((v34 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C440CB24();
    sub_1C446BE8C();
    v17 = sub_1C4F02B68();
    sub_1C441F630(v17);
    v19 = *(v3 + 8 * v18);
    sub_1C4405760();
    if (v20)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C43FFF28(v21);
    *(v26 + 8 * v25) = v16;
    sub_1C443322C();
    v4 = v33;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v20)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    sub_1C444FCD8(v22);
    if (!v20)
    {
      sub_1C43FCF98();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C467AF58()
{
  sub_1C4423AE0();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  if (*(*v0 + 24) > v5)
  {
    v6 = *(*v0 + 24);
  }

  sub_1C456902C(&qword_1EC0BAB88, &qword_1C4F16CB8);
  v45 = v3;
  v7 = sub_1C4F02548();
  if (!*(v4 + 16))
  {
LABEL_31:

LABEL_32:
    *v1 = v7;
    sub_1C4441450();
    return;
  }

  v44 = v4;
  v8 = 0;
  v9 = v4;
  sub_1C44192F8();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v15 = v7 + 8;
  if ((v11 & v10) == 0)
  {
LABEL_6:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v14)
      {
        break;
      }

      ++v17;
      if (*(v9 + 8 * v8))
      {
        sub_1C43FCF1C();
        v12 = v19 & v18;
        goto LABEL_11;
      }
    }

    if ((v45 & 1) == 0)
    {

      v1 = v0;
      goto LABEL_32;
    }

    v38 = *(v4 + 32);
    sub_1C43FED48();
    v1 = v0;
    if (v40 != v41)
    {
      sub_1C43FC134(v39);
    }

    else
    {
      v42 = sub_1C4408764();
      sub_1C4501018(v42, v43, v9);
    }

    *(v4 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    sub_1C4410218();
LABEL_11:
    v20 = v16 | (v8 << 6);
    v21 = *(v4 + 56);
    v22 = (*(v4 + 48) + 32 * v20);
    v23 = v22[1];
    v47 = *v22;
    v24 = v22[3];
    v46 = v22[2];
    v25 = *(v21 + 8 * v20);
    if ((v45 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v26 = v7[5];
    sub_1C4F02AF8();
    sub_1C4F01298();
    sub_1C4F01298();
    v27 = sub_1C4F02B68();
    sub_1C441F630(v27);
    v29 = v15[v28];
    sub_1C4405760();
    if (v30)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_23:
    sub_1C44064EC();
    *(v15 + v34) |= v35;
    v37 = (v7[6] + 32 * v36);
    *v37 = v47;
    v37[1] = v23;
    v37[2] = v46;
    v37[3] = v24;
    *(v7[7] + 8 * v36) = v25;
    sub_1C443322C();
    v4 = v44;
    if (!v12)
    {
      goto LABEL_6;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    if (v31 == v33)
    {
      v31 = 0;
    }

    if (v15[v31] != -1)
    {
      sub_1C43FCF98();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1C467B19C()
{
  sub_1C4423AE0();
  sub_1C4412E64(v4);
  sub_1C456902C(v5, v6);
  sub_1C442FC54();
  sub_1C442F148();
  sub_1C4440FB4();
  if (!v7)
  {
LABEL_29:

    *v0 = v2;
    sub_1C4441450();
    return;
  }

  v8 = 0;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v3)
  {
LABEL_4:
    v10 = v8;
    while (1)
    {
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v0)
      {
        break;
      }

      sub_1C4422298();
      if (v11)
      {
        sub_1C43FCF1C();
        v3 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v2)
    {
      sub_1C4416EF0();
      if (v27 != v28)
      {
        sub_1C43FC134(v26);
      }

      else
      {
        v29 = sub_1C4408764();
        sub_1C4501018(v29, v30, v1);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4(v9);
    v31 = *(v15 + 16 * v14);
    if ((v2 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v16 = *(v2 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    v17 = sub_1C4F02B68();
    sub_1C441F630(v17);
    sub_1C4414988(v18);
    if (v19)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C442C614(v20);
    *(v25 + 16 * v24) = v31;
    sub_1C443322C();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v19)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    sub_1C441E1A8(v21);
    if (!v19)
    {
      sub_1C43FCF98();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C467B328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  sub_1C4404B14();
  sub_1C4412E64(v16);
  sub_1C456902C(&qword_1EC0BAB58, &unk_1C4F58BF0);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v17)
  {
LABEL_29:

    *v12 = v14;
    sub_1C440576C();
    return;
  }

  v42 = v13;
  v18 = 0;
  v19 = v13;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v15)
  {
LABEL_4:
    v21 = v18;
    while (1)
    {
      v18 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v18 >= v12)
      {
        break;
      }

      sub_1C4422298();
      if (v22)
      {
        sub_1C43FCF1C();
        v15 = v24 & v23;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      sub_1C4416EF0();
      if (v38 != v39)
      {
        sub_1C43FC134(v37);
      }

      else
      {
        v40 = sub_1C4408764();
        sub_1C4501018(v40, v41, v19);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4(v20);
    v27 = *(v26 + 8 * v25);
    if ((a12 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C440CB24();
    sub_1C444B094();
    v28 = sub_1C4F02B68();
    sub_1C441F630(v28);
    sub_1C4414988(v29);
    if (v30)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C442C614(v31);
    *(v36 + 8 * v35) = v27;
    sub_1C443322C();
    v13 = v42;
    if (!v15)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v30)
    {
      if (v33)
      {
        break;
      }
    }

    if (v32 == v34)
    {
      v32 = 0;
    }

    sub_1C441E1A8(v32);
    if (!v30)
    {
      sub_1C43FCF98();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C467B4B0(uint64_t a1)
{
  sub_1C4412E64(a1);
  sub_1C456902C(&qword_1EC0B86B8, &unk_1C4F58C00);
  sub_1C44259EC();
  sub_1C4440FB4();
  if (!v5)
  {
LABEL_30:

    *v1 = v3;
    return;
  }

  v6 = 0;
  sub_1C44192F8();
  sub_1C442B9E8();
  if (!v4)
  {
LABEL_4:
    v8 = v6;
    while (1)
    {
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v1)
      {
        break;
      }

      sub_1C4422298();
      if (v9)
      {
        sub_1C43FCF1C();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v29)
    {
      sub_1C4416EF0();
      if (v25 != v26)
      {
        sub_1C43FC134(v24);
      }

      else
      {
        v27 = sub_1C4408764();
        sub_1C4501018(v27, v28, v2);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    sub_1C43FE644();
LABEL_9:
    sub_1C4434ED4(v7);
    v14 = (v13 + 32 * v12);
    if (v29)
    {
      sub_1C44482AC(v14, v30);
    }

    else
    {
      sub_1C442B870(v14, v30);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C440CB24();
    sub_1C444B094();
    v15 = sub_1C4F02B68();
    sub_1C441F630(v15);
    sub_1C4414988(v16);
    if (v17)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_22:
    sub_1C442C614(v18);
    sub_1C44482AC(v30, (v23 + 32 * v22));
    sub_1C443322C();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v17)
    {
      if (v20)
      {
        break;
      }
    }

    if (v19 == v21)
    {
      v19 = 0;
    }

    sub_1C441E1A8(v19);
    if (!v17)
    {
      sub_1C43FCF98();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_1C467B67C()
{
  sub_1C4404B14();
  sub_1C440599C(v5);
  sub_1C456902C(v6, v7);
  sub_1C440BBEC();
  v36 = v1;
  sub_1C447F8F8();
  sub_1C4423658();
  if (!v8)
  {
LABEL_29:

    *v0 = v2;
    sub_1C440576C();
    return;
  }

  v35 = v4;
  v9 = 0;
  v10 = v4;
  sub_1C44192F8();
  sub_1C4424FE0();
  if (!v1)
  {
LABEL_4:
    v12 = v9;
    while (1)
    {
      v9 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v9 >= v0)
      {
        break;
      }

      sub_1C443456C();
      if (v13)
      {
        sub_1C43FCF1C();
        v1 = v15 & v14;
        goto LABEL_9;
      }
    }

    if (v36)
    {
      v29 = *(v4 + 32);
      sub_1C43FED48();
      if (v31 != v32)
      {
        sub_1C43FC134(v30);
      }

      else
      {
        v33 = sub_1C4408764();
        sub_1C4501018(v33, v34, v10);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    sub_1C44041D4();
LABEL_9:
    sub_1C441B808(v11);
    v18 = *(v17 + 8 * v16);
    if ((v36 & 1) == 0)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    sub_1C440CB24();
    sub_1C446BE8C();
    v19 = sub_1C4F02B68();
    sub_1C441F630(v19);
    v21 = *(v3 + 8 * v20);
    sub_1C4405760();
    if (v22)
    {
      break;
    }

    sub_1C43FFC04();
LABEL_21:
    sub_1C43FFF28(v23);
    *(v28 + 8 * v27) = v18;
    sub_1C443322C();
    v4 = v35;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  sub_1C43FFBF0();
  while (1)
  {
    sub_1C4410160();
    if (v22)
    {
      if (v25)
      {
        break;
      }
    }

    if (v24 == v26)
    {
      v24 = 0;
    }

    sub_1C444FCD8(v24);
    if (!v22)
    {
      sub_1C43FCF98();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void *sub_1C467B7F0(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C467B9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9AE0, &qword_1C4F16C40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C467BA24(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C467BA74(__int16 a1, uint64_t a2)
{
  *(v2 + 152) = a2;
  *(v2 + 176) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C467BA98, 0, 0);
}

uint64_t sub_1C467BA98()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 176);
  v3 = objc_opt_self();
  sub_1C467BDE0();
  v4 = sub_1C4F01658();
  *(v0 + 160) = v4;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1C467BBF4;
  v5 = swift_continuation_init();
  *(v0 + 136) = sub_1C456902C(&unk_1EC0BABA0, &qword_1C4F16CD8);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C467BE24;
  *(v0 + 104) = &unk_1F43E6390;
  *(v0 + 112) = v5;
  [v3 fullSetDonationWithItemType:v2 descriptors:v4 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C467BBF4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_1C467BD70;
  }

  else
  {
    v3 = sub_1C467BD04;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C467BD04()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C467BD70()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

unint64_t sub_1C467BDE0()
{
  result = qword_1EDDF0470;
  if (!qword_1EDDF0470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF0470);
  }

  return result;
}

uint64_t *sub_1C467BE24(uint64_t a1, void *a2, void *a3)
{
  result = sub_1C4409678((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1C467BE90(v6, a3);
  }

  if (a2)
  {
    return sub_1C467BEFC(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C467BE90(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

_BYTE *storeEnumTagSinglePayload for CNContactPrivacyChecker(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C467BFD0@<X0>(uint64_t *a1@<X8>)
{
  v55 = a1;
  v2 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v54[0] = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v54 - v6;
  v8 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v54 - v10;
  v12 = type metadata accessor for ConstructionProgressTokens(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v54 - v18;
  v20 = type metadata accessor for ProgressTokens(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v2 + 28);
  v56 = v1;
  v25 = *(v1 + v24);
  v54[1] = v7;
  switch(v25)
  {
    case 2:

      goto LABEL_4;
    default:
      v26 = sub_1C4F02938();

      if (v26)
      {
LABEL_4:
        v27 = v56 + *(v2 + 20);
        v28 = *(v27 + *(type metadata accessor for PhaseStores() + 24));
        v59 = v2;
        v60 = sub_1C46825D4(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor);
        sub_1C4422F90(&v57);
        sub_1C448C9D8();
        sub_1C44FEF34(&v57, 1);
        sub_1C440962C(&v57);
        if (sub_1C44157D4(v19, 1, v20) == 1)
        {
          v29 = &unk_1EC0BA4B8;
          v30 = &unk_1C4F16F60;
          v31 = v19;
LABEL_8:
          result = sub_1C4420C3C(v31, v29, v30);
          v49 = 0;
          v50 = 0xF000000000000000;
          goto LABEL_18;
        }

        sub_1C449F390();
        v35 = objc_autoreleasePoolPush();
        v36 = &v23[*(v20 + 28)];
        v37 = v36[1];
        if (v37 >> 60 == 15)
        {
          v49 = 0;
          v50 = 0xF000000000000000;
        }

        else
        {
          v41 = *v36;
          v42 = sub_1C4EF9348();
          v43 = *(v42 + 48);
          v44 = *(v42 + 52);
          swift_allocObject();
          sub_1C44344B8(v41, v37);
          sub_1C4EF9338();
          sub_1C456902C(qword_1EC0BAC30, &qword_1C4F142F8);
          sub_1C4401CBC(&qword_1EDDF7D78, qword_1EC0BAC30, &qword_1C4F142F8);
          sub_1C4EF9328();
          sub_1C441DFEC(v41, v37);

          v49 = v57;
          v50 = v58;
        }

        objc_autoreleasePoolPop(v35);
        v51 = type metadata accessor for ProgressTokens;
        v52 = v23;
      }

      else
      {
        v32 = v56 + *(v2 + 20);
        v33 = *(v32 + *(type metadata accessor for PhaseStores() + 24));
        v59 = v2;
        v60 = sub_1C46825D4(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor);
        sub_1C4422F90(&v57);
        sub_1C448C9D8();
        sub_1C449D50C(&v57, 0);
        sub_1C440962C(&v57);
        if (sub_1C44157D4(v11, 1, v12) == 1)
        {
          v29 = &unk_1EC0BAC20;
          v30 = &unk_1C4F141E0;
          v31 = v11;
          goto LABEL_8;
        }

        sub_1C449F390();
        v38 = objc_autoreleasePoolPush();
        v39 = &v15[*(v12 + 28)];
        v40 = v39[1];
        if (v40 >> 60 == 15)
        {
          v49 = 0;
          v50 = 0xF000000000000000;
        }

        else
        {
          v45 = *v39;
          v46 = sub_1C4EF9348();
          v47 = *(v46 + 48);
          v48 = *(v46 + 52);
          swift_allocObject();
          sub_1C44344B8(v45, v40);
          sub_1C4EF9338();
          sub_1C456902C(qword_1EC0BAC30, &qword_1C4F142F8);
          sub_1C4401CBC(&qword_1EDDF7D78, qword_1EC0BAC30, &qword_1C4F142F8);
          sub_1C4EF9328();
          sub_1C441DFEC(v45, v40);

          v49 = v57;
          v50 = v58;
        }

        objc_autoreleasePoolPop(v38);
        v51 = type metadata accessor for ConstructionProgressTokens;
        v52 = v15;
      }

      result = sub_1C4485354(v52, v51);
LABEL_18:
      v53 = v55;
      *v55 = v49;
      v53[1] = v50;
      return result;
  }
}

void sub_1C467C860()
{
  sub_1C43FBD3C();
  sub_1C441B340(v5);
  v6 = type metadata accessor for FutureLifeEventDeltaSourceIngestor();
  v7 = sub_1C43FBCE0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4412E80(v10, v73);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4410A24();
  v12 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FFF80();
  v16 = type metadata accessor for ConstructionProgressTokens(0);
  v17 = sub_1C43FBCE0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C440A82C();
  v20 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C4414998();
  v25 = type metadata accessor for ProgressTokens(v24);
  v26 = sub_1C43FBCE0(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v31 = (v30 - v29);
  switch(v0[*(v6 + 20)])
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C();
      sub_1C440167C();
      if (v2)
      {
LABEL_6:
        v32 = &v0[*(v6 + 24)];
        v33 = type metadata accessor for PhaseStores();
        sub_1C442DE10(v33);
        sub_1C444B0B0();
        v36 = sub_1C46825D4(v34, v35);
        sub_1C4434EE8(v36);
        sub_1C4408774();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v47)
        {
          sub_1C44119A4();
          v45 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v47 & v46)
          {
            v49 = 1;
          }

          else
          {
            v49 = 0;
          }

          if (!(!v47 & v46))
          {
            v54 = sub_1C441451C(v48);
            sub_1C44099C4(v54);
            v55 = sub_1C4426A94();
            sub_1C44344B8(v55, v25);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            sub_1C43FD374();
            sub_1C442EAF8();
            v56 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v56, v57);
              objc_autoreleasePoolPop(v3);
              v58 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v58, v59);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v65 = sub_1C4F00978();
              sub_1C43FCEE8(v65, qword_1EDE2DE10);
              sub_1C4408774();
              sub_1C4461F5C();
              v66 = sub_1C4F00968();
              v67 = sub_1C4F01CF8();
              if (sub_1C443583C(v67))
              {
                sub_1C43FD084();
                v68 = sub_1C4402BBC();
                sub_1C44305A4(v68);
                *v49 = 136315138;
                sub_1C4408774();
                sub_1C443F5A0();
                sub_1C4485354(v2, type metadata accessor for FutureLifeEventDeltaSourceIngestor);
                sub_1C46403A4();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v49 + 4) = type metadata accessor for FutureLifeEventDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v69, v70, "No progress token for %s");
                sub_1C440962C(v31);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v56, v57);
          }

          objc_autoreleasePoolPop(v3);
          v71 = sub_1C4406938();
          goto LABEL_40;
        }

        v37 = &unk_1EC0BA4B8;
        v38 = &unk_1C4F16F60;
        v39 = v4;
LABEL_12:
        sub_1C4420C3C(v39, v37, v38);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      v40 = &v0[*(v6 + 24)];
      v41 = type metadata accessor for PhaseStores();
      sub_1C442DE10(v41);
      sub_1C444B0B0();
      v44 = sub_1C46825D4(v42, v43);
      sub_1C4434EE8(v44);
      sub_1C4408774();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v47)
      {
        v37 = &unk_1EC0BAC20;
        v38 = &unk_1C4F141E0;
        v39 = v1;
        goto LABEL_12;
      }

      sub_1C440A800();
      v50 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v52 & v51)
      {
        v49 = 1;
      }

      else
      {
        v49 = 0;
      }

      if (!(!v52 & v51))
      {
        v60 = sub_1C441451C(v53);
        sub_1C44099C4(v60);
        v61 = sub_1C43FD388();
        sub_1C44344B8(v61, v62);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        sub_1C43FD374();
        sub_1C4418390();
        v63 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v63, v64);
          objc_autoreleasePoolPop(v0);
          sub_1C442C644();
          v58 = v3;
          goto LABEL_29;
        }

        sub_1C441DCA4(v63, v64);
      }

      objc_autoreleasePoolPop(v0);
      sub_1C442C644();
      v71 = v3;
LABEL_40:
      sub_1C4485354(v71, v72);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467CD60()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  v7 = type metadata accessor for WalletEmailOrderDeltaSourceIngestor(v6);
  v8 = sub_1C43FBCE0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412E80(v11, v70);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4410A24();
  v13 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FFF80();
  v17 = type metadata accessor for ConstructionProgressTokens(0);
  v18 = sub_1C43FBCE0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A82C();
  v21 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1C4414998();
  v26 = type metadata accessor for ProgressTokens(v25);
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C44320B0();
  switch(v30)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C();
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        v31 = sub_1C441C194();
        sub_1C442DE10(v31);
        sub_1C44189FC();
        v34 = sub_1C46825D4(v32, v33);
        sub_1C4434EE8(v34);
        sub_1C440F434();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v44)
        {
          sub_1C44119A4();
          v42 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v44 & v43)
          {
            v46 = 1;
          }

          else
          {
            v46 = 0;
          }

          if (!(!v44 & v43))
          {
            v51 = sub_1C441451C(v45);
            sub_1C44099C4(v51);
            v52 = sub_1C4426A94();
            sub_1C44344B8(v52, v26);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            sub_1C43FD374();
            sub_1C442EAF8();
            v53 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v53, v54);
              objc_autoreleasePoolPop(v2);
              v55 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v55, v56);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v62 = sub_1C4F00978();
              sub_1C43FCEE8(v62, qword_1EDE2DE10);
              sub_1C440F434();
              sub_1C4461F5C();
              v63 = sub_1C4F00968();
              v64 = sub_1C4F01CF8();
              if (sub_1C443583C(v64))
              {
                sub_1C43FD084();
                v65 = sub_1C4402BBC();
                sub_1C44305A4(v65);
                *v46 = 136315138;
                sub_1C440F434();
                sub_1C443F5A0();
                sub_1C4485354(v1, type metadata accessor for WalletEmailOrderDeltaSourceIngestor);
                sub_1C464037C();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v46 + 4) = type metadata accessor for WalletEmailOrderDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v66, v67, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v53, v54);
          }

          objc_autoreleasePoolPop(v2);
          v68 = sub_1C4406938();
          goto LABEL_40;
        }

        v35 = &unk_1EC0BA4B8;
        v36 = &unk_1C4F16F60;
        v37 = v4;
LABEL_12:
        sub_1C4420C3C(v37, v35, v36);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      v38 = sub_1C444FCE8();
      sub_1C442DE10(v38);
      sub_1C44189FC();
      v41 = sub_1C46825D4(v39, v40);
      sub_1C4434EE8(v41);
      sub_1C440F434();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v44)
      {
        v35 = &unk_1EC0BAC20;
        v36 = &unk_1C4F141E0;
        v37 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v47 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v49 & v48)
      {
        v46 = 1;
      }

      else
      {
        v46 = 0;
      }

      if (!(!v49 & v48))
      {
        v57 = sub_1C441451C(v50);
        sub_1C44099C4(v57);
        v58 = sub_1C43FD388();
        sub_1C44344B8(v58, v59);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        sub_1C43FD374();
        sub_1C4418390();
        v60 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v60, v61);
          objc_autoreleasePoolPop(v26);
          sub_1C442C644();
          v55 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v60, v61);
      }

      objc_autoreleasePoolPop(v26);
      sub_1C442C644();
      v68 = v2;
LABEL_40:
      sub_1C4485354(v68, v69);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467D22C()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  v7 = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor(v6);
  v8 = sub_1C43FBCE0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412E80(v11, v70);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4410A24();
  v13 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FFF80();
  v17 = type metadata accessor for ConstructionProgressTokens(0);
  v18 = sub_1C43FBCE0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A82C();
  v21 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1C4414998();
  v26 = type metadata accessor for ProgressTokens(v25);
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C44320B0();
  switch(v30)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C();
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        v31 = sub_1C441C194();
        sub_1C442DE10(v31);
        sub_1C44364E8();
        v34 = sub_1C46825D4(v32, v33);
        sub_1C4434EE8(v34);
        sub_1C4425A14();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v44)
        {
          sub_1C44119A4();
          v42 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v44 & v43)
          {
            v46 = 1;
          }

          else
          {
            v46 = 0;
          }

          if (!(!v44 & v43))
          {
            v51 = sub_1C441451C(v45);
            sub_1C44099C4(v51);
            v52 = sub_1C4426A94();
            sub_1C44344B8(v52, v26);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            sub_1C43FD374();
            sub_1C442EAF8();
            v53 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v53, v54);
              objc_autoreleasePoolPop(v2);
              v55 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v55, v56);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v62 = sub_1C4F00978();
              sub_1C43FCEE8(v62, qword_1EDE2DE10);
              sub_1C4425A14();
              sub_1C4461F5C();
              v63 = sub_1C4F00968();
              v64 = sub_1C4F01CF8();
              if (sub_1C443583C(v64))
              {
                sub_1C43FD084();
                v65 = sub_1C4402BBC();
                sub_1C44305A4(v65);
                *v46 = 136315138;
                sub_1C4425A14();
                sub_1C443F5A0();
                sub_1C4485354(v1, type metadata accessor for BMAppleMusicEventDeltaSourceIngestor);
                sub_1C4640354();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v46 + 4) = type metadata accessor for BMAppleMusicEventDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v66, v67, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v53, v54);
          }

          objc_autoreleasePoolPop(v2);
          v68 = sub_1C4406938();
          goto LABEL_40;
        }

        v35 = &unk_1EC0BA4B8;
        v36 = &unk_1C4F16F60;
        v37 = v4;
LABEL_12:
        sub_1C4420C3C(v37, v35, v36);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      v38 = sub_1C444FCE8();
      sub_1C442DE10(v38);
      sub_1C44364E8();
      v41 = sub_1C46825D4(v39, v40);
      sub_1C4434EE8(v41);
      sub_1C4425A14();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v44)
      {
        v35 = &unk_1EC0BAC20;
        v36 = &unk_1C4F141E0;
        v37 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v47 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v49 & v48)
      {
        v46 = 1;
      }

      else
      {
        v46 = 0;
      }

      if (!(!v49 & v48))
      {
        v57 = sub_1C441451C(v50);
        sub_1C44099C4(v57);
        v58 = sub_1C43FD388();
        sub_1C44344B8(v58, v59);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        sub_1C43FD374();
        sub_1C4418390();
        v60 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v60, v61);
          objc_autoreleasePoolPop(v26);
          sub_1C442C644();
          v55 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v60, v61);
      }

      objc_autoreleasePoolPop(v26);
      sub_1C442C644();
      v68 = v2;
LABEL_40:
      sub_1C4485354(v68, v69);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467D6F8()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  v7 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(v6);
  v8 = sub_1C43FBCE0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412E80(v11, v70);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4410A24();
  v13 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FFF80();
  v17 = type metadata accessor for ConstructionProgressTokens(0);
  v18 = sub_1C43FBCE0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A82C();
  v21 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1C4414998();
  v26 = type metadata accessor for ProgressTokens(v25);
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C44320B0();
  switch(v30)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C();
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        v31 = sub_1C441C194();
        sub_1C442DE10(v31);
        sub_1C4433C00();
        v34 = sub_1C46825D4(v32, v33);
        sub_1C4434EE8(v34);
        sub_1C443323C();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v44)
        {
          sub_1C44119A4();
          v42 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v44 & v43)
          {
            v46 = 1;
          }

          else
          {
            v46 = 0;
          }

          if (!(!v44 & v43))
          {
            v51 = sub_1C441451C(v45);
            sub_1C44099C4(v51);
            v52 = sub_1C4426A94();
            sub_1C44344B8(v52, v26);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            sub_1C43FD374();
            sub_1C442EAF8();
            v53 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v53, v54);
              objc_autoreleasePoolPop(v2);
              v55 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v55, v56);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v62 = sub_1C4F00978();
              sub_1C43FCEE8(v62, qword_1EDE2DE10);
              sub_1C443323C();
              sub_1C4461F5C();
              v63 = sub_1C4F00968();
              v64 = sub_1C4F01CF8();
              if (sub_1C443583C(v64))
              {
                sub_1C43FD084();
                v65 = sub_1C4402BBC();
                sub_1C44305A4(v65);
                *v46 = 136315138;
                sub_1C443323C();
                sub_1C443F5A0();
                sub_1C4485354(v1, type metadata accessor for WalletClassicOrderDeltaSourceIngestor);
                sub_1C4640304();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v46 + 4) = type metadata accessor for WalletClassicOrderDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v66, v67, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v53, v54);
          }

          objc_autoreleasePoolPop(v2);
          v68 = sub_1C4406938();
          goto LABEL_40;
        }

        v35 = &unk_1EC0BA4B8;
        v36 = &unk_1C4F16F60;
        v37 = v4;
LABEL_12:
        sub_1C4420C3C(v37, v35, v36);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      v38 = sub_1C444FCE8();
      sub_1C442DE10(v38);
      sub_1C4433C00();
      v41 = sub_1C46825D4(v39, v40);
      sub_1C4434EE8(v41);
      sub_1C443323C();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v44)
      {
        v35 = &unk_1EC0BAC20;
        v36 = &unk_1C4F141E0;
        v37 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v47 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v49 & v48)
      {
        v46 = 1;
      }

      else
      {
        v46 = 0;
      }

      if (!(!v49 & v48))
      {
        v57 = sub_1C441451C(v50);
        sub_1C44099C4(v57);
        v58 = sub_1C43FD388();
        sub_1C44344B8(v58, v59);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        sub_1C43FD374();
        sub_1C4418390();
        v60 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v60, v61);
          objc_autoreleasePoolPop(v26);
          sub_1C442C644();
          v55 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v60, v61);
      }

      objc_autoreleasePoolPop(v26);
      sub_1C442C644();
      v68 = v2;
LABEL_40:
      sub_1C4485354(v68, v69);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467DBC4()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  v7 = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor(v6);
  v8 = sub_1C43FBCE0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412E80(v11, v70);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4410A24();
  v13 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FFF80();
  v17 = type metadata accessor for ConstructionProgressTokens(0);
  v18 = sub_1C43FBCE0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A82C();
  v21 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1C4414998();
  v26 = type metadata accessor for ProgressTokens(v25);
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C44320B0();
  switch(v30)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C();
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        v31 = sub_1C441C194();
        sub_1C442DE10(v31);
        sub_1C4440FC0();
        v34 = sub_1C46825D4(v32, v33);
        sub_1C4434EE8(v34);
        sub_1C440D214();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v44)
        {
          sub_1C44119A4();
          v42 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v44 & v43)
          {
            v46 = 1;
          }

          else
          {
            v46 = 0;
          }

          if (!(!v44 & v43))
          {
            v51 = sub_1C441451C(v45);
            sub_1C44099C4(v51);
            v52 = sub_1C4426A94();
            sub_1C44344B8(v52, v26);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            sub_1C43FD374();
            sub_1C442EAF8();
            v53 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v53, v54);
              objc_autoreleasePoolPop(v2);
              v55 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v55, v56);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v62 = sub_1C4F00978();
              sub_1C43FCEE8(v62, qword_1EDE2DE10);
              sub_1C440D214();
              sub_1C4461F5C();
              v63 = sub_1C4F00968();
              v64 = sub_1C4F01CF8();
              if (sub_1C443583C(v64))
              {
                sub_1C43FD084();
                v65 = sub_1C4402BBC();
                sub_1C44305A4(v65);
                *v46 = 136315138;
                sub_1C440D214();
                sub_1C443F5A0();
                sub_1C4485354(v1, type metadata accessor for WalletTrackedOrderDeltaSourceIngestor);
                sub_1C46401E4();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v46 + 4) = type metadata accessor for WalletTrackedOrderDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v66, v67, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v53, v54);
          }

          objc_autoreleasePoolPop(v2);
          v68 = sub_1C4406938();
          goto LABEL_40;
        }

        v35 = &unk_1EC0BA4B8;
        v36 = &unk_1C4F16F60;
        v37 = v4;
LABEL_12:
        sub_1C4420C3C(v37, v35, v36);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      v38 = sub_1C444FCE8();
      sub_1C442DE10(v38);
      sub_1C4440FC0();
      v41 = sub_1C46825D4(v39, v40);
      sub_1C4434EE8(v41);
      sub_1C440D214();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v44)
      {
        v35 = &unk_1EC0BAC20;
        v36 = &unk_1C4F141E0;
        v37 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v47 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v49 & v48)
      {
        v46 = 1;
      }

      else
      {
        v46 = 0;
      }

      if (!(!v49 & v48))
      {
        v57 = sub_1C441451C(v50);
        sub_1C44099C4(v57);
        v58 = sub_1C43FD388();
        sub_1C44344B8(v58, v59);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        sub_1C43FD374();
        sub_1C4418390();
        v60 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v60, v61);
          objc_autoreleasePoolPop(v26);
          sub_1C442C644();
          v55 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v60, v61);
      }

      objc_autoreleasePoolPop(v26);
      sub_1C442C644();
      v68 = v2;
LABEL_40:
      sub_1C4485354(v68, v69);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

void sub_1C467E090()
{
  sub_1C43FBD3C();
  v6 = sub_1C441B340(v5);
  v7 = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor(v6);
  v8 = sub_1C43FBCE0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4412E80(v11, v70);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4410A24();
  v13 = sub_1C456902C(&unk_1EC0BAC20, &unk_1C4F141E0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FFF80();
  v17 = type metadata accessor for ConstructionProgressTokens(0);
  v18 = sub_1C43FBCE0(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A82C();
  v21 = sub_1C456902C(&unk_1EC0BA4B8, &unk_1C4F16F60);
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  v25 = sub_1C4414998();
  v26 = type metadata accessor for ProgressTokens(v25);
  v27 = sub_1C43FBCE0(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C44320B0();
  switch(v30)
  {
    case 1:
      sub_1C441B7B0();
      goto LABEL_5;
    case 2:

      goto LABEL_6;
    case 3:
      sub_1C4402D44();
      goto LABEL_5;
    default:
LABEL_5:
      sub_1C440417C();
      sub_1C440167C();
      if (v1)
      {
LABEL_6:
        v31 = sub_1C441C194();
        sub_1C442DE10(v31);
        sub_1C44021FC();
        v34 = sub_1C46825D4(v32, v33);
        sub_1C4434EE8(v34);
        sub_1C4410A98();
        sub_1C448C9D8();
        sub_1C446BEA4();
        sub_1C442B9FC();
        if (!v44)
        {
          sub_1C44119A4();
          v42 = objc_autoreleasePoolPush();
          sub_1C440DFD8();
          if (!v44 & v43)
          {
            v46 = 1;
          }

          else
          {
            v46 = 0;
          }

          if (!(!v44 & v43))
          {
            v51 = sub_1C441451C(v45);
            sub_1C44099C4(v51);
            v52 = sub_1C4426A94();
            sub_1C44344B8(v52, v26);
            sub_1C4EF9338();
            sub_1C447F910();
            sub_1C441F648(&qword_1EDDF7D60);
            sub_1C43FD374();
            sub_1C442EAF8();
            v53 = sub_1C4401D48();
            if (&dword_1C4F141D0)
            {
              sub_1C441DCA4(v53, v54);
              objc_autoreleasePoolPop(v2);
              v55 = sub_1C4406938();
LABEL_29:
              sub_1C4485354(v55, v56);
              if (qword_1EDDFD028 != -1)
              {
                sub_1C4419274();
                swift_once();
              }

              v62 = sub_1C4F00978();
              sub_1C43FCEE8(v62, qword_1EDE2DE10);
              sub_1C4410A98();
              sub_1C4461F5C();
              v63 = sub_1C4F00968();
              v64 = sub_1C4F01CF8();
              if (sub_1C443583C(v64))
              {
                sub_1C43FD084();
                v65 = sub_1C4402BBC();
                sub_1C44305A4(v65);
                *v46 = 136315138;
                sub_1C4410A98();
                sub_1C443F5A0();
                sub_1C4485354(v1, type metadata accessor for WalletTransactionOrderDeltaSourceIngestor);
                sub_1C46401BC();
                sub_1C443FB60();
                sub_1C4434578();
                sub_1C442A8DC();
                *(v46 + 4) = type metadata accessor for WalletTransactionOrderDeltaSourceIngestor;
                sub_1C4415FE8(&dword_1C43F8000, v66, v67, "No progress token for %s");
                sub_1C440962C(v3);
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
              }

              else
              {
                sub_1C4461C4C();
              }

              goto LABEL_35;
            }

            sub_1C441DCA4(v53, v54);
          }

          objc_autoreleasePoolPop(v2);
          v68 = sub_1C4406938();
          goto LABEL_40;
        }

        v35 = &unk_1EC0BA4B8;
        v36 = &unk_1C4F16F60;
        v37 = v4;
LABEL_12:
        sub_1C4420C3C(v37, v35, v36);
LABEL_35:
        sub_1C4422A70();
        goto LABEL_41;
      }

      v38 = sub_1C444FCE8();
      sub_1C442DE10(v38);
      sub_1C44021FC();
      v41 = sub_1C46825D4(v39, v40);
      sub_1C4434EE8(v41);
      sub_1C4410A98();
      sub_1C448C9D8();
      sub_1C4469110();
      sub_1C441C8A8();
      if (v44)
      {
        v35 = &unk_1EC0BAC20;
        v36 = &unk_1C4F141E0;
        v37 = v0;
        goto LABEL_12;
      }

      sub_1C440A800();
      v47 = objc_autoreleasePoolPush();
      sub_1C4416F04();
      if (!v49 & v48)
      {
        v46 = 1;
      }

      else
      {
        v46 = 0;
      }

      if (!(!v49 & v48))
      {
        v57 = sub_1C441451C(v50);
        sub_1C44099C4(v57);
        v58 = sub_1C43FD388();
        sub_1C44344B8(v58, v59);
        sub_1C4EF9338();
        sub_1C447F910();
        sub_1C441F648(&qword_1EDDF7D60);
        sub_1C43FD374();
        sub_1C4418390();
        v60 = sub_1C43FD388();
        if (&dword_1C4F141D0)
        {
          sub_1C441DCA4(v60, v61);
          objc_autoreleasePoolPop(v26);
          sub_1C442C644();
          v55 = v2;
          goto LABEL_29;
        }

        sub_1C441DCA4(v60, v61);
      }

      objc_autoreleasePoolPop(v26);
      sub_1C442C644();
      v68 = v2;
LABEL_40:
      sub_1C4485354(v68, v69);
LABEL_41:
      sub_1C4404DB4();
      sub_1C43FE9F0();
      return;
  }
}

uint64_t sub_1C467E55C(uint64_t a1)
{
  v2 = v1;
  v40[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDDFD028 != -1)
  {
    swift_once();
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40[0] = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1C6940380](a1, MEMORY[0x1E69E6158]);
    v11 = sub_1C441D828(v9, v10, v40);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1C43F8000, v5, v6, "CNContact delta identiers : %s", v7, 0xCu);
    sub_1C440962C(v8);
    MEMORY[0x1C6942830](v8, -1, -1);
    MEMORY[0x1C6942830](v7, -1, -1);
  }

  if (!*(a1 + 16))
  {
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CB8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v22, "Can't fetch CNContacts as identifier is empty", v23, 2u);
      MEMORY[0x1C6942830](v23, -1, -1);
    }

    goto LABEL_18;
  }

  sub_1C4461BB8(0, &qword_1EDDF03C8, 0x1E695CD78);
  sub_1C44C8F40();
  v12 = sub_1C467EA4C();
  v13 = objc_opt_self();
  v14 = sub_1C4F01658();
  v15 = [v13 predicateForContactsWithIdentifiers_];

  [v12 setPredicate_];
  v16 = *(v2 + *(type metadata accessor for CNContactDeltaSourceIngestor(0) + 32));
  v40[0] = 0;
  v17 = [v16 executeFetchRequest:v12 error:v40];
  if (!v17)
  {
    v24 = v40[0];
    v25 = sub_1C4EF97A8();

    swift_willThrow();
    v26 = v25;
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40[0] = v30;
      *v29 = 136315138;
      v31 = v25;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v32 = sub_1C4F01198();
      v34 = sub_1C441D828(v32, v33, v40);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Can't fetch CNContacts with identifiers due to: %s", v29, 0xCu);
      sub_1C440962C(v30);
      MEMORY[0x1C6942830](v30, -1, -1);
      MEMORY[0x1C6942830](v29, -1, -1);
    }

    goto LABEL_18;
  }

  v18 = v17;
  v19 = v40[0];
  v40[0] = [v18 value];
  sub_1C456902C(&unk_1EC0BABF0, &qword_1C4F16F30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v35 = sub_1C4F00968();
    v36 = sub_1C4F01CD8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1C43F8000, v35, v36, "Can't get CNContacts from CNFetchResult", v37, 2u);
      MEMORY[0x1C6942830](v37, -1, -1);
    }

LABEL_18:
    result = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  result = v39;
LABEL_19:
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1C467EA4C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1C456902C(&unk_1EC0BABE0, &unk_1C4F16F20);
  v1 = sub_1C4F01658();

  v2 = [v0 initWithKeysToFetch_];

  return v2;
}

uint64_t sub_1C467EAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FFF80();
  v11 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  v17 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  *(a3 + v17[7]) = 2;
  *(a3 + v17[9]) = 9;
  v18 = v17[11];
  v19 = sub_1C4EFF1C8();
  sub_1C440BAA8(a3 + v18, 1, 1, v19);
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Source();
  sub_1C442B738(v20, &unk_1EDDFD088);
  v21 = v17[6];
  sub_1C43FED58();
  sub_1C448C9D8();
  v22 = v17[5];
  sub_1C441EB20();
  sub_1C448C9D8();
  *(a3 + v17[8]) = a2;
  v23 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v23 setStyle_];
  *(a3 + v17[10]) = v23;
  v24 = sub_1C4EF9E48();
  sub_1C440BAA8(v3, 1, 1, v24);
  sub_1C4EFF1A8();
  sub_1C4485354(a1, type metadata accessor for PhaseStores);
  sub_1C440BAA8(v16, 0, 1, v19);
  return sub_1C468282C();
}

uint64_t sub_1C467ED38()
{
  sub_1C43FBCD4();
  v1[14] = v0;
  v2 = sub_1C4EF98F8();
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  v1[15] = sub_1C43FBE7C();
  v5 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  v1[16] = v5;
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C467EE08, 0, 0);
}

uint64_t sub_1C467EE08()
{
  v162 = v0;
  v1 = *(v0 + 112);
  sub_1C44C0EFC();
  v2 = *(v0 + 112);
  sub_1C467BFD0(&v160);
  v3 = v161;
  if (v161 >> 60 == 15)
  {
    if (qword_1EDDFD028 != -1)
    {
LABEL_63:
      sub_1C4419274();
      swift_once();
    }

    v4 = *(v0 + 136);
    v5 = sub_1C4440CF0();
    sub_1C442B738(v5, qword_1EDE2DE10);
    sub_1C442FC64();
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CD8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 136);
    if (v8)
    {
      v10 = sub_1C43FD084();
      v11 = sub_1C43FFD34();
      v160 = v11;
      *v10 = 136315138;
      sub_1C4640838();
      sub_1C43FFF58();
      v12 = sub_1C4404044();
      v15 = sub_1C441D828(v12, v13, v14);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1C43F8000, v6, v7, "No token available for delta update: %s", v10, 0xCu);
      sub_1C440962C(v11);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C43FFF58();
    }

    sub_1C46828B4();
    sub_1C441C114();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    goto LABEL_57;
  }

  v16 = v160;
  v17 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v18 = sub_1C43FD388();
  sub_1C44344B8(v18, v19);
  sub_1C43FD388();
  v20 = sub_1C467FAD8();
  v22 = v21;
  v24 = v23;
  v25 = sub_1C43FD388();
  sub_1C441DFEC(v25, v26);

  if (!v20)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v53 = *(v0 + 144);
    v54 = sub_1C4440CF0();
    sub_1C442B738(v54, qword_1EDE2DE10);
    sub_1C442FC64();
    v55 = sub_1C4F00968();
    v56 = sub_1C4F01CD8();
    v57 = sub_1C4417F98(v56);
    v58 = *(v0 + 144);
    if (v57)
    {
      v59 = sub_1C43FD084();
      v60 = sub_1C43FFD34();
      v160 = v60;
      *v59 = 136315138;
      v61 = sub_1C4640838();
      v63 = v62;
      sub_1C43FFF58();
      v64 = sub_1C441D828(v61, v63, &v160);

      *(v59 + 4) = v64;
      sub_1C445BF24(&dword_1C43F8000, v65, v66, "Unable to fetch changes for delta update: %s");
      sub_1C440962C(v60);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C43FFF58();
    }

    v94 = *(v0 + 112);
    v95 = sub_1C43FCE84();
    sub_1C44344B8(v95, v96);
    sub_1C43FCE84();
    sub_1C4646A88();
    v97 = sub_1C43FCE84();
    sub_1C441DFEC(v97, v98);
    v99 = sub_1C43FCE84();
    sub_1C441DFEC(v99, v100);
LABEL_40:
    v102 = *(v0 + 152);
    v101 = *(v0 + 160);
    v104 = *(v0 + 136);
    v103 = *(v0 + 144);
    v105 = *(v0 + 120);

    sub_1C43FBDA0();
    goto LABEL_58;
  }

  v156 = v3;
  v27 = sub_1C4428DA0();
  v155 = v24;
  if (!v27)
  {

    if (qword_1EDDFD028 != -1)
    {
      goto LABEL_65;
    }

    goto LABEL_36;
  }

  v28 = v27;
  v150 = v22;
  v151 = v16;
  v29 = 0;
  v152 = (v0 + 16);
  v153 = (v0 + 104);
  v149 = (v0 + 168);
  v154 = (v0 + 96);
  *(v0 + 96) = 0;
  v159 = MEMORY[0x1E69E7CD0];
  v158 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v20 & 0xC000000000000001) != 0)
    {
      v30 = MEMORY[0x1C6940F90](v29, v20);
    }

    else
    {
      if (v29 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v30 = *(v20 + 8 * v29 + 32);
    }

    v16 = v30;
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    objc_opt_self();
    v32 = sub_1C44512AC();
    if (v32 || (objc_opt_self(), (v32 = sub_1C44512AC()) != 0))
    {
      v33 = [v32 contact];
      v34 = [v33 identifier];
      v35 = sub_1C4F01138();
      v37 = v36;

      sub_1C44869B4(&v160, v35, v37);
LABEL_16:

      goto LABEL_17;
    }

    objc_opt_self();
    v38 = sub_1C44512AC();
    if (v38)
    {
      v39 = v38;
      v40 = [v38 contactIdentifier];
      v41 = sub_1C4F01138();
      v157 = v42;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v158 + 16);
        sub_1C443D664();
        v158 = v50;
      }

      v43 = *(v158 + 16);
      if (v43 >= *(v158 + 24) >> 1)
      {
        sub_1C443D664();
        v158 = v51;
      }

      *(v158 + 16) = v43 + 1;
      v44 = v158 + 16 * v43;
      *(v44 + 32) = v41;
      *(v44 + 40) = v157;
      v45 = [v39 contactIdentifier];
      v46 = sub_1C4F01138();
      v48 = v47;

      sub_1C4A7E078(v46, v48);

      goto LABEL_16;
    }

    objc_opt_self();
    if (sub_1C44512AC())
    {

      *v153 = v29;

      if (qword_1EDDFD028 != -1)
      {
        sub_1C4419274();
        swift_once();
      }

      v137 = sub_1C4F00978();
      sub_1C43FCEE8(v137, qword_1EDE2DE10);
      v138 = sub_1C4F00968();
      v139 = sub_1C4F01CF8();
      if (sub_1C43FEB2C(v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&dword_1C43F8000, v138, v139, "<Received drop everything event. Going to throw>", v140, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v141 = *(v0 + 112);

      sub_1C468293C();
      sub_1C441C114();
      swift_allocError();
      *v142 = 0xD000000000000024;
      *(v142 + 8) = 0x80000001C4F8F5A0;
      *(v142 + 16) = 1;
      swift_willThrow();

      sub_1C467FE40(v141, v153, v154);
      v135 = v151;
      v136 = v156;
LABEL_56:
      sub_1C441DFEC(v135, v136);
      sub_1C4434000(v150, v155);
      goto LABEL_57;
    }

LABEL_17:
    ++v29;
  }

  while (v31 != v28);
  v67 = *(v0 + 112);

  v68 = *(v158 + 16);
  *(v0 + 96) = v68;
  sub_1C46800C8();

  if (!__OFADD__(v28, v68))
  {
    v70 = *(v0 + 120);
    v69 = *(v0 + 128);
    v71 = *(v0 + 112);
    *(v0 + 104) = v28 + v68;
    v72 = sub_1C44FE820(v159);
    v73 = sub_1C467E55C(v72);

    *(v0 + 48) = 0;
    *v152 = 0u;
    *(v0 + 32) = 0u;
    v74 = [objc_allocWithZone(MEMORY[0x1E695CE90]) initWithContactStore_];
    *(v0 + 80) = sub_1C4461BB8(0, &qword_1EDDF05A8, 0x1E695CE90);
    *(v0 + 88) = &off_1F43E6920;
    *(v0 + 56) = v74;
    sub_1C468282C();
    sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
    v75 = [objc_opt_self() systemPhotoLibraryURL];
    sub_1C4EF98C8();

    v76 = sub_1C44B90E0(v70);
    *(v0 + 168) = 0;
    v77 = v71 + *(v69 + 20);
    v78 = *(v77 + *(type metadata accessor for PhaseStores() + 24));
    v79 = swift_task_alloc();
    v79[2] = v73;
    v79[3] = v71;
    v79[4] = v154;
    v79[5] = v76;
    v79[6] = v152;
    v79[7] = v153;
    v79[8] = v149;
    GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4682908, v79);

    if (*v149 != 1)
    {
      v128 = *(v0 + 112);
      sub_1C44344B8(v150, v155);
      sub_1C4404C28();
      sub_1C4646A88();

      v129 = sub_1C4404C28();
      sub_1C4434000(v129, v130);
      sub_1C4420C3C(v152, &unk_1EC0BABC0, qword_1C4F16ED8);
      sub_1C467FE40(v128, v153, v154);
      sub_1C441DFEC(v151, v156);
      v131 = sub_1C4404C28();
      sub_1C4434000(v131, v132);
      goto LABEL_40;
    }

    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v107 = *(v0 + 152);
    v108 = sub_1C4440CF0();
    sub_1C442B738(v108, qword_1EDE2DE10);
    sub_1C442FC64();
    v109 = sub_1C4F00968();
    v110 = sub_1C4F01CD8();
    v111 = sub_1C4417F98(v110);
    v112 = *(v0 + 152);
    if (v111)
    {
      v113 = sub_1C43FD084();
      v114 = sub_1C43FFD34();
      v160 = v114;
      *v113 = 136315138;
      v115 = sub_1C4640838();
      v117 = v116;
      sub_1C43FFF58();
      sub_1C441D828(v115, v117, &v160);
      sub_1C4426A94();

      *(v113 + 4) = v112;
      _os_log_impl(&dword_1C43F8000, v109, v110, "Unable to commit deltas for : %s", v113, 0xCu);
      sub_1C440962C(v114);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      v118 = v156;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      v119 = v0 + 16;
    }

    else
    {

      sub_1C43FFF58();
      v119 = v0 + 16;
      v118 = v156;
    }

    v133 = *(v0 + 112);
    sub_1C465B58C();
    sub_1C441C114();
    swift_allocError();
    *v134 = 1;
    swift_willThrow();

    sub_1C4420C3C(v119, &unk_1EC0BABC0, qword_1C4F16ED8);
    sub_1C467FE40(v133, v153, v154);
    v135 = v151;
    v136 = v118;
    goto LABEL_56;
  }

  __break(1u);
LABEL_65:
  sub_1C4419274();
  swift_once();
LABEL_36:
  v80 = *(v0 + 160);
  v81 = sub_1C4440CF0();
  sub_1C442B738(v81, qword_1EDE2DE10);
  sub_1C442FC64();
  v82 = sub_1C4F00968();
  v83 = sub_1C4F01CD8();
  v84 = sub_1C4417F98(v83);
  v85 = *(v0 + 160);
  if (v84)
  {
    v86 = sub_1C43FD084();
    v87 = sub_1C43FFD34();
    v160 = v87;
    *v86 = 136315138;
    v88 = sub_1C4640838();
    v90 = v89;
    sub_1C43FFF58();
    v91 = sub_1C441D828(v88, v90, &v160);

    *(v86 + 4) = v91;
    sub_1C445BF24(&dword_1C43F8000, v92, v93, "No changes available for delta update: %s");
    sub_1C440962C(v87);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    sub_1C43FFF58();
  }

  v120 = *(v0 + 112);
  v121 = sub_1C4424948();
  sub_1C44344B8(v121, v122);
  sub_1C4424948();
  sub_1C4646A88();
  v123 = sub_1C4424948();
  sub_1C4434000(v123, v124);
  sub_1C46828B4();
  sub_1C441C114();
  swift_allocError();
  *v125 = 1;
  swift_willThrow();
  v126 = sub_1C4424948();
  sub_1C4434000(v126, v127);
  sub_1C441DFEC(v16, v156);
LABEL_57:
  v144 = *(v0 + 152);
  v143 = *(v0 + 160);
  v146 = *(v0 + 136);
  v145 = *(v0 + 144);
  v147 = *(v0 + 120);

  sub_1C43FBDA0();
LABEL_58:

  return v106();
}

uint64_t sub_1C467FAD8()
{
  sub_1C4404078();
  v29[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = sub_1C46819F0(v1, v0);
  v29[0] = 0;
  v3 = [v1 executeFetchRequest:v2 error:v29];
  if (!v3)
  {
    v8 = v29[0];
    v9 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C43FCEE8(v10, qword_1EDE2DE10);
    v11 = v9;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = sub_1C43FD084();
      v15 = sub_1C43FFD34();
      v29[0] = v15;
      *v14 = 136315138;
      v16 = v9;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v17 = sub_1C4F01198();
      v19 = sub_1C441D828(v17, v18, v29);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Can't fetch CNContact change due to: %s", v14, 0xCu);
      sub_1C440962C(v15);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v20);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v21);
    }

    else
    {
    }

    goto LABEL_14;
  }

  v4 = v3;
  v5 = v29[0];
  v29[0] = [v4 value];
  sub_1C456902C(&qword_1EC0BAC18, &unk_1C4F16F50);
  if (!swift_dynamicCast())
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C4419274();
      swift_once();
    }

    v22 = sub_1C4F00978();
    sub_1C43FCEE8(v22, qword_1EDE2DE10);
    v23 = sub_1C4F00968();
    v24 = sub_1C4F01CD8();
    if (sub_1C43FEB2C(v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1C43F8000, v23, v24, "Can't get CNContact change events from CNFetchResult", v25, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v6 = v28;
  v7 = [v4 currentHistoryToken];
  sub_1C4EF9A68();

LABEL_15:
  v26 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1C467FE40(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for Pipeline.StatusStore();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(type metadata accessor for CNContactDeltaSourceIngestor(0) + 20);
  sub_1C448C9D8();
  v9[*(v6 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C4485354(v9, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v13 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C46800C8()
{
  sub_1C43FBD3C();
  v177 = v0;
  v170 = v2;
  v3 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v152 - v7;
  v9 = sub_1C4EFDE18();
  sub_1C43FCE64();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C4414998();
  v15 = sub_1C4EFDE68();
  v16 = sub_1C43FBD18(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v165 = v20 - v19;
  v21 = sub_1C4EFDE88();
  sub_1C43FCE64();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v161 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  v159 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  v160 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v158 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v157 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v171 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  v176 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  v179 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  v175 = v43;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  v174 = v45;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  v173 = v47;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v48);
  v172 = &v152 - v49;
  v164 = sub_1C4EFDE98();
  sub_1C43FCE64();
  v163 = v50;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBCC4();
  v162 = v55 - v54;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C4419274();
    swift_once();
  }

  v56 = sub_1C4F00978();
  v178 = sub_1C442B738(v56, qword_1EDE2DE10);
  v57 = sub_1C4F00968();
  v58 = sub_1C4F01CF8();
  v59 = sub_1C43FEB2C(v58);
  v168 = v11;
  v169 = v21;
  v166 = v1;
  v167 = v23;
  if (v59)
  {
    v60 = sub_1C43FD084();
    v61 = sub_1C43FFD34();
    v182 = v61;
    *v60 = 136315138;
    v184 = type metadata accessor for CNContactDeltaSourceIngestor(0);
    sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
    v62 = sub_1C4F01198();
    v64 = sub_1C441D828(v62, v63, &v182);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_1C43F8000, v57, v58, "<%s deleting contacts>", v60, 0xCu);
    sub_1C440962C(v61);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v65 = v170;
  v66 = *(v170 + 16);
  if (v66)
  {
    v155 = v9;
    v156 = v8;
    v184 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v67 = v184;
    v68 = (v65 + 40);
    do
    {
      v70 = *(v68 - 1);
      v69 = *v68;
      v71 = qword_1EDDF7890;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v71 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for SourceIdPrefix();
      v73 = sub_1C442B738(v72, qword_1EDDF7898);
      v75 = *v73;
      v74 = v73[1];
      v182 = v75;
      v183 = v74;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      MEMORY[0x1C6940010](58, 0xE100000000000000);
      v76 = sub_1C4404C28();
      MEMORY[0x1C6940010](v76);

      v84 = v182;
      v85 = v183;
      v184 = v67;
      v86 = *(v67 + 16);
      if (v86 >= *(v67 + 24) >> 1)
      {
        sub_1C44CD9C0();
        v67 = v184;
      }

      *(v67 + 16) = v86 + 1;
      v87 = v67 + 16 * v86;
      *(v87 + 32) = v84;
      *(v87 + 40) = v85;
      v68 += 2;
      --v66;
    }

    while (v66);
    sub_1C4499940(v67, v77, v78, v79, v80, v81, v82, v83, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165);
    v89 = v88;
    v90 = sub_1C4F00968();
    v91 = sub_1C4F01CC8();
    v92 = sub_1C43FEB2C(v91);
    v170 = v89;
    if (v92)
    {
      v93 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      *v93 = 136315394;
      v184 = type metadata accessor for CNContactDeltaSourceIngestor(0);
      sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
      v94 = sub_1C4F01198();
      v96 = sub_1C441D828(v94, v95, &v182);

      *(v93 + 4) = v96;
      *(v93 + 12) = 2080;
      v97 = sub_1C4F01AC8();
      v99 = sub_1C441D828(v97, v98, &v182);

      *(v93 + 14) = v99;
      _os_log_impl(&dword_1C43F8000, v90, v91, "<%s sourceIds:%s>", v93, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v100 = v177;
    v182 = MEMORY[0x1E69E7CC0];
    v184 = MEMORY[0x1E69E7CC0];
    v101 = type metadata accessor for CNContactDeltaSourceIngestor(0);
    v102 = v100 + *(v101 + 20);
    v154 = *(v102 + *(type metadata accessor for PhaseStores() + 24));
    sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
    v103 = type metadata accessor for Source();
    sub_1C43FCF7C(v103);
    v105 = *(v104 + 72);
    v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1C4F0D130;
    v152 = v101;
    v109 = *(v101 + 24);
    sub_1C43FED58();
    sub_1C448C9D8();
    SourceSet.init(arrayLiteral:)(&v181, v108);
    v153 = v181;
    v110 = v167;
    v111 = *(v167 + 104);
    v112 = v172;
    v113 = v169;
    (v111)(v172, *MEMORY[0x1E69A95C0], v169);
    v114 = v173;
    sub_1C4401D54();
    v111();
    v115 = v174;
    sub_1C4401D54();
    v111();
    v116 = v175;
    sub_1C4401D54();
    v111();
    sub_1C4401D54();
    v111();
    sub_1C4401D54();
    v111();
    v117 = *(v110 + 16);
    v117(v171, v112, v113);
    v117(v157, v114, v113);
    v117(v158, v115, v113);
    v117(v160, v116, v113);
    v118 = v159;
    v117(v159, v179, v113);
    v119 = v161;
    v117(v161, v176, v113);
    LOBYTE(v151) = 0;
    v149 = v119;
    v150 = v153;
    v147[1] = v118;
    v148 = 0;
    v147[0] = 0;
    v120 = v166;
    sub_1C4EFDD38();
    (*(v168 + 104))(v120, *MEMORY[0x1E69A95A8], v155);
    sub_1C4EFDE28();
    v121 = v162;
    sub_1C4EFDEA8();
    v122 = *(v110 + 8);
    v123 = sub_1C4404044();
    v122(v123);
    (v122)(v179, v113);
    (v122)(v175, v113);
    (v122)(v174, v113);
    (v122)(v173, v113);
    (v122)(v172, v113);
    v124 = sub_1C4EFD678();
    v125 = v156;
    v126 = sub_1C440BAA8(v156, 1, 1, v124);
    MEMORY[0x1EEE9AC00](v126);
    v148 = v170;
    v149 = v177;
    v150 = &v182;
    v151 = &v184;
    sub_1C48687D0(v121, v125, sub_1C4682990, v147);

    sub_1C4420C3C(v125, &unk_1EC0C07E0, &unk_1C4F168F0);
    (*(v163 + 8))(v121, v164);
    v127 = v182;
    v128 = v184;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v129 = sub_1C4404C28();
    sub_1C4681710(v129, v130);

    v131 = sub_1C4F00968();
    v132 = sub_1C4F01CF8();
    if (sub_1C43FEB2C(v132))
    {
      v133 = sub_1C43FFD34();
      v134 = sub_1C43FFD34();
      *v133 = 136315650;
      v180 = v152;
      v181 = v134;
      sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
      v135 = sub_1C4F01198();
      v137 = sub_1C441D828(v135, v136, &v181);

      *(v133 + 4) = v137;
      *(v133 + 12) = 2048;
      *(v133 + 14) = *(v127 + 16);
      *(v133 + 22) = 2048;
      *(v133 + 24) = *(v128 + 16);
      _os_log_impl(&dword_1C43F8000, v131, v132, "<%s Deleted. d:%ld, u:%ld>", v133, 0x20u);
      sub_1C440962C(v134);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v138 = *(v127 + 16);
    v139 = *(v128 + 16);
  }

  else
  {
    v140 = sub_1C4F00968();
    v141 = sub_1C4F01CF8();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = sub_1C43FD084();
      v143 = sub_1C43FFD34();
      v182 = v143;
      *v142 = 136315138;
      v184 = type metadata accessor for CNContactDeltaSourceIngestor(0);
      sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
      v144 = sub_1C4F01198();
      v146 = sub_1C441D828(v144, v145, &v182);

      *(v142 + 4) = v146;
      _os_log_impl(&dword_1C43F8000, v140, v141, "<%s No contacts need to delete>", v142, 0xCu);
      sub_1C440962C(v143);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  sub_1C43FE9F0();
}

void sub_1C4680DE8(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, char *a9@<X8>, char *a10)
{
  v12 = v10;
  v52 = a8;
  v57 = a6;
  v58 = a7;
  v63 = a4;
  v55 = a1;
  v56 = a2;
  v51 = a9;
  v50 = a10;
  v54 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  v15 = *(*(v54 - 1) + 64);
  v16 = MEMORY[0x1EEE9AC00](v54);
  v48 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v49 = &v48 - v18;
  v19 = sub_1C4428DA0();
  v20 = 0;
  v61 = a3 & 0xC000000000000001;
  v62 = v19;
  v59 = a3 & 0xFFFFFFFFFFFFFF8;
  v60 = a3;
  for (i = a5; ; a5 = i)
  {
    if (v62 == v20)
    {
      v34 = *v50;
      goto LABEL_21;
    }

    if (v61)
    {
      v21 = MEMORY[0x1C6940F90](v20, v60);
    }

    else
    {
      if (v20 >= *(v59 + 16))
      {
        goto LABEL_25;
      }

      v21 = *(v60 + 8 * v20 + 32);
    }

    v11 = v21;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (sub_1C4F01948())
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v22 = *a5 + 1;
    if (__OFADD__(*a5, 1))
    {
      goto LABEL_26;
    }

    v64 = v20;
    *a5 = v22;
    v23 = v54;
    v24 = v54[5];
    v25 = v63;
    v26 = *(v63 + v54[8]);
    v27 = v11;
    v11 = *(v63 + v54[10]);
    v67 = 2;
    sub_1C44DDE2C();
    v28 = v25 + v23[11];
    v29 = v25 + v24;
    v30 = v24;
    sub_1C44C4CA8(v66, v29, v26, v11, 0, v57, &v67, v65, v55, v56, 0, 0, v28);
    if (v12)
    {
      sub_1C4420C3C(v65, &unk_1EC0BABC0, qword_1C4F16ED8);
      v66[0] = v12;
      v31 = v12;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if (swift_dynamicCast())
      {

        v32 = v65[0];
        sub_1C465B58C();
        v11 = swift_allocError();
        *v33 = v32;
        v67 = 1;
        static Transformers.reportError(error:context:config:pipelineType:)(v11, 0x6361746E6F434E43, 0xE900000000000074, v63 + v30, &v67);

        v12 = 0;
        goto LABEL_14;
      }

      v34 = 1;
      LOBYTE(v66[0]) = 1;
      static Transformers.reportError(error:context:config:pipelineType:)(v12, 0x6361746E6F434E43, 0xE900000000000074, v63 + v24, v66);

      *v50 = 1;
LABEL_21:
      *v51 = v34;
      return;
    }

    sub_1C4420C3C(v65, &unk_1EC0BABC0, qword_1C4F16ED8);
    sub_1C440962C(v66);
    if (__OFADD__(*v52, 1))
    {
      goto LABEL_27;
    }

    ++*v52;
LABEL_14:
    v20 = v64 + 1;
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  swift_once();
LABEL_18:
  v35 = sub_1C4F00978();
  sub_1C442B738(v35, qword_1EDE2DE10);
  v36 = v49;
  sub_1C448C9D8();
  v37 = sub_1C4F00968();
  v38 = sub_1C4F01CF8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v66[0] = v40;
    *v39 = 136315138;
    v41 = v11;
    v42 = v48;
    sub_1C448C9D8();
    sub_1C4485354(v36, type metadata accessor for CNContactDeltaSourceIngestor);
    v43 = sub_1C4640838();
    v45 = v44;
    v46 = v42;
    v11 = v41;
    sub_1C4485354(v46, type metadata accessor for CNContactDeltaSourceIngestor);
    v47 = sub_1C441D828(v43, v45, v66);

    *(v39 + 4) = v47;
    _os_log_impl(&dword_1C43F8000, v37, v38, "%s going to defer", v39, 0xCu);
    sub_1C440962C(v40);
    MEMORY[0x1C6942830](v40, -1, -1);
    MEMORY[0x1C6942830](v39, -1, -1);
  }

  else
  {
    sub_1C4485354(v36, type metadata accessor for CNContactDeltaSourceIngestor);
  }

  sub_1C4F01828();
  sub_1C46825D4(&qword_1EDDFCF00, MEMORY[0x1E69E8550]);
  swift_allocError();
  sub_1C4F00EA8();
  swift_willThrow();
}

uint64_t sub_1C46813DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v40 = a4;
  v42 = a3;
  v8 = sub_1C456902C(&qword_1EC0BAC10, &unk_1C4F0F030);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for GraphTriple(0);
  v39 = *(v12 - 8);
  v13 = *(v39 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a1 + *(v14 + 44));
  v18 = *v17;
  v19 = v17[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = objc_autoreleasePoolPush();
  v45 = v18;
  v46 = v19;
  v43 = 30;
  v44 = 0xE100000000000000;
  sub_1C4415EA8();
  v21 = sub_1C4F01FC8();

  objc_autoreleasePoolPop(v20);
  sub_1C4499940(v21, v22, v23, v24, v25, v26, v27, v28, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
  if (*(sub_1C4A95434(a2, v29) + 2))
  {
    v30 = v42 + *(type metadata accessor for CNContactDeltaSourceIngestor(0) + 24);
    sub_1C4B4AB30();

    if (*&v16[*(v12 + 36)])
    {
      v31 = *(v8 + 48);
      sub_1C448C9D8();
      sub_1C448C9D8();
      sub_1C4588FA8();
      v32 = *(*a5 + 16);
      sub_1C4589B90();
      sub_1C4485354(v16, type metadata accessor for GraphTriple);
      v33 = *a5;
      *(v33 + 16) = v32 + 1;
      sub_1C46829D4(v11, v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32);
    }

    else
    {
      v34 = v40;
      sub_1C4588D78();
      v35 = *(*v34 + 16);
      sub_1C4589968();
      sub_1C4485354(v16, type metadata accessor for GraphTriple);
      *(*v34 + 16) = v35 + 1;
      v36 = *(v39 + 80);
      v37 = *(v39 + 72);
      sub_1C448C9D8();
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1C4681710(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *(*(v2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v5[2] = &v6;
  v5[3] = a2;

  sub_1C446C37C(sub_1C46829B8, v5);
}

uint64_t sub_1C4681780()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4682A44;

  return sub_1C467ED38();
}

uint64_t sub_1C4681808()
{
  v0 = sub_1C4EFD548();
  sub_1C43FBCE0(v0);
  v2 = *(v1 + 16);
  v3 = sub_1C43FBC98();

  return v4(v3);
}

uint64_t sub_1C4681864(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1C43FED58();
  return sub_1C448C9D8();
}

uint64_t sub_1C4681894(uint64_t a1)
{
  v1 = *(a1 + 20);
  sub_1C441EB20();
  return sub_1C448C9D8();
}

void sub_1C468190C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_1C4681968()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C44C0680();
}

id sub_1C46819F0(uint64_t a1, unint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695CD40]) init];
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1C4EF9A38();
  }

  [v3 setStartingToken_];

  [v3 setIncludeGroupChanges_];
  [v3 setShouldUnifyResults_];
  return v3;
}

uint64_t sub_1C4681AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v75 = a3;
  v79 = type metadata accessor for ExpiredGraphTriple(0);
  v7 = *(*(v79 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v79);
  v73 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v71 - v10;
  v72 = sub_1C456902C(&qword_1EC0BAC10, &unk_1C4F0F030);
  v74 = *(v72 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v71 - v13;
  v14 = type metadata accessor for GraphTriple(0);
  v76 = *(v14 - 1);
  v15 = *(v76 + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = *(a2 + 16);
  v77 = a2;
  v78 = v20;
  v80 = a1;
  while (v78 != v19)
  {
    v21 = v77 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    v22 = *(v76 + 72);
    v81 = v19;
    sub_1C448C9D8();
    v23 = sub_1C4EFF0C8();
    (*(*(v23 - 8) + 16))(v11, v18, v23);
    v24 = v14[5];
    v82 = v4;
    v25 = v79;
    v26 = *(v79 + 20);
    v27 = sub_1C4EFEEF8();
    v28 = *(*(v27 - 8) + 16);
    v28(&v11[v26], &v18[v24], v27);
    v29 = v14[6];
    v30 = v25[6];
    v31 = sub_1C4EFF8A8();
    (*(*(v31 - 8) + 16))(&v11[v30], &v18[v29], v31);
    v28(&v11[v25[7]], &v18[v14[7]], v27);
    v32 = &v18[v14[8]];
    v34 = *v32;
    v33 = *(v32 + 1);
    v35 = *&v18[v14[9]];
    v36 = v14[11];
    v37 = *&v18[v14[10]];
    v39 = *&v18[v36];
    v38 = *&v18[v36 + 8];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v40 = &v11[v25[8]];
    *v40 = v34;
    *(v40 + 1) = v33;
    *&v11[v25[9]] = v35;
    *&v11[v25[10]] = v37;
    v41 = &v11[v25[11]];
    *v41 = v39;
    *(v41 + 1) = v38;
    *&v11[v25[12]] = v42;
    sub_1C46825D4(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple);
    v43 = v82;
    sub_1C4EFB6C8();
    v4 = v43;
    sub_1C4485354(v11, type metadata accessor for ExpiredGraphTriple);
    if (v43)
    {
      return sub_1C4485354(v18, type metadata accessor for GraphTriple);
    }

    v19 = v81 + 1;
    sub_1C46825D4(&qword_1EDDEBBC0, type metadata accessor for GraphTriple);
    sub_1C4EFBA98();
    result = sub_1C4485354(v18, type metadata accessor for GraphTriple);
  }

  v44 = 0;
  v78 = *(v75 + 16);
  v45 = v71;
  while (v78 != v44)
  {
    v46 = v75 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v47 = *(v74 + 72);
    sub_1C44DDE2C();
    sub_1C46825D4(&qword_1EDDEBBC0, type metadata accessor for GraphTriple);
    sub_1C4EFBA98();
    if (v4)
    {
      return sub_1C4420C3C(v45, &qword_1EC0BAC10, &unk_1C4F0F030);
    }

    v81 = v44;
    v48 = sub_1C4EFF0C8();
    v49 = v73;
    (*(*(v48 - 8) + 16))(v73, v45, v48);
    v50 = v14[5];
    v82 = 0;
    v51 = v79;
    v52 = *(v79 + 20);
    v53 = sub_1C4EFEEF8();
    v54 = *(*(v53 - 8) + 16);
    v54(v49 + v52, v45 + v50, v53);
    v55 = v14[6];
    v56 = v51[6];
    v57 = sub_1C4EFF8A8();
    (*(*(v57 - 8) + 16))(v49 + v56, v45 + v55, v57);
    v54(v49 + v51[7], v45 + v14[7], v53);
    v58 = (v45 + v14[8]);
    v59 = *v58;
    v60 = v58[1];
    v61 = *(v45 + v14[9]);
    v62 = v14[11];
    v63 = *(v45 + v14[10]);
    v65 = *(v45 + v62);
    v64 = *(v45 + v62 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v66 = (v49 + v51[8]);
    *v66 = v59;
    v66[1] = v60;
    *(v49 + v51[9]) = v61;
    *(v49 + v51[10]) = v63;
    v67 = (v49 + v51[11]);
    *v67 = v65;
    v67[1] = v64;
    *(v49 + v51[12]) = v68;
    sub_1C46825D4(&qword_1EDDF4F28, type metadata accessor for ExpiredGraphTriple);
    v69 = v82;
    sub_1C4EFB6C8();
    v4 = v69;
    sub_1C4485354(v49, type metadata accessor for ExpiredGraphTriple);
    if (v69)
    {
      return sub_1C4420C3C(v45, &qword_1EC0BAC10, &unk_1C4F0F030);
    }

    v70 = *(v72 + 48);
    sub_1C46825D4(&qword_1EDDEBBC8, type metadata accessor for GraphTriple);
    sub_1C4EFB6C8();
    result = sub_1C4420C3C(v45, &qword_1EC0BAC10, &unk_1C4F0F030);
    v44 = v81 + 1;
  }

  return result;
}

void sub_1C4682274()
{
  sub_1C4EFD548();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PhaseStores();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Source();
      if (v2 <= 0x3F)
      {
        sub_1C4461BB8(319, &qword_1EDDF0548, 0x1E695CE18);
        if (v3 <= 0x3F)
        {
          sub_1C4461BB8(319, &qword_1EDDF0400, 0x1E695CD80);
          if (v4 <= 0x3F)
          {
            sub_1C4682388();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C4682388()
{
  if (!qword_1EDDFA1A8)
  {
    sub_1C4EFF1C8();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFA1A8);
    }
  }
}

void sub_1C4682408()
{
  type metadata accessor for PhaseStores();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Source();
    if (v1 <= 0x3F)
    {
      sub_1C4461BB8(319, &qword_1EDDF0548, 0x1E695CE18);
      if (v2 <= 0x3F)
      {
        sub_1C4EFD548();
        if (v3 <= 0x3F)
        {
          sub_1C4461BB8(319, &qword_1EDDF0400, 0x1E695CD80);
          if (v4 <= 0x3F)
          {
            sub_1C4682388();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C4682524(uint64_t a1)
{
  result = sub_1C46825D4(qword_1EDDE0910, type metadata accessor for CNContactFullSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C468257C(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDE08F0, type metadata accessor for CNContactFullSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46825D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C468261C(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDE0908, type metadata accessor for CNContactFullSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4682674(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDF22D0, type metadata accessor for CNContactDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46826CC(uint64_t a1)
{
  result = sub_1C46825D4(&unk_1EDDF22B0, type metadata accessor for CNContactDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4682724(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDF22C8, type metadata accessor for CNContactDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C468277C(uint64_t a1)
{
  result = sub_1C46825D4(&qword_1EDDF22C0, type metadata accessor for CNContactDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46827D4(uint64_t a1)
{
  result = sub_1C46825D4(&unk_1EDDE08F8, type metadata accessor for CNContactFullSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C468282C()
{
  sub_1C4404078();
  v3 = sub_1C456902C(v1, v2);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 40);
  v6 = sub_1C43FBC98();
  v7(v6);
  return v0;
}

uint64_t sub_1C468288C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_1C46828B4()
{
  result = qword_1EDDF90F0;
  if (!qword_1EDDF90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF90F0);
  }

  return result;
}

unint64_t sub_1C468293C()
{
  result = qword_1EDDE7178[0];
  if (!qword_1EDDE7178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE7178);
  }

  return result;
}

uint64_t sub_1C46829D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BAC10, &unk_1C4F0F030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Publisher<>.scanReduce(compare:merge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v81 = a3;
  v82 = a4;
  v78 = a1;
  v79 = a2;
  v73 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for PublisherScanReduceState();
  v66 = v8;
  v9 = sub_1C4F00AE8();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_1C4F00AB8();
  v11 = sub_1C4F00AD8();
  v87 = swift_getWitnessTable();
  v72 = v11;
  v12 = sub_1C4F00AB8();
  v86 = swift_getWitnessTable();
  v85 = swift_getWitnessTable();
  v89 = v10;
  v90 = v12;
  v71 = v10;
  v74 = v12;
  v91 = v86;
  v92 = v85;
  v84 = sub_1C4F00AC8();
  sub_1C43FCE64();
  v88 = v13;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v77 = v17;
  sub_1C43FCE64();
  v75 = v18;
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  v68 = v22;
  v80 = *(v12 - 8);
  v23 = *(v80 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBC74();
  v70 = v25;
  v76 = *(v10 - 8);
  v26 = *(v76 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBC74();
  v67 = v28;
  v29 = sub_1C4F01F48();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v65 - v34;
  v36 = *(v8 - 8);
  v37 = *(v36 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v65 - v39;
  sub_1C43FCE64();
  v69 = v41;
  v43 = *(v42 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v65 - v45;
  sub_1C440BAA8(v35, 1, 1, AssociatedTypeWitness);
  sub_1C440BAA8(v33, 1, 1, AssociatedTypeWitness);
  sub_1C4683164(v35, v33, v40);
  v47 = swift_allocObject();
  v48 = v73;
  v47[2] = v73;
  v47[3] = a6;
  v47[4] = v78;
  v49 = v81;
  v50 = v82;
  v47[5] = v79;
  v47[6] = v49;
  v47[7] = v50;

  v51 = v66;
  sub_1C4F00C88();

  (*(v36 + 8))(v40, v51);
  v52 = swift_allocObject();
  *(v52 + 16) = v48;
  *(v52 + 24) = a6;
  v53 = v67;
  sub_1C4F00C28();

  v54 = v68;
  sub_1C4F00C78();
  v55 = swift_allocObject();
  *(v55 + 16) = v48;
  *(v55 + 24) = a6;
  v56 = v70;
  v57 = v72;
  sub_1C4F00C28();

  (*(v75 + 8))(v54, v57);
  v58 = v77;
  v59 = v56;
  v60 = v71;
  v61 = v74;
  sub_1C4F00CC8();
  v62 = v84;
  swift_getWitnessTable();
  v63 = sub_1C4F00C18();
  (*(v88 + 8))(v58, v62);
  (*(v80 + 8))(v59, v61);
  (*(v76 + 8))(v53, v60);
  (*(v69 + 8))(v46, v9);
  return v63;
}

uint64_t sub_1C4683164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C4F01F48();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for PublisherScanReduceState() + 28);

  return v9(v7, a2, v6);
}

uint64_t sub_1C468322C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31[1] = a6;
  v32 = a5;
  v33 = a4;
  v34 = a3;
  v35 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1C4F01F48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v31 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v31 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v25 = v31 - v24;
  v26 = type metadata accessor for PublisherScanReduceState();
  (*(v11 + 16))(v21, a1 + *(v26 + 28), v10);
  if (sub_1C44157D4(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v21, v10);
    v27 = v18;
    v28 = 1;
LABEL_6:
    sub_1C440BAA8(v27, v28, 1, AssociatedTypeWitness);
    (*(v22 + 16))(v15, a2, AssociatedTypeWitness);
    goto LABEL_7;
  }

  v29 = *(v22 + 32);
  v29(v25, v21, AssociatedTypeWitness);
  if ((v34(v25, a2) & 1) == 0)
  {
    v29(v18, v25, AssociatedTypeWitness);
    v27 = v18;
    v28 = 0;
    goto LABEL_6;
  }

  sub_1C440BAA8(v18, 1, 1, AssociatedTypeWitness);
  v32(v25, a2);
  (*(v22 + 8))(v25, AssociatedTypeWitness);
LABEL_7:
  sub_1C440BAA8(v15, 0, 1, AssociatedTypeWitness);
  return sub_1C4683164(v18, v15, v35);
}

uint64_t sub_1C4683528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return sub_1C468322C(a1, a2, *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), a3);
}

uint64_t sub_1C4683538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_1C4F01F48();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1C46835CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1C4683538(a1, a2);
}

uint64_t sub_1C46835D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = *(type metadata accessor for PublisherScanReduceState() + 28);
  v5 = sub_1C4F01F48();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_1C4683684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1C46835D4(a1, a2);
}

uint64_t Publisher<>.bufferAndSort(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a1;
  v19[2] = a2;
  swift_getAssociatedTypeWitness();
  v6 = sub_1C4F017A8();
  v19[0] = swift_getWitnessTable();
  v20 = v6;
  v21 = MEMORY[0x1E69E73E0];
  v22 = v19[0];
  v23 = MEMORY[0x1E69E7410];
  v7 = sub_1C4F00AF8();
  sub_1C43FCE64();
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1C4F01718();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = v15;

  sub_1C4F00D28();

  swift_beginAccess();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C4F01098();
  swift_endAccess();
  v20 = *(v15 + 16);
  sub_1C4F014C8();
  swift_getWitnessTable();
  v17 = sub_1C4F00C18();
  (*(v9 + 8))(v14, v7);

  return v17;
}

uint64_t sub_1C4683918(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v5 + 16))(&v7 - v4, a1, AssociatedTypeWitness);
  swift_beginAccess();
  sub_1C4F017A8();
  sub_1C4F01768();
  return swift_endAccess();
}

uint64_t sub_1C4683A2C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C4683918(a1);
}

uint64_t sub_1C4683A38(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1C4F01F48();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4683AA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = v6 - 1;
  if (v6)
  {
    v8 = *(v5 + 64);
  }

  else
  {
    v7 = 0;
    v8 = *(v5 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v7;
  if (a2 > v7)
  {
    v10 = ((v8 + *(v5 + 80)) & ~*(v5 + 80)) + v8;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_7;
    }

    v13 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_22;
        }

LABEL_7:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_22;
        }

LABEL_14:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          switch(v10)
          {
            case 2:
              LODWORD(v10) = *a1;
              break;
            case 3:
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v10) = *a1;
              break;
            default:
              LODWORD(v10) = *a1;
              break;
          }
        }

        return v7 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_14;
      }
    }
  }

LABEL_22:
  if (v6 < 2)
  {
    return 0;
  }

  v16 = sub_1C44157D4(a1, v6, v4);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1C4683C30(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v11;
  }

  v12 = ((v11 + *(v8 + 80)) & ~*(v8 + 80)) + v11;
  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 >= 2)
          {
            v21 = a2 + 1;

            sub_1C440BAA8(a1, v21, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C4684054()
{
  result = sub_1C4684084();
  if (!v0)
  {
    return sub_1C4DDF824(result);
  }

  return result;
}

uint64_t sub_1C46841C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4684204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C468425C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v6 = *(*(sub_1C456902C(&qword_1EC0BACB8, &qword_1C4F17038) - 8) + 64) + 15;
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v7 = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  v5[25] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = sub_1C4F00978();
  v5[29] = v9;
  v10 = *(v9 - 8);
  v5[30] = v10;
  v11 = *(v10 + 64) + 15;
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46843BC, 0, 0);
}

uint64_t sub_1C46843BC()
{
  v1 = v0[31];
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "Running commute inference model", v4, 2u);
    MEMORY[0x1C6942830](v4, -1, -1);
  }

  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[29];
  v9 = v0[24];
  v8 = v0[25];
  v10 = v0[18];

  (*(v6 + 8))(v5, v7);
  sub_1C442E860(v10, (v0 + 2));
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = v0[24];
    v33 = v0[25];
    v35 = sub_1C440A564();
LABEL_15:
    sub_1C440BAA8(v35, v36, v37, v38);
    sub_1C46849A4(v34);
LABEL_16:
    v42 = v0[17];
    type metadata accessor for InferredActivitySegment();
    v43 = sub_1C440A564();
    sub_1C440BAA8(v43, v44, v45, v46);
    goto LABEL_17;
  }

  v11 = v0[28];
  v12 = v0[24];
  v13 = v0[23];
  v14 = v0[19];
  sub_1C4406954(v12);
  sub_1C4684A0C(v12, v11);
  sub_1C442E860(v14, (v0 + 7));
  if ((sub_1C44041E8() & 1) == 0)
  {
    v39 = v0[25];
    v34 = v0[23];
    sub_1C4684A70(v0[28]);
    v35 = sub_1C440A564();
    v38 = v39;
    goto LABEL_15;
  }

  v15 = v0[27];
  v16 = v0[25];
  v17 = v0[23];
  v18 = v0[20];
  sub_1C4406954(v17);
  sub_1C4684A0C(v17, v15);
  sub_1C442E860(v18, (v0 + 12));
  if ((sub_1C44041E8() & 1) == 0)
  {
    v40 = v0[28];
    v41 = v0[25];
    v34 = v0[22];
    sub_1C4684A70(v0[27]);
    sub_1C4684A70(v40);
    v35 = sub_1C440A564();
    v38 = v41;
    goto LABEL_15;
  }

  v19 = v0[26];
  v20 = v0[27];
  v21 = v0[25];
  v22 = v0[22];
  sub_1C4406954(v22);
  sub_1C4684A0C(v22, v19);
  if (*(v20 + *(v21 + 24)) || (v23 = v0[27], v24 = v0[21], v25 = *(v0[25] + 20), sub_1C4EF9B78(), v26 >= *(v24 + 16)))
  {
    v56 = v0[27];
    v30 = v0[28];
    sub_1C4684A70(v0[26]);
    v29 = v56;
LABEL_21:
    sub_1C4684A70(v29);
LABEL_22:
    sub_1C4684A70(v30);
    goto LABEL_16;
  }

  v27 = v0[28];
  v28 = *(v27 + *(v21 + 24));
  sub_1C4684A70(v27);
  v29 = v0[26];
  if (v28 == 2)
  {
    v57 = *(v29 + *(v21 + 24));
    sub_1C4684A70(v29);
    v30 = v0[27];
    if (v57 == 1)
    {
      v31 = v0[21];
      v32 = v0[17];
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (v28 != 1 || *(v29 + *(v21 + 24)) != 2)
  {
    v30 = v0[27];
    goto LABEL_21;
  }

  v30 = v0[27];
  v31 = v0[21];
  v32 = v0[17];
  sub_1C4684A70(v29);
LABEL_26:
  v58 = sub_1C4EF9CD8();
  v59 = *(*(v58 - 8) + 16);
  v59(v32, v30, v58);
  v60 = type metadata accessor for InferredActivitySegment();
  v59(v32 + v60[5], v23 + v25, v58);
  sub_1C4684A70(v30);
  v61 = *(v31 + 8);
  v62 = *(v31 + 24);
  v63 = *(v31 + 32);
  *(v32 + v60[6]) = *v31;
  *(v32 + v60[7]) = v61;
  v64 = (v32 + v60[8]);
  *v64 = v62;
  v64[1] = v63;
  sub_1C440BAA8(v32, 0, 1, v60);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_17:
  v47 = v0[31];
  v48 = v0[27];
  v49 = v0[28];
  v50 = v0[26];
  v52 = v0[23];
  v51 = v0[24];
  v53 = v0[22];

  v54 = v0[1];

  return v54();
}

uint64_t sub_1C46847DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  *(v5 + 16) = *v4;
  *(v5 + 32) = v10;
  *(v5 + 48) = *(v4 + 32);
  v11 = swift_task_alloc();
  *(v5 + 56) = v11;
  *v11 = v5;
  v11[1] = sub_1C46848B0;

  return sub_1C468425C(a1, a2, a3, a4);
}

uint64_t sub_1C46848B0()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C46849A4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BACB8, &qword_1C4F17038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4684A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4684A70(uint64_t a1)
{
  v2 = type metadata accessor for LOIBasedSemanticLocationSegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CommuteInference()
{
  result = qword_1EDDE7208;
  if (!qword_1EDDE7208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4684B40()
{
  result = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4684BDC()
{
  sub_1C43FD394();
  switch(v2)
  {
    case 1:
      v0 = 0xE400000000000000;
      break;
    case 2:
      v0 = 0xE500000000000000;
      break;
    case 3:
      v0 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1819047270;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v4 = 0x61746C6564;
      break;
    case 3:
      v4 = 0x69686374614D6F74;
      v1 = 0xEA0000000000676ELL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90();
  }

  return v7 & 1;
}

uint64_t sub_1C4684CF4()
{
  sub_1C4F01138();
  sub_1C447EFD0();
  sub_1C4F01138();
  sub_1C445E7C4();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1C43FFF90();
  }

  return v3 & 1;
}

uint64_t sub_1C4684D64()
{
  sub_1C441C1B4();
  switch(v2)
  {
    case 1:
      v0 = 0xEE006E6F69746172;
      break;
    case 4:
      v0 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v0 = 0xE700000000000000;
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v5)
  {
    case 1:
      v4 = 0x656E654772696170;
      v1 = 0xEE006E6F69746172;
      break;
    case 2:
      v6 = 0x69686374616DLL;
      goto LABEL_10;
    case 3:
      v6 = 0x697075646564;
LABEL_10:
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      v4 = 0x6974756C6F736572;
      v1 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v1 = 0xE700000000000000;
      v4 = 0x6C6172656E6567;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4684F1C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E656C626174;
  v4 = a1;
  v5 = 0x6D614E656C626174;
  v6 = 0xE900000000000065;
  switch(v4)
  {
    case 1:
      v6 = 0xE500000000000000;
      v5 = 0x7972657571;
      break;
    case 2:
      v6 = 0x80000001C4F86390;
      v5 = 0xD00000000000001DLL;
      break;
    case 3:
      v6 = 0x80000001C4F863B0;
      v5 = 0xD000000000000020;
      break;
    case 4:
      v6 = 0x80000001C4F863E0;
      v5 = 0xD000000000000015;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE500000000000000;
      v3 = 0x7972657571;
      break;
    case 2:
      v2 = 0x80000001C4F86390;
      v3 = 0xD00000000000001DLL;
      break;
    case 3:
      v2 = 0x80000001C4F863B0;
      v3 = 0xD000000000000020;
      break;
    case 4:
      v2 = 0x80000001C4F863E0;
      v3 = 0xD000000000000015;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FED70();
  }

  return v8 & 1;
}

uint64_t sub_1C4685084()
{
  sub_1C441C1B4();
  switch(v2)
  {
    case 1:
      v0 = 0x80000001C4F861E0;
      break;
    case 2:
      v0 = 0xE900000000000074;
      break;
    case 3:
      v0 = 0x80000001C4F86200;
      break;
    case 4:
      sub_1C4416008();
      break;
    case 5:
      v0 = 0xED0000687361486FLL;
      break;
    case 6:
      v0 = 0xEC00000068736148;
      break;
    default:
      break;
  }

  sub_1C4424FF4();
  switch(v6)
  {
    case 1:
      sub_1C442DE20();
      v1 = v7 | 0x8000000000000000;
      break;
    case 2:
      v4 = 0x6E65764569466957;
      v1 = 0xE900000000000074;
      break;
    case 3:
      v1 = (v5 - 32) | 0x8000000000000000;
      v4 = 0xD000000000000015;
      break;
    case 4:
      sub_1C440E008();
      break;
    case 5:
      v4 = 0x6547657372616F43;
      v1 = 0xED0000687361486FLL;
      break;
    case 6:
      v4 = 0x6F6547656772614CLL;
      v1 = 0xEC00000068736148;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1C43FFF90();
  }

  return v9 & 1;
}

uint64_t sub_1C4685280()
{
  v1 = sub_1C4433C18();
  switch(v3)
  {
    case 1:
      v0 = 0xE400000000000000;
      v1 = 1701667182;
      break;
    case 2:
      v0 = 0xE700000000000000;
      v1 = 0x6E6F6973726576;
      break;
    case 3:
      v0 = 0xE400000000000000;
      v1 = 1701869940;
      break;
    case 4:
      v1 = 0x4665727574616566;
      v0 = 0xEB0000000067616CLL;
      break;
    default:
      break;
  }

  v4 = 0xE200000000000000;
  v5 = 25705;
  switch(v2)
  {
    case 1:
      v4 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    case 2:
      v4 = 0xE700000000000000;
      v5 = 0x6E6F6973726576;
      break;
    case 3:
      v4 = 0xE400000000000000;
      v5 = 1701869940;
      break;
    case 4:
      v5 = 0x4665727574616566;
      v4 = 0xEB0000000067616CLL;
      break;
    default:
      break;
  }

  if (v1 == v5 && v0 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90();
  }

  return v7 & 1;
}

uint64_t sub_1C46853CC()
{
  sub_1C4433254();
  switch(v2)
  {
    case 2:
      sub_1C441F674();
      break;
    case 3:
      sub_1C4406970();
      break;
    case 4:
      sub_1C440878C(21);
      break;
    case 5:
      sub_1C440DFF4();
      break;
    case 6:
      sub_1C442FC94();
      v0 = 0xEA00000000006563;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v5)
  {
    case 1:
      v4 = 0x7463656A627573;
      break;
    case 2:
      sub_1C442C65C();
      break;
    case 3:
      sub_1C4419330();
      break;
    case 4:
      sub_1C44119D0();
      break;
    case 5:
      sub_1C4416F20();
      break;
    case 6:
      sub_1C4425A2C();
      v1 = 0xEA00000000006563;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90();
  }

  return v7 & 1;
}

uint64_t sub_1C468550C(unsigned __int8 a1, char a2)
{
  v2 = 1162690894;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1162690894;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x4E4F4954414C4552;
      break;
    case 2:
      v5 = 0x54444554414C4552;
      v3 = 0xE90000000000004FLL;
      break;
    case 3:
      v5 = 0x5049434954524150;
      v3 = 0xEF454D414E544E41;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x4E4F4954414C4552;
      break;
    case 2:
      v2 = 0x54444554414C4552;
      v6 = 0xE90000000000004FLL;
      break;
    case 3:
      v2 = 0x5049434954524150;
      v6 = 0xEF454D414E544E41;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4685668()
{
  sub_1C44320D4();
  switch(v2)
  {
    case 1:
      sub_1C441F674();
      break;
    case 2:
      sub_1C4406970();
      break;
    case 3:
      sub_1C440878C(21);
      break;
    case 4:
      sub_1C440DFF4();
      break;
    case 5:
      v0 = 0xEC000000706D6174;
      break;
    case 6:
      sub_1C43FC144();
      v0 = 0xE900000000000070;
      break;
    default:
      break;
  }

  sub_1C440D22C();
  switch(v5)
  {
    case 1:
      sub_1C442C65C();
      break;
    case 2:
      sub_1C4419330();
      break;
    case 3:
      sub_1C44119D0();
      break;
    case 4:
      sub_1C4416F20();
      break;
    case 5:
      v4 = 0x73656D69546C7474;
      v1 = 0xEC000000706D6174;
      break;
    case 6:
      sub_1C440A844();
      break;
    case 7:
      v4 = 0x73746E65696C63;
      break;
    default:
      break;
  }

  if (v3 == v4 && v0 == v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90();
  }

  return v7 & 1;
}

uint64_t sub_1C46857D4(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  sub_1C442BA28();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4685868()
{
  v1 = sub_1C4433C18();
  switch(v3)
  {
    case 1:
      v1 = 0x7974697669746361;
      v0 = 0xED0000746E657645;
      break;
    case 2:
      v1 = 0x6E6F697461636F6CLL;
      v0 = 0xE900000000000073;
      break;
    case 3:
      sub_1C440F44C();
      sub_1C440C400();
      break;
    default:
      break;
  }

  v4 = 0xE200000000000000;
  v5 = 25705;
  switch(v2)
  {
    case 1:
      sub_1C440BC08();
      v4 = 0xED0000746E657645;
      break;
    case 2:
      v5 = 0x6E6F697461636F6CLL;
      v4 = 0xE900000000000073;
      break;
    case 3:
      sub_1C4412EA0();
      sub_1C441591C();
      break;
    default:
      break;
  }

  if (v1 == v5 && v0 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C43FFF90();
  }

  return v7 & 1;
}

uint64_t sub_1C4685998(char a1)
{
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE500000000000000;
      break;
    case 2:
      v2 = 0xEB00000000746E65;
      break;
    case 3:
      v2 = 0xEA0000000000646CLL;
      break;
    case 4:
      v2 = 0xE700000000000000;
      break;
    case 7:
      v2 = 0xE700000000000000;
      break;
    case 8:
      v2 = 0xE900000000000074;
      break;
    case 9:
      v2 = 0xE700000000000000;
      break;
    case 10:
      v2 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_1C441022C();
  switch(v5)
  {
    case 1:
      v1 = 0xE500000000000000;
      v4 = 0x646C696863;
      break;
    case 2:
      v4 = 0x726170646E617267;
      v1 = 0xEB00000000746E65;
      break;
    case 3:
      v4 = 0x696863646E617267;
      v1 = 0xEA0000000000646CLL;
      break;
    case 4:
      v1 = 0xE700000000000000;
      sub_1C4440FD8();
      break;
    case 5:
      v4 = 0x646E65697266;
      break;
    case 6:
      v4 = 0x6573756F7073;
      break;
    case 7:
      v1 = 0xE700000000000000;
      v6 = 0x656E74726170;
      goto LABEL_18;
    case 8:
      v4 = 0x6E61747369737361;
      v1 = 0xE900000000000074;
      break;
    case 9:
      v1 = 0xE700000000000000;
      v6 = 0x6567616E616DLL;
LABEL_18:
      v4 = v6 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      break;
    case 10:
      v1 = 0xE500000000000000;
      v4 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v3 == v4 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}

uint64_t sub_1C4685C04(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1C442BA28();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C43FFF90();
  }

  return v8 & 1;
}