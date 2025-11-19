int *sub_1B07DEE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a3;
  v50 = a1;
  v49 = a2;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v57 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v45 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v15 - v45;
  v47 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v15 - v45);
  v48 = &v15 - v47;
  v51 = sub_1B0E43308();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v15 - v54;
  v62 = v6;
  v61 = v7;
  v60 = v3;
  v56 = [v6 URLString];
  if (v56)
  {
    v42 = v56;
    v37 = v56;
    v38 = sub_1B0E44AD8();
    v39 = v8;
    MEMORY[0x1E69E5920](v37);
    v40 = v38;
    v41 = v39;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  v35 = v41;
  v36 = v40;
  if (v41)
  {
    v33 = v36;
    v34 = v35;
    v30 = v35;
    v31 = sub_1B0E44AC8();

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  v9 = v55;
  v27 = v32;
  sub_1B03D08AC(v49, v48);
  sub_1B0A62478(v48, v9);
  v28 = sub_1B0E43258();
  (*(v52 + 8))(v55, v51);
  v29 = type metadata accessor for MissingBodyDataRequest();
  v10 = v49 + v29[5];
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  v58 = v11;
  v59 = v10 & 1;
  if (v10)
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = v58;
  }

  v25 = [v44 newestUIDsMissingBodyDataForMailbox:v27 excluding:v28 inLatest:v26 limit:*(v49 + v29[6]) maximumMessagesToScan:*(v49 + v29[7])];
  MEMORY[0x1E69E5920](v28);
  MEMORY[0x1E69E5920](v27);
  if (v25)
  {
    v24 = v25;
    v23 = v25;
    v57 = v25;
    v22 = sub_1B07DF3A8();
    sub_1B07DF5E8(v48);
    sub_1B07DF96C(v46);
    v12 = [v23 messagesScannedInFilesystemCount];
    sub_1B07CF5C4(v22, v48, v46, v12, v43);
    return MEMORY[0x1E69E5920](v23);
  }

  else
  {
    v21 = 0;
    v20 = sub_1B0E46A48();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v16 = sub_1B0E46A48();
    v18 = sub_1B041C1E8();
    v19 = &type metadata for UID;
    MessageIdentifierSet.init(arrayLiteral:)(v16, &type metadata for UID);
    v14 = sub_1B0E46A48();
    MessageIdentifierSet.init(arrayLiteral:)(v14, v19);
    return sub_1B07CF5C4(v20, v48, v46, v21, v43);
  }
}

uint64_t sub_1B07DF3A8()
{
  v10 = v0;
  v7 = [v0 messagesMissingBodyData];
  if (v7)
  {
    sub_1B07F1764();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v7);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v9 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2350, &qword_1B0E9F3D0);
  sub_1B07F1654();
  v3 = sub_1B0E44F58();
  sub_1B039E440(&v9);
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
  sub_1B07F16DC();
  v2 = sub_1B0E44FF8();
  sub_1B039E440(&v8);
  return v2;
}

uint64_t sub_1B07DF5E8@<X0>(uint64_t a1@<X8>)
{
  v9 = a1;
  v10 = "Fatal error";
  v11 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v12 = "Message/MailboxPersistenceHelper+BodyData.swift";
  v27 = 0;
  v13 = sub_1B0E43308();
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v6 - v16;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2360, &qword_1B0E9C5F8);
  v18 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v19 = &v6 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v22 = (*(*(v21 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v6 - v22;
  v24 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v25 = &v6 - v24;
  v27 = v4;
  v26 = [v4 messagesNotMissingBodyData];
  if (v26)
  {
    v8 = v26;
    v7 = v26;
    sub_1B0E43278();
    (*(v14 + 32))(v19, v17, v13);
    (*(v14 + 56))(v19, 0, 1, v13);
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    (*(v14 + 56))(v19, 1, 1, v13);
  }

  if ((*(v14 + 48))(v19, 1, v13) == 1)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B0A626DC(v19, v25);
  sub_1B07DF96C(v23);
  MessageIdentifierSet.union(_:)(v23, v9);
  sub_1B03D09B8(v23);
  return sub_1B03D09B8(v25);
}

uint64_t sub_1B07DF96C@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v5 = "Fatal error";
  v6 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v7 = "Message/MailboxPersistenceHelper+BodyData.swift";
  v17 = 0;
  v8 = sub_1B0E43308();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v3 - v11;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2360, &qword_1B0E9C5F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v13);
  v15 = v3 - v14;
  v17 = v1;
  v16 = [v1 fragmentedMessages];
  if (v16)
  {
    v3[1] = v16;
    v3[0] = v16;
    sub_1B0E43278();
    (*(v9 + 32))(v15, v12, v8);
    (*(v9 + 56))(v15, 0, 1, v8);
    MEMORY[0x1E69E5920](v3[0]);
  }

  else
  {
    (*(v9 + 56))(v15, 1, 1, v8);
  }

  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return sub_1B0A626DC(v15, v4);
}

uint64_t sub_1B07DFC28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = a3;
  v42 = a1;
  v41 = a2;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v49 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v39 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v13 - v39;
  v43 = sub_1B0E43308();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v13 - v46;
  v54 = v5;
  v53 = v6;
  v52 = v3;
  v48 = [v5 URLString];
  if (v48)
  {
    v36 = v48;
    v31 = v48;
    v32 = sub_1B0E44AD8();
    v33 = v7;
    MEMORY[0x1E69E5920](v31);
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v29 = v35;
  v30 = v34;
  if (v35)
  {
    v27 = v30;
    v28 = v29;
    v24 = v29;
    v25 = sub_1B0E44AC8();

    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v8 = v47;
  v21 = v26;
  sub_1B03D08AC(v41, v40);
  sub_1B0A62478(v40, v8);
  v22 = sub_1B0E43258();
  (*(v44 + 8))(v47, v43);
  v23 = type metadata accessor for MissingBodyDataRequest();
  v9 = v41 + v23[5];
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  v50 = v10;
  v51 = v9 & 1;
  if (v9)
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = v50;
  }

  v19 = [v38 newestUIDsMissingPartsForMailbox:v21 excluding:v22 inLatest:v20 limit:*(v41 + v23[6]) maximumMessagesToScan:*(v41 + v23[7])];
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5920](v21);
  if (v19)
  {
    v18 = v19;
    v17 = v19;
    v49 = v19;
    v16 = sub_1B07E00BC();
    sub_1B07E0288(v40);
    v11 = [v17 messagesScannedInFilesystemCount];
    sub_1B07CFC34(v16, v40, v11, v37);
    return MEMORY[0x1E69E5920](v17);
  }

  else
  {
    v15 = 0;
    v14 = sub_1B0E46A48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    v13 = sub_1B0E46A48();
    sub_1B041C1E8();
    MessageIdentifierSet.init(arrayLiteral:)(v13, &type metadata for UID);
    return sub_1B07CFC34(v14, v40, v15, v37);
  }
}

uint64_t sub_1B07E00BC()
{
  v8 = v0;
  v6 = [v0 fragmentedMessages];
  if (v6)
  {
    sub_1B07F1850();
    v4 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2368, &qword_1B0E9C600);
  sub_1B07F17C8();
  v2 = sub_1B0E44F58();
  sub_1B039E440(&v7);
  return v2;
}

uint64_t sub_1B07E0288@<X0>(uint64_t a1@<X8>)
{
  v4 = a1;
  v5 = "Fatal error";
  v6 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v7 = "Message/MailboxPersistenceHelper+BodyData.swift";
  v17 = 0;
  v8 = sub_1B0E43308();
  v9 = *(v8 - 8);
  v10 = v8 - 8;
  v11 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v3 - v11;
  v14 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2360, &qword_1B0E9C5F8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v13);
  v15 = v3 - v14;
  v17 = v1;
  v16 = [v1 nonFragmentedMessages];
  if (v16)
  {
    v3[1] = v16;
    v3[0] = v16;
    sub_1B0E43278();
    (*(v9 + 32))(v15, v12, v8);
    (*(v9 + 56))(v15, 0, 1, v8);
    MEMORY[0x1E69E5920](v3[0]);
  }

  else
  {
    (*(v9 + 56))(v15, 1, 1, v8);
  }

  if ((*(v9 + 48))(v15, 1, v8) == 1)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return sub_1B0A626DC(v15, v4);
}

uint64_t sub_1B07E0544(uint64_t a1)
{
  v16 = a1;
  v21 = 0;
  v30 = 0;
  v29 = 0;
  v26 = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v7 - v18;
  v30 = MEMORY[0x1EEE9AC00](v16);
  v29 = v1;
  v28 = v30;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2370, &qword_1B0E9C608);
  v20 = v22;
  v2 = sub_1B07F18B4();
  v4 = sub_1B039CA88(sub_1B07E07B4, v21, v22, &type metadata for UID, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  v23 = 0;
  v24 = v4;
  v27 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2610, &unk_1B0E9C610);
  v10 = sub_1B074B97C();
  sub_1B07F193C();
  sub_1B0E46098();
  v12 = sub_1B07E0808(v19);
  v11 = v12;
  sub_1B03D09B8(v19);
  v26 = v12;
  v25 = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = &v7;
  v5 = MEMORY[0x1EEE9AC00](v12);
  v14 = &v7 - 4;
  *(&v7 - 2) = v5;
  sub_1B07F19EC();
  v15 = sub_1B0E44F58();
  v8 = v15;

  return v8;
}

uint64_t sub_1B07E07B4@<X0>(void *__src@<X0>, _DWORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1B07CF88C();
  *a2 = result;
  return result;
}

uint64_t sub_1B07E0808(uint64_t a1)
{
  v76 = a1;
  v78 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v93 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v86 = 0;
  v2 = *(*(_s21AttachmentPersistenceVMa() - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v76);
  v72 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v3;
  v97 = v1;
  v73 = static MonotonicTime.now()();
  v96 = v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v74 = v75;
  v77 = sub_1B0721160();
  v95 = sub_1B082A914(v76, v75, v77);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2378, &qword_1B0E9C620);
  sub_1B07F1A74();
  v5 = sub_1B0E44F58();
  v81 = 0;
  v82 = v5;
  v62 = v5;
  sub_1B039E440(&v95);
  v94 = v62;
  v65 = 0;
  v66 = sub_1B07F1AFC();
  v63 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2380, &qword_1B0E9C628);
  v68 = sub_1B043CF70();
  v64 = v68;
  sub_1B07F1B60();
  v6 = sub_1B0E44718();
  v69 = 0;
  v70 = v6;
  v55 = v6;
  v93 = v6;
  v92 = v6;
  v56 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v22[-4];
  v22[-2] = sub_1B07E3BE4;
  v22[-1] = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2388, &qword_1B0E9C630);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2390, &qword_1B0E9C638);
  sub_1B07F1C14();
  v7 = sub_1B0E44F58();
  v60 = 0;
  v61 = v7;
  v52 = v7;
  v91 = v7;

  v8 = sub_1B0E446E8();
  v53 = 0;
  v54 = v8;
  v48 = v8;

  v90 = v48;
  sub_1B07C93A8(v72);
  v88[1] = v52;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2398, &qword_1B0E9C640);
  v9 = sub_1B07F1CC0();
  v11 = sub_1B039CA88(sub_1B07E48EC, 0, v49, &unk_1F26C8F98, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  v50 = 0;
  v51 = v11;
  v88[0] = v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2318, &qword_1B0E9C478);
  v12 = sub_1B07CACA0();
  v40 = v88;
  v41 = sub_1B07CA940(v88, v39, v12);
  sub_1B039E440(v40);
  sub_1B07CDB7C(v72);
  v87 = v41;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v42 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v22[-4];
  v22[-2] = v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2320, &unk_1B0E9C480);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23A0, &qword_1B0E9C648);
  sub_1B07CAD98();
  v14 = sub_1B0E44F58();
  v46 = 0;
  v47 = v14;
  v32 = v14;

  sub_1B039E440(&v87);
  v86 = v32;
  v85 = v32;
  v33 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v34 = &v22[-4];
  v22[-2] = sub_1B07E4B04;
  v22[-1] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23A8, &qword_1B0E9C650);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23B0, &qword_1B0E9C658);
  v15 = sub_1B07F1DA0();
  v17 = sub_1B039CA88(sub_1B07F1D70, v34, v35, v36, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v37 = 0;
  v38 = v17;
  v84 = v17;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23B8, &qword_1B0E9C660);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23C0, &qword_1B0E9C668);
  sub_1B07F1E28();
  v18 = sub_1B0E44718();
  v30 = 0;
  v31 = v18;
  v25 = v18;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v89 = v25;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v19 = v25;
  v26 = &v22[-6];
  v22[-4] = v52;
  v22[-3] = v19;
  v22[-2] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23C8, &qword_1B0E9C670);
  v27 = sub_1B0E44F58();
  v22[0] = v27;

  v83 = v22[0];
  v22[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23D0, &qword_1B0E9C678);
  sub_1B07F1EE0();
  v23 = sub_1B0E445E8();
  sub_1B039E440(&v89);

  sub_1B07E15F4(v71, v73, v76);
  return v23;
}

void *sub_1B07E128C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, a1, sizeof(__dst));
  v23 = a2;
  v19 = sub_1B07CF88C();
  sub_1B043CF70();
  sub_1B0E44778();
  v12 = v20;
  v13 = v21;
  v14 = v22;
  if (v22 == 1)
  {
    memset(v18, 0, 56);
    v18[7] = 1;
    return memcpy(a3, v18, 0x40uLL);
  }

  else
  {
    v4 = __dst[0];
    v5 = __dst[1];
    v6 = __dst[2];
    v7 = BYTE1(__dst[2]);
    v8 = __dst[3];
    v9 = __dst[4];
    sub_1B07F200C(v21);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v15) = v6 & 1;
    HIBYTE(v15) = v7;
    sub_1B07F3D8C(v4, v5, v15, v8, v9, v12, v13, v14, v24);
    memcpy(v16, v24, sizeof(v16));
    memcpy(v17, v16, sizeof(v17));
    memcpy(a3, v17, 0x40uLL);
    sub_1B07F2124(v13);
  }
}

uint64_t sub_1B07E14B4(unsigned int a1)
{
  v8 = a1;
  v21 = 0;
  v20 = 0;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = &v4 - v5;
  v21 = MEMORY[0x1EEE9AC00](v8);
  v20 = v1;
  v6 = &v19;
  v19 = v21;
  v2 = sub_1B041C1E8();
  v9 = &type metadata for UID;
  MessageIdentifierSet.init(_:)(v6, &type metadata for UID, v2);
  v11 = sub_1B07E0808(v7);
  sub_1B03D09B8(v7);
  v10 = &v15;
  v15 = v8;
  sub_1B043CF70();
  sub_1B0E44778();
  v12 = v16;
  v13 = v17;
  v14 = v18;

  return v12;
}

uint64_t sub_1B07E15F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v150 = a1;
  v151 = a2;
  v154 = a3;
  v143 = sub_1B074E050;
  v159 = sub_1B074EF18;
  v161 = sub_1B0394C30;
  v162 = sub_1B0394C24;
  v164 = sub_1B074DFFC;
  v166 = sub_1B039BA88;
  v169 = sub_1B039BB94;
  v170 = sub_1B0394C24;
  v173 = sub_1B039BBA0;
  v175 = sub_1B039BC08;
  v178 = sub_1B06BA324;
  v180 = sub_1B074E0E4;
  v182 = sub_1B039BCF8;
  v184 = sub_1B07F3870;
  v186 = sub_1B074E950;
  v188 = sub_1B07F3878;
  v190 = sub_1B03B0DF8;
  v194 = sub_1B074EF98;
  v198 = sub_1B039BCF8;
  v200 = sub_1B0398F5C;
  v202 = sub_1B0398F5C;
  v204 = sub_1B0399178;
  v206 = sub_1B0398F5C;
  v208 = sub_1B0398F5C;
  v210 = sub_1B039BA94;
  v212 = sub_1B0398F5C;
  v214 = sub_1B0398F5C;
  v216 = sub_1B0399178;
  v218 = sub_1B0398F5C;
  v220 = sub_1B0398F5C;
  v222 = sub_1B03991EC;
  v224 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v228 = sub_1B03993BC;
  v230 = sub_1B0398F5C;
  v232 = sub_1B0398F5C;
  v234 = sub_1B039BCEC;
  v236 = sub_1B0398F5C;
  v238 = sub_1B0398F5C;
  v240 = sub_1B074E9C8;
  v242 = sub_1B0398F5C;
  v244 = sub_1B0398F5C;
  v246 = sub_1B0399260;
  v248 = sub_1B0398F5C;
  v250 = sub_1B0398F5C;
  v253 = sub_1B039BCEC;
  v266 = 0;
  v265 = 0;
  v264 = 0;
  v127 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v128 = *(v3 - 8);
  v152 = v128;
  v156 = *(v128 + 64);
  v129 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v158 = v119 - v129;
  v130 = 0;
  v138 = sub_1B0E439A8();
  v136 = *(v138 - 8);
  v137 = v138 - 8;
  v131 = (*(v136 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v130);
  v4 = v119 - v131;
  v132 = v119 - v131;
  v141 = _s6LoggerVMa_1();
  v134 = *(*(v141 - 8) + 64);
  v133 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v150);
  v142 = v119 - v133;
  v135 = (v134 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v139 = v119 - v135;
  v266 = v6;
  v265 = v7;
  v264 = v8;
  v140 = &OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger;
  sub_1B074B69C(v6 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_logger, v119 - v135);
  (*(v136 + 16))(v4, v139, v138);
  sub_1B074B764(v139);

  sub_1B074B69C(v150 + *v140, v142);
  v9 = (v142 + *(v141 + 20));
  v146 = *v9;
  v147 = *(v9 + 1);
  v148 = *(v9 + 1);
  v149 = *(v9 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v142);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v145 = 36;
  v196 = 7;
  v10 = swift_allocObject();
  v11 = v147;
  v12 = v148;
  v13 = v149;
  v165 = v10;
  *(v10 + 16) = v146;
  *(v10 + 20) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v13;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = swift_allocObject();
  v15 = v147;
  v16 = v148;
  v17 = v149;
  v144 = v14;
  *(v14 + 16) = v146;
  *(v14 + 20) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v17;

  v195 = 32;
  v18 = swift_allocObject();
  v19 = v144;
  v174 = v18;
  *(v18 + 16) = v143;
  *(v18 + 24) = v19;
  sub_1B0394868();
  sub_1B0394868();

  v20 = swift_allocObject();
  v21 = v147;
  v22 = v148;
  v23 = v149;
  v181 = v20;
  *(v20 + 16) = v146;
  *(v20 + 20) = v21;
  *(v20 + 24) = v22;
  *(v20 + 32) = v23;

  v177 = 24;
  v24 = swift_allocObject();
  v25 = v158;
  v26 = v24;
  v27 = v154;
  v185 = v26;
  *(v26 + 16) = v151;
  sub_1B03D08AC(v27, v25);
  v155 = *(v152 + 80);
  v153 = (v155 + 16) & ~v155;
  v189 = swift_allocObject();
  sub_1B074BA2C(v158, v189 + v153);
  sub_1B03D08AC(v154, v158);
  v157 = (v155 + 16) & ~v155;
  v160 = swift_allocObject();
  sub_1B074BA2C(v158, v160 + v157);

  v28 = swift_allocObject();
  v29 = v160;
  v197 = v28;
  *(v28 + 16) = v159;
  *(v28 + 24) = v29;

  v257 = sub_1B0E43988();
  v258 = sub_1B0E458C8();
  v192 = 17;
  v201 = swift_allocObject();
  v168 = 16;
  *(v201 + 16) = 16;
  v203 = swift_allocObject();
  v172 = 4;
  *(v203 + 16) = 4;
  v30 = swift_allocObject();
  v163 = v30;
  *(v30 + 16) = v161;
  *(v30 + 24) = 0;
  v31 = swift_allocObject();
  v32 = v163;
  v205 = v31;
  *(v31 + 16) = v162;
  *(v31 + 24) = v32;
  v207 = swift_allocObject();
  *(v207 + 16) = 0;
  v209 = swift_allocObject();
  *(v209 + 16) = 1;
  v33 = swift_allocObject();
  v34 = v165;
  v167 = v33;
  *(v33 + 16) = v164;
  *(v33 + 24) = v34;
  v35 = swift_allocObject();
  v36 = v167;
  v211 = v35;
  *(v35 + 16) = v166;
  *(v35 + 24) = v36;
  v213 = swift_allocObject();
  *(v213 + 16) = v168;
  v215 = swift_allocObject();
  *(v215 + 16) = v172;
  v37 = swift_allocObject();
  v171 = v37;
  *(v37 + 16) = v169;
  *(v37 + 24) = 0;
  v38 = swift_allocObject();
  v39 = v171;
  v217 = v38;
  *(v38 + 16) = v170;
  *(v38 + 24) = v39;
  v219 = swift_allocObject();
  *(v219 + 16) = 0;
  v221 = swift_allocObject();
  *(v221 + 16) = v172;
  v40 = swift_allocObject();
  v41 = v174;
  v176 = v40;
  *(v40 + 16) = v173;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v176;
  v223 = v42;
  *(v42 + 16) = v175;
  *(v42 + 24) = v43;
  v225 = swift_allocObject();
  *(v225 + 16) = 112;
  v227 = swift_allocObject();
  v193 = 8;
  *(v227 + 16) = 8;
  v179 = swift_allocObject();
  *(v179 + 16) = 0x786F626C69616DLL;
  v44 = swift_allocObject();
  v45 = v179;
  v229 = v44;
  *(v44 + 16) = v178;
  *(v44 + 24) = v45;
  v231 = swift_allocObject();
  *(v231 + 16) = 37;
  v233 = swift_allocObject();
  *(v233 + 16) = v193;
  v46 = swift_allocObject();
  v47 = v181;
  v183 = v46;
  *(v46 + 16) = v180;
  *(v46 + 24) = v47;
  v48 = swift_allocObject();
  v49 = v183;
  v235 = v48;
  *(v48 + 16) = v182;
  *(v48 + 24) = v49;
  v237 = swift_allocObject();
  *(v237 + 16) = 0;
  v239 = swift_allocObject();
  *(v239 + 16) = v193;
  v50 = swift_allocObject();
  v51 = v185;
  v187 = v50;
  *(v50 + 16) = v184;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  v53 = v187;
  v241 = v52;
  *(v52 + 16) = v186;
  *(v52 + 24) = v53;
  v243 = swift_allocObject();
  *(v243 + 16) = 0;
  v245 = swift_allocObject();
  *(v245 + 16) = v193;
  v54 = swift_allocObject();
  v55 = v189;
  v191 = v54;
  *(v54 + 16) = v188;
  *(v54 + 24) = v55;
  v56 = swift_allocObject();
  v57 = v191;
  v247 = v56;
  *(v56 + 16) = v190;
  *(v56 + 24) = v57;
  v249 = swift_allocObject();
  *(v249 + 16) = 34;
  v251 = swift_allocObject();
  *(v251 + 16) = v193;
  v58 = swift_allocObject();
  v59 = v197;
  v199 = v58;
  *(v58 + 16) = v194;
  *(v58 + 24) = v59;
  v60 = swift_allocObject();
  v61 = v199;
  v254 = v60;
  *(v60 + 16) = v198;
  *(v60 + 24) = v61;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v252 = sub_1B0E46A48();
  v255 = v62;

  v63 = v201;
  v64 = v255;
  *v255 = v200;
  v64[1] = v63;

  v65 = v203;
  v66 = v255;
  v255[2] = v202;
  v66[3] = v65;

  v67 = v205;
  v68 = v255;
  v255[4] = v204;
  v68[5] = v67;

  v69 = v207;
  v70 = v255;
  v255[6] = v206;
  v70[7] = v69;

  v71 = v209;
  v72 = v255;
  v255[8] = v208;
  v72[9] = v71;

  v73 = v211;
  v74 = v255;
  v255[10] = v210;
  v74[11] = v73;

  v75 = v213;
  v76 = v255;
  v255[12] = v212;
  v76[13] = v75;

  v77 = v215;
  v78 = v255;
  v255[14] = v214;
  v78[15] = v77;

  v79 = v217;
  v80 = v255;
  v255[16] = v216;
  v80[17] = v79;

  v81 = v219;
  v82 = v255;
  v255[18] = v218;
  v82[19] = v81;

  v83 = v221;
  v84 = v255;
  v255[20] = v220;
  v84[21] = v83;

  v85 = v223;
  v86 = v255;
  v255[22] = v222;
  v86[23] = v85;

  v87 = v225;
  v88 = v255;
  v255[24] = v224;
  v88[25] = v87;

  v89 = v227;
  v90 = v255;
  v255[26] = v226;
  v90[27] = v89;

  v91 = v229;
  v92 = v255;
  v255[28] = v228;
  v92[29] = v91;

  v93 = v231;
  v94 = v255;
  v255[30] = v230;
  v94[31] = v93;

  v95 = v233;
  v96 = v255;
  v255[32] = v232;
  v96[33] = v95;

  v97 = v235;
  v98 = v255;
  v255[34] = v234;
  v98[35] = v97;

  v99 = v237;
  v100 = v255;
  v255[36] = v236;
  v100[37] = v99;

  v101 = v239;
  v102 = v255;
  v255[38] = v238;
  v102[39] = v101;

  v103 = v241;
  v104 = v255;
  v255[40] = v240;
  v104[41] = v103;

  v105 = v243;
  v106 = v255;
  v255[42] = v242;
  v106[43] = v105;

  v107 = v245;
  v108 = v255;
  v255[44] = v244;
  v108[45] = v107;

  v109 = v247;
  v110 = v255;
  v255[46] = v246;
  v110[47] = v109;

  v111 = v249;
  v112 = v255;
  v255[48] = v248;
  v112[49] = v111;

  v113 = v251;
  v114 = v255;
  v255[50] = v250;
  v114[51] = v113;

  v115 = v254;
  v116 = v255;
  v255[52] = v253;
  v116[53] = v115;
  sub_1B0394964();

  if (os_log_type_enabled(v257, v258))
  {
    v117 = v127;
    v120 = sub_1B0E45D78();
    v119[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v121 = sub_1B03949A8(0);
    v122 = sub_1B03949A8(2);
    v123 = &v263;
    v263 = v120;
    v124 = &v262;
    v262 = v121;
    v125 = &v261;
    v261 = v122;
    sub_1B0394A48(3, &v263);
    sub_1B0394A48(9, v123);
    v259 = v200;
    v260 = v201;
    sub_1B03949FC(&v259, v123, v124, v125);
    v126 = v117;
    if (v117)
    {

      __break(1u);
    }

    else
    {
      v259 = v202;
      v260 = v203;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[25] = 0;
      v259 = v204;
      v260 = v205;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[24] = 0;
      v259 = v206;
      v260 = v207;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[23] = 0;
      v259 = v208;
      v260 = v209;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[22] = 0;
      v259 = v210;
      v260 = v211;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[21] = 0;
      v259 = v212;
      v260 = v213;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[20] = 0;
      v259 = v214;
      v260 = v215;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[19] = 0;
      v259 = v216;
      v260 = v217;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[18] = 0;
      v259 = v218;
      v260 = v219;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[17] = 0;
      v259 = v220;
      v260 = v221;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[16] = 0;
      v259 = v222;
      v260 = v223;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[15] = 0;
      v259 = v224;
      v260 = v225;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[14] = 0;
      v259 = v226;
      v260 = v227;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[13] = 0;
      v259 = v228;
      v260 = v229;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[12] = 0;
      v259 = v230;
      v260 = v231;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[11] = 0;
      v259 = v232;
      v260 = v233;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[10] = 0;
      v259 = v234;
      v260 = v235;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[9] = 0;
      v259 = v236;
      v260 = v237;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[8] = 0;
      v259 = v238;
      v260 = v239;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[7] = 0;
      v259 = v240;
      v260 = v241;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[6] = 0;
      v259 = v242;
      v260 = v243;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[5] = 0;
      v259 = v244;
      v260 = v245;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[4] = 0;
      v259 = v246;
      v260 = v247;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[3] = 0;
      v259 = v248;
      v260 = v249;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[2] = 0;
      v259 = v250;
      v260 = v251;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      v119[1] = 0;
      v259 = v253;
      v260 = v254;
      sub_1B03949FC(&v259, &v263, &v262, &v261);
      _os_log_impl(&dword_1B0389000, v257, v258, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] checkWithoutCacheForMissingParts() took %f ms (%ld '%{public}s')", v120, 0x49u);
      sub_1B03998A8(v121);
      sub_1B03998A8(v122);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v257);
  return (*(v136 + 8))(v132, v138);
}

uint64_t sub_1B07E3A90@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v11 = 0;
  v5 = *a1;
  v11 = v5;
  v8 = [v5 uid];
  v6 = sub_1B041C1E8();
  v2 = sub_1B07467B8();
  result = MessageIdentifier.init<A>(exactly:)(&v8, &type metadata for UID, MEMORY[0x1E69E7668], v6, v2, &v9);
  v7 = v9;
  if (v10)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    result = MEMORY[0x1E69E5928](v5);
    *a2 = v7;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1B07E3B88@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = *a2;
  result = MEMORY[0x1E69E5928](*a2);
  *a3 = v5;
  return result;
}

uint64_t sub_1B07E3BE4(unsigned int a1, id a2)
{
  sub_1B0825730([a2 globalMessageID]);
  if (v2)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1B07E3CA0@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, *(a1 + 1));
  *a3 = result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5 & 1;
  return result;
}

uint64_t sub_1B07E3D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a3;
  v65 = a1;
  v64 = a2;
  v47 = sub_1B07E46B8;
  v48 = sub_1B07E473C;
  v49 = sub_1B07E47F4;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v85 = 0;
  v81 = 0;
  v80[0] = 0;
  v78[0] = 0;
  v78[1] = 0;
  v75 = 0;
  v62 = 0;
  v50 = type metadata accessor for Message(0);
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v53 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v54 = v20 - v53;
  v55 = sub_1B0E443C8();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v62);
  v59 = v20 - v58;
  v60 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v61 = v20 - v60;
  v85 = v20 - v60;
  v69 = _s31PreviouslyDownloadedMessageDataV4MIMEOMa();
  v63 = (*(*(v69 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v62);
  v70 = v20 - v63;
  v66 = _s31PreviouslyDownloadedMessageDataVMa();
  v67 = (*(*(v66 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v65);
  v68 = v20 - v67;
  v84 = v20 - v67;
  v83 = *v5;
  v82 = v6;
  v7 = [v83 downloadedMessageData];
  sub_1B08259E4(v7, v68);
  sub_1B07AF5B8(v68, v70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 0:
      v9 = v55;
      v10 = v70;
      v11 = v56;
      *v45 = 1;
      (*(v11 + 8))(v10, v9);
      sub_1B075ECD0(v68);
      result = v46;
      v44 = v46;
      return result;
    case 1:
      v14 = v54;
      (*(v56 + 32))(v61, v70, v55);
      v85 = v61;
      (*(v56 + 16))(v59);
      Message.init(_:)(v59, v14);
      v39 = *(v64 + OBJC_IVAR____TtC7Message24MailboxPersistenceHelper_mimeCache);

      v40 = Message.findPartsMissingData(cache:)(v39);

      (*(v51 + 8))(v54, v50);
      v81 = v40;
      v80[1] = v40;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2130, &qword_1B0E9B5C0);
      sub_1B07AFB60();
      v15 = v46;
      result = sub_1B0E44F48();
      v42 = v15;
      v43 = result;
      if (v15)
      {
        __break(1u);
      }

      else
      {
        if (v43)
        {
          *v45 = 0;

          (*(v56 + 8))(v61, v55);
          sub_1B075ECD0(v68);
          result = v42;
          v44 = v42;
          return result;
        }

        v79[1] = v40;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2490, &qword_1B0E9CC30);
        v16 = sub_1B07B0A94();
        v17 = v42;
        result = sub_1B039CA88(v48, 0, v41, v35, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v36);
        v37 = v17;
        v38 = result;
        if (!v17)
        {
          v32 = v79;
          v79[0] = v38;
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2498, &qword_1B0E9CC38);
          v31 = sub_1B07167A8();
          sub_1B07F3CCC();
          v18 = v37;
          result = sub_1B0E44718();
          v33 = v18;
          v34 = result;
          if (!v18)
          {
            v80[0] = v34;
            v27 = *&v68[*(v66 + 20)];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v77 = v27;
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
            sub_1B07AFBE8();
            sub_1B0E45798();
            for (i = v33; ; i = v25)
            {
              v25 = i;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24A0, &unk_1B0E9CC40);
              sub_1B0E46518();
              v26 = v76;
              if (!v76)
              {
                break;
              }

              v24 = v26;
              v21 = v26;
              v75 = v26;
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v20[2] = v73;
              v73[0] = 1;
              memset(&v73[1], 0, 24);
              v74 = 3;
              v20[1] = &v72;
              v72 = v21;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2440, qword_1B0E9C7F8);
              sub_1B0E44788();
            }

            sub_1B039E440(v78);
            v22 = v80;
            v23 = v80[0];
            _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
            v19 = v22;
            *v45 = v23;
            sub_1B039E440(v19);

            (*(v56 + 8))(v61, v55);
            sub_1B075ECD0(v68);
            result = v25;
            v44 = v25;
            return result;
          }

LABEL_21:
          __break(1u);
          return result;
        }
      }

      __break(1u);
      goto LABEL_21;
    case 2:
      v8 = v68;
      *v45 = 0;
      sub_1B075ECD0(v8);
      result = v46;
      v44 = v46;
      break;
    default:
      v12 = v68;
      if (EnumCaseMultiPayload == 3)
      {
        *v45 = 2;
        sub_1B075ECD0(v12);
        result = v46;
      }

      else
      {
        *v45 = 1;
        result = sub_1B075ECD0(v12);
      }

      v44 = v46;
      break;
  }

  return result;
}

BOOL sub_1B07E46B8(uint64_t a1)
{
  memcpy(__dst, (a1 + 8), 0x21uLL);
  v5 = a1;
  sub_1B07F3B58(__dst, v4);
  v3 = SparsePartInfo.Status.isEmpty.getter();
  sub_1B07F3BD4(__dst);
  return !v3;
}

uint64_t sub_1B07E473C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v9 = *(a1 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v3;
  result = sub_1B07B0B1C(v4, v5, v6, v7, v9);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v9;
  return result;
}

uint64_t sub_1B07E47F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v16[5], 0, 0x21uLL);
  memset(v16, 0, 0x21uLL);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v16[5] = *a1;
  v16[6] = v3;
  v16[7] = v4;
  v16[8] = v5;
  LOBYTE(v16[9]) = v6;
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16[0] = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  LOBYTE(v16[4]) = v15;
  result = sub_1B07B0B1C(v10, v11, v12, v13, v15);
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  return result;
}

int *sub_1B07E48EC@<X0>(int *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  *a2 = *(result + 1);
  return result;
}

uint64_t sub_1B07E4918@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = a1[1];
  v10 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2398, &qword_1B0E9C640);
  sub_1B07F3914();
  sub_1B0E44FB8();
  if (v7)
  {

    __break(1u);
  }

  else
  {

    if (v9)
    {
      v3 = 0;
      v4 = 1;
    }

    else
    {
      v3 = v8;
      v4 = 0;
    }

    if (v4)
    {
      *a2 = 0;
      a2[1] = 0;
    }

    else
    {
      result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *a2 = v3;
      a2[1] = v6;
    }
  }

  return result;
}

uint64_t sub_1B07E4B04(unsigned int a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2330, &qword_1B0E9C498);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2480, &qword_1B0E9CC20);
  v1 = sub_1B07CC574();
  sub_1B039CA88(sub_1B07E4C9C, 0, v4, v5, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2488, &qword_1B0E9CC28);
  sub_1B07167A8();
  sub_1B07F3C14();
  sub_1B0E44718();

  return a1;
}

void *sub_1B07E4C9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v23 = a2;
  v29 = a1;
  v36 = 0;
  v35 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v25 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v11 - v25;
  v26 = 0;
  v32 = sub_1B0E42E68();
  v30 = *(v32 - 8);
  v31 = v32 - 8;
  v27 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v11 - v27;
  v36 = &v11 - v27;
  v35 = v3;
  v4 = _s30MessagePersistedAttachmentInfoV7ElementVMa();
  sub_1B071C180(v29 + *(v4 + 20), v33);
  if ((*(v30 + 48))(v33, 1, v32) == 1)
  {
    sub_1B06E3800(v33);
    v22 = v24;
  }

  else
  {
    (*(v30 + 32))(v28, v33, v32);
    v5 = v24;
    v6 = sub_1B0E42D98();
    v19 = v5;
    v20 = v6;
    v21 = v5;
    if (v5)
    {
      v12 = 0;

      v17 = 2;
      v18 = v12;
    }

    else
    {
      v17 = v20 & 1;
      v18 = 0;
    }

    v16 = v18;
    v34 = v17;
    if (v17 == 2)
    {
      v15 = 0;
    }

    else
    {
      v15 = v34;
    }

    if (v15)
    {
      sub_1B074E7A8(v29, v23);
      v7 = v30;
      v8 = v32;
      v9 = v28;
      *(v23 + 8) = 0;
      (*(v7 + 8))(v9, v8);
      result = v16;
      v14 = v16;
      return result;
    }

    (*(v30 + 8))(v28, v32);
    v22 = v16;
  }

  v13 = v22;
  sub_1B074E7A8(v29, v23);
  result = v13;
  *(v23 + 8) = 1;
  v14 = result;
  return result;
}

_BYTE *sub_1B07E4FCC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *result & 1;
  *a3 = *a2;
  return result;
}

uint64_t sub_1B07E500C@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, *(a1 + 1));
  *a3 = result;
  *(a3 + 8) = v4;
  return result;
}

uint64_t sub_1B07E5064@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v5 = *a2;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a3 = v5;
  return result;
}

uint64_t *sub_1B07E50B0@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v130 = a4;
  v129 = a3;
  v131 = a2;
  v125 = a1;
  v126 = a5;
  v176 = 0;
  v127 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v168 = 0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0u;
  v153 = 0u;
  v144 = 0;
  v142 = 0;
  v141 = 0;
  v138 = 0;
  v132 = *a1;
  v128 = v132;
  v176 = v132;
  v175 = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v174 = v129;
  v173 = v130;
  v169 = v131;
  v136 = v132;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2398, &qword_1B0E9C640);
  sub_1B07F3914();
  sub_1B0E44FB8();
  v135 = v134;
  if (v134)
  {
    __break(1u);
    goto LABEL_50;
  }

  v123 = v170;
  v124 = v171;
  if (v172)
  {
    v120 = 0;
    v121 = 1;
  }

  else
  {
    v122 = v124;
    v120 = v124;
    v121 = 0;
  }

  v119 = v120;
  if (v121)
  {
    v5 = v135;
    v6 = v126;
    *v126 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 1;
    v117 = v5;
LABEL_48:
    v29[1] = v117;
    return sub_1B039E440(&v174);
  }

  v118 = v119;
  v168 = v119;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(v119);
  v165 = v7;
  v166 = v8;
  v167 = v9;
  v113 = v174;
  v163 = v128;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23B8, &qword_1B0E9C660);
  v112 = v114;
  v115 = sub_1B043CF70();
  sub_1B0E44778();
  v116 = v164;
  if (!v164)
  {
    v110 = v135;
    goto LABEL_13;
  }

  v111 = v116;
  v104 = v116;
  v107 = v135;
  v138 = v116;
  v137 = v116;
  v105 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v106 = v26;
  v27 = sub_1B07E5CB8;
  v28 = 0;
  sub_1B07F3AD0();
  v10 = v107;
  v11 = sub_1B0E44F58();
  v108 = v10;
  v109 = v11;
  if (v10)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v167 = v109;

  v110 = v108;
LABEL_13:
  v102 = v110;
  v161 = v128;
  sub_1B0E44778();
  v103 = v162;
  if (v162 == 3)
  {
    v100 = v102;
LABEL_33:
    v72 = v100;
    v159 = v128;
    sub_1B0E44778();
    v73 = v160;
    if (v160 == 3)
    {
      v70 = v72;
    }

    else
    {
      v71 = v73;
      v69 = v71;
      if (v71 >= 3)
      {
        v68 = v69;
        v65 = v69;
        v158 = v69;
        v67 = v167;
        v66 = v167;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v67)
        {
          v64 = v66;
          v59 = v66;
          v157 = v66;
          v62 = sub_1B07167A8();
          v60 = v62;
          v61 = &type metadata for SectionSpecifier.Part;
          v156 = sub_1B0E44588();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0E445C8();
          v155 = v179;
          v154 = v178;
          v153 = v177;
          for (i = v72; ; i = v52)
          {
            v52 = i;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2478, &unk_1B0E9CC10);
            sub_1B0E446D8();
            v53 = v147;
            v54 = v148;
            v55 = v149;
            v56 = v150;
            v57 = v151;
            v58 = v152;
            if (!v147)
            {
              break;
            }

            v46 = v53;
            v47 = v54;
            v48 = v55;
            v49 = v56;
            v50 = v57;
            v51 = v58;
            v34 = v58;
            v35 = v57;
            v36 = v56;
            v37 = v55;
            v38 = v54;
            v39 = v53;
            v180 = v54;
            v181 = v55;
            v182 = v56;
            v183 = v57;
            v184 = v58;
            v144 = v53;
            if (!SparsePartInfo.Status.isEmpty.getter())
            {
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              v143 = v39;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
              sub_1B0E454D8();
            }

            sub_1B07B0B7C(v38, v37, v36, v35, v34);
          }

          sub_1B06B91B0(&v153);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v146 = v59;
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
          sub_1B07AFA50();
          v44 = &type metadata for SectionSpecifier.Part;
          v41 = sub_1B0E45598();
          v42 = v156;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v43 = sub_1B0E45418();

          v145 = v43;
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
          sub_1B07B0968();
          v167 = sub_1B0E45378();

          sub_1B039E440(&v156);

          v70 = v52;
        }

        else
        {

          v70 = v72;
        }
      }

      else
      {
        sub_1B07C936C(v69);
        v70 = v72;
      }
    }

    v33 = v70;
    v30 = v165;
    v31 = v166;
    v32 = v167;
    sub_1B07F200C(v166);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v21 = v30;
    v22 = v31;
    v23 = v126;
    v24 = v32;
    *v126 = v128;
    v23[1] = v21;
    v23[2] = v22;
    v23[3] = v24;
    sub_1B07F399C(&v165);
    v117 = v33;
    goto LABEL_48;
  }

  v101 = v103;
  v99 = v101;
  v142 = v101;
  if (!v101)
  {
    v96 = &type metadata for SectionSpecifier.Part;
    v95 = 0;
    v12 = sub_1B0E46A48();
    v13 = v166;
    v166 = v12;
    sub_1B07F2124(v13);
    v167 = sub_1B0E46A48();

    v97 = v102;
LABEL_32:
    v74 = v97;
    sub_1B07C936C(v99);
    v100 = v74;
    goto LABEL_33;
  }

  if (v99 == 1)
  {
    v20 = v166;
    v166 = 1;
    sub_1B07F2124(v20);
    v97 = v102;
    goto LABEL_32;
  }

  if (v99 == 2)
  {
    v77 = v167;
    v76 = v167;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v77)
    {
      v75 = v76;
    }

    else
    {
      v167 = sub_1B0E46A48();
    }

    v97 = v102;
    goto LABEL_32;
  }

  v98 = v99;
  v86 = v99;
  v91 = v102;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v141 = v86;
  v140 = v86;
  v87 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v89 = v26;
  v27 = sub_1B07E5D74;
  v28 = 0;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2440, qword_1B0E9C7F8);
  v88 = v90;
  v14 = sub_1B07F3A1C();
  v15 = v91;
  v92 = v14;
  v16 = sub_1B0E44F58();
  v93 = v15;
  v94 = v16;
  if (v15)
  {
    goto LABEL_51;
  }

  v17 = v166;
  v166 = v94;
  sub_1B07F2124(v17);
  v85 = v167;
  v84 = v167;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v85)
  {
    v83 = v84;

    v82 = v93;
LABEL_26:
    v78 = v82;

    v97 = v78;
    goto LABEL_32;
  }

  v18 = v93;
  v139 = v86;
  v79 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v27 = sub_1B07E5E90;
  v28 = 0;
  v19 = sub_1B0E44F58();
  v80 = v18;
  v81 = v19;
  if (!v18)
  {
    v167 = v81;

    v82 = v80;
    goto LABEL_26;
  }

LABEL_52:
  result = v79;
  __break(1u);
  return result;
}

uint64_t sub_1B07E5C30(int *a1)
{
  v3 = *(a1 + 1);
  v2 = *a1;
  sub_1B0714E4C();
  return sub_1B0E45ED8() & 1;
}

uint64_t sub_1B07E5CB8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return a1;
}

uint64_t sub_1B07E5D1C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8) & 1);
  *a3 = result;
  return result;
}

uint64_t sub_1B07E5D74(uint64_t a1, const void *a2)
{
  v8 = a1;
  v7 = a2;
  sub_1B07F3B58(a2, v6);
  memcpy(__dst, a2, 0x21uLL);
  if (LOBYTE(__dst[4]) == 1)
  {
    __dst[5] = __dst[0];
    v10 = __dst[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

  else
  {
    sub_1B07F3BD4(a2);
    return 0;
  }
}

uint64_t sub_1B07E5E1C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t, _BYTE *)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  memcpy(__dst, a1 + 1, 0x21uLL);
  result = a2(v4, __dst);
  *a3 = result;
  return result;
}

uint64_t sub_1B07E5E90(uint64_t a1, const void *a2)
{
  v8 = a1;
  v7 = a2;
  sub_1B07F3B58(a2, v6);
  memcpy(__dst, a2, 0x21uLL);
  if (LOBYTE(__dst[4]) == 2)
  {

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

  else
  {
    sub_1B07F3BD4(a2);
    return 0;
  }
}

void *sub_1B07E5F30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v5 = *a1;
  v16 = v5;
  v13 = 0;
  v15 = 0;
  MEMORY[0x1E69E5928](v5);
  v9 = v5;
  v2 = type metadata accessor for MFMailMessageLibraryUIDMessageSize();
  sub_1B03B0BBC(&v13, sub_1B07F3D54, v8, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v7, v7);
  if (v6)
  {
    result = MEMORY[0x1E69E5920](v5);
    __break(1u);
  }

  else
  {
    MEMORY[0x1E69E5920](v5);
    v10 = v13;
    v11 = v14;
    v12 = v15;
    sub_1B07E6190(v13, v14, v15, v17);
    return memcpy(a2, v17, 0x28uLL);
  }

  return result;
}

id sub_1B07E6090(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1B0E45E58();
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_1B0E465A8();
    __break(1u);
  }

  return [a3 getValue:v4 size:sub_1B0E450E8()];
}

uint64_t sub_1B07E6190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v27[5] = a1;
  v27[6] = a2;
  v27[7] = a3;
  result = sub_1B0825730(a1);
  v20 = result;
  if (v5)
  {
    v15 = 0;
    v16 = 0;
    v17 = 512;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    UID.init(rawValue:)(a2);
    MessageToDownload.init(message:size:bodyStructure:)();
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a3);
    LOBYTE(v25) = v13 & 1;
    HIBYTE(v25) = v14;
    sub_1B07CF9DC(v11, v12, v25, v10, v20, v27);
    result = memcpy(__b, v27, sizeof(__b));
    v15 = LODWORD(v27[0]);
    v16 = v27[1];
    v17 = v27[2] & 1 | ((BYTE1(v27[2]) & 1) << 8);
    v18 = v27[3];
    v19 = v27[4];
  }

  *a4 = v15;
  a4[1] = v16;
  a4[2] = v17;
  a4[3] = v18;
  a4[4] = v19;
  return result;
}

BOOL sub_1B07E6498(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v7, a2, sizeof(v7));
  v6 = sub_1B07CF88C();
  v5 = sub_1B07CF88C();
  v2 = sub_1B041C1E8();
  return static MessageIdentifier.< infix(_:_:)(&v6, &v5, &type metadata for UID, v2);
}

void *sub_1B07E6548@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  sub_1B07E65B0(v3, v5);
  return memcpy(a2, v5, 0x28uLL);
}

uint64_t sub_1B07E65B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  memset(__b, 0, sizeof(__b));
  [a1 uidAndSize];
  sub_1B07E6190(v15, v16, v17, v19);
  memcpy(__dst, v19, sizeof(__dst));
  if ((__dst[2] & 0xFF00) == 0x200)
  {
    result = MEMORY[0x1E69E5920](a1);
    v8 = 0;
    v9 = 0;
    v10 = 512;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    memcpy(v22, __dst, sizeof(v22));
    sub_1B07CF9DC(LODWORD(v22[0]), v22[1], v22[2] & 0xFF01, v22[3], v22[4], v20);
    v3 = LODWORD(v20[0]);
    v4 = v20[1];
    v6 = v20[3];
    v7 = v20[4];
    memcpy(__b, v20, sizeof(__b));
    v5 = v20[2] & 1 | ((BYTE1(v20[2]) & 1) << 8);
    result = MEMORY[0x1E69E5920](a1);
    v8 = v3;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v12 = v7;
  }

  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = v12;
  return result;
}

uint64_t sub_1B07E67D0(unsigned int a1, int a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v636 = a1;
  v643 = a2;
  v629 = a3;
  v630 = a4;
  v631 = a5;
  v635 = a6;
  v632 = a7;
  v633 = a8;
  v644 = a9;
  v634 = a10;
  v515 = sub_1B074E050;
  v516 = sub_1B07F1F68;
  v517 = sub_1B07F1F80;
  v518 = sub_1B07F2048;
  v519 = sub_1B0394C30;
  v520 = sub_1B0394C24;
  v521 = sub_1B074DFFC;
  v522 = sub_1B039BA88;
  v523 = sub_1B039BB94;
  v524 = sub_1B0394C24;
  v525 = sub_1B039BBA0;
  v526 = sub_1B039BC08;
  v527 = 0x786F626C69616DLL;
  v528 = sub_1B06BA324;
  v529 = sub_1B074E0E4;
  v530 = sub_1B039BCF8;
  v531 = sub_1B07F1F74;
  v532 = sub_1B039BCF8;
  v533 = sub_1B03FB274;
  v534 = sub_1B039BCF8;
  v535 = sub_1B03F7AE0;
  v536 = sub_1B039BC08;
  v537 = sub_1B07F2058;
  v538 = sub_1B039BCF8;
  v539 = sub_1B0398F5C;
  v540 = sub_1B0398F5C;
  v541 = sub_1B0399178;
  v542 = sub_1B0398F5C;
  v543 = sub_1B0398F5C;
  v544 = sub_1B039BA94;
  v545 = sub_1B0398F5C;
  v546 = sub_1B0398F5C;
  v547 = sub_1B0399178;
  v548 = sub_1B0398F5C;
  v549 = sub_1B0398F5C;
  v550 = sub_1B03991EC;
  v551 = sub_1B0398F5C;
  v552 = sub_1B0398F5C;
  v553 = sub_1B03993BC;
  v554 = sub_1B0398F5C;
  v555 = sub_1B0398F5C;
  v556 = sub_1B039BCEC;
  v557 = sub_1B0398F5C;
  v558 = sub_1B0398F5C;
  v559 = sub_1B039BCEC;
  v560 = sub_1B0398F5C;
  v561 = sub_1B0398F5C;
  v562 = sub_1B039BCEC;
  v563 = sub_1B0398F5C;
  v564 = sub_1B0398F5C;
  v565 = sub_1B03991EC;
  v566 = sub_1B0398F5C;
  v567 = sub_1B0398F5C;
  v568 = sub_1B039BCEC;
  v569 = sub_1B074E050;
  v570 = sub_1B07F1F68;
  v571 = sub_1B07F1F80;
  v572 = sub_1B07F2048;
  v573 = sub_1B0394C24;
  v574 = sub_1B074DFFC;
  v575 = sub_1B039BA88;
  v576 = sub_1B0394C24;
  v577 = sub_1B039BBA0;
  v578 = sub_1B039BC08;
  v579 = sub_1B06BA324;
  v580 = sub_1B074E0E4;
  v581 = sub_1B039BCF8;
  v582 = sub_1B07F1F74;
  v583 = sub_1B039BCF8;
  v584 = sub_1B03FB274;
  v585 = sub_1B039BCF8;
  v586 = sub_1B03F7AE0;
  v587 = sub_1B039BC08;
  v588 = sub_1B07F2058;
  v589 = sub_1B039BCF8;
  v590 = sub_1B0398F5C;
  v591 = sub_1B0398F5C;
  v592 = sub_1B0399178;
  v593 = sub_1B0398F5C;
  v594 = sub_1B0398F5C;
  v595 = sub_1B039BA94;
  v596 = sub_1B0398F5C;
  v597 = sub_1B0398F5C;
  v598 = sub_1B0399178;
  v599 = sub_1B0398F5C;
  v600 = sub_1B0398F5C;
  v601 = sub_1B03991EC;
  v602 = sub_1B0398F5C;
  v603 = sub_1B0398F5C;
  v604 = sub_1B03993BC;
  v605 = sub_1B0398F5C;
  v606 = sub_1B0398F5C;
  v607 = sub_1B039BCEC;
  v608 = sub_1B0398F5C;
  v609 = sub_1B0398F5C;
  v610 = sub_1B039BCEC;
  v611 = sub_1B0398F5C;
  v612 = sub_1B0398F5C;
  v613 = sub_1B039BCEC;
  v614 = sub_1B0398F5C;
  v615 = sub_1B0398F5C;
  v616 = sub_1B03991EC;
  v617 = sub_1B0398F5C;
  v618 = sub_1B0398F5C;
  v619 = sub_1B039BCEC;
  v668 = 0;
  v665 = 0;
  v666 = 0;
  v667 = 0;
  v664 = 0;
  v663 = 0;
  v660 = 0;
  v661 = 0;
  v662 = 0;
  v659 = 0;
  v658 = 0;
  v620 = 0;
  v621 = 0;
  v622 = _s6LoggerVMa_1();
  v623 = (*(*(v622 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](0);
  v624 = &v292 - v623;
  v625 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v626 = &v292 - v625;
  v627 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v628 = &v292 - v627;
  v637 = sub_1B0E439A8();
  v638 = *(v637 - 8);
  v639 = v637 - 8;
  v641 = *(v638 + 64);
  v640 = (v641 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x1EEE9AC00](v636);
  v642 = &v292 - v640;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v645 = &v292 - v17;
  v668 = v16 & 1;
  LOBYTE(v665) = v643;
  v666 = v18;
  v667 = v19;
  v664 = v20;
  v663 = v21;
  v660 = v22;
  v661 = v23;
  v662 = v644;
  v659 = v24;
  v658 = v10;
  v646 = v669;
  memcpy(v669, v21, 0xB1uLL);
  if (sub_1B075FACC(v669) == 1)
  {
    (*(v638 + 16))(v642, v634, v637);
    sub_1B074B69C(v634, v628);
    sub_1B074B69C(v628, v626);
    sub_1B074E41C(v628, v624);
    v158 = (v626 + *(v622 + 20));
    v335 = *v158;
    v336 = *(v158 + 1);
    v337 = *(v158 + 1);
    v338 = *(v158 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v626);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v334 = 36;
    v364 = 7;
    v159 = swift_allocObject();
    v160 = v336;
    v161 = v337;
    v162 = v338;
    v344 = v159;
    *(v159 + 16) = v335;
    *(v159 + 20) = v160;
    *(v159 + 24) = v161;
    *(v159 + 32) = v162;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v163 = swift_allocObject();
    v164 = v336;
    v165 = v337;
    v166 = v338;
    v333 = v163;
    *(v163 + 16) = v335;
    *(v163 + 20) = v164;
    *(v163 + 24) = v165;
    *(v163 + 32) = v166;

    v363 = 32;
    v167 = swift_allocObject();
    v168 = v333;
    v348 = v167;
    *(v167 + 16) = v515;
    *(v167 + 24) = v168;
    sub_1B0394868();
    sub_1B0394868();

    v169 = swift_allocObject();
    v170 = v336;
    v171 = v337;
    v172 = v338;
    v173 = v169;
    v174 = v624;
    v351 = v173;
    *(v173 + 16) = v335;
    *(v173 + 20) = v170;
    *(v173 + 24) = v171;
    *(v173 + 32) = v172;
    sub_1B074B764(v174);
    v361 = 17;
    v339 = swift_allocObject();
    v343 = 1;
    *(v339 + 16) = v636 & 1;

    v175 = swift_allocObject();
    v176 = v339;
    v353 = v175;
    *(v175 + 16) = v516;
    *(v175 + 24) = v176;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v177 = swift_allocObject();
    v178 = v629;
    v179 = v630;
    v340 = v177;
    *(v177 + 16) = v643;
    *(v177 + 24) = v178;
    *(v177 + 32) = v179;

    v180 = swift_allocObject();
    v181 = v340;
    v355 = v180;
    *(v180 + 16) = v517;
    *(v180 + 24) = v181;

    v182 = swift_allocObject();
    v183 = v633;
    v358 = v182;
    *(v182 + 16) = v631;
    sub_1B07F200C(v183);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v184 = swift_allocObject();
    v185 = v633;
    v186 = v644;
    v341 = v184;
    v184[2] = v632;
    v184[3] = v185;
    v184[4] = v186;

    v187 = swift_allocObject();
    v188 = v341;
    v365 = v187;
    *(v187 + 16) = v518;
    *(v187 + 24) = v188;

    v400 = sub_1B0E43988();
    v401 = sub_1B0E458E8();
    v367 = swift_allocObject();
    v346 = 16;
    *(v367 + 16) = 16;
    v368 = swift_allocObject();
    v357 = 4;
    *(v368 + 16) = 4;
    v189 = swift_allocObject();
    v342 = v189;
    *(v189 + 16) = v519;
    *(v189 + 24) = 0;
    v190 = swift_allocObject();
    v191 = v342;
    v369 = v190;
    *(v190 + 16) = v520;
    *(v190 + 24) = v191;
    v370 = swift_allocObject();
    *(v370 + 16) = 0;
    v371 = swift_allocObject();
    *(v371 + 16) = v343;
    v192 = swift_allocObject();
    v193 = v344;
    v345 = v192;
    *(v192 + 16) = v521;
    *(v192 + 24) = v193;
    v194 = swift_allocObject();
    v195 = v345;
    v372 = v194;
    *(v194 + 16) = v522;
    *(v194 + 24) = v195;
    v373 = swift_allocObject();
    *(v373 + 16) = v346;
    v374 = swift_allocObject();
    *(v374 + 16) = v357;
    v196 = swift_allocObject();
    v347 = v196;
    *(v196 + 16) = v523;
    *(v196 + 24) = 0;
    v197 = swift_allocObject();
    v198 = v347;
    v375 = v197;
    *(v197 + 16) = v524;
    *(v197 + 24) = v198;
    v376 = swift_allocObject();
    *(v376 + 16) = 0;
    v377 = swift_allocObject();
    *(v377 + 16) = v357;
    v199 = swift_allocObject();
    v200 = v348;
    v349 = v199;
    *(v199 + 16) = v525;
    *(v199 + 24) = v200;
    v201 = swift_allocObject();
    v202 = v349;
    v378 = v201;
    *(v201 + 16) = v526;
    *(v201 + 24) = v202;
    v379 = swift_allocObject();
    *(v379 + 16) = 112;
    v380 = swift_allocObject();
    v362 = 8;
    *(v380 + 16) = 8;
    v350 = swift_allocObject();
    *(v350 + 16) = v527;
    v203 = swift_allocObject();
    v204 = v350;
    v381 = v203;
    *(v203 + 16) = v528;
    *(v203 + 24) = v204;
    v382 = swift_allocObject();
    *(v382 + 16) = 37;
    v383 = swift_allocObject();
    *(v383 + 16) = v362;
    v205 = swift_allocObject();
    v206 = v351;
    v352 = v205;
    *(v205 + 16) = v529;
    *(v205 + 24) = v206;
    v207 = swift_allocObject();
    v208 = v352;
    v384 = v207;
    *(v207 + 16) = v530;
    *(v207 + 24) = v208;
    v385 = swift_allocObject();
    v360 = 34;
    *(v385 + 16) = 34;
    v386 = swift_allocObject();
    *(v386 + 16) = v362;
    v209 = swift_allocObject();
    v210 = v353;
    v354 = v209;
    *(v209 + 16) = v531;
    *(v209 + 24) = v210;
    v211 = swift_allocObject();
    v212 = v354;
    v387 = v211;
    *(v211 + 16) = v532;
    *(v211 + 24) = v212;
    v388 = swift_allocObject();
    *(v388 + 16) = v360;
    v389 = swift_allocObject();
    *(v389 + 16) = v362;
    v213 = swift_allocObject();
    v214 = v355;
    v356 = v213;
    *(v213 + 16) = v533;
    *(v213 + 24) = v214;
    v215 = swift_allocObject();
    v216 = v356;
    v390 = v215;
    *(v215 + 16) = v534;
    *(v215 + 24) = v216;
    v391 = swift_allocObject();
    *(v391 + 16) = 0;
    v392 = swift_allocObject();
    *(v392 + 16) = v357;
    v217 = swift_allocObject();
    v218 = v358;
    v359 = v217;
    *(v217 + 16) = v535;
    *(v217 + 24) = v218;
    v219 = swift_allocObject();
    v220 = v359;
    v393 = v219;
    *(v219 + 16) = v536;
    *(v219 + 24) = v220;
    v394 = swift_allocObject();
    *(v394 + 16) = v360;
    v395 = swift_allocObject();
    *(v395 + 16) = v362;
    v221 = swift_allocObject();
    v222 = v365;
    v366 = v221;
    *(v221 + 16) = v537;
    *(v221 + 24) = v222;
    v223 = swift_allocObject();
    v224 = v366;
    v397 = v223;
    *(v223 + 16) = v538;
    *(v223 + 24) = v224;
    v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v396 = sub_1B0E46A48();
    v398 = v225;

    v226 = v367;
    v227 = v398;
    *v398 = v539;
    v227[1] = v226;

    v228 = v368;
    v229 = v398;
    v398[2] = v540;
    v229[3] = v228;

    v230 = v369;
    v231 = v398;
    v398[4] = v541;
    v231[5] = v230;

    v232 = v370;
    v233 = v398;
    v398[6] = v542;
    v233[7] = v232;

    v234 = v371;
    v235 = v398;
    v398[8] = v543;
    v235[9] = v234;

    v236 = v372;
    v237 = v398;
    v398[10] = v544;
    v237[11] = v236;

    v238 = v373;
    v239 = v398;
    v398[12] = v545;
    v239[13] = v238;

    v240 = v374;
    v241 = v398;
    v398[14] = v546;
    v241[15] = v240;

    v242 = v375;
    v243 = v398;
    v398[16] = v547;
    v243[17] = v242;

    v244 = v376;
    v245 = v398;
    v398[18] = v548;
    v245[19] = v244;

    v246 = v377;
    v247 = v398;
    v398[20] = v549;
    v247[21] = v246;

    v248 = v378;
    v249 = v398;
    v398[22] = v550;
    v249[23] = v248;

    v250 = v379;
    v251 = v398;
    v398[24] = v551;
    v251[25] = v250;

    v252 = v380;
    v253 = v398;
    v398[26] = v552;
    v253[27] = v252;

    v254 = v381;
    v255 = v398;
    v398[28] = v553;
    v255[29] = v254;

    v256 = v382;
    v257 = v398;
    v398[30] = v554;
    v257[31] = v256;

    v258 = v383;
    v259 = v398;
    v398[32] = v555;
    v259[33] = v258;

    v260 = v384;
    v261 = v398;
    v398[34] = v556;
    v261[35] = v260;

    v262 = v385;
    v263 = v398;
    v398[36] = v557;
    v263[37] = v262;

    v264 = v386;
    v265 = v398;
    v398[38] = v558;
    v265[39] = v264;

    v266 = v387;
    v267 = v398;
    v398[40] = v559;
    v267[41] = v266;

    v268 = v388;
    v269 = v398;
    v398[42] = v560;
    v269[43] = v268;

    v270 = v389;
    v271 = v398;
    v398[44] = v561;
    v271[45] = v270;

    v272 = v390;
    v273 = v398;
    v398[46] = v562;
    v273[47] = v272;

    v274 = v391;
    v275 = v398;
    v398[48] = v563;
    v275[49] = v274;

    v276 = v392;
    v277 = v398;
    v398[50] = v564;
    v277[51] = v276;

    v278 = v393;
    v279 = v398;
    v398[52] = v565;
    v279[53] = v278;

    v280 = v394;
    v281 = v398;
    v398[54] = v566;
    v281[55] = v280;

    v282 = v395;
    v283 = v398;
    v398[56] = v567;
    v283[57] = v282;

    v284 = v397;
    v285 = v398;
    v398[58] = v568;
    v285[59] = v284;
    sub_1B0394964();

    if (os_log_type_enabled(v400, v401))
    {
      v286 = v620;
      v326 = sub_1B0E45D78();
      v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v327 = sub_1B03949A8(0);
      v328 = sub_1B03949A8(4);
      v329 = &v657;
      v657 = v326;
      v330 = &v656;
      v656 = v327;
      v331 = &v655;
      v655 = v328;
      sub_1B0394A48(3, &v657);
      sub_1B0394A48(10, v329);
      v653 = v539;
      v654 = v367;
      sub_1B03949FC(&v653, v329, v330, v331);
      v332 = v286;
      if (v286)
      {

        __break(1u);
      }

      else
      {
        v653 = v540;
        v654 = v368;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v324 = 0;
        v653 = v541;
        v654 = v369;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v323 = 0;
        v653 = v542;
        v654 = v370;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v322 = 0;
        v653 = v543;
        v654 = v371;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v321 = 0;
        v653 = v544;
        v654 = v372;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v320 = 0;
        v653 = v545;
        v654 = v373;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v319 = 0;
        v653 = v546;
        v654 = v374;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v318 = 0;
        v653 = v547;
        v654 = v375;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v317 = 0;
        v653 = v548;
        v654 = v376;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v316 = 0;
        v653 = v549;
        v654 = v377;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v315 = 0;
        v653 = v550;
        v654 = v378;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v314 = 0;
        v653 = v551;
        v654 = v379;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v313 = 0;
        v653 = v552;
        v654 = v380;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v312 = 0;
        v653 = v553;
        v654 = v381;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v311 = 0;
        v653 = v554;
        v654 = v382;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v310 = 0;
        v653 = v555;
        v654 = v383;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v309 = 0;
        v653 = v556;
        v654 = v384;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v308 = 0;
        v653 = v557;
        v654 = v385;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v307 = 0;
        v653 = v558;
        v654 = v386;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v306 = 0;
        v653 = v559;
        v654 = v387;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v305 = 0;
        v653 = v560;
        v654 = v388;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v304 = 0;
        v653 = v561;
        v654 = v389;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v303 = 0;
        v653 = v562;
        v654 = v390;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v302 = 0;
        v653 = v563;
        v654 = v391;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v301 = 0;
        v653 = v564;
        v654 = v392;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v300 = 0;
        v653 = v565;
        v654 = v393;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v299 = 0;
        v653 = v566;
        v654 = v394;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v298 = 0;
        v653 = v567;
        v654 = v395;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        v297 = 0;
        v653 = v568;
        v654 = v397;
        sub_1B03949FC(&v653, &v657, &v656, &v655);
        _os_log_impl(&dword_1B0389000, v400, v401, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Failed to parse bodystructure from server. Falling back to downloading complete message. Download pass: %{public}s, user initiated: %{public}s, message size: %u, missing parts: %{public}s", v326, 0x4Fu);
        sub_1B03998A8(v327);
        sub_1B03998A8(v328);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v400);
    (*(v638 + 8))(v642, v637);
    v295 = &type metadata for SectionSpecifier.Part;
    v294 = sub_1B0E46A48();
    v293 = v287;
    v288 = sub_1B0E46A48();
    v289 = SectionSpecifier.Part.init(arrayLiteral:)(v288);
    v290 = v294;
    *v293 = v289;
    sub_1B0394964();
    v296 = v290;
    sub_1B07167A8();
    return sub_1B0E45438();
  }

  else
  {
    memcpy(__dst, v669, 0xB1uLL);
    sub_1B07169CC(__dst, &v652);
    if (BodyStructure.containsMultipartPartWithMissingBoundary.getter())
    {
      (*(v638 + 16))(v645, v634, v637);
      sub_1B074B69C(v634, v628);
      sub_1B074B69C(v628, v626);
      sub_1B074E41C(v628, v624);
      v25 = (v626 + *(v622 + 20));
      v445 = *v25;
      v446 = *(v25 + 1);
      v447 = *(v25 + 1);
      v448 = *(v25 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v626);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v444 = 36;
      v474 = 7;
      v26 = swift_allocObject();
      v27 = v446;
      v28 = v447;
      v29 = v448;
      v454 = v26;
      *(v26 + 16) = v445;
      *(v26 + 20) = v27;
      *(v26 + 24) = v28;
      *(v26 + 32) = v29;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v30 = swift_allocObject();
      v31 = v446;
      v32 = v447;
      v33 = v448;
      v443 = v30;
      *(v30 + 16) = v445;
      *(v30 + 20) = v31;
      *(v30 + 24) = v32;
      *(v30 + 32) = v33;

      v473 = 32;
      v34 = swift_allocObject();
      v35 = v443;
      v458 = v34;
      *(v34 + 16) = v569;
      *(v34 + 24) = v35;
      sub_1B0394868();
      sub_1B0394868();

      v36 = swift_allocObject();
      v37 = v446;
      v38 = v447;
      v39 = v448;
      v40 = v36;
      v41 = v624;
      v461 = v40;
      *(v40 + 16) = v445;
      *(v40 + 20) = v37;
      *(v40 + 24) = v38;
      *(v40 + 32) = v39;
      sub_1B074B764(v41);
      v471 = 17;
      v449 = swift_allocObject();
      v453 = 1;
      *(v449 + 16) = v636 & 1;

      v42 = swift_allocObject();
      v43 = v449;
      v463 = v42;
      *(v42 + 16) = v570;
      *(v42 + 24) = v43;

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v44 = swift_allocObject();
      v45 = v629;
      v46 = v630;
      v450 = v44;
      *(v44 + 16) = v643;
      *(v44 + 24) = v45;
      *(v44 + 32) = v46;

      v47 = swift_allocObject();
      v48 = v450;
      v465 = v47;
      *(v47 + 16) = v571;
      *(v47 + 24) = v48;

      v49 = swift_allocObject();
      v50 = v633;
      v468 = v49;
      *(v49 + 16) = v631;
      sub_1B07F200C(v50);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = swift_allocObject();
      v52 = v633;
      v53 = v644;
      v451 = v51;
      v51[2] = v632;
      v51[3] = v52;
      v51[4] = v53;

      v54 = swift_allocObject();
      v55 = v451;
      v475 = v54;
      *(v54 + 16) = v572;
      *(v54 + 24) = v55;

      v510 = sub_1B0E43988();
      v511 = sub_1B0E458E8();
      v477 = swift_allocObject();
      v456 = 16;
      *(v477 + 16) = 16;
      v478 = swift_allocObject();
      v467 = 4;
      *(v478 + 16) = 4;
      v56 = swift_allocObject();
      v452 = v56;
      *(v56 + 16) = v519;
      *(v56 + 24) = 0;
      v57 = swift_allocObject();
      v58 = v452;
      v479 = v57;
      *(v57 + 16) = v573;
      *(v57 + 24) = v58;
      v480 = swift_allocObject();
      *(v480 + 16) = 0;
      v481 = swift_allocObject();
      *(v481 + 16) = v453;
      v59 = swift_allocObject();
      v60 = v454;
      v455 = v59;
      *(v59 + 16) = v574;
      *(v59 + 24) = v60;
      v61 = swift_allocObject();
      v62 = v455;
      v482 = v61;
      *(v61 + 16) = v575;
      *(v61 + 24) = v62;
      v483 = swift_allocObject();
      *(v483 + 16) = v456;
      v484 = swift_allocObject();
      *(v484 + 16) = v467;
      v63 = swift_allocObject();
      v457 = v63;
      *(v63 + 16) = v523;
      *(v63 + 24) = 0;
      v64 = swift_allocObject();
      v65 = v457;
      v485 = v64;
      *(v64 + 16) = v576;
      *(v64 + 24) = v65;
      v486 = swift_allocObject();
      *(v486 + 16) = 0;
      v487 = swift_allocObject();
      *(v487 + 16) = v467;
      v66 = swift_allocObject();
      v67 = v458;
      v459 = v66;
      *(v66 + 16) = v577;
      *(v66 + 24) = v67;
      v68 = swift_allocObject();
      v69 = v459;
      v488 = v68;
      *(v68 + 16) = v578;
      *(v68 + 24) = v69;
      v489 = swift_allocObject();
      *(v489 + 16) = 112;
      v490 = swift_allocObject();
      v472 = 8;
      *(v490 + 16) = 8;
      v460 = swift_allocObject();
      *(v460 + 16) = v527;
      v70 = swift_allocObject();
      v71 = v460;
      v491 = v70;
      *(v70 + 16) = v579;
      *(v70 + 24) = v71;
      v492 = swift_allocObject();
      *(v492 + 16) = 37;
      v493 = swift_allocObject();
      *(v493 + 16) = v472;
      v72 = swift_allocObject();
      v73 = v461;
      v462 = v72;
      *(v72 + 16) = v580;
      *(v72 + 24) = v73;
      v74 = swift_allocObject();
      v75 = v462;
      v494 = v74;
      *(v74 + 16) = v581;
      *(v74 + 24) = v75;
      v495 = swift_allocObject();
      v470 = 34;
      *(v495 + 16) = 34;
      v496 = swift_allocObject();
      *(v496 + 16) = v472;
      v76 = swift_allocObject();
      v77 = v463;
      v464 = v76;
      *(v76 + 16) = v582;
      *(v76 + 24) = v77;
      v78 = swift_allocObject();
      v79 = v464;
      v497 = v78;
      *(v78 + 16) = v583;
      *(v78 + 24) = v79;
      v498 = swift_allocObject();
      *(v498 + 16) = v470;
      v499 = swift_allocObject();
      *(v499 + 16) = v472;
      v80 = swift_allocObject();
      v81 = v465;
      v466 = v80;
      *(v80 + 16) = v584;
      *(v80 + 24) = v81;
      v82 = swift_allocObject();
      v83 = v466;
      v500 = v82;
      *(v82 + 16) = v585;
      *(v82 + 24) = v83;
      v501 = swift_allocObject();
      *(v501 + 16) = 0;
      v502 = swift_allocObject();
      *(v502 + 16) = v467;
      v84 = swift_allocObject();
      v85 = v468;
      v469 = v84;
      *(v84 + 16) = v586;
      *(v84 + 24) = v85;
      v86 = swift_allocObject();
      v87 = v469;
      v503 = v86;
      *(v86 + 16) = v587;
      *(v86 + 24) = v87;
      v504 = swift_allocObject();
      *(v504 + 16) = v470;
      v505 = swift_allocObject();
      *(v505 + 16) = v472;
      v88 = swift_allocObject();
      v89 = v475;
      v476 = v88;
      *(v88 + 16) = v588;
      *(v88 + 24) = v89;
      v90 = swift_allocObject();
      v91 = v476;
      v507 = v90;
      *(v90 + 16) = v589;
      *(v90 + 24) = v91;
      v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v506 = sub_1B0E46A48();
      v508 = v92;

      v93 = v477;
      v94 = v508;
      *v508 = v590;
      v94[1] = v93;

      v95 = v478;
      v96 = v508;
      v508[2] = v591;
      v96[3] = v95;

      v97 = v479;
      v98 = v508;
      v508[4] = v592;
      v98[5] = v97;

      v99 = v480;
      v100 = v508;
      v508[6] = v593;
      v100[7] = v99;

      v101 = v481;
      v102 = v508;
      v508[8] = v594;
      v102[9] = v101;

      v103 = v482;
      v104 = v508;
      v508[10] = v595;
      v104[11] = v103;

      v105 = v483;
      v106 = v508;
      v508[12] = v596;
      v106[13] = v105;

      v107 = v484;
      v108 = v508;
      v508[14] = v597;
      v108[15] = v107;

      v109 = v485;
      v110 = v508;
      v508[16] = v598;
      v110[17] = v109;

      v111 = v486;
      v112 = v508;
      v508[18] = v599;
      v112[19] = v111;

      v113 = v487;
      v114 = v508;
      v508[20] = v600;
      v114[21] = v113;

      v115 = v488;
      v116 = v508;
      v508[22] = v601;
      v116[23] = v115;

      v117 = v489;
      v118 = v508;
      v508[24] = v602;
      v118[25] = v117;

      v119 = v490;
      v120 = v508;
      v508[26] = v603;
      v120[27] = v119;

      v121 = v491;
      v122 = v508;
      v508[28] = v604;
      v122[29] = v121;

      v123 = v492;
      v124 = v508;
      v508[30] = v605;
      v124[31] = v123;

      v125 = v493;
      v126 = v508;
      v508[32] = v606;
      v126[33] = v125;

      v127 = v494;
      v128 = v508;
      v508[34] = v607;
      v128[35] = v127;

      v129 = v495;
      v130 = v508;
      v508[36] = v608;
      v130[37] = v129;

      v131 = v496;
      v132 = v508;
      v508[38] = v609;
      v132[39] = v131;

      v133 = v497;
      v134 = v508;
      v508[40] = v610;
      v134[41] = v133;

      v135 = v498;
      v136 = v508;
      v508[42] = v611;
      v136[43] = v135;

      v137 = v499;
      v138 = v508;
      v508[44] = v612;
      v138[45] = v137;

      v139 = v500;
      v140 = v508;
      v508[46] = v613;
      v140[47] = v139;

      v141 = v501;
      v142 = v508;
      v508[48] = v614;
      v142[49] = v141;

      v143 = v502;
      v144 = v508;
      v508[50] = v615;
      v144[51] = v143;

      v145 = v503;
      v146 = v508;
      v508[52] = v616;
      v146[53] = v145;

      v147 = v504;
      v148 = v508;
      v508[54] = v617;
      v148[55] = v147;

      v149 = v505;
      v150 = v508;
      v508[56] = v618;
      v150[57] = v149;

      v151 = v507;
      v152 = v508;
      v508[58] = v619;
      v152[59] = v151;
      sub_1B0394964();

      if (os_log_type_enabled(v510, v511))
      {
        v153 = v620;
        v436 = sub_1B0E45D78();
        v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v437 = sub_1B03949A8(0);
        v438 = sub_1B03949A8(4);
        v439 = &v651;
        v651 = v436;
        v440 = &v650;
        v650 = v437;
        v441 = &v649;
        v649 = v438;
        sub_1B0394A48(3, &v651);
        sub_1B0394A48(10, v439);
        v647 = v590;
        v648 = v477;
        sub_1B03949FC(&v647, v439, v440, v441);
        v442 = v153;
        if (v153)
        {

          __break(1u);
        }

        else
        {
          v647 = v591;
          v648 = v478;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v434 = 0;
          v647 = v592;
          v648 = v479;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v433 = 0;
          v647 = v593;
          v648 = v480;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v432 = 0;
          v647 = v594;
          v648 = v481;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v431 = 0;
          v647 = v595;
          v648 = v482;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v430 = 0;
          v647 = v596;
          v648 = v483;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v429 = 0;
          v647 = v597;
          v648 = v484;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v428 = 0;
          v647 = v598;
          v648 = v485;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v427 = 0;
          v647 = v599;
          v648 = v486;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v426 = 0;
          v647 = v600;
          v648 = v487;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v425 = 0;
          v647 = v601;
          v648 = v488;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v424 = 0;
          v647 = v602;
          v648 = v489;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v423 = 0;
          v647 = v603;
          v648 = v490;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v422 = 0;
          v647 = v604;
          v648 = v491;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v421 = 0;
          v647 = v605;
          v648 = v492;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v420 = 0;
          v647 = v606;
          v648 = v493;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v419 = 0;
          v647 = v607;
          v648 = v494;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v418 = 0;
          v647 = v608;
          v648 = v495;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v417 = 0;
          v647 = v609;
          v648 = v496;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v416 = 0;
          v647 = v610;
          v648 = v497;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v415 = 0;
          v647 = v611;
          v648 = v498;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v414 = 0;
          v647 = v612;
          v648 = v499;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v413 = 0;
          v647 = v613;
          v648 = v500;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v412 = 0;
          v647 = v614;
          v648 = v501;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v411 = 0;
          v647 = v615;
          v648 = v502;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v410 = 0;
          v647 = v616;
          v648 = v503;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v409 = 0;
          v647 = v617;
          v648 = v504;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v408 = 0;
          v647 = v618;
          v648 = v505;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          v407 = 0;
          v647 = v619;
          v648 = v507;
          sub_1B03949FC(&v647, &v651, &v650, &v649);
          _os_log_impl(&dword_1B0389000, v510, v511, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] bodystructure is missing boundary info for some or all multipart parts. Download pass: %{public}s, user initiated: %{public}s, message size: %u, missing parts: %{public}s", v436, 0x4Fu);
          sub_1B03998A8(v437);
          sub_1B03998A8(v438);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v510);
      (*(v638 + 8))(v645, v637);
      v404 = &type metadata for SectionSpecifier.Part;
      v403 = sub_1B0E46A48();
      v402 = v154;
      v155 = sub_1B0E46A48();
      v156 = SectionSpecifier.Part.init(arrayLiteral:)(v155);
      v157 = v403;
      *v402 = v156;
      sub_1B0394964();
      v405 = v157;
      sub_1B07167A8();
      v406 = sub_1B0E45438();
      sub_1B075E648(__dst);
      return v406;
    }

    else
    {
      v512 = __dst;
      v513 = sub_1B07EA65C(v636 & 1, v643, v629, v630 & 1, v631, __dst, v632, v633, v644, v634);
      sub_1B075E648(v512);
      return v513;
    }
  }
}

uint64_t sub_1B07EA5B4@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a1;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1B07EA604@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1B07F200C(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a1;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_1B07EA65C(int a1, int a2, uint64_t a3, int a4, unsigned int a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v216 = a1;
  v219 = a2;
  v220 = a3;
  v221 = a4;
  v224 = a5;
  v193 = a6;
  v225 = a7;
  v226 = a8;
  v227 = a9;
  v200 = a10;
  v204 = sub_1B074E050;
  v213 = sub_1B07F2168;
  v217 = sub_1B07F1F68;
  v222 = sub_1B07F1F80;
  v228 = sub_1B07F2048;
  v230 = sub_1B0394C30;
  v231 = sub_1B0394C24;
  v234 = sub_1B074DFFC;
  v236 = sub_1B039BA88;
  v239 = sub_1B039BB94;
  v240 = sub_1B0394C24;
  v242 = sub_1B039BBA0;
  v244 = sub_1B039BC08;
  v247 = sub_1B06BA324;
  v249 = sub_1B074E0E4;
  v251 = sub_1B039BCF8;
  v253 = sub_1B07F2160;
  v255 = sub_1B039BCF8;
  v257 = sub_1B07F2170;
  v259 = sub_1B039BCF8;
  v261 = sub_1B07F1F74;
  v263 = sub_1B039BCF8;
  v265 = sub_1B03FB274;
  v267 = sub_1B039BCF8;
  v270 = sub_1B03F7AE0;
  v272 = sub_1B039BC08;
  v277 = sub_1B07F2058;
  v281 = sub_1B039BCF8;
  v284 = sub_1B0398F5C;
  v286 = sub_1B0398F5C;
  v288 = sub_1B0399178;
  v290 = sub_1B0398F5C;
  v292 = sub_1B0398F5C;
  v294 = sub_1B039BA94;
  v296 = sub_1B0398F5C;
  v298 = sub_1B0398F5C;
  v300 = sub_1B0399178;
  v302 = sub_1B0398F5C;
  v304 = sub_1B0398F5C;
  v306 = sub_1B03991EC;
  v308 = sub_1B0398F5C;
  v310 = sub_1B0398F5C;
  v312 = sub_1B03993BC;
  v314 = sub_1B0398F5C;
  v316 = sub_1B0398F5C;
  v318 = sub_1B039BCEC;
  v320 = sub_1B0398F5C;
  v322 = sub_1B0398F5C;
  v324 = sub_1B039BCEC;
  v326 = sub_1B0398F5C;
  v328 = sub_1B0398F5C;
  v330 = sub_1B039BCEC;
  v332 = sub_1B0398F5C;
  v334 = sub_1B0398F5C;
  v336 = sub_1B039BCEC;
  v338 = sub_1B0398F5C;
  v340 = sub_1B0398F5C;
  v342 = sub_1B039BCEC;
  v344 = sub_1B0398F5C;
  v346 = sub_1B0398F5C;
  v348 = sub_1B03991EC;
  v350 = sub_1B0398F5C;
  v352 = sub_1B0398F5C;
  v355 = sub_1B039BCEC;
  v378 = 0;
  v375 = 0;
  v376 = 0;
  v377 = 0;
  v374 = 0;
  v373 = 0;
  v370 = 0;
  v371 = 0;
  v372 = 0;
  v369 = 0;
  v368 = 0;
  v367 = 0;
  v366 = 0;
  v187 = 0;
  v188 = 0;
  v202 = _s6LoggerVMa_1();
  v189 = (*(*(v202 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](0);
  v210 = v179 - v189;
  v190 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v203 = v179 - v190;
  v191 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13);
  v201 = v179 - v191;
  v199 = sub_1B0E439A8();
  v197 = *(v199 - 8);
  v198 = v199 - 8;
  v15 = (*(v197 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x1EEE9AC00](v220);
  v194 = v179 - v17;
  v233 = 1;
  v215 = 1;
  v378 = v216 & 1;
  LOBYTE(v375) = v18;
  v376 = v16;
  v377 = v19;
  v374 = v20;
  v373 = v21;
  v370 = v22;
  v371 = v23;
  v372 = v227;
  v369 = v24;
  v368 = v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F200C(v226);
  v192 = sub_1B07F3E0C(v226);
  sub_1B07F2124(v226);
  v212 = sub_1B07ED894(v216 & 1, v219, v220, v221 & 1, v192);
  v367 = v212;
  v195 = sub_1B07EDA4C(v212, v224, v193, v219, v220, v221 & 1, v225, v226, v227);
  v25 = sub_1B07166F8();
  v26 = v194;
  v196 = v25;
  sub_1B07167A8();
  v211 = sub_1B0E45418();

  v366 = v211;
  (*(v197 + 16))(v26, v200, v199);
  sub_1B074B69C(v200, v201);
  sub_1B074B69C(v201, v203);
  sub_1B074E41C(v201, v210);
  v27 = (v203 + *(v202 + 20));
  v206 = *v27;
  v207 = *(v27 + 1);
  v208 = *(v27 + 1);
  v209 = *(v27 + 4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B074B764(v203);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v283 = 36;
  v279 = 7;
  v28 = swift_allocObject();
  v29 = v207;
  v30 = v208;
  v31 = v209;
  v235 = v28;
  *(v28 + 16) = v206;
  *(v28 + 20) = v29;
  *(v28 + 24) = v30;
  *(v28 + 32) = v31;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v32 = swift_allocObject();
  v33 = v207;
  v34 = v208;
  v35 = v209;
  v205 = v32;
  *(v32 + 16) = v206;
  *(v32 + 20) = v33;
  *(v32 + 24) = v34;
  *(v32 + 32) = v35;

  v278 = 32;
  v36 = swift_allocObject();
  v37 = v205;
  v243 = v36;
  *(v36 + 16) = v204;
  *(v36 + 24) = v37;
  sub_1B0394868();
  sub_1B0394868();

  v38 = swift_allocObject();
  v39 = v207;
  v40 = v208;
  v41 = v209;
  v42 = v38;
  v43 = v210;
  v250 = v42;
  *(v42 + 16) = v206;
  *(v42 + 20) = v39;
  *(v42 + 24) = v40;
  *(v42 + 32) = v41;
  sub_1B074B764(v43);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v246 = 24;
  v254 = swift_allocObject();
  *(v254 + 16) = v211;
  v275 = 17;
  v214 = swift_allocObject();
  *(v214 + 16) = v212;

  v44 = swift_allocObject();
  v45 = v214;
  v258 = v44;
  *(v44 + 16) = v213;
  *(v44 + 24) = v45;

  v218 = swift_allocObject();
  *(v218 + 16) = v216 & v215;

  v46 = swift_allocObject();
  v47 = v218;
  v262 = v46;
  *(v46 + 16) = v217;
  *(v46 + 24) = v47;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v48 = swift_allocObject();
  v49 = v220;
  v50 = v221;
  v223 = v48;
  *(v48 + 16) = v219;
  *(v48 + 24) = v49;
  *(v48 + 32) = v50;

  v51 = swift_allocObject();
  v52 = v223;
  v266 = v51;
  *(v51 + 16) = v222;
  *(v51 + 24) = v52;

  v53 = swift_allocObject();
  v54 = v226;
  v271 = v53;
  *(v53 + 16) = v224;
  sub_1B07F200C(v54);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = swift_allocObject();
  v56 = v226;
  v57 = v227;
  v229 = v55;
  v55[2] = v225;
  v55[3] = v56;
  v55[4] = v57;

  v58 = swift_allocObject();
  v59 = v229;
  v280 = v58;
  *(v58 + 16) = v228;
  *(v58 + 24) = v59;

  v359 = sub_1B0E43988();
  v360 = sub_1B0E458D8();
  v285 = swift_allocObject();
  v238 = 16;
  *(v285 + 16) = 16;
  v287 = swift_allocObject();
  v269 = 4;
  *(v287 + 16) = 4;
  v60 = swift_allocObject();
  v232 = v60;
  *(v60 + 16) = v230;
  *(v60 + 24) = 0;
  v61 = swift_allocObject();
  v62 = v232;
  v289 = v61;
  *(v61 + 16) = v231;
  *(v61 + 24) = v62;
  v291 = swift_allocObject();
  *(v291 + 16) = 0;
  v293 = swift_allocObject();
  *(v293 + 16) = v233;
  v63 = swift_allocObject();
  v64 = v235;
  v237 = v63;
  *(v63 + 16) = v234;
  *(v63 + 24) = v64;
  v65 = swift_allocObject();
  v66 = v237;
  v295 = v65;
  *(v65 + 16) = v236;
  *(v65 + 24) = v66;
  v297 = swift_allocObject();
  *(v297 + 16) = v238;
  v299 = swift_allocObject();
  *(v299 + 16) = v269;
  v67 = swift_allocObject();
  v241 = v67;
  *(v67 + 16) = v239;
  *(v67 + 24) = 0;
  v68 = swift_allocObject();
  v69 = v241;
  v301 = v68;
  *(v68 + 16) = v240;
  *(v68 + 24) = v69;
  v303 = swift_allocObject();
  *(v303 + 16) = 0;
  v305 = swift_allocObject();
  *(v305 + 16) = v269;
  v70 = swift_allocObject();
  v71 = v243;
  v245 = v70;
  *(v70 + 16) = v242;
  *(v70 + 24) = v71;
  v72 = swift_allocObject();
  v73 = v245;
  v307 = v72;
  *(v72 + 16) = v244;
  *(v72 + 24) = v73;
  v309 = swift_allocObject();
  *(v309 + 16) = 112;
  v311 = swift_allocObject();
  v276 = 8;
  *(v311 + 16) = 8;
  v248 = swift_allocObject();
  *(v248 + 16) = 0x786F626C69616DLL;
  v74 = swift_allocObject();
  v75 = v248;
  v313 = v74;
  *(v74 + 16) = v247;
  *(v74 + 24) = v75;
  v315 = swift_allocObject();
  *(v315 + 16) = 37;
  v317 = swift_allocObject();
  *(v317 + 16) = v276;
  v76 = swift_allocObject();
  v77 = v250;
  v252 = v76;
  *(v76 + 16) = v249;
  *(v76 + 24) = v77;
  v78 = swift_allocObject();
  v79 = v252;
  v319 = v78;
  *(v78 + 16) = v251;
  *(v78 + 24) = v79;
  v321 = swift_allocObject();
  *(v321 + 16) = 32;
  v323 = swift_allocObject();
  *(v323 + 16) = v276;
  v80 = swift_allocObject();
  v81 = v254;
  v256 = v80;
  *(v80 + 16) = v253;
  *(v80 + 24) = v81;
  v82 = swift_allocObject();
  v83 = v256;
  v325 = v82;
  *(v82 + 16) = v255;
  *(v82 + 24) = v83;
  v327 = swift_allocObject();
  v274 = 34;
  *(v327 + 16) = 34;
  v329 = swift_allocObject();
  *(v329 + 16) = v276;
  v84 = swift_allocObject();
  v85 = v258;
  v260 = v84;
  *(v84 + 16) = v257;
  *(v84 + 24) = v85;
  v86 = swift_allocObject();
  v87 = v260;
  v331 = v86;
  *(v86 + 16) = v259;
  *(v86 + 24) = v87;
  v333 = swift_allocObject();
  *(v333 + 16) = v274;
  v335 = swift_allocObject();
  *(v335 + 16) = v276;
  v88 = swift_allocObject();
  v89 = v262;
  v264 = v88;
  *(v88 + 16) = v261;
  *(v88 + 24) = v89;
  v90 = swift_allocObject();
  v91 = v264;
  v337 = v90;
  *(v90 + 16) = v263;
  *(v90 + 24) = v91;
  v339 = swift_allocObject();
  *(v339 + 16) = v274;
  v341 = swift_allocObject();
  *(v341 + 16) = v276;
  v92 = swift_allocObject();
  v93 = v266;
  v268 = v92;
  *(v92 + 16) = v265;
  *(v92 + 24) = v93;
  v94 = swift_allocObject();
  v95 = v268;
  v343 = v94;
  *(v94 + 16) = v267;
  *(v94 + 24) = v95;
  v345 = swift_allocObject();
  *(v345 + 16) = 0;
  v347 = swift_allocObject();
  *(v347 + 16) = v269;
  v96 = swift_allocObject();
  v97 = v271;
  v273 = v96;
  *(v96 + 16) = v270;
  *(v96 + 24) = v97;
  v98 = swift_allocObject();
  v99 = v273;
  v349 = v98;
  *(v98 + 16) = v272;
  *(v98 + 24) = v99;
  v351 = swift_allocObject();
  *(v351 + 16) = v274;
  v353 = swift_allocObject();
  *(v353 + 16) = v276;
  v100 = swift_allocObject();
  v101 = v280;
  v282 = v100;
  *(v100 + 16) = v277;
  *(v100 + 24) = v101;
  v102 = swift_allocObject();
  v103 = v282;
  v356 = v102;
  *(v102 + 16) = v281;
  *(v102 + 24) = v103;
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v354 = sub_1B0E46A48();
  v357 = v104;

  v105 = v285;
  v106 = v357;
  *v357 = v284;
  v106[1] = v105;

  v107 = v287;
  v108 = v357;
  v357[2] = v286;
  v108[3] = v107;

  v109 = v289;
  v110 = v357;
  v357[4] = v288;
  v110[5] = v109;

  v111 = v291;
  v112 = v357;
  v357[6] = v290;
  v112[7] = v111;

  v113 = v293;
  v114 = v357;
  v357[8] = v292;
  v114[9] = v113;

  v115 = v295;
  v116 = v357;
  v357[10] = v294;
  v116[11] = v115;

  v117 = v297;
  v118 = v357;
  v357[12] = v296;
  v118[13] = v117;

  v119 = v299;
  v120 = v357;
  v357[14] = v298;
  v120[15] = v119;

  v121 = v301;
  v122 = v357;
  v357[16] = v300;
  v122[17] = v121;

  v123 = v303;
  v124 = v357;
  v357[18] = v302;
  v124[19] = v123;

  v125 = v305;
  v126 = v357;
  v357[20] = v304;
  v126[21] = v125;

  v127 = v307;
  v128 = v357;
  v357[22] = v306;
  v128[23] = v127;

  v129 = v309;
  v130 = v357;
  v357[24] = v308;
  v130[25] = v129;

  v131 = v311;
  v132 = v357;
  v357[26] = v310;
  v132[27] = v131;

  v133 = v313;
  v134 = v357;
  v357[28] = v312;
  v134[29] = v133;

  v135 = v315;
  v136 = v357;
  v357[30] = v314;
  v136[31] = v135;

  v137 = v317;
  v138 = v357;
  v357[32] = v316;
  v138[33] = v137;

  v139 = v319;
  v140 = v357;
  v357[34] = v318;
  v140[35] = v139;

  v141 = v321;
  v142 = v357;
  v357[36] = v320;
  v142[37] = v141;

  v143 = v323;
  v144 = v357;
  v357[38] = v322;
  v144[39] = v143;

  v145 = v325;
  v146 = v357;
  v357[40] = v324;
  v146[41] = v145;

  v147 = v327;
  v148 = v357;
  v357[42] = v326;
  v148[43] = v147;

  v149 = v329;
  v150 = v357;
  v357[44] = v328;
  v150[45] = v149;

  v151 = v331;
  v152 = v357;
  v357[46] = v330;
  v152[47] = v151;

  v153 = v333;
  v154 = v357;
  v357[48] = v332;
  v154[49] = v153;

  v155 = v335;
  v156 = v357;
  v357[50] = v334;
  v156[51] = v155;

  v157 = v337;
  v158 = v357;
  v357[52] = v336;
  v158[53] = v157;

  v159 = v339;
  v160 = v357;
  v357[54] = v338;
  v160[55] = v159;

  v161 = v341;
  v162 = v357;
  v357[56] = v340;
  v162[57] = v161;

  v163 = v343;
  v164 = v357;
  v357[58] = v342;
  v164[59] = v163;

  v165 = v345;
  v166 = v357;
  v357[60] = v344;
  v166[61] = v165;

  v167 = v347;
  v168 = v357;
  v357[62] = v346;
  v168[63] = v167;

  v169 = v349;
  v170 = v357;
  v357[64] = v348;
  v170[65] = v169;

  v171 = v351;
  v172 = v357;
  v357[66] = v350;
  v172[67] = v171;

  v173 = v353;
  v174 = v357;
  v357[68] = v352;
  v174[69] = v173;

  v175 = v356;
  v176 = v357;
  v357[70] = v355;
  v176[71] = v175;
  sub_1B0394964();

  if (os_log_type_enabled(v359, v360))
  {
    v177 = v187;
    v180 = sub_1B0E45D78();
    v179[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v181 = sub_1B03949A8(0);
    v182 = sub_1B03949A8(6);
    v183 = &v365;
    v365 = v180;
    v184 = &v364;
    v364 = v181;
    v185 = &v363;
    v363 = v182;
    sub_1B0394A48(3, &v365);
    sub_1B0394A48(12, v183);
    v361 = v284;
    v362 = v285;
    sub_1B03949FC(&v361, v183, v184, v185);
    v186 = v177;
    if (v177)
    {

      __break(1u);
    }

    else
    {
      v361 = v286;
      v362 = v287;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[34] = 0;
      v361 = v288;
      v362 = v289;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[33] = 0;
      v361 = v290;
      v362 = v291;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[32] = 0;
      v361 = v292;
      v362 = v293;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[31] = 0;
      v361 = v294;
      v362 = v295;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[30] = 0;
      v361 = v296;
      v362 = v297;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[29] = 0;
      v361 = v298;
      v362 = v299;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[28] = 0;
      v361 = v300;
      v362 = v301;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[27] = 0;
      v361 = v302;
      v362 = v303;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[26] = 0;
      v361 = v304;
      v362 = v305;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[25] = 0;
      v361 = v306;
      v362 = v307;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[24] = 0;
      v361 = v308;
      v362 = v309;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[23] = 0;
      v361 = v310;
      v362 = v311;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[22] = 0;
      v361 = v312;
      v362 = v313;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[21] = 0;
      v361 = v314;
      v362 = v315;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[20] = 0;
      v361 = v316;
      v362 = v317;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[19] = 0;
      v361 = v318;
      v362 = v319;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[18] = 0;
      v361 = v320;
      v362 = v321;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[17] = 0;
      v361 = v322;
      v362 = v323;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[16] = 0;
      v361 = v324;
      v362 = v325;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[15] = 0;
      v361 = v326;
      v362 = v327;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[14] = 0;
      v361 = v328;
      v362 = v329;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[13] = 0;
      v361 = v330;
      v362 = v331;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[12] = 0;
      v361 = v332;
      v362 = v333;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[11] = 0;
      v361 = v334;
      v362 = v335;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[10] = 0;
      v361 = v336;
      v362 = v337;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[9] = 0;
      v361 = v338;
      v362 = v339;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[8] = 0;
      v361 = v340;
      v362 = v341;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[7] = 0;
      v361 = v342;
      v362 = v343;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[6] = 0;
      v361 = v344;
      v362 = v345;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[5] = 0;
      v361 = v346;
      v362 = v347;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[4] = 0;
      v361 = v348;
      v362 = v349;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[3] = 0;
      v361 = v350;
      v362 = v351;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[2] = 0;
      v361 = v352;
      v362 = v353;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      v179[1] = 0;
      v361 = v355;
      v362 = v356;
      sub_1B03949FC(&v361, &v365, &v364, &v363);
      _os_log_impl(&dword_1B0389000, v359, v360, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Will request sections {%s}, plan: %{public}s, download pass: %{public}s, user initiated: %{public}s, message size: %u, missing parts: %{public}s", v180, 0x63u);
      sub_1B03998A8(v181);
      sub_1B03998A8(v182);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v359);
  (*(v197 + 8))(v194, v199);
  return v211;
}

uint64_t sub_1B07ED894(char a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E23F0, &qword_1B0E9C680);
  if (a2 == 2 || (a2 & 1) != 0)
  {
    if (a1)
    {
      if (a5)
      {
        v6 = 2;
        goto LABEL_15;
      }

      if (a2 == 2 || (a2 & 1) != 0)
      {
        v6 = 1;
        goto LABEL_15;
      }

      sub_1B0E46A68();
      __break(1u);
    }

    if (a2 == 2 || (a2 & 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      sub_1B0E46A68();
      __break(1u);
    }
  }

  else
  {
    v6 = 2;
  }

LABEL_15:

  return v6;
}

uint64_t sub_1B07EDA4C(char a1, unsigned int a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a9;
  v33 = v9;
  v15 = sub_1B07EDE90();
  v26 = BodyStructure.partsForHTMLBody(missingParts:additionalParts:)(0, v15);
  v27 = v10;

  v31 = v26;
  v32 = v27;
  sub_1B0E46A48();
  v16 = v11;
  v12 = sub_1B0E46A48();
  *v16 = SectionSpecifier.Part.init(arrayLiteral:)(v12);
  sub_1B0394964();
  sub_1B07167A8();
  sub_1B0E434B8();
  v21 = sub_1B0E434D8();

  v30[184] = v21 & 1;
  sub_1B07169CC(a3, v30);
  sub_1B07F200C(a8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = sub_1B07EDEAC(a3, a7, a8);
  v25 = v13;
  v29 = sub_1B07EDF94(v21 & 1, a1, v9, v26, v27, a2, v24, v13, a7, a8, a9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v28 = sub_1B07EF018(v29, a5, v24, v25);

  return v28;
}

uint64_t sub_1B07EDCEC(uint64_t a1)
{
  v6[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  v1 = sub_1B07F37E8();
  v6[0] = sub_1B039CA88(sub_1B07AA064, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v5);
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v3 = sub_1B0E448E8();

  sub_1B039E440(v6);
  return v3;
}

uint64_t sub_1B07EDEAC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v8 = BodyStructure.singlePartsWithSizes.getter();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = v8;
  v7 = sub_1B07EF85C(v8, a2, a3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v10 = v7;

  sub_1B07F2124(a3);

  sub_1B075E648(a1);
  sub_1B07F22C0(&v9);
  return v8;
}

uint64_t sub_1B07EDF94(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  if (a2)
  {
    if (a2 != 1)
    {
LABEL_8:
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12 = sub_1B07EE6C4(a6, a7, a9, a10, a11);

      return v12;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = sub_1B07EE460(a6, a7, a9, a10, a11);

    return v13;
  }

  else
  {
    if (a1)
    {
      goto LABEL_8;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v14 = sub_1B07EE154(a4, a5, a6, a7, a9, a10, a11);

    return v14;
  }
}

uint64_t sub_1B07EE154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  sub_1B07F200C(a6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a6 > 1 && a7)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07167A8();
    sub_1B07AFA50();
    sub_1B0E45598();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E454B8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    sub_1B07B0968();
    sub_1B0E434C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26E0, &qword_1B0E9C688);
    sub_1B07F22F8();
    v9 = sub_1B0E45598();

    sub_1B07F2124(a6);

    return v9;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26E0, &qword_1B0E9C688);
    sub_1B07167A8();
    sub_1B07F22F8();
    v8 = sub_1B0E45598();
    sub_1B07F2124(a6);

    return v8;
  }
}

uint64_t sub_1B07EE460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07167A8();
    sub_1B07AFA50();
    v10 = sub_1B0E45598();

    return v10;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    sub_1B07F2380();
    sub_1B0E46398();
    v5 = sub_1B07F2408();
    sub_1B039CA88(sub_1B07EF324, 0, v9, &type metadata for SectionSpecifier.Part, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07167A8();
    sub_1B07AFA50();
    v7 = sub_1B0E45598();

    return v7;
  }
}

uint64_t sub_1B07EE6C4(unsigned int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v93 = a5;
  v99 = a4;
  v94 = a3;
  v95 = a2;
  v96 = a1;
  v97 = 0;
  v124[1] = 0;
  v124[0] = 0;
  v123 = 0;
  v122[0] = 0;
  v119 = 0;
  v98 = 0;
  v115 = 0;
  v112 = 0;
  v107 = 0u;
  v106 = 0u;
  v102 = 0;
  v125 = a1;
  v124[5] = a2;
  v124[2] = a3;
  v124[3] = a4;
  v124[4] = a5;
  sub_1B07F200C(a4);
  if (v99 < 2)
  {
    v100 = sub_1B07EF368(v95);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v88 = sub_1B07167A8();
    sub_1B07AFA50();
    v90 = sub_1B0E45598();
    v89 = v90;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v124[0] = v90;
    v91 = v90;
  }

  else
  {
    v92 = v99;
    v84 = v99;
    v123 = v99;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v122[1] = v99;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v83 = sub_1B07167A8();
    sub_1B07AFA50();
    v85 = sub_1B0E45598();
    v86 = v85;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v124[0] = v85;

    v91 = v85;
  }

  v80 = v91;
  v81 = sub_1B07EF490(v94, v99, v93);
  if (v81)
  {
    v79 = v81;
    v75 = v81;
    v102 = v81;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v101 = v81;
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v74 = sub_1B07167A8();
    sub_1B07AFA50();
    v76 = sub_1B0E45598();
    v77 = v76;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v122[0] = v76;

    v78 = v76;
  }

  else
  {
    v121 = sub_1B07EF510(v95);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    v70 = sub_1B07167A8();
    sub_1B07AFA50();
    v72 = sub_1B0E45598();
    v71 = v72;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v122[0] = v72;
    v78 = v72;
  }

  v67 = v78;
  v66 = sub_1B07167A8();
  v68 = sub_1B0E454F8();

  if (v68)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v63 = sub_1B0E454A8();

    v64 = v63 > 10;

    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  v62 = v65;

  if (v65)
  {
    v5 = v98;
    v58 = &type metadata for SectionSpecifier.Part;
    v57 = sub_1B0E46A48();
    v56 = v6;
    v7 = sub_1B0E46A48();
    *v56 = SectionSpecifier.Part.init(arrayLiteral:)(v7);
    sub_1B0394964();
    v59 = sub_1B0E45438();
    sub_1B039E440(v122);
    sub_1B039E440(v124);
    v60 = v59;
    v61 = v5;
    return v60;
  }

  v54 = v122[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v55 = sub_1B0E454A8();

  if (v55 >= 11)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v109 = v122[0];
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    v44 = sub_1B07B0968();
    sub_1B07B09F0();
    v46 = sub_1B0E45078();
    sub_1B039E440(&v109);
    v108 = v46;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
    sub_1B07AFBE8();
    sub_1B0E45738();
    v48 = *(&v110 + 1);
    v52 = v110;
    v49 = v111;
    v106 = v110;
    v107 = v111;
    v50 = v124[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_unknownObjectRetain();
    v103 = v52;
    v104 = v48;
    v105 = v49;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2408, &qword_1B0E9C6A8);
    sub_1B07F2540();
    v53 = sub_1B0E454B8();
    swift_unknownObjectRelease();
    sub_1B039E440(v122);
    sub_1B039E440(v124);
    v60 = v53;
    v61 = v98;
    return v60;
  }

  v38 = v124[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37 = v122[0];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v120 = v122[0];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07B0968();
  v41 = &type metadata for SectionSpecifier.Part;
  v42 = sub_1B0E454B8();
  v40 = v42;
  v119 = v42;
  v43 = sub_1B0E452A8();
  if (sub_1B0E454A8() >= v43)
  {
    v8 = v98;
    v35 = &type metadata for SectionSpecifier.Part;
    v34 = sub_1B0E46A48();
    v33 = v9;
    v10 = sub_1B0E46A48();
    *v33 = SectionSpecifier.Part.init(arrayLiteral:)(v10);
    sub_1B0394964();
    v36 = sub_1B0E45438();

    sub_1B039E440(v122);
    sub_1B039E440(v124);
    v60 = v36;
    v61 = v8;
    return v60;
  }

  v11 = v98;
  v117 = v95;
  v116 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v29 = &v19;
  MEMORY[0x1EEE9AC00](&v19);
  v30 = v18;
  v18[2] = v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  sub_1B07F24B8();
  sub_1B0E44FD8();
  v32 = v11;

  v27 = v118;
  v115 = v118;
  v113 = v96;
  v114 = 0;
  result = v96;
  v28 = v96;
  v26 = v96;
  v24 = v96;
  v112 = v96;
  v14 = __OFADD__(v118, 20000);
  v25 = v118 + 20000;
  if (!v14)
  {
    if (v24 < v25)
    {
      v22 = &type metadata for SectionSpecifier.Part;
      v21 = sub_1B0E46A48();
      v20 = v15;
      v16 = sub_1B0E46A48();
      v17 = SectionSpecifier.Part.init(arrayLiteral:)(v16);
      *v20 = v17;
      sub_1B0394964();
      v23 = sub_1B0E45438();

      sub_1B039E440(v122);
      sub_1B039E440(v124);
      v60 = v23;
    }

    else
    {
      sub_1B039E440(v122);
      sub_1B039E440(v124);
      v60 = v40;
    }

    v61 = v32;
    return v60;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B07EF018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[5] = a1;
  v18[4] = a2;
  v18[2] = a3;
  v18[3] = a4;
  v17 = sub_1B07EF9B0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v17)
  {
    sub_1B07167A8();
    v13 = sub_1B0E454F8() ^ 1;
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  if (v13)
  {
    sub_1B0E46A48();
    v11 = v4;
    v5 = sub_1B0E46A48();
    *v6 = 1;
    sub_1B0394964();
    *v11 = SectionSpecifier.Part.init(arrayLiteral:)(v5);
    sub_1B0394964();
    sub_1B07167A8();
    return sub_1B0E45438();
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v18[1] = a2;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    sub_1B07167A8();
    v9 = sub_1B07B0968();
    v18[0] = sub_1B0E454B8();
    v10 = sub_1B07EFB54(v18, a3, a4, v8, v9);
    sub_1B039E440(v18);
    return v10;
  }
}

uint64_t sub_1B07EF324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v4;
  return result;
}

uint64_t sub_1B07EF368(uint64_t a1)
{
  v7[2] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  sub_1B07F2380();
  v7[0] = sub_1B0E46398();
  v1 = sub_1B07F2408();
  v4 = sub_1B039CA88(sub_1B07EF324, 0, v6, &type metadata for SectionSpecifier.Part, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v3);
  sub_1B039E440(v7);
  return v4;
}

uint64_t sub_1B07EF490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07EF510(uint64_t a1)
{
  v7[2] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  sub_1B07F2380();
  v7[0] = sub_1B0E46398();
  v1 = sub_1B07F2408();
  v4 = sub_1B039CA88(sub_1B07EF324, 0, v6, &type metadata for SectionSpecifier.Part, MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v3);
  sub_1B039E440(v7);
  return v4;
}

uint64_t sub_1B07EF638(void *a1, uint64_t *a2, uint64_t a3)
{
  v11 = 0;
  v10 = 0;
  v12 = a1;
  v7 = *a2;
  v6 = a2[1];
  v11 = a2;
  v10 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = v7;
  sub_1B07167A8();
  v8 = sub_1B0E45528();
  sub_1B039E440(&v9);
  result = v8;
  if (v8)
  {
    if (__OFADD__(*a1, v6))
    {
      __break(1u);
    }

    else
    {
      *a1 += v6;
    }
  }

  return result;
}

BOOL sub_1B07EF710()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F36F8();
  v3 = sub_1B0E45368();

  if (v3)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07167A8();
    v2 = sub_1B0E45478();

    return (v2 & 1) != 0;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B07EF828(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return sub_1B07EF710();
}

uint64_t sub_1B07EF85C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1B07167A8();
  sub_1B0E44588();
  sub_1B07F200C(a3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07F24B8();
  sub_1B0E44FD8();
  sub_1B07F2124(a3);

  return v5;
}

uint64_t sub_1B07EF9B0()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  sub_1B07F2408();
  sub_1B0E45728();
  if (v5 && (, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v4 = sub_1B0E452A8(), , v4 == 1))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v0 = sub_1B0E46A48();
    SectionSpecifier.Part.init(arrayLiteral:)(v0);
    v2 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v5);

    v3 = v2;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

unint64_t sub_1B07EFB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B07EFBD8(a1, a2, a3, a4, a5);
  v8 = sub_1B07F04C0(v9, a2, a3);

  return v8;
}

uint64_t sub_1B07EFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v63 = a5;
  v64 = a4;
  v49 = a3;
  v51 = a2;
  v61 = a1;
  v50 = 0;
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v79 = 0;
  v65 = 0;
  v77[1] = 0;
  v77[0] = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v86 = a4;
  v48 = *(a4 - 8);
  v60 = v48;
  v5 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](0);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  v54 = v53;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v62 = &v15 - v55;
  v56 = &v15 - v55;
  v85 = &v15 - v55;
  v84 = v8;
  v82 = v9;
  v83 = v10;
  v57 = &type metadata for SectionSpecifier.Part;
  v58 = sub_1B0E46A48();
  v59 = sub_1B07167A8();
  v81 = sub_1B0E45438();
  (*(v60 + 16))(v7, v61, v64);
  sub_1B0E44F08();
  for (i = v65; ; i = v18)
  {
    v46 = i;
    swift_getAssociatedConformanceWitness();
    sub_1B0E45E38();
    v47 = v80;
    if (!v80)
    {
      (*(v54 + 8))(v56, AssociatedTypeWitness);
      v16 = v81;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039E440(&v81);
      return v16;
    }

    v45 = v47;
    v43.array._rawValue = v47;
    v79 = v47;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v78[2] = v43.array._rawValue;
    v44 = sub_1B0E45528();

    if (v44 & 1) != 0 || (v41 = v81, _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v78[1] = v43.array._rawValue, v42 = sub_1B0E45528(), , (v42))
    {

      v18 = v46;
      continue;
    }

    v11 = v46;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v78[0] = v51;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = &v15;
    MEMORY[0x1EEE9AC00](&v15);
    v34 = &v15 - 4;
    *(&v15 - 2) = v12;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    v33 = v35;
    sub_1B07F24B8();
    v13 = sub_1B0E45028();
    v37 = v11;
    v38 = v13;
    v39 = v36;
    rawValue = v43.array._rawValue;
    if (v11)
    {
      break;
    }

    v32 = v38;

    sub_1B039E440(v78);
    if (v32)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v67 = v43.array._rawValue;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
      sub_1B0E454D8();

      v31 = v37;
    }

    else
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v76 = v51;
      sub_1B07F2408();
      sub_1B0E45798();
      for (j = v37; ; j = v26)
      {
        v26 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2418, &qword_1B0E9C6B0);
        sub_1B0E46518();
        v27 = v73;
        v28 = v74;
        v29 = v75;
        if (!v73)
        {
          break;
        }

        v23 = v27;
        v24 = v28;
        v25 = v29;
        v21 = v27;
        v70 = v27;
        v71 = v28;
        v72 = v29 & 1;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = SectionSpecifier.Part.isSubPart(of:)(v43);

        if (!v22 || (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), v69 = v21, v19 = &v69, v20 = sub_1B0E45528(), sub_1B039E440(v19), , (v20 & 1) != 0))
        {
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v68 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
          sub_1B0E454D8();
        }
      }

      sub_1B039E440(v77);
      v31 = v26;
    }

    v17 = v31;

    v18 = v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B07F04C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  v69 = a1;
  v68 = 0;
  v96 = 0;
  v95 = 0;
  v73 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v99[3] = a1;
  v99[1] = a2;
  v99[2] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v99[0] = v69;
  v70 = &type metadata for SectionSpecifier.Part;
  v71 = sub_1B0E46A48();
  v72 = sub_1B07167A8();
  v98 = sub_1B0E45438();
  for (i = 0; ; i = v10)
  {
    v63 = i;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    sub_1B0E45548();
    v65 = v97;
    if (!v97)
    {
      v9[0] = v98;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B039E440(&v98);
      sub_1B039E440(v99);
      return v9[0];
    }

    v62 = v65;
    v59 = v65;
    v96 = v65;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v95 = v59;
    v60 = v59;
    for (j = v63; ; j = v19)
    {
      v57 = j;
      v94 = v60;
      v3 = sub_1B0E46A48();
      v93 = SectionSpecifier.Part.init(arrayLiteral:)(v3);
      v58 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v94);
      sub_1B039E440(&v93);
      sub_1B039E440(&v94);
      if (v58)
      {
        break;
      }

      v48 = v95;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      rawValue = SectionSpecifier.Part.dropLast()().array._rawValue;
      v49 = rawValue;

      v91 = rawValue;
      v51 = 0;
      v90 = 0;
      v89 = 0;
      sub_1B07F0B58(rawValue, v67, v66);
      v82 = v85;
      v83 = v86;
      v84 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2420, &qword_1B0E9C6B8);
      sub_1B0E46638();
      v52 = v51;
      v53 = v51;
      v54 = v51;
      v55 = v51;
      for (k = v57; ; k = v26)
      {
        v38 = k;
        v39 = v55;
        v40 = v54;
        v42 = v53;
        v41 = v52;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2428, &qword_1B0E9C6C0);
        sub_1B0E46648();
        v43 = v79;
        v44 = v80;
        result = v81;
        v45 = v81;
        v46 = v41;
        v47 = v42;
        if (!v79)
        {
          break;
        }

        v35 = v43;
        v36 = v44;
        v37 = v45;
        v32 = v44;
        v33 = v43;
        v76 = v43;
        v77 = v44;
        v78 = v45 & 1;
        v5 = __OFADD__(v39, v44);
        v34 = v39 + v44;
        if (v5)
        {
          goto LABEL_30;
        }

        v90 = v34;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v75 = v33;
        v30 = &v75;
        v31 = sub_1B0E45528();
        sub_1B039E440(v30);
        result = v31;
        if (v31)
        {
          v27 = v41;
          v28 = v40;
        }

        else
        {
          v6 = __OFADD__(v40, v32);
          v29 = v40 + v32;
          if (v6)
          {
            goto LABEL_31;
          }

          v89 = v29;
          v27 = v29;
          v28 = v29;
        }

        v25 = v28;
        v24 = v27;
        v26 = v38;

        v52 = v24;
        v53 = v34;
        v54 = v25;
        v55 = v34;
      }

      v22 = v47;
      v21 = v46;
      sub_1B07F2650(v88);
      v23 = v49;
      if (v22 > 499999)
      {
        v18 = v23;
LABEL_24:

        v17 = v38;
        goto LABEL_26;
      }

      v20 = v49;
      if (v21 > 19999)
      {
        v18 = v20;
        goto LABEL_24;
      }

      v19 = v38;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v95 = v49;

      v60 = v49;
    }

    v17 = v57;
LABEL_26:
    v7 = v17;
    v11 = v95;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v92 = v11;
    sub_1B0E454D8();

    v12 = v99[0];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = v9;
    MEMORY[0x1EEE9AC00](v9);
    v9[-2] = &v95;
    v8 = sub_1B0E454C8();
    v14 = v7;
    v15 = v8;
    v16 = v13;
    if (v7)
    {
      break;
    }

    v9[1] = v15;
    v10 = 0;
    sub_1B0E45558();

    sub_1B039E440(&v95);
  }

  result = v16;
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B07F0AEC(uint64_t *a1)
{
  v2 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v2);

  return v3 & 1;
}

uint64_t sub_1B07F0B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[4] = a1;
  v8[2] = a2;
  v8[3] = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
  v3 = sub_1B07F24B8();
  MEMORY[0x1B27270C0](v8, v5, v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(swift_allocObject() + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2430, &qword_1B0E9C6C8);
  sub_1B07F2690();
  sub_1B0E46738();
}

BOOL sub_1B07F0C8C(uint64_t *a1, void **a2)
{
  v3 = *a1;
  of.array._rawValue = *a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = SectionSpecifier.Part.isSubPart(of:)(of);

  return v5;
}

BOOL sub_1B07F0CFC(uint64_t *a1, NIOIMAPCore2::SectionSpecifier::Part a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = SectionSpecifier.Part.isSubPart(of:)(a2);

  return v5;
}

unint64_t sub_1B07F0D60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v13 = 0;
  v21 = a1;
  v11 = *a2;
  v5 = *(a2 + 16);
  v20 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  if (v5)
  {
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (a5)
    {
      v13 = a5;
      v12[1] = a5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v12[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      sub_1B07AFA50();
      sub_1B07F3770();
      v8 = sub_1B0E450A8();
      sub_1B039E440(v12);
      if ((v8 & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
        sub_1B0E454D8();
      }
    }
  }

  else
  {
    sub_1B07F200C(a4);
    if (a4 <= 1)
    {
      return sub_1B07F2124(a4);
    }

    else
    {
      v16 = a4;
      v15[1] = a4;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v15[0] = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
      sub_1B07AFA50();
      sub_1B07F3770();
      v7 = sub_1B0E450A8();
      sub_1B039E440(v15);
      if ((v7 & 1) == 0)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v14 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
        sub_1B0E454D8();
      }
    }
  }

  return result;
}

double sub_1B07F109C(uint64_t a1)
{
  v1 = static MonotonicTime.now()();
  MonotonicTime.seconds(since:)(a1, v1);
  return v2 * 1000.0;
}

uint64_t sub_1B07F1114(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = type metadata accessor for MissingBodyDataRequest();
  result = a2;
  v5 = a1 + v3[5];
  v6 = a2 + v3[5];
  *v6 = *v5;
  *(v6 + 8) = *(v5 + 8);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  return result;
}

uint64_t sub_1B07F11DC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for MissingBodyDataRequest();
  result = a2;
  v5 = a1 + v3[5];
  v6 = a2 + v3[5];
  *v6 = *v5;
  *(v6 + 8) = *(v5 + 8);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  return result;
}

uint64_t sub_1B07F12A4()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D7794(v2);
}

uint64_t sub_1B07F1308()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D77CC(v2);
}

uint64_t sub_1B07F136C()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D785C(v2);
}

uint64_t sub_1B07F13D0()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D7914(v2);
}

uint64_t sub_1B07F1434(uint64_t (*a1)(void))
{
  v6 = a1();
  if ((v6 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    v5[0] = v6;
    v3 = sub_1B07467B8();
    v1 = sub_1B041C1E8();
    BinaryInteger.init<A>(_:)(v5, MEMORY[0x1E69E7668], &type metadata for UID, v3, v1);
    return v5[1];
  }
}

uint64_t sub_1B07F14EC()
{
  v1 = *(type metadata accessor for MissingBodyDataRequest() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07D79E0(v2);
}

uint64_t sub_1B07F15E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MissingBodyDataRequest();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B07404E0(v3, a1);
}

unint64_t sub_1B07F1654()
{
  v2 = qword_1EB6DAE40;
  if (!qword_1EB6DAE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2350, &qword_1B0E9F3D0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F16DC()
{
  v2 = qword_1EB6DB178;
  if (!qword_1EB6DB178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2358, &qword_1B0E9C5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB178);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1764()
{
  v2 = qword_1EB6DA5C8;
  if (!qword_1EB6DA5C8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DA5C8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B07F17C8()
{
  v2 = qword_1EB6DAF70;
  if (!qword_1EB6DAF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2368, &qword_1B0E9C600);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAF70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1850()
{
  v2 = qword_1EB6DAA58;
  if (!qword_1EB6DAA58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAA58);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B07F18B4()
{
  v2 = qword_1EB6DB0D0;
  if (!qword_1EB6DB0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2370, &qword_1B0E9C608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F193C()
{
  v2 = qword_1EB6DB548;
  if (!qword_1EB6DB548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2610, &unk_1B0E9C610);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB548);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F19EC()
{
  v2 = qword_1EB6DB0D8;
  if (!qword_1EB6DB0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2370, &qword_1B0E9C608);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1A74()
{
  v2 = qword_1EB6DAFD0;
  if (!qword_1EB6DAFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E2620, &unk_1B0E9DD90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1AFC()
{
  v2 = qword_1EB6DAB40;
  if (!qword_1EB6DAB40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAB40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B07F1B60()
{
  v2 = qword_1EB6DB4F8;
  if (!qword_1EB6DB4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2380, &qword_1B0E9C628);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1C14()
{
  v2 = qword_1EB6DB788;
  if (!qword_1EB6DB788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2388, &qword_1B0E9C630);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1CC0()
{
  v2 = qword_1EB6DB520;
  if (!qword_1EB6DB520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2398, &qword_1B0E9C640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB520);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1DA0()
{
  v2 = qword_1EB6DB500;
  if (!qword_1EB6DB500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E23A8, &qword_1B0E9C650);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1E28()
{
  v2 = qword_1EB6DB508;
  if (!qword_1EB6DB508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E23C0, &qword_1B0E9C668);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1EE0()
{
  v2 = qword_1EB6DB518;
  if (!qword_1EB6DB518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E23D0, &qword_1B0E9C678);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB518);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F1F94()
{
  v2 = qword_1EB6E23D8;
  if (!qword_1EB6E23D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E23D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F200C(unint64_t result)
{
  if (result > 1)
  {
    return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

uint64_t sub_1B07F2058()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B07F20AC();

  return sub_1B03F7B1C(v4, v3, &unk_1F26C8828, v1);
}

unint64_t sub_1B07F20AC()
{
  v2 = qword_1EB6E23E0;
  if (!qword_1EB6E23E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E23E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2124(unint64_t result)
{
  if (result > 1)
  {
  }

  return result;
}

uint64_t sub_1B07F2170()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1 = sub_1B07F21C8();

  return sub_1B03F7B1C(v4, v3, &unk_1F26C0A00, v1);
}

unint64_t sub_1B07F21C8()
{
  v2 = qword_1EB6E23E8;
  if (!qword_1EB6E23E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E23E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2244()
{
  v2 = qword_1EB6E23F8;
  if (!qword_1EB6E23F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E23F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B07F22C0(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[1];

  return a1;
}

unint64_t sub_1B07F22F8()
{
  v2 = qword_1EB6DC950;
  if (!qword_1EB6DC950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E26E0, &qword_1B0E9C688);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DC950);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2380()
{
  v2 = qword_1EB6DB5F8;
  if (!qword_1EB6DB5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2408()
{
  v2 = qword_1EB6DB600;
  if (!qword_1EB6DB600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB600);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F24B8()
{
  v2 = qword_1EB6DB608;
  if (!qword_1EB6DB608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2400, &qword_1B0E9C6A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2540()
{
  v2 = qword_1EB6E2410;
  if (!qword_1EB6E2410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2408, &qword_1B0E9C6A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2410);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B07F2650(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[3];

  return a1;
}

unint64_t sub_1B07F2690()
{
  v2 = qword_1EB6DA530;
  if (!qword_1EB6DA530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2430, &qword_1B0E9C6C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F2718()
{
  v2 = qword_1EB6E2438;
  if (!qword_1EB6E2438)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2438);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07F27E4()
{
  v3 = sub_1B07F28CC();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B043B29C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B07F28CC()
{
  v4 = qword_1EB6DB180;
  if (!qword_1EB6DB180)
  {
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB180);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07F29B0()
{
  v3 = sub_1B07F2A8C();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B043B29C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B07F2A8C()
{
  v4 = qword_1EB6DB0E0;
  if (!qword_1EB6DB0E0)
  {
    v3 = sub_1B0E45358();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DB0E0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1B07F2B24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v2 = *(a1 + 17) - 2;
      if (v2 < 0)
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

uint64_t sub_1B07F2C1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B07F2E48()
{
  v3 = sub_1B043B29C();
  if (v0 <= 0x3F)
  {
    v3 = sub_1B07F2F30();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1B07F2F30()
{
  v4 = qword_1EB6DACD0;
  if (!qword_1EB6DACD0)
  {
    v3 = sub_1B0E45D88();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB6DACD0);
      return v1;
    }
  }

  return v4;
}

uint64_t get_enum_tag_for_layout_string_7Message24MailboxPersistenceHelperC32checkWithoutCacheForMissingParts4uidsSDy12NIOIMAPCore23UIDVAC0iaJ0VGAF0A13IdentifierSetVyAHG_tF10PartStatusL_O(void *a1)
{
  v2 = -1;
  if (*a1 < 0x100000000uLL)
  {
    v2 = *a1;
  }

  return (v2 + 1);
}

uint64_t sub_1B07F3124(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFC && *(a1 + 8))
    {
      v5 = *a1 + 2147483644;
    }

    else
    {
      v4 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v4 = *a1;
      }

      v2 = v4 - 3;
      if (v4 - 3 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B07F3270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1B07F34CC()
{
  v2 = qword_1EB6E2448;
  if (!qword_1EB6E2448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2420, &qword_1B0E9C6B8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2448);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F356C()
{
  v2 = qword_1EB6E2450;
  if (!qword_1EB6E2450)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2450);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F3600()
{
  v2 = qword_1EB6E2458;
  if (!qword_1EB6E2458)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2458);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F367C()
{
  v2 = qword_1EB6E2460;
  if (!qword_1EB6E2460)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2460);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F36F8()
{
  v2 = qword_1EB6E2468;
  if (!qword_1EB6E2468)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2468);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F3770()
{
  v2 = qword_1EB6DE658;
  if (!qword_1EB6DE658)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DE658);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F37E8()
{
  v2 = qword_1EB6E2470;
  if (!qword_1EB6E2470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2470);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07F3878()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B07F10DC();
}

unint64_t sub_1B07F3914()
{
  v2 = qword_1EB6DB528;
  if (!qword_1EB6DB528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2398, &qword_1B0E9C640);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB528);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07F399C(uint64_t a1)
{
  if (*(a1 + 8) > 1uLL)
  {
    v1 = *(a1 + 8);
  }

  v2 = *(a1 + 16);

  return a1;
}

unint64_t sub_1B07F3A1C()
{
  v2 = qword_1EB6DB7A0;
  if (!qword_1EB6DB7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2440, qword_1B0E9C7F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F3AD0()
{
  v2 = qword_1EB6DB7A8;
  if (!qword_1EB6DB7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E23B8, &qword_1B0E9C660);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB7A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B07F3B58(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  sub_1B07B0B1C(*a1, v4, v5, v6, v7);
  result = a2;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  return result;
}

unint64_t sub_1B07F3C14()
{
  v2 = qword_1EB6DB5B8;
  if (!qword_1EB6DB5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2488, &qword_1B0E9CC28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B07F3CCC()
{
  v2 = qword_1EB6DB5B0;
  if (!qword_1EB6DB5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2498, &qword_1B0E9CC38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB5B0);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B07F3D8C@<X0>(int a1@<W0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  LODWORD(__src[0]) = a1;
  __src[1] = a2;
  LOWORD(__src[2]) = a3 & 0xFF01;
  __src[3] = a4;
  __src[4] = a5;
  __src[5] = a6;
  __src[6] = a7;
  __src[7] = a8;
  return memcpy(a9, __src, 0x40uLL);
}

char *sub_1B07F3E68@<X0>(char *a1@<X8>)
{
  v9 = a1;
  v10 = 0;
  v6 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v3 - v4;
  v10 = &v3 - v4;
  v5 = v11;
  sub_1B07F476C(v11);
  memcpy(v8, v5, 0x2AuLL);
  sub_1B07F4A54(&v8[*(v6 + 20)]);
  v7 = *(v6 + 24);
  v1 = sub_1B041C1E8();
  MessageIdentifierSet.init()(&type metadata for UID, v1);
  return sub_1B08203F4(v8, v9);
}

uint64_t sub_1B07F3F74(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = a1[1];

  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v7;
  v8 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 24) = v8;
  *(a2 + 32) = a1[4];
  *(a2 + 40) = *(a1 + 20);
  v24 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v9 = *(v24 + 20);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);

  v20 = (a2 + v9);
  *v20 = v10;
  v20[1] = v11;
  v12 = *(a1 + v9 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[2] = v12;
  v13 = *(a1 + v9 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[3] = v13;
  v14 = *(a1 + v9 + 32);
  v15 = *(a1 + v9 + 40);

  v20[4] = v14;
  v20[5] = v15;
  v16 = *(a1 + v9 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[6] = v16;
  v17 = *(a1 + v9 + 56);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20[7] = v17;
  v19 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v18 = *(v19 + 24);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v23 = *(*(v22 - 8) + 16);
  v23(a2 + v9 + v18, a1 + v9 + v18);
  v2 = *(v19 + 28);
  v3 = a2 + v9 + v2;
  *v3 = *(a1 + v9 + v2);
  *(v3 + 8) = *(a1 + v9 + v2 + 8);
  (v23)(a2 + *(v24 + 24), a1 + *(v24 + 24), v22);
  return a2;
}

uint64_t _s19CachedMailboxValuesV15MissingBodyDataVMa()
{
  v1 = qword_1EB6DBC30;
  if (!qword_1EB6DBC30)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa()
{
  v1 = qword_1EB6DBC50;
  if (!qword_1EB6DBC50)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1B07F42D4(void *a1)
{
  v5 = a1;
  v3[0] = (*(*(_s19CachedMailboxValuesV15MissingBodyDataVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v5);
  v4 = v3 - v3[0];
  sub_1B07F3F74(v1, v3 - v3[0]);
  sub_1B07F436C(v4, v3[1]);
  return sub_1B07F45A0(v5);
}

uint64_t sub_1B07F436C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  v3 = *(a2 + 8);
  *(a2 + 8) = v2;

  v4 = *(a2 + 16);
  *(a2 + 16) = *(a1 + 16);

  v5 = *(a2 + 24);
  *(a2 + 24) = *(a1 + 24);

  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  v24 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v19 = (a1 + *(v24 + 20));
  v6 = *(v19 + 1);
  v20 = (a2 + *(v24 + 20));
  *v20 = *v19;
  v7 = *(v20 + 1);
  *(v20 + 1) = v6;

  v8 = *(v20 + 2);
  *(v20 + 2) = *(v19 + 2);

  v9 = *(v20 + 3);
  *(v20 + 3) = *(v19 + 3);

  v10 = *(v19 + 5);
  *(v20 + 4) = *(v19 + 4);
  v11 = *(v20 + 5);
  *(v20 + 5) = v10;

  v12 = *(v20 + 6);
  *(v20 + 6) = *(v19 + 6);

  v13 = *(v20 + 7);
  *(v20 + 7) = *(v19 + 7);

  v18 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v17 = *(v18 + 24);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v23 = *(*(v22 - 8) + 40);
  v23(&v20[v17], &v19[v17]);
  v14 = &v19[*(v18 + 28)];
  v15 = &v20[*(v18 + 28)];
  *v15 = *v14;
  *(v15 + 4) = *(v14 + 4);
  (v23)(a2 + *(v24 + 24), a1 + *(v24 + 24), v22);
  return a2;
}

void *sub_1B07F45A0(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  v13 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  v11 = a1 + *(v13 + 20);
  v4 = *(v11 + 1);

  v5 = *(v11 + 2);

  v6 = *(v11 + 3);

  v7 = *(v11 + 5);

  v8 = *(v11 + 6);

  v9 = *(v11 + 7);

  v12 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 24);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v15 = *(*(v14 - 8) + 8);
  v15(&v11[v12]);
  (v15)(a1 + *(v13 + 24), v14);
  return a1;
}

char *sub_1B07F46DC@<X0>(char *a1@<X8>)
{
  v5 = a1;
  v6 = 0;
  v1 = _s19CachedMailboxValuesVMa();
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v3 - v3;
  v6 = &v3 - v3;
  sub_1B07F3E68(&v3 - v3);
  return sub_1B08203F4(v4, v5);
}

uint64_t sub_1B07F476C@<X0>(uint64_t a1@<X8>)
{
  memset(__b, 0, 0x2AuLL);
  sub_1B08207A0();
  v9 = KeyedSequence.init(element:key:)(&unk_1F26C8718, sub_1B07F5164);
  v5 = v1;
  v6 = v2;
  v7 = v3;

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __b[0] = v9;
  __b[1] = v5;
  __b[2] = v6;
  __b[3] = v7;
  __b[4] = 0;
  LOWORD(__b[5]) = 256;
  sub_1B07F4A10(__b);
  result = v9;
  *a1 = v9;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 41) = 1;
  return result;
}

uint64_t sub_1B07F48B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];

  *a2 = v3;
  *(a2 + 8) = v4;
  v5 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 16) = v5;
  v7 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(a2 + 24) = v7;
  *(a2 + 32) = a1[4];
  *(a2 + 40) = *(a1 + 20);
  return result;
}

void *sub_1B07F494C(uint64_t *a1)
{
  sub_1B07F48B4(a1, v4);
  sub_1B07F498C(a1, v2);
  return sub_1B07F4A10(a1);
}

uint64_t sub_1B07F498C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = *a1;
  v3 = *(a2 + 8);
  *(a2 + 8) = v2;

  v4 = *(a2 + 16);
  *(a2 + 16) = *(a1 + 16);

  v5 = *(a2 + 24);
  *(a2 + 24) = *(a1 + 24);

  result = a2;
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  return result;
}

void *sub_1B07F4A10(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[3];

  return a1;
}

char *sub_1B07F4A54@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v25 = 0;
  v22 = sub_1B07F531C;
  v24 = sub_1B07F5164;
  v31 = 0;
  v28 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v21 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28);
  v29 = (&v20 - v21);
  v31 = &v20 - v21;
  v23 = sub_1B08207A0();
  v27 = &type metadata for UID;
  v1 = KeyedSequence.init(element:key:)(&unk_1F26C87A0, v22);
  v2 = v29;
  v4 = v3;
  v5 = v24;
  *v29 = v1;
  v2[1] = v4;
  v2[2] = v6;
  v2[3] = v7;
  v8 = KeyedSequence.init(element:key:)(&unk_1F26C0960, v5);
  v9 = v29;
  v10 = v8;
  v11 = v28;
  v29[4] = v10;
  v9[5] = v12;
  v9[6] = v13;
  v9[7] = v14;
  v26 = *(v11 + 24);
  v15 = sub_1B041C1E8();
  MessageIdentifierSet.init()(v27, v15);
  v16 = v29;
  v17 = v30;
  v18 = v29 + *(v28 + 28);
  *v18 = 0;
  v18[8] = 0;
  v18[9] = 1;
  return sub_1B0824E30(v16, v17);
}

char *sub_1B07F4C24(char *a1, char *a2)
{
  v8 = *a1;
  v9 = *(a1 + 1);

  *a2 = v8;
  *(a2 + 1) = v9;
  v10 = *(a1 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 2) = v10;
  v11 = *(a1 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 3) = v11;
  v12 = *(a1 + 4);
  v13 = *(a1 + 5);

  *(a2 + 4) = v12;
  *(a2 + 5) = v13;
  v14 = *(a1 + 6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 6) = v14;
  v15 = *(a1 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 7) = v15;
  v17 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v16 = *(v17 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v2 - 8) + 16))(&a2[v16], &a1[v16]);
  result = a2;
  v4 = *(v17 + 28);
  v5 = &a1[v4];
  v6 = *&a1[v4];
  v7 = &a2[v4];
  *v7 = *v5;
  *(v7 + 4) = *(v5 + 4);
  return result;
}

char *sub_1B07F4DB0(char *a1)
{
  v7 = a1;
  v5[1] = 0;
  v5[0] = (*(*(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v7);
  v6 = v5 - v5[0];
  sub_1B07F4C24(v2, v5 - v5[0]);
  v3 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  sub_1B07F4E58(v6, (v1 + *(v3 + 20)));
  return sub_1B07F4FB8(v7);
}

char *sub_1B07F4E58(char *a1, char *a2)
{
  v2 = *(a1 + 1);
  *a2 = *a1;
  v3 = *(a2 + 1);
  *(a2 + 1) = v2;

  v4 = *(a2 + 2);
  *(a2 + 2) = *(a1 + 2);

  v5 = *(a2 + 3);
  *(a2 + 3) = *(a1 + 3);

  v6 = *(a1 + 5);
  *(a2 + 4) = *(a1 + 4);
  v7 = *(a2 + 5);
  *(a2 + 5) = v6;

  v8 = *(a2 + 6);
  *(a2 + 6) = *(a1 + 6);

  v9 = *(a2 + 7);
  *(a2 + 7) = *(a1 + 7);

  v15 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v14 = *(v15 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v10 - 8) + 40))(&a2[v14], &a1[v14]);
  result = a2;
  v12 = &a1[*(v15 + 28)];
  v13 = &a2[*(v15 + 28)];
  *v13 = *v12;
  *(v13 + 4) = *(v12 + 4);
  return result;
}

char *sub_1B07F4FB8(char *a1)
{
  v1 = *(a1 + 1);

  v2 = *(a1 + 2);

  v3 = *(a1 + 3);

  v4 = *(a1 + 5);

  v5 = *(a1 + 6);

  v6 = *(a1 + 7);

  v9 = *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  (*(*(v7 - 8) + 8))(&a1[v9]);
  return a1;
}

uint64_t sub_1B07F50B4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  v3 = _s19CachedMailboxValuesV15MissingBodyDataVMa();
  sub_1B074F0FC(v7, v1 + *(v3 + 24));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B07F5164@<X0>(void *__src@<X0>, _DWORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1B07CF88C();
  *a2 = result;
  return result;
}

uint64_t sub_1B07F51B0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07F5210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t sub_1B07F52B4()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 41) & 1;
  return *(v0 + 32);
}

uint64_t sub_1B07F52E8(uint64_t result, __int16 a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  *(v2 + 41) = HIBYTE(a2) & 1;
  return result;
}

uint64_t sub_1B07F531C@<X0>(void *__src@<X0>, _DWORD *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_1B07CF88C();
  *a2 = result;
  return result;
}

uint64_t sub_1B07F5368()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07F53C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = v4[5];
  v8 = v4[6];
  v9 = v4[7];
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

uint64_t sub_1B07F54A4(uint64_t a1)
{
  v8 = a1;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v8);
  v7 = &v5 - v6;
  sub_1B03D08AC(v2, &v5 - v6);
  v3 = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  sub_1B074F0FC(v7, v1 + *(v3 + 24));
  return sub_1B03D09B8(v8);
}

uint64_t sub_1B07F5554()
{
  v1 = (v0 + *(_s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa() + 28));
  result = *v1;
  v3 = v1[1] & 0x1FF;
  return result;
}

uint64_t sub_1B07F55A8(uint64_t a1, __int16 a2)
{
  v6 = a2;
  v7 = HIBYTE(a2);
  result = _s19CachedMailboxValuesV15MissingBodyDataV16MissingSomePartsVMa();
  v4 = v2 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = v6;
  *(v4 + 9) = v7 & 1;
  return result;
}

uint64_t sub_1B07F5614()
{
  v2 = v0[5];
  v3 = v0[7];
  sub_1B07F200C(v0[6]);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B07F5660(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B07F200C(a2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = v3[6];
  v7 = v3[7];
  v3[5] = a1;
  v3[6] = a2;
  v3[7] = a3;
  sub_1B07F2124(v4);

  sub_1B07F2124(a2);
}

BOOL sub_1B07F56D8(uint64_t a1, uint64_t a2)
{
  LOBYTE(v14) = *(a1 + 16) & 1;
  HIBYTE(v14) = *(a1 + 17);
  LOBYTE(v13) = *(a2 + 16) & 1;
  HIBYTE(v13) = *(a2 + 17);
  if (static MessageToDownload.__derived_struct_equals(_:_:)(*a1, *(a1 + 8), v14, *a2, *(a2 + 8), v13))
  {
    if (sub_1B07FF948(*(a1 + 24), *(a2 + 24)))
    {
      if (sub_1B07FF948(*(a1 + 32), *(a2 + 32)))
      {
        v4 = *(a1 + 40);
        v8 = *(a1 + 48);
        v9 = *(a1 + 56);
        sub_1B07F200C(v8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v5 = *(a2 + 40);
        v6 = *(a2 + 48);
        v7 = *(a2 + 56);
        sub_1B07F200C(v6);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v10 = sub_1B07F5C9C(v4, v8, v9, v5, v6, v7);
        sub_1B07F2124(v6);

        sub_1B07F2124(v8);

        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B07F58A8(const void *a1, const void *a2)
{
  memcpy(__dst, a1, sizeof(__dst));
  memcpy(v5, a2, sizeof(v5));
  return sub_1B07F56D8(__dst, v5);
}

unint64_t sub_1B07F593C(unint64_t a1)
{
  sub_1B07F200C(a1);
  v2 = *(v1 + 8);
  *(v1 + 8) = a1;
  sub_1B07F2124(v2);
  return sub_1B07F2124(a1);
}

uint64_t sub_1B07F5978(unint64_t a1, unint64_t a2)
{
  sub_1B07F200C(a1);
  sub_1B07F200C(a2);
  if (!a1)
  {
    if (!a2)
    {
      sub_1B07F2124(0);
      sub_1B07F2124(0);
      v3 = 1;
      return v3 & 1;
    }

LABEL_12:
    sub_1B07F2124(a1);
    sub_1B07F2124(a2);
    v3 = 0;
    return v3 & 1;
  }

  if (a1 == 1)
  {
    if (a2 == 1)
    {
      sub_1B07F2124(1uLL);
      sub_1B07F2124(1uLL);
      v3 = 1;
      return v3 & 1;
    }

    goto LABEL_12;
  }

  if (a2 <= 1)
  {
    goto LABEL_12;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F3770();
  if (sub_1B0E45368())
  {

    sub_1B07F2124(a1);
    sub_1B07F2124(a2);
    v3 = 1;
  }

  else
  {

    sub_1B07F2124(a1);
    sub_1B07F2124(a2);
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1B07F5B3C(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!a1)
  {
    if (!a2)
    {

      v3 = 1;
      return v3 & 1;
    }

LABEL_9:

    v3 = 0;
    return v3 & 1;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F3770();
  if (sub_1B0E45368())
  {

    v3 = 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_1B07F5C9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (sub_1B07FF948(a1, a4))
  {
    sub_1B07F200C(a2);
    sub_1B07F200C(a5);
    v9 = sub_1B07F5978(a2, a5);
    sub_1B07F2124(a5);
    sub_1B07F2124(a2);
    if (v9)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v8 = sub_1B07F5B3C(a3, a6);

      return (v8 & 1) != 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B07F5E48(uint64_t a1, uint64_t *a2)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v12[2] = a1;
  v12[1] = a2;
  v17 = a2[1];
  sub_1B074E7A8(&v17, v12);
  v11[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1A20, &unk_1B0E9B5B0);
  sub_1B07B0968();
  sub_1B0E45378();
  v16 = a2[3];
  sub_1B074E7A8(&v16, v11);
  sub_1B0E45378();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a1);
  v10 = v2;
  v8 = v3;
  v9 = v4;
  sub_1B07F200C(v3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = v10;
  v14 = v8;
  v15 = v9;
  sub_1B074E868(a2);
  sub_1B07F399C(&v13);
  return v10;
}

uint64_t sub_1B07F5F8C(uint64_t a1)
{
  v1318 = MEMORY[0x1EEE9AC00](a1);
  v1320 = v1;
  v1319 = v2;
  v1338 = v3;
  v1337 = v4;
  v1078 = sub_1B074E050;
  v1079 = sub_1B03F7AE0;
  v1080 = sub_1B0394C30;
  v1081 = sub_1B0394C24;
  v1082 = sub_1B074DFFC;
  v1083 = sub_1B039BA88;
  v1084 = sub_1B039BB94;
  v1085 = sub_1B0394C24;
  v1086 = sub_1B039BBA0;
  v1087 = sub_1B039BC08;
  v1088 = 0x786F626C69616DLL;
  v1089 = sub_1B06BA324;
  v1090 = sub_1B074E0E4;
  v1091 = sub_1B039BCF8;
  v1092 = sub_1B07AB020;
  v1093 = sub_1B039BC08;
  v1094 = sub_1B0398F5C;
  v1095 = sub_1B0398F5C;
  v1096 = sub_1B0399178;
  v1097 = sub_1B0398F5C;
  v1098 = sub_1B0398F5C;
  v1099 = sub_1B039BA94;
  v1100 = sub_1B0398F5C;
  v1101 = sub_1B0398F5C;
  v1102 = sub_1B0399178;
  v1103 = sub_1B0398F5C;
  v1104 = sub_1B0398F5C;
  v1105 = sub_1B03991EC;
  v1106 = sub_1B0398F5C;
  v1107 = sub_1B0398F5C;
  v1108 = sub_1B03993BC;
  v1109 = sub_1B0398F5C;
  v1110 = sub_1B0398F5C;
  v1111 = sub_1B039BCEC;
  v1112 = sub_1B0398F5C;
  v1113 = sub_1B0398F5C;
  v1114 = sub_1B03991EC;
  v1115 = sub_1B074E050;
  v1116 = sub_1B03F7AE0;
  v1117 = sub_1B07AD09C;
  v1118 = sub_1B0394C24;
  v1119 = sub_1B074DFFC;
  v1120 = sub_1B039BA88;
  v1121 = sub_1B0394C24;
  v1122 = sub_1B039BBA0;
  v1123 = sub_1B039BC08;
  v1124 = sub_1B06BA324;
  v1125 = sub_1B074E0E4;
  v1126 = sub_1B039BCF8;
  v1127 = sub_1B07AB020;
  v1128 = sub_1B039BC08;
  v1129 = sub_1B0820100;
  v1130 = sub_1B039BCF8;
  v1131 = sub_1B0398F5C;
  v1132 = sub_1B0398F5C;
  v1133 = sub_1B0399178;
  v1134 = sub_1B0398F5C;
  v1135 = sub_1B0398F5C;
  v1136 = sub_1B039BA94;
  v1137 = sub_1B0398F5C;
  v1138 = sub_1B0398F5C;
  v1139 = sub_1B0399178;
  v1140 = sub_1B0398F5C;
  v1141 = sub_1B0398F5C;
  v1142 = sub_1B03991EC;
  v1143 = sub_1B0398F5C;
  v1144 = sub_1B0398F5C;
  v1145 = sub_1B03993BC;
  v1146 = sub_1B0398F5C;
  v1147 = sub_1B0398F5C;
  v1148 = sub_1B039BCEC;
  v1149 = sub_1B0398F5C;
  v1150 = sub_1B0398F5C;
  v1151 = sub_1B03991EC;
  v1152 = sub_1B0398F5C;
  v1153 = sub_1B0398F5C;
  v1154 = sub_1B039BCEC;
  v1155 = sub_1B074E050;
  v1156 = sub_1B03F7AE0;
  v1157 = sub_1B0394C24;
  v1158 = sub_1B074DFFC;
  v1159 = sub_1B039BA88;
  v1160 = sub_1B0394C24;
  v1161 = sub_1B039BBA0;
  v1162 = sub_1B039BC08;
  v1163 = sub_1B06BA324;
  v1164 = sub_1B074E0E4;
  v1165 = sub_1B039BCF8;
  v1166 = sub_1B07AB020;
  v1167 = sub_1B039BC08;
  v1168 = sub_1B0398F5C;
  v1169 = sub_1B0398F5C;
  v1170 = sub_1B0399178;
  v1171 = sub_1B0398F5C;
  v1172 = sub_1B0398F5C;
  v1173 = sub_1B039BA94;
  v1174 = sub_1B0398F5C;
  v1175 = sub_1B0398F5C;
  v1176 = sub_1B0399178;
  v1177 = sub_1B0398F5C;
  v1178 = sub_1B0398F5C;
  v1179 = sub_1B03991EC;
  v1180 = sub_1B0398F5C;
  v1181 = sub_1B0398F5C;
  v1182 = sub_1B03993BC;
  v1183 = sub_1B0398F5C;
  v1184 = sub_1B0398F5C;
  v1185 = sub_1B039BCEC;
  v1186 = sub_1B0398F5C;
  v1187 = sub_1B0398F5C;
  v1188 = sub_1B03991EC;
  v1189 = sub_1B074E050;
  v1190 = sub_1B03F7AE0;
  v1191 = sub_1B07AD09C;
  v1192 = sub_1B07AD09C;
  v1193 = sub_1B0394C24;
  v1194 = sub_1B074DFFC;
  v1195 = sub_1B039BA88;
  v1196 = sub_1B0394C24;
  v1197 = sub_1B039BBA0;
  v1198 = sub_1B039BC08;
  v1199 = sub_1B06BA324;
  v1200 = sub_1B074E0E4;
  v1201 = sub_1B039BCF8;
  v1202 = sub_1B07AB020;
  v1203 = sub_1B039BC08;
  v1204 = sub_1B0820100;
  v1205 = sub_1B039BCF8;
  v1206 = sub_1B0820100;
  v1207 = sub_1B039BCF8;
  v1208 = sub_1B0398F5C;
  v1209 = sub_1B0398F5C;
  v1210 = sub_1B0399178;
  v1211 = sub_1B0398F5C;
  v1212 = sub_1B0398F5C;
  v1213 = sub_1B039BA94;
  v1214 = sub_1B0398F5C;
  v1215 = sub_1B0398F5C;
  v1216 = sub_1B0399178;
  v1217 = sub_1B0398F5C;
  v1218 = sub_1B0398F5C;
  v1219 = sub_1B03991EC;
  v1220 = sub_1B0398F5C;
  v1221 = sub_1B0398F5C;
  v1222 = sub_1B03993BC;
  v1223 = sub_1B0398F5C;
  v1224 = sub_1B0398F5C;
  v1225 = sub_1B039BCEC;
  v1226 = sub_1B0398F5C;
  v1227 = sub_1B0398F5C;
  v1228 = sub_1B03991EC;
  v1229 = sub_1B0398F5C;
  v1230 = sub_1B0398F5C;
  v1231 = sub_1B039BCEC;
  v1232 = sub_1B0398F5C;
  v1233 = sub_1B0398F5C;
  v1234 = sub_1B039BCEC;
  v1235 = sub_1B074E050;
  v1236 = sub_1B03F7AE0;
  v1237 = sub_1B0394C24;
  v1238 = sub_1B074DFFC;
  v1239 = sub_1B039BA88;
  v1240 = sub_1B0394C24;
  v1241 = sub_1B039BBA0;
  v1242 = sub_1B039BC08;
  v1243 = sub_1B06BA324;
  v1244 = sub_1B074E0E4;
  v1245 = sub_1B039BCF8;
  v1246 = sub_1B07AB020;
  v1247 = sub_1B039BC08;
  v1248 = sub_1B0398F5C;
  v1249 = sub_1B0398F5C;
  v1250 = sub_1B0399178;
  v1251 = sub_1B0398F5C;
  v1252 = sub_1B0398F5C;
  v1253 = sub_1B039BA94;
  v1254 = sub_1B0398F5C;
  v1255 = sub_1B0398F5C;
  v1256 = sub_1B0399178;
  v1257 = sub_1B0398F5C;
  v1258 = sub_1B0398F5C;
  v1259 = sub_1B03991EC;
  v1260 = sub_1B0398F5C;
  v1261 = sub_1B0398F5C;
  v1262 = sub_1B03993BC;
  v1263 = sub_1B0398F5C;
  v1264 = sub_1B0398F5C;
  v1265 = sub_1B039BCEC;
  v1266 = sub_1B0398F5C;
  v1267 = sub_1B0398F5C;
  v1268 = sub_1B03991EC;
  v1269 = sub_1B074E050;
  v1270 = sub_1B03F7AE0;
  v1271 = sub_1B07AD09C;
  v1272 = sub_1B0394C24;
  v1273 = sub_1B074DFFC;
  v1274 = sub_1B039BA88;
  v1275 = sub_1B0394C24;
  v1276 = sub_1B039BBA0;
  v1277 = sub_1B039BC08;
  v1278 = sub_1B06BA324;
  v1279 = sub_1B074E0E4;
  v1280 = sub_1B039BCF8;
  v1281 = sub_1B07AB020;
  v1282 = sub_1B039BC08;
  v1283 = sub_1B0820100;
  v1284 = sub_1B039BCF8;
  v1285 = sub_1B0398F5C;
  v1286 = sub_1B0398F5C;
  v1287 = sub_1B0399178;
  v1288 = sub_1B0398F5C;
  v1289 = sub_1B0398F5C;
  v1290 = sub_1B039BA94;
  v1291 = sub_1B0398F5C;
  v1292 = sub_1B0398F5C;
  v1293 = sub_1B0399178;
  v1294 = sub_1B0398F5C;
  v1295 = sub_1B0398F5C;
  v1296 = sub_1B03991EC;
  v1297 = sub_1B0398F5C;
  v1298 = sub_1B0398F5C;
  v1299 = sub_1B03993BC;
  v1300 = sub_1B0398F5C;
  v1301 = sub_1B0398F5C;
  v1302 = sub_1B039BCEC;
  v1303 = sub_1B0398F5C;
  v1304 = sub_1B0398F5C;
  v1305 = sub_1B03991EC;
  v1306 = sub_1B0398F5C;
  v1307 = sub_1B0398F5C;
  v1308 = sub_1B039BCEC;
  v1378 = 0;
  v1377 = 0;
  v1374 = 0;
  v1375 = 0;
  v1376 = 0;
  v1373 = 0;
  v1372 = 0;
  v1309 = 0;
  v1360 = 0;
  v1354 = 0;
  v1310 = 0;
  v1311 = _s6LoggerVMa_1();
  v1312 = (*(*(v1311 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v1313 = v590 - v1312;
  v1314 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v1315 = v590 - v1314;
  v1316 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v1317 = v590 - v1316;
  v1321 = sub_1B0E439A8();
  v1322 = *(v1321 - 8);
  v1323 = v1321 - 8;
  v1333 = *(v1322 + 64);
  v1324 = (v1333 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v1338);
  v1325 = v590 - v1324;
  v1326 = (v1333 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v1327 = v590 - v1326;
  v1328 = (v1333 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v1329 = v590 - v1328;
  v1330 = (v1333 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v1331 = v590 - v1330;
  v1332 = (v1333 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v1334 = v590 - v1332;
  v1335 = (v1333 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v1336 = v590 - v1335;
  v1378 = v15;
  v1377 = v16;
  v1374 = v17;
  v1375 = v14;
  v1376 = v18;
  sub_1B07F200C(v14);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (v1338)
  {
    if (v1338 == 1)
    {
      (*(v1322 + 16))(v1336, v1320, v1321);
      sub_1B074B69C(v1320, v1317);
      sub_1B074B69C(v1317, v1315);
      sub_1B074E41C(v1317, v1313);
      v19 = (v1315 + *(v1311 + 20));
      v1029 = *v19;
      v1030 = *(v19 + 1);
      v1031 = *(v19 + 1);
      v1032 = *(v19 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v1315);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v1028 = 36;
      v1048 = 7;
      v20 = swift_allocObject();
      v21 = v1030;
      v22 = v1031;
      v23 = v1032;
      v1035 = v20;
      *(v20 + 16) = v1029;
      *(v20 + 20) = v21;
      *(v20 + 24) = v22;
      *(v20 + 32) = v23;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v24 = swift_allocObject();
      v25 = v1030;
      v26 = v1031;
      v27 = v1032;
      v1027 = v24;
      *(v24 + 16) = v1029;
      *(v24 + 20) = v25;
      *(v24 + 24) = v26;
      *(v24 + 32) = v27;

      v1047 = 32;
      v28 = swift_allocObject();
      v29 = v1027;
      v1039 = v28;
      *(v28 + 16) = v1078;
      *(v28 + 24) = v29;
      sub_1B0394868();
      sub_1B0394868();

      v30 = swift_allocObject();
      v31 = v1030;
      v32 = v1031;
      v33 = v1032;
      v34 = v30;
      v35 = v1313;
      v1043 = v34;
      *(v34 + 16) = v1029;
      *(v34 + 20) = v31;
      *(v34 + 24) = v32;
      *(v34 + 32) = v33;
      sub_1B074B764(v35);
      v1033 = swift_allocObject();
      *(v1033 + 16) = v1318;

      v36 = swift_allocObject();
      v37 = v1033;
      v1049 = v36;
      *(v36 + 16) = v1079;
      *(v36 + 24) = v37;

      v1075 = sub_1B0E43988();
      v1076 = sub_1B0E45908();
      v1045 = 17;
      v1051 = swift_allocObject();
      v1037 = 16;
      *(v1051 + 16) = 16;
      v1052 = swift_allocObject();
      v1046 = 4;
      *(v1052 + 16) = 4;
      v38 = swift_allocObject();
      v1034 = v38;
      *(v38 + 16) = v1080;
      *(v38 + 24) = 0;
      v39 = swift_allocObject();
      v40 = v1034;
      v1053 = v39;
      *(v39 + 16) = v1081;
      *(v39 + 24) = v40;
      v1054 = swift_allocObject();
      *(v1054 + 16) = 0;
      v1055 = swift_allocObject();
      *(v1055 + 16) = 1;
      v41 = swift_allocObject();
      v42 = v1035;
      v1036 = v41;
      *(v41 + 16) = v1082;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v1036;
      v1056 = v43;
      *(v43 + 16) = v1083;
      *(v43 + 24) = v44;
      v1057 = swift_allocObject();
      *(v1057 + 16) = v1037;
      v1058 = swift_allocObject();
      *(v1058 + 16) = v1046;
      v45 = swift_allocObject();
      v1038 = v45;
      *(v45 + 16) = v1084;
      *(v45 + 24) = 0;
      v46 = swift_allocObject();
      v47 = v1038;
      v1059 = v46;
      *(v46 + 16) = v1085;
      *(v46 + 24) = v47;
      v1060 = swift_allocObject();
      *(v1060 + 16) = 0;
      v1061 = swift_allocObject();
      *(v1061 + 16) = v1046;
      v48 = swift_allocObject();
      v49 = v1039;
      v1040 = v48;
      *(v48 + 16) = v1086;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v1040;
      v1062 = v50;
      *(v50 + 16) = v1087;
      *(v50 + 24) = v51;
      v1063 = swift_allocObject();
      *(v1063 + 16) = 112;
      v1064 = swift_allocObject();
      v1042 = 8;
      *(v1064 + 16) = 8;
      v1041 = swift_allocObject();
      *(v1041 + 16) = v1088;
      v52 = swift_allocObject();
      v53 = v1041;
      v1065 = v52;
      *(v52 + 16) = v1089;
      *(v52 + 24) = v53;
      v1066 = swift_allocObject();
      *(v1066 + 16) = 37;
      v1067 = swift_allocObject();
      *(v1067 + 16) = v1042;
      v54 = swift_allocObject();
      v55 = v1043;
      v1044 = v54;
      *(v54 + 16) = v1090;
      *(v54 + 24) = v55;
      v56 = swift_allocObject();
      v57 = v1044;
      v1068 = v56;
      *(v56 + 16) = v1091;
      *(v56 + 24) = v57;
      v1069 = swift_allocObject();
      *(v1069 + 16) = 0;
      v1070 = swift_allocObject();
      *(v1070 + 16) = v1046;
      v58 = swift_allocObject();
      v59 = v1049;
      v1050 = v58;
      *(v58 + 16) = v1092;
      *(v58 + 24) = v59;
      v60 = swift_allocObject();
      v61 = v1050;
      v1072 = v60;
      *(v60 + 16) = v1093;
      *(v60 + 24) = v61;
      v1074 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v1071 = sub_1B0E46A48();
      v1073 = v62;

      v63 = v1051;
      v64 = v1073;
      *v1073 = v1094;
      v64[1] = v63;

      v65 = v1052;
      v66 = v1073;
      v1073[2] = v1095;
      v66[3] = v65;

      v67 = v1053;
      v68 = v1073;
      v1073[4] = v1096;
      v68[5] = v67;

      v69 = v1054;
      v70 = v1073;
      v1073[6] = v1097;
      v70[7] = v69;

      v71 = v1055;
      v72 = v1073;
      v1073[8] = v1098;
      v72[9] = v71;

      v73 = v1056;
      v74 = v1073;
      v1073[10] = v1099;
      v74[11] = v73;

      v75 = v1057;
      v76 = v1073;
      v1073[12] = v1100;
      v76[13] = v75;

      v77 = v1058;
      v78 = v1073;
      v1073[14] = v1101;
      v78[15] = v77;

      v79 = v1059;
      v80 = v1073;
      v1073[16] = v1102;
      v80[17] = v79;

      v81 = v1060;
      v82 = v1073;
      v1073[18] = v1103;
      v82[19] = v81;

      v83 = v1061;
      v84 = v1073;
      v1073[20] = v1104;
      v84[21] = v83;

      v85 = v1062;
      v86 = v1073;
      v1073[22] = v1105;
      v86[23] = v85;

      v87 = v1063;
      v88 = v1073;
      v1073[24] = v1106;
      v88[25] = v87;

      v89 = v1064;
      v90 = v1073;
      v1073[26] = v1107;
      v90[27] = v89;

      v91 = v1065;
      v92 = v1073;
      v1073[28] = v1108;
      v92[29] = v91;

      v93 = v1066;
      v94 = v1073;
      v1073[30] = v1109;
      v94[31] = v93;

      v95 = v1067;
      v96 = v1073;
      v1073[32] = v1110;
      v96[33] = v95;

      v97 = v1068;
      v98 = v1073;
      v1073[34] = v1111;
      v98[35] = v97;

      v99 = v1069;
      v100 = v1073;
      v1073[36] = v1112;
      v100[37] = v99;

      v101 = v1070;
      v102 = v1073;
      v1073[38] = v1113;
      v102[39] = v101;

      v103 = v1072;
      v104 = v1073;
      v1073[40] = v1114;
      v104[41] = v103;
      sub_1B0394964();

      if (os_log_type_enabled(v1075, v1076))
      {
        v105 = v1309;
        v1020 = sub_1B0E45D78();
        v1019 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v1021 = sub_1B03949A8(0);
        v1022 = sub_1B03949A8(1);
        v1023 = &v1343;
        v1343 = v1020;
        v1024 = &v1342;
        v1342 = v1021;
        v1025 = &v1341;
        v1341 = v1022;
        sub_1B0394A48(3, &v1343);
        sub_1B0394A48(7, v1023);
        v1339 = v1094;
        v1340 = v1051;
        sub_1B03949FC(&v1339, v1023, v1024, v1025);
        v1026 = v105;
        if (v105)
        {

          __break(1u);
        }

        else
        {
          v1339 = v1095;
          v1340 = v1052;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1018 = 0;
          v1339 = v1096;
          v1340 = v1053;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1017 = 0;
          v1339 = v1097;
          v1340 = v1054;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1016 = 0;
          v1339 = v1098;
          v1340 = v1055;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1015 = 0;
          v1339 = v1099;
          v1340 = v1056;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1014 = 0;
          v1339 = v1100;
          v1340 = v1057;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1013 = 0;
          v1339 = v1101;
          v1340 = v1058;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1012 = 0;
          v1339 = v1102;
          v1340 = v1059;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1011 = 0;
          v1339 = v1103;
          v1340 = v1060;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1010 = 0;
          v1339 = v1104;
          v1340 = v1061;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1009 = 0;
          v1339 = v1105;
          v1340 = v1062;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1008 = 0;
          v1339 = v1106;
          v1340 = v1063;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1007 = 0;
          v1339 = v1107;
          v1340 = v1064;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1006 = 0;
          v1339 = v1108;
          v1340 = v1065;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1005 = 0;
          v1339 = v1109;
          v1340 = v1066;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1004 = 0;
          v1339 = v1110;
          v1340 = v1067;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1003 = 0;
          v1339 = v1111;
          v1340 = v1068;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1002 = 0;
          v1339 = v1112;
          v1340 = v1069;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1001 = 0;
          v1339 = v1113;
          v1340 = v1070;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          v1000 = 0;
          v1339 = v1114;
          v1340 = v1072;
          sub_1B03949FC(&v1339, &v1343, &v1342, &v1341);
          _os_log_impl(&dword_1B0389000, v1075, v1076, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: All parts are missing.", v1020, 0x31u);
          sub_1B03998A8(v1021);
          sub_1B03998A8(v1022);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v1075);
      (*(v1322 + 8))(v1336, v1321);
    }

    else
    {
      v1077 = v1338;
      v833 = v1077;
      if (v1337)
      {
        v832 = v1337;
        v743 = v1337;
        v1373 = v833;
        v1372 = v1337;
        v1371[1] = v833;
        v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26D0, &unk_1B0E9C690);
        v742 = sub_1B07AFBE8();
        v744 = sub_1B0E45748();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v744)
        {
          v1361 = v743;
          v740 = sub_1B0E45748();
        }

        else
        {
          v740 = 0;
        }

        v739 = v740;

        if (v739)
        {
          (*(v1322 + 16))(v1327, v1320, v1321);
          sub_1B074B69C(v1320, v1317);
          sub_1B074B69C(v1317, v1315);
          sub_1B074E41C(v1317, v1313);
          v392 = (v1315 + *(v1311 + 20));
          v691 = *v392;
          v692 = *(v392 + 1);
          v693 = *(v392 + 1);
          v694 = *(v392 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B074B764(v1315);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v690 = 36;
          v710 = 7;
          v393 = swift_allocObject();
          v394 = v692;
          v395 = v693;
          v396 = v694;
          v697 = v393;
          *(v393 + 16) = v691;
          *(v393 + 20) = v394;
          *(v393 + 24) = v395;
          *(v393 + 32) = v396;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v397 = swift_allocObject();
          v398 = v692;
          v399 = v693;
          v400 = v694;
          v689 = v397;
          *(v397 + 16) = v691;
          *(v397 + 20) = v398;
          *(v397 + 24) = v399;
          *(v397 + 32) = v400;

          v709 = 32;
          v401 = swift_allocObject();
          v402 = v689;
          v701 = v401;
          *(v401 + 16) = v1235;
          *(v401 + 24) = v402;
          sub_1B0394868();
          sub_1B0394868();

          v403 = swift_allocObject();
          v404 = v692;
          v405 = v693;
          v406 = v694;
          v407 = v403;
          v408 = v1313;
          v705 = v407;
          *(v407 + 16) = v691;
          *(v407 + 20) = v404;
          *(v407 + 24) = v405;
          *(v407 + 32) = v406;
          sub_1B074B764(v408);
          v695 = swift_allocObject();
          *(v695 + 16) = v1318;

          v409 = swift_allocObject();
          v410 = v695;
          v711 = v409;
          *(v409 + 16) = v1236;
          *(v409 + 24) = v410;

          v737 = sub_1B0E43988();
          v738 = sub_1B0E45908();
          v707 = 17;
          v713 = swift_allocObject();
          v699 = 16;
          *(v713 + 16) = 16;
          v714 = swift_allocObject();
          v708 = 4;
          *(v714 + 16) = 4;
          v411 = swift_allocObject();
          v696 = v411;
          *(v411 + 16) = v1080;
          *(v411 + 24) = 0;
          v412 = swift_allocObject();
          v413 = v696;
          v715 = v412;
          *(v412 + 16) = v1237;
          *(v412 + 24) = v413;
          v716 = swift_allocObject();
          *(v716 + 16) = 0;
          v717 = swift_allocObject();
          *(v717 + 16) = 1;
          v414 = swift_allocObject();
          v415 = v697;
          v698 = v414;
          *(v414 + 16) = v1238;
          *(v414 + 24) = v415;
          v416 = swift_allocObject();
          v417 = v698;
          v718 = v416;
          *(v416 + 16) = v1239;
          *(v416 + 24) = v417;
          v719 = swift_allocObject();
          *(v719 + 16) = v699;
          v720 = swift_allocObject();
          *(v720 + 16) = v708;
          v418 = swift_allocObject();
          v700 = v418;
          *(v418 + 16) = v1084;
          *(v418 + 24) = 0;
          v419 = swift_allocObject();
          v420 = v700;
          v721 = v419;
          *(v419 + 16) = v1240;
          *(v419 + 24) = v420;
          v722 = swift_allocObject();
          *(v722 + 16) = 0;
          v723 = swift_allocObject();
          *(v723 + 16) = v708;
          v421 = swift_allocObject();
          v422 = v701;
          v702 = v421;
          *(v421 + 16) = v1241;
          *(v421 + 24) = v422;
          v423 = swift_allocObject();
          v424 = v702;
          v724 = v423;
          *(v423 + 16) = v1242;
          *(v423 + 24) = v424;
          v725 = swift_allocObject();
          *(v725 + 16) = 112;
          v726 = swift_allocObject();
          v704 = 8;
          *(v726 + 16) = 8;
          v703 = swift_allocObject();
          *(v703 + 16) = v1088;
          v425 = swift_allocObject();
          v426 = v703;
          v727 = v425;
          *(v425 + 16) = v1243;
          *(v425 + 24) = v426;
          v728 = swift_allocObject();
          *(v728 + 16) = 37;
          v729 = swift_allocObject();
          *(v729 + 16) = v704;
          v427 = swift_allocObject();
          v428 = v705;
          v706 = v427;
          *(v427 + 16) = v1244;
          *(v427 + 24) = v428;
          v429 = swift_allocObject();
          v430 = v706;
          v730 = v429;
          *(v429 + 16) = v1245;
          *(v429 + 24) = v430;
          v731 = swift_allocObject();
          *(v731 + 16) = 0;
          v732 = swift_allocObject();
          *(v732 + 16) = v708;
          v431 = swift_allocObject();
          v432 = v711;
          v712 = v431;
          *(v431 + 16) = v1246;
          *(v431 + 24) = v432;
          v433 = swift_allocObject();
          v434 = v712;
          v734 = v433;
          *(v433 + 16) = v1247;
          *(v433 + 24) = v434;
          v736 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v733 = sub_1B0E46A48();
          v735 = v435;

          v436 = v713;
          v437 = v735;
          *v735 = v1248;
          v437[1] = v436;

          v438 = v714;
          v439 = v735;
          v735[2] = v1249;
          v439[3] = v438;

          v440 = v715;
          v441 = v735;
          v735[4] = v1250;
          v441[5] = v440;

          v442 = v716;
          v443 = v735;
          v735[6] = v1251;
          v443[7] = v442;

          v444 = v717;
          v445 = v735;
          v735[8] = v1252;
          v445[9] = v444;

          v446 = v718;
          v447 = v735;
          v735[10] = v1253;
          v447[11] = v446;

          v448 = v719;
          v449 = v735;
          v735[12] = v1254;
          v449[13] = v448;

          v450 = v720;
          v451 = v735;
          v735[14] = v1255;
          v451[15] = v450;

          v452 = v721;
          v453 = v735;
          v735[16] = v1256;
          v453[17] = v452;

          v454 = v722;
          v455 = v735;
          v735[18] = v1257;
          v455[19] = v454;

          v456 = v723;
          v457 = v735;
          v735[20] = v1258;
          v457[21] = v456;

          v458 = v724;
          v459 = v735;
          v735[22] = v1259;
          v459[23] = v458;

          v460 = v725;
          v461 = v735;
          v735[24] = v1260;
          v461[25] = v460;

          v462 = v726;
          v463 = v735;
          v735[26] = v1261;
          v463[27] = v462;

          v464 = v727;
          v465 = v735;
          v735[28] = v1262;
          v465[29] = v464;

          v466 = v728;
          v467 = v735;
          v735[30] = v1263;
          v467[31] = v466;

          v468 = v729;
          v469 = v735;
          v735[32] = v1264;
          v469[33] = v468;

          v470 = v730;
          v471 = v735;
          v735[34] = v1265;
          v471[35] = v470;

          v472 = v731;
          v473 = v735;
          v735[36] = v1266;
          v473[37] = v472;

          v474 = v732;
          v475 = v735;
          v735[38] = v1267;
          v475[39] = v474;

          v476 = v734;
          v477 = v735;
          v735[40] = v1268;
          v477[41] = v476;
          sub_1B0394964();

          if (os_log_type_enabled(v737, v738))
          {
            v478 = v1309;
            v682 = sub_1B0E45D78();
            v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v683 = sub_1B03949A8(0);
            v684 = sub_1B03949A8(1);
            v685 = &v1366;
            v1366 = v682;
            v686 = &v1365;
            v1365 = v683;
            v687 = &v1364;
            v1364 = v684;
            sub_1B0394A48(3, &v1366);
            sub_1B0394A48(7, v685);
            v1362 = v1248;
            v1363 = v713;
            sub_1B03949FC(&v1362, v685, v686, v687);
            v688 = v478;
            if (v478)
            {

              __break(1u);
            }

            else
            {
              v1362 = v1249;
              v1363 = v714;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v680 = 0;
              v1362 = v1250;
              v1363 = v715;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v679 = 0;
              v1362 = v1251;
              v1363 = v716;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v678 = 0;
              v1362 = v1252;
              v1363 = v717;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v677 = 0;
              v1362 = v1253;
              v1363 = v718;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v676 = 0;
              v1362 = v1254;
              v1363 = v719;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v675 = 0;
              v1362 = v1255;
              v1363 = v720;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v674 = 0;
              v1362 = v1256;
              v1363 = v721;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v673 = 0;
              v1362 = v1257;
              v1363 = v722;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v672 = 0;
              v1362 = v1258;
              v1363 = v723;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v671 = 0;
              v1362 = v1259;
              v1363 = v724;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v670 = 0;
              v1362 = v1260;
              v1363 = v725;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v669 = 0;
              v1362 = v1261;
              v1363 = v726;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v668 = 0;
              v1362 = v1262;
              v1363 = v727;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v667 = 0;
              v1362 = v1263;
              v1363 = v728;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v666 = 0;
              v1362 = v1264;
              v1363 = v729;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v665 = 0;
              v1362 = v1265;
              v1363 = v730;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v664 = 0;
              v1362 = v1266;
              v1363 = v731;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v663 = 0;
              v1362 = v1267;
              v1363 = v732;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              v662 = 0;
              v1362 = v1268;
              v1363 = v734;
              sub_1B03949FC(&v1362, &v1366, &v1365, &v1364);
              _os_log_impl(&dword_1B0389000, v737, v738, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Nothing missing.", v682, 0x31u);
              sub_1B03998A8(v683);
              sub_1B03998A8(v684);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v737);
          (*(v1322 + 8))(v1327, v1321);
        }

        else
        {
          (*(v1322 + 16))(v1325, v1320, v1321);
          sub_1B074B69C(v1320, v1317);
          sub_1B074B69C(v1317, v1315);
          sub_1B074E41C(v1317, v1313);
          v479 = (v1315 + *(v1311 + 20));
          v600 = *v479;
          v601 = *(v479 + 1);
          v602 = *(v479 + 1);
          v603 = *(v479 + 4);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B074B764(v1315);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v599 = 36;
          v627 = 7;
          v480 = swift_allocObject();
          v481 = v601;
          v482 = v602;
          v483 = v603;
          v608 = v480;
          *(v480 + 16) = v600;
          *(v480 + 20) = v481;
          *(v480 + 24) = v482;
          *(v480 + 32) = v483;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v484 = swift_allocObject();
          v485 = v601;
          v486 = v602;
          v487 = v603;
          v598 = v484;
          *(v484 + 16) = v600;
          *(v484 + 20) = v485;
          *(v484 + 24) = v486;
          *(v484 + 32) = v487;

          v626 = 32;
          v488 = swift_allocObject();
          v489 = v598;
          v612 = v488;
          *(v488 + 16) = v1189;
          *(v488 + 24) = v489;
          sub_1B0394868();
          sub_1B0394868();

          v490 = swift_allocObject();
          v491 = v601;
          v492 = v602;
          v493 = v603;
          v494 = v490;
          v495 = v1313;
          v616 = v494;
          *(v494 + 16) = v600;
          *(v494 + 20) = v491;
          *(v494 + 24) = v492;
          *(v494 + 32) = v493;
          sub_1B074B764(v495);
          v604 = swift_allocObject();
          *(v604 + 16) = v1318;

          v496 = swift_allocObject();
          v497 = v604;
          v619 = v496;
          *(v496 + 16) = v1190;
          *(v496 + 24) = v497;

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v614 = 24;
          v605 = swift_allocObject();
          *(v605 + 16) = v833;

          v498 = swift_allocObject();
          v499 = v605;
          v621 = v498;
          *(v498 + 16) = v1191;
          *(v498 + 24) = v499;

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v606 = swift_allocObject();
          *(v606 + 16) = v743;

          v500 = swift_allocObject();
          v501 = v606;
          v628 = v500;
          *(v500 + 16) = v1192;
          *(v500 + 24) = v501;

          v660 = sub_1B0E43988();
          v661 = sub_1B0E45908();
          v624 = 17;
          v630 = swift_allocObject();
          v610 = 16;
          *(v630 + 16) = 16;
          v631 = swift_allocObject();
          v618 = 4;
          *(v631 + 16) = 4;
          v502 = swift_allocObject();
          v607 = v502;
          *(v502 + 16) = v1080;
          *(v502 + 24) = 0;
          v503 = swift_allocObject();
          v504 = v607;
          v632 = v503;
          *(v503 + 16) = v1193;
          *(v503 + 24) = v504;
          v633 = swift_allocObject();
          *(v633 + 16) = 0;
          v634 = swift_allocObject();
          *(v634 + 16) = 1;
          v505 = swift_allocObject();
          v506 = v608;
          v609 = v505;
          *(v505 + 16) = v1194;
          *(v505 + 24) = v506;
          v507 = swift_allocObject();
          v508 = v609;
          v635 = v507;
          *(v507 + 16) = v1195;
          *(v507 + 24) = v508;
          v636 = swift_allocObject();
          *(v636 + 16) = v610;
          v637 = swift_allocObject();
          *(v637 + 16) = v618;
          v509 = swift_allocObject();
          v611 = v509;
          *(v509 + 16) = v1084;
          *(v509 + 24) = 0;
          v510 = swift_allocObject();
          v511 = v611;
          v638 = v510;
          *(v510 + 16) = v1196;
          *(v510 + 24) = v511;
          v639 = swift_allocObject();
          *(v639 + 16) = 0;
          v640 = swift_allocObject();
          *(v640 + 16) = v618;
          v512 = swift_allocObject();
          v513 = v612;
          v613 = v512;
          *(v512 + 16) = v1197;
          *(v512 + 24) = v513;
          v514 = swift_allocObject();
          v515 = v613;
          v641 = v514;
          *(v514 + 16) = v1198;
          *(v514 + 24) = v515;
          v642 = swift_allocObject();
          *(v642 + 16) = 112;
          v643 = swift_allocObject();
          v625 = 8;
          *(v643 + 16) = 8;
          v615 = swift_allocObject();
          *(v615 + 16) = v1088;
          v516 = swift_allocObject();
          v517 = v615;
          v644 = v516;
          *(v516 + 16) = v1199;
          *(v516 + 24) = v517;
          v645 = swift_allocObject();
          *(v645 + 16) = 37;
          v646 = swift_allocObject();
          *(v646 + 16) = v625;
          v518 = swift_allocObject();
          v519 = v616;
          v617 = v518;
          *(v518 + 16) = v1200;
          *(v518 + 24) = v519;
          v520 = swift_allocObject();
          v521 = v617;
          v647 = v520;
          *(v520 + 16) = v1201;
          *(v520 + 24) = v521;
          v648 = swift_allocObject();
          *(v648 + 16) = 0;
          v649 = swift_allocObject();
          *(v649 + 16) = v618;
          v522 = swift_allocObject();
          v523 = v619;
          v620 = v522;
          *(v522 + 16) = v1202;
          *(v522 + 24) = v523;
          v524 = swift_allocObject();
          v525 = v620;
          v650 = v524;
          *(v524 + 16) = v1203;
          *(v524 + 24) = v525;
          v651 = swift_allocObject();
          v623 = 34;
          *(v651 + 16) = 34;
          v652 = swift_allocObject();
          *(v652 + 16) = v625;
          v526 = swift_allocObject();
          v527 = v621;
          v622 = v526;
          *(v526 + 16) = v1204;
          *(v526 + 24) = v527;
          v528 = swift_allocObject();
          v529 = v622;
          v653 = v528;
          *(v528 + 16) = v1205;
          *(v528 + 24) = v529;
          v654 = swift_allocObject();
          *(v654 + 16) = v623;
          v655 = swift_allocObject();
          *(v655 + 16) = v625;
          v530 = swift_allocObject();
          v531 = v628;
          v629 = v530;
          *(v530 + 16) = v1206;
          *(v530 + 24) = v531;
          v532 = swift_allocObject();
          v533 = v629;
          v657 = v532;
          *(v532 + 16) = v1207;
          *(v532 + 24) = v533;
          v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v656 = sub_1B0E46A48();
          v658 = v534;

          v535 = v630;
          v536 = v658;
          *v658 = v1208;
          v536[1] = v535;

          v537 = v631;
          v538 = v658;
          v658[2] = v1209;
          v538[3] = v537;

          v539 = v632;
          v540 = v658;
          v658[4] = v1210;
          v540[5] = v539;

          v541 = v633;
          v542 = v658;
          v658[6] = v1211;
          v542[7] = v541;

          v543 = v634;
          v544 = v658;
          v658[8] = v1212;
          v544[9] = v543;

          v545 = v635;
          v546 = v658;
          v658[10] = v1213;
          v546[11] = v545;

          v547 = v636;
          v548 = v658;
          v658[12] = v1214;
          v548[13] = v547;

          v549 = v637;
          v550 = v658;
          v658[14] = v1215;
          v550[15] = v549;

          v551 = v638;
          v552 = v658;
          v658[16] = v1216;
          v552[17] = v551;

          v553 = v639;
          v554 = v658;
          v658[18] = v1217;
          v554[19] = v553;

          v555 = v640;
          v556 = v658;
          v658[20] = v1218;
          v556[21] = v555;

          v557 = v641;
          v558 = v658;
          v658[22] = v1219;
          v558[23] = v557;

          v559 = v642;
          v560 = v658;
          v658[24] = v1220;
          v560[25] = v559;

          v561 = v643;
          v562 = v658;
          v658[26] = v1221;
          v562[27] = v561;

          v563 = v644;
          v564 = v658;
          v658[28] = v1222;
          v564[29] = v563;

          v565 = v645;
          v566 = v658;
          v658[30] = v1223;
          v566[31] = v565;

          v567 = v646;
          v568 = v658;
          v658[32] = v1224;
          v568[33] = v567;

          v569 = v647;
          v570 = v658;
          v658[34] = v1225;
          v570[35] = v569;

          v571 = v648;
          v572 = v658;
          v658[36] = v1226;
          v572[37] = v571;

          v573 = v649;
          v574 = v658;
          v658[38] = v1227;
          v574[39] = v573;

          v575 = v650;
          v576 = v658;
          v658[40] = v1228;
          v576[41] = v575;

          v577 = v651;
          v578 = v658;
          v658[42] = v1229;
          v578[43] = v577;

          v579 = v652;
          v580 = v658;
          v658[44] = v1230;
          v580[45] = v579;

          v581 = v653;
          v582 = v658;
          v658[46] = v1231;
          v582[47] = v581;

          v583 = v654;
          v584 = v658;
          v658[48] = v1232;
          v584[49] = v583;

          v585 = v655;
          v586 = v658;
          v658[50] = v1233;
          v586[51] = v585;

          v587 = v657;
          v588 = v658;
          v658[52] = v1234;
          v588[53] = v587;
          sub_1B0394964();

          if (os_log_type_enabled(v660, v661))
          {
            v589 = v1309;
            v591 = sub_1B0E45D78();
            v590[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v592 = sub_1B03949A8(0);
            v593 = sub_1B03949A8(3);
            v594 = v1371;
            v1371[0] = v591;
            v595 = &v1370;
            v1370 = v592;
            v596 = &v1369;
            v1369 = v593;
            sub_1B0394A48(3, v1371);
            sub_1B0394A48(9, v594);
            v1367 = v1208;
            v1368 = v630;
            sub_1B03949FC(&v1367, v594, v595, v596);
            v597 = v589;
            if (v589)
            {

              __break(1u);
            }

            else
            {
              v1367 = v1209;
              v1368 = v631;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[25] = 0;
              v1367 = v1210;
              v1368 = v632;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[24] = 0;
              v1367 = v1211;
              v1368 = v633;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[23] = 0;
              v1367 = v1212;
              v1368 = v634;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[22] = 0;
              v1367 = v1213;
              v1368 = v635;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[21] = 0;
              v1367 = v1214;
              v1368 = v636;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[20] = 0;
              v1367 = v1215;
              v1368 = v637;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[19] = 0;
              v1367 = v1216;
              v1368 = v638;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[18] = 0;
              v1367 = v1217;
              v1368 = v639;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[17] = 0;
              v1367 = v1218;
              v1368 = v640;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[16] = 0;
              v1367 = v1219;
              v1368 = v641;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[15] = 0;
              v1367 = v1220;
              v1368 = v642;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[14] = 0;
              v1367 = v1221;
              v1368 = v643;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[13] = 0;
              v1367 = v1222;
              v1368 = v644;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[12] = 0;
              v1367 = v1223;
              v1368 = v645;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[11] = 0;
              v1367 = v1224;
              v1368 = v646;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[10] = 0;
              v1367 = v1225;
              v1368 = v647;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[9] = 0;
              v1367 = v1226;
              v1368 = v648;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[8] = 0;
              v1367 = v1227;
              v1368 = v649;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[7] = 0;
              v1367 = v1228;
              v1368 = v650;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[6] = 0;
              v1367 = v1229;
              v1368 = v651;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[5] = 0;
              v1367 = v1230;
              v1368 = v652;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[4] = 0;
              v1367 = v1231;
              v1368 = v653;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[3] = 0;
              v1367 = v1232;
              v1368 = v654;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[2] = 0;
              v1367 = v1233;
              v1368 = v655;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              v590[1] = 0;
              v1367 = v1234;
              v1368 = v657;
              sub_1B03949FC(&v1367, v1371, &v1370, &v1369);
              _os_log_impl(&dword_1B0389000, v660, v661, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Missing non-attachment {%{public}s}, missing attachment {%{public}s}.", v591, 0x45u);
              sub_1B03998A8(v592);
              sub_1B03998A8(v593);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v660);
          (*(v1322 + 8))(v1325, v1321);
        }
      }

      else
      {
        v1360 = v833;
        (*(v1322 + 16))(v1329, v1320, v1321);
        sub_1B074B69C(v1320, v1317);
        sub_1B074B69C(v1317, v1315);
        sub_1B074E41C(v1317, v1313);
        v293 = (v1315 + *(v1311 + 20));
        v777 = *v293;
        v778 = *(v293 + 1);
        v779 = *(v293 + 1);
        v780 = *(v293 + 4);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B074B764(v1315);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v776 = 36;
        v799 = 7;
        v294 = swift_allocObject();
        v295 = v778;
        v296 = v779;
        v297 = v780;
        v784 = v294;
        *(v294 + 16) = v777;
        *(v294 + 20) = v295;
        *(v294 + 24) = v296;
        *(v294 + 32) = v297;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v298 = swift_allocObject();
        v299 = v778;
        v300 = v779;
        v301 = v780;
        v775 = v298;
        *(v298 + 16) = v777;
        *(v298 + 20) = v299;
        *(v298 + 24) = v300;
        *(v298 + 32) = v301;

        v798 = 32;
        v302 = swift_allocObject();
        v303 = v775;
        v788 = v302;
        *(v302 + 16) = v1269;
        *(v302 + 24) = v303;
        sub_1B0394868();
        sub_1B0394868();

        v304 = swift_allocObject();
        v305 = v778;
        v306 = v779;
        v307 = v780;
        v308 = v304;
        v309 = v1313;
        v791 = v308;
        *(v308 + 16) = v777;
        *(v308 + 20) = v305;
        *(v308 + 24) = v306;
        *(v308 + 32) = v307;
        sub_1B074B764(v309);
        v781 = swift_allocObject();
        *(v781 + 16) = v1318;

        v310 = swift_allocObject();
        v311 = v781;
        v794 = v310;
        *(v310 + 16) = v1270;
        *(v310 + 24) = v311;

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v802 = 24;
        v782 = swift_allocObject();
        *(v782 + 16) = v833;

        v312 = swift_allocObject();
        v313 = v782;
        v800 = v312;
        *(v312 + 16) = v1271;
        *(v312 + 24) = v313;

        v830 = sub_1B0E43988();
        v831 = sub_1B0E45908();
        v796 = 17;
        v803 = swift_allocObject();
        v786 = 16;
        *(v803 + 16) = 16;
        v804 = swift_allocObject();
        v793 = 4;
        *(v804 + 16) = 4;
        v314 = swift_allocObject();
        v783 = v314;
        *(v314 + 16) = v1080;
        *(v314 + 24) = 0;
        v315 = swift_allocObject();
        v316 = v783;
        v805 = v315;
        *(v315 + 16) = v1272;
        *(v315 + 24) = v316;
        v806 = swift_allocObject();
        *(v806 + 16) = 0;
        v807 = swift_allocObject();
        *(v807 + 16) = 1;
        v317 = swift_allocObject();
        v318 = v784;
        v785 = v317;
        *(v317 + 16) = v1273;
        *(v317 + 24) = v318;
        v319 = swift_allocObject();
        v320 = v785;
        v808 = v319;
        *(v319 + 16) = v1274;
        *(v319 + 24) = v320;
        v809 = swift_allocObject();
        *(v809 + 16) = v786;
        v810 = swift_allocObject();
        *(v810 + 16) = v793;
        v321 = swift_allocObject();
        v787 = v321;
        *(v321 + 16) = v1084;
        *(v321 + 24) = 0;
        v322 = swift_allocObject();
        v323 = v787;
        v811 = v322;
        *(v322 + 16) = v1275;
        *(v322 + 24) = v323;
        v812 = swift_allocObject();
        *(v812 + 16) = 0;
        v813 = swift_allocObject();
        *(v813 + 16) = v793;
        v324 = swift_allocObject();
        v325 = v788;
        v789 = v324;
        *(v324 + 16) = v1276;
        *(v324 + 24) = v325;
        v326 = swift_allocObject();
        v327 = v789;
        v814 = v326;
        *(v326 + 16) = v1277;
        *(v326 + 24) = v327;
        v815 = swift_allocObject();
        *(v815 + 16) = 112;
        v816 = swift_allocObject();
        v797 = 8;
        *(v816 + 16) = 8;
        v790 = swift_allocObject();
        *(v790 + 16) = v1088;
        v328 = swift_allocObject();
        v329 = v790;
        v817 = v328;
        *(v328 + 16) = v1278;
        *(v328 + 24) = v329;
        v818 = swift_allocObject();
        *(v818 + 16) = 37;
        v819 = swift_allocObject();
        *(v819 + 16) = v797;
        v330 = swift_allocObject();
        v331 = v791;
        v792 = v330;
        *(v330 + 16) = v1279;
        *(v330 + 24) = v331;
        v332 = swift_allocObject();
        v333 = v792;
        v820 = v332;
        *(v332 + 16) = v1280;
        *(v332 + 24) = v333;
        v821 = swift_allocObject();
        *(v821 + 16) = 0;
        v822 = swift_allocObject();
        *(v822 + 16) = v793;
        v334 = swift_allocObject();
        v335 = v794;
        v795 = v334;
        *(v334 + 16) = v1281;
        *(v334 + 24) = v335;
        v336 = swift_allocObject();
        v337 = v795;
        v823 = v336;
        *(v336 + 16) = v1282;
        *(v336 + 24) = v337;
        v824 = swift_allocObject();
        *(v824 + 16) = 34;
        v825 = swift_allocObject();
        *(v825 + 16) = v797;
        v338 = swift_allocObject();
        v339 = v800;
        v801 = v338;
        *(v338 + 16) = v1283;
        *(v338 + 24) = v339;
        v340 = swift_allocObject();
        v341 = v801;
        v827 = v340;
        *(v340 + 16) = v1284;
        *(v340 + 24) = v341;
        v829 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v826 = sub_1B0E46A48();
        v828 = v342;

        v343 = v803;
        v344 = v828;
        *v828 = v1285;
        v344[1] = v343;

        v345 = v804;
        v346 = v828;
        v828[2] = v1286;
        v346[3] = v345;

        v347 = v805;
        v348 = v828;
        v828[4] = v1287;
        v348[5] = v347;

        v349 = v806;
        v350 = v828;
        v828[6] = v1288;
        v350[7] = v349;

        v351 = v807;
        v352 = v828;
        v828[8] = v1289;
        v352[9] = v351;

        v353 = v808;
        v354 = v828;
        v828[10] = v1290;
        v354[11] = v353;

        v355 = v809;
        v356 = v828;
        v828[12] = v1291;
        v356[13] = v355;

        v357 = v810;
        v358 = v828;
        v828[14] = v1292;
        v358[15] = v357;

        v359 = v811;
        v360 = v828;
        v828[16] = v1293;
        v360[17] = v359;

        v361 = v812;
        v362 = v828;
        v828[18] = v1294;
        v362[19] = v361;

        v363 = v813;
        v364 = v828;
        v828[20] = v1295;
        v364[21] = v363;

        v365 = v814;
        v366 = v828;
        v828[22] = v1296;
        v366[23] = v365;

        v367 = v815;
        v368 = v828;
        v828[24] = v1297;
        v368[25] = v367;

        v369 = v816;
        v370 = v828;
        v828[26] = v1298;
        v370[27] = v369;

        v371 = v817;
        v372 = v828;
        v828[28] = v1299;
        v372[29] = v371;

        v373 = v818;
        v374 = v828;
        v828[30] = v1300;
        v374[31] = v373;

        v375 = v819;
        v376 = v828;
        v828[32] = v1301;
        v376[33] = v375;

        v377 = v820;
        v378 = v828;
        v828[34] = v1302;
        v378[35] = v377;

        v379 = v821;
        v380 = v828;
        v828[36] = v1303;
        v380[37] = v379;

        v381 = v822;
        v382 = v828;
        v828[38] = v1304;
        v382[39] = v381;

        v383 = v823;
        v384 = v828;
        v828[40] = v1305;
        v384[41] = v383;

        v385 = v824;
        v386 = v828;
        v828[42] = v1306;
        v386[43] = v385;

        v387 = v825;
        v388 = v828;
        v828[44] = v1307;
        v388[45] = v387;

        v389 = v827;
        v390 = v828;
        v828[46] = v1308;
        v390[47] = v389;
        sub_1B0394964();

        if (os_log_type_enabled(v830, v831))
        {
          v391 = v1309;
          v768 = sub_1B0E45D78();
          v767 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v769 = sub_1B03949A8(0);
          v770 = sub_1B03949A8(2);
          v771 = &v1359;
          v1359 = v768;
          v772 = &v1358;
          v1358 = v769;
          v773 = &v1357;
          v1357 = v770;
          sub_1B0394A48(3, &v1359);
          sub_1B0394A48(8, v771);
          v1355 = v1285;
          v1356 = v803;
          sub_1B03949FC(&v1355, v771, v772, v773);
          v774 = v391;
          if (v391)
          {

            __break(1u);
          }

          else
          {
            v1355 = v1286;
            v1356 = v804;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v766 = 0;
            v1355 = v1287;
            v1356 = v805;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v765 = 0;
            v1355 = v1288;
            v1356 = v806;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v764 = 0;
            v1355 = v1289;
            v1356 = v807;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v763 = 0;
            v1355 = v1290;
            v1356 = v808;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v762 = 0;
            v1355 = v1291;
            v1356 = v809;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v761 = 0;
            v1355 = v1292;
            v1356 = v810;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v760 = 0;
            v1355 = v1293;
            v1356 = v811;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v759 = 0;
            v1355 = v1294;
            v1356 = v812;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v758 = 0;
            v1355 = v1295;
            v1356 = v813;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v757 = 0;
            v1355 = v1296;
            v1356 = v814;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v756 = 0;
            v1355 = v1297;
            v1356 = v815;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v755 = 0;
            v1355 = v1298;
            v1356 = v816;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v754 = 0;
            v1355 = v1299;
            v1356 = v817;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v753 = 0;
            v1355 = v1300;
            v1356 = v818;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v752 = 0;
            v1355 = v1301;
            v1356 = v819;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v751 = 0;
            v1355 = v1302;
            v1356 = v820;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v750 = 0;
            v1355 = v1303;
            v1356 = v821;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v749 = 0;
            v1355 = v1304;
            v1356 = v822;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v748 = 0;
            v1355 = v1305;
            v1356 = v823;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v747 = 0;
            v1355 = v1306;
            v1356 = v824;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v746 = 0;
            v1355 = v1307;
            v1356 = v825;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            v745 = 0;
            v1355 = v1308;
            v1356 = v827;
            sub_1B03949FC(&v1355, &v1359, &v1358, &v1357);
            _os_log_impl(&dword_1B0389000, v830, v831, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Missing non-attachment {%{public}s}, missing attachment parts are unknown.", v768, 0x3Bu);
            sub_1B03998A8(v769);
            sub_1B03998A8(v770);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v830);
        (*(v1322 + 8))(v1329, v1321);
      }
    }
  }

  else if (v1337)
  {
    v999 = v1337;
    v871 = v1337;
    v1354 = v1337;
    (*(v1322 + 16))(v1331, v1320, v1321);
    sub_1B074B69C(v1320, v1317);
    sub_1B074B69C(v1317, v1315);
    sub_1B074E41C(v1317, v1313);
    v194 = (v1315 + *(v1311 + 20));
    v866 = *v194;
    v867 = *(v194 + 1);
    v868 = *(v194 + 1);
    v869 = *(v194 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1315);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v865 = 36;
    v889 = 7;
    v195 = swift_allocObject();
    v196 = v867;
    v197 = v868;
    v198 = v869;
    v874 = v195;
    *(v195 + 16) = v866;
    *(v195 + 20) = v196;
    *(v195 + 24) = v197;
    *(v195 + 32) = v198;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v199 = swift_allocObject();
    v200 = v867;
    v201 = v868;
    v202 = v869;
    v864 = v199;
    *(v199 + 16) = v866;
    *(v199 + 20) = v200;
    *(v199 + 24) = v201;
    *(v199 + 32) = v202;

    v888 = 32;
    v203 = swift_allocObject();
    v204 = v864;
    v878 = v203;
    *(v203 + 16) = v1115;
    *(v203 + 24) = v204;
    sub_1B0394868();
    sub_1B0394868();

    v205 = swift_allocObject();
    v206 = v867;
    v207 = v868;
    v208 = v869;
    v209 = v205;
    v210 = v1313;
    v881 = v209;
    *(v209 + 16) = v866;
    *(v209 + 20) = v206;
    *(v209 + 24) = v207;
    *(v209 + 32) = v208;
    sub_1B074B764(v210);
    v870 = swift_allocObject();
    *(v870 + 16) = v1318;

    v211 = swift_allocObject();
    v212 = v870;
    v884 = v211;
    *(v211 + 16) = v1116;
    *(v211 + 24) = v212;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v892 = 24;
    v872 = swift_allocObject();
    *(v872 + 16) = v871;

    v213 = swift_allocObject();
    v214 = v872;
    v890 = v213;
    *(v213 + 16) = v1117;
    *(v213 + 24) = v214;

    v920 = sub_1B0E43988();
    v921 = sub_1B0E45908();
    v886 = 17;
    v893 = swift_allocObject();
    v876 = 16;
    *(v893 + 16) = 16;
    v894 = swift_allocObject();
    v883 = 4;
    *(v894 + 16) = 4;
    v215 = swift_allocObject();
    v873 = v215;
    *(v215 + 16) = v1080;
    *(v215 + 24) = 0;
    v216 = swift_allocObject();
    v217 = v873;
    v895 = v216;
    *(v216 + 16) = v1118;
    *(v216 + 24) = v217;
    v896 = swift_allocObject();
    *(v896 + 16) = 0;
    v897 = swift_allocObject();
    *(v897 + 16) = 1;
    v218 = swift_allocObject();
    v219 = v874;
    v875 = v218;
    *(v218 + 16) = v1119;
    *(v218 + 24) = v219;
    v220 = swift_allocObject();
    v221 = v875;
    v898 = v220;
    *(v220 + 16) = v1120;
    *(v220 + 24) = v221;
    v899 = swift_allocObject();
    *(v899 + 16) = v876;
    v900 = swift_allocObject();
    *(v900 + 16) = v883;
    v222 = swift_allocObject();
    v877 = v222;
    *(v222 + 16) = v1084;
    *(v222 + 24) = 0;
    v223 = swift_allocObject();
    v224 = v877;
    v901 = v223;
    *(v223 + 16) = v1121;
    *(v223 + 24) = v224;
    v902 = swift_allocObject();
    *(v902 + 16) = 0;
    v903 = swift_allocObject();
    *(v903 + 16) = v883;
    v225 = swift_allocObject();
    v226 = v878;
    v879 = v225;
    *(v225 + 16) = v1122;
    *(v225 + 24) = v226;
    v227 = swift_allocObject();
    v228 = v879;
    v904 = v227;
    *(v227 + 16) = v1123;
    *(v227 + 24) = v228;
    v905 = swift_allocObject();
    *(v905 + 16) = 112;
    v906 = swift_allocObject();
    v887 = 8;
    *(v906 + 16) = 8;
    v880 = swift_allocObject();
    *(v880 + 16) = v1088;
    v229 = swift_allocObject();
    v230 = v880;
    v907 = v229;
    *(v229 + 16) = v1124;
    *(v229 + 24) = v230;
    v908 = swift_allocObject();
    *(v908 + 16) = 37;
    v909 = swift_allocObject();
    *(v909 + 16) = v887;
    v231 = swift_allocObject();
    v232 = v881;
    v882 = v231;
    *(v231 + 16) = v1125;
    *(v231 + 24) = v232;
    v233 = swift_allocObject();
    v234 = v882;
    v910 = v233;
    *(v233 + 16) = v1126;
    *(v233 + 24) = v234;
    v911 = swift_allocObject();
    *(v911 + 16) = 0;
    v912 = swift_allocObject();
    *(v912 + 16) = v883;
    v235 = swift_allocObject();
    v236 = v884;
    v885 = v235;
    *(v235 + 16) = v1127;
    *(v235 + 24) = v236;
    v237 = swift_allocObject();
    v238 = v885;
    v913 = v237;
    *(v237 + 16) = v1128;
    *(v237 + 24) = v238;
    v914 = swift_allocObject();
    *(v914 + 16) = 34;
    v915 = swift_allocObject();
    *(v915 + 16) = v887;
    v239 = swift_allocObject();
    v240 = v890;
    v891 = v239;
    *(v239 + 16) = v1129;
    *(v239 + 24) = v240;
    v241 = swift_allocObject();
    v242 = v891;
    v917 = v241;
    *(v241 + 16) = v1130;
    *(v241 + 24) = v242;
    v919 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v916 = sub_1B0E46A48();
    v918 = v243;

    v244 = v893;
    v245 = v918;
    *v918 = v1131;
    v245[1] = v244;

    v246 = v894;
    v247 = v918;
    v918[2] = v1132;
    v247[3] = v246;

    v248 = v895;
    v249 = v918;
    v918[4] = v1133;
    v249[5] = v248;

    v250 = v896;
    v251 = v918;
    v918[6] = v1134;
    v251[7] = v250;

    v252 = v897;
    v253 = v918;
    v918[8] = v1135;
    v253[9] = v252;

    v254 = v898;
    v255 = v918;
    v918[10] = v1136;
    v255[11] = v254;

    v256 = v899;
    v257 = v918;
    v918[12] = v1137;
    v257[13] = v256;

    v258 = v900;
    v259 = v918;
    v918[14] = v1138;
    v259[15] = v258;

    v260 = v901;
    v261 = v918;
    v918[16] = v1139;
    v261[17] = v260;

    v262 = v902;
    v263 = v918;
    v918[18] = v1140;
    v263[19] = v262;

    v264 = v903;
    v265 = v918;
    v918[20] = v1141;
    v265[21] = v264;

    v266 = v904;
    v267 = v918;
    v918[22] = v1142;
    v267[23] = v266;

    v268 = v905;
    v269 = v918;
    v918[24] = v1143;
    v269[25] = v268;

    v270 = v906;
    v271 = v918;
    v918[26] = v1144;
    v271[27] = v270;

    v272 = v907;
    v273 = v918;
    v918[28] = v1145;
    v273[29] = v272;

    v274 = v908;
    v275 = v918;
    v918[30] = v1146;
    v275[31] = v274;

    v276 = v909;
    v277 = v918;
    v918[32] = v1147;
    v277[33] = v276;

    v278 = v910;
    v279 = v918;
    v918[34] = v1148;
    v279[35] = v278;

    v280 = v911;
    v281 = v918;
    v918[36] = v1149;
    v281[37] = v280;

    v282 = v912;
    v283 = v918;
    v918[38] = v1150;
    v283[39] = v282;

    v284 = v913;
    v285 = v918;
    v918[40] = v1151;
    v285[41] = v284;

    v286 = v914;
    v287 = v918;
    v918[42] = v1152;
    v287[43] = v286;

    v288 = v915;
    v289 = v918;
    v918[44] = v1153;
    v289[45] = v288;

    v290 = v917;
    v291 = v918;
    v918[46] = v1154;
    v291[47] = v290;
    sub_1B0394964();

    if (os_log_type_enabled(v920, v921))
    {
      v292 = v1309;
      v857 = sub_1B0E45D78();
      v856 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v858 = sub_1B03949A8(0);
      v859 = sub_1B03949A8(2);
      v860 = &v1353;
      v1353 = v857;
      v861 = &v1352;
      v1352 = v858;
      v862 = &v1351;
      v1351 = v859;
      sub_1B0394A48(3, &v1353);
      sub_1B0394A48(8, v860);
      v1349 = v1131;
      v1350 = v893;
      sub_1B03949FC(&v1349, v860, v861, v862);
      v863 = v292;
      if (v292)
      {

        __break(1u);
      }

      else
      {
        v1349 = v1132;
        v1350 = v894;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v855 = 0;
        v1349 = v1133;
        v1350 = v895;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v854 = 0;
        v1349 = v1134;
        v1350 = v896;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v853 = 0;
        v1349 = v1135;
        v1350 = v897;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v852 = 0;
        v1349 = v1136;
        v1350 = v898;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v851 = 0;
        v1349 = v1137;
        v1350 = v899;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v850 = 0;
        v1349 = v1138;
        v1350 = v900;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v849 = 0;
        v1349 = v1139;
        v1350 = v901;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v848 = 0;
        v1349 = v1140;
        v1350 = v902;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v847 = 0;
        v1349 = v1141;
        v1350 = v903;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v846 = 0;
        v1349 = v1142;
        v1350 = v904;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v845 = 0;
        v1349 = v1143;
        v1350 = v905;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v844 = 0;
        v1349 = v1144;
        v1350 = v906;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v843 = 0;
        v1349 = v1145;
        v1350 = v907;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v842 = 0;
        v1349 = v1146;
        v1350 = v908;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v841 = 0;
        v1349 = v1147;
        v1350 = v909;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v840 = 0;
        v1349 = v1148;
        v1350 = v910;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v839 = 0;
        v1349 = v1149;
        v1350 = v911;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v838 = 0;
        v1349 = v1150;
        v1350 = v912;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v837 = 0;
        v1349 = v1151;
        v1350 = v913;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v836 = 0;
        v1349 = v1152;
        v1350 = v914;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v835 = 0;
        v1349 = v1153;
        v1350 = v915;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        v834 = 0;
        v1349 = v1154;
        v1350 = v917;
        sub_1B03949FC(&v1349, &v1353, &v1352, &v1351);
        _os_log_impl(&dword_1B0389000, v920, v921, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Missing non-attachment are unknown, missing attachment {%{public}s}.", v857, 0x3Bu);
        sub_1B03998A8(v858);
        sub_1B03998A8(v859);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v920);
    (*(v1322 + 8))(v1331, v1321);
  }

  else
  {
    (*(v1322 + 16))(v1334, v1320, v1321);
    sub_1B074B69C(v1320, v1317);
    sub_1B074B69C(v1317, v1315);
    sub_1B074E41C(v1317, v1313);
    v107 = (v1315 + *(v1311 + 20));
    v951 = *v107;
    v952 = *(v107 + 1);
    v953 = *(v107 + 1);
    v954 = *(v107 + 4);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B074B764(v1315);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v950 = 36;
    v970 = 7;
    v108 = swift_allocObject();
    v109 = v952;
    v110 = v953;
    v111 = v954;
    v957 = v108;
    *(v108 + 16) = v951;
    *(v108 + 20) = v109;
    *(v108 + 24) = v110;
    *(v108 + 32) = v111;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v112 = swift_allocObject();
    v113 = v952;
    v114 = v953;
    v115 = v954;
    v949 = v112;
    *(v112 + 16) = v951;
    *(v112 + 20) = v113;
    *(v112 + 24) = v114;
    *(v112 + 32) = v115;

    v969 = 32;
    v116 = swift_allocObject();
    v117 = v949;
    v961 = v116;
    *(v116 + 16) = v1155;
    *(v116 + 24) = v117;
    sub_1B0394868();
    sub_1B0394868();

    v118 = swift_allocObject();
    v119 = v952;
    v120 = v953;
    v121 = v954;
    v122 = v118;
    v123 = v1313;
    v965 = v122;
    *(v122 + 16) = v951;
    *(v122 + 20) = v119;
    *(v122 + 24) = v120;
    *(v122 + 32) = v121;
    sub_1B074B764(v123);
    v955 = swift_allocObject();
    *(v955 + 16) = v1318;

    v124 = swift_allocObject();
    v125 = v955;
    v971 = v124;
    *(v124 + 16) = v1156;
    *(v124 + 24) = v125;

    v997 = sub_1B0E43988();
    v998 = sub_1B0E45908();
    v967 = 17;
    v973 = swift_allocObject();
    v959 = 16;
    *(v973 + 16) = 16;
    v974 = swift_allocObject();
    v968 = 4;
    *(v974 + 16) = 4;
    v126 = swift_allocObject();
    v956 = v126;
    *(v126 + 16) = v1080;
    *(v126 + 24) = 0;
    v127 = swift_allocObject();
    v128 = v956;
    v975 = v127;
    *(v127 + 16) = v1157;
    *(v127 + 24) = v128;
    v976 = swift_allocObject();
    *(v976 + 16) = 0;
    v977 = swift_allocObject();
    *(v977 + 16) = 1;
    v129 = swift_allocObject();
    v130 = v957;
    v958 = v129;
    *(v129 + 16) = v1158;
    *(v129 + 24) = v130;
    v131 = swift_allocObject();
    v132 = v958;
    v978 = v131;
    *(v131 + 16) = v1159;
    *(v131 + 24) = v132;
    v979 = swift_allocObject();
    *(v979 + 16) = v959;
    v980 = swift_allocObject();
    *(v980 + 16) = v968;
    v133 = swift_allocObject();
    v960 = v133;
    *(v133 + 16) = v1084;
    *(v133 + 24) = 0;
    v134 = swift_allocObject();
    v135 = v960;
    v981 = v134;
    *(v134 + 16) = v1160;
    *(v134 + 24) = v135;
    v982 = swift_allocObject();
    *(v982 + 16) = 0;
    v983 = swift_allocObject();
    *(v983 + 16) = v968;
    v136 = swift_allocObject();
    v137 = v961;
    v962 = v136;
    *(v136 + 16) = v1161;
    *(v136 + 24) = v137;
    v138 = swift_allocObject();
    v139 = v962;
    v984 = v138;
    *(v138 + 16) = v1162;
    *(v138 + 24) = v139;
    v985 = swift_allocObject();
    *(v985 + 16) = 112;
    v986 = swift_allocObject();
    v964 = 8;
    *(v986 + 16) = 8;
    v963 = swift_allocObject();
    *(v963 + 16) = v1088;
    v140 = swift_allocObject();
    v141 = v963;
    v987 = v140;
    *(v140 + 16) = v1163;
    *(v140 + 24) = v141;
    v988 = swift_allocObject();
    *(v988 + 16) = 37;
    v989 = swift_allocObject();
    *(v989 + 16) = v964;
    v142 = swift_allocObject();
    v143 = v965;
    v966 = v142;
    *(v142 + 16) = v1164;
    *(v142 + 24) = v143;
    v144 = swift_allocObject();
    v145 = v966;
    v990 = v144;
    *(v144 + 16) = v1165;
    *(v144 + 24) = v145;
    v991 = swift_allocObject();
    *(v991 + 16) = 0;
    v992 = swift_allocObject();
    *(v992 + 16) = v968;
    v146 = swift_allocObject();
    v147 = v971;
    v972 = v146;
    *(v146 + 16) = v1166;
    *(v146 + 24) = v147;
    v148 = swift_allocObject();
    v149 = v972;
    v994 = v148;
    *(v148 + 16) = v1167;
    *(v148 + 24) = v149;
    v996 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v993 = sub_1B0E46A48();
    v995 = v150;

    v151 = v973;
    v152 = v995;
    *v995 = v1168;
    v152[1] = v151;

    v153 = v974;
    v154 = v995;
    v995[2] = v1169;
    v154[3] = v153;

    v155 = v975;
    v156 = v995;
    v995[4] = v1170;
    v156[5] = v155;

    v157 = v976;
    v158 = v995;
    v995[6] = v1171;
    v158[7] = v157;

    v159 = v977;
    v160 = v995;
    v995[8] = v1172;
    v160[9] = v159;

    v161 = v978;
    v162 = v995;
    v995[10] = v1173;
    v162[11] = v161;

    v163 = v979;
    v164 = v995;
    v995[12] = v1174;
    v164[13] = v163;

    v165 = v980;
    v166 = v995;
    v995[14] = v1175;
    v166[15] = v165;

    v167 = v981;
    v168 = v995;
    v995[16] = v1176;
    v168[17] = v167;

    v169 = v982;
    v170 = v995;
    v995[18] = v1177;
    v170[19] = v169;

    v171 = v983;
    v172 = v995;
    v995[20] = v1178;
    v172[21] = v171;

    v173 = v984;
    v174 = v995;
    v995[22] = v1179;
    v174[23] = v173;

    v175 = v985;
    v176 = v995;
    v995[24] = v1180;
    v176[25] = v175;

    v177 = v986;
    v178 = v995;
    v995[26] = v1181;
    v178[27] = v177;

    v179 = v987;
    v180 = v995;
    v995[28] = v1182;
    v180[29] = v179;

    v181 = v988;
    v182 = v995;
    v995[30] = v1183;
    v182[31] = v181;

    v183 = v989;
    v184 = v995;
    v995[32] = v1184;
    v184[33] = v183;

    v185 = v990;
    v186 = v995;
    v995[34] = v1185;
    v186[35] = v185;

    v187 = v991;
    v188 = v995;
    v995[36] = v1186;
    v188[37] = v187;

    v189 = v992;
    v190 = v995;
    v995[38] = v1187;
    v190[39] = v189;

    v191 = v994;
    v192 = v995;
    v995[40] = v1188;
    v192[41] = v191;
    sub_1B0394964();

    if (os_log_type_enabled(v997, v998))
    {
      v193 = v1309;
      v942 = sub_1B0E45D78();
      v941 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v943 = sub_1B03949A8(0);
      v944 = sub_1B03949A8(1);
      v945 = &v1348;
      v1348 = v942;
      v946 = &v1347;
      v1347 = v943;
      v947 = &v1346;
      v1346 = v944;
      sub_1B0394A48(3, &v1348);
      sub_1B0394A48(7, v945);
      v1344 = v1168;
      v1345 = v973;
      sub_1B03949FC(&v1344, v945, v946, v947);
      v948 = v193;
      if (v193)
      {

        __break(1u);
      }

      else
      {
        v1344 = v1169;
        v1345 = v974;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v940 = 0;
        v1344 = v1170;
        v1345 = v975;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v939 = 0;
        v1344 = v1171;
        v1345 = v976;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v938 = 0;
        v1344 = v1172;
        v1345 = v977;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v937 = 0;
        v1344 = v1173;
        v1345 = v978;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v936 = 0;
        v1344 = v1174;
        v1345 = v979;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v935 = 0;
        v1344 = v1175;
        v1345 = v980;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v934 = 0;
        v1344 = v1176;
        v1345 = v981;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v933 = 0;
        v1344 = v1177;
        v1345 = v982;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v932 = 0;
        v1344 = v1178;
        v1345 = v983;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v931 = 0;
        v1344 = v1179;
        v1345 = v984;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v930 = 0;
        v1344 = v1180;
        v1345 = v985;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v929 = 0;
        v1344 = v1181;
        v1345 = v986;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v928 = 0;
        v1344 = v1182;
        v1345 = v987;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v927 = 0;
        v1344 = v1183;
        v1345 = v988;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v926 = 0;
        v1344 = v1184;
        v1345 = v989;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v925 = 0;
        v1344 = v1185;
        v1345 = v990;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v924 = 0;
        v1344 = v1186;
        v1345 = v991;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v923 = 0;
        v1344 = v1187;
        v1345 = v992;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        v922 = 0;
        v1344 = v1188;
        v1345 = v994;
        sub_1B03949FC(&v1344, &v1348, &v1347, &v1346);
        _os_log_impl(&dword_1B0389000, v997, v998, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] UID %u: Missing part(s) are unknown.", v942, 0x31u);
        sub_1B03998A8(v943);
        sub_1B03998A8(v944);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v997);
    return (*(v1322 + 8))(v1334, v1321);
  }
}