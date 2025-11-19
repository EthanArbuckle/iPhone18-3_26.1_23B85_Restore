id sub_1B8B88A30()
{
  v1 = v0;
  v2 = sub_1B8C23498();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_state];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v0[OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_sandboxToken];
  sub_1B8B46130(0, &qword_1EBAA72A0, 0x1E696AEC0);
  *v8 = 0;
  v8[1] = 0;
  v9 = sub_1B8C255A8();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B8C25128();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = v8[1];
  *v8 = v11;
  v8[1] = v13;

  sub_1B8B46130(0, &qword_1EBAA72A8, 0x1E695DFF8);
  result = sub_1B8C255A8();
  if (result)
  {
    v16 = result;
    sub_1B8C23448();

    (*(v3 + 32))(v1 + OBJC_IVAR____TtC8Feedback19SandboxExtensionURL_url, v6, v2);
    v17 = type metadata accessor for SandboxExtensionURL();
    v18.receiver = v1;
    v18.super_class = v17;
    return objc_msgSendSuper2(&v18, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B8B88C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SandboxExtensionError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SandboxExtensionError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B8B88CD0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B8B88CEC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t sub_1B8B88D30()
{
  result = qword_1EBAA72B8;
  if (!qword_1EBAA72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA72B8);
  }

  return result;
}

unint64_t sub_1B8B88D88()
{
  result = qword_1EBAA72C0;
  if (!qword_1EBAA72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA72C0);
  }

  return result;
}

unint64_t sub_1B8B88DE0()
{
  result = qword_1EBAA72C8;
  if (!qword_1EBAA72C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA72C8);
  }

  return result;
}

uint64_t sub_1B8B88E34()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72D0, &qword_1B8C2B810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8C293F0;
  v1 = sub_1B8B46130(0, &qword_1EBAA72F0, 0x1E695DEC8);
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72F8, &qword_1B8C2B828);
  *(v0 + 32) = v1;
  v2 = type metadata accessor for FBKFeedbackForm();
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7300, &qword_1B8C2B830);
  *(v0 + 64) = v2;
  v3 = type metadata accessor for SandboxExtensionURL();
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7308, qword_1B8C2B838);
  *(v0 + 96) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v5 = sub_1B8C252B8();

  [v4 initWithArray_];

  result = sub_1B8C253D8();
  __break(1u);
  return result;
}

uint64_t sub_1B8B89014()
{
  [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72D0, &qword_1B8C2B810);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B8C27920;
  v1 = type metadata accessor for FBKSubmissionError();
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72D8, &qword_1B8C2B818);
  *(v0 + 32) = v1;
  v2 = sub_1B8B46130(0, &qword_1EBAA72E0, 0x1E696ABC0);
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72E8, &qword_1B8C2B820);
  *(v0 + 64) = v2;
  v3 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v4 = sub_1B8C252B8();

  [v3 initWithArray_];

  result = sub_1B8C253D8();
  __break(1u);
  return result;
}

uint64_t sub_1B8B891F8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_1B8C23348();
  v5 = v4;

  if (qword_1EBAA5978 != -1)
  {
    swift_once();
  }

  v6 = sub_1B8C23C38();
  __swift_project_value_buffer(v6, qword_1EBAB3A30);
  v7 = sub_1B8C23C18();
  v8 = sub_1B8C25498();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B8B22000, v7, v8, "Showing Load More Button", v9, 2u);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
  }

  type metadata accessor for DonationController();
  sub_1B8B38E60();
  v10 = sub_1B8C23DA8();
  v12 = v11;
  result = sub_1B8C24D58();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  *(a1 + 40) = 0xD000000000000012;
  *(a1 + 48) = 0x80000001B8C32170;
  *(a1 + 56) = 0;
  *(a1 + 64) = v14;
  *(a1 + 72) = v15;
  *(a1 + 80) = v10;
  *(a1 + 88) = v12 & 1;
  return result;
}

uint64_t sub_1B8B89420(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7310, &qword_1B8C2B990);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2 & 1;
  v9 = *(v4 + 40);
  *&v7[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6408, &qword_1B8C28D00);
  swift_storeEnumTagMultiPayload();
  *(v7 + 3) = sub_1B8B8A3D8;
  *(v7 + 4) = v8;
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6F90, &qword_1B8C2ABD8);
  v10 = sub_1B8C24408();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B8C2A740;

  sub_1B8C243F8();
  sub_1B8B8ACD4(v14);
  swift_setDeallocating();
  (*(v11 + 8))(v14 + v13, v10);
  swift_deallocClassInstance();
  sub_1B8B8AFF4();
  sub_1B8C24B58();

  return sub_1B8B3433C(v7, &qword_1EBAA7310, &qword_1B8C2B990);
}

double sub_1B8B89664@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B8C24468();
  v25 = 0;
  sub_1B8B897F4(a1, a2 & 1, &v14);
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v26 = v14;
  v27 = v15;
  v36[6] = v20;
  v36[7] = v21;
  v36[8] = v22;
  v36[2] = v16;
  v36[3] = v17;
  v36[4] = v18;
  v36[5] = v19;
  v35 = v23;
  v37 = v23;
  v36[0] = v14;
  v36[1] = v15;
  sub_1B8B34450(&v26, &v13, &qword_1EBAA7330, &qword_1B8C2B9D0);
  sub_1B8B3433C(v36, &qword_1EBAA7330, &qword_1B8C2B9D0);
  *&v24[55] = v29;
  *&v24[39] = v28;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[135] = v34;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v7 = *&v24[112];
  *(a3 + 113) = *&v24[96];
  *(a3 + 129) = v7;
  *(a3 + 145) = *&v24[128];
  v8 = *&v24[48];
  *(a3 + 49) = *&v24[32];
  *(a3 + 65) = v8;
  v9 = *&v24[80];
  *(a3 + 81) = *&v24[64];
  *(a3 + 97) = v9;
  result = *v24;
  v11 = *&v24[16];
  *(a3 + 17) = *v24;
  v24[151] = v35;
  v12 = v25;
  *a3 = v6;
  *(a3 + 8) = 0x4030000000000000;
  *(a3 + 16) = v12;
  *(a3 + 161) = *&v24[144];
  *(a3 + 33) = v11;
  return result;
}

void sub_1B8B897F4(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1B8C242A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8C24398();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1B8C24F48();
  v44 = v14;
  v45 = v13;
  sub_1B8B89D60(a1, a2 & 1, &v60);
  v69 = v62;
  v70 = v63;
  v71 = v64;
  v72 = v65;
  v67 = v60;
  v68 = v61;
  v74 = v65;
  v73[2] = v62;
  v73[3] = v63;
  v73[4] = v64;
  v73[0] = v60;
  v73[1] = v61;
  sub_1B8B34450(&v67, v54, &qword_1EBAA7338, &qword_1B8C2B9D8);
  sub_1B8B3433C(v73, &qword_1EBAA7338, &qword_1B8C2B9D8);
  v77 = v69;
  v78 = v70;
  v79 = v71;
  v80 = v72;
  v75 = v67;
  v76 = v68;
  sub_1B8C24388();
  sub_1B8C24378();

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v15 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v60;
  }

  swift_getKeyPath();
  *&v60 = a1;
  sub_1B8B8B058(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  v16 = *(a1 + 24);

  v17 = floor(sqrt(v16 * 0.5));
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v18 = v17;
  if (v17 >= 99)
  {
    v18 = 99;
  }

  *&v60 = v18;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v19 = sub_1B8C249C8();
  v21 = v20;
  v23 = v22;
  sub_1B8C248B8();
  v24 = sub_1B8C249B8();
  v26 = v25;
  v28 = v27;
  v43[1] = v29;

  sub_1B8B34060(v19, v21, v23 & 1);

  sub_1B8C248D8();
  v30 = sub_1B8C24978();
  v32 = v31;
  LOBYTE(v21) = v33;
  v35 = v34;
  sub_1B8B34060(v24, v26, v28 & 1);

  v50 = v77;
  v51 = v78;
  v52 = v79;
  v53 = v80;
  v48 = v75;
  v49 = v76;
  v37 = v44;
  v36 = v45;
  *&v54[0] = v45;
  *(&v54[0] + 1) = v44;
  v54[1] = v75;
  v55 = v76;
  v59 = v80;
  v57 = v78;
  v58 = v79;
  v56 = v77;
  v47 = v21 & 1;
  v46 = 1;
  v38 = v75;
  *a3 = v54[0];
  *(a3 + 16) = v38;
  v39 = v55;
  v40 = v56;
  v41 = v58;
  v42 = v59;
  *(a3 + 64) = v57;
  *(a3 + 80) = v41;
  *(a3 + 32) = v39;
  *(a3 + 48) = v40;
  *(a3 + 96) = v42;
  *(a3 + 104) = v30;
  *(a3 + 112) = v32;
  *(a3 + 120) = v21 & 1;
  *(a3 + 128) = v35;
  *(a3 + 136) = 0;
  *(a3 + 144) = 1;
  sub_1B8B34450(v54, &v60, &qword_1EBAA7340, &qword_1B8C2BA08);
  sub_1B8B34694(v30, v32, v21 & 1);

  sub_1B8B34060(v30, v32, v21 & 1);

  *&v60 = v36;
  *(&v60 + 1) = v37;
  v63 = v50;
  v64 = v51;
  v65 = v52;
  v66 = v53;
  v61 = v48;
  v62 = v49;
  sub_1B8B3433C(&v60, &qword_1EBAA7340, &qword_1B8C2BA08);
}

uint64_t sub_1B8B89D60@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v56 = sub_1B8C23A28();
  v54 = *(v56 - 8);
  v6 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v46[-v10];
  v12 = sub_1B8C242A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1B8C24398();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v55 = sub_1B8C24C68();
  sub_1B8C24F48();
  sub_1B8C23E38();
  v52 = v60;
  v51 = v61;
  v50 = v62;
  v47 = v63;
  v49 = v64;
  v48 = v65;
  sub_1B8C24388();
  sub_1B8C24378();

  if ((a2 & 1) == 0)
  {
    sub_1B8C25488();
    v19 = sub_1B8C247B8();
    sub_1B8C23C08();

    sub_1B8C24298();
    swift_getAtKeyPath();

    (*(v13 + 8))(v16, v12);
    a1 = v59;
  }

  KeyPath = swift_getKeyPath();
  v59 = a1;
  sub_1B8B8B058(&qword_1EBAA5F60, type metadata accessor for ScoreController);
  sub_1B8C23588();

  v21 = *(a1 + 24);

  v22 = floor(sqrt(v21 * 0.5));
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_9;
  }

  v23 = v22;
  if (v22 >= 99)
  {
    v23 = 99;
  }

  v59 = v23;
  sub_1B8C24338();
  sub_1B8C24378();
  sub_1B8C243B8();
  v24 = sub_1B8C249C8();
  v26 = v25;
  v28 = v27;
  sub_1B8C248D8();
  v29 = sub_1B8C248C8();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  sub_1B8C24908();
  sub_1B8B3433C(v11, &qword_1EBAA5CD0, &qword_1B8C278C8);
  KeyPath = sub_1B8C249B8();
  v11 = v30;
  LOBYTE(a1) = v31;

  sub_1B8B34060(v24, v26, v28 & 1);

  if (qword_1EBAA59A0 != -1)
  {
    goto LABEL_13;
  }

LABEL_9:
  v32 = v56;
  v33 = __swift_project_value_buffer(v56, qword_1EBAB3A60);
  (*(v54 + 16))(v53, v33, v32);
  v59 = sub_1B8C24CE8();
  v34 = sub_1B8C24998();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_1B8B34060(KeyPath, v11, a1 & 1);

  v41 = v51;
  LOBYTE(v59) = v51;
  v42 = v47;
  v58 = v47;
  v57 = v38 & 1;
  v43 = v52;
  *a3 = v55;
  *(a3 + 8) = v43;
  *(a3 + 16) = v41;
  *(a3 + 24) = v50;
  *(a3 + 32) = v42;
  v44 = v48;
  *(a3 + 40) = v49;
  *(a3 + 48) = v44;
  *(a3 + 56) = v34;
  *(a3 + 64) = v36;
  *(a3 + 72) = v38 & 1;
  *(a3 + 80) = v40;

  sub_1B8B34694(v34, v36, v38 & 1);

  sub_1B8B34060(v34, v36, v38 & 1);
}

uint64_t sub_1B8B8A408(uint64_t a1)
{
  v2 = sub_1B8C237B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7348, &qword_1B8C2BA10);
    v10 = sub_1B8C257B8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1B8B8B058(&qword_1EBAA64E0, MEMORY[0x1E699C390]);
      v18 = sub_1B8C250B8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1B8B8B058(&unk_1EBAA8610, MEMORY[0x1E699C390]);
          v25 = sub_1B8C250E8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B8B8A728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7350, &qword_1B8C2BA18);
  v46 = v1;
  v3 = sub_1B8C257B8();
  v4 = 0;
  v5 = v3 + 56;
  v45 = a1 + 32;
  v52 = v3 + 56;
  while (2)
  {
    v7 = (v45 + (v4 << 6));
    v8 = v7[2];
    v63 = v7[1];
    *v64 = v8;
    *&v64[9] = *(v7 + 41);
    v62 = *v7;
    v9 = *(v3 + 40);
    sub_1B8C25AB8();
    v10 = v64[0];
    v11 = *&v64[16];
    v51 = v4;
    if (*(&v62 + 1) > 1)
    {
      if (*(&v62 + 1) == 2)
      {
        v12 = 3;
        goto LABEL_17;
      }

      if (*(&v62 + 1) == 3)
      {
        v12 = 4;
        goto LABEL_17;
      }
    }

    else
    {
      if (!*(&v62 + 1))
      {
        v12 = 0;
        goto LABEL_17;
      }

      if (*(&v62 + 1) == 1)
      {
        v12 = 2;
LABEL_17:
        MEMORY[0x1B8CCA790](v12);
        goto LABEL_18;
      }
    }

    v13 = *(&v63 + 1);
    MEMORY[0x1B8CCA790](1);

    sub_1B8C251B8();
    sub_1B8C25AD8();
    if (v13)
    {
      sub_1B8C251B8();
    }

    MEMORY[0x1B8CCA790](v10);
    v5 = v52;
    sub_1B8C25AD8();
    if (v11)
    {
      sub_1B8C251B8();
    }

    sub_1B8C25AD8();
LABEL_18:
    result = sub_1B8C25AF8();
    v53 = ~(-1 << *(v3 + 32));
    v15 = result & v53;
    v16 = (result & v53) >> 6;
    v17 = *(v5 + 8 * v16);
    v18 = 1 << (result & v53);
    if ((v18 & v17) == 0)
    {
      goto LABEL_58;
    }

    do
    {
      v19 = v3;
      v20 = (*(v3 + 48) + (v15 << 6));
      v21 = *(v20 + 41);
      v22 = v20[2];
      v23 = *v20;
      v56 = v20[1];
      *v57 = v22;
      v55 = v23;
      *&v57[9] = v21;
      memmove(__dst, v20, 0x39uLL);
      v59 = v62;
      v60 = v63;
      v61[0] = *v64;
      *(v61 + 9) = *&v64[9];
      v24 = v56;
      v25 = v57[0];
      v26 = *&v57[8];
      v27 = *&v57[16];
      v28 = v57[24];
      if (*(&v55 + 1) > 1)
      {
        if (*(&v55 + 1) == 2)
        {
          if (*(&v62 + 1) == 2)
          {
LABEL_3:
            sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
            v6 = v46;
            v3 = v19;
LABEL_4:
            v5 = v52;
            goto LABEL_5;
          }
        }

        else
        {
          if (*(&v55 + 1) != 3)
          {
            goto LABEL_28;
          }

          if (*(&v62 + 1) == 3)
          {
            goto LABEL_3;
          }
        }

LABEL_33:
        v29 = &v62;
LABEL_34:
        sub_1B8B50FF8(v29, v54);
        v3 = v19;
LABEL_35:
        result = sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
        goto LABEL_36;
      }

      if (!*(&v55 + 1))
      {
        if (!*(&v62 + 1))
        {
          goto LABEL_3;
        }

        goto LABEL_33;
      }

      if (*(&v55 + 1) == 1)
      {
        if (*(&v62 + 1) == 1)
        {
          goto LABEL_3;
        }

        goto LABEL_33;
      }

LABEL_28:
      if (*(&v62 + 1) < 4uLL)
      {
        goto LABEL_29;
      }

      v30 = *(&v63 + 1);
      v31 = v63;
      v32 = v64[0];
      v48 = *&v64[8];
      v50 = *&v64[16];
      v49 = v64[24];
      if (v55 != v62)
      {
        v47 = v64[0];
        v33 = *(&v63 + 1);
        v34 = sub_1B8C25A08();
        v30 = v33;
        v32 = v47;
        if ((v34 & 1) == 0)
        {
LABEL_29:
          sub_1B8B50FF8(&v62, v54);
          v29 = &v55;
          goto LABEL_34;
        }
      }

      if (*(&v24 + 1))
      {
        if (!v30)
        {
          goto LABEL_29;
        }

        if (v24 != __PAIR128__(v30, v31))
        {
          v35 = v32;
          v36 = sub_1B8C25A08();
          v32 = v35;
          if ((v36 & 1) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else if (v30)
      {
        goto LABEL_29;
      }

      if (v25 != v32)
      {
        goto LABEL_29;
      }

      v3 = v19;
      if (v27)
      {
        if (!v50)
        {
          sub_1B8B50FF8(&v62, v54);
          sub_1B8B50FF8(&v55, v54);
          goto LABEL_35;
        }

        if (v26 == v48 && v27 == v50)
        {
          sub_1B8B50FF8(&v62, v54);
          sub_1B8B50FF8(&v55, v54);
          result = sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
        }

        else
        {
          v37 = sub_1B8C25A08();
          sub_1B8B50FF8(&v62, v54);
          sub_1B8B50FF8(&v55, v54);
          result = sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
          if ((v37 & 1) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_1B8B50FF8(&v62, v54);
        sub_1B8B50FF8(&v55, v54);
        sub_1B8B50FF8(&v62, v54);
        sub_1B8B50FF8(&v55, v54);
        sub_1B8B3433C(__dst, &qword_1EBAA64D8, &qword_1B8C2DB40);
        sub_1B8B51054(&v62);
        result = sub_1B8B51054(&v55);
        if (v50)
        {
          goto LABEL_36;
        }
      }

      if (((v28 ^ v49) & 1) == 0)
      {
        sub_1B8B51054(&v62);
        v6 = v46;
        goto LABEL_4;
      }

LABEL_36:
      v5 = v52;
      v15 = (v15 + 1) & v53;
      v16 = v15 >> 6;
      v18 = 1 << v15;
    }

    while ((*(v52 + 8 * (v15 >> 6)) & (1 << v15)) != 0);
    v17 = *(v52 + 8 * v16);
LABEL_58:
    *(v5 + 8 * v16) = v17 | v18;
    v38 = (*(v3 + 48) + (v15 << 6));
    v39 = v62;
    v40 = v63;
    v41 = *v64;
    *(v38 + 41) = *&v64[9];
    v38[1] = v40;
    v38[2] = v41;
    *v38 = v39;
    v42 = *(v3 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    v6 = v46;
    if (!v43)
    {
      *(v3 + 16) = v44;
LABEL_5:
      v4 = v51 + 1;
      if (v51 + 1 == v6)
      {
        return v3;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8B8ACD4(uint64_t a1)
{
  v2 = sub_1B8C24408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7320, &qword_1B8C2B9C8);
    v10 = sub_1B8C257B8();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1B8B8B058(&qword_1EBAA7328, MEMORY[0x1E697C4F8]);
      v18 = sub_1B8C250B8();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1B8B8B058(&unk_1EBAA8590, MEMORY[0x1E697C4F8]);
          v25 = sub_1B8C250E8();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1B8B8AFF4()
{
  result = qword_1EBAA7318;
  if (!qword_1EBAA7318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7310, &qword_1B8C2B990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7318);
  }

  return result;
}

uint64_t sub_1B8B8B058(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FBKDraftError.description.getter(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return 0x206E776F6E6B6E55;
      }

      if (a1 == 1)
      {
        return 0xD000000000000013;
      }

LABEL_20:
      result = sub_1B8C25A28();
      __break(1u);
      return result;
    }

    if (a1 == 2)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000022;
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 0x6E61432072657355;
        case 7:
          return 0xD000000000000018;
        case 8:
          return 0xD000000000000020;
      }

      goto LABEL_20;
    }

    if (a1 == 4)
    {
      return 0x2064696C61766E49;
    }

    else
    {
      return 0x6F7774656E206F4ELL;
    }
  }
}

unint64_t static FBKDraftError.withRawValue(_:)(unint64_t a1)
{
  result = sub_1B8B8B4E4(a1);
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B8B8B2B0()
{
  v2 = *v0;
  sub_1B8C25AB8();
  sub_1B8C250C8();
  return sub_1B8C25AF8();
}

uint64_t sub_1B8B8B314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8B8B714();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1B8B8B360()
{
  v2 = *v0;
  sub_1B8C25AB8();
  sub_1B8C250C8();
  return sub_1B8C25AF8();
}

unint64_t sub_1B8B8B3C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8B8B4E4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1B8B8B3FC(uint64_t a1)
{
  v2 = sub_1B8B8B714();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1B8B8B438(uint64_t a1)
{
  v2 = sub_1B8B8B714();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1B8B8B490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8B8B714();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

unint64_t sub_1B8B8B4E4(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B8B8B4F8()
{
  result = qword_1EBAA7358;
  if (!qword_1EBAA7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7358);
  }

  return result;
}

unint64_t sub_1B8B8B550()
{
  result = qword_1EBAA7360;
  if (!qword_1EBAA7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7360);
  }

  return result;
}

unint64_t sub_1B8B8B5A8()
{
  result = qword_1EBAA7368;
  if (!qword_1EBAA7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7368);
  }

  return result;
}

unint64_t sub_1B8B8B600()
{
  result = qword_1EBAA7370;
  if (!qword_1EBAA7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7370);
  }

  return result;
}

unint64_t sub_1B8B8B658()
{
  result = qword_1EBAA7378;
  if (!qword_1EBAA7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7378);
  }

  return result;
}

unint64_t sub_1B8B8B6B0()
{
  result = qword_1EBAA7380;
  if (!qword_1EBAA7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7380);
  }

  return result;
}

unint64_t sub_1B8B8B714()
{
  result = qword_1EBAA7388;
  if (!qword_1EBAA7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7388);
  }

  return result;
}

uint64_t sub_1B8B8B768@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1B8B807FC(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_1B8B4D380(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B8B8B820@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_1B8C23498();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_1B8B8B9F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1B8B8BA38()
{
  v0 = sub_1B8C23C38();
  __swift_allocate_value_buffer(v0, qword_1EBAA7390);
  __swift_project_value_buffer(v0, qword_1EBAA7390);
  return sub_1B8C23C28();
}

uint64_t sub_1B8B8BB04()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1B8B8BB64(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_localClient;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1B8B8BBFC;
}

void sub_1B8B8BBFC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

void sub_1B8B8BC7C(char a1)
{
  v2 = v1;
  v29.receiver = v2;
  v29.super_class = type metadata accessor for DraftingExtensionViewController();
  objc_msgSendSuper2(&v29, sel_viewWillDisappear_, a1 & 1);
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7390);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1B8B5DD48(0xD000000000000015, 0x80000001B8C33D60, v28);
    _os_log_impl(&dword_1B8B22000, v5, v6, "%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  v9 = *&v2[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController];
  if (v9)
  {
    v10 = v9;
    v11 = [v10 presentedViewController];
    v12 = v11;
    if (v11)
    {
    }

    v13 = [v10 isBeingDismissedBySelf];
    v14 = sub_1B8C23C18();
    v15 = sub_1B8C25498();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109376;
      *(v16 + 4) = v13;
      *(v16 + 8) = 1024;
      *(v16 + 10) = v12 != 0;
      _os_log_impl(&dword_1B8B22000, v14, v15, "DraftingExtensionViewController will disappear. Did BFTVC dismiss self? %{BOOL}d. Did BFTVC present another view? %{BOOL}d", v16, 0xEu);
      MEMORY[0x1B8CCB0E0](v16, -1, -1);
    }

    if ((v13 & 1) == 0 && !v12)
    {
      v17 = sub_1B8C23C18();
      v18 = sub_1B8C25498();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_1B8B22000, v17, v18, "Controller is being dismissed by parent. Will delete draft", v19, 2u);
        MEMORY[0x1B8CCB0E0](v19, -1, -1);
      }

      v28[4] = sub_1B8B8C114;
      v28[5] = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 1107296256;
      v28[2] = sub_1B8B963EC;
      v28[3] = &block_descriptor_2;
      v20 = _Block_copy(v28);
      [v10 _deleteCurrentDraftWithCompletion:v20];
      _Block_release(v20);
      v21 = sub_1B8C23C18();
      v22 = sub_1B8C25498();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1B8B22000, v21, v22, "will delete all bug sessions", v23, 2u);
        MEMORY[0x1B8CCB0E0](v23, -1, -1);
      }

      v24 = [v10 devicesController];
      [v24 abortAllSessions];
    }
  }

  else
  {
    v10 = sub_1B8C23C18();
    v25 = sub_1B8C25498();
    if (os_log_type_enabled(v10, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1B8B5DD48(0xD000000000000015, 0x80000001B8C33D60, v28);
      _os_log_impl(&dword_1B8B22000, v10, v25, "No BFTVC on %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1B8CCB0E0](v27, -1, -1);
      MEMORY[0x1B8CCB0E0](v26, -1, -1);
    }
  }
}

void sub_1B8B8C114(void *a1)
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7390);
  v3 = a1;
  oslog = sub_1B8C23C18();
  v4 = sub_1B8C25498();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74A0, &qword_1B8C2BCA8);
    v8 = sub_1B8C25178();
    v10 = sub_1B8B5DD48(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1B8B22000, oslog, v4, "Deleted draft. Error? %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  else
  {
  }
}

void sub_1B8B8C30C(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DraftingExtensionViewController();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1 & 1);
  sub_1B8C235E8();
  sub_1B8B8DC94();
}

void sub_1B8B8C3C0()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for DraftingExtensionViewController();
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DC638]) init];
  [v1 setActivityIndicatorViewStyle_];
  [v1 startAnimating];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  v4 = v1;
  [v3 addSubview_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA85B0, &unk_1B8C2BBE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B8C2BBD0;
  v6 = [v4 centerXAnchor];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v7 centerXAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v4 centerYAnchor];

  v12 = [v0 view];
  if (v12)
  {
    v13 = v12;
    v14 = objc_opt_self();
    v15 = [v13 centerYAnchor];

    v16 = [v11 constraintEqualToAnchor_];
    *(v5 + 40) = v16;
    sub_1B8B46130(0, &qword_1EBAA7BB0, 0x1E696ACD8);
    v17 = sub_1B8C252B8();

    [v14 activateConstraints_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1B8B8C698()
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8C23C38();
  __swift_project_value_buffer(v1, qword_1EBAA7390);
  v2 = v0;
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25498();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1B8B5DD48(0x29287472617473, 0xE700000000000000, &v13);
    *(v5 + 12) = 2082;
    v7 = *&v2[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form];
    if (v7)
    {
      v8 = (v7 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier);
      swift_beginAccess();
      v10 = *v8;
      v9 = v8[1];
    }

    else
    {
      v10 = 0;
      v9 = 0xE000000000000000;
    }

    v11 = sub_1B8B5DD48(v10, v9, &v13);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_1B8B22000, v3, v4, "%{public}s with form identifier: [%{public}s]", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v6, -1, -1);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  if (*&v2[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session])
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B8BB7CEC(v2, sub_1B8B96124, v12);
  }
}

void sub_1B8B8C8E8(void *a1, char a2)
{
  v4 = sub_1B8C24FD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8C25008();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if ((a2 & 1) == 0)
    {
      if (qword_1EBAA58F8 != -1)
      {
        swift_once();
      }

      v16 = sub_1B8C23C38();
      __swift_project_value_buffer(v16, qword_1EBAA7390);
      v17 = a1;
      v18 = sub_1B8C23C18();
      v19 = sub_1B8C25498();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 134349056;
        v21 = [v17 ID];
        if (!v21)
        {
          sub_1B8B96138(a1, 0);
          __break(1u);
          return;
        }

        v22 = v21;
        v23 = [v21 integerValue];

        *(v20 + 4) = v23;
        sub_1B8B96138(a1, 0);
        _os_log_impl(&dword_1B8B22000, v18, v19, "Did start Feedback Session with Form [%{public}ld]", v20, 0xCu);
        MEMORY[0x1B8CCB0E0](v20, -1, -1);
      }

      else
      {
        sub_1B8B96138(a1, 0);
      }

      v24 = *&v15[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub];
      *&v15[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub] = a1;
      v25 = v17;

      v15[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews] = 1;
      sub_1B8B8DC94();

      return;
    }

    if (a1 == 6)
    {
      sub_1B8B8CEEC();
    }

    else if (a1 == 5)
    {
      sub_1B8B8D4C0();
    }

    else
    {
      v34 = v5;
      if (qword_1EBAA58F8 != -1)
      {
        swift_once();
      }

      v26 = sub_1B8C23C38();
      __swift_project_value_buffer(v26, qword_1EBAA7390);
      v27 = sub_1B8C23C18();
      v28 = sub_1B8C25478();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1B8B22000, v27, v28, "Failed to authenticate", v29, 2u);
        MEMORY[0x1B8CCB0E0](v29, -1, -1);
      }

      sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
      v30 = sub_1B8C25538();
      v31 = swift_allocObject();
      *(v31 + 16) = v15;
      *(v31 + 24) = a1;
      aBlock[4] = sub_1B8B96130;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B8B8B9F4;
      aBlock[3] = &block_descriptor_90;
      v32 = _Block_copy(aBlock);
      v33 = v15;

      sub_1B8C24FF8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B8B9634C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
      sub_1B8B62264();
      sub_1B8C256D8();
      MEMORY[0x1B8CCA210](0, v13, v8, v32);
      _Block_release(v32);

      (*(v34 + 8))(v8, v4);
      (*(v10 + 8))(v13, v9);
    }
  }
}

void sub_1B8B8CE30(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply + 8);
    sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);

    v3 = sub_1B8C255C8();
    v1();
    sub_1B8B30A44(v1);
  }
}

void sub_1B8B8CEEC()
{
  v1 = v0;
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7390);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25458();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B8B22000, v3, v4, "Showing user cancelled alert", v5, 2u);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  type metadata accessor for FBKFeedbackForm();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_1B8C23348();

  v9 = [v7 byte_1E7EB643B];
  sub_1B8C23348();

  v10 = sub_1B8C250F8();

  v11 = sub_1B8C250F8();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:{1, 0x80000001B8C342D0}];

  v13 = [v7 byte_1E7EB643B];
  sub_1B8C23348();

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = v1;
  v16 = sub_1B8C250F8();

  v30 = sub_1B8B960D8;
  v31 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B8B8D458;
  v29 = &block_descriptor_75;
  v17 = _Block_copy(&aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:0 handler:{v17, 0x80000001B8C340E0}];
  _Block_release(v17);

  [v12 addAction_];
  v20 = [v7 bundleForClass_];
  sub_1B8C23348();

  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v22 = v15;
  v23 = sub_1B8C250F8();

  v30 = sub_1B8B96100;
  v31 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B8B8D458;
  v29 = &block_descriptor_81;
  v24 = _Block_copy(&aBlock);

  v25 = [v18 actionWithTitle:v23 style:0 handler:{v24, 0x80000001B8C34340}];
  _Block_release(v24);

  [v12 addAction_];
  [v22 presentViewController:v12 animated:1 completion:0];
}

void sub_1B8B8D458(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1B8B8D4C0()
{
  v1 = v0;
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8C23C38();
  __swift_project_value_buffer(v2, qword_1EBAA7390);
  v3 = sub_1B8C23C18();
  v4 = sub_1B8C25458();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B8B22000, v3, v4, "Showing no network alert", v5, 2u);
    MEMORY[0x1B8CCB0E0](v5, -1, -1);
  }

  type metadata accessor for FBKFeedbackForm();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  sub_1B8C23348();

  v9 = [v7 byte_1E7EB643B];
  sub_1B8C23348();

  v10 = sub_1B8C250F8();

  v11 = sub_1B8C250F8();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:{1, 0x80000001B8C34070}];

  v13 = [v7 byte_1E7EB643B];
  sub_1B8C23348();

  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  v15 = v1;
  v16 = sub_1B8C250F8();

  v30 = sub_1B8B9608C;
  v31 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B8B8D458;
  v29 = &block_descriptor_63;
  v17 = _Block_copy(&aBlock);

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v16 style:0 handler:{v17, 0x80000001B8C340E0}];
  _Block_release(v17);

  [v12 addAction_];
  v20 = [v7 bundleForClass_];
  sub_1B8C23348();

  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v22 = v15;
  v23 = sub_1B8C250F8();

  v30 = sub_1B8B960B4;
  v31 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1B8B8D458;
  v29 = &block_descriptor_69;
  v24 = _Block_copy(&aBlock);

  v25 = [v18 actionWithTitle:v23 style:0 handler:{v24, 0x80000001B8C34170}];
  _Block_release(v24);

  [v12 addAction_];
  [v22 presentViewController:v12 animated:1 completion:0];
}

void sub_1B8B8DA2C(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B8C23C38();
  __swift_project_value_buffer(v5, qword_1EBAA7390);
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25498();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B8B22000, v6, v7, a3, v8, 2u);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  v9 = a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply;
  v10 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  if (v10)
  {
    v11 = *(v9 + 8);
    sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);

    v12 = sub_1B8C255C8();
    v10();
    sub_1B8B30A44(v10);
  }
}

uint64_t sub_1B8B8DBA8(uint64_t a1, uint64_t a2, const char *a3)
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7390);
  v5 = sub_1B8C23C18();
  v6 = sub_1B8C25498();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B8B22000, v5, v6, a3, v7, 2u);
    MEMORY[0x1B8CCB0E0](v7, -1, -1);
  }

  return sub_1B8B8C698();
}

void sub_1B8B8DC94()
{
  v1 = v0;
  v2 = type metadata accessor for URLError();
  v3 = *(v2 - 8);
  v292 = v2;
  v293 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v281 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_122;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub];
  if (!v10 || (v11 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews, v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews] != 1))
  {
LABEL_17:
    if (qword_1EBAA58F8 != -1)
    {
      goto LABEL_120;
    }

    goto LABEL_18;
  }

  v12 = v10;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v14 = v13;
  v15 = [v13 window];

  if (!v15)
  {

    goto LABEL_17;
  }

  v1[v11] = 0;
  v16 = *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form];
  if (!v16)
  {
    goto LABEL_127;
  }

  v284 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form;
  v17 = qword_1EBAA58F8;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = sub_1B8C23C38();
  v294 = __swift_project_value_buffer(v19, qword_1EBAA7390);
  v20 = sub_1B8C23C18();
  v21 = sub_1B8C25498();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1B8B22000, v20, v21, "Initializing Views", v22, 2u);
    MEMORY[0x1B8CCB0E0](v22, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA7470, 0x1E69DCFB8);
  v23 = MEMORY[0x1B8CCA110]();
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {

LABEL_127:
    sub_1B8C258A8();
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController];
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController] = v24;
  v27 = v23;

  [v25 setDelegate_];
  v285 = v12;
  [v25 setPendingStub_];
  [v25 setCanShowTopicPicker_];
  v28 = &v18[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttachmentLegalText];
  swift_beginAccess();
  if (v28[1])
  {
    v29 = *v28;

    v30 = sub_1B8C250F8();

    [v25 setLocalizedAttachmentLegalText_];
  }

  v31 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_authenticationMethod;
  swift_beginAccess();
  v287 = v31;
  [v25 setShouldShowUserSwitcherInForm_];
  v288 = v18;
  v32 = v18;
  v33 = v27;
  v34 = sub_1B8C23C18();
  v35 = sub_1B8C25498();

  v36 = os_log_type_enabled(v34, v35);
  v290 = v1;
  v291 = v25;
  v289 = v6;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v295[0] = v38;
    *v37 = 136446466;
    v39 = &v32[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v41 = *v39;
    v40 = v39[1];

    v42 = sub_1B8B5DD48(v41, v40, v295);

    *(v37 + 4) = v42;
    v25 = v291;
    *(v37 + 12) = 1026;
    *(v37 + 14) = [v25 shouldShowUserSwitcherInForm];

    _os_log_impl(&dword_1B8B22000, v34, v35, "Form [%{public}s]: shows user switcher: [%{BOOL,public}d]", v37, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1B8CCB0E0](v38, -1, -1);
    MEMORY[0x1B8CCB0E0](v37, -1, -1);
  }

  else
  {
  }

  v47 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_autoGathersDiagnosticExtensions;
  swift_beginAccess();
  [v25 setAutoGathersDiagnosticExtensions_];
  v48 = v32;
  v49 = v33;
  v50 = sub_1B8C23C18();
  v51 = sub_1B8C25498();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v295[0] = v53;
    *v52 = 136446466;
    v54 = &v48[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v56 = *v54;
    v55 = v54[1];

    v57 = sub_1B8B5DD48(v56, v55, v295);

    *(v52 + 4) = v57;
    v25 = v291;
    *(v52 + 12) = 1026;
    *(v52 + 14) = [v25 autoGathersDiagnosticExtensions];

    _os_log_impl(&dword_1B8B22000, v50, v51, "Form [%{public}s]: autoGathersDiagnosticExtensions: [%{BOOL,public}d]", v52, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1B8CCB0E0](v53, -1, -1);
    MEMORY[0x1B8CCB0E0](v52, -1, -1);
  }

  else
  {
  }

  v58 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_alwaysDeletesDrafts;
  swift_beginAccess();
  [v25 setAlwaysDeletesDrafts_];
  v59 = v48;
  v60 = sub_1B8C23C18();
  v61 = sub_1B8C25498();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v295[0] = v63;
    *v62 = 136446466;
    v64 = &v59[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v286 = v49;
    v65 = *v64;
    v66 = v64[1];

    v67 = sub_1B8B5DD48(v65, v66, v295);

    *(v62 + 4) = v67;
    v49 = v286;
    *(v62 + 12) = 1026;
    *(v62 + 14) = v48[v58];

    _os_log_impl(&dword_1B8B22000, v60, v61, "Form [%{public}s]: alwaysDeletesDrafts: [%{BOOL,public}d]", v62, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v68 = v63;
    v25 = v291;
    MEMORY[0x1B8CCB0E0](v68, -1, -1);
    MEMORY[0x1B8CCB0E0](v62, -1, -1);
  }

  else
  {
  }

  [v25 setShowInlineUserInfo_];
  v69 = v59;
  v70 = v49;
  v71 = sub_1B8C23C18();
  v72 = sub_1B8C25498();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v295[0] = v74;
    *v73 = 136446466;
    v75 = &v69[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v77 = *v75;
    v76 = v75[1];

    v78 = sub_1B8B5DD48(v77, v76, v295);

    *(v73 + 4) = v78;
    v25 = v291;
    *(v73 + 12) = 1026;
    *(v73 + 14) = [v25 showInlineUserInfo];

    _os_log_impl(&dword_1B8B22000, v71, v72, "Form [%{public}s]: show inline user info: [%{BOOL,public}d]", v73, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x1B8CCB0E0](v74, -1, -1);
    MEMORY[0x1B8CCB0E0](v73, -1, -1);
  }

  else
  {
  }

  [v25 setShowUserSwitcherLast_];
  v79 = v69;
  v80 = v70;
  v81 = sub_1B8C23C18();
  v82 = sub_1B8C25498();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v295[0] = v84;
    *v83 = 136446466;
    v85 = &v79[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v87 = *v85;
    v86 = v85[1];

    v88 = sub_1B8B5DD48(v87, v86, v295);

    *(v83 + 4) = v88;
    v25 = v291;
    *(v83 + 12) = 1026;
    *(v83 + 14) = [v25 showUserSwitcherLast];

    _os_log_impl(&dword_1B8B22000, v81, v82, "Form [%{public}s]: show user switcher last: [%{BOOL,public}d]", v83, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x1B8CCB0E0](v84, -1, -1);
    MEMORY[0x1B8CCB0E0](v83, -1, -1);
  }

  else
  {
  }

  if ([v25 showInlineUserInfo])
  {
    v89 = [objc_opt_self() sharedInstance];
    v90 = [v89 currentUser];

    if (v90)
    {
      v91 = [v90 username];

      if (v91)
      {
        v92 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        v93 = sub_1B8C250F8();
        v94 = [v92 initWithString_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7488, &qword_1B8C2BC90);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B8C2A740;
        v96 = *MEMORY[0x1E69DB648];
        *(inited + 32) = *MEMORY[0x1E69DB648];
        v97 = objc_opt_self();
        v98 = *MEMORY[0x1E69DDD28];
        v99 = v96;
        v100 = [v97 preferredFontForTextStyle_];
        v101 = sub_1B8C23618();

        *(inited + 40) = v101;
        v102 = sub_1B8B5F7EC(inited);
        swift_setDeallocating();
        sub_1B8B3433C(inited + 32, &qword_1EBAA7490, &qword_1B8C2BC98);
        sub_1B8BA184C(v102);

        v103 = objc_allocWithZone(MEMORY[0x1E696AD40]);
        type metadata accessor for Key(0);
        sub_1B8B9634C(&qword_1EBAA5CB8, type metadata accessor for Key);
        v104 = sub_1B8C25088();

        v105 = [v103 initWithString:v91 attributes:v104];

        [v94 appendAttributedString_];
        v106 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
        swift_beginAccess();
        v107 = *&v79[v106];
        if (v107)
        {
          v108 = objc_allocWithZone(MEMORY[0x1E696AD40]);
          v109 = v107;
          v110 = [v108 initWithAttributedString_];
          [v110 appendAttributedString_];
          v111 = v110;
          v25 = v291;
          [v291 setLocalizedAttributedLegalString_];
        }

        else
        {
          v111 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
          v25 = v291;
          [v291 setLocalizedAttributedLegalString_];
        }
      }
    }
  }

  if (!v288[v287])
  {
    v112 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_localizedAttributedLegalString;
    swift_beginAccess();
    v113 = *&v79[v112];
    if (v113)
    {
      v114 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v115 = v113;
      v116 = [v114 initWithAttributedString_];
      [v25 setLocalizedAttributedLegalString_];
    }
  }

  if (*&v79[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon + 8])
  {
    v117 = *&v79[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon];
    v118 = *&v79[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__largeTitleIcon + 8];

    v119 = sub_1B8C250F8();
  }

  else
  {
    v119 = 0;
  }

  [v25 setLargeTitleIcon_];

  v120 = v79;
  v121 = v80;
  v122 = sub_1B8C23C18();
  v123 = v25;
  v124 = sub_1B8C25468();

  if (os_log_type_enabled(v122, v124))
  {
    v288 = v121;
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v295[0] = v126;
    *v125 = 136446466;
    v127 = &v120[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v129 = *v127;
    v128 = v127[1];

    v130 = sub_1B8B5DD48(v129, v128, v295);

    *(v125 + 4) = v130;
    *(v125 + 12) = 2082;
    v131 = [v123 largeTitleIcon];
    if (v131)
    {
      v132 = v131;
      v133 = sub_1B8C25128();
      v135 = v134;
    }

    else
    {
      v133 = 0;
      v135 = 0xE000000000000000;
    }

    v136 = sub_1B8B5DD48(v133, v135, v295);

    *(v125 + 14) = v136;
    _os_log_impl(&dword_1B8B22000, v122, v124, "Form [%{public}s]: large title icon: [%{public}s]", v125, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v126, -1, -1);
    MEMORY[0x1B8CCB0E0](v125, -1, -1);

    v121 = v288;
  }

  else
  {
  }

  v137 = v291;
  [v291 setCanShowTeamPicker_];
  sub_1B8B8FF6C();
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7478, &qword_1B8C2BC80);
  v139 = sub_1B8C25088();

  [v137 setPendingQandA_];

  v140 = v120;
  v141 = sub_1B8C23C18();
  v142 = sub_1B8C25498();
  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v288 = v138;
    v145 = v144;
    v295[0] = v144;
    *v143 = 136446466;
    v146 = &v140[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v148 = *v146;
    v147 = v146[1];

    v149 = sub_1B8B5DD48(v148, v147, v295);

    *(v143 + 4) = v149;
    *(v143 + 12) = 2050;
    v150 = *(sub_1B8B8FF6C() + 16);

    *(v143 + 14) = v150;

    _os_log_impl(&dword_1B8B22000, v141, v142, "Form [%{public}s]: prefilled Q&As count: [%{public}ld]", v143, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v145);
    MEMORY[0x1B8CCB0E0](v145, -1, -1);
    MEMORY[0x1B8CCB0E0](v143, -1, -1);
  }

  else
  {
  }

  v151 = v121;
  v152 = sub_1B8C23C18();
  v153 = sub_1B8C25468();

  if (os_log_type_enabled(v152, v153))
  {
    v154 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    v295[0] = v155;
    *v154 = 136315138;
    v156 = [v291 pendingQandA];
    if (v156)
    {
      v157 = v156;
      v158 = sub_1B8C25098();
    }

    else
    {
      v158 = 0;
    }

    v295[15] = v158;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7480, &qword_1B8C2BC88);
    v159 = sub_1B8C25178();
    v161 = sub_1B8B5DD48(v159, v160, v295);

    *(v154 + 4) = v161;
    _os_log_impl(&dword_1B8B22000, v152, v153, "Pre-filling answers %s", v154, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v155);
    MEMORY[0x1B8CCB0E0](v155, -1, -1);
    MEMORY[0x1B8CCB0E0](v154, -1, -1);
  }

  v162 = v291;
  if (v290[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_showsCompletionPage] == 1)
  {
    v163 = *&v290[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session];
    v165 = 1;
    if (v163)
    {
      v164 = *(v163 + 40);
      if (v164)
      {
        if ([v164 isUnauthenticatedUser])
        {
          v165 = 0;
        }
      }
    }
  }

  else
  {
    v165 = 2;
  }

  [v162 setSubmissionStyle_];
  v166 = [objc_opt_self() predicateForAllStubs];
  [v162 setCandidateFormStubsPredicate_];

  [v162 setShouldShowAttachmentButton_];
  v167 = v140;
  v168 = v151;
  v169 = sub_1B8C23C18();
  v170 = sub_1B8C25498();

  v171 = os_log_type_enabled(v169, v170);
  v283 = v168;
  if (v171)
  {
    v172 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    v295[0] = v173;
    *v172 = 136446466;
    v174 = &v167[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v176 = *v174;
    v175 = v174[1];

    v177 = sub_1B8B5DD48(v176, v175, v295);

    *(v172 + 4) = v177;
    *(v172 + 12) = 1026;
    *(v172 + 14) = [v162 shouldShowAttachmentButton];

    _os_log_impl(&dword_1B8B22000, v169, v170, "Form [%{public}s]: shows attachment button: [%{BOOL,public}d]", v172, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v173);
    MEMORY[0x1B8CCB0E0](v173, -1, -1);
    MEMORY[0x1B8CCB0E0](v172, -1, -1);
  }

  else
  {
  }

  v178 = sub_1B8B9029C();
  v179 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__disableAccountSwitching;
  [v162 setDisableAccountSwitching_];
  v180 = v167;
  v181 = sub_1B8C23C18();
  v182 = sub_1B8C25498();
  if (os_log_type_enabled(v181, v182))
  {
    v183 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v295[0] = v184;
    *v183 = 136446466;
    v185 = &v180[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v187 = *v185;
    v186 = v185[1];

    v188 = sub_1B8B5DD48(v187, v186, v295);

    *(v183 + 4) = v188;
    v162 = v291;
    *(v183 + 12) = 1026;
    *(v183 + 14) = v167[v179];

    _os_log_impl(&dword_1B8B22000, v181, v182, "Form [%{public}s]: disables account switching: [%{BOOL,public}d]", v183, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v184);
    MEMORY[0x1B8CCB0E0](v184, -1, -1);
    MEMORY[0x1B8CCB0E0](v183, -1, -1);
  }

  else
  {
  }

  v189 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__alternateImagePreviewEnabled;
  [v162 setAlternateImagePreviewEnabled_];
  v190 = v180;
  v191 = sub_1B8C23C18();
  v192 = sub_1B8C25498();
  if (os_log_type_enabled(v191, v192))
  {
    v193 = swift_slowAlloc();
    v194 = swift_slowAlloc();
    v295[0] = v194;
    *v193 = 136446466;
    v195 = &v190[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v197 = *v195;
    v196 = v195[1];

    v198 = sub_1B8B5DD48(v197, v196, v295);

    *(v193 + 4) = v198;
    v162 = v291;
    *(v193 + 12) = 1026;
    *(v193 + 14) = v180[v189];

    _os_log_impl(&dword_1B8B22000, v191, v192, "Form [%{public}s]: uses alternate image preview: [%{BOOL,public}d]", v193, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v194);
    MEMORY[0x1B8CCB0E0](v194, -1, -1);
    MEMORY[0x1B8CCB0E0](v193, -1, -1);
  }

  else
  {
  }

  v199 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__useInlineChoices;
  [v162 setUseInlineChoices_];
  v200 = v190;
  v201 = sub_1B8C23C18();
  v202 = sub_1B8C25498();
  if (os_log_type_enabled(v201, v202))
  {
    v203 = swift_slowAlloc();
    v204 = swift_slowAlloc();
    v295[0] = v204;
    *v203 = 136446466;
    v205 = &v200[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v207 = *v205;
    v206 = v205[1];

    v208 = sub_1B8B5DD48(v207, v206, v295);

    *(v203 + 4) = v208;
    v162 = v291;
    *(v203 + 12) = 1026;
    *(v203 + 14) = v190[v199];

    _os_log_impl(&dword_1B8B22000, v201, v202, "Form [%{public}s]: uses inline choices: [%{BOOL,public}d]", v203, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v204);
    MEMORY[0x1B8CCB0E0](v204, -1, -1);
    MEMORY[0x1B8CCB0E0](v203, -1, -1);
  }

  else
  {
  }

  v209 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_allowsAttachmentDragAndDrop;
  swift_beginAccess();
  [v162 setAllowsAttachmentDragAndDrop_];
  v210 = v200;
  v211 = sub_1B8C23C18();
  v212 = sub_1B8C25498();
  if (os_log_type_enabled(v211, v212))
  {
    v213 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v295[0] = v214;
    *v213 = 136446466;
    v215 = &v210[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v217 = *v215;
    v216 = v215[1];

    v218 = sub_1B8B5DD48(v217, v216, v295);

    *(v213 + 4) = v218;
    *(v213 + 12) = 1026;
    *(v213 + 14) = v200[v209];

    _os_log_impl(&dword_1B8B22000, v211, v212, "Form [%{public}s]: allowsAttachmentDragAndDrop: [%{BOOL,public}d]", v213, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v214);
    MEMORY[0x1B8CCB0E0](v214, -1, -1);
    MEMORY[0x1B8CCB0E0](v213, -1, -1);
  }

  else
  {
  }

  v220 = v289;
  v219 = v290;
  v221 = v210;
  v222 = &v210[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm__onBoardingKitIdentifier];
  swift_beginAccess();
  v223 = v222[1];
  v224 = v291;
  if (v223)
  {
    v225 = *v222;
    v226 = v222[1];

    v227 = sub_1B8C250F8();
    [v224 setOnBoardingKitIdentifier_];

    v228 = v221;

    v229 = sub_1B8C23C18();
    v230 = sub_1B8C25498();

    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v295[0] = v232;
      *v231 = 136446466;
      v233 = &v228[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
      swift_beginAccess();
      v235 = *v233;
      v234 = v233[1];

      v236 = sub_1B8B5DD48(v235, v234, v295);

      *(v231 + 4) = v236;
      *(v231 + 12) = 2082;
      v237 = sub_1B8B5DD48(v225, v223, v295);

      *(v231 + 14) = v237;
      _os_log_impl(&dword_1B8B22000, v229, v230, "Form [%{public}s]: onBoardingKitIdentifier: [%{public}s]", v231, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CCB0E0](v232, -1, -1);
      v238 = v231;
      v224 = v291;
      MEMORY[0x1B8CCB0E0](v238, -1, -1);
    }

    else
    {
    }

    v220 = v289;
    v219 = v290;
  }

  v239 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  v240 = *&v219[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController];
  *&v219[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController] = v239;
  v241 = v239;

  v242 = [v219 view];
  if (!v242)
  {
LABEL_123:
    __break(1u);
    goto LABEL_127;
  }

  v243 = v242;
  sub_1B8C254C8();

  v244 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
  swift_beginAccess();
  v245 = *(*&v221[v244] + 16);
  v286 = v221;
  if (v245)
  {
LABEL_102:
    if (sub_1B8C1FDD4())
    {
      sub_1B8C23498();
      v260 = sub_1B8C25088();
    }

    else
    {
      v260 = 0;
    }

    [v224 setPendingAttachments_];

    v261 = v284;
    v262 = *&v219[v284];
    if (v262)
    {
      v263 = v262 + OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_appToken;
      swift_beginAccess();
      if (*(v263 + 8))
      {
        v264 = *v263;
        v265 = *(v263 + 8);

        if (MEMORY[0x1B8CCA870](v266))
        {
          v267 = *&v219[v261];
          if (v267 && (v268 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_plugFormIds, swift_beginAccess(), (v269 = *(v267 + v268)) != 0))
          {
            v294 = v264;
            v270 = *(v269 + 16);
            if (v270)
            {
              v282 = v241;
              v295[0] = MEMORY[0x1E69E7CC0];

              sub_1B8C25868();
              v271 = 32;
              do
              {
                [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
                sub_1B8C25848();
                v272 = *(v295[0] + 16);
                sub_1B8C25878();
                sub_1B8C25888();
                sub_1B8C25858();
                v271 += 8;
                --v270;
              }

              while (v270);

              v224 = v291;
              v241 = v282;
            }

            sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);
            v273 = sub_1B8C252B8();

            v219 = v290;
          }

          else
          {
            v273 = 0;
          }

          [v224 setRequestedPlugIns_];

          v274 = sub_1B8C250F8();

          [v224 setAppToken_];
        }

        else
        {
        }
      }
    }

    v275 = [objc_opt_self() sharedInstance];
    v276 = [v275 defaultTeam];

    v277 = swift_allocObject();
    *(v277 + 16) = v219;
    v295[4] = sub_1B8B96284;
    v295[5] = v277;
    v295[0] = MEMORY[0x1E69E9820];
    v295[1] = 1107296256;
    v295[2] = sub_1B8B963EC;
    v295[3] = &block_descriptor_100;
    v278 = _Block_copy(v295);
    v279 = v219;

    v280 = v285;
    [v224 loadNewResponseForBugFormStub:v285 forTeam:v276 completion:v278];
    _Block_release(v278);

    return;
  }

  v282 = v241;
  v246 = sub_1B8C1FD2C();
  v247 = v246;
  v248 = *(v246 + 16);
  if (!v248)
  {
LABEL_101:

    v224 = v291;
    v241 = v282;
    goto LABEL_102;
  }

  v294 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_xpcClient;
  v249 = v246 + ((*(v293 + 80) + 32) & ~*(v293 + 80));
  v287 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_localClient;
  swift_beginAccess();
  v250 = 0;
  v288 = "ew Controller from Storyboard";
  while (v250 < *(v247 + 16))
  {
    sub_1B8B9628C(v249 + *(v293 + 72) * v250, v220);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v258 = Strong;
      sub_1B8BBFD3C();
      v251 = v259;

      if (!v251)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v251 = swift_unknownObjectWeakLoadStrong();
      if (!v251)
      {
        goto LABEL_127;
      }
    }

    v252 = sub_1B8C233E8();
    v253 = *(v220 + *(v292 + 20));
    v254 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v255 = sub_1B8C250F8();
    v256 = [v254 initWithDomain:v255 code:v253 userInfo:0];

    v220 = v289;
    [v251 feedbackDidFailToAttachURL:v252 nsError:v256];
    swift_unknownObjectRelease();

    v219 = v290;
LABEL_96:
    ++v250;
    sub_1B8B962F0(v220);
    if (v248 == v250)
    {
      goto LABEL_101;
    }
  }

  __break(1u);
LABEL_120:
  swift_once();
LABEL_18:
  v43 = sub_1B8C23C38();
  __swift_project_value_buffer(v43, qword_1EBAA7390);
  v294 = sub_1B8C23C18();
  v44 = sub_1B8C25458();
  if (os_log_type_enabled(v294, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1B8B22000, v294, v44, "Not ready to initialize views", v45, 2u);
    MEMORY[0x1B8CCB0E0](v45, -1, -1);
  }

  v46 = v294;
}

uint64_t sub_1B8B8FF6C()
{
  v1 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v0 + v1) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v43 = v10;
  while (v8)
  {
    v16 = v11;
LABEL_11:
    v17 = __clz(__rbit64(v8)) | (v16 << 6);
    v18 = (*(v10 + 48) + 16 * v17);
    v19 = *v18;
    v20 = v18[1];
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = 0x657275746165663ALL;
        v23 = 0xEF6E69616D6F645FLL;
        goto LABEL_26;
      }

      if (v20 != 4)
      {
        if (v20 == 5)
        {
          v21 = 0xD000000000000012;
          v23 = 0x80000001B8C33DC0;
          goto LABEL_26;
        }

LABEL_22:
        v21 = *v18;
        v23 = v18[1];
        goto LABEL_26;
      }

      v21 = 0x6165665F6275733ALL;
      v22 = 1701999988;
    }

    else
    {
      if (!v20)
      {
        v23 = 0xE600000000000000;
        v21 = 0x656C7469743ALL;
        goto LABEL_26;
      }

      if (v20 == 1)
      {
        v23 = 0xE500000000000000;
        v21 = 0x616572613ALL;
        goto LABEL_26;
      }

      if (v20 != 2)
      {
        goto LABEL_22;
      }

      v21 = 0x706972637365643ALL;
      v22 = 1852795252;
    }

    v23 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
LABEL_26:
    v24 = *(*(v10 + 56) + 8 * v17);

    sub_1B8B5FB10(v19, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v21;
    v27 = v21;
    v28 = v23;
    v29 = sub_1B8B5E2DC(v27, v23);
    v31 = v12[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
      goto LABEL_38;
    }

    v35 = v30;
    if (v12[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = v29;
        sub_1B8B94684();
        v29 = v41;
      }

      v36 = v28;
    }

    else
    {
      sub_1B8B93390(v34, isUniquelyReferenced_nonNull_native);
      v36 = v28;
      v29 = sub_1B8B5E2DC(v26, v28);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_40;
      }
    }

    v8 &= v8 - 1;
    if (v35)
    {
      v13 = v29;

      v14 = v12[7];
      v15 = *(v14 + 8 * v13);
      *(v14 + 8 * v13) = v24;
    }

    else
    {
      v12[(v29 >> 6) + 8] |= 1 << v29;
      v38 = (v12[6] + 16 * v29);
      *v38 = v26;
      v38[1] = v36;
      *(v12[7] + 8 * v29) = v24;
      v39 = v12[2];
      v33 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v33)
      {
        goto LABEL_39;
      }

      v12[2] = v40;
    }

    v11 = v16;
    v10 = v43;
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v9)
    {

      return v12;
    }

    v8 = *(v4 + 8 * v16);
    ++v11;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

id sub_1B8B9029C()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentUser];

  if (v1)
  {
    v2 = [v1 isAppleConnectUser];
  }

  else
  {
    if (qword_1EBAA58F8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8C23C38();
    __swift_project_value_buffer(v3, qword_1EBAA7390);
    v1 = sub_1B8C23C18();
    v4 = sub_1B8C25478();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B8B22000, v1, v4, "No user in initializeViewIfNeeded()", v5, 2u);
      MEMORY[0x1B8CCB0E0](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

void sub_1B8B903D8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EBAA58F8 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8C23C38();
    __swift_project_value_buffer(v5, qword_1EBAA7390);
    v6 = a1;
    v7 = sub_1B8C23C18();
    v8 = sub_1B8C25478();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
      v12 = sub_1B8C25178();
      v14 = sub_1B8B5DD48(v12, v13, &v22);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1B8B22000, v7, v8, "Failed to load new response with error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CCB0E0](v10, -1, -1);
      MEMORY[0x1B8CCB0E0](v9, -1, -1);
    }

    v15 = a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply;
    v16 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
    if (v16)
    {
      v17 = *(v15 + 8);
      sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);

      v18 = sub_1B8C255C8();
      v16(v18, v19);

      sub_1B8B30A44(v16);
    }

    else
    {
    }
  }

  else
  {
    v20 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
    if (v20)
    {
      v21 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply + 8);

      v20(0);

      sub_1B8B30A44(v20);
    }
  }
}

void sub_1B8B90638(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id DraftingExtensionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1B8C250F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DraftingExtensionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session] = 0;
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form] = 0;
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub] = 0;
  v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews] = 0;
  v6 = &v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_showsCompletionPage] = 1;
  *&v3[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController] = 0;
  if (a2)
  {
    v7 = sub_1B8C250F8();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for DraftingExtensionViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id DraftingExtensionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DraftingExtensionViewController.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub] = 0;
  v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews] = 0;
  v3 = &v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_showsCompletionPage] = 1;
  *&v1[OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DraftingExtensionViewController();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id DraftingExtensionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DraftingExtensionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B8B90B00(uint64_t a1, char a2)
{
  *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_showsCompletionPage) = a2;
  v2 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController);
  if (!v2)
  {
    return;
  }

  if ((a2 & 1) == 0)
  {
    v6 = v2;
    v5 = 2;
    goto LABEL_12;
  }

  v3 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session);
  if (!v3 || (v4 = *(v3 + 40)) == 0)
  {
    v6 = v2;
LABEL_11:
    v5 = 1;
    goto LABEL_12;
  }

  v7 = v2;
  if (![v4 isUnauthenticatedUser])
  {
    v6 = v7;
    goto LABEL_11;
  }

  v5 = 0;
  v6 = v7;
LABEL_12:
  v8 = v6;
  [v6 setSubmissionStyle_];
}

uint64_t sub_1B8B90C68(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v6 = sub_1B8C24FD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B8C25008();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v15 = sub_1B8C25538();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  aBlock[4] = v21;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = v22;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B9634C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v23);
}

void sub_1B8B90F28(uint64_t a1, char a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController);
  if (v2)
  {
    v6[4] = CGSizeMake;
    v6[5] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1107296256;
    v6[2] = sub_1B8B963EC;
    v6[3] = &block_descriptor_51;
    v4 = _Block_copy(v6);
    v5 = v2;
    [v5 saveDraftWithIsClosing:a2 & 1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_1B8B9106C()
{
  v1 = sub_1B8C24FD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C25008();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v11 = sub_1B8C25538();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1B8B96048;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_42;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B9634C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t DraftingExtensionViewController.setFeedbackForm(_:reply:)(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v5 = sub_1B8C24FD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C25008();
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v13 = sub_1B8C23C38();
  __swift_project_value_buffer(v13, qword_1EBAA7390);
  v14 = a1;
  v15 = sub_1B8C23C18();
  v16 = sub_1B8C25498();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v17 = 136446466;
    *(v17 + 4) = sub_1B8B5DD48(0xD000000000000019, 0x80000001B8C33DA0, aBlock);
    *(v17 + 12) = 2082;
    v38 = a3;
    v18 = &v14[OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_identifier];
    swift_beginAccess();
    v19 = v9;
    v20 = v10;
    v21 = v5;
    v22 = v6;
    v24 = *v18;
    v23 = v18[1];

    v25 = sub_1B8B5DD48(v24, v23, aBlock);
    a3 = v38;

    *(v17 + 14) = v25;
    v6 = v22;
    v5 = v21;
    v10 = v20;
    v9 = v19;
    _os_log_impl(&dword_1B8B22000, v15, v16, "%{public}s with form identifier: [%{public}s]", v17, 0x16u);
    v26 = v37;
    swift_arrayDestroy();
    MEMORY[0x1B8CCB0E0](v26, -1, -1);
    MEMORY[0x1B8CCB0E0](v17, -1, -1);
  }

  sub_1B8B46130(0, &qword_1EBAA69B0, 0x1E69E9610);
  v27 = sub_1B8C25538();
  v28 = swift_allocObject();
  v29 = v39;
  v30 = v40;
  v28[2] = v14;
  v28[3] = v30;
  v28[4] = v29;
  v28[5] = a3;
  aBlock[4] = sub_1B8B92AE8;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8B8B9F4;
  aBlock[3] = &block_descriptor_3;
  v31 = _Block_copy(aBlock);
  v32 = v14;
  v33 = v30;

  v34 = v41;
  sub_1B8C24FF8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8B9634C(&qword_1EBAA69C0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA77D0, &qword_1B8C2B2A0);
  sub_1B8B62264();
  sub_1B8C256D8();
  MEMORY[0x1B8CCA210](0, v34, v9, v31);
  _Block_release(v31);

  (*(v6 + 8))(v9, v5);
  return (*(v42 + 8))(v34, v10);
}

uint64_t sub_1B8B91814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedbackSession();
  swift_allocObject();
  v8 = a1;
  v9 = sub_1B8BB7B2C(v8);
  v10 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session);
  *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session) = v9;

  v11 = (a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  v12 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  v13 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply + 8);
  *v11 = a3;
  v11[1] = a4;

  sub_1B8B30A44(v12);
  sub_1B8BE2648(v8);
  v14 = *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form);
  *(a2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form) = v8;
  v15 = v8;

  sub_1B8B8C698();
}

Swift::Void __swiftcall DraftingExtensionViewController.prepareUIForLogOut()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub);
  *(v0 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_formStub) = 0;

  v2 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController;
  v3 = *(v0 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_feedbackDraftNavigationController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    [v4 removeFromParentViewController];
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 removeFromSuperview];

      *(v0 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_shouldInitializeViews) = 1;
      v7 = *(v0 + v2);
      *(v0 + v2) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void DraftingExtensionViewController.controller(_:didFinishSubmissionWithError:)(void *a1, NSObject *a2)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = a2;
      sub_1B8BBFD3C();
      v8 = v7;

      if (!v8)
      {
        v9 = a2;

        goto LABEL_6;
      }

      goto LABEL_112;
    }

    swift_beginAccess();
    v92 = swift_unknownObjectWeakLoadStrong();
    if (v92)
    {
      v8 = v92;
      v93 = a2;
LABEL_112:
      v94 = sub_1B8C23358();
      v95 = objc_allocWithZone(type metadata accessor for FBKSubmissionError());
      v96 = sub_1B8BCD868(v94);
      [v8 didFailSubmissionWithError_];

      swift_unknownObjectRelease();
      return;
    }

LABEL_142:
    sub_1B8C258A8();
    __break(1u);
    return;
  }

  v10 = *(v2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form);
  if (!v10)
  {
    if (qword_1EBAA58F8 != -1)
    {
      goto LABEL_138;
    }

    goto LABEL_120;
  }

  v12 = v10;
  v13 = [a1 draftingController];
  v14 = sub_1B8B9CA60(v12);

  v15 = [a1 draftingController];
  v16 = sub_1B8B9D1A8(v12);

  v17 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_formResponses;
  swift_beginAccess();
  v18 = *&v12[v17];
  *&v12[v17] = v16;

  v19 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v20 = *&v12[v19];
  oslog = v19;
  *&v12[v19] = MEMORY[0x1E69E7CC8];

  v114 = v14 + 64;
  v21 = 1 << *(v14 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v14 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  v116 = v14;
  v117 = a1;
  v115 = v24;
  do
  {
LABEL_12:
    if (v23)
    {
      goto LABEL_17;
    }

    do
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_134;
      }

      if (v26 >= v24)
      {
        v97 = v12;

        v98 = [a1 draftingController];
        v99 = [v98 formResponse];

        v100 = [v99 contentItem];
        if (v100)
        {
          v101 = [v100 ID];

          if (v101)
          {

            v102 = [v101 stringValue];

            if (!v102)
            {
              sub_1B8C25128();
              v102 = sub_1B8C250F8();
            }

            v103 = [a1 bugForm];
            if (v103)
            {
              v104 = v103;
              v105 = [v103 role];

              v106 = sub_1B8BA92B4(v105);
            }

            else
            {
              v106 = 0;
            }

            v110 = swift_unknownObjectWeakLoadStrong();
            if (v110)
            {
              v111 = v110;
              sub_1B8BBFD3C();
              v113 = v112;

              if (!v113)
              {

                return;
              }

              v12 = v97;
            }

            else
            {
              swift_beginAccess();
              v113 = swift_unknownObjectWeakLoadStrong();
              if (!v113)
              {
                goto LABEL_142;
              }
            }

            [v113 feedbackDidCompleteWithResponseType:v106 responseID:v102 completedForm:v12];

            swift_unknownObjectRelease();
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_141:
        sub_1B8C25A58();
        __break(1u);
        goto LABEL_142;
      }

      v23 = *(v114 + 8 * v26);
      ++v25;
    }

    while (!v23);
    v25 = v26;
LABEL_17:
    v27 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v28 = v27 | (v25 << 6);
    v29 = *(*(v14 + 56) + 8 * v28);
    v129 = *(v29 + 16);
  }

  while (!v129);
  v118 = v25;
  v119 = v23;
  v30 = (*(v14 + 48) + 16 * v28);
  v31 = *v30;
  v32 = v30[1];
  v34 = *v30 == 0x656C7469743ALL && v32 == 0xE600000000000000;
  v128 = v34;
  v36 = v31 == 0x616572613ALL && v32 == 0xE500000000000000;
  v38 = v31 == 0x706972637365643ALL && v32 == 0xEC0000006E6F6974;
  v123 = v38;
  v124 = v36;
  v40 = v31 == 0x657275746165663ALL && v32 == 0xEF6E69616D6F645FLL;
  v42 = v31 == 0x6165665F6275733ALL && v32 == 0xEC00000065727574;
  v121 = v42;
  v122 = v40;
  v44 = v31 == 0xD000000000000012 && 0x80000001B8C33DC0 == v32;
  v120 = v44;

  v45 = 0;
  v46 = (v29 + 40);
  v125 = v31;
  v126 = v32;
  v127 = v29;
  while (v45 < *(v29 + 16))
  {
    v49 = *(v46 - 1);
    v50 = *v46;
    if (v128)
    {
      v31 = 0;
      v51 = 0;
    }

    else
    {
      v52 = sub_1B8C25A08();
      if ((v52 | v124))
      {
        v31 = 0;
        v51 = ~v52 & 1;
      }

      else
      {
        v53 = sub_1B8C25A08();
        if (v53)
        {
          v51 = 1;
        }

        else
        {
          v51 = 2;
        }

        if ((v53 | v123) & 1) != 0 || ((v54 = sub_1B8C25A08(), (v54) ? (v51 = 2) : (v51 = 3), ((v54 | v122) & 1) != 0 || ((v55 = sub_1B8C25A08(), (v55) ? (v51 = 3) : (v51 = 4), ((v55 | v121) & 1) != 0 || ((v56 = sub_1B8C25A08(), (v56) ? (v51 = 4) : (v51 = 5), ((v56 | v120)))))
        {
          v31 = 0;
        }

        else if (sub_1B8C25A08())
        {
          v31 = 0;
          v51 = 5;
        }

        else
        {

          v51 = v32;
        }
      }
    }

    v57 = v12;
    v58 = *(&oslog->isa + v12);
    v59 = *(v58 + 16);

    if (!v59)
    {
      goto LABEL_90;
    }

    v60 = sub_1B8B5E354(v31, v51);
    if ((v61 & 1) == 0)
    {

LABEL_90:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6630, qword_1B8C2BBF0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1B8C2A740;
      *(v62 + 32) = v49;
      *(v62 + 40) = v50;
      v12 = v57;
      swift_beginAccess();
      v77 = *(&oslog->isa + v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = *(&oslog->isa + v57);
      *(&oslog->isa + v57) = 0x8000000000000000;
      v69 = sub_1B8B5E354(v31, v51);
      v80 = *(v68 + 2);
      v81 = (v79 & 1) == 0;
      v73 = __OFADD__(v80, v81);
      v82 = v80 + v81;
      if (v73)
      {
        goto LABEL_133;
      }

      v83 = v79;
      if (*(v68 + 3) < v82)
      {
        sub_1B8B93050(v82, isUniquelyReferenced_nonNull_native);
        v69 = sub_1B8B5E354(v31, v51);
        if ((v83 & 1) != (v84 & 1))
        {
          goto LABEL_141;
        }

LABEL_95:
        if ((v83 & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_55;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_95;
      }

      v90 = v69;
      sub_1B8B94514();
      v69 = v90;
      v12 = v57;
      if ((v83 & 1) == 0)
      {
LABEL_96:
        *(v68 + (v69 >> 6) + 8) |= 1 << v69;
        v85 = (*(v68 + 6) + 16 * v69);
        *v85 = v31;
        v85[1] = v51;
        *(*(v68 + 7) + 8 * v69) = v62;
        v86 = *(v68 + 2);
        v73 = __OFADD__(v86, 1);
        v87 = v86 + 1;
        if (v73)
        {
          goto LABEL_135;
        }

LABEL_102:
        *(v68 + 2) = v87;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

    v62 = *(*(v58 + 56) + 8 * v60);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1B8B5D1AC(0, *(v62 + 16) + 1, 1, v62);
    }

    v64 = *(v62 + 16);
    v63 = *(v62 + 24);
    if (v64 >= v63 >> 1)
    {
      v62 = sub_1B8B5D1AC((v63 > 1), v64 + 1, 1, v62);
    }

    *(v62 + 16) = v64 + 1;
    v65 = v62 + 16 * v64;
    *(v65 + 32) = v49;
    *(v65 + 40) = v50;
    v12 = v57;
    swift_beginAccess();
    v66 = *(&oslog->isa + v57);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *(&oslog->isa + v57);
    *(&oslog->isa + v57) = 0x8000000000000000;
    v69 = sub_1B8B5E354(v31, v51);
    v71 = *(v68 + 2);
    v72 = (v70 & 1) == 0;
    v73 = __OFADD__(v71, v72);
    v74 = v71 + v72;
    if (v73)
    {
      goto LABEL_136;
    }

    v75 = v70;
    if (*(v68 + 3) < v74)
    {
      sub_1B8B93050(v74, v67);
      v69 = sub_1B8B5E354(v31, v51);
      if ((v75 & 1) != (v76 & 1))
      {
        goto LABEL_141;
      }

LABEL_100:
      if ((v75 & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_55;
    }

    if (v67)
    {
      goto LABEL_100;
    }

    v91 = v69;
    sub_1B8B94514();
    v69 = v91;
    v12 = v57;
    if ((v75 & 1) == 0)
    {
LABEL_101:
      *(v68 + (v69 >> 6) + 8) |= 1 << v69;
      v88 = (*(v68 + 6) + 16 * v69);
      *v88 = v31;
      v88[1] = v51;
      *(*(v68 + 7) + 8 * v69) = v62;
      v89 = *(v68 + 2);
      v73 = __OFADD__(v89, 1);
      v87 = v89 + 1;
      if (v73)
      {
        goto LABEL_137;
      }

      goto LABEL_102;
    }

LABEL_55:
    v47 = *(v68 + 7);
    v48 = *(v47 + 8 * v69);
    *(v47 + 8 * v69) = v62;

    sub_1B8B5E4C4(v31, v51);
LABEL_56:
    *(&oslog->isa + v12) = v68;
    swift_endAccess();
    v32 = v126;
    v29 = v127;
    v31 = v125;
    ++v45;
    v46 += 2;
    if (v129 == v45)
    {

      v14 = v116;
      a1 = v117;
      v24 = v115;
      v25 = v118;
      v23 = v119;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  swift_once();
LABEL_120:
  v107 = sub_1B8C23C38();
  __swift_project_value_buffer(v107, qword_1EBAA7390);
  osloga = sub_1B8C23C18();
  v108 = sub_1B8C25488();
  if (os_log_type_enabled(osloga, v108))
  {
    v109 = swift_slowAlloc();
    *v109 = 0;
    _os_log_impl(&dword_1B8B22000, osloga, v108, "Could not report successful feedback submission because FBKFeedbackForm is nil", v109, 2u);
    MEMORY[0x1B8CCB0E0](v109, -1, -1);
  }

  v9 = osloga;

LABEL_6:
}

uint64_t sub_1B8B92A7C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B8B92AF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6628, &unk_1B8C2BCB0);
  v40 = a2;
  result = sub_1B8C258D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1B8C25AB8();
      sub_1B8C251B8();
      result = sub_1B8C25AF8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B8B92DB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6680, &qword_1B8C294B8);
  result = sub_1B8C258D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      sub_1B8C25AB8();
      MEMORY[0x1B8CCA790](v21);
      result = sub_1B8C25AF8();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B8B93050(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
  v34 = a2;
  result = sub_1B8C258D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v18 = v9;
        while (1)
        {
          v9 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_52;
          }

          if (v9 >= v14)
          {
            break;
          }

          v19 = v10[v9];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v13 = (v19 - 1) & v19;
            goto LABEL_17;
          }
        }

        if ((v34 & 1) == 0)
        {

          v3 = v33;
          goto LABEL_50;
        }

        v32 = 1 << *(v5 + 32);
        v3 = v33;
        if (v32 >= 64)
        {
          bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v32;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v35 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v34 & 1) == 0)
      {
        sub_1B8B5FB10(v35, v22);
      }

      v23 = *(v8 + 40);
      sub_1B8C25AB8();
      if (v22 > 2)
      {
        switch(v22)
        {
          case 3:
            v24 = 3;
            break;
          case 4:
            v24 = 4;
            break;
          case 5:
            v24 = 5;
            break;
          default:
LABEL_30:
            MEMORY[0x1B8CCA790](6);
            sub_1B8C251B8();
            goto LABEL_34;
        }
      }

      else if (v22)
      {
        if (v22 == 1)
        {
          v24 = 1;
        }

        else
        {
          if (v22 != 2)
          {
            goto LABEL_30;
          }

          v24 = 2;
        }
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x1B8CCA790](v24);
LABEL_34:
      result = sub_1B8C25AF8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_52:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v35;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }
  }

LABEL_50:
  *v3 = v8;
  return result;
}

uint64_t sub_1B8B93390(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7458, &qword_1B8C2BC48);
  v38 = a2;
  result = sub_1B8C258D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B8C25AB8();
      sub_1B8C251B8();
      result = sub_1B8C25AF8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B8B93638(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1B8C23498();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7498, &qword_1B8C2BCA0);
  v46 = a2;
  result = sub_1B8C258D8();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_1B8C25AB8();
      sub_1B8C251B8();
      result = sub_1B8C25AF8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B8B939B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7468, &qword_1B8C2BC68);
  v42 = a2;
  result = sub_1B8C258D8();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 6);
      if (v42)
      {
        v48 = *(v26 + 8);
        v49 = *v26;
        v45 = *(v26 + 24);
        v46 = *(v26 + 16);
        v44 = *(v26 + 32);
        v43 = *(v26 + 40);
        v27 = *(v26 + 48);
        v47 = *(v26 + 56);
      }

      else
      {
        v28 = *(v26 + 16);
        v29 = *(v26 + 32);
        v30 = *(v26 + 48);
        v50[0] = *v26;
        v50[1] = v28;
        v50[2] = v29;
        v50[3] = v30;
        v49 = *&v50[0];
        v47 = *(&v30 + 1);
        v48 = *(&v50[0] + 1);
        v45 = *(&v28 + 1);
        v46 = v28;
        v44 = v29;
        v43 = *(&v29 + 1);
        v27 = v30;

        sub_1B8B96144(v50, v51);
      }

      v31 = *(v8 + 40);
      sub_1B8C25AB8();
      sub_1B8C251B8();
      result = sub_1B8C25AF8();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v49;
      *(v18 + 8) = v48;
      *(v18 + 16) = v46;
      *(v18 + 24) = v45;
      *(v18 + 32) = v44;
      *(v18 + 40) = v43;
      *(v18 + 48) = v27;
      *(v18 + 56) = v47;
      ++*(v8 + 16);
      v5 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B8B93D0C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1B8C23A08();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7460, &unk_1B8C2BC50);
  v43 = a2;
  result = sub_1B8C258D8();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1B8B9634C(&qword_1EBAA85E0, MEMORY[0x1E699C658]);
      result = sub_1B8C250B8();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_1B8B940E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_1B8B94138(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1B8B94180(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1B8B941C8(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

void *sub_1B8B94220()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6628, &unk_1B8C2BCB0);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8B94398()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6680, &qword_1B8C294B8);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8B94514()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6608, &qword_1B8C2BC60);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 48) + 16 * v17) = v19;
        *(*(v4 + 56) + 8 * v17) = v18;
        sub_1B8B5FB10(v19, *(&v19 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B8B94684()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7458, &qword_1B8C2BC48);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1B8B947F4()
{
  v1 = v0;
  v36 = sub_1B8C23498();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7498, &qword_1B8C2BCA0);
  v4 = *v0;
  v5 = sub_1B8C258C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1B8B94A74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7468, &qword_1B8C2BC68);
  v2 = *v0;
  v3 = sub_1B8C258C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17);
        v23 = *(v19 + v17 + 16);
        v25 = *(v19 + v17 + 48);
        v34 = *(v19 + v17 + 32);
        v35 = v25;
        v32 = v24;
        v33 = v23;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = v35;
        v27[2] = v34;
        v27[3] = v30;
        *v27 = v28;
        v27[1] = v29;

        result = sub_1B8B96144(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1B8B94C14()
{
  v1 = v0;
  v34 = sub_1B8C23A08();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7460, &unk_1B8C2BC50);
  v4 = *v0;
  v5 = sub_1B8C258C8();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void sub_1B8B94E94(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - v6;
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B8C23C38();
  __swift_project_value_buffer(v8, qword_1EBAA7390);
  v9 = a1;
  v10 = sub_1B8C23C18();
  v11 = sub_1B8C25498();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138543362;
    v14 = [v9 ID];
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_1B8B22000, v10, v11, "User did tap switch user from user %{public}@", v12, 0xCu);
    sub_1B8B3433C(v13, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v13, -1, -1);
    MEMORY[0x1B8CCB0E0](v12, -1, -1);
  }

  v15 = *(v2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session);
  if (v15)
  {
    v16 = sub_1B8C253A8();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    v17 = swift_allocObject();
    v17[2] = 0;
    v17[3] = 0;
    v17[4] = v15;

    sub_1B8BE33EC(0, 0, v7, &unk_1B8C2BC78, v17);
  }
}

void sub_1B8B950E8(void *a1, void *a2, void *a3)
{
  v4 = OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session;
  v5 = *(v3 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_session);
  if (v5)
  {
    v8 = *(v5 + 48);
    *(v5 + 48) = a1;

    v10 = a1;

    v11 = *(v3 + v4);
    if (v11)
    {
      v12 = *(v11 + 56);
      *(v11 + 56) = a2;

      v13 = a2;

      v14 = *(v3 + v4);
      if (v14)
      {
        v16 = *(v14 + 64);
        *(v14 + 64) = a3;

        v15 = a3;
      }
    }
  }
}

void sub_1B8B951E0(void *a1)
{
  v74[1] = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA85A0, &qword_1B8C28C20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v69 - v5;
  v7 = sub_1B8C23498();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v69 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v69 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = (v69 - v19);
  v21 = [a1 originalLocalFileURL];
  if (v21)
  {
    v22 = v21;
    sub_1B8C23448();

    (*(v8 + 32))(v20, v18, v7);
    v23 = *(v1 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_form);
    if (v23)
    {
      v24 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_attachments;
      v25 = swift_beginAccess();
      v26 = *(v23 + v24);
      MEMORY[0x1EEE9AC00](v25);
      v69[-2] = v20;

      sub_1B8B8B820(sub_1B8B961A0, v26, v6);

      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        sub_1B8B3433C(v6, &qword_1EBAA85A0, &qword_1B8C28C20);
        if (qword_1EBAA58F8 != -1)
        {
          swift_once();
        }

        v27 = sub_1B8C23C38();
        v28 = __swift_project_value_buffer(v27, qword_1EBAA7390);
        v71 = *(v8 + 16);
        v72 = (v8 + 16);
        v71(v15, v20, v7);
        v29 = sub_1B8C23C18();
        v30 = sub_1B8C25498();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v69[1] = v28;
          v32 = v31;
          v69[0] = swift_slowAlloc();
          v74[0] = v69[0];
          *v32 = 136446210;
          sub_1B8B9634C(&qword_1EBAA63C0, MEMORY[0x1E6968FB0]);
          v33 = sub_1B8C259E8();
          v70 = v12;
          v35 = v34;
          v36 = *(v8 + 8);
          v36(v15, v7);
          v37 = sub_1B8B5DD48(v33, v35, v74);
          v12 = v70;

          *(v32 + 4) = v37;
          _os_log_impl(&dword_1B8B22000, v29, v30, "Deleting attached file from temp directory %{public}s", v32, 0xCu);
          v38 = v69[0];
          __swift_destroy_boxed_opaque_existential_0(v69[0]);
          MEMORY[0x1B8CCB0E0](v38, -1, -1);
          MEMORY[0x1B8CCB0E0](v32, -1, -1);
        }

        else
        {

          v36 = *(v8 + 8);
          v36(v15, v7);
        }

        v48 = [objc_opt_self() defaultManager];
        v49 = sub_1B8C233E8();
        v74[0] = 0;
        v50 = [v48 removeItemAtURL:v49 error:v74];

        if (v50)
        {
          v51 = v74[0];
        }

        else
        {
          v52 = v74[0];
          v53 = sub_1B8C23368();

          swift_willThrow();
          v71(v12, v20, v7);
          v54 = v53;
          v55 = sub_1B8C23C18();
          v56 = sub_1B8C25478();

          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v72 = v36;
            v58 = v57;
            v71 = swift_slowAlloc();
            v74[0] = v71;
            *v58 = 136446466;
            sub_1B8B9634C(&qword_1EBAA63C0, MEMORY[0x1E6968FB0]);
            v59 = sub_1B8C259E8();
            v61 = v60;
            v72(v12, v7);
            v62 = sub_1B8B5DD48(v59, v61, v74);

            *(v58 + 4) = v62;
            *(v58 + 12) = 2080;
            v73 = v53;
            v63 = v53;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
            v64 = sub_1B8C25178();
            v66 = sub_1B8B5DD48(v64, v65, v74);

            *(v58 + 14) = v66;
            _os_log_impl(&dword_1B8B22000, v55, v56, "Failed to delete file %{public}s error %s", v58, 0x16u);
            v67 = v71;
            swift_arrayDestroy();
            MEMORY[0x1B8CCB0E0](v67, -1, -1);
            v68 = v58;
            v36 = v72;
            MEMORY[0x1B8CCB0E0](v68, -1, -1);
          }

          else
          {

            v36(v12, v7);
          }
        }

        v36(v20, v7);
        goto LABEL_15;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_1B8B3433C(v6, &qword_1EBAA85A0, &qword_1B8C28C20);
    (*(v8 + 8))(v20, v7);
  }

  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v39 = sub_1B8C23C38();
  __swift_project_value_buffer(v39, qword_1EBAA7390);
  v40 = a1;
  v41 = sub_1B8C23C18();
  v42 = sub_1B8C25478();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v74[0] = v45;
    *v43 = 136315394;
    *(v43 + 4) = sub_1B8B5DD48(0xD000000000000021, 0x80000001B8C343A0, v74);
    *(v43 + 12) = 2112;
    *(v43 + 14) = v40;
    *v44 = v40;
    v46 = v40;
    _os_log_impl(&dword_1B8B22000, v41, v42, "%s encountered attachment that it cannot not delete %@", v43, 0x16u);
    sub_1B8B3433C(v44, &qword_1EBAA69A0, &qword_1B8C29670);
    MEMORY[0x1B8CCB0E0](v44, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x1B8CCB0E0](v45, -1, -1);
    MEMORY[0x1B8CCB0E0](v43, -1, -1);
  }

LABEL_15:
  v47 = *MEMORY[0x1E69E9840];
}

void _s8Feedback31DraftingExtensionViewControllerC31controllerWillResignFirstActiveyySo015FBKBugFormTabledE0CF_0()
{
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1B8C23C38();
  __swift_project_value_buffer(v0, qword_1EBAA7390);
  oslog = sub_1B8C23C18();
  v1 = sub_1B8C25498();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1B8B22000, oslog, v1, "Will resign first active", v2, 2u);
    MEMORY[0x1B8CCB0E0](v2, -1, -1);
  }
}

void sub_1B8B95BA4(void *a1)
{
  v2 = v1;
  if (qword_1EBAA58F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1B8C23C38();
  __swift_project_value_buffer(v4, qword_1EBAA7390);
  v5 = a1;
  v6 = sub_1B8C23C18();
  v7 = sub_1B8C25478();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA72B0, &unk_1B8C2A9F0);
    v11 = sub_1B8C25178();
    v13 = sub_1B8B5DD48(v11, v12, &v19);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B8B22000, v6, v7, "Failed to load new response with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CCB0E0](v9, -1, -1);
    MEMORY[0x1B8CCB0E0](v8, -1, -1);
  }

  v14 = v2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply;
  v15 = *(v2 + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_setFeedbackFormReply);
  if (v15)
  {
    v16 = *(v14 + 8);
    sub_1B8B46130(0, &qword_1EBAA88A0, 0x1E696AD98);

    v17 = sub_1B8C255C8();
    v15(v17, v18);
    sub_1B8B30A44(v15);
  }
}

void sub_1B8B95D88(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      sub_1B8C258A8();
      __break(1u);
      return;
    }

LABEL_5:
    [v5 didRequestViewDismissalWithSaved_];
    swift_unknownObjectRelease();
    return;
  }

  v3 = Strong;
  sub_1B8BBFD3C();
  v5 = v4;

  if (v5)
  {
    goto LABEL_5;
  }
}

void _s8Feedback31DraftingExtensionViewControllerC30controllerDidRequestFullScreen4withySo015FBKBugFormTabledE0C_tF_0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (!v3)
    {
      sub_1B8C258A8();
      __break(1u);
      return;
    }

LABEL_5:
    [v3 didRequestViewFullScreen];
    swift_unknownObjectRelease();
    return;
  }

  v1 = Strong;
  sub_1B8BBFD3C();
  v3 = v2;

  if (v3)
  {
    goto LABEL_5;
  }
}

id sub_1B8B96048()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8Feedback31DraftingExtensionViewController_bugFormTableViewController);
  if (result)
  {
    return [result closeDraftAndDelete:1 completion:0];
  }

  return result;
}

void sub_1B8B96138(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_1B8B961D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B8B5115C;

  return sub_1B8BB9888(a1, v4, v5, v6);
}

uint64_t sub_1B8B9628C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B962F0(uint64_t a1)
{
  v2 = type metadata accessor for URLError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8B9634C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FBKInlineThumbsUp.feedbackController.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v3, v1);
  return v3[0];
}

uint64_t FBKInlineThumbsUp.feedbackController.setter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  return sub_1B8C24E48();
}

void (*FBKInlineThumbsUp.feedbackController.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v8 = v7;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B833D4;
}

uint64_t FBKInlineThumbsUp.$feedbackController.getter()
{
  v3 = *v0;
  v4 = *(v0 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  return v2;
}

uint64_t type metadata accessor for FBKInlineThumbsUp()
{
  result = qword_1EBAA74A8;
  if (!qword_1EBAA74A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8B96618()
{
  v0 = *(type metadata accessor for FBKInlineThumbsUp() + 20);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return MEMORY[0x1B8CC9B00](v1);
}

uint64_t sub_1B8B96670(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2);
  LODWORD(a1) = *(type metadata accessor for FBKInlineThumbsUp() + 20);
  v10(v7, v9, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(v9, v2);
}

uint64_t FBKInlineThumbsUp.subject.setter(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for FBKInlineThumbsUp() + 20);
  (*(v3 + 16))(v6, a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  sub_1B8C24E48();
  return (*(v3 + 8))(a1, v2);
}

void (*FBKInlineThumbsUp.subject.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1B8C23738();
  *v5 = v6;
  v7 = *(v6 - 8);
  v5[1] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5[4] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(*(v10 - 8) + 64));
  }

  v12 = v11;
  v5[5] = v11;
  v13 = type metadata accessor for FBKInlineThumbsUp();
  sub_1B8B83A68(v1 + *(v13 + 20), v12);
  MEMORY[0x1B8CC9B00](v10);
  return sub_1B8B83990;
}

uint64_t sub_1B8B96A68(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FBKInlineThumbsUp() + 20);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  return a1(v3);
}

uint64_t FBKInlineThumbsUp.disabled.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsUp() + 24));
  v2 = *v1;
  v3 = v1[1];
  LOBYTE(v1) = *(v1 + 16);
  v7 = v2;
  v8 = v3;
  v9 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00](&v6, v4);
  return v6;
}

void *sub_1B8B96B2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineThumbsUp() + 24));
  v4 = *v3;
  v5 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  result = MEMORY[0x1B8CC9B00](&v8, v6);
  *a2 = v8;
  return result;
}

uint64_t sub_1B8B96BA8(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for FBKInlineThumbsUp() + 24));
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

uint64_t FBKInlineThumbsUp.disabled.setter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsUp() + 24));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  return sub_1B8C24E48();
}

void (*FBKInlineThumbsUp.disabled.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for FBKInlineThumbsUp() + 24));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00]();
  return sub_1B8B83E40;
}

uint64_t FBKInlineThumbsUp.$disabled.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsUp() + 24));
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  return v3;
}

uint64_t sub_1B8B96DBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for FBKInlineThumbsUp() + 28));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B8B84788;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_1B8B247D4(v4);
}

uint64_t sub_1B8B96E50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8B84780;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for FBKInlineThumbsUp() + 28));
  v8 = *v7;
  v9 = v7[1];
  sub_1B8B247D4(v3);
  result = sub_1B8B30A44(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t FBKInlineThumbsUp.onFormComplete.getter()
{
  v1 = (v0 + *(type metadata accessor for FBKInlineThumbsUp() + 28));
  v2 = *v1;
  v3 = v1[1];
  sub_1B8B247D4(*v1);
  return v2;
}

uint64_t FBKInlineThumbsUp.onFormComplete.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FBKInlineThumbsUp() + 28));
  v6 = v5[1];
  result = sub_1B8B30A44(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FBKInlineThumbsUp.init(feedbackController:subject:disabled:onFormComplete:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v17 = type metadata accessor for FBKInlineThumbsUp();
  v18 = (a9 + v17[7]);
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  result = sub_1B8B841EC(a4, a9 + v17[5]);
  v20 = a9 + v17[6];
  *v20 = a5;
  *(v20 + 1) = a6;
  v20[16] = a7;
  *v18 = a8;
  v18[1] = a10;
  return result;
}

double FBKInlineThumbsUp.body.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - v6;
  v8 = sub_1B8C236E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E699C1F0], v8);
  v13 = type metadata accessor for FBKInlineThumbsUp();
  v14 = v1 + v13[5];
  sub_1B8C24E68();
  v15 = (v2 + v13[7]);
  v16 = *v15;
  v34 = v15[1];
  v35 = v16;
  *&v40[0] = *v2;
  *(v40 + 8) = *(v2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  sub_1B8C24E68();
  v37 = v38;
  v36 = v39;
  v17 = (v2 + v13[6]);
  v18 = *v17;
  v19 = v17[1];
  LOBYTE(v17) = *(v17 + 16);
  *&v40[0] = v18;
  *(&v40[0] + 1) = v19;
  LOBYTE(v40[1]) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  sub_1B8C24E68();
  v32 = v39;
  v33 = v38;
  v31 = BYTE8(v39);
  v20 = type metadata accessor for FBKInlineViewButton();
  v21 = v20[6];
  v30 = v20[7];
  v22 = (a1 + v21);
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA71A0, &qword_1B8C2C220);
  sub_1B8C24D58();
  v23 = *&v40[0];
  (*(v9 + 16))(a1, v12, v8);
  sub_1B8B83A68(v7, a1 + v20[5]);
  v25 = v34;
  v24 = v35;
  *v22 = v35;
  v22[1] = v25;
  v38 = 0;
  sub_1B8B247D4(v24);
  sub_1B8C24D58();
  sub_1B8B83AD8(v7);
  (*(v9 + 8))(v12, v8);

  *(a1 + v30) = v40[0];
  v26 = a1 + v20[8];
  *v26 = v37;
  result = *&v36;
  *(v26 + 8) = v36;
  v28 = a1 + v20[9];
  v29 = v32;
  *v28 = v33;
  *(v28 + 8) = v29;
  *(v28 + 16) = v31;
  return result;
}

uint64_t sub_1B8B973C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1B8B9741C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B8B97498@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA5CD0, &qword_1B8C278C8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v21 - v4;
  v21[2] = sub_1B8C23538();
  v21[3] = v6;
  sub_1B8B34CA8();
  v7 = sub_1B8C249E8();
  v9 = v8;
  v11 = v10;
  v12 = sub_1B8C248C8();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_1B8C24908();
  sub_1B8B3433C(v5, &qword_1EBAA5CD0, &qword_1B8C278C8);
  sub_1B8C24888();

  v13 = sub_1B8C249B8();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1B8B34060(v7, v9, v11 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_1B8B97638@<X0>(uint64_t a1@<X8>)
{
  sub_1B8B34CA8();

  v20 = sub_1B8C249E8();
  v21 = v2;
  v4 = v3;
  v19 = v5;

  v6 = sub_1B8C249E8();
  v8 = v7;
  v10 = v9;
  v11 = sub_1B8C24988();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1B8B34060(v6, v8, v10 & 1);

  *a1 = v20;
  *(a1 + 8) = v4;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v17;
  sub_1B8B34694(v20, v4, v19 & 1);

  sub_1B8B34694(v11, v13, v15 & 1);

  sub_1B8B34060(v11, v13, v15 & 1);

  sub_1B8B34060(v20, v4, v19 & 1);
}

double sub_1B8B977D4@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_1B8C242E8();
  v19 = 1;
  sub_1B8B97638(&v13);
  v22 = v15;
  v23 = v16;
  v20 = v13;
  v21 = v14;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[1] = v14;
  v24 = v17;
  v25[0] = v13;
  sub_1B8B34450(&v20, &v12, &qword_1EBAA7630, &qword_1B8C2C190);
  sub_1B8B3433C(v25, &qword_1EBAA7630, &qword_1B8C2C190);
  *&v18[7] = v20;
  *&v18[71] = v24;
  *&v18[55] = v23;
  *&v18[39] = v22;
  *&v18[23] = v21;
  v8 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v8;
  *(a1 + 81) = *&v18[64];
  result = *v18;
  v10 = *&v18[16];
  *(a1 + 17) = *v18;
  v11 = v19;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 96) = *&v18[79];
  *(a1 + 33) = v10;
  return result;
}

uint64_t sub_1B8B978F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v47) = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7648, &qword_1B8C2C1A8);
  v7 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v53 = (&v44 - v8);
  v9 = sub_1B8C24678();
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6540, &qword_1B8C2C1B0);
  v45 = *(v13 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7650, &qword_1B8C2C1B8);
  v17 = *(v52 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7658, &qword_1B8C2C1C0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v48 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v44 - v25;
  v54 = a1;
  v55 = a2;
  sub_1B8B34CA8();

  v27 = sub_1B8C249E8();
  v51 = v28;
  v49 = v29;
  v31 = v30;
  if (v47)
  {
    sub_1B8C23DE8();
    sub_1B8C24668();
    v32 = sub_1B8B34CFC(&qword_1EBAA7660, &qword_1EBAA6540, &qword_1B8C2C1B0);
    v47 = v31;
    v33 = v32;
    v34 = sub_1B8B9B378(&qword_1EBAA7668, MEMORY[0x1E697C9C8]);
    v44 = v27;
    v35 = v34;
    sub_1B8C24A28();
    (*(v46 + 8))(v12, v9);
    (*(v45 + 8))(v16, v13);
    v36 = v52;
    (*(v17 + 16))(v53, v20, v52);
    swift_storeEnumTagMultiPayload();
    v54 = v13;
    v55 = v9;
    v56 = v33;
    v57 = v35;
    v31 = v47;
    v27 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1B8C24598();
    (*(v17 + 8))(v20, v36);
  }

  else
  {
    *v53 = sub_1B8C24D08();
    swift_storeEnumTagMultiPayload();
    v37 = sub_1B8B34CFC(&qword_1EBAA7660, &qword_1EBAA6540, &qword_1B8C2C1B0);
    v38 = sub_1B8B9B378(&qword_1EBAA7668, MEMORY[0x1E697C9C8]);
    v54 = v13;
    v55 = v9;
    v56 = v37;
    v57 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1B8C24598();
  }

  v39 = v48;
  sub_1B8B2988C(v26, v48);
  v40 = v51;
  *a4 = v27;
  *(a4 + 8) = v40;
  v41 = v49 & 1;
  *(a4 + 16) = v49 & 1;
  *(a4 + 24) = v31;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7670, &qword_1B8C2C1C8);
  sub_1B8B2988C(v39, a4 + *(v42 + 64));
  sub_1B8B34694(v27, v40, v41);

  sub_1B8B298FC(v26);
  sub_1B8B298FC(v39);
  sub_1B8B34060(v27, v40, v41);
}

uint64_t sub_1B8B97EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_1B8C242E8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7638, &qword_1B8C2C198) + 44);
  *v6 = sub_1B8C242E8();
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7640, &qword_1B8C2C1A0);
  return sub_1B8B978F4(v3, v4, v5, v6 + *(v7 + 44));
}

uint64_t sub_1B8B97F60@<X0>(char *a1@<X8>)
{
  v66 = a1;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7530, &qword_1B8C2BED8);
  v76 = *(v65 - 8);
  v1 = v76[8];
  v2 = MEMORY[0x1EEE9AC00](v65);
  v64 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7538, &qword_1B8C2BEE0);
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v77 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v60 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v67 = &v60 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7540, &qword_1B8C2BEE8);
  v70 = *(v16 - 8);
  v71 = v16;
  v17 = v70[8];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v69 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v68 = &v60 - v20;
  sub_1B8C243A8();
  v82 = sub_1B8C249C8();
  v83 = v21;
  v84 = v22 & 1;
  v85 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7548, &qword_1B8C2BEF0);
  sub_1B8B34CFC(&qword_1EBAA7550, &qword_1EBAA7548, &qword_1B8C2BEF0);
  sub_1B8C24ED8();
  sub_1B8C243A8();
  v82 = sub_1B8C249C8();
  v83 = v24;
  v84 = v25 & 1;
  v85 = v26;
  sub_1B8C243A8();
  v78 = sub_1B8C249C8();
  v79 = v27;
  v80 = v28 & 1;
  v81 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7558, &qword_1B8C2BEF8);
  sub_1B8B9AEA4(&qword_1EBAA7560, &qword_1EBAA7558, &qword_1B8C2BEF8, sub_1B8B9ADE4);
  v63 = v15;
  sub_1B8C24EE8();
  sub_1B8C243A8();
  v82 = sub_1B8C249C8();
  v83 = v30;
  v84 = v31 & 1;
  v85 = v32;
  sub_1B8C243A8();
  v78 = sub_1B8C249C8();
  v79 = v33;
  v80 = v34 & 1;
  v81 = v35;
  sub_1B8C24EE8();
  sub_1B8C243A8();
  v82 = sub_1B8C249C8();
  v83 = v36;
  v84 = v37 & 1;
  v85 = v38;
  sub_1B8C243A8();
  v78 = sub_1B8C249C8();
  v79 = v39;
  v80 = v40 & 1;
  v81 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7588, &qword_1B8C2BF10);
  sub_1B8B9AEA4(&qword_1EBAA7590, &qword_1EBAA7588, &qword_1B8C2BF10, sub_1B8B9AF28);
  v42 = v73;
  sub_1B8C24EE8();
  v61 = v70[2];
  v43 = v69;
  v44 = v71;
  v61(v69, v68, v71);
  v45 = *(v75 + 16);
  v46 = v72;
  v47 = v15;
  v48 = v74;
  v45(v72, v47, v74);
  v45(v77, v67, v48);
  v62 = v76[2];
  v49 = v64;
  v50 = v42;
  v51 = v65;
  v62(v64, v50, v65);
  v52 = v66;
  v61(v66, v43, v44);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75B0, &qword_1B8C2BF20);
  v54 = v74;
  v45(&v52[v53[12]], v46, v74);
  v45(&v52[v53[16]], v77, v54);
  v62(&v52[v53[20]], v49, v51);
  v55 = v76[1];
  v55(v73, v51);
  v56 = *(v75 + 8);
  v56(v67, v54);
  v56(v63, v54);
  v57 = v71;
  v58 = v70[1];
  v58(v68, v71);
  v55(v49, v51);
  v56(v77, v54);
  v56(v72, v54);
  return (v58)(v69, v57);
}

uint64_t sub_1B8B9884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1B8B9B378(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  v18 = *(a1 + 64);
  swift_getKeyPath();
  sub_1B8C23588();

  v22 = *(*(a1 + 32) + 16);
  v16 = sub_1B8C259E8();
  v19 = v4;
  swift_getKeyPath();
  sub_1B8C23588();

  swift_beginAccess();
  v21 = *(*(a1 + 24) + 16);
  v15 = sub_1B8C259E8();
  v17 = v5;
  swift_getKeyPath();
  sub_1B8C23588();

  swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v13 = *(a1 + 16);
    }

    sub_1B8C258B8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = sub_1B8C259E8();
  v9 = v8;
  swift_getKeyPath();
  sub_1B8C23588();

  v20 = *(a1 + 56);
  v10 = sub_1B8C259E8();
  *a2 = 0x676E69636E7953;
  *(a2 + 8) = 0xE700000000000000;
  *(a2 + 16) = v18;
  *(a2 + 24) = 0xD000000000000016;
  *(a2 + 32) = 0x80000001B8C345D0;
  *(a2 + 40) = v16;
  *(a2 + 48) = v19;
  strcpy((a2 + 56), "Interactions");
  *(a2 + 69) = 0;
  *(a2 + 70) = -5120;
  *(a2 + 72) = v15;
  *(a2 + 80) = v17;
  *(a2 + 88) = 0xD000000000000015;
  *(a2 + 96) = 0x80000001B8C34700;
  *(a2 + 104) = v14;
  *(a2 + 112) = v9;
  *(a2 + 120) = 0xD000000000000016;
  *(a2 + 128) = 0x80000001B8C347B0;
  *(a2 + 136) = v10;
  *(a2 + 144) = v11;
}

uint64_t sub_1B8B98BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7570, &qword_1B8C2BF00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75D8, &qword_1B8C2BF60);
  v9 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - v10;
  swift_getKeyPath();
  v18 = a1;
  sub_1B8B9B378(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  if (*(*(a1 + 32) + 16))
  {
    swift_getKeyPath();
    v18 = a1;
    sub_1B8C23588();

    v18 = *(a1 + 32);

    v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75E0, &unk_1B8C2BF90);
    sub_1B8C23568();
    v16[2] = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7580, &qword_1B8C2BF08);
    sub_1B8B34CFC(&qword_1EBAA75E8, &qword_1EBAA75E0, &unk_1B8C2BF90);
    sub_1B8B34CFC(&qword_1EBAA7578, &qword_1EBAA7580, &qword_1B8C2BF08);
    sub_1B8B9B378(&qword_1EBAA75F0, type metadata accessor for BatchInteraction);
    sub_1B8C24EC8();
    (*(v5 + 16))(v11, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_1B8B9ADE4();
    sub_1B8C24598();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_1B8C243A8();
    *v11 = sub_1B8C249C8();
    *(v11 + 1) = v13;
    v11[16] = v14 & 1;
    *(v11 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_1B8B9ADE4();
    return sub_1B8C24598();
  }
}

uint64_t sub_1B8B98FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7570, &qword_1B8C2BF00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75D8, &qword_1B8C2BF60);
  v9 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - v10;
  swift_getKeyPath();
  v19 = a1;
  sub_1B8B9B378(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {
    swift_getKeyPath();
    v18 = a1;
    sub_1B8C23588();

    v18 = *(a1 + 24);

    v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75E0, &unk_1B8C2BF90);
    sub_1B8C23568();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7580, &qword_1B8C2BF08);
    v16[1] = a2;
    sub_1B8B34CFC(&qword_1EBAA75E8, &qword_1EBAA75E0, &unk_1B8C2BF90);
    sub_1B8B34CFC(&qword_1EBAA7578, &qword_1EBAA7580, &qword_1B8C2BF08);
    sub_1B8B9B378(&qword_1EBAA75F0, type metadata accessor for BatchInteraction);
    sub_1B8C24EC8();
    (*(v5 + 16))(v11, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_1B8B9ADE4();
    sub_1B8C24598();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_1B8C243A8();
    *v11 = sub_1B8C249C8();
    *(v11 + 1) = v13;
    v11[16] = v14 & 1;
    *(v11 + 3) = v15;
    swift_storeEnumTagMultiPayload();
    sub_1B8B9ADE4();
    return sub_1B8C24598();
  }
}

uint64_t sub_1B8B993DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6590, &qword_1B8C2EFD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75F8, &qword_1B8C2BFA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8];
  v19 = a1;
  sub_1B8B548DC(a1, &v18[-v8]);
  v10 = type metadata accessor for EvaluationCard();
  v9[v10[5]] = 1;
  v11 = &v9[v10[6]];
  type metadata accessor for BatchController();
  sub_1B8B9B378(&qword_1EBAA5AD0, type metadata accessor for BatchController);
  *v11 = sub_1B8C23DA8();
  v11[8] = v12 & 1;
  v13 = &v9[v10[7]];
  v14 = sub_1B8C23738();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = objc_allocWithZone(type metadata accessor for FBKEvaluationController(0));
  v20 = FBKEvaluationController.init(subject:)(v5);
  sub_1B8C24D58();
  v16 = v22;
  *v13 = v21;
  v13[1] = v16;
  v9[*(v6 + 36)] = 0;
  _s8Feedback3RowVMa_0();
  sub_1B8B9B378(&qword_1EBAA75A8, _s8Feedback3RowVMa_0);
  sub_1B8B9B028();
  return sub_1B8C23F58();
}

uint64_t sub_1B8B99648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75A0, &qword_1B8C2BF18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75B8, &qword_1B8C2BF28);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - v10;
  swift_getKeyPath();
  v20 = a1;
  sub_1B8B9B378(&qword_1EBAA5F00, type metadata accessor for DonationController);
  sub_1B8C23588();

  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v14 = *(a1 + 16);
    }

    if (sub_1B8C258B8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_getKeyPath();
    v19 = a1;
    sub_1B8C23588();

    v19 = *(a1 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA75C0, &qword_1B8C2BF58);
    sub_1B8C23568();
    _s8Feedback3RowVMa_0();
    sub_1B8B34CFC(&qword_1EBAA75C8, &qword_1EBAA75C0, &qword_1B8C2BF58);
    sub_1B8B9B378(&qword_1EBAA75A8, _s8Feedback3RowVMa_0);
    sub_1B8B9B378(&qword_1EBAA75D0, type metadata accessor for NullableBatchInteraction);
    sub_1B8C24EC8();
    (*(v4 + 16))(v11, v7, v3);
    swift_storeEnumTagMultiPayload();
    sub_1B8B9AF28();
    sub_1B8C24598();
    return (*(v4 + 8))(v7, v3);
  }

  sub_1B8C243A8();
  *v11 = sub_1B8C249C8();
  *(v11 + 1) = v15;
  v11[16] = v16 & 1;
  *(v11 + 3) = v17;
  swift_storeEnumTagMultiPayload();
  sub_1B8B9AF28();
  return sub_1B8C24598();
}

uint64_t sub_1B8B99A54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Feedback24NullableBatchInteraction_id;
  v5 = sub_1B8C23568();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1B8B99AD4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7520, &qword_1B8C2BED0);
  sub_1B8B34CFC(&qword_1EBAA7528, &qword_1EBAA7520, &qword_1B8C2BED0);

  return sub_1B8C24968();
}

uint64_t sub_1B8B99B84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C24468();
  v9 = 1;
  sub_1B8B99F14(a1, a2, __dst);
  v22 = *&__dst[160];
  v23 = *&__dst[176];
  v24[0] = *&__dst[192];
  *(v24 + 10) = *&__dst[202];
  v18 = *&__dst[96];
  v19 = *&__dst[112];
  v20 = *&__dst[128];
  v21 = *&__dst[144];
  v14 = *&__dst[32];
  v15 = *&__dst[48];
  v16 = *&__dst[64];
  v17 = *&__dst[80];
  v12 = *__dst;
  v13 = *&__dst[16];
  v25[10] = *&__dst[160];
  v25[11] = *&__dst[176];
  v26[0] = *&__dst[192];
  *(v26 + 10) = *&__dst[202];
  v25[6] = *&__dst[96];
  v25[7] = *&__dst[112];
  v25[8] = *&__dst[128];
  v25[9] = *&__dst[144];
  v25[2] = *&__dst[32];
  v25[3] = *&__dst[48];
  v25[4] = *&__dst[64];
  v25[5] = *&__dst[80];
  v25[0] = *__dst;
  v25[1] = *&__dst[16];
  sub_1B8B34450(&v12, __src, &qword_1EBAA74E0, &qword_1B8C2BE08);
  sub_1B8B3433C(v25, &qword_1EBAA74E0, &qword_1B8C2BE08);
  *&v8[167] = v22;
  *&v8[183] = v23;
  *&v8[199] = v24[0];
  *&v8[209] = *(v24 + 10);
  *&v8[103] = v18;
  *&v8[119] = v19;
  *&v8[135] = v20;
  *&v8[151] = v21;
  *&v8[39] = v14;
  *&v8[55] = v15;
  *&v8[71] = v16;
  *&v8[87] = v17;
  *&v8[7] = v12;
  *&v8[23] = v13;
  LOBYTE(a2) = v9;
  sub_1B8C24F48();
  sub_1B8C24088();
  *&v10[27] = *&v10[83];
  *&v10[35] = *&v10[91];
  *&v10[43] = *&v10[99];
  *&v10[51] = v11;
  *&v10[3] = *&v10[59];
  *&v10[11] = *&v10[67];
  *&v10[19] = *&v10[75];
  *(&__src[24] + 1) = *&v8[176];
  *(&__src[26] + 1) = *&v8[192];
  *(&__src[28] + 1) = *&v8[208];
  *(&__src[16] + 1) = *&v8[112];
  *(&__src[18] + 1) = *&v8[128];
  *(&__src[20] + 1) = *&v8[144];
  *(&__src[22] + 1) = *&v8[160];
  *(&__src[8] + 1) = *&v8[48];
  *(&__src[10] + 1) = *&v8[64];
  *(&__src[12] + 1) = *&v8[80];
  *(&__src[14] + 1) = *&v8[96];
  *(&__src[2] + 1) = *v8;
  *(&__src[4] + 1) = *&v8[16];
  *(&__src[6] + 1) = *&v8[32];
  *(&__src[40] + 2) = *&v10[40];
  *(&__src[42] + 2) = *&v10[48];
  *(&__src[32] + 2) = *&v10[8];
  *(&__src[34] + 2) = *&v10[16];
  *(&__src[36] + 2) = *&v10[24];
  *(&__src[38] + 2) = *&v10[32];
  __src[0] = v4;
  __src[1] = 0;
  LOBYTE(__src[2]) = a2;
  BYTE1(__src[30]) = v8[224];
  __src[44] = *(&v11 + 1);
  *(&__src[30] + 2) = *v10;
  sub_1B8C243A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74C0, &qword_1B8C2BDF8);
  sub_1B8B9AB9C();
  sub_1B8C24AD8();

  memcpy(__dst, __src, sizeof(__dst));
  return sub_1B8B3433C(__dst, &qword_1EBAA74C0, &qword_1B8C2BDF8);
}

double sub_1B8B99F14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v54 = a1;
  *(&v54 + 1) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74E8, &unk_1B8C2BE10);
  sub_1B8C24D68();
  if (*v52)
  {
    sub_1B8B9ACBC(v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74F8, &unk_1B8C2BE28);
    sub_1B8B9AC68();
    sub_1B8B34CFC(&qword_1EBAA7508, &qword_1EBAA74F8, &unk_1B8C2BE28);
    sub_1B8C24598();
  }

  else
  {
    sub_1B8C243A8();
    v6 = sub_1B8C249C8();
    LOBYTE(v18) = v7 & 1;
    *&v37 = v6;
    *(&v37 + 1) = v8;
    LOBYTE(v38) = v7 & 1;
    *(&v38 + 1) = v54;
    DWORD1(v38) = *(&v54 + 3);
    *(&v38 + 1) = v9;
    v39[0] = sub_1B8C24808();
    memset(&v39[1], 0, 39);
    v39[40] = 1;
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;

    LOBYTE(v54) = 1;
    *&v40 = 0x6574616C756D6953;
    *(&v40 + 1) = 0xE800000000000000;
    LOBYTE(v41) = 0;
    *(&v41 + 1) = sub_1B8B9AC54;
    *&v42 = v10;
    BYTE8(v42) = 0;
    v43[0] = sub_1B8C24808();
    memset(&v43[8], 0, 32);
    v43[40] = 1;
    v35 = *v39;
    *v36 = *&v39[16];
    *&v36[9] = *&v39[25];
    v33 = v37;
    v34 = v38;
    *(v49 + 9) = *&v43[25];
    v48[3] = *v43;
    v49[0] = *&v43[16];
    v48[1] = v41;
    v48[2] = v42;
    v48[0] = v40;
    *(v45 + 9) = *&v39[25];
    v44[2] = *v39;
    v45[0] = *&v39[16];
    v44[0] = v37;
    v44[1] = v38;
    *&v32[7] = v37;
    *&v32[64] = *&v39[25];
    *&v32[55] = *&v39[16];
    *&v32[39] = *v39;
    *&v32[23] = v38;
    v46[0] = v40;
    v46[1] = v41;
    *(v47 + 9) = *&v43[25];
    v46[3] = *v43;
    v47[0] = *&v43[16];
    v46[2] = v42;
    *&v31[23] = v41;
    *&v31[7] = v40;
    *&v31[80] = *&v43[25];
    *&v31[71] = *&v43[16];
    *&v31[55] = *v43;
    *&v31[39] = v42;
    sub_1B8B34450(&v37, &v54, &qword_1EBAA5E40, &qword_1B8C27C38);
    sub_1B8B34450(&v40, &v54, &qword_1EBAA74F0, &qword_1B8C2BE20);
    sub_1B8B34450(v44, &v54, &qword_1EBAA5E40, &qword_1B8C27C38);
    sub_1B8B34450(v46, &v54, &qword_1EBAA74F0, &qword_1B8C2BE20);
    sub_1B8B3433C(v48, &qword_1EBAA74F0, &qword_1B8C2BE20);
    v50[2] = v35;
    v51[0] = *v36;
    *(v51 + 9) = *&v36[9];
    v50[0] = v33;
    v50[1] = v34;
    sub_1B8B3433C(v50, &qword_1EBAA5E40, &qword_1B8C27C38);
    *v52 = 0;
    v52[8] = 1;
    *&v52[25] = *&v32[16];
    *&v52[41] = *&v32[32];
    *&v52[57] = *&v32[48];
    *&v52[73] = *&v32[64];
    *&v52[9] = *v32;
    *v53 = 0;
    v53[8] = 1;
    *&v53[25] = *&v31[16];
    *&v53[9] = *v31;
    *&v53[89] = *&v31[80];
    *&v53[73] = *&v31[64];
    *&v53[57] = *&v31[48];
    *&v53[41] = *&v31[32];
    *&v53[112] = 0;
    v53[120] = 1;
    sub_1B8B9AC5C(v52);
    v64 = *&v53[64];
    v65 = *&v53[80];
    v66[0] = *&v53[96];
    *(v66 + 10) = *&v53[106];
    v60 = *v53;
    v61 = *&v53[16];
    v62 = *&v53[32];
    v63 = *&v53[48];
    v56 = *&v52[32];
    v57 = *&v52[48];
    v58 = *&v52[64];
    v59 = *&v52[80];
    v54 = *v52;
    v55 = *&v52[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74F8, &unk_1B8C2BE28);
    sub_1B8B9AC68();
    sub_1B8B34CFC(&qword_1EBAA7508, &qword_1EBAA74F8, &unk_1B8C2BE28);
    sub_1B8C24598();
    sub_1B8B3433C(&v40, &qword_1EBAA74F0, &qword_1B8C2BE20);
    sub_1B8B3433C(&v37, &qword_1EBAA5E40, &qword_1B8C27C38);
    v64 = v28;
    v65 = v29;
    v66[0] = *v30;
    *(v66 + 10) = *&v30[10];
    v60 = v24;
    v61 = v25;
    v62 = v26;
    v63 = v27;
    v56 = v20;
    v57 = v21;
    v58 = v22;
    v59 = v23;
    v54 = v18;
    v55 = v19;
  }

  v11 = v65;
  a3[10] = v64;
  a3[11] = v11;
  a3[12] = v66[0];
  *(a3 + 202) = *(v66 + 10);
  v12 = v61;
  a3[6] = v60;
  a3[7] = v12;
  v13 = v63;
  a3[8] = v62;
  a3[9] = v13;
  v14 = v57;
  a3[2] = v56;
  a3[3] = v14;
  v15 = v59;
  a3[4] = v58;
  a3[5] = v15;
  result = *&v54;
  v17 = v55;
  *a3 = v54;
  a3[1] = v17;
  return result;
}

uint64_t sub_1B8B9A560(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8C246D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for StateController();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  sub_1B8C235B8();
  v13 = type metadata accessor for DonationController();
  v12[1] = 0u;
  v12[2] = 0u;
  v12[3] = 0u;
  *(v12 + 58) = 0u;
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_1B8BC46D8(v12);
  v19 = a1;
  v20 = a2;
  v21 = v16;

  sub_1B8C24F58();
  sub_1B8C246C8();
  sub_1B8C23EF8();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B8B9A708()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74E8, &unk_1B8C2BE10);
  return sub_1B8C24D78();
}

uint64_t sub_1B8B9A768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA64C8, &qword_1B8C2BC70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  sub_1B8C25388();
  v6 = sub_1B8C253A8();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1B8C25368();

  v7 = sub_1B8C25358();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_1B8BE33EC(0, 0, v5, &unk_1B8C2BE40, v8);
}

uint64_t sub_1B8B9A894()
{
  v0[2] = sub_1B8C25368();
  v0[3] = sub_1B8C25358();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1B8B9A940;

  return sub_1B8BC20B4();
}

uint64_t sub_1B8B9A940()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_1B8C25328();

  return MEMORY[0x1EEE6DFA0](sub_1B8B9AA7C, v5, v4);
}

uint64_t sub_1B8B9AA7C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B8B9AADC()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA74B8, &qword_1B8C2BDF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA74C0, &qword_1B8C2BDF8);
  sub_1B8B9AB9C();
  swift_getOpaqueTypeConformance2();
  return sub_1B8C23F78();
}

unint64_t sub_1B8B9AB9C()
{
  result = qword_1EBAA74C8;
  if (!qword_1EBAA74C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA74C0, &qword_1B8C2BDF8);
    sub_1B8B34CFC(&qword_1EBAA74D0, &qword_1EBAA74D8, &qword_1B8C2BE00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA74C8);
  }

  return result;
}

unint64_t sub_1B8B9AC68()
{
  result = qword_1EBAA7500;
  if (!qword_1EBAA7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7500);
  }

  return result;
}

uint64_t sub_1B8B9ACC4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1B8B9A708();
}

uint64_t sub_1B8B9ACEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B8B5115C;

  return sub_1B8B9A894();
}

unint64_t sub_1B8B9ADE4()
{
  result = qword_1EBAA7568;
  if (!qword_1EBAA7568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA7570, &qword_1B8C2BF00);
    sub_1B8B34CFC(&qword_1EBAA7578, &qword_1EBAA7580, &qword_1B8C2BF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7568);
  }

  return result;
}

uint64_t sub_1B8B9AEA4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8B9AF28()
{
  result = qword_1EBAA7598;
  if (!qword_1EBAA7598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA75A0, &qword_1B8C2BF18);
    sub_1B8B9B378(&qword_1EBAA75A8, _s8Feedback3RowVMa_0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7598);
  }

  return result;
}

uint64_t _s8Feedback3RowVMa_0()
{
  result = qword_1EBAA7610;
  if (!qword_1EBAA7610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B8B9B028()
{
  result = qword_1EBAA7600;
  if (!qword_1EBAA7600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA75F8, &qword_1B8C2BFA0);
    sub_1B8B9B378(&qword_1EBAA7608, type metadata accessor for EvaluationCard);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA7600);
  }

  return result;
}

uint64_t sub_1B8B9B0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_1B8C23568();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_1B8B9B17C()
{
  result = sub_1B8C23568();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8B9B1F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8B9B23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8B9B28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B8B9B2D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B8B9B378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for FBKInlineViewButton()
{
  result = qword_1EBAA7698;
  if (!qword_1EBAA7698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8B9B438()
{
  sub_1B8C236E8();
  if (v0 <= 0x3F)
  {
    sub_1B8B9B610(319, &qword_1EBAA71B8, MEMORY[0x1E699C248]);
    if (v1 <= 0x3F)
    {
      sub_1B8B9B5AC(319, &qword_1EBAA5DF0, &qword_1EBAA5DF8, &qword_1B8C31BF0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B8B9B5AC(319, &qword_1EBAA76A8, &qword_1EBAA71A0, &qword_1B8C2C220, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1B8B9B610(319, &qword_1EDC85640, type metadata accessor for FBKEvaluationController);
          if (v4 <= 0x3F)
          {
            sub_1B8B846D8();
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

void sub_1B8B9B5AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B8B9B610(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B8C24E88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B8B9B680@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_1B8C24308();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B8C24FB8();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B8C24F98();
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FBKInlineViewButton();
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76B0, &qword_1B8C2C278);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v37 - v21;
  sub_1B8B9C0A4(v1, &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v24 = swift_allocObject();
  sub_1B8B9C108(&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76B8, &unk_1B8C2C280);
  sub_1B8B34CFC(&qword_1EBAA76C0, &qword_1EBAA76B8, &unk_1B8C2C280);
  sub_1B8C24DB8();
  v25 = v1 + *(v16 + 44);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v25) = *(v25 + 16);
  v47 = v26;
  v48 = v27;
  v49 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7198, &unk_1B8C2B190);
  MEMORY[0x1B8CC9B00](&v46, v28);
  LOBYTE(v16) = v46;
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v16;
  v31 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76C8, &unk_1B8C2C2C0) + 36)];
  *v31 = KeyPath;
  v31[1] = sub_1B8B9C32C;
  v31[2] = v30;
  sub_1B8C24F88();
  sub_1B8C24FA8();
  v32 = &v22[*(v19 + 36)];
  LODWORD(v30) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA68C0, &qword_1B8C29A60) + 28);
  sub_1B8B9C4E0(&qword_1EBAA68C8, MEMORY[0x1E6982178]);
  v33 = v37;
  sub_1B8C24098();
  (*(v39 + 8))(v9, v40);
  (*(v38 + 8))(v14, v33);
  *v32 = swift_getKeyPath();
  v34 = v41;
  sub_1B8C242F8();
  sub_1B8B9C344();
  sub_1B8B9C4E0(&qword_1EBAA76F8, MEMORY[0x1E697C4E8]);
  v35 = v42;
  sub_1B8C24A58();
  (*(v43 + 8))(v34, v35);
  return sub_1B8B9C528(v22);
}

void sub_1B8B9BBA8(uint64_t a1)
{
  v2 = sub_1B8C23738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B8C236E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  v15 = type metadata accessor for FBKInlineViewButton();
  *v40 = *(a1 + v15[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7700, &qword_1B8C2C308);
  sub_1B8C24D68();
  if (v41)
  {

    return;
  }

  v39 = v3;
  (*(v8 + 16))(v14, a1, v7);
  v16 = (*(v8 + 88))(v14, v7);
  v17 = v16;
  if (v16 == *MEMORY[0x1E699C1F0])
  {
    v18 = a1 + v15[8];
    *v40 = *v18;
    *&v40[8] = *(v18 + 8);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
    MEMORY[0x1B8CC9B00](&v41, v19);
    v20 = v41;
    v21 = v15[5];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    MEMORY[0x1B8CC9B00](v22);
    (*(v8 + 104))(v12, v17, v7);
    v23 = v12;
    v24 = v6;
    v25 = 0;
  }

  else
  {
    if (v16 == *MEMORY[0x1E699C1C8])
    {
      v26 = a1 + v15[8];
      *v40 = *v26;
      *&v40[8] = *(v26 + 8);
    }

    else
    {
      v27 = (a1 + v15[8]);
      v29 = *v27;
      v28 = v27[1];
      v30 = v27[2];
      if (v16 != *MEMORY[0x1E699C1D8])
      {
        *v40 = v29;
        *&v40[8] = v28;
        *&v40[16] = v30;
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
        MEMORY[0x1B8CC9B00](&v41, v34);
        v35 = v41;
        v36 = v15[5];
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
        MEMORY[0x1B8CC9B00](v37);
        sub_1B8BED0A4(a1, v6, 1, 2, 0);

        (*(v39 + 8))(v6, v2);
        (*(v8 + 8))(v14, v7);
        return;
      }

      *v40 = v29;
      *&v40[8] = v28;
      *&v40[16] = v30;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
    MEMORY[0x1B8CC9B00](&v41, v31);
    v20 = v41;
    v32 = v15[5];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA7190, qword_1B8C2C1E0);
    MEMORY[0x1B8CC9B00](v33);
    (*(v8 + 104))(v12, v17, v7);
    v23 = v12;
    v24 = v6;
    v25 = 1;
  }

  sub_1B8BED0A4(v23, v24, v25, 2, 0);

  (*(v8 + 8))(v12, v7);
  (*(v39 + 8))(v6, v2);
}

uint64_t sub_1B8B9BFE4(uint64_t a1)
{
  v9 = sub_1B8C236D8();
  v10 = v2;
  v3 = a1 + *(type metadata accessor for FBKInlineViewButton() + 32);
  v7[1] = *v3;
  v8 = *(v3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA6DC0, &unk_1B8C2B180);
  MEMORY[0x1B8CC9B00](v7, v4);
  v5 = v7[0];
  sub_1B8BF1F4C(a1);

  sub_1B8B34CA8();
  return sub_1B8C24D48();
}

uint64_t sub_1B8B9C0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKInlineViewButton();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B9C108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FBKInlineViewButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B8B9C16C()
{
  v1 = *(type metadata accessor for FBKInlineViewButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1B8B9BBA8(v2);
}

uint64_t sub_1B8B9C1F8(uint64_t a1)
{
  v2 = sub_1B8C240A8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1B8C24158();
}

uint64_t sub_1B8B9C2C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B8C24238();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1B8B9C344()
{
  result = qword_1EBAA76D0;
  if (!qword_1EBAA76D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA76B0, &qword_1B8C2C278);
    sub_1B8B9C3FC();
    sub_1B8B34CFC(&qword_1EBAA76F0, &qword_1EBAA68C0, &qword_1B8C29A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA76D0);
  }

  return result;
}

unint64_t sub_1B8B9C3FC()
{
  result = qword_1EBAA76D8;
  if (!qword_1EBAA76D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBAA76C8, &unk_1B8C2C2C0);
    sub_1B8B34CFC(&qword_1EBAA76E0, &qword_1EBAA76E8, &qword_1B8C2C300);
    sub_1B8B34CFC(&qword_1EBAA67B8, &qword_1EBAA67C0, &qword_1B8C297E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAA76D8);
  }

  return result;
}

uint64_t sub_1B8B9C4E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B8B9C528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA76B0, &qword_1B8C2C278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B8B9C5BC@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAA66B0, &qword_1B8C2C430);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B8C2A740;
  v4 = *(v1 + 8);
  v34 = *v1;
  v5 = *(v1 + 16);
  v36 = *(v1 + 24);
  v32 = *(v1 + 41);
  v33 = *(v1 + 40);
  v6 = *(v1 + 56);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v7 = *(&v36 + 1);
  if (*(&v36 + 1))
  {
    v8 = v36;

    sub_1B8B9C9F0(&v36, v35);
    v3 = sub_1B8B5D784(1, 2, 1, v3);
    *(v3 + 16) = 2;
    *(v3 + 64) = v8;
    *(v3 + 72) = v7;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
  }

  else
  {
  }

  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v11 = sub_1B8C23348();
  v13 = v12;

  v14 = sub_1B8B5D414(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1B8B5D414((v15 > 1), v16 + 1, 1, v14);
  }

  *(v14 + 2) = v16 + 1;
  v17 = &v14[24 * v16];
  *(v17 + 4) = v11;
  *(v17 + 5) = v13;
  *(v17 + 6) = v3;
  if (v6 != 255 && (v6 & 1) == 0)
  {
    v18 = [v9 mainBundle];
    v19 = sub_1B8C23348();
    v21 = v20;

    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B8C2A740;
    *(v22 + 32) = sub_1B8B46FAC(v33 | (v32 << 8));
    *(v22 + 40) = v23;
    *(v22 + 48) = 0;
    *(v22 + 56) = 1;
    v25 = *(v14 + 2);
    v24 = *(v14 + 3);
    if (v25 >= v24 >> 1)
    {
      v14 = sub_1B8B5D414((v24 > 1), v25 + 1, 1, v14);
    }

    *(v14 + 2) = v25 + 1;
    v26 = &v14[24 * v25];
    *(v26 + 4) = v19;
    *(v26 + 5) = v21;
    *(v26 + 6) = v22;
  }

  v27 = type metadata accessor for ListPreviewer.Content(0);
  v28 = *(v27 + 20);
  v29 = *MEMORY[0x1E699C2C0];
  v30 = sub_1B8C237B8();
  (*(*(v30 - 8) + 104))(&a1[v28], v29, v30);
  *a1 = v34;
  *&a1[*(v27 + 24)] = v14;

  return v34;
}

uint64_t sub_1B8B9C900@<X0>(char *a1@<X8>)
{
  v10 = *v1;
  v11 = v1[1];
  *v12 = v1[2];
  *&v12[9] = *(v1 + 41);
  sub_1B8B9C5BC(a1);
  v3 = type metadata accessor for ListPreviewer(0);
  v4 = &a1[*(v3 + 20)];
  type metadata accessor for FullScreenPreviewController(0);
  sub_1B8B758B4(&qword_1EBAA6148, type metadata accessor for FullScreenPreviewController);
  *v4 = sub_1B8C23DA8();
  v4[8] = v5 & 1;
  v6 = &a1[*(v3 + 24)];
  result = sub_1B8C24D58();
  *v6 = v8;
  *(v6 + 1) = v9;
  return result;
}

uint64_t sub_1B8B9C9F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAA8830, &unk_1B8C2B630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8B9CA60(uint64_t a1)
{
  v2 = [v1 allVisibleAnswers];
  sub_1B8B46130(0, &qword_1EBAA7720, 0x1E699C120);
  v3 = sub_1B8C252C8();

  v78 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8C258B8())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1B8CCA4C0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ([v6 isAnswered])
      {
        sub_1B8C25848();
        v9 = *(v78 + 16);
        sub_1B8C25878();
        sub_1B8C25888();
        sub_1B8C25858();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v10 = v78;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_18:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_35;
  }

  for (j = *(v10 + 16); j; j = sub_1B8C258B8())
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC8];
    v14 = v10 & 0xC000000000000001;
    v15 = &off_1E7EB6000;
    v75 = v10;
    while (1)
    {
      if (v14)
      {
        v16 = MEMORY[0x1B8CCA4C0](v12, v10);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_34;
        }

        v16 = *(v10 + 8 * v12 + 32);
      }

      v17 = v16;
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v19 = [v16 v15[475]];
      if (v19 && (v20 = v19, v21 = sub_1B8C252C8(), v20, v22 = sub_1B8B9E264(v21), , v22))
      {
        v23 = j;
        v24 = v14;
        v25 = [v17 question];
        v26 = [v25 role];

        if (!v26)
        {
          goto LABEL_94;
        }

        v27 = sub_1B8C25128();
        v29 = v28;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1B8B5F210(v22, v27, v29, isUniquelyReferenced_nonNull_native);

        v14 = v24;
        j = v23;
        v10 = v75;
        v15 = &off_1E7EB6000;
      }

      else
      {
      }

      ++v12;
      if (v18 == j)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

  v13 = MEMORY[0x1E69E7CC8];
LABEL_37:

  v31 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v32 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v32 + 64);
  v37 = (v34 + 63) >> 6;

  v72 = v37;
  v74 = v33;
  v76 = v38;
  v39 = 0;
  if (v36)
  {
    while (1)
    {
      v40 = v39;
LABEL_44:
      v41 = __clz(__rbit64(v36)) | (v40 << 6);
      v42 = (*(v38 + 48) + 16 * v41);
      v44 = *v42;
      v43 = v42[1];
      if (v43 > 2)
      {
        switch(v43)
        {
          case 3:
            v45 = 0x657275746165663ALL;
            v47 = 0xEF6E69616D6F645FLL;
            break;
          case 4:
            v45 = 0x6165665F6275733ALL;
            v46 = 1701999988;
            goto LABEL_58;
          case 5:
            v45 = 0xD000000000000012;
            v47 = 0x80000001B8C33DC0;
            break;
          default:
            goto LABEL_55;
        }
      }

      else
      {
        if (v43)
        {
          if (v43 == 1)
          {
            v47 = 0xE500000000000000;
            v45 = 0x616572613ALL;
            goto LABEL_59;
          }

          if (v43 == 2)
          {
            v45 = 0x706972637365643ALL;
            v46 = 1852795252;
LABEL_58:
            v47 = v46 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            goto LABEL_59;
          }

LABEL_55:
          v45 = *v42;
          v47 = v42[1];
          goto LABEL_59;
        }

        v47 = 0xE600000000000000;
        v45 = 0x656C7469743ALL;
      }

LABEL_59:
      v36 &= v36 - 1;
      v48 = *(*(v38 + 56) + 8 * v41);
      v49 = v13[2];
      sub_1B8B5FB10(v44, v43);
      v50 = v44;
      sub_1B8B5FB10(v44, v43);

      if (v49)
      {
        v51 = v13;
        sub_1B8B5E2DC(v45, v47);
        v53 = v52;

        if ((v53 & 1) == 0)
        {
          goto LABEL_64;
        }

        sub_1B8B5E4C4(v44, v43);
        v39 = v40;
        v33 = v74;
        v38 = v76;
        v37 = v72;
        if (!v36)
        {
          break;
        }
      }

      else
      {
        v51 = v13;

LABEL_64:
        if (v43 <= 2)
        {
          v13 = v51;
          if (!v43)
          {
            v43 = 0xE600000000000000;
            v50 = 0x656C7469743ALL;
            goto LABEL_78;
          }

          if (v43 == 1)
          {
            v43 = 0xE500000000000000;
            v50 = 0x616572613ALL;
            goto LABEL_78;
          }

          if (v43 != 2)
          {
            goto LABEL_78;
          }

          v50 = 0x706972637365643ALL;
          v54 = 1852795252;
          goto LABEL_77;
        }

        v13 = v51;
        switch(v43)
        {
          case 3:
            v50 = 0x657275746165663ALL;
            v43 = 0xEF6E69616D6F645FLL;
            break;
          case 4:
            v50 = 0x6165665F6275733ALL;
            v54 = 1701999988;
LABEL_77:
            v43 = v54 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 5:
            v50 = 0xD000000000000012;
            v43 = 0x80000001B8C33DC0;
            break;
        }

LABEL_78:
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v77 = v13;
        v56 = sub_1B8B5E2DC(v50, v43);
        v58 = v13[2];
        v59 = (v57 & 1) == 0;
        v60 = __OFADD__(v58, v59);
        v61 = v58 + v59;
        if (v60)
        {
          goto LABEL_92;
        }

        v62 = v57;
        if (v13[3] < v61)
        {
          sub_1B8B93390(v61, v55);
          v56 = sub_1B8B5E2DC(v50, v43);
          if ((v62 & 1) != (v63 & 1))
          {
            goto LABEL_95;
          }

LABEL_83:
          if (v62)
          {
            goto LABEL_84;
          }

          goto LABEL_86;
        }

        if (v55)
        {
          goto LABEL_83;
        }

        v67 = v56;
        sub_1B8B94684();
        v56 = v67;
        if (v62)
        {
LABEL_84:
          v64 = v56;

          v65 = v77[7];
          v66 = *(v65 + 8 * v64);
          *(v65 + 8 * v64) = v48;
          v13 = v77;

          goto LABEL_88;
        }

LABEL_86:
        v13[(v56 >> 6) + 8] |= 1 << v56;
        v68 = (v13[6] + 16 * v56);
        *v68 = v50;
        v68[1] = v43;
        *(v13[7] + 8 * v56) = v48;
        v69 = v13[2];
        v60 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v60)
        {
          goto LABEL_93;
        }

        v13[2] = v70;
LABEL_88:
        v33 = v74;
        v38 = v76;
        v37 = v72;
        v39 = v40;
        if (!v36)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v40 >= v37)
    {

      return v13;
    }

    v36 = *(v33 + 8 * v40);
    ++v39;
    if (v36)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}

uint64_t sub_1B8B9D1A8(uint64_t a1)
{
  if (qword_1EBAA5900 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v1 = sub_1B8C23C38();
    __swift_project_value_buffer(v1, qword_1EBAA7708);
    v2 = sub_1B8C23C18();
    v3 = sub_1B8C25458();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *&v119 = v5;
      *v4 = 136446210;
      *(v4 + 4) = sub_1B8B5DD48(0xD000000000000022, 0x80000001B8C348B0, &v119);
      _os_log_impl(&dword_1B8B22000, v2, v3, "%{public}s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x1B8CCB0E0](v5, -1, -1);
      MEMORY[0x1B8CCB0E0](v4, -1, -1);
    }

    v6 = [v100 allVisibleAnswers];
    sub_1B8B46130(0, &qword_1EBAA7720, 0x1E699C120);
    v7 = sub_1B8C252C8();

    *&v119 = MEMORY[0x1E69E7CC0];
    if (v7 >> 62)
    {
      break;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_21;
    }

LABEL_6:
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1B8CCA4C0](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ([v10 isAnswered])
      {
        sub_1B8C25848();
        v13 = *(v119 + 16);
        sub_1B8C25878();
        sub_1B8C25888();
        sub_1B8C25858();
      }

      else
      {
      }

      ++v9;
      if (v12 == v8)
      {
        v14 = v119;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v8 = sub_1B8C258B8();
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_21:
  v14 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    goto LABEL_116;
  }

  v15 = *(v14 + 16);
LABEL_25:
  v103 = v14;
  if (v15)
  {
    v16 = 0;
    v106 = v14 & 0xC000000000000001;
    v108 = MEMORY[0x1E69E7CC8];
    v104 = v15;
    while (1)
    {
      if (v106)
      {
        v24 = MEMORY[0x1B8CCA4C0](v16, v14);
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_113;
        }

        v24 = *(v14 + 8 * v16 + 32);
      }

      v25 = v24;
      v26 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        v15 = sub_1B8C258B8();
        goto LABEL_25;
      }

      sub_1B8B9E378(v24, &v119);
      v114 = v119;
      v115 = v120;
      v116 = v121;
      v117 = v122;
      v27 = *(&v119 + 1);
      v14 = v119;
      sub_1B8B96144(&v114, &v109);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = v108;
      v29 = sub_1B8B5E2DC(v14, v27);
      v31 = *(v108 + 16);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_114;
      }

      v35 = v30;
      if (*(v108 + 24) < v34)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_39;
      }

      v45 = v29;
      sub_1B8B94A74();
      v29 = v45;
      if (v35)
      {
LABEL_27:
        v108 = v118;
        v17 = (v118[7] + (v29 << 6));
        v18 = v17[3];
        v20 = *v17;
        v19 = v17[1];
        v111 = v17[2];
        v112 = v18;
        v109 = v20;
        v110 = v19;
        v21 = v114;
        v22 = v115;
        v23 = v117;
        v17[2] = v116;
        v17[3] = v23;
        *v17 = v21;
        v17[1] = v22;
        sub_1B8B9F188(&v109);
        sub_1B8B9F188(&v114);

        goto LABEL_28;
      }

LABEL_40:
      v37 = v118;
      v118[(v29 >> 6) + 8] |= 1 << v29;
      v38 = (v37[6] + 16 * v29);
      *v38 = v14;
      v38[1] = v27;
      v39 = (v37[7] + (v29 << 6));
      v41 = v116;
      v40 = v117;
      v42 = v115;
      *v39 = v114;
      v39[1] = v42;
      v39[2] = v41;
      v39[3] = v40;

      sub_1B8B9F188(&v114);

      v43 = v37[2];
      v33 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v33)
      {
        goto LABEL_115;
      }

      v108 = v37;
      v37[2] = v44;
LABEL_28:
      v14 = v103;
      ++v16;
      if (v26 == v104)
      {
        goto LABEL_45;
      }
    }

    sub_1B8B939B8(v34, isUniquelyReferenced_nonNull_native);
    v29 = sub_1B8B5E2DC(v14, v27);
    if ((v35 & 1) != (v36 & 1))
    {
      goto LABEL_118;
    }

LABEL_39:
    if (v35)
    {
      goto LABEL_27;
    }

    goto LABEL_40;
  }

  v108 = MEMORY[0x1E69E7CC8];
LABEL_45:
  v46 = OBJC_IVAR____TtC8Feedback15FBKFeedbackForm_answers;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = v47 + 64;
  v49 = 1 << *(v47 + 32);
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  else
  {
    v50 = -1;
  }

  v51 = v50 & *(v47 + 64);
  v14 = (v49 + 63) >> 6;

  v52 = 0;
  v98 = v47 + 64;
  v99 = v47;
  v97 = v14;
LABEL_49:
  while (2)
  {
    while (2)
    {
      if (!v51)
      {
        do
        {
          v53 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_111;
          }

          if (v53 >= v14)
          {

            v93 = *(v108 + 16);
            if (!v93)
            {
              goto LABEL_108;
            }

            v94 = sub_1B8BCBE20(*(v108 + 16), 0);
            v95 = sub_1B8BCC288(&v114, v94 + 2, v93, v108);
            sub_1B8B29F70();
            if (v95 != v93)
            {
              __break(1u);
LABEL_108:

              return MEMORY[0x1E69E7CC0];
            }

            return v94;
          }

          v51 = *(v48 + 8 * v53);
          ++v52;
        }

        while (!v51);
        v52 = v53;
      }

      v54 = (*(v47 + 48) + ((v52 << 10) | (16 * __clz(__rbit64(v51)))));
      v56 = *v54;
      v55 = v54[1];
      if (v55 > 2)
      {
        switch(v55)
        {
          case 3:
            v105 = 0x657275746165663ALL;
            v58 = 0xEF6E69616D6F645FLL;
            break;
          case 4:
            v105 = 0x6165665F6275733ALL;
            v57 = 1701999988;
LABEL_68:
            v58 = v57 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 5:
            v105 = 0xD000000000000012;
            v58 = 0x80000001B8C33DC0;
            break;
          default:
            goto LABEL_65;
        }

        v107 = v58;
      }

      else if (v55)
      {
        if (v55 == 1)
        {
          v105 = 0x616572613ALL;
          v107 = 0xE500000000000000;
        }

        else
        {
          if (v55 == 2)
          {
            v105 = 0x706972637365643ALL;
            v57 = 1852795252;
            goto LABEL_68;
          }

LABEL_65:
          v105 = *v54;
          v107 = v54[1];
        }
      }

      else
      {
        v105 = 0x656C7469743ALL;
        v107 = 0xE600000000000000;
      }

      v51 &= v51 - 1;
      v59 = *(v108 + 16);
      sub_1B8B5FB10(v56, v55);
      sub_1B8B5FB10(v56, v55);
      if (v59)
      {
        sub_1B8B5E2DC(v105, v107);
        v61 = v60;

        if (v61)
        {

          continue;
        }
      }

      else
      {
      }

      break;
    }

    v62 = [v100 formResponse];
    v63 = [v62 answers];

    if (v63)
    {
      v64 = sub_1B8C253E8();

      sub_1B8B9E50C(v64);
      v66 = v65;

      if (v66)
      {
        a1 = v66;
        v102 = v51;
        if ((v66 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_1B8C25718();
          sub_1B8B9F120();
          sub_1B8C25408();
          v67 = *(&v109 + 1);
          v66 = v109;
          v69 = *(&v110 + 1);
          v68 = v110;
          v14 = v111;
        }

        else
        {
          v70 = -1 << *(v66 + 32);
          v67 = v66 + 56;
          v68 = ~v70;
          v71 = -v70;
          if (v71 < 64)
          {
            v72 = ~(-1 << v71);
          }

          else
          {
            v72 = -1;
          }

          v14 = v72 & *(v66 + 56);

          v69 = 0;
        }

        v73 = (v68 + 64) >> 6;
        if ((v66 & 0x8000000000000000) == 0)
        {
          goto LABEL_86;
        }

        while (1)
        {
          v74 = sub_1B8C25768();
          if (!v74)
          {
            break;
          }

          v113 = v74;
          swift_dynamicCast();
          v75 = v114;
          if (!v114)
          {
            break;
          }

          while (1)
          {
            v78 = [v75 question];
            v79 = [v78 tat];

            v80 = sub_1B8C25128();
            v82 = v81;

            if (v80 == v105 && v82 == v107)
            {

LABEL_104:
              sub_1B8B29F70();

              sub_1B8B9E378(v75, &v114);
              v119 = v114;
              v120 = v115;
              v121 = v116;
              v122 = v117;
              v90 = *(&v114 + 1);
              v91 = v114;
              sub_1B8B96144(&v119, &v114);
              v92 = swift_isUniquelyReferenced_nonNull_native();
              *&v114 = v108;
              sub_1B8B5F358(&v119, v91, v90, v92);

              sub_1B8B9F188(&v119);
              v108 = v114;
              v48 = v98;
              v47 = v99;
              v14 = v97;
              v51 = v102;
              goto LABEL_49;
            }

            v84 = sub_1B8C25A08();

            if (v84)
            {
              goto LABEL_104;
            }

            if (v66 < 0)
            {
              break;
            }

LABEL_86:
            v76 = v69;
            v77 = v14;
            if (!v14)
            {
              while (1)
              {
                v69 = v76 + 1;
                if (__OFADD__(v76, 1))
                {
                  break;
                }

                if (v69 >= v73)
                {
                  goto LABEL_98;
                }

                v77 = *(v67 + 8 * v69);
                ++v76;
                if (v77)
                {
                  goto LABEL_90;
                }
              }

              __break(1u);
LABEL_111:
              __break(1u);
              goto LABEL_112;
            }

LABEL_90:
            v14 = (v77 - 1) & v77;
            v75 = *(*(v66 + 48) + ((v69 << 9) | (8 * __clz(__rbit64(v77)))));
            if (!v75)
            {
              goto LABEL_98;
            }
          }
        }

LABEL_98:
        sub_1B8B29F70();

        v85 = sub_1B8C23C18();
        v86 = sub_1B8C25498();

        v51 = v102;
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v114 = v88;
          *v87 = 136446210;
          v89 = sub_1B8B5DD48(v105, v107, &v114);

          *(v87 + 4) = v89;
          _os_log_impl(&dword_1B8B22000, v85, v86, "Prefilled question %{public}s does not match a question tat in Form", v87, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v88);
          MEMORY[0x1B8CCB0E0](v88, -1, -1);
          MEMORY[0x1B8CCB0E0](v87, -1, -1);
        }

        else
        {
        }

        v48 = v98;
        v47 = v99;
        v14 = v97;
        continue;
      }
    }

    break;
  }

  sub_1B8C258A8();
  __break(1u);
LABEL_118:
  result = sub_1B8C25A58();
  __break(1u);
  return result;
}